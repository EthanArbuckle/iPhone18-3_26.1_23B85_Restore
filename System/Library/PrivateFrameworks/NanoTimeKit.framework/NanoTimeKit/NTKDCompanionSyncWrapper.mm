@interface NTKDCompanionSyncWrapper
- (BOOL)_discardIncomingPartialMessagesIfNeededWithErrorMessage:(id)message;
- (BOOL)_discardOutgoingPartialMessagesIfNeededWithErrorMessage:(id)message;
- (BOOL)service:(id)service startSession:(id)session error:(id *)error;
- (BOOL)syncSession:(id)session resetDataStoreWithError:(id *)error;
- (NTKDSyncDelegate)delegate;
- (id)_nextMessageToSendForSession:(id)session;
- (id)_storePartAndReassembleWideLoadIfPossible:(id)possible;
- (id)changeFromData:(id)data ofType:(int64_t)type;
- (id)initAsPrimary:(BOOL)primary;
- (int64_t)_getNextSyncBackoffPeriod;
- (unsigned)syncSession:(id)session enqueueChanges:(id)changes error:(id *)error;
- (void)_queue_deltaSync;
- (void)_queue_deltaSync_async;
- (void)_queue_requestSync:(int64_t)sync withBlock:(id)block;
- (void)_queue_resetSync;
- (void)_reportProgressForMessage:(id)message inSession:(id)session;
- (void)_resetBackoffPeriod;
- (void)dealloc;
- (void)requestDeltaSync;
- (void)requestResetSync;
- (void)resume;
- (void)sendOutOfBandMessage:(id)message ofType:(int64_t)type;
- (void)service:(id)service didSwitchFromPairingID:(id)d toPairingID:(id)iD;
- (void)service:(id)service encounteredError:(id)error context:(id)context;
- (void)service:(id)service incomingData:(id)data completion:(id)completion;
- (void)suspend;
- (void)syncCoordinator:(id)coordinator beginSyncSession:(id)session;
- (void)syncCoordinatorDidChangeSyncRestriction:(id)restriction;
- (void)syncSession:(id)session applyChanges:(id)changes completion:(id)completion;
- (void)syncSession:(id)session didEndWithError:(id)error;
@end

@implementation NTKDCompanionSyncWrapper

- (id)initAsPrimary:(BOOL)primary
{
  primaryCopy = primary;
  v19.receiver = self;
  v19.super_class = NTKDCompanionSyncWrapper;
  v4 = [(NTKDCompanionSyncWrapper *)&v19 init];
  v5 = v4;
  if (v4)
  {
    v4->_isPrimary = primaryCopy;
    v6 = dispatch_queue_create("com.apple.pairedsync.faces.NTKSyncBackoffQueue", 0);
    syncSerialQueue = v5->_syncSerialQueue;
    v5->_syncSerialQueue = v6;

    v8 = dispatch_queue_create("com.apple.pairedsync.faces.NTKSyncServiceQueue", 0);
    syncServiceQueue = v5->_syncServiceQueue;
    v5->_syncServiceQueue = v8;

    v10 = [[SYService alloc] initWithService:@"com.apple.private.alloy.clockface.sync" priority:0 asMasterStore:v5->_isPrimary options:0];
    syncService = v5->_syncService;
    v5->_syncService = v10;

    [(SYService *)v5->_syncService setDelegate:v5 queue:v5->_syncServiceQueue];
    v28 = IDSSendMessageOptionBypassDuetKey;
    v29 = &__kCFBooleanTrue;
    v12 = [NSDictionary dictionaryWithObjects:&v29 forKeys:&v28 count:1];
    [(SYService *)v5->_syncService setOptions:v12];

    v13 = +[NSMutableDictionary dictionary];
    rateLimiters = v5->_rateLimiters;
    v5->_rateLimiters = v13;

    v15 = _NTKLoggingObjectForDomain();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v17 = v5->_syncService;
      v16 = v5->_syncServiceQueue;
      *buf = 138544130;
      v21 = v5;
      v22 = 1024;
      v23 = primaryCopy;
      v24 = 2112;
      v25 = v16;
      v26 = 2112;
      v27 = v17;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "NTKDCompanionSyncWrapper initialized. %{public}@ - isPrimary:%d - _syncServiceQueue:%@ _syncService:%@", buf, 0x26u);
    }
  }

  return v5;
}

- (void)dealloc
{
  v3 = _NTKLoggingObjectForDomain();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    selfCopy = self;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "NTKDCompanionSyncWrapper dealloc'ed. %{public}@", buf, 0xCu);
  }

  v4.receiver = self;
  v4.super_class = NTKDCompanionSyncWrapper;
  [(NTKDCompanionSyncWrapper *)&v4 dealloc];
}

