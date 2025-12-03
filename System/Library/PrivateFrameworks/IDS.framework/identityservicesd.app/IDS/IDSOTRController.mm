@interface IDSOTRController
+ (IDSOTRController)sharedInstance;
- (BOOL)hasMessagableOTRSessionForToken:(id)token;
- (BOOL)isSessionNegotiating:(id)negotiating;
- (BOOL)isSessionReady:(id)ready;
- (BOOL)serializeSession:(_SecOTRSession *)session token:(id)token;
- (IDSOTRController)init;
- (_SecMPPublicIdentity)copyPairedDevicePublicIdentityWithDataProtectionClass:(unsigned int)class;
- (_SecOTRSession)_cachedSessionForToken:(id)token;
- (_SecOTRSession)copySessionForToken:(id)token;
- (double)sessionStartTimeWithToken:(id)token;
- (id)copyOTRTestBlock:(id)block;
- (id)copySessionObjectForToken:(id)token;
- (unsigned)sessionNegotiationCount:(id)count;
- (void)_cacheSession:(_SecOTRSession *)session token:(id)token;
- (void)_kickoffOTRNegotiationWithDevice:(id)device token:(id)token negotiationData:(id)data;
- (void)_onQueueStartOTRNegotiationWithDeviceIfNeeded:(id)needed token:(id)token reset:(BOOL)reset errorHandler:(id)handler;
- (void)_reportOTRTestResult:(id)result setupTime:(double)time result:(unsigned __int8)a5;
- (void)addOTRSessionBlock:(unsigned __int8)block sessionBlock:(id)sessionBlock key:(id)key;
- (void)performOTRSessionBlock:(unsigned __int8)block token:(id)token;
- (void)processNegotiationData:(id)data deviceUniqueID:(id)d token:(id)token negotiationCount:(unsigned int)count;
- (void)removeAllCachedSessionsFromMainQueue;
- (void)resetAllSessions;
- (void)resumeSessionNegotiation;
- (void)setOTRTestBlockFromCompletionBlock:(id)block token:(id)token;
- (void)setSessionNegotiationComplete:(id)complete;
- (void)setSessionNegotiationStart:(id)start;
- (void)setSessionReady:(id)ready;
- (void)setupNewSessionInfoWithToken:(id)token;
- (void)startOTRNegotiationWithDeviceIfNeeded:(id)needed token:(id)token reset:(BOOL)reset errorHandler:(id)handler;
- (void)suspendSessionNegotiation:(id)negotiation askedByPairedDevice:(BOOL)device;
@end

@implementation IDSOTRController

+ (IDSOTRController)sharedInstance
{
  if (qword_100CBF020 != -1)
  {
    sub_100929660();
  }

  v3 = qword_100CBF028;

  return v3;
}

- (IDSOTRController)init
{
  v7.receiver = self;
  v7.super_class = IDSOTRController;
  v2 = [(IDSOTRController *)&v7 init];
  v3 = v2;
  if (v2)
  {
    pthread_mutex_init(&v2->_lock, 0);
    v4 = objc_alloc_init(NSRecursiveLock);
    storageLock = v3->_storageLock;
    v3->_storageLock = v4;
  }

  return v3;
}

- (void)addOTRSessionBlock:(unsigned __int8)block sessionBlock:(id)sessionBlock key:(id)key
{
  blockCopy = block;
  sessionBlockCopy = sessionBlock;
  keyCopy = key;
  if (!sessionBlockCopy)
  {
    goto LABEL_37;
  }

  pthread_mutex_lock(&self->_lock);
  if (blockCopy == 2)
  {
    priorityToTimeoutBlocks = self->_priorityToTimeoutBlocks;
    if (!priorityToTimeoutBlocks)
    {
      Mutable = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
      v18 = self->_priorityToTimeoutBlocks;
      self->_priorityToTimeoutBlocks = Mutable;

      priorityToTimeoutBlocks = self->_priorityToTimeoutBlocks;
    }

    v19 = [sessionBlockCopy copy];
    [(NSMutableDictionary *)priorityToTimeoutBlocks setObject:v19 forKey:keyCopy];

    v20 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      v21 = objc_retainBlock(sessionBlockCopy);
      *buf = 134218242;
      v31 = v21;
      v32 = 2112;
      v33 = keyCopy;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "add OTR timeout block %p key %@.", buf, 0x16u);
    }

    if (!os_log_shim_legacy_logging_enabled())
    {
      goto LABEL_24;
    }

    if (!_IDSShouldLogTransport())
    {
      goto LABEL_24;
    }

    v29 = objc_retainBlock(sessionBlockCopy);
    _IDSLogTransport();

    if (!_IDSShouldLog())
    {
      goto LABEL_24;
    }

LABEL_11:
    v28 = objc_retainBlock(sessionBlockCopy);
    _IDSLogV();

    goto LABEL_24;
  }

  if (blockCopy != 1)
  {
    v22 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      LODWORD(v31) = blockCopy;
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "addOTRSessionBlock: invalid sessionBlock type %d.", buf, 8u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      _IDSWarnV();
      _IDSLogV();
      _IDSLogTransport();
    }

    goto LABEL_24;
  }

  priorityToCompletionBlocks = self->_priorityToCompletionBlocks;
  if (!priorityToCompletionBlocks)
  {
    v11 = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    v12 = self->_priorityToCompletionBlocks;
    self->_priorityToCompletionBlocks = v11;

    priorityToCompletionBlocks = self->_priorityToCompletionBlocks;
  }

  v13 = [sessionBlockCopy copy];
  [(NSMutableDictionary *)priorityToCompletionBlocks setObject:v13 forKey:keyCopy];

  v14 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v15 = objc_retainBlock(sessionBlockCopy);
    *buf = 134218242;
    v31 = v15;
    v32 = 2112;
    v33 = keyCopy;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "add OTR completion block %p key %@.", buf, 0x16u);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    if (_IDSShouldLogTransport())
    {
      v27 = objc_retainBlock(sessionBlockCopy);
      _IDSLogTransport();

      if (_IDSShouldLog())
      {
        goto LABEL_11;
      }
    }
  }

LABEL_24:
  v23 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
  {
    v24 = self->_priorityToCompletionBlocks;
    *buf = 138412290;
    v31 = v24;
    _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "_priorityToCompletionBlocks after ADD %@", buf, 0xCu);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    if (_IDSShouldLogTransport())
    {
      _IDSLogTransport();
      if (_IDSShouldLog())
      {
        _IDSLogV();
      }
    }
  }

  v25 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
  {
    v26 = self->_priorityToTimeoutBlocks;
    *buf = 138412290;
    v31 = v26;
    _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "_priorityToTimeoutBlocks after ADD %@", buf, 0xCu);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    if (_IDSShouldLogTransport())
    {
      _IDSLogTransport();
      if (_IDSShouldLog())
      {
        _IDSLogV();
      }
    }
  }

  pthread_mutex_unlock(&self->_lock);