- (void)resume
{
  v3 = _NTKLoggingObjectForDomain();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Resuming companion sync service.", buf, 2u);
  }

  delegate = [(NTKDCompanionSyncWrapper *)self delegate];
  companionSyncWrapperCanSendData = [delegate companionSyncWrapperCanSendData];

  if (companionSyncWrapperCanSendData)
  {
    self->_resumeWhenSyncRestrictionLifted = 0;
    syncService = self->_syncService;
    v11 = 0;
    v7 = [(SYService *)syncService resume:&v11];
    v8 = v11;
    if ((v7 & 1) == 0)
    {
      v9 = _NTKLoggingObjectForDomain();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        sub_10003F108();
      }
    }
  }

  else
  {
    v10 = _NTKLoggingObjectForDomain();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *v12 = 0;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "currently under paired sync restriction; will resume later", v12, 2u);
    }

    self->_resumeWhenSyncRestrictionLifted = 1;
  }
}

- (void)suspend
{
  v3 = _NTKLoggingObjectForDomain();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Syspending companion sync", v4, 2u);
  }

  [(SYService *)self->_syncService suspend];
}

- (void)requestResetSync
{
  delegate = [(NTKDCompanionSyncWrapper *)self delegate];
  companionSyncWrapperCanSendData = [delegate companionSyncWrapperCanSendData];

  if (companionSyncWrapperCanSendData)
  {
    self->_resetSyncRequestedDuringSyncRestriction = 0;
    syncSerialQueue = self->_syncSerialQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10002C06C;
    block[3] = &unk_10005CA70;
    block[4] = self;
    dispatch_sync(syncSerialQueue, block);
  }

  else
  {
    v6 = _NTKLoggingObjectForDomain();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "currently under paired sync restriction; reset sync requests are deferred during sync restriction", buf, 2u);
    }

    self->_resetSyncRequestedDuringSyncRestriction = 1;
  }
}

- (void)requestDeltaSync
{
  syncSerialQueue = self->_syncSerialQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10002C0E8;
  block[3] = &unk_10005CA70;
  block[4] = self;
  dispatch_sync(syncSerialQueue, block);
}

- (void)sendOutOfBandMessage:(id)message ofType:(int64_t)type
{
  messageCopy = message;
  v7 = [[NSKeyedArchiver alloc] initRequiringSecureCoding:1];
  [v7 encodeInteger:type forKey:@"com.apple.nanotimekit.messageType"];
  [v7 encodeObject:messageCopy forKey:@"com.apple.nanotimekit.message"];
  syncService = self->_syncService;
  encodedData = [v7 encodedData];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10002C1FC;
  v11[3] = &unk_10005DF40;
  v12 = messageCopy;
  typeCopy = type;
  v10 = messageCopy;
  [(SYService *)syncService sendData:encodedData options:0 completion:v11];
}

- (void)_queue_resetSync
{
  if (self->_resetSyncRequested)
  {
    v2 = _NTKLoggingObjectForDomain();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      *v3 = 0;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "reset sync ongoing, incoming request ignored", v3, 2u);
    }
  }

  else
  {
    v4[0] = _NSConcreteStackBlock;
    v4[1] = 3221225472;
    v4[2] = sub_10002C49C;
    v4[3] = &unk_10005CA70;
    v4[4] = self;
    [(NTKDCompanionSyncWrapper *)self _queue_requestSync:0 withBlock:v4];
  }
}

- (void)_queue_deltaSync
{
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_10002C590;
  v2[3] = &unk_10005CA70;
  v2[4] = self;
  [(NTKDCompanionSyncWrapper *)self _queue_requestSync:1 withBlock:v2];
}

- (void)_queue_deltaSync_async
{
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_10002C684;
  v2[3] = &unk_10005CA70;
  v2[4] = self;
  [(NTKDCompanionSyncWrapper *)self _queue_requestSync:1 withBlock:v2];
}

- (void)_queue_requestSync:(int64_t)sync withBlock:(id)block
{
  blockCopy = block;
  v7 = blockCopy;
  if (self->_syncFailureCount < 2)
  {
    if (!sync)
    {
      self->_resetSyncRequested = 1;
    }

    (*(blockCopy + 2))(blockCopy);
  }

  else
  {
    if (self->_syncBackoffOngoing)
    {
      if (sync)
      {
        if (sync == 1 && self->_resetSyncRequested)
        {
          self->_deltaSyncRequiredAfterBackoff = 1;
          v8 = _NTKLoggingObjectForDomain();
          if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            v9 = "reset sync under backoff, delta sync delayed";
LABEL_19:
            _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, v9, buf, 2u);
            goto LABEL_20;
          }

          goto LABEL_20;
        }
      }

      else if (!self->_resetSyncRequested)
      {
        self->_resetSyncRequiredAfterBackoff = 1;
        v8 = _NTKLoggingObjectForDomain();
        if (!os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_20;
        }

        *buf = 0;
        v9 = "delta sync under backoff, reset sync delayed";
        goto LABEL_19;
      }

      v8 = _NTKLoggingObjectForDomain();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        v9 = "delta sync already under backoff, no delta sync requested";
        goto LABEL_19;
      }