LABEL_37:
}

- (void)performOTRSessionBlock:(unsigned __int8)block token:(id)token
{
  blockCopy = block;
  tokenCopy = token;
  v7 = sub_10057279C(tokenCopy);
  v8 = tokenCopy;
  v9 = [(NSMutableDictionary *)v8 componentsSeparatedByString:@"-"];
  if ([v9 count] > 3)
  {
    v12 = [NSString alloc];
    v13 = [v9 objectAtIndex:3];
    v11 = [v12 initWithString:v13];

    if ([v9 count] >= 5)
    {
      v14 = 4;
      do
      {
        v15 = [(__CFString *)v11 stringByAppendingString:@"_"];

        v16 = [v9 objectAtIndex:v14];
        v11 = [v15 stringByAppendingString:v16];

        ++v14;
      }

      while ([v9 count] > v14);
    }
  }

  else
  {
    v10 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v43 = v8;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "_connectionIDFromToken: invalid OTR token %@", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      _IDSWarnV();
      _IDSLogV();
      v32 = v8;
      _IDSLogTransport();
    }

    v11 = &stru_100C06028;
  }

  if ([(__CFString *)v11 length])
  {
    v17 = v11;
  }

  else
  {
    v17 = [NSNumber numberWithInteger:v7];
  }

  v18 = v17;
  v19 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v43 = v18;
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Key to find blocks %@", buf, 0xCu);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    if (_IDSShouldLogTransport())
    {
      v32 = v18;
      _IDSLogTransport();
      if (_IDSShouldLog())
      {
        v32 = v18;
        _IDSLogV();
      }
    }
  }

  v20 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    priorityToCompletionBlocks = self->_priorityToCompletionBlocks;
    *buf = 138412290;
    v43 = priorityToCompletionBlocks;
    _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "_priorityToCompletionBlocks after PERFORM %@", buf, 0xCu);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    if (_IDSShouldLogTransport())
    {
      v32 = self->_priorityToCompletionBlocks;
      _IDSLogTransport();
      if (_IDSShouldLog())
      {
        v32 = self->_priorityToCompletionBlocks;
        _IDSLogV();
      }
    }
  }

  v22 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    priorityToTimeoutBlocks = self->_priorityToTimeoutBlocks;
    *buf = 138412290;
    v43 = priorityToTimeoutBlocks;
    _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "_priorityToTimeoutBlocks after PERFORM %@", buf, 0xCu);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    if (_IDSShouldLogTransport())
    {
      v32 = self->_priorityToTimeoutBlocks;
      _IDSLogTransport();
      if (_IDSShouldLog())
      {
        v32 = self->_priorityToTimeoutBlocks;
        _IDSLogV();
      }
    }
  }

  pthread_mutex_lock(&self->_lock);
  if (blockCopy == 1)
  {
    v24 = 96;
  }

  else
  {
    if (blockCopy != 2)
    {
      goto LABEL_46;
    }

    v24 = 104;
  }

  v25 = [*(&self->super.isa + v24) objectForKey:{v18, v32}];
  if (v25)
  {
    v26 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412802;
      v43 = v8;
      v44 = 1024;
      v45 = blockCopy;
      v46 = 2048;
      v47 = v7;
      _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "performOTRSessionBlock for %@ (blockType:%d priority:%ld).", buf, 0x1Cu);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLogTransport())
      {
        _IDSLogTransport();
        if (_IDSShouldLog())
        {
          _IDSLogV();
        }
      }
    }

    switch(v7)
    {
      case 100:
        v30 = +[IDSDaemonPriorityQueueController sharedInstance];
        v33[0] = _NSConcreteStackBlock;
        v33[1] = 3221225472;
        v33[2] = sub_100573D74;
        v33[3] = &unk_100BD7298;
        v25 = v25;
        v35 = v25;
        v34 = v8;
        [v30 performBlockSyncPriority:v33];

        break;
      case 200:
        v29 = +[IDSDaemonPriorityQueueController sharedInstance];
        v36[0] = _NSConcreteStackBlock;
        v36[1] = 3221225472;
        v36[2] = sub_100573D60;
        v36[3] = &unk_100BD7298;
        v25 = v25;
        v38 = v25;
        v37 = v8;
        [v29 performBlockDefaultPriority:v36];

        break;
      case 300:
        v27 = +[IDSDaemonPriorityQueueController sharedInstance];
        v39[0] = _NSConcreteStackBlock;
        v39[1] = 3221225472;
        v39[2] = sub_100573D4C;
        v39[3] = &unk_100BD7298;
        v25 = v25;
        v41 = v25;
        v40 = v8;
        [v27 performBlockUrgentPriority:v39];

        break;
      default:
        v31 = OSLogHandleForIDSCategory();
        if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v43 = v8;
          _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_ERROR, "performOTRSessionBlock found no block for %@ due to invalid priority.", buf, 0xCu);
        }

        if (os_log_shim_legacy_logging_enabled())
        {
          _IDSWarnV();
          _IDSLogV();
          _IDSLogTransport();
        }

        break;
    }

    goto LABEL_51;
  }

LABEL_46:
  v28 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412802;
    v43 = v8;
    v44 = 1024;
    v45 = blockCopy;
    v46 = 2048;
    v47 = v7;
    _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_ERROR, "performOTRSessionBlock found no block for %@ (blockType:%u, Priority:%ld).", buf, 0x1Cu);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    _IDSWarnV();
    _IDSLogV();
    _IDSLogTransport();
  }

  v25 = 0;
LABEL_51:
  pthread_mutex_unlock(&self->_lock);
}

- (void)setupNewSessionInfoWithToken:(id)token
{
  tokenCopy = token;
  pthread_mutex_lock(&self->_lock);
  sessionInfoToToken = self->_sessionInfoToToken;
  if (!sessionInfoToToken)
  {
    Mutable = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    v6 = self->_sessionInfoToToken;
    self->_sessionInfoToToken = Mutable;

    sessionInfoToToken = self->_sessionInfoToToken;
  }

  v7 = [(NSMutableDictionary *)sessionInfoToToken objectForKey:tokenCopy];
  if (v7)
  {
    v8 = v7;
    [(IDSOTRSessionInfo *)v7 setIsNegotiating:0];
    [(IDSOTRSessionInfo *)v8 setIsReady:0];
    [(IDSOTRSessionInfo *)v8 setLastStartTime:0.0];
    [(IDSOTRSessionInfo *)v8 removeNegotiationTimer];
  }

  else
  {
    v8 = [[IDSOTRSessionInfo alloc] initWithToken:tokenCopy];
    [(NSMutableDictionary *)self->_sessionInfoToToken setObject:v8 forKey:tokenCopy];
  }

  pthread_mutex_unlock(&self->_lock);
}

- (void)setSessionReady:(id)ready
{
  readyCopy = ready;
  pthread_mutex_lock(&self->_lock);
  sessionInfoToToken = self->_sessionInfoToToken;
  if (!sessionInfoToToken)
  {
    Mutable = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    v7 = self->_sessionInfoToToken;
    self->_sessionInfoToToken = Mutable;

    sessionInfoToToken = self->_sessionInfoToToken;
  }

  v8 = [(NSMutableDictionary *)sessionInfoToToken objectForKey:readyCopy];
  v9 = v8;
  if (v8)
  {
    if (![(IDSOTRSessionInfo *)v8 isNegotiating]&& ![(IDSOTRSessionInfo *)v9 isReady])
    {
      [(IDSOTRSessionInfo *)v9 setIsReady:1];
      v10 = OSLogHandleForTransportCategory();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v13 = readyCopy;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Enable OTR session for %@.", buf, 0xCu);
      }

      if (os_log_shim_legacy_logging_enabled())
      {
        if (_IDSShouldLogTransport())
        {
LABEL_15:
          _IDSLogTransport();
          if (_IDSShouldLog())
          {
            _IDSLogV();
          }
        }
      }
    }
  }

  else
  {
    v9 = [[IDSOTRSessionInfo alloc] initWithToken:readyCopy];
    [(IDSOTRSessionInfo *)v9 setIsReady:1];
    [(NSMutableDictionary *)self->_sessionInfoToToken setObject:v9 forKey:readyCopy];
    v11 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v13 = readyCopy;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Enable OTR session for %@.", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLogTransport())
    {
      goto LABEL_15;
    }
  }

  pthread_mutex_unlock(&self->_lock);
}

- (double)sessionStartTimeWithToken:(id)token
{
  tokenCopy = token;
  pthread_mutex_lock(&self->_lock);
  sessionInfoToToken = self->_sessionInfoToToken;
  if (!sessionInfoToToken)
  {
    Mutable = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    v7 = self->_sessionInfoToToken;
    self->_sessionInfoToToken = Mutable;

    sessionInfoToToken = self->_sessionInfoToToken;
  }

  v8 = [(NSMutableDictionary *)sessionInfoToToken objectForKey:tokenCopy];
  v9 = v8;
  if (v8)
  {
    [v8 lastStartTime];
    v11 = v10;
  }

  else
  {
    v11 = 0.0;
  }

  pthread_mutex_unlock(&self->_lock);

  return v11;
}

- (void)setSessionNegotiationStart:(id)start
{
  startCopy = start;
  pthread_mutex_lock(&self->_lock);
  sessionInfoToToken = self->_sessionInfoToToken;
  if (!sessionInfoToToken)
  {
    Mutable = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    v7 = self->_sessionInfoToToken;
    self->_sessionInfoToToken = Mutable;

    sessionInfoToToken = self->_sessionInfoToToken;
  }

  v8 = [(NSMutableDictionary *)sessionInfoToToken objectForKey:startCopy];
  v9 = v8;
  if (v8)
  {
    if (([v8 isNegotiating] & 1) == 0)
    {
      [v9 lastStartTime];
      if (v10 == 0.0)
      {
        negotiationCount = [v9 negotiationCount];
        if (negotiationCount == 0x7FFFFFFF)
        {
          v12 = 1;
        }

        else
        {
          v12 = negotiationCount + 1;
        }

        v13 = OSLogHandleForTransportCategory();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412546;
          v19 = startCopy;
          v20 = 1024;
          v21 = v12;
          _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "### OTR session negotiation started for %@, count:%08x.", buf, 0x12u);
        }

        if (os_log_shim_legacy_logging_enabled())
        {
          if (_IDSShouldLogTransport())
          {
            v15 = startCopy;
            v17 = v12;
            _IDSLogTransport();
            if (_IDSShouldLog())
            {
              v15 = startCopy;
              v17 = v12;
              _IDSLogV();
            }
          }
        }

        [v9 setIsNegotiating:{1, v15, v17}];
        if ([v9 isReady])
        {
          [v9 setIsReady:0];
          v14 = OSLogHandleForTransportCategory();
          if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v19 = startCopy;
            _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Disable OTR session for %@.", buf, 0xCu);
          }

          if (os_log_shim_legacy_logging_enabled())
          {
            if (_IDSShouldLogTransport())
            {
              v16 = startCopy;
              _IDSLogTransport();
              if (_IDSShouldLog())
              {
                v16 = startCopy;
                _IDSLogV();
              }
            }
          }
        }

        [v9 setIsSuspended:{0, v16}];
        ids_monotonic_time();
        [v9 setLastStartTime:?];
        [v9 setNegotiationTimer];
        [v9 setNegotiationCount:v12];
      }
    }
  }

  pthread_mutex_unlock(&self->_lock);
}

- (void)setSessionNegotiationComplete:(id)complete
{
  completeCopy = complete;
  pthread_mutex_lock(&self->_lock);
  sessionInfoToToken = self->_sessionInfoToToken;
  if (!sessionInfoToToken)
  {
    Mutable = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    v7 = self->_sessionInfoToToken;
    self->_sessionInfoToToken = Mutable;

    sessionInfoToToken = self->_sessionInfoToToken;
  }

  v8 = [(NSMutableDictionary *)sessionInfoToToken objectForKey:completeCopy];
  v9 = v8;
  if (!v8)
  {
    v12 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v15 = completeCopy;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "### Resume OTR session for %@.", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLogTransport())
      {
        v13 = completeCopy;
        _IDSLogTransport();
        if (_IDSShouldLog())
        {
          v13 = completeCopy;
          _IDSLogV();
        }
      }
    }

    pthread_mutex_unlock(&self->_lock);
    goto LABEL_19;
  }

  [v8 setIsNegotiating:0];
  isReady = [v9 isReady];
  [v9 setIsSuspended:0];
  [v9 setLastStartTime:0.0];
  [v9 removeNegotiationTimer];
  v11 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v15 = completeCopy;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "### OTR session negotiation finished for %@.", buf, 0xCu);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    if (_IDSShouldLogTransport())
    {
      v13 = completeCopy;
      _IDSLogTransport();
      if (_IDSShouldLog())
      {
        v13 = completeCopy;
        _IDSLogV();
      }
    }
  }

  pthread_mutex_unlock(&self->_lock);
  if ((isReady & 1) == 0)
  {
LABEL_19:
    [(IDSOTRController *)self performOTRSessionBlock:1 token:completeCopy, v13];
  }
}