LABEL_20:

      goto LABEL_21;
    }

    if (!sync)
    {
      self->_resetSyncRequested = 1;
    }

    self->_syncBackoffOngoing = 1;
    _getNextSyncBackoffPeriod = [(NTKDCompanionSyncWrapper *)self _getNextSyncBackoffPeriod];
    v11 = _NTKLoggingObjectForDomain();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v17 = _getNextSyncBackoffPeriod;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "backing off for %tu seconds before attempting sync", buf, 0xCu);
    }

    v12 = dispatch_time(0, 1000000000 * _getNextSyncBackoffPeriod);
    syncSerialQueue = self->_syncSerialQueue;
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_10002C9F4;
    v14[3] = &unk_10005CBE8;
    v14[4] = self;
    v15 = v7;
    dispatch_after(v12, syncSerialQueue, v14);
  }

LABEL_21:
}

- (int64_t)_getNextSyncBackoffPeriod
{
  v2 = +[NSUserDefaults standardUserDefaults];
  v3 = [v2 objectForKey:@"SyncBackoffPeriod"];
  integerValue = [v3 integerValue];

  if (!integerValue)
  {
    integerValue = 60;
LABEL_7:
    v5 = [NSNumber numberWithUnsignedInteger:integerValue];
    [v2 setObject:v5 forKey:@"SyncBackoffPeriod"];

    goto LABEL_8;
  }

  if (integerValue <= 0x707)
  {
    if (2 * integerValue >= 0x708)
    {
      integerValue = 1800;
    }

    else
    {
      integerValue *= 2;
    }

    goto LABEL_7;
  }

LABEL_8:

  return integerValue;
}

- (void)_resetBackoffPeriod
{
  v2 = +[NSUserDefaults standardUserDefaults];
  [v2 removeObjectForKey:@"SyncBackoffPeriod"];
}

- (void)_reportProgressForMessage:(id)message inSession:(id)session
{
  messageCopy = message;
  if (([session isResetSync] & 1) != 0 || (-[NTKDCompanionSyncWrapper delegate](self, "delegate"), v7 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v7, "companionSyncWrapperDidRequestActivePairedSyncSession"), v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v8, "syncSessionType"), v8, v7, v9 == 1))
  {
    [messageCopy progress];
    v11 = v10;
    v12 = _NTKLoggingObjectForDomain();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v15 = 134217984;
      v16 = v11;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "sync progress: %f", &v15, 0xCu);
    }

    delegate = [(NTKDCompanionSyncWrapper *)self delegate];
    companionSyncWrapperDidRequestActivePairedSyncSession = [delegate companionSyncWrapperDidRequestActivePairedSyncSession];
    [companionSyncWrapperDidRequestActivePairedSyncSession reportProgress:v11];
  }
}

- (id)_nextMessageToSendForSession:(id)session
{
  sessionCopy = session;
  outgoingWideLoadQueue = self->_outgoingWideLoadQueue;
  if (outgoingWideLoadQueue)
  {
    dequeueNextPart = [(_OutgoingWideLoadQueue *)outgoingWideLoadQueue dequeueNextPart];
    if (!dequeueNextPart)
    {
      v7 = _NTKLoggingObjectForDomain();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        sub_10003F1F0();
      }

      v8 = self->_outgoingWideLoadQueue;
      self->_outgoingWideLoadQueue = 0;
    }

    if ([(_OutgoingWideLoadQueue *)self->_outgoingWideLoadQueue isEmpty])
    {
      v9 = self->_outgoingWideLoadQueue;
      self->_outgoingWideLoadQueue = 0;
    }

    if (dequeueNextPart)
    {
      goto LABEL_33;
    }
  }

  v10 = objc_autoreleasePoolPush();
  delegate = [(NTKDCompanionSyncWrapper *)self delegate];
  dequeueNextPart = [delegate outgoingSyncSessionGetNextMessage];

  if (!dequeueNextPart)
  {
    goto LABEL_32;
  }

  *&v12 = 136315394;
  v29 = v12;
  while (1)
  {
    sessionMetadata = [sessionCopy sessionMetadata];
    v14 = [sessionMetadata objectForKeyedSubscript:@"receiverSyncVersion"];
    unsignedLongValue = [v14 unsignedLongValue];

    v16 = unsignedLongValue >= 2 ? 102400 : 0;
    payloadSize = [dequeueNextPart payloadSize];
    if (unsignedLongValue > 1)
    {
      if (payloadSize <= 0x19000)
      {
        goto LABEL_32;
      }
    }

    else if (payloadSize <= 0x465000)
    {
      goto LABEL_32;
    }

    if (NTKPeerDeviceHandlesWideLoads())
    {
      break;
    }

    p_super = _NTKLoggingObjectForDomain();
    if (os_log_type_enabled(p_super, OS_LOG_TYPE_ERROR))
    {
      *buf = v29;
      *&buf[4] = "[NTKDCompanionSyncWrapper _nextMessageToSendForSession:]";
      *&buf[12] = 2112;
      *&buf[14] = dequeueNextPart;
      v24 = p_super;
      v25 = "%s: trying to send wide load message %@ to a peer that cannot handle it; dropping it!";
LABEL_30:
      _os_log_error_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, v25, buf, 0x16u);
    }