- (void)suspendSessionNegotiation:(id)negotiation askedByPairedDevice:(BOOL)device
{
  negotiationCopy = negotiation;
  v7 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Suspend OTR session negotiation", buf, 2u);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    if (_IDSShouldLogTransport())
    {
      _IDSLogTransport();
      if (_IDSShouldLog())
      {
        _IDSLogV();
      }
    }
  }

  pthread_mutex_lock(&self->_lock);
  sessionInfoToToken = self->_sessionInfoToToken;
  if (!sessionInfoToToken)
  {
    Mutable = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    v10 = self->_sessionInfoToToken;
    self->_sessionInfoToToken = Mutable;

    sessionInfoToToken = self->_sessionInfoToToken;
  }

  v11 = [(NSMutableDictionary *)sessionInfoToToken objectForKey:negotiationCopy];
  v12 = v11;
  if (v11)
  {
    [v11 setIsNegotiating:0];
    [v12 setIsReady:0];
    [v12 setIsSuspended:1];
    [v12 setLastStartTime:0.0];
    [v12 removeNegotiationTimer];
    v13 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v16 = negotiationCopy;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "### OTR session negotiation suspended for %@.", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLogTransport())
      {
        _IDSLogTransport();
        if (_IDSShouldLog())
        {
          _IDSLogV();
        }
      }
    }
  }

  pthread_mutex_unlock(&self->_lock);
  if (!device)
  {
    v14 = +[IDSUTunController sharedInstance];
    [v14 sendSuspendOTRNegotiationMessage:negotiationCopy];
  }
}

- (void)resumeSessionNegotiation
{
  v3 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Resume suspended OTR session negotiation", buf, 2u);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    if (_IDSShouldLogTransport())
    {
      _IDSLogTransport();
      if (_IDSShouldLog())
      {
        _IDSLogV();
      }
    }
  }

  pthread_mutex_lock(&self->_lock);
  allValues = [(NSMutableDictionary *)self->_sessionInfoToToken allValues];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100574BB4;
  v5[3] = &unk_100BD8A48;
  v5[4] = self;
  [allValues enumerateObjectsUsingBlock:v5];
  pthread_mutex_unlock(&self->_lock);
}

- (void)resetAllSessions
{
  pthread_mutex_lock(&self->_lock);
  v3 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "=== Reset All OTR Sessions === ", v5, 2u);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    if (_IDSShouldLogTransport())
    {
      _IDSLogTransport();
      if (_IDSShouldLog())
      {
        _IDSLogV();
      }
    }
  }

  sessionInfoToToken = self->_sessionInfoToToken;
  self->_sessionInfoToToken = 0;

  pthread_mutex_unlock(&self->_lock);
}

- (BOOL)isSessionNegotiating:(id)negotiating
{
  negotiatingCopy = negotiating;
  pthread_mutex_lock(&self->_lock);
  sessionInfoToToken = self->_sessionInfoToToken;
  if (!sessionInfoToToken)
  {
    Mutable = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    v7 = self->_sessionInfoToToken;
    self->_sessionInfoToToken = Mutable;

    sessionInfoToToken = self->_sessionInfoToToken;
  }

  v8 = [(NSMutableDictionary *)sessionInfoToToken objectForKey:negotiatingCopy];
  isNegotiating = [v8 isNegotiating];
  pthread_mutex_unlock(&self->_lock);

  return isNegotiating;
}

- (BOOL)isSessionReady:(id)ready
{
  readyCopy = ready;
  pthread_mutex_lock(&self->_lock);
  sessionInfoToToken = self->_sessionInfoToToken;
  if (!sessionInfoToToken)
  {
    Mutable = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    v7 = self->_sessionInfoToToken;
    self->_sessionInfoToToken = Mutable;

    sessionInfoToToken = self->_sessionInfoToToken;
  }

  v8 = [(NSMutableDictionary *)sessionInfoToToken objectForKey:readyCopy];
  isReady = [v8 isReady];
  pthread_mutex_unlock(&self->_lock);

  return isReady;
}

- (unsigned)sessionNegotiationCount:(id)count
{
  countCopy = count;
  pthread_mutex_lock(&self->_lock);
  sessionInfoToToken = self->_sessionInfoToToken;
  if (!sessionInfoToToken)
  {
    Mutable = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    v7 = self->_sessionInfoToToken;
    self->_sessionInfoToToken = Mutable;

    sessionInfoToToken = self->_sessionInfoToToken;
  }

  v8 = [(NSMutableDictionary *)sessionInfoToToken objectForKey:countCopy];
  negotiationCount = [v8 negotiationCount];
  pthread_mutex_unlock(&self->_lock);

  return negotiationCount;
}