LABEL_27:

    objc_autoreleasePoolPop(v10);
    v10 = objc_autoreleasePoolPush();
    delegate2 = [(NTKDCompanionSyncWrapper *)self delegate];
    dequeueNextPart = [delegate2 outgoingSyncSessionGetNextMessage];

    if (!dequeueNextPart)
    {
      goto LABEL_32;
    }
  }

  v18 = [[_OutgoingWideLoadQueue alloc] initWithWideLoadMessage:dequeueNextPart maxPartSize:v16];
  v19 = self->_outgoingWideLoadQueue;
  self->_outgoingWideLoadQueue = v18;

  v20 = self->_outgoingWideLoadQueue;
  if (!v20)
  {
    p_super = _NTKLoggingObjectForDomain();
    if (os_log_type_enabled(p_super, OS_LOG_TYPE_ERROR))
    {
      *buf = v29;
      *&buf[4] = "[NTKDCompanionSyncWrapper _nextMessageToSendForSession:]";
      *&buf[12] = 2112;
      *&buf[14] = dequeueNextPart;
      v24 = p_super;
      v25 = "%s: cannot create a wide load queue for outgoing message %@; dropping it!";
      goto LABEL_30;
    }

    goto LABEL_27;
  }

  dequeueNextPart2 = [(_OutgoingWideLoadQueue *)v20 dequeueNextPart];
  if (!dequeueNextPart2)
  {
    v22 = _NTKLoggingObjectForDomain();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      *buf = v29;
      *&buf[4] = "[NTKDCompanionSyncWrapper _nextMessageToSendForSession:]";
      *&buf[12] = 2112;
      *&buf[14] = dequeueNextPart;
      _os_log_error_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "%s: cannot retrieve the first partial message from a wide load queue for outgoing message %@; dropping it!", buf, 0x16u);
    }

    p_super = &self->_outgoingWideLoadQueue->super;
    self->_outgoingWideLoadQueue = 0;
    goto LABEL_27;
  }

  v27 = dequeueNextPart2;

  dequeueNextPart = v27;
LABEL_32:
  objc_autoreleasePoolPop(v10);
LABEL_33:

  return dequeueNextPart;
}

- (id)_storePartAndReassembleWideLoadIfPossible:(id)possible
{
  possibleCopy = possible;
  v5 = _NTKLoggingObjectForDomain();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v16 = 136315394;
    v17 = "[NTKDCompanionSyncWrapper _storePartAndReassembleWideLoadIfPossible:]";
    v18 = 2112;
    v19 = possibleCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%s: store partial message %@", &v16, 0x16u);
  }

  wideLoadId = [possibleCopy wideLoadId];
  p_super = [(NSMutableDictionary *)self->_incomingWideLoadQueues objectForKeyedSubscript:wideLoadId];
  if (p_super)
  {
LABEL_8:
    v12 = objc_autoreleasePoolPush();
    if (([p_super addIncomingPart:possibleCopy]& 1) != 0)
    {
      if (![p_super isFull])
      {
        getWideLoad = 0;
        goto LABEL_19;
      }

      getWideLoad = [p_super getWideLoad];
      if (getWideLoad)
      {
LABEL_17:
        [(NSMutableDictionary *)self->_incomingWideLoadQueues setObject:0 forKeyedSubscript:wideLoadId];
LABEL_19:
        objc_autoreleasePoolPop(v12);
        goto LABEL_20;
      }

      v14 = _NTKLoggingObjectForDomain();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        sub_10003F2EC(p_super);
      }
    }

    else
    {
      v14 = _NTKLoggingObjectForDomain();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        sub_10003F270();
      }

      getWideLoad = 0;
    }

    goto LABEL_17;
  }

  v8 = [[_IncomingWideLoadQueue alloc] initWithPartialMessageTemplate:possibleCopy];
  if (v8)
  {
    p_super = &v8->super;
    incomingWideLoadQueues = self->_incomingWideLoadQueues;
    if (!incomingWideLoadQueues)
    {
      v10 = +[NSMutableDictionary dictionary];
      v11 = self->_incomingWideLoadQueues;
      self->_incomingWideLoadQueues = v10;

      incomingWideLoadQueues = self->_incomingWideLoadQueues;
    }

    [(NSMutableDictionary *)incomingWideLoadQueues setObject:p_super forKeyedSubscript:wideLoadId];
    goto LABEL_8;
  }

  p_super = _NTKLoggingObjectForDomain();
  if (os_log_type_enabled(p_super, OS_LOG_TYPE_ERROR))
  {
    sub_10003F384();
  }

  getWideLoad = 0;
LABEL_20:

  return getWideLoad;
}