- (_SecOTRSession)copySessionForToken:(id)token
{
  tokenCopy = token;
  if (tokenCopy)
  {
    [(NSRecursiveLock *)self->_storageLock lock];
    v5 = [(IDSOTRController *)self _cachedSessionForToken:tokenCopy];
    if (v5)
    {
      v6 = v5;
      CFRetain(v5);
      [(NSRecursiveLock *)self->_storageLock unlock];
    }

    else
    {
      v7 = +[IDSOTRKeyStorage sharedInstance];
      v8 = [v7 sessionKeyForToken:tokenCopy];

      if (v8)
      {
        v6 = SecOTRSessionCreateFromData();
        if (v6)
        {
          v9 = OSLogHandleForTransportCategory();
          if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 134218242;
            v16 = v6;
            v17 = 2112;
            v18 = tokenCopy;
            _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Created new session %p using cached key for %@.", buf, 0x16u);
          }

          if (os_log_shim_legacy_logging_enabled())
          {
            if (_IDSShouldLogTransport())
            {
              v13 = v6;
              v14 = tokenCopy;
              _IDSLogTransport();
              if (_IDSShouldLog())
              {
                v13 = v6;
                v14 = tokenCopy;
                _IDSLogV();
              }
            }
          }

          [(IDSOTRController *)self setupNewSessionInfoWithToken:tokenCopy, v13, v14];
        }

        else
        {
          v10 = OSLogHandleForTransportCategory();
          if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v16 = tokenCopy;
            _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "SecOTRSessionCreateFromData failed, remove session key for %@.", buf, 0xCu);
          }

          if (os_log_shim_legacy_logging_enabled())
          {
            if (_IDSShouldLogTransport())
            {
              v13 = tokenCopy;
              _IDSLogTransport();
              if (_IDSShouldLog())
              {
                v13 = tokenCopy;
                _IDSLogV();
              }
            }
          }

          v11 = +[IDSOTRKeyStorage sharedInstance];
          [v11 removeSessionKeyForToken:tokenCopy];
        }

        [(IDSOTRController *)self _cacheSession:v6 token:tokenCopy];
        [(NSRecursiveLock *)self->_storageLock unlock];
      }

      else
      {
        [(NSRecursiveLock *)self->_storageLock unlock];
        v6 = 0;
      }
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (_SecOTRSession)_cachedSessionForToken:(id)token
{
  tokenCopy = token;
  if (tokenCopy)
  {
    v5 = [(NSMutableDictionary *)self->_sessionStorage objectForKey:tokenCopy];
    if (v5)
    {
      v6 = +[IDSFoundationLog OTRController];
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        v8 = 134218498;
        v9 = v5;
        v10 = 2112;
        v11 = v5;
        v12 = 2112;
        v13 = tokenCopy;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "Found cached session %p: %@ for %@", &v8, 0x20u);
      }
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)_cacheSession:(_SecOTRSession *)session token:(id)token
{
  tokenCopy = token;
  if (tokenCopy)
  {
    [(NSRecursiveLock *)self->_storageLock lock];
    if (!self->_sessionStorage)
    {
      Mutable = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
      sessionStorage = self->_sessionStorage;
      self->_sessionStorage = Mutable;
    }

    v9 = self->_sessionStorage;
    if (session)
    {
      [(NSMutableDictionary *)v9 setObject:session forKey:tokenCopy];
      v10 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134218498;
        sessionCopy = session;
        v17 = 2112;
        sessionCopy2 = session;
        v19 = 2112;
        v20 = tokenCopy;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Storing cached session %p (%@) for %@", buf, 0x20u);
      }

      if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
      {
        _IDSLogV();
        [(NSRecursiveLock *)self->_storageLock unlock:session];
        goto LABEL_16;
      }
    }

    else
    {
      [(NSMutableDictionary *)v9 removeObjectForKey:tokenCopy];
      v11 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134218242;
        sessionCopy = 0;
        v17 = 2112;
        sessionCopy2 = tokenCopy;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Removing cached session %p for %@", buf, 0x16u);
      }

      if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
      {
        v12 = 0;
        v13 = tokenCopy;
        _IDSLogV();
      }
    }

    [(NSRecursiveLock *)self->_storageLock unlock:v12];
  }

LABEL_16:
}

- (BOOL)serializeSession:(_SecOTRSession *)session token:(id)token
{
  tokenCopy = token;
  if (tokenCopy)
  {
    if (session)
    {
      v7 = objc_alloc_init(NSMutableData);
      v8 = SecOTRSAppendSerialization();
      v9 = v8 == 0;
      if (v8)
      {
        [(IDSOTRController *)self _cacheSession:0 token:tokenCopy];
        v10 = +[IDSOTRKeyStorage sharedInstance];
        [v10 removeSessionKeyForToken:tokenCopy];

        v11 = OSLogHandleForIDSCategory();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "serializeSession - failed to serialize data for session", buf, 2u);
        }

        if (os_log_shim_legacy_logging_enabled())
        {
          _IDSWarnV();
          _IDSLogV();
          _IDSLogTransport();
        }
      }

      else
      {
        v15 = OSLogHandleForIDSCategory();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "serializeSession - updating session key in store", buf, 2u);
        }

        if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
        {
          _IDSLogV();
        }

        [(IDSOTRController *)self _cacheSession:session token:tokenCopy];
        v16 = +[IDSOTRKeyStorage sharedInstance];
        [v16 storeSessionKey:v7 token:tokenCopy];
      }
    }

    else
    {
      v13 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        sessionCopy = tokenCopy;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "serializeSession - NULL session for token %@", buf, 0xCu);
      }

      if (os_log_shim_legacy_logging_enabled())
      {
        _IDSWarnV();
        _IDSLogV();
        v18 = tokenCopy;
        _IDSLogTransport();
      }

      [(IDSOTRController *)self _cacheSession:0 token:tokenCopy, v18];
      v14 = +[IDSOTRKeyStorage sharedInstance];
      [v14 removeSessionKeyForToken:tokenCopy];

      v9 = 1;
    }
  }

  else
  {
    v12 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 134217984;
      sessionCopy = session;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "serializeSession - token nil for session %p.", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      _IDSWarnV();
      _IDSLogV();
      _IDSLogTransport();
    }

    v9 = 0;
  }

  return v9;
}

- (id)copySessionObjectForToken:(id)token
{
  v3 = [(IDSOTRController *)self copySessionForToken:token];
  v4 = [[IDSSecOTRSession alloc] initWithSecOTRSessionRef:v3];
  if (v3)
  {
    CFRelease(v3);
  }

  return v4;
}

- (void)removeAllCachedSessionsFromMainQueue
{
  [(NSRecursiveLock *)self->_storageLock lock];
  [(NSMutableDictionary *)self->_sessionStorage removeAllObjects];
  storageLock = self->_storageLock;

  [(NSRecursiveLock *)storageLock unlock];
}

- (void)setOTRTestBlockFromCompletionBlock:(id)block token:(id)token
{
  blockCopy = block;
  tokenCopy = token;
  v8 = +[IDSEncryptionController sharedInstance];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100575C20;
  v11[3] = &unk_100BD8CB0;
  v11[4] = self;
  v12 = tokenCopy;
  v13 = blockCopy;
  v9 = blockCopy;
  v10 = tokenCopy;
  [v8 performAsyncBlock:v11 priority:sub_10057279C(v10)];
}

- (id)copyOTRTestBlock:(id)block
{
  blockCopy = block;
  pthread_mutex_lock(&self->_lock);
  v5 = [(NSMutableDictionary *)self->_sessionInfoToToken objectForKey:blockCopy];

  otrTestBlock = [v5 otrTestBlock];
  v7 = [otrTestBlock copy];

  pthread_mutex_unlock(&self->_lock);
  v8 = objc_retainBlock(v7);

  return v8;
}

- (void)_reportOTRTestResult:(id)result setupTime:(double)time result:(unsigned __int8)a5
{
  v5 = a5;
  resultCopy = result;
  v8 = [(IDSOTRController *)self copyOTRTestBlock:?];
  if (v8)
  {
    if (v5 == 2)
    {
      v11 = 0;
      v10 = @"Unable to create session from session data";
    }

    else
    {
      v9 = 0;
      if (v5 != 3)
      {
LABEL_7:
        (v8)[2](v8, resultCopy, v9, time);

        goto LABEL_8;
      }

      v10 = @"No public key found for remote device";
      v11 = 1;
    }

    v12 = [NSDictionary dictionaryWithObject:v10 forKey:NSLocalizedDescriptionKey];
    v9 = [NSError errorWithDomain:@"IDSOTR" code:v11 userInfo:v12];

    goto LABEL_7;
  }

LABEL_8:
}

- (void)processNegotiationData:(id)data deviceUniqueID:(id)d token:(id)token negotiationCount:(unsigned int)count
{
  dataCopy = data;
  dCopy = d;
  tokenCopy = token;
  v13 = +[IDSEncryptionController sharedInstance];
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_100575FC4;
  v17[3] = &unk_100BDF658;
  v17[4] = self;
  v18 = tokenCopy;
  countCopy = count;
  v19 = dataCopy;
  v20 = dCopy;
  v14 = dCopy;
  v15 = dataCopy;
  v16 = tokenCopy;
  [v13 performAsyncBlock:v17 priority:sub_10057279C(v16)];
}

- (BOOL)hasMessagableOTRSessionForToken:(id)token
{
  tokenCopy = token;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  v5 = +[IDSEncryptionController sharedInstance];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1005779D4;
  v8[3] = &unk_100BE0810;
  v8[4] = self;
  v6 = tokenCopy;
  v9 = v6;
  v10 = &v11;
  [v5 performSyncBlock:v8 priority:sub_10057279C(v6)];

  LOBYTE(v5) = *(v12 + 24);
  _Block_object_dispose(&v11, 8);

  return v5;
}

- (_SecMPPublicIdentity)copyPairedDevicePublicIdentityWithDataProtectionClass:(unsigned int)class
{
  v4 = +[IDSPairingManager sharedInstance];
  v5 = v4;
  if (class)
  {
    if (class == 1)
    {
      [v4 pairedDevicePublicClassAKey];
    }

    else
    {
      [v4 pairedDevicePublicKey];
    }
    pairedDevicePublicClassCKey = ;
  }

  else
  {
    pairedDevicePublicClassCKey = [v4 pairedDevicePublicClassCKey];
  }

  v7 = pairedDevicePublicClassCKey;

  if (!v7)
  {
    v12 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = IDSDataProtectionClassStringFromDataProtectionClass();
      *buf = 138412290;
      v21 = v13;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "copyPairedDevicePublicIdentityWithDataProtectionClass failed to get public key for data protection class %@", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLogTransport())
      {
        v15 = IDSDataProtectionClassStringFromDataProtectionClass();
        _IDSLogTransport();

        if (_IDSShouldLog())
        {
          v16 = IDSDataProtectionClassStringFromDataProtectionClass();
          _IDSLogV();
        }
      }
    }

    goto LABEL_26;
  }

  cf = 0;
  if (qword_100CBF038 != -1)
  {
    sub_100929674();
  }

  if (!off_100CBF030)
  {
LABEL_26:
    v8 = 0;
    goto LABEL_27;
  }

  v8 = off_100CBF030(0, v7, &cf);
  if (cf)
  {
    v9 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = cf;
      v11 = IDSDataProtectionClassStringFromDataProtectionClass();
      *buf = 138412802;
      v21 = v7;
      v22 = 2112;
      v23 = v10;
      v24 = 2112;
      v25 = v11;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Failed creating public identity from data: %@  (Error: %@) (DataProtectionClass: %@)", buf, 0x20u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLogTransport())
      {
        v17 = IDSDataProtectionClassStringFromDataProtectionClass();
        _IDSLogTransport();

        if (_IDSShouldLog())
        {
          v18 = IDSDataProtectionClassStringFromDataProtectionClass();
          _IDSLogV();
        }
      }
    }

    if (cf)
    {
      CFRelease(cf);
    }
  }

LABEL_27:

  return v8;
}

- (void)_kickoffOTRNegotiationWithDevice:(id)device token:(id)token negotiationData:(id)data
{
  deviceCopy = device;
  tokenCopy = token;
  dataCopy = data;
  [(IDSOTRController *)self setSessionNegotiationStart:tokenCopy];
  v11 = [(IDSOTRController *)self sessionNegotiationCount:tokenCopy]| 0x80000000;
  v12 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218498;
    v19 = [dataCopy length];
    v20 = 2112;
    v21 = tokenCopy;
    v22 = 1024;
    v23 = v11;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "  => will, send out OTR negotiation data %luB for %@, count:%08x.", buf, 0x1Cu);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    if (_IDSShouldLogTransport())
    {
      v16 = tokenCopy;
      v17 = v11;
      v15 = [dataCopy length];
      _IDSLogTransport();
      if (_IDSShouldLog())
      {
        v13 = [dataCopy length];
        v16 = tokenCopy;
        v17 = v11;
        v15 = v13;
        _IDSLogV();
      }
    }
  }

  v14 = [IDSUTunController sharedInstance:v15];
  [v14 sendOTRNegotiationMessage:tokenCopy negotiationCount:v11 negotiationData:dataCopy];
}

- (void)startOTRNegotiationWithDeviceIfNeeded:(id)needed token:(id)token reset:(BOOL)reset errorHandler:(id)handler
{
  neededCopy = needed;
  tokenCopy = token;
  handlerCopy = handler;
  v13 = +[IDSEncryptionController sharedInstance];
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_10057835C;
  v17[3] = &unk_100BD9968;
  v17[4] = self;
  v18 = neededCopy;
  resetCopy = reset;
  v19 = tokenCopy;
  v20 = handlerCopy;
  v14 = handlerCopy;
  v15 = tokenCopy;
  v16 = neededCopy;
  [v13 performAsyncBlock:v17 priority:sub_10057279C(v15)];
}

- (void)_onQueueStartOTRNegotiationWithDeviceIfNeeded:(id)needed token:(id)token reset:(BOOL)reset errorHandler:(id)handler
{
  neededCopy = needed;
  tokenCopy = token;
  handlerCopy = handler;
  v12 = sub_100572610(tokenCopy);
  if (![v12 isEqualToString:@"idsotr"])
  {
    v15 = +[IDSDServiceController sharedInstance];
    v16 = [v15 serviceWithPushTopic:v12];

    if (!v16)
    {
      v22 = OSLogHandleForTransportCategory();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v67 = tokenCopy;
        _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "Failed to find service for token %@", buf, 0xCu);
      }

      if (os_log_shim_legacy_logging_enabled())
      {
        if (_IDSShouldLogTransport())
        {
          _IDSLogTransport();
          if (_IDSShouldLog())
          {
            goto LABEL_8;
          }
        }
      }

      goto LABEL_112;
    }

    dataProtectionClass = [v16 dataProtectionClass];