- (BOOL)_discardIncomingPartialMessagesIfNeededWithErrorMessage:(id)message
{
  messageCopy = message;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  selfCopy = self;
  allValues = [(NSMutableDictionary *)self->_incomingWideLoadQueues allValues];
  v17 = [allValues countByEnumeratingWithState:&v19 objects:v33 count:16];
  if (v17)
  {
    v5 = *v20;
    v6 = v17;
    do
    {
      v7 = 0;
      do
      {
        if (*v20 != v5)
        {
          objc_enumerationMutation(allValues);
        }

        v8 = *(*(&v19 + 1) + 8 * v7);
        v9 = _NTKLoggingObjectForDomain();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
        {
          wideLoadId = [v8 wideLoadId];
          partsExpected = [v8 partsExpected];
          v12 = partsExpected - [v8 partsAdded];
          partsExpected2 = [v8 partsExpected];
          *buf = 136316162;
          v24 = "[NTKDCompanionSyncWrapper _discardIncomingPartialMessagesIfNeededWithErrorMessage:]";
          v25 = 2112;
          v26 = messageCopy;
          v27 = 2112;
          v28 = wideLoadId;
          v29 = 2048;
          v30 = v12;
          v31 = 2048;
          v32 = partsExpected2;
          _os_log_error_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "%s: %@; discarding incoming queue for id %@ that still has %lu/%lu messages left", buf, 0x34u);
        }

        v7 = v7 + 1;
      }

      while (v6 != v7);
      v6 = [allValues countByEnumeratingWithState:&v19 objects:v33 count:16];
    }

    while (v6);
  }

  incomingWideLoadQueues = selfCopy->_incomingWideLoadQueues;
  selfCopy->_incomingWideLoadQueues = 0;

  return v17 != 0;
}

- (BOOL)_discardOutgoingPartialMessagesIfNeededWithErrorMessage:(id)message
{
  messageCopy = message;
  outgoingWideLoadQueue = self->_outgoingWideLoadQueue;
  p_outgoingWideLoadQueue = &self->_outgoingWideLoadQueue;
  v6 = outgoingWideLoadQueue;
  if (outgoingWideLoadQueue)
  {
    v8 = _NTKLoggingObjectForDomain();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_10003F400(messageCopy, p_outgoingWideLoadQueue);
    }

    v9 = *p_outgoingWideLoadQueue;
    *p_outgoingWideLoadQueue = 0;

    v10 = *p_outgoingWideLoadQueue;
  }

  else
  {
    v10 = 0;
  }

  *p_outgoingWideLoadQueue = 0;

  return v6 != 0;
}

- (void)syncCoordinator:(id)coordinator beginSyncSession:(id)session
{
  sessionCopy = session;
  delegate = [(NTKDCompanionSyncWrapper *)self delegate];
  companionSyncWrapperCanSendData = [delegate companionSyncWrapperCanSendData];

  if (companionSyncWrapperCanSendData)
  {
    if (![sessionCopy syncSessionType])
    {
LABEL_7:
      [(NTKDCompanionSyncWrapper *)self requestResetSync];
      goto LABEL_11;
    }

    resetSyncRequestedDuringSyncRestriction = self->_resetSyncRequestedDuringSyncRestriction;
    v9 = _NTKLoggingObjectForDomain();
    v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
    if (resetSyncRequestedDuringSyncRestriction)
    {
      if (v10)
      {
        sessionIdentifier = [sessionCopy sessionIdentifier];
        v13 = 138412290;
        v14 = sessionIdentifier;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "_resetSyncRequestedDuringSyncRestriction is YES, force to request reset sync. PSYServiceSyncSession sessionID = (%@)", &v13, 0xCu);
      }

      goto LABEL_7;
    }

    if (v10)
    {
      sessionIdentifier2 = [sessionCopy sessionIdentifier];
      v13 = 138412290;
      v14 = sessionIdentifier2;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "requesting delta sync. PSYServiceSyncSession sessionID = (%@)", &v13, 0xCu);
    }

    [(NTKDCompanionSyncWrapper *)self requestDeltaSync];
  }

LABEL_11:
}

- (void)syncCoordinatorDidChangeSyncRestriction:(id)restriction
{
  if (self->_resumeWhenSyncRestrictionLifted)
  {
    delegate = [(NTKDCompanionSyncWrapper *)self delegate];
    companionSyncWrapperCanSendData = [delegate companionSyncWrapperCanSendData];

    if (companionSyncWrapperCanSendData)
    {

      [(NTKDCompanionSyncWrapper *)self resume];
    }
  }
}