LABEL_11:
    v17 = +[IDSRegistrationKeyManager sharedInstance];
    v18 = [v17 latestCopyMessageProtectionIdentityForDataProtectionClass:dataProtectionClass];

    cf = v18;
    if (!v18)
    {
      v20 = OSLogHandleForTransportCategory();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        v21 = IDSDataProtectionClassStringFromDataProtectionClass();
        *buf = 138412290;
        v67 = v21;
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Failed to get MP Identity for data protection class %@", buf, 0xCu);
      }

      if (os_log_shim_legacy_logging_enabled())
      {
        if (_IDSShouldLogTransport())
        {
          v58 = IDSDataProtectionClassStringFromDataProtectionClass();
          _IDSLogTransport();

          if (_IDSShouldLog())
          {
            v58 = IDSDataProtectionClassStringFromDataProtectionClass();
            _IDSLogV();
          }
        }
      }

      [(IDSOTRController *)self setupNewSessionInfoWithToken:tokenCopy, v58];
      [(IDSOTRController *)self suspendSessionNegotiation:tokenCopy askedByPairedDevice:0];
      goto LABEL_112;
    }

    v63 = [(IDSOTRController *)self copyPairedDevicePublicIdentityWithDataProtectionClass:dataProtectionClass];
    if (!v63)
    {
      v23 = OSLogHandleForTransportCategory();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v67 = neededCopy;
        _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "We have no public key for remote device %@, can't start OTR negotiation!", buf, 0xCu);
      }

      if (os_log_shim_legacy_logging_enabled())
      {
        if (_IDSShouldLogTransport())
        {
          v58 = neededCopy;
          _IDSLogTransport();
          if (_IDSShouldLog())
          {
            v58 = neededCopy;
            _IDSLogV();
          }
        }
      }

      [(IDSOTRController *)self setupNewSessionInfoWithToken:tokenCopy, v58];
      [(IDSOTRController *)self suspendSessionNegotiation:tokenCopy askedByPairedDevice:0];
      CFRelease(v18);
      goto LABEL_112;
    }

    v62 = [(IDSOTRController *)self copySessionForToken:tokenCopy];
    if (v62)
    {
      IsReadyForMessages = SecOTRSGetIsReadyForMessages();
    }

    else
    {
      IsReadyForMessages = 0;
    }

    v24 = +[IDSOTRKeyStorage sharedInstance];
    v25 = [v24 sessionKeyForToken:tokenCopy];

    v26 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      v27 = @"NO";
      *buf = 138413058;
      v67 = neededCopy;
      if (IsReadyForMessages)
      {
        v28 = @"YES";
      }

      else
      {
        v28 = @"NO";
      }

      if (v25)
      {
        v27 = @"YES";
      }

      v68 = 2112;
      v69 = v63;
      v70 = 2112;
      v71 = v28;
      v72 = 2112;
      v73 = v27;
      _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "Peer: %@    public key: %@    has OTR session: %@    has session key: %@", buf, 0x2Au);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLogTransport())
    {
      v29 = IsReadyForMessages ? @"YES" : @"NO";
      v30 = v25 ? @"YES" : @"NO";
      v60 = v29;
      v61 = v30;
      v58 = neededCopy;
      v59 = v63;
      _IDSLogTransport();
      if (_IDSShouldLog())
      {
        v60 = v29;
        v61 = v30;
        v58 = neededCopy;
        v59 = v63;
        _IDSLogV();
      }
    }

    if (v25)
    {
      v31 = 1;
    }

    else
    {
      v31 = IsReadyForMessages;
    }

    if (v31)
    {
      if ([(IDSOTRController *)self isSessionNegotiating:tokenCopy])
      {
        v32 = OSLogHandleForTransportCategory();
        if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v67 = tokenCopy;
          _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "OTR negotiation for %@ in progress.", buf, 0xCu);
        }

        if (os_log_shim_legacy_logging_enabled())
        {
          if (_IDSShouldLogTransport())
          {
            _IDSLogTransport();
            if (_IDSShouldLog())
            {
              _IDSLogV();
            }
          }
        }

        CFRelease(cf);
        CFRelease(v63);
        if (!v62)
        {
          goto LABEL_112;
        }

        goto LABEL_111;
      }

      if (!reset && ((IsReadyForMessages ^ 1) & 1) == 0)
      {
        v37 = OSLogHandleForTransportCategory();
        if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v67 = tokenCopy;
          _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, "OTR session for %@ is ready.", buf, 0xCu);
        }

        if (os_log_shim_legacy_logging_enabled())
        {
          if (_IDSShouldLogTransport())
          {
            v58 = tokenCopy;
            _IDSLogTransport();
            if (_IDSShouldLog())
            {
              v58 = tokenCopy;
              _IDSLogV();
            }
          }
        }

        [(IDSOTRController *)self performOTRSessionBlock:1 token:tokenCopy, v58, v59, v60, v61];
        CFRelease(cf);
        CFRelease(v63);
        if (!v62)
        {
          goto LABEL_112;
        }