- (BOOL)service:(id)service startSession:(id)session error:(id *)error
{
  sessionCopy = session;
  delegate = [(NTKDCompanionSyncWrapper *)self delegate];
  companionSyncWrapperCanSendData = [delegate companionSyncWrapperCanSendData];

  v10 = _NTKLoggingObjectForDomain();
  v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
  if (companionSyncWrapperCanSendData)
  {
    if (v11)
    {
      isResetSync = [sessionCopy isResetSync];
      isSending = [sessionCopy isSending];
      identifier = [sessionCopy identifier];
      v23 = 134218498;
      v24 = isResetSync;
      v25 = 2048;
      v26 = isSending;
      v27 = 2114;
      v28 = identifier;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Companion sync starting session. isResetSync: %lu, isSending: %lu, id: %{public}@", &v23, 0x20u);
    }

    [sessionCopy setDelegate:self];
    [sessionCopy setSerializer:self];
    [sessionCopy setTargetQueue:self->_syncServiceQueue];
    sessionMetadata = [sessionCopy sessionMetadata];
    v16 = [NSMutableDictionary dictionaryWithDictionary:sessionMetadata];

    if ([sessionCopy isSending])
    {
      [v16 setObject:&off_10005FD18 forKey:@"senderSyncVersion"];
      [sessionCopy setSessionMetadata:v16];
      delegate2 = [(NTKDCompanionSyncWrapper *)self delegate];
      [delegate2 outgoingSyncSessionDidStart:{objc_msgSend(sessionCopy, "isResetSync")}];

      delegate3 = [[_RateLimiter alloc] initWithRate:307200];
      rateLimiters = self->_rateLimiters;
      identifier2 = [sessionCopy identifier];
      [(NSMutableDictionary *)rateLimiters setObject:delegate3 forKeyedSubscript:identifier2];
    }

    else
    {
      [v16 setObject:&off_10005FD18 forKey:@"receiverSyncVersion"];
      [sessionCopy setSessionMetadata:v16];
      delegate3 = [(NTKDCompanionSyncWrapper *)self delegate];
      -[_RateLimiter incomingSyncSessionDidStart:](delegate3, "incomingSyncSessionDidStart:", [sessionCopy isResetSync]);
    }
  }

  else
  {
    if (v11)
    {
      identifier3 = [sessionCopy identifier];
      v23 = 138412290;
      v24 = identifier3;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Companion sync won't start session. It can't send data. SYSession ID = (%@)", &v23, 0xCu);
    }

    if (error)
    {
      *error = [[NSError alloc] initWithDomain:@"com.apple.pairedsync.faces" code:302 userInfo:0];
    }
  }

  return companionSyncWrapperCanSendData;
}

- (void)service:(id)service encounteredError:(id)error context:(id)context
{
  errorCopy = error;
  v7 = _NTKLoggingObjectForDomain();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    sub_10003F4E4();
  }

  syncSerialQueue = self->_syncSerialQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10002DAEC;
  block[3] = &unk_10005CA70;
  block[4] = self;
  dispatch_sync(syncSerialQueue, block);
}

- (void)service:(id)service incomingData:(id)data completion:(id)completion
{
  completionCopy = completion;
  dataCopy = data;
  v20 = 0;
  v9 = [[NSKeyedUnarchiver alloc] initForReadingFromData:dataCopy error:&v20];

  v10 = v20;
  v11 = [v9 decodeIntegerForKey:@"com.apple.nanotimekit.messageType"];
  v12 = [v9 decodeObjectOfClass:objc_opt_class() forKey:@"com.apple.nanotimekit.message"];
  v13 = _NTKLoggingObjectForDomain();
  v14 = v13;
  if (v12)
  {
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218242;
      v22 = v11;
      v23 = 2112;
      v24 = v12;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "incoming out of band data -- messageType: %lu, message: %@", buf, 0x16u);
    }

    if (v11 == 3)
    {
      NTKUpNextFileRadarWithData();
      goto LABEL_15;
    }

    if (v11 == 2)
    {
      NTKPhotosConfirmMemoryWasViewed();
      goto LABEL_15;
    }

    if (v11 == 1)
    {
      delegate = [(NTKDCompanionSyncWrapper *)self delegate];
      if ([delegate companionSyncWrapperCanSendData])
      {
        resetSyncRequested = self->_resetSyncRequested;

        if (!resetSyncRequested)
        {
          delegate2 = [(NTKDCompanionSyncWrapper *)self delegate];
          [delegate2 incomingLibraryValidationMessage:v12];

LABEL_15:
          completionCopy[2](completionCopy, 1, 0);
          goto LABEL_16;
        }
      }

      else
      {
      }

      v18 = _NTKLoggingObjectForDomain();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "library validation rejected -- paired sync ongoing", buf, 2u);
      }

      v19 = [[NSError alloc] initWithDomain:@"com.apple.pairedsync.faces" code:303 userInfo:0];
      (completionCopy)[2](completionCopy, 0, v19);
    }
  }

  else
  {
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      sub_10003F554();
    }

    completionCopy[2](completionCopy, 0, 0);
  }

LABEL_16:
}

- (unsigned)syncSession:(id)session enqueueChanges:(id)changes error:(id *)error
{
  sessionCopy = session;
  changesCopy = changes;
  v9 = [(NTKDCompanionSyncWrapper *)self _nextMessageToSendForSession:sessionCopy];
  if (v9)
  {
    rateLimiters = self->_rateLimiters;
    identifier = [sessionCopy identifier];
    v12 = [(NSMutableDictionary *)rateLimiters objectForKeyedSubscript:identifier];

    if (v12)
    {
      payloadSize = [v9 payloadSize];
      if (payloadSize)
      {
        v14 = payloadSize;
      }

      else
      {
        v14 = 100;
      }

      [v12 wait];
      [v12 addBytes:v14];
    }

    else
    {
      v18 = _NTKLoggingObjectForDomain();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        sub_10003F5CC(sessionCopy);
      }
    }

    if ((changesCopy[2](changesCopy, v9) & 1) == 0)
    {
      v19 = _NTKLoggingObjectForDomain();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        sub_10003F658();
      }
    }

    v17 = 1;
  }

  else
  {
    if ([sessionCopy isSending])
    {
      delegate = [(NTKDCompanionSyncWrapper *)self delegate];
      companionSyncWrapperDidRequestActivePairedSyncSession = [delegate companionSyncWrapperDidRequestActivePairedSyncSession];
      [companionSyncWrapperDidRequestActivePairedSyncSession syncDidCompleteSending];
    }

    v17 = 2;
  }

  [(NTKDCompanionSyncWrapper *)self _reportProgressForMessage:v9 inSession:sessionCopy];
  v20 = _NTKLoggingObjectForDomain();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    identifier2 = [sessionCopy identifier];
    v23 = 134218498;
    v24 = v17;
    v25 = 2112;
    v26 = v9;
    v27 = 2112;
    v28 = identifier2;
    _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "sessionStateResult: %ld, messageToSend: %@, session id: %@", &v23, 0x20u);
  }

  return v17;
}

- (void)syncSession:(id)session applyChanges:(id)changes completion:(id)completion
{
  sessionCopy = session;
  changesCopy = changes;
  completionCopy = completion;
  v11 = _NTKLoggingObjectForDomain();
  v33 = sessionCopy;
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    identifier = [sessionCopy identifier];
    *buf = 138412290;
    v42 = identifier;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Companion Sync session applying changes with session id: %@", buf, 0xCu);

    sessionCopy = v33;
  }

  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  obj = changesCopy;
  v13 = [obj countByEnumeratingWithState:&v37 objects:v45 count:16];
  if (v13)
  {
    v14 = v13;
    v32 = completionCopy;
    v35 = *v38;
    while (2)
    {
      for (i = 0; i != v14; i = i + 1)
      {
        if (*v38 != v35)
        {
          objc_enumerationMutation(obj);
        }

        v16 = *(*(&v37 + 1) + 8 * i);
        v17 = objc_autoreleasePoolPush();
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v18 = v16;
        }

        else
        {
          serializer = [sessionCopy serializer];
          v20 = [serializer dataFromChange:v16];

          v21 = objc_opt_class();
          v36 = 0;
          v18 = [NSKeyedUnarchiver unarchivedObjectOfClass:v21 fromData:v20 error:&v36];
          v22 = v36;
          if (v22)
          {
            v30 = v22;
            v31 = _NTKLoggingObjectForDomain();
            if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
            {
              sub_10003F698();
            }

LABEL_30:
            objc_autoreleasePoolPop(v17);
            v29 = 0;
            goto LABEL_31;
          }
        }

        if ([v18 isPartial])
        {
          v23 = [(NTKDCompanionSyncWrapper *)self _storePartAndReassembleWideLoadIfPossible:v18];
        }

        else
        {
          v23 = v18;
        }

        v20 = v23;
        if (v23)
        {
          delegate = [(NTKDCompanionSyncWrapper *)self delegate];
          v25 = [delegate incomingSyncSessionApplyMessage:v20];

          v26 = _NTKLoggingObjectForDomain();
          if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
          {
            v27 = LogBool();
            *buf = 138412546;
            v42 = v20;
            v43 = 2112;
            v44 = v27;
            _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_INFO, "apply sync mesage: %@, success=%@", buf, 0x16u);

            sessionCopy = v33;
          }

          NTKSubmitSyncMessage();
          if (!v25)
          {
            goto LABEL_30;
          }

          [(NTKDCompanionSyncWrapper *)self _reportProgressForMessage:v18 inSession:sessionCopy];
        }

        else
        {
          v28 = _NTKLoggingObjectForDomain();
          if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
          {
            *buf = 138412290;
            v42 = v18;
            _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_INFO, "received partial sync message %@", buf, 0xCu);
          }
        }

        objc_autoreleasePoolPop(v17);
      }

      v14 = [obj countByEnumeratingWithState:&v37 objects:v45 count:16];
      if (v14)
      {
        continue;
      }

      break;
    }

    v29 = 1;
LABEL_31:
    completionCopy = v32;
  }

  else
  {
    v29 = 1;
  }

  completionCopy[2](completionCopy, v29, 0);
}

- (BOOL)syncSession:(id)session resetDataStoreWithError:(id *)error
{
  sessionCopy = session;
  v7 = _NTKLoggingObjectForDomain();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    identifier = [sessionCopy identifier];
    v12 = 138412290;
    v13 = identifier;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Reset request received for sync session with id %@", &v12, 0xCu);
  }

  delegate = [(NTKDCompanionSyncWrapper *)self delegate];
  v10 = [delegate incomingSyncSessionResetDataStoreWithError:error];

  return v10;
}