LABEL_111:
        CFRelease(v62);
        goto LABEL_112;
      }

      v40 = OSLogHandleForTransportCategory();
      if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v67 = tokenCopy;
        _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEFAULT, "Kick off OTR session re-negotiation for %@.", buf, 0xCu);
      }

      if (os_log_shim_legacy_logging_enabled())
      {
        if (_IDSShouldLogTransport())
        {
          v58 = tokenCopy;
          _IDSLogTransport();
          if (_IDSShouldLog())
          {
            v58 = tokenCopy;
            _IDSLogV();
          }
        }
      }

      if (v62)
      {
        v41 = objc_alloc_init(NSMutableData);
        restarted = SecOTRSAppendRestartPacket();
        if (restarted)
        {
          v43 = OSLogHandleForIDSCategory();
          if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412546;
            v67 = tokenCopy;
            v68 = 1024;
            LODWORD(v69) = restarted;
            _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_ERROR, "SecOTRSAppendRestartPacket failed for %@, with result %d, removing session key. Kick off re-negotiation.", buf, 0x12u);
          }

          if (os_log_shim_legacy_logging_enabled())
          {
            _IDSWarnV();
            _IDSLogV();
            v58 = tokenCopy;
            v59 = restarted;
            _IDSLogTransport();
          }

          [(IDSOTRController *)self _cacheSession:0 token:tokenCopy, v58, v59, v60, v61];
          v44 = +[IDSOTRKeyStorage sharedInstance];
          [v44 removeSessionKeyForToken:tokenCopy];

          goto LABEL_109;
        }

        v53 = OSLogHandleForTransportCategory();
        if (os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134218242;
          v67 = v62;
          v68 = 2112;
          v69 = tokenCopy;
          _os_log_impl(&_mh_execute_header, v53, OS_LOG_TYPE_DEFAULT, "Restarted OTR session %p for %@.", buf, 0x16u);
        }

        if (os_log_shim_legacy_logging_enabled())
        {
          if (_IDSShouldLogTransport())
          {
            v58 = v62;
            v59 = tokenCopy;
            _IDSLogTransport();
            if (_IDSShouldLog())
            {
              v58 = v62;
              v59 = tokenCopy;
              _IDSLogV();
            }
          }
        }

        [(IDSOTRController *)self serializeSession:v62 token:tokenCopy, v58, v59, v60, v61];
        [(IDSOTRController *)self _kickoffOTRNegotiationWithDevice:neededCopy token:tokenCopy negotiationData:v41];

        goto LABEL_110;
      }

      if (dataProtectionClass != 1)
      {
        v54 = OSLogHandleForTransportCategory();
        if (os_log_type_enabled(v54, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v67 = tokenCopy;
          _os_log_impl(&_mh_execute_header, v54, OS_LOG_TYPE_DEFAULT, "Failed to find OTR session for token %@, this should never happen.", buf, 0xCu);
        }

        if (!os_log_shim_legacy_logging_enabled())
        {
          goto LABEL_110;
        }

        if (!_IDSShouldLogTransport())
        {
          goto LABEL_110;
        }

        _IDSLogTransport();
        if (!_IDSShouldLog())
        {
          goto LABEL_110;
        }

LABEL_134:
        _IDSLogV();
        goto LABEL_110;
      }

      v46 = +[IDSOTRKeyStorage sharedInstance];
      [v46 lock];

      v47 = +[IDSOTRKeyStorage sharedInstance];
      isUnderLock = [v47 isUnderLock];

      v49 = +[IDSOTRKeyStorage sharedInstance];
      v50 = [v49 sessionKeyForToken:tokenCopy];

      v51 = +[IDSOTRKeyStorage sharedInstance];
      [v51 unlock];

      if ((isUnderLock & (v50 == 0)) == 1)
      {
        v52 = OSLogHandleForTransportCategory();
        if (os_log_type_enabled(v52, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v67 = tokenCopy;
          _os_log_impl(&_mh_execute_header, v52, OS_LOG_TYPE_DEFAULT, "Failed to find OTR session for token %@, we're under first lock.", buf, 0xCu);
        }

        if (os_log_shim_legacy_logging_enabled())
        {
          if (_IDSShouldLogTransport())
          {
            _IDSLogTransport();
            if (_IDSShouldLog())
            {
              _IDSLogV();
            }
          }
        }

        handlerCopy[2](handlerCopy, 1);
        goto LABEL_110;
      }

      v55 = OSLogHandleForTransportCategory();
      if (os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT))
      {
        v56 = @"NO";
        if (isUnderLock)
        {
          v57 = @"YES";
        }

        else
        {
          v57 = @"NO";
        }

        *buf = 138412802;
        v67 = tokenCopy;
        v69 = v57;
        v68 = 2112;
        if (v50)
        {
          v56 = @"YES";
        }

        v70 = 2112;
        v71 = v56;
        _os_log_impl(&_mh_execute_header, v55, OS_LOG_TYPE_DEFAULT, "Failed to find OTR session for token %@, this should never happen (underLock %@) (hasSessionKey %@)", buf, 0x20u);
      }

      if (os_log_shim_legacy_logging_enabled())
      {
        if (_IDSShouldLogTransport())
        {
          _IDSLogTransport();
          if (_IDSShouldLog())
          {
            goto LABEL_134;
          }
        }
      }
    }

    else
    {
      v33 = objc_alloc_init(NSMutableData);
      OTRSessionWithFlags = SecMPFullIdentityCreateOTRSessionWithFlags();
      if (!OTRSessionWithFlags)
      {
        v38 = OSLogHandleForIDSCategory();
        if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412546;
          v67 = tokenCopy;
          v68 = 2112;
          v69 = 0;
          _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_ERROR, "SecMPFullIdentityCreateOTRSessionWithFlags failed for %@ with error %@. Kick off re-negotiation.", buf, 0x16u);
        }

        if (os_log_shim_legacy_logging_enabled())
        {
          _IDSWarnV();
          _IDSLogV();
          v58 = tokenCopy;
          v59 = 0;
          _IDSLogTransport();
        }

        goto LABEL_109;
      }

      started = SecOTRSAppendStartPacket();
      if (started)
      {
        v36 = OSLogHandleForIDSCategory();
        if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412546;
          v67 = tokenCopy;
          v68 = 1024;
          LODWORD(v69) = started;
          _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_ERROR, "SecOTRSAppendStartPacket failed for %@ with error %d. Kick off re-negotiation.", buf, 0x12u);
        }

        if (os_log_shim_legacy_logging_enabled())
        {
          _IDSWarnV();
          _IDSLogV();
          v58 = tokenCopy;
          v59 = started;
          _IDSLogTransport();
        }

        v39 = 1;
      }

      else
      {
        v45 = OSLogHandleForTransportCategory();
        if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134218242;
          v67 = OTRSessionWithFlags;
          v68 = 2112;
          v69 = tokenCopy;
          _os_log_impl(&_mh_execute_header, v45, OS_LOG_TYPE_DEFAULT, "Created new OTR session %p for %@.", buf, 0x16u);
        }

        if (os_log_shim_legacy_logging_enabled())
        {
          if (_IDSShouldLogTransport())
          {
            v58 = OTRSessionWithFlags;
            v59 = tokenCopy;
            _IDSLogTransport();
            if (_IDSShouldLog())
            {
              v58 = OTRSessionWithFlags;
              v59 = tokenCopy;
              _IDSLogV();
            }
          }
        }

        [(IDSOTRController *)self serializeSession:OTRSessionWithFlags token:tokenCopy, v58, v59, v60, v61];
        [(IDSOTRController *)self setupNewSessionInfoWithToken:tokenCopy];
        [(IDSOTRController *)self _kickoffOTRNegotiationWithDevice:neededCopy token:tokenCopy negotiationData:v33];
        v39 = 0;
      }

      CFRelease(OTRSessionWithFlags);

      if (v39)
      {
LABEL_109:
        [(IDSOTRController *)self startOTRNegotiationWithDeviceIfNeeded:neededCopy token:tokenCopy reset:1 errorHandler:0, v58, v59];
      }
    }

LABEL_110:
    CFRelease(cf);
    CFRelease(v63);
    if (!v62)
    {
      goto LABEL_112;
    }

    goto LABEL_111;
  }

  dataProtectionClass = sub_100577740(tokenCopy);
  if (dataProtectionClass < 3)
  {
    goto LABEL_11;
  }

  v14 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v67 = tokenCopy;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Invalid data protection class for token %@", buf, 0xCu);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    if (_IDSShouldLogTransport())
    {
      _IDSLogTransport();
      if (_IDSShouldLog())
      {
LABEL_8:
        _IDSLogV();
      }
    }
  }

LABEL_112:
}

@end