- (void)syncSession:(id)session didEndWithError:(id)error
{
  sessionCopy = session;
  errorCopy = error;
  if ([sessionCopy isSending])
  {
    if ([(NTKDCompanionSyncWrapper *)self _discardOutgoingPartialMessagesIfNeededWithErrorMessage:@"Session did end"])
    {
      v8 = [NSError errorWithDomain:kNTKSyncErrorDomain code:1 userInfo:0];
      v9 = v8;
      if (errorCopy)
      {
        v10 = errorCopy;
      }

      else
      {
        v10 = v8;
      }

      v11 = v10;

      errorCopy = v11;
    }

    else
    {
      v9 = 0;
    }

    v14 = errorCopy;
    rateLimiters = self->_rateLimiters;
    errorCopy = [sessionCopy identifier];
    [(NSMutableDictionary *)rateLimiters setObject:0 forKeyedSubscript:errorCopy];
  }

  else
  {
    if (![(NTKDCompanionSyncWrapper *)self _discardIncomingPartialMessagesIfNeededWithErrorMessage:@"Session did end"])
    {
      v9 = 0;
      goto LABEL_16;
    }

    v12 = [NSError errorWithDomain:kNTKSyncErrorDomain code:2 userInfo:0];
    v9 = v12;
    if (errorCopy)
    {
      v13 = errorCopy;
    }

    else
    {
      v13 = v12;
    }

    v14 = v13;
  }

  errorCopy = v14;
LABEL_16:
  delegate = [(NTKDCompanionSyncWrapper *)self delegate];
  companionSyncWrapperDidRequestActivePairedSyncSession = [delegate companionSyncWrapperDidRequestActivePairedSyncSession];

  if (companionSyncWrapperDidRequestActivePairedSyncSession && (![companionSyncWrapperDidRequestActivePairedSyncSession syncSessionType] && (objc_msgSend(sessionCopy, "isResetSync") & 1) != 0 || objc_msgSend(companionSyncWrapperDidRequestActivePairedSyncSession, "syncSessionType") == 1 && (objc_msgSend(sessionCopy, "isResetSync") & 1) == 0))
  {
    v18 = _NTKLoggingObjectForDomain();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      sessionIdentifier = [companionSyncWrapperDidRequestActivePairedSyncSession sessionIdentifier];
      *buf = 138412290;
      v35 = sessionIdentifier;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "paired sync session ended with id: %@", buf, 0xCu);
    }

    if (!errorCopy)
    {
      [companionSyncWrapperDidRequestActivePairedSyncSession syncDidComplete];
LABEL_31:
      v20 = _NTKLoggingObjectForDomain();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        identifier = [sessionCopy identifier];
        *buf = 138412290;
        v35 = identifier;
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "sync session ended with id: %@", buf, 0xCu);
      }

      v21 = 1;
      goto LABEL_34;
    }

    [companionSyncWrapperDidRequestActivePairedSyncSession syncDidFailWithError:errorCopy];
  }

  else if (!errorCopy)
  {
    goto LABEL_31;
  }

  v20 = _NTKLoggingObjectForDomain();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
  {
    sub_10003F708(errorCopy, sessionCopy);
  }

  v21 = 0;
LABEL_34:

  isSending = [sessionCopy isSending];
  delegate2 = [(NTKDCompanionSyncWrapper *)self delegate];
  v25 = delegate2;
  if (isSending)
  {
    [delegate2 outgoingSyncSessionDidEnd:v21 withError:errorCopy];
  }

  else
  {
    [delegate2 incomingSyncSessionDidEnd:v21 withError:errorCopy];
  }

  syncSerialQueue = self->_syncSerialQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10002EA1C;
  block[3] = &unk_10005CC38;
  v27 = errorCopy;
  v31 = v27;
  selfCopy = self;
  v28 = sessionCopy;
  v33 = v28;
  dispatch_sync(syncSerialQueue, block);
  if ([v28 isSending])
  {
    v29 = objc_opt_new();
    [v29 setIsResetSync:{objc_msgSend(v28, "isResetSync")}];
    [v29 setChangesSent:{objc_msgSend(v28, "sentChangeCount")}];
    [v29 setBytesSent:{objc_msgSend(v28, "sentChangeByteCount")}];
    [v29 setDidSucceed:v21];
    NTKSubmitSyncSession();
  }
}

- (void)service:(id)service didSwitchFromPairingID:(id)d toPairingID:(id)iD
{
  dCopy = d;
  iDCopy = iD;
  v9 = _NTKLoggingObjectForDomain();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v13 = dCopy;
    v14 = 2112;
    v15 = iDCopy;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "didSwitchFromPairingID:%@ toPairingID:%@", buf, 0x16u);
  }

  if (iDCopy)
  {
    [(NTKDCompanionSyncWrapper *)self _discardIncomingPartialMessagesIfNeededWithErrorMessage:@"Switching to a new pairing ID"];
    [(NTKDCompanionSyncWrapper *)self _discardOutgoingPartialMessagesIfNeededWithErrorMessage:@"Switching to a new pairing ID"];
    syncSerialQueue = self->_syncSerialQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10002EC40;
    block[3] = &unk_10005CA70;
    block[4] = self;
    dispatch_sync(syncSerialQueue, block);
    [(NTKDCompanionSyncWrapper *)self resume];
  }
}

- (id)changeFromData:(id)data ofType:(int64_t)type
{
  dataCopy = data;
  v9 = 0;
  v5 = [NSKeyedUnarchiver unarchivedObjectOfClass:objc_opt_class() fromData:dataCopy error:&v9];

  v6 = v9;
  if (!v5)
  {
    v7 = _NTKLoggingObjectForDomain();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_10003F7AC();
    }
  }

  return v5;
}

- (NTKDSyncDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end