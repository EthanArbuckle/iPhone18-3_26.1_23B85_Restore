@interface SYFileTransferSyncEngine
- (BOOL)_sessionDeviceCanUseSingleMessages;
- (BOOL)_shouldTreatAsSessionEnd:(id)end;
- (BOOL)resume:(id *)resume;
- (BOOL)targetIsNearby;
- (SYFileTransferSyncEngine)initWithService:(id)service queue:(id)queue;
- (id)_assumeOwnershipOfURL:(id)l error:(id *)error;
- (id)_fileTransferHeader;
- (id)_wrapResponse:(id)response toRequest:(id)request ofType:(unsigned __int16)type;
- (id)cancelMessagesReturningFailures:(id)failures;
- (id)idsOptions:(id)options forFileTransfer:(BOOL)transfer;
- (id)outputStreamWithMetadata:(id)metadata priority:(int64_t)priority options:(id)options context:(id)context error:(id *)error;
- (id)stateForLogging;
- (unint64_t)_crcChecksum:(id)checksum;
- (void)_cancelResponses;
- (void)_cancelSession;
- (void)_consumeRemainingStreamDataWithIdentifier:(id)identifier completion:(id)completion;
- (void)_enqueueSingleMessage:(id)message withMessageID:(unsigned __int16)d priority:(int64_t)priority options:(id)options userContext:(id)context callback:(id)callback;
- (void)_handleError:(id)error messageID:(id)d streamer:(id)streamer;
- (void)_handleIncomingSessionFileAtOwnedURL:(id)l metadata:(id)metadata identifier:(id)identifier idsContext:(id)context;
- (void)_handleIncomingSessionFileAtURL:(id)l metadata:(id)metadata identifier:(id)identifier idsContext:(id)context;
- (void)_handleIncomingStreamDataWithIdentifier:(id)identifier completion:(id)completion;
- (void)_handleSessionRestart:(id)restart priority:(int64_t)priority options:(id)options userContext:(id)context callback:(id)callback;
- (void)_processNMSMessageData:(id)data context:(id)context;
- (void)_readNextProtobuf:(id)protobuf;
- (void)_reallyHandleSessionRestart:(id)restart priority:(int64_t)priority options:(id)options userContext:(id)context callback:(id)callback;
- (void)_recordLastSeqNo:(id)no;
- (void)_resumeIdsQueue;
- (void)_suspendIdsQueue;
- (void)beginResponseSession;
- (void)beginSession;
- (void)dealloc;
- (void)endFileTransferForStream:(id)stream atURL:(id)l target:(id)target wasCancelled:(BOOL)cancelled messageRows:(id)rows;
- (void)endResponseSession;
- (void)endSession;
- (void)service:(id)service account:(id)account identifier:(id)identifier hasBeenDeliveredWithContext:(id)context;
- (void)service:(id)service account:(id)account incomingData:(id)data fromID:(id)d context:(id)context;
- (void)service:(id)service account:(id)account incomingResourceAtURL:(id)l metadata:(id)metadata fromID:(id)d context:(id)context;
- (void)service:(id)service connectedDevicesChanged:(id)changed;
- (void)service:(id)service didSwitchActivePairedDevice:(id)device acknowledgementBlock:(id)block;
- (void)service:(id)service nearbyDevicesChanged:(id)changed;
- (void)suspend;
@end

@implementation SYFileTransferSyncEngine

- (SYFileTransferSyncEngine)initWithService:(id)service queue:(id)queue
{
  serviceCopy = service;
  v30.receiver = self;
  v30.super_class = SYFileTransferSyncEngine;
  v7 = [(SYSyncEngine *)&v30 initWithService:serviceCopy queue:queue];
  if (v7)
  {
    v8 = objc_alloc(MEMORY[0x1E696AEC0]);
    name = [serviceCopy name];
    lastPathComponent = [name lastPathComponent];
    v11 = [v8 initWithFormat:@"%@ SYFileTransferSyncEngine IDS Queue", lastPathComponent];

    relative_priority_ptr = 0;
    queue = [(SYSyncEngine *)v7 queue];
    LODWORD(lastPathComponent) = dispatch_queue_get_qos_class(queue, &relative_priority_ptr);

    v13 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v14 = dispatch_queue_attr_make_with_qos_class(v13, lastPathComponent, relative_priority_ptr);

    v15 = dispatch_queue_create([v11 UTF8String], v14);
    idsQueue = v7->_idsQueue;
    v7->_idsQueue = v15;

    [SYQueueDumper registerQueue:v7->_idsQueue];
    v7->_idsQueueLock._os_unfair_lock_opaque = 0;
    v7->_idsQueueIsSuspended = 0;
    v7->_idsQueueResumedLock = 0;
    v17 = objc_opt_new();
    messageRows = v7->_messageRows;
    v7->_messageRows = v17;

    v19 = objc_opt_new();
    responseMessageRows = v7->_responseMessageRows;
    v7->_responseMessageRows = v19;

    v21 = objc_opt_new();
    deferredIncomingSessions = v7->_deferredIncomingSessions;
    v7->_deferredIncomingSessions = v21;

    v7->_messageMapLock._os_unfair_lock_opaque = 0;
    v23 = objc_opt_new();
    messageIDsToSessionIDs = v7->_messageIDsToSessionIDs;
    v7->_messageIDsToSessionIDs = v23;

    v25 = objc_opt_new();
    singleMessageUUIDs = v7->_singleMessageUUIDs;
    v7->_singleMessageUUIDs = v25;

    v27 = v7;
  }

  return v7;
}

- (void)_suspendIdsQueue
{
  os_unfair_lock_lock(&self->_idsQueueLock);
  if (!self->_idsQueueIsSuspended && !self->_idsQueueResumedLock)
  {
    self->_idsQueueIsSuspended = 1;
    dispatch_suspend(self->_idsQueue);
  }

  os_unfair_lock_unlock(&self->_idsQueueLock);
}

- (void)_resumeIdsQueue
{
  os_unfair_lock_lock(&self->_idsQueueLock);
  if (self->_idsQueueIsSuspended)
  {
    self->_idsQueueIsSuspended = 0;
    dispatch_resume(self->_idsQueue);
  }

  os_unfair_lock_unlock(&self->_idsQueueLock);
}

- (void)dealloc
{
  [(IDSService *)self->_idsService removeDelegate:self];
  os_unfair_lock_lock(&self->_idsQueueLock);
  self->_idsQueueResumedLock = 1;
  os_unfair_lock_unlock(&self->_idsQueueLock);
  [(SYFileTransferSyncEngine *)self _resumeIdsQueue];
  idsService = self->_idsService;
  self->_idsService = 0;

  v4.receiver = self;
  v4.super_class = SYFileTransferSyncEngine;
  [(SYSyncEngine *)&v4 dealloc];
}

- (BOOL)resume:(id *)resume
{
  service = [(SYSyncEngine *)self service];
  v5 = objc_alloc(MEMORY[0x1E69A48A8]);
  name = [service name];
  v7 = [v5 initWithService:name];
  idsService = self->_idsService;
  self->_idsService = v7;

  [(IDSService *)self->_idsService addDelegate:self queue:self->_idsQueue];
  v9 = +[SYDevice targetableDevice];
  activeDevice = self->_activeDevice;
  self->_activeDevice = v9;

  return 1;
}

- (void)suspend
{
  [(IDSService *)self->_idsService removeDelegate:self];
  idsService = self->_idsService;
  self->_idsService = 0;
}

- (void)endFileTransferForStream:(id)stream atURL:(id)l target:(id)target wasCancelled:(BOOL)cancelled messageRows:(id)rows
{
  streamCopy = stream;
  lCopy = l;
  targetCopy = target;
  rowsCopy = rows;
  devices = [(IDSService *)self->_idsService devices];
  v29 = targetCopy;
  v14 = [targetCopy findMatchingIDSDeviceFromList:devices];

  v15 = IDSCopyIDForDevice();
  if (!v15)
  {
    v15 = *MEMORY[0x1E69A4B50];
  }

  service = [(SYSyncEngine *)self service];
  peerID = [service peerID];
  responder = [(SYSyncEngine *)self responder];
  extraTransportOptions = [responder extraTransportOptions];
  v20 = IDSOptionsFromSYServiceOptions(extraTransportOptions);
  v21 = [(SYFileTransferSyncEngine *)self idsOptions:v20];

  v44[0] = 0;
  v44[1] = v44;
  v44[2] = 0x3032000000;
  v44[3] = __Block_byref_object_copy__13;
  v44[4] = __Block_byref_object_dispose__13;
  v45 = self->_inputPriorityBoostContext;
  v33[0] = MEMORY[0x1E69E9820];
  v33[1] = 3221225472;
  v33[2] = __91__SYFileTransferSyncEngine_endFileTransferForStream_atURL_target_wasCancelled_messageRows___block_invoke;
  v33[3] = &unk_1E86CB528;
  v22 = streamCopy;
  v34 = v22;
  selfCopy = self;
  cancelledCopy = cancelled;
  v23 = service;
  v36 = v23;
  v24 = lCopy;
  v37 = v24;
  v25 = peerID;
  v38 = v25;
  v26 = v15;
  v39 = v26;
  v27 = v21;
  v40 = v27;
  v28 = rowsCopy;
  v41 = v28;
  v42 = v44;
  [v22 whenComplete:v33];

  _Block_object_dispose(v44, 8);
}

void __91__SYFileTransferSyncEngine_endFileTransferForStream_atURL_target_wasCancelled_messageRows___block_invoke(uint64_t a1)
{
  if (_sync_log_facilities_pred != -1)
  {
    [SYIncomingSyncAllObjectsSession _continueProcessing];
  }

  v2 = qword_1EDE73428;
  if (os_log_type_enabled(qword_1EDE73428, OS_LOG_TYPE_DEBUG))
  {
    __91__SYFileTransferSyncEngine_endFileTransferForStream_atURL_target_wasCancelled_messageRows___block_invoke_cold_2(a1, v2, v3, v4, v5, v6, v7, v8);
  }

  [*(a1 + 32) close];
  v9 = *(*(a1 + 40) + 168);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __91__SYFileTransferSyncEngine_endFileTransferForStream_atURL_target_wasCancelled_messageRows___block_invoke_62;
  block[3] = &unk_1E86CB528;
  v28 = *(a1 + 104);
  v10 = *(a1 + 32);
  v11 = *(a1 + 48);
  v21 = *(a1 + 40);
  v12 = *(a1 + 56);
  *&v13 = v21;
  *(&v13 + 1) = v12;
  *&v14 = v10;
  *(&v14 + 1) = v11;
  v23 = v14;
  v24 = v13;
  v15 = *(a1 + 64);
  v16 = *(a1 + 72);
  v17 = *(a1 + 80);
  v18 = *(a1 + 88);
  *&v19 = v17;
  *(&v19 + 1) = v18;
  *&v20 = v15;
  *(&v20 + 1) = v16;
  v25 = v20;
  v26 = v19;
  v27 = *(a1 + 96);
  dispatch_async(v9, block);
}

void __91__SYFileTransferSyncEngine_endFileTransferForStream_atURL_target_wasCancelled_messageRows___block_invoke_62(uint64_t a1)
{
  v49[4] = *MEMORY[0x1E69E9840];
  if (*(a1 + 104))
  {
    if (_sync_log_facilities_pred != -1)
    {
      [SYIncomingSyncAllObjectsSession _continueProcessing];
    }

    v2 = qword_1EDE73428;
    if (os_log_type_enabled(qword_1EDE73428, OS_LOG_TYPE_DEFAULT))
    {
      v3 = *(a1 + 56);
      *buf = 138412290;
      v45 = v3;
      v4 = "Outgoing file-transfer unnecessary - removing output file at URL %@";
LABEL_38:
      _os_log_impl(&dword_1DF835000, v2, OS_LOG_TYPE_DEFAULT, v4, buf, 0xCu);
    }
  }

  else
  {
    if ([*(a1 + 32) hasWrittenData])
    {
      v5 = [*(a1 + 40) options];
      v6 = [v5 objectForKeyedSubscript:@"SYServiceOptionEnableCRC"];
      v7 = [v6 integerValue];

      if (v7)
      {
        v8 = [*(a1 + 48) _crcChecksum:*(a1 + 56)];
      }

      else
      {
        v8 = 0;
      }

      v48[0] = @"ContainsSession";
      v48[1] = @"PeerID";
      v10 = *(a1 + 64);
      v49[0] = MEMORY[0x1E695E118];
      v49[1] = v10;
      v48[2] = @"EnqueuedAt";
      v11 = objc_opt_new();
      v49[2] = v11;
      v48[3] = @"CRC";
      v12 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:v8];
      v49[3] = v12;
      v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v49 forKeys:v48 count:4];

      v14 = *(a1 + 56);
      v15 = *(*(a1 + 48) + 128);
      v16 = [MEMORY[0x1E695DFD8] setWithObject:*(a1 + 72)];
      v17 = [*(a1 + 40) priority];
      v18 = 100;
      if (!v17)
      {
        v18 = 200;
      }

      v19 = *(a1 + 80);
      if (v17 == 20)
      {
        v20 = 300;
      }

      else
      {
        v20 = v18;
      }

      v42 = 0;
      v43 = 0;
      v21 = [v15 sendResourceAtURL:v14 metadata:v13 toDestinations:v16 priority:v20 options:v19 identifier:&v43 error:&v42];
      v22 = v43;
      v23 = v42;

      if (v21)
      {
        if (_sync_log_facilities_pred != -1)
        {
          [SYIncomingSyncAllObjectsSession _continueProcessing];
        }

        v24 = qword_1EDE73428;
        if (os_log_type_enabled(qword_1EDE73428, OS_LOG_TYPE_DEFAULT))
        {
          v25 = *(a1 + 56);
          *buf = 138412546;
          v45 = v25;
          v46 = 2114;
          v47 = v22;
          _os_log_impl(&dword_1DF835000, v24, OS_LOG_TYPE_DEFAULT, "Sent file at %@ via IDS, got identifier %{public}@", buf, 0x16u);
        }

        if (_sync_log_facilities_pred != -1)
        {
          [SYIncomingSyncAllObjectsSession _continueProcessing];
        }

        if (os_log_type_enabled(qword_1EDE73458, OS_LOG_TYPE_DEBUG))
        {
          [SYMessengerSyncEngine messageCenter:didResolveIDSIdentifier:forFileTransfer:];
        }

        os_unfair_lock_lock((*(a1 + 48) + 216));
        v26 = [*(a1 + 32) streamPropertyForKey:SYAssociatedSessionIdentifierPropertyKey];
        [*(*(a1 + 48) + 224) setObject:v26 forKeyedSubscript:v22];

        os_unfair_lock_unlock((*(a1 + 48) + 216));
        v27 = [*(a1 + 48) responder];
        [v27 enqueuedMessageWithID:v22 context:0];
      }

      else
      {
        v28 = +[SYTransportLog sharedInstance];
        v27 = [v28 oslog];

        if (os_log_type_enabled(v27, 0x90u))
        {
          __91__SYFileTransferSyncEngine_endFileTransferForStream_atURL_target_wasCancelled_messageRows___block_invoke_62_cold_2((a1 + 56), v23, v27);
        }
      }

      v29 = +[SYStatisticStore sharedInstance];
      v30 = *(a1 + 56);
      v31 = [*(a1 + 40) name];
      [v29 recordOutgoingFileTransferAtURL:v30 metadata:v13 identifier:v22 error:v23 forService:v31];

      if (v22)
      {
        v32 = +[SYStatisticStore sharedInstance];
        [v32 setFileTransferIdentifier:v22 forOutgoingMessagesWithRowIDs:*(a1 + 88)];
      }
    }

    else
    {
      if (_sync_log_facilities_pred != -1)
      {
        [SYIncomingSyncAllObjectsSession _continueProcessing];
      }

      v9 = qword_1EDE73428;
      if (os_log_type_enabled(qword_1EDE73428, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1DF835000, v9, OS_LOG_TYPE_DEFAULT, "Output file contains no data, not sending anything.", buf, 2u);
      }
    }

    if (_sync_log_facilities_pred != -1)
    {
      [SYIncomingSyncAllObjectsSession _continueProcessing];
    }

    v2 = qword_1EDE73428;
    if (os_log_type_enabled(qword_1EDE73428, OS_LOG_TYPE_DEFAULT))
    {
      v33 = *(a1 + 56);
      *buf = 138412290;
      v45 = v33;
      v4 = "Removing output file at %@";
      goto LABEL_38;
    }
  }

  v34 = [MEMORY[0x1E696AC08] defaultManager];
  [v34 removeItemAtURL:*(a1 + 56) error:0];

  v35 = *(a1 + 48);
  v36 = *(v35 + 232);
  *(v35 + 232) = 0;

  v37 = *(*(a1 + 96) + 8);
  v38 = *(v37 + 40);
  *(v37 + 40) = 0;

  v39 = [*(a1 + 48) queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __91__SYFileTransferSyncEngine_endFileTransferForStream_atURL_target_wasCancelled_messageRows___block_invoke_70;
  block[3] = &unk_1E86C9FB0;
  block[4] = *(a1 + 48);
  dispatch_async(v39, block);

  v40 = *MEMORY[0x1E69E9840];
}

void __91__SYFileTransferSyncEngine_endFileTransferForStream_atURL_target_wasCancelled_messageRows___block_invoke_70(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v2 = [*(*(a1 + 32) + 200) firstObject];
  if (v2)
  {
    [*(*(a1 + 32) + 200) removeObjectAtIndex:0];
    if (_sync_log_facilities_pred != -1)
    {
      [SYIncomingSyncAllObjectsSession _continueProcessing];
    }

    v3 = qword_1EDE73428;
    if (os_log_type_enabled(qword_1EDE73428, OS_LOG_TYPE_DEFAULT))
    {
      v4 = v3;
      v5 = [v2 identifier];
      v12 = 138543362;
      v13 = v5;
      _os_log_impl(&dword_1DF835000, v4, OS_LOG_TYPE_DEFAULT, "Retrying deferred incoming session with identifier %{public}@", &v12, 0xCu);
    }

    v6 = *(a1 + 32);
    v7 = [v2 resourceURL];
    v8 = [v2 metadata];
    v9 = [v2 identifier];
    v10 = [v2 idsContext];
    [v6 _handleIncomingSessionFileAtOwnedURL:v7 metadata:v8 identifier:v9 idsContext:v10];
  }

  v11 = *MEMORY[0x1E69E9840];
}

- (void)beginResponseSession
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_1(&dword_1DF835000, v0, v1, "Failed to get new temporary item url: %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)endResponseSession
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = self->_responseFileURL;
  v4 = self->_responseStream;
  v5 = [(NSMutableIndexSet *)self->_responseMessageRows copy];
  responsesCanceled = self->_responsesCanceled;
  [(NSMutableIndexSet *)self->_responseMessageRows removeAllIndexes];
  if (_sync_log_facilities_pred != -1)
  {
    [SYIncomingSyncAllObjectsSession _continueProcessing];
  }

  v7 = qword_1EDE73428;
  if (os_log_type_enabled(qword_1EDE73428, OS_LOG_TYPE_INFO))
  {
    v14 = 134217984;
    selfCopy = self;
    _os_log_impl(&dword_1DF835000, v7, OS_LOG_TYPE_INFO, "Ending file-transfer response session for engine %p", &v14, 0xCu);
  }

  responseFileURL = self->_responseFileURL;
  self->_responseFileURL = 0;

  responseStream = self->_responseStream;
  self->_responseStream = 0;

  self->_responsesCanceled = 0;
  self->_sessionCanceled = 0;
  v10 = os_transaction_create();
  closureTransaction = self->_closureTransaction;
  self->_closureTransaction = v10;

  responseSessionTransaction = self->_responseSessionTransaction;
  self->_responseSessionTransaction = 0;

  [(SYFileTransferSyncEngine *)self endFileTransferForStream:v4 atURL:v3 target:self->_responseDevice wasCancelled:responsesCanceled messageRows:v5];
  v13 = *MEMORY[0x1E69E9840];
}

- (void)beginSession
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_1(&dword_1DF835000, v0, v1, "Failed to get new temporary item URL: %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)endSession
{
  v17 = *MEMORY[0x1E69E9840];
  if (self->_inSession)
  {
    self->_inSession = 0;
    sessionCanceled = self->_sessionCanceled;
    v4 = self->_outputFileURL;
    v5 = self->_outputStream;
    v6 = [(NSMutableIndexSet *)self->_messageRows copy];
    [(NSMutableIndexSet *)self->_messageRows removeAllIndexes];
    if (_sync_log_facilities_pred != -1)
    {
      [SYIncomingSyncAllObjectsSession _continueProcessing];
    }

    v7 = qword_1EDE73428;
    if (os_log_type_enabled(qword_1EDE73428, OS_LOG_TYPE_INFO))
    {
      *buf = 134217984;
      selfCopy = self;
      _os_log_impl(&dword_1DF835000, v7, OS_LOG_TYPE_INFO, "Ending file-transfer outgoing session for engine %p", buf, 0xCu);
    }

    outputFileURL = self->_outputFileURL;
    self->_outputFileURL = 0;

    outputStream = self->_outputStream;
    self->_outputStream = 0;

    self->_sessionCanceled = 0;
    self->_responsesCanceled = 0;
    self->_inSession = 0;
    sessionStartMessage = self->_sessionStartMessage;
    self->_sessionStartMessage = 0;

    v11 = os_transaction_create();
    closureTransaction = self->_closureTransaction;
    self->_closureTransaction = v11;

    v14.receiver = self;
    v14.super_class = SYFileTransferSyncEngine;
    [(SYSyncEngine *)&v14 endSession];
    [(SYFileTransferSyncEngine *)self endFileTransferForStream:v5 atURL:v4 target:self->_sessionDevice wasCancelled:sessionCanceled messageRows:v6];
  }

  v13 = *MEMORY[0x1E69E9840];
}

- (BOOL)targetIsNearby
{
  v18 = *MEMORY[0x1E69E9840];
  hasCachedNearby = [(SYDevice *)self->_activeDevice hasCachedNearby];
  activeDevice = self->_activeDevice;
  if (hasCachedNearby)
  {
    v5 = *MEMORY[0x1E69E9840];
    v6 = self->_activeDevice;

    return [(SYDevice *)v6 cachedIsNearby];
  }

  else
  {
    devices = [(IDSService *)self->_idsService devices];
    v9 = [(SYDevice *)activeDevice findMatchingIDSDeviceFromList:devices];

    if (v9)
    {
      if (_sync_log_facilities_pred != -1)
      {
        [SYIncomingSyncAllObjectsSession _continueProcessing];
      }

      v10 = qword_1EDE73428;
      if (os_log_type_enabled(qword_1EDE73428, OS_LOG_TYPE_DEFAULT))
      {
        v11 = v10;
        isNearby = [v9 isNearby];
        v13 = "not ";
        if (isNearby)
        {
          v13 = "";
        }

        v16 = 136315138;
        v17 = v13;
        _os_log_impl(&dword_1DF835000, v11, OS_LOG_TYPE_DEFAULT, "Target device is %snearby, caching value.", &v16, 0xCu);
      }

      -[SYDevice setCachedIsNearby:](self->_activeDevice, "setCachedIsNearby:", [v9 isNearby]);
      [(SYDevice *)self->_activeDevice setHasCachedNearby:1];
      isNearby2 = [v9 isNearby];
    }

    else
    {
      isNearby2 = 0;
    }

    v15 = *MEMORY[0x1E69E9840];
    return isNearby2;
  }
}

- (BOOL)_sessionDeviceCanUseSingleMessages
{
  v3 = self->_sessionDevice;
  if (!v3)
  {
    v3 = self->_activeDevice;
  }

  deviceCode = [(SYDevice *)v3 deviceCode];
  systemBuildVersion = [(SYDevice *)v3 systemBuildVersion];
  v6 = systemBuildVersion;
  if (deviceCode == 5)
  {
    v7 = @"14S184";
  }

  else
  {
    v7 = @"14A187";
  }

  v8 = [systemBuildVersion compare:v7];

  return v8 != -1;
}

- (void)_enqueueSingleMessage:(id)message withMessageID:(unsigned __int16)d priority:(int64_t)priority options:(id)options userContext:(id)context callback:(id)callback
{
  messageCopy = message;
  optionsCopy = options;
  contextCopy = context;
  callbackCopy = callback;
  if (self->_inSession)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      sessionStartMessage = self->_sessionStartMessage;
      self->_sessionStartMessage = 0;
    }
  }

  v19 = [callbackCopy copy];

  responder = [(SYSyncEngine *)self responder];
  extraTransportOptions = [responder extraTransportOptions];
  v22 = CoalesceOptionDictionaries(extraTransportOptions, optionsCopy);

  service = [(SYSyncEngine *)self service];
  [service name];
  v24 = v31 = optionsCopy;
  queue = [(SYSyncEngine *)self queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __102__SYFileTransferSyncEngine__enqueueSingleMessage_withMessageID_priority_options_userContext_callback___block_invoke;
  block[3] = &unk_1E86CB550;
  dCopy = d;
  block[4] = self;
  v33 = messageCopy;
  v34 = contextCopy;
  v35 = v24;
  v36 = v22;
  v37 = v19;
  priorityCopy = priority;
  v26 = v22;
  v27 = v24;
  v28 = contextCopy;
  v29 = messageCopy;
  v30 = v19;
  dispatch_async(queue, block);
}

void __102__SYFileTransferSyncEngine__enqueueSingleMessage_withMessageID_priority_options_userContext_callback___block_invoke(uint64_t a1)
{
  v50 = *MEMORY[0x1E69E9840];
  if (*(*(a1 + 32) + 128))
  {
    if (_sync_log_facilities_pred != -1)
    {
      [SYIncomingSyncAllObjectsSession _continueProcessing];
    }

    v2 = qword_1EDE73428;
    if (os_log_type_enabled(qword_1EDE73428, OS_LOG_TYPE_DEFAULT))
    {
      v3 = *(a1 + 88);
      *buf = 67109120;
      v45 = v3;
      _os_log_impl(&dword_1DF835000, v2, OS_LOG_TYPE_DEFAULT, "Enqueueing %{companionsync:SYMessageID}hu for transfer using IDS messaging", buf, 8u);
    }

    v4 = [*(a1 + 32) _wrapMessage:*(a1 + 40) ofType:*(a1 + 88) userInfo:*(a1 + 48)];
    v5 = +[SYStatisticStore sharedInstance];
    [v5 recordOutgoingMessage:v4 forService:*(a1 + 56)];

    v6 = +[SYStatisticStore sharedInstance];
    v7 = [v6 rowIDForPartialMessage:v4];

    [*(*(a1 + 32) + 184) addIndex:v7];
    v8 = [*(a1 + 40) data];
    v43 = 0;
    LOWORD(v43) = *(a1 + 88);
    HIDWORD(v43) = [v8 length];
    v9 = [objc_alloc(MEMORY[0x1E695DF88]) initWithBytes:&v43 length:8];
    [v9 appendData:v8];
    v10 = *(a1 + 32);
    v11 = *(v10 + 136);
    v12 = [*(v10 + 128) devices];
    v13 = [v11 findMatchingIDSDeviceFromList:v12];

    v39 = v13;
    v14 = IDSCopyIDForDevice();
    if (!v14)
    {
      v14 = *MEMORY[0x1E69A4B50];
    }

    v15 = *(a1 + 32);
    v16 = IDSOptionsFromSYServiceOptions(*(a1 + 64));
    v17 = [v15 idsOptions:v16 forFileTransfer:0];

    v18 = *(a1 + 80);
    v19 = 100;
    if (!v18)
    {
      v19 = 200;
    }

    if (v18 == 20)
    {
      v20 = 300;
    }

    else
    {
      v20 = v19;
    }

    v21 = *(*(a1 + 32) + 128);
    v22 = [MEMORY[0x1E695DFD8] setWithObject:v14];
    v41 = 0;
    v42 = 0;
    v38 = v17;
    v23 = [v21 sendData:v9 toDestinations:v22 priority:v20 options:v17 identifier:&v42 error:&v41];
    v24 = v42;
    v25 = v41;

    if (v23)
    {
      v26 = +[SYStatisticStore sharedInstance];
      [v26 assignIdentifier:v24 toOutgoingMessage:v4];

      [*(*(a1 + 32) + 208) addObject:v24];
      v27 = [*(a1 + 32) responder];
      [v27 enqueuedMessageWithID:v24 context:*(a1 + 48)];

      os_unfair_lock_lock((*(a1 + 32) + 216));
      v28 = [*(a1 + 48) objectForKeyedSubscript:0x1F5ACCE40];
      [*(*(a1 + 32) + 224) setObject:v28 forKeyedSubscript:v24];

      os_unfair_lock_unlock((*(a1 + 32) + 216));
      if (_sync_log_facilities_pred != -1)
      {
        [SYIncomingSyncAllObjectsSession _continueProcessing];
      }

      v29 = qword_1EDE73428;
      if (os_log_type_enabled(qword_1EDE73428, OS_LOG_TYPE_INFO))
      {
        v30 = *(a1 + 88);
        *buf = 67109378;
        v45 = v30;
        v46 = 2114;
        v47 = v24;
        _os_log_impl(&dword_1DF835000, v29, OS_LOG_TYPE_INFO, "Sent %{companionsync:SYMessageID}hu, got identifier %{public}@", buf, 0x12u);
      }

      if (_sync_log_facilities_pred != -1)
      {
        [SYIncomingSyncAllObjectsSession _continueProcessing];
      }

      v31 = qword_1EDE73458;
      if (os_log_type_enabled(qword_1EDE73458, OS_LOG_TYPE_DEBUG))
      {
        v32 = *(a1 + 88);
        v33 = v31;
        v34 = [v9 length];
        *buf = 67109634;
        v45 = v32;
        v46 = 2048;
        v47 = v34;
        v48 = 2114;
        v49 = v24;
        _os_log_debug_impl(&dword_1DF835000, v33, OS_LOG_TYPE_DEBUG, "Sent %{companionsync:SYMessageID}hu, %lu bytes: %{public}@", buf, 0x1Cu);
      }
    }

    else
    {
      if (_sync_log_facilities_pred != -1)
      {
        [SYIncomingSyncAllObjectsSession _continueProcessing];
      }

      if (os_log_type_enabled(qword_1EDE73428, OS_LOG_TYPE_ERROR))
      {
        __102__SYFileTransferSyncEngine__enqueueSingleMessage_withMessageID_priority_options_userContext_callback___block_invoke_cold_3();
      }
    }

    (*(*(a1 + 72) + 16))();

    v37 = *MEMORY[0x1E69E9840];
  }

  else
  {
    v35 = *(a1 + 72);
    v40 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithSYError:2001 userInfo:0];
    (*(v35 + 16))(v35, 0, 0);
    v36 = *MEMORY[0x1E69E9840];
  }
}

void __99__SYFileTransferSyncEngine_enqueueSyncRequest_withMessageID_priority_options_userContext_callback___block_invoke(uint64_t a1)
{
  v28 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  if (*(v2 + 128) && *(v2 + 72))
  {
    if (_sync_log_facilities_pred != -1)
    {
      [SYIncomingSyncAllObjectsSession _continueProcessing];
    }

    v3 = qword_1EDE73428;
    if (os_log_type_enabled(qword_1EDE73428, OS_LOG_TYPE_DEFAULT))
    {
      v4 = *(a1 + 40);
      v5 = v3;
      v6 = objc_opt_class();
      v7 = NSStringFromClass(v6);
      *buf = 138543362;
      *&buf[4] = v7;
      _os_log_impl(&dword_1DF835000, v5, OS_LOG_TYPE_DEFAULT, "Enqueueing %{public}@ message", buf, 0xCu);
    }

    v8 = [*(a1 + 48) objectForKeyedSubscript:0x1F5ACCE40];
    if (v8)
    {
      [*(*(a1 + 32) + 72) setStreamProperty:v8 forKey:SYAssociatedSessionIdentifierPropertyKey];
    }

    v9 = [*(a1 + 32) _wrapMessage:*(a1 + 40) ofType:*(a1 + 72) userInfo:*(a1 + 48)];
    v10 = +[SYStatisticStore sharedInstance];
    [v10 recordOutgoingMessage:v9 forService:*(a1 + 56)];

    v11 = +[SYStatisticStore sharedInstance];
    v12 = [v11 rowIDForPartialMessage:v9];

    [*(*(a1 + 32) + 184) addIndex:v12];
    v13 = [*(a1 + 40) data];
    *buf = 0;
    *buf = *(a1 + 72);
    *&buf[4] = [v13 length];
    v14 = [objc_alloc(MEMORY[0x1E695DF88]) initWithBytes:buf length:8];
    [v14 appendData:v13];
    v15 = *(*(a1 + 32) + 72);
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __99__SYFileTransferSyncEngine_enqueueSyncRequest_withMessageID_priority_options_userContext_callback___block_invoke_93;
    v23[3] = &unk_1E86CB578;
    v16 = *(a1 + 64);
    v26 = *(a1 + 74);
    v17 = *(a1 + 32);
    v18 = *(a1 + 40);
    v25 = v16;
    v23[4] = v17;
    v24 = v18;
    [v15 writeData:v14 completion:v23];
  }

  else
  {
    v19 = *(a1 + 64);
    v20 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithSYError:2001 userInfo:0];
    (*(v19 + 16))(v19, 0, 0, v20);

    if (*(a1 + 74) == 1)
    {
      if (_sync_log_facilities_pred != -1)
      {
        [SYIncomingSyncAllObjectsSession _continueProcessing];
      }

      v21 = qword_1EDE73428;
      if (os_log_type_enabled(qword_1EDE73428, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1DF835000, v21, OS_LOG_TYPE_DEFAULT, "Cancelling one-message file-transfer session: no IDSService or no output stream available", buf, 2u);
      }

      [*(a1 + 32) _cancelSession];
      [*(a1 + 32) endSession];
    }
  }

  v22 = *MEMORY[0x1E69E9840];
}

void __99__SYFileTransferSyncEngine_enqueueSyncRequest_withMessageID_priority_options_userContext_callback___block_invoke_93(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  if (v5 && (a2 & 1) == 0)
  {
    if (_sync_log_facilities_pred != -1)
    {
      [SYIncomingSyncAllObjectsSession _continueProcessing];
    }

    if (os_log_type_enabled(qword_1EDE73428, OS_LOG_TYPE_ERROR))
    {
      __99__SYFileTransferSyncEngine_enqueueSyncRequest_withMessageID_priority_options_userContext_callback___block_invoke_93_cold_2();
    }
  }

  (*(*(a1 + 48) + 16))();
  if (*(a1 + 56) == 1)
  {
    if ((a2 & 1) == 0)
    {
      if (_sync_log_facilities_pred != -1)
      {
        [SYIncomingSyncAllObjectsSession _continueProcessing];
      }

      v6 = qword_1EDE73428;
      if (os_log_type_enabled(qword_1EDE73428, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1DF835000, v6, OS_LOG_TYPE_DEFAULT, "Cancelling one-message file-transfer session, since the data couldn't be written to the file", buf, 2u);
      }

      [*(a1 + 32) _cancelSession];
    }

    v7 = (a1 + 32);
  }

  else
  {
    v8 = *(a1 + 32);
    v9 = *(a1 + 40);
    v7 = (a1 + 32);
    if (![v8 _shouldTreatAsSessionEnd:v9])
    {
      goto LABEL_23;
    }

    if ((a2 & 1) == 0)
    {
      if (_sync_log_facilities_pred != -1)
      {
        [SYIncomingSyncAllObjectsSession _continueProcessing];
      }

      v10 = qword_1EDE73428;
      if (os_log_type_enabled(qword_1EDE73428, OS_LOG_TYPE_DEFAULT))
      {
        *v11 = 0;
        _os_log_impl(&dword_1DF835000, v10, OS_LOG_TYPE_DEFAULT, "Cancelling file-transfer session, since the session-end message couldn't be written to the file", v11, 2u);
      }

      [*v7 _cancelSession];
    }
  }

  [*v7 endSession];
LABEL_23:
}

- (id)outputStreamWithMetadata:(id)metadata priority:(int64_t)priority options:(id)options context:(id)context error:(id *)error
{
  metadataCopy = metadata;
  optionsCopy = options;
  contextCopy = context;
  if (!self->_idsService)
  {
    _os_assumes_log();
  }

  v15 = [MEMORY[0x1E695DFF8] _SYURLForNewTemporaryFile:error];
  if (v15)
  {
    priorityCopy = priority;
    activeDevice = self->_activeDevice;
    devices = [(IDSService *)self->_idsService devices];
    v18 = [(SYDevice *)activeDevice findMatchingIDSDeviceFromList:devices];

    v19 = IDSCopyIDForDevice();
    if (!v19)
    {
      v19 = *MEMORY[0x1E69A4B50];
    }

    v20 = [[SYCompressedFileOutputStream alloc] initToCompressedFileAtURL:v15 shouldAppend:0];
    service = [(SYSyncEngine *)self service];
    name = [service name];
    [service defaultMessageTimeout];
    v24 = v23;
    objc_initWeak(&location, self);
    v29[0] = MEMORY[0x1E69E9820];
    v29[1] = 3221225472;
    v29[2] = __84__SYFileTransferSyncEngine_outputStreamWithMetadata_priority_options_context_error___block_invoke;
    v29[3] = &unk_1E86CB5C8;
    objc_copyWeak(v36, &location);
    v30 = v15;
    selfCopy = self;
    v36[1] = v24;
    v32 = metadataCopy;
    v33 = optionsCopy;
    v25 = v19;
    v34 = v25;
    v36[2] = priorityCopy;
    v26 = name;
    v35 = v26;
    [v20 setOnClose:v29];

    objc_destroyWeak(v36);
    objc_destroyWeak(&location);
  }

  else
  {
    v20 = 0;
  }

  return v20;
}

void __84__SYFileTransferSyncEngine_outputStreamWithMetadata_priority_options_context_error___block_invoke(uint64_t a1, void *a2)
{
  v56 = *MEMORY[0x1E69E9840];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 80));
  if (WeakRetained && [v3 streamStatus] != 7)
  {
    v11 = objc_opt_new();
    v12 = [*(a1 + 40) _fileTransferHeader];
    [v11 setHeader:v12];

    v13 = [v11 header];
    [v13 timestamp];
    v15 = v14 + *(a1 + 88);
    v16 = [v11 header];
    [v16 setTimeout:v15];

    [v11 setDecompressedFileSize:{objc_msgSend(v3, "bytesThroughput")}];
    v17 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:2];
    v18 = [v11 data];
    [v17 setObject:v18 forKeyedSubscript:@"FileHeader"];

    v19 = *(a1 + 48);
    if (v19)
    {
      [v17 setObject:v19 forKeyedSubscript:@"UserMetadata"];
    }

    v20 = *(a1 + 40);
    v21 = IDSOptionsFromSYServiceOptions(*(a1 + 56));
    v22 = [v20 idsOptions:v21];

    v23 = *(a1 + 40);
    v24 = *(a1 + 48);
    v25 = *(v23 + 128);
    v26 = *(v23 + 64);
    v27 = [MEMORY[0x1E695DFD8] setWithObject:*(a1 + 64)];
    v28 = *(a1 + 96);
    v29 = 100;
    if (!v28)
    {
      v29 = 200;
    }

    if (v28 == 20)
    {
      v30 = 300;
    }

    else
    {
      v30 = v29;
    }

    v49 = 0;
    v50 = 0;
    v47 = v22;
    v31 = [v25 sendResourceAtURL:v26 metadata:v24 toDestinations:v27 priority:v30 options:v22 identifier:&v50 error:&v49];
    v32 = v50;
    v33 = v49;

    v46 = v17;
    if (v31)
    {
      if (_sync_log_facilities_pred != -1)
      {
        [SYIncomingSyncAllObjectsSession _continueProcessing];
      }

      v34 = qword_1EDE73428;
      if (os_log_type_enabled(qword_1EDE73428, OS_LOG_TYPE_DEFAULT))
      {
        v35 = *(*(a1 + 40) + 64);
        *buf = 138412546;
        v53 = v35;
        v54 = 2114;
        v55 = v32;
        _os_log_impl(&dword_1DF835000, v34, OS_LOG_TYPE_DEFAULT, "Sent file at %@ via IDS, got identifier %{public}@", buf, 0x16u);
      }

      if (_sync_log_facilities_pred != -1)
      {
        [SYIncomingSyncAllObjectsSession _continueProcessing];
      }

      if (os_log_type_enabled(qword_1EDE73458, OS_LOG_TYPE_DEBUG))
      {
        __84__SYFileTransferSyncEngine_outputStreamWithMetadata_priority_options_context_error___block_invoke_cold_3();
      }
    }

    else
    {
      v36 = +[SYTransportLog sharedInstance];
      v37 = [v36 oslog];

      if (os_log_type_enabled(v37, 0x90u))
      {
        v45 = *(*(a1 + 40) + 64);
        *buf = 138412546;
        v53 = v45;
        v54 = 2112;
        v55 = v33;
        _os_log_error_impl(&dword_1DF835000, v37, 0x90u, "Failed to send file at %@ via IDS: %@", buf, 0x16u);
      }
    }

    v38 = [MEMORY[0x1E696AC08] defaultManager];
    v39 = *(a1 + 32);
    v48 = 0;
    v40 = [v38 removeItemAtURL:v39 error:&v48];
    v41 = v48;

    if ((v40 & 1) == 0)
    {
      if (_sync_log_facilities_pred != -1)
      {
        [SYIncomingSyncAllObjectsSession _continueProcessing];
      }

      v42 = qword_1EDE73428;
      if (os_log_type_enabled(qword_1EDE73428, OS_LOG_TYPE_ERROR))
      {
        __84__SYFileTransferSyncEngine_outputStreamWithMetadata_priority_options_context_error___block_invoke_cold_5((a1 + 32), v42, v41);
      }
    }

    v43 = +[SYStatisticStore sharedInstance];
    [v43 recordOutgoingFileTransferAtURL:*(*(a1 + 40) + 64) metadata:*(a1 + 48) identifier:v32 error:v33 forService:*(a1 + 72)];
  }

  else
  {
    v5 = [v3 streamError];

    if (v5)
    {
      if (_sync_log_facilities_pred != -1)
      {
        [SYIncomingSyncAllObjectsSession _continueProcessing];
      }

      v6 = qword_1EDE73428;
      if (os_log_type_enabled(qword_1EDE73428, OS_LOG_TYPE_ERROR))
      {
        __84__SYFileTransferSyncEngine_outputStreamWithMetadata_priority_options_context_error___block_invoke_cold_7(v6, v3);
      }
    }

    v7 = [MEMORY[0x1E696AC08] defaultManager];
    v9 = *(a1 + 32);
    v8 = (a1 + 32);
    v51 = 0;
    v10 = [v7 removeItemAtURL:v9 error:&v51];
    v11 = v51;

    if ((v10 & 1) == 0)
    {
      if (_sync_log_facilities_pred != -1)
      {
        [SYIncomingSyncAllObjectsSession _continueProcessing];
      }

      if (os_log_type_enabled(qword_1EDE73428, OS_LOG_TYPE_ERROR))
      {
        __84__SYFileTransferSyncEngine_outputStreamWithMetadata_priority_options_context_error___block_invoke_cold_9(v8);
      }
    }
  }

  v44 = *MEMORY[0x1E69E9840];
}

- (id)cancelMessagesReturningFailures:(id)failures
{
  v30 = *MEMORY[0x1E69E9840];
  failuresCopy = failures;
  v5 = failuresCopy;
  if (self->_idsService && [failuresCopy count])
  {
    v6 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithCapacity:{objc_msgSend(v5, "count")}];
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v19 = v5;
    v7 = v5;
    v8 = [v7 countByEnumeratingWithState:&v21 objects:v29 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v22;
      do
      {
        v11 = 0;
        do
        {
          if (*v22 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v21 + 1) + 8 * v11);
          idsService = self->_idsService;
          v20 = 0;
          v14 = [(IDSService *)idsService cancelIdentifier:v12 error:&v20];
          v15 = v20;
          if ((v14 & 1) == 0)
          {
            if (_sync_log_facilities_pred != -1)
            {
              [SYIncomingSyncAllObjectsSession _continueProcessing];
            }

            v16 = qword_1EDE73428;
            if (os_log_type_enabled(qword_1EDE73428, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138543618;
              v26 = v12;
              v27 = 2112;
              v28 = v15;
              _os_log_impl(&dword_1DF835000, v16, OS_LOG_TYPE_DEFAULT, "Failed to cancel outgoing file-transfer message (%{public}@): %@", buf, 0x16u);
            }

            [v6 addObject:v12];
          }

          ++v11;
        }

        while (v9 != v11);
        v9 = [v7 countByEnumeratingWithState:&v21 objects:v29 count:16];
      }

      while (v9);
    }

    v5 = v19;
  }

  else
  {
    v6 = v5;
  }

  v17 = *MEMORY[0x1E69E9840];

  return v6;
}

- (id)stateForLogging
{
  v3 = objc_opt_new();
  [v3 setType:2];
  [v3 setSuspended:self->_idsService == 0];
  [v3 setInSession:{-[SYFileTransferSyncEngine isInSession](self, "isInSession")}];
  [v3 setBuffersSessions:{-[SYFileTransferSyncEngine buffersSessions](self, "buffersSessions")}];

  return v3;
}

- (void)_cancelSession
{
  if (_sync_log_facilities_pred != -1)
  {
    [SYIncomingSyncAllObjectsSession _continueProcessing];
  }

  v3 = qword_1EDE73428;
  if (os_log_type_enabled(qword_1EDE73428, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_1DF835000, v3, OS_LOG_TYPE_DEFAULT, "Canceling send for any outgoing messages on the request stream.", v4, 2u);
  }

  self->_sessionCanceled = 1;
}

- (void)_cancelResponses
{
  if (_sync_log_facilities_pred != -1)
  {
    [SYIncomingSyncAllObjectsSession _continueProcessing];
  }

  v3 = qword_1EDE73428;
  if (os_log_type_enabled(qword_1EDE73428, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_1DF835000, v3, OS_LOG_TYPE_DEFAULT, "Canceling send for any outgoing messages on the response stream.", v4, 2u);
  }

  self->_responsesCanceled = 1;
}

- (void)_handleSessionRestart:(id)restart priority:(int64_t)priority options:(id)options userContext:(id)context callback:(id)callback
{
  restartCopy = restart;
  optionsCopy = options;
  contextCopy = context;
  v15 = [callback copy];
  objc_initWeak(&location, self);
  outputStream = self->_outputStream;
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __88__SYFileTransferSyncEngine__handleSessionRestart_priority_options_userContext_callback___block_invoke;
  v21[3] = &unk_1E86CB5F0;
  objc_copyWeak(v26, &location);
  v17 = restartCopy;
  v22 = v17;
  v26[1] = priority;
  v18 = optionsCopy;
  v23 = v18;
  v19 = contextCopy;
  v24 = v19;
  v20 = v15;
  v25 = v20;
  [(_SYOutputStreamer *)outputStream whenComplete:v21];

  objc_destroyWeak(v26);
  objc_destroyWeak(&location);
}

void __88__SYFileTransferSyncEngine__handleSessionRestart_priority_options_userContext_callback___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    [WeakRetained _reallyHandleSessionRestart:*(a1 + 32) priority:*(a1 + 72) options:*(a1 + 40) userContext:*(a1 + 48) callback:*(a1 + 56)];
    WeakRetained = v3;
  }
}

- (void)_reallyHandleSessionRestart:(id)restart priority:(int64_t)priority options:(id)options userContext:(id)context callback:(id)callback
{
  optionsCopy = options;
  contextCopy = context;
  outputStream = self->_outputStream;
  callbackCopy = callback;
  [(_SYOutputStreamer *)outputStream close];
  v14 = self->_outputStream;
  self->_outputStream = 0;

  v15 = objc_alloc_init(MEMORY[0x1E695DEF0]);
  [v15 writeToURL:self->_outputFileURL options:1 error:0];

  v16 = [_SYOutputStreamer alloc];
  outputFileURL = self->_outputFileURL;
  queue = [(SYSyncEngine *)self queue];
  v19 = [(_SYOutputStreamer *)v16 initWithCompressedFileURL:outputFileURL callbackQueue:queue];
  v20 = self->_outputStream;
  self->_outputStream = v19;

  if (self->_outputStream)
  {
    service = [(SYSyncEngine *)self service];
    name = [service name];
    v23 = [SYPersistentStore sharedPersistentStoreForService:name];
    header = [(SYStartSyncSession *)self->_sessionStartMessage header];
    [v23 resetSequenceNumber:{objc_msgSend(header, "sequenceNumber")}];

    v25 = objc_opt_new();
    [(SYStartSyncSession *)self->_sessionStartMessage copyTo:v25];
    _newMessageHeader = [service _newMessageHeader];
    [v25 setHeader:_newMessageHeader];

    [(SYFileTransferSyncEngine *)self enqueueSyncRequest:v25 withMessageID:102 priority:priority options:optionsCopy userContext:contextCopy callback:callbackCopy];
    callbackCopy = v25;
  }

  else
  {
    service = [objc_alloc(MEMORY[0x1E696ABC0]) initWithSYError:2001 userInfo:0];
    (*(callbackCopy + 2))(callbackCopy, 0, 0, service);
  }
}

- (id)idsOptions:(id)options forFileTransfer:(BOOL)transfer
{
  transferCopy = transfer;
  optionsCopy = options;
  v7 = objc_opt_new();
  [v7 setObject:MEMORY[0x1E695E118] forKeyedSubscript:*MEMORY[0x1E69A47E0]];
  service = [(SYSyncEngine *)self service];
  currentSession = [service currentSession];
  [service defaultMessageTimeout];
  if (!currentSession)
  {
    goto LABEL_6;
  }

  if (!transferCopy)
  {
    [currentSession perMessageTimeout];
LABEL_6:
    v13 = v10;
    goto LABEL_7;
  }

  [currentSession fullSessionTimeout];
  if (v11 == 0.0)
  {
    goto LABEL_13;
  }

  [currentSession remainingSessionTime];
  v13 = v12 * 0.5;
LABEL_7:
  if (v13 != 0.0)
  {
    if (MGGetBoolAnswer())
    {
      standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
      v15 = [standardUserDefaults objectForKey:@"FileTransferOverrideTimeout" inDomain:@"com.apple.companionsync"];

      if (v15)
      {
        [v15 doubleValue];
        v13 = v16;
      }
    }

    v17 = [MEMORY[0x1E696AD98] numberWithDouble:v13];
    [v7 setObject:v17 forKeyedSubscript:*MEMORY[0x1E69A47D8]];

    [v7 setObject:MEMORY[0x1E695E118] forKeyedSubscript:*MEMORY[0x1E69A4790]];
  }

LABEL_13:
  customIDSOptions = [(SYFileTransferSyncEngine *)self customIDSOptions];

  if (customIDSOptions)
  {
    customIDSOptions2 = [(SYFileTransferSyncEngine *)self customIDSOptions];
    [v7 addEntriesFromDictionary:customIDSOptions2];
  }

  if (optionsCopy)
  {
    [v7 addEntriesFromDictionary:optionsCopy];
  }

  [v7 setObject:MEMORY[0x1E695E110] forKeyedSubscript:*MEMORY[0x1E69A4780]];

  return v7;
}

- (id)_fileTransferHeader
{
  service = [(SYSyncEngine *)self service];
  name = [service name];
  v4 = [SYPersistentStore sharedPersistentStoreForService:name];

  v5 = objc_opt_new();
  [v5 setTimestamp:CFAbsoluteTimeGetCurrent()];
  v6 = [SYPeer alloc];
  peerID = [service peerID];
  generationID = [service generationID];
  v9 = [(SYPeer *)v6 initWithPeerID:peerID generation:generationID];
  [v5 setSender:v9];

  v10 = [SYVectorClock alloc];
  vectorClockJSON = [v4 vectorClockJSON];
  v12 = [(SYVectorClock *)v10 initWithJSONRepresentation:vectorClockJSON];
  [v5 setState:v12];

  [v5 setVersion:2];
  [v5 setSequenceNumber:0];

  return v5;
}

- (id)_wrapResponse:(id)response toRequest:(id)request ofType:(unsigned __int16)type
{
  requestCopy = request;
  responseCopy = response;
  [requestCopy configureResponse];
  response = [requestCopy response];

  [response setPbResponse:responseCopy];

  return response;
}

- (id)_assumeOwnershipOfURL:(id)l error:(id *)error
{
  lCopy = l;
  uRLByDeletingLastPathComponent = [lCopy URLByDeletingLastPathComponent];
  path = [uRLByDeletingLastPathComponent path];
  v8 = [path stringByAppendingPathComponent:@"SYFileTransfer-XXXXX"];

  v9 = strdup([v8 UTF8String]);
  v10 = mkdtemp(v9);
  if (v10)
  {
    v11 = [objc_alloc(MEMORY[0x1E695DFF8]) initFileURLWithFileSystemRepresentation:v10 isDirectory:1 relativeToURL:0];
    free(v9);
    lastPathComponent = [lCopy lastPathComponent];
    v13 = [v11 URLByAppendingPathComponent:lastPathComponent];

    if (link([lCopy fileSystemRepresentation], objc_msgSend(v13, "fileSystemRepresentation")))
    {
      v14 = __error();
      if (error)
      {
        v15 = *v14;
        v16 = objc_alloc(MEMORY[0x1E696ABC0]);
        v17 = [v16 initWithDomain:*MEMORY[0x1E696A798] code:v15 userInfo:0];
        v18 = 0;
        *error = v17;
      }

      else
      {
        v18 = 0;
      }
    }

    else
    {
      v18 = v13;
    }
  }

  else
  {
    v19 = __error();
    if (error)
    {
      v20 = *v19;
      v21 = objc_alloc(MEMORY[0x1E696ABC0]);
      v18 = 0;
      *error = [v21 initWithDomain:*MEMORY[0x1E696A798] code:v20 userInfo:0];
    }

    else
    {
      v18 = 0;
    }
  }

  return v18;
}

- (void)_readNextProtobuf:(id)protobuf
{
  v4 = [protobuf copy];
  objc_initWeak(&location, self);
  inputStream = self->_inputStream;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __46__SYFileTransferSyncEngine__readNextProtobuf___block_invoke;
  v7[3] = &unk_1E86CB640;
  objc_copyWeak(&v9, &location);
  v6 = v4;
  v7[4] = self;
  v8 = v6;
  [(_SYInputStreamer *)inputStream readDataOfLength:8 completion:v7];

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __46__SYFileTransferSyncEngine__readNextProtobuf___block_invoke(id *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  if (WeakRetained && [v5 length])
  {
    state.opaque[0] = 0;
    state.opaque[1] = 0;
    v8 = [WeakRetained transportActivity];
    os_activity_scope_enter(v8, &state);

    v9 = [v5 bytes];
    v10 = *v9;
    v11 = *(v9 + 2) != 0;
    v12 = *(v9 + 4);
    if (*(v9 + 2) && (*(a1[4] + 49) & 1) == 0)
    {
      if (_sync_log_facilities_pred != -1)
      {
        [SYIncomingSyncAllObjectsSession _continueProcessing];
      }

      v13 = qword_1EDE73428;
      if (os_log_type_enabled(qword_1EDE73428, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1DF835000, v13, OS_LOG_TYPE_DEFAULT, "Incoming data is all response data", buf, 2u);
      }

      [a1[4] _cancelResponses];
    }

    v14 = WeakRetained[11];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __46__SYFileTransferSyncEngine__readNextProtobuf___block_invoke_123;
    v15[3] = &unk_1E86CB618;
    objc_copyWeak(&v17, a1 + 6);
    v16 = a1[5];
    v18 = v10;
    v19 = v11;
    [v14 readDataOfLength:v12 completion:v15];

    objc_destroyWeak(&v17);
    os_activity_scope_leave(&state);
  }

  else
  {
    (*(a1[5] + 2))();
  }
}

void __46__SYFileTransferSyncEngine__readNextProtobuf___block_invoke_123(uint64_t a1, void *a2, void *a3)
{
  v40 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v8 = WeakRetained;
  if (WeakRetained)
  {
    v9 = [WeakRetained transportActivity];
    os_activity_scope_enter(v9, &v36);

    if (v5)
    {
      v10 = SYMessageClassForID(*(a1 + 48), *(a1 + 50));
      v11 = v10;
      if (v10)
      {
        v12 = [[v10 alloc] initWithData:v5];
        v13 = v12;
        if (*(a1 + 48) == 106)
        {
          v14 = [v12 payload];
          v15 = v14 == 0;

          if (v15)
          {
            v16 = [v5 length];
            if (v16 >= 0x14)
            {
              v17 = 20;
            }

            else
            {
              v17 = v16;
            }

            v18 = [v5 subdataWithRange:{0, v17}];
            if (_sync_log_facilities_pred != -1)
            {
              [SYIncomingSyncAllObjectsSession _continueProcessing];
            }

            v19 = qword_1EDE73428;
            if (os_log_type_enabled(v19, 0x90u))
            {
              __46__SYFileTransferSyncEngine__readNextProtobuf___block_invoke_123_cold_2(v18, v39, [v5 length], v19);
            }
          }
        }

        if (v13)
        {
          if (_sync_log_facilities_pred != -1)
          {
            [SYIncomingSyncAllObjectsSession _continueProcessing];
          }

          v20 = qword_1EDE73428;
          if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
          {
            v21 = NSStringFromClass(v11);
            *buf = 138543362;
            v38 = v21;
            _os_log_impl(&dword_1DF835000, v20, OS_LOG_TYPE_DEFAULT, "File-transfer engine decoded incoming %{public}@ message", buf, 0xCu);
          }

          v22 = *(a1 + 48);
          v23 = *(a1 + 50);
          (*(*(a1 + 32) + 16))();
        }

        else
        {
          if (_sync_log_facilities_pred != -1)
          {
            [SYIncomingSyncAllObjectsSession _continueProcessing];
          }

          v29 = qword_1EDE73428;
          if (os_log_type_enabled(v29, 0x90u))
          {
            v30 = NSStringFromClass(v11);
            __46__SYFileTransferSyncEngine__readNextProtobuf___block_invoke_123_cold_5(v30, buf, v29);
          }

          v31 = *(a1 + 32);
          v32 = *(a1 + 48);
          v33 = *(a1 + 50);
          v34 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithSYError:2016 userInfo:0];
          (*(v31 + 16))(v31, 0, v32, v33, v34);
        }
      }

      else
      {
        v26 = *(a1 + 32);
        v27 = *(a1 + 48);
        v28 = *(a1 + 50);
        v13 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithSYError:2015 userInfo:0];
        (*(v26 + 16))(v26, 0, v27, v28, v13);
      }
    }

    else
    {
      v24 = *(a1 + 48);
      v25 = *(a1 + 50);
      (*(*(a1 + 32) + 16))();
    }

    os_activity_scope_leave(&v36);
  }

  v35 = *MEMORY[0x1E69E9840];
}

- (void)_recordLastSeqNo:(id)no
{
  noCopy = no;
  service = [(SYSyncEngine *)self service];
  name = [service name];
  v7 = [SYPersistentStore sharedPersistentStoreForService:name];
  sequenceNumber = [noCopy sequenceNumber];
  sender = [noCopy sender];

  peerID = [sender peerID];
  v12 = 0;
  LOBYTE(sequenceNumber) = [v7 setLastSequenceNumber:sequenceNumber fromPeer:peerID error:&v12];
  v11 = v12;

  if ((sequenceNumber & 1) == 0)
  {
    if (_sync_log_facilities_pred != -1)
    {
      [SYIncomingSyncAllObjectsSession _continueProcessing];
    }

    if (os_log_type_enabled(qword_1EDE73428, OS_LOG_TYPE_ERROR))
    {
      [SYFileTransferSyncEngine _recordLastSeqNo:];
    }
  }
}

- (BOOL)_shouldTreatAsSessionEnd:(id)end
{
  endCopy = end;
  if ([endCopy isMemberOfClass:objc_opt_class()] & 1) != 0 || (objc_msgSend(endCopy, "isMemberOfClass:", objc_opt_class()))
  {
    LOBYTE(v4) = 1;
  }

  else if (objc_opt_respondsToSelector())
  {
    v4 = [endCopy accepted] ^ 1;
  }

  else if (objc_opt_respondsToSelector())
  {
    LOBYTE(v4) = [endCopy hasError];
  }

  else
  {
    LOBYTE(v4) = 0;
  }

  return v4;
}

- (void)_consumeRemainingStreamDataWithIdentifier:(id)identifier completion:(id)completion
{
  identifierCopy = identifier;
  completionCopy = completion;
  objc_initWeak(&location, self);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __81__SYFileTransferSyncEngine__consumeRemainingStreamDataWithIdentifier_completion___block_invoke;
  v10[3] = &unk_1E86CB668;
  objc_copyWeak(&v13, &location);
  v8 = completionCopy;
  v12 = v8;
  v9 = identifierCopy;
  v11 = v9;
  [(SYFileTransferSyncEngine *)self _readNextProtobuf:v10];

  objc_destroyWeak(&v13);
  objc_destroyWeak(&location);
}

void __81__SYFileTransferSyncEngine__consumeRemainingStreamDataWithIdentifier_completion___block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v7 = a2;
  v8 = a5;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained && v7 | v8)
  {
    if (!v8)
    {
      v11 = [v7 header];
      [WeakRetained _recordLastSeqNo:v11];

      [WeakRetained _consumeRemainingStreamDataWithIdentifier:*(a1 + 32) completion:*(a1 + 40)];
      goto LABEL_13;
    }

    if (_sync_log_facilities_pred != -1)
    {
      [SYIncomingSyncAllObjectsSession _continueProcessing];
    }

    if (os_log_type_enabled(qword_1EDE73428, OS_LOG_TYPE_ERROR))
    {
      __81__SYFileTransferSyncEngine__consumeRemainingStreamDataWithIdentifier_completion___block_invoke_cold_2();
    }

    if (_sync_log_facilities_pred != -1)
    {
      [SYIncomingSyncAllObjectsSession _continueProcessing];
    }

    v10 = qword_1EDE73428;
    if (os_log_type_enabled(qword_1EDE73428, OS_LOG_TYPE_DEFAULT))
    {
      *v12 = 0;
      _os_log_impl(&dword_1DF835000, v10, OS_LOG_TYPE_DEFAULT, "Canceling attempt to consume remaining messages. Sequence numbers will likely be out of sync now.", v12, 2u);
    }
  }

  (*(*(a1 + 40) + 16))();
LABEL_13:
}

void __88__SYFileTransferSyncEngine__handleProtobuf_ofType_identifier_isResponse_withCompletion___block_invoke(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  if ((a2 & 1) == 0)
  {
    if (_sync_log_facilities_pred != -1)
    {
      [SYIncomingSyncAllObjectsSession _continueProcessing];
    }

    if (os_log_type_enabled(qword_1EDE73428, OS_LOG_TYPE_ERROR))
    {
      __88__SYFileTransferSyncEngine__handleProtobuf_ofType_identifier_isResponse_withCompletion___block_invoke_cold_2();
    }
  }

  (*(*(a1 + 32) + 16))();
}

void __88__SYFileTransferSyncEngine__handleProtobuf_ofType_identifier_isResponse_withCompletion___block_invoke_131(uint64_t a1, char a2, void *a3)
{
  v17 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (a2)
  {
    if (([*(a1 + 32) _shouldTreatAsSessionEnd:*(a1 + 40)] & 1) == 0)
    {
      v13 = *(*(a1 + 56) + 16);
      goto LABEL_17;
    }

    if (_sync_log_facilities_pred != -1)
    {
      [SYIncomingSyncAllObjectsSession _continueProcessing];
    }

    v6 = qword_1EDE73428;
    if (os_log_type_enabled(qword_1EDE73428, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(a1 + 48);
      v8 = v6;
      v9 = objc_opt_class();
      v10 = NSStringFromClass(v9);
      v15 = 138543362;
      v16 = v10;
      _os_log_impl(&dword_1DF835000, v8, OS_LOG_TYPE_DEFAULT, "File-transfer engine ending session on %{public}@ message", &v15, 0xCu);
    }
  }

  else
  {
    if (_sync_log_facilities_pred != -1)
    {
      [SYIncomingSyncAllObjectsSession _continueProcessing];
    }

    v11 = qword_1EDE73428;
    if (os_log_type_enabled(qword_1EDE73428, OS_LOG_TYPE_DEFAULT))
    {
      v15 = 138412290;
      v16 = v5;
      _os_log_impl(&dword_1DF835000, v11, OS_LOG_TYPE_DEFAULT, "Response handler failure reported: %@", &v15, 0xCu);
    }

    if (_sync_log_facilities_pred != -1)
    {
      [SYIncomingSyncAllObjectsSession _continueProcessing];
    }

    v12 = qword_1EDE73428;
    if (os_log_type_enabled(qword_1EDE73428, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v15) = 0;
      _os_log_impl(&dword_1DF835000, v12, OS_LOG_TYPE_DEFAULT, "Rejection/error somewhere caused remaining session messages to be ignored. Pulling them all out of the file to keep sequence numbers contiguous.", &v15, 2u);
    }
  }

  v13 = *(*(a1 + 56) + 16);
LABEL_17:
  v13();

  v14 = *MEMORY[0x1E69E9840];
}

void __88__SYFileTransferSyncEngine__handleProtobuf_ofType_identifier_isResponse_withCompletion___block_invoke_132(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v8 = WeakRetained;
  if (WeakRetained)
  {
    v9 = [WeakRetained service];
    v10 = [v8 _wrapResponse:v5 toRequest:*(a1 + 32) ofType:*(a1 + 64)];
    [v10 setPersistentUserInfo:v6];
    v11 = +[SYStatisticStore sharedInstance];
    v12 = [v9 name];
    [v11 recordOutgoingMessage:v10 forService:v12];

    v13 = +[SYStatisticStore sharedInstance];
    v14 = [v13 rowIDForPartialMessage:v10];

    [*(*(a1 + 40) + 192) addIndex:v14];
    v15 = [v5 data];
    v23 = 0x10000;
    LOWORD(v23) = *(a1 + 64);
    HIDWORD(v23) = [v15 length];
    v16 = [objc_alloc(MEMORY[0x1E695DF88]) initWithBytes:&v23 length:8];
    [v16 appendData:v15];
    v17 = v8[14];
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __88__SYFileTransferSyncEngine__handleProtobuf_ofType_identifier_isResponse_withCompletion___block_invoke_2;
    v18[3] = &unk_1E86CB6E0;
    objc_copyWeak(&v21, (a1 + 56));
    v22 = *(a1 + 64);
    v19 = v5;
    v20 = *(a1 + 48);
    [v17 writeData:v16 completion:v18];

    objc_destroyWeak(&v21);
  }
}

void __88__SYFileTransferSyncEngine__handleProtobuf_ofType_identifier_isResponse_withCompletion___block_invoke_2(uint64_t a1, char a2, void *a3)
{
  v18 = *MEMORY[0x1E69E9840];
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v7 = WeakRetained;
  if (WeakRetained)
  {
    v8 = [WeakRetained transportActivity];
    os_activity_scope_enter(v8, &v15);

    if ((a2 & 1) == 0)
    {
      if (_sync_log_facilities_pred != -1)
      {
        [SYIncomingSyncAllObjectsSession _continueProcessing];
      }

      if (os_log_type_enabled(qword_1EDE73428, OS_LOG_TYPE_ERROR))
      {
        __88__SYFileTransferSyncEngine__handleProtobuf_ofType_identifier_isResponse_withCompletion___block_invoke_2_cold_2(a1);
      }
    }

    if ([v7 _shouldTreatAsSessionEnd:*(a1 + 32)])
    {
      if (_sync_log_facilities_pred != -1)
      {
        [SYIncomingSyncAllObjectsSession _continueProcessing];
      }

      v9 = qword_1EDE73428;
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v10 = *(a1 + 32);
        v11 = objc_opt_class();
        v12 = NSStringFromClass(v11);
        *buf = 138543362;
        v17 = v12;
        _os_log_impl(&dword_1DF835000, v9, OS_LOG_TYPE_DEFAULT, "File-transfer engine ending session on %{public}@ message", buf, 0xCu);
      }

      if (_sync_log_facilities_pred != -1)
      {
        [SYIncomingSyncAllObjectsSession _continueProcessing];
      }

      v13 = qword_1EDE73428;
      if (os_log_type_enabled(qword_1EDE73428, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_1DF835000, v13, OS_LOG_TYPE_INFO, "Pulling remaining messages from the file to keep sequence numbers contiguous, in case this was an early return.", buf, 2u);
      }
    }

    (*(*(a1 + 40) + 16))();
    os_activity_scope_leave(&v15);
  }

  v14 = *MEMORY[0x1E69E9840];
}

- (void)_handleIncomingStreamDataWithIdentifier:(id)identifier completion:(id)completion
{
  identifierCopy = identifier;
  completionCopy = completion;
  objc_initWeak(&location, self);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __79__SYFileTransferSyncEngine__handleIncomingStreamDataWithIdentifier_completion___block_invoke;
  v10[3] = &unk_1E86CB758;
  objc_copyWeak(&v14, &location);
  v8 = completionCopy;
  v13 = v8;
  v9 = identifierCopy;
  v11 = v9;
  selfCopy = self;
  [(SYFileTransferSyncEngine *)self _readNextProtobuf:v10];

  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);
}

void __79__SYFileTransferSyncEngine__handleIncomingStreamDataWithIdentifier_completion___block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v9 = a2;
  v10 = a5;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (WeakRetained && v9 | v10)
  {
    if (!v10)
    {
      v13 = *(a1 + 32);
      v12 = *(a1 + 40);
      v14[0] = MEMORY[0x1E69E9820];
      v14[1] = 3221225472;
      v14[2] = __79__SYFileTransferSyncEngine__handleIncomingStreamDataWithIdentifier_completion___block_invoke_134;
      v14[3] = &unk_1E86CB730;
      objc_copyWeak(&v17, (a1 + 56));
      v15 = *(a1 + 32);
      v16 = *(a1 + 48);
      [v12 _handleProtobuf:v9 ofType:a3 identifier:v13 isResponse:a4 withCompletion:v14];

      objc_destroyWeak(&v17);
      goto LABEL_10;
    }

    if (_sync_log_facilities_pred != -1)
    {
      [SYIncomingSyncAllObjectsSession _continueProcessing];
    }

    if (os_log_type_enabled(qword_1EDE73428, OS_LOG_TYPE_ERROR))
    {
      __81__SYFileTransferSyncEngine__consumeRemainingStreamDataWithIdentifier_completion___block_invoke_cold_2();
    }

    [WeakRetained _handleError:v10 messageID:*(a1 + 32) streamer:*(*(a1 + 40) + 88)];
  }

  (*(*(a1 + 48) + 16))();
LABEL_10:
}

void __79__SYFileTransferSyncEngine__handleIncomingStreamDataWithIdentifier_completion___block_invoke_134(uint64_t a1, int a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v5 = *(a1 + 32);
    v6 = *(a1 + 40);
    v7 = WeakRetained;
    if (a2)
    {
      [WeakRetained _consumeRemainingStreamDataWithIdentifier:v5 completion:v6];
    }

    else
    {
      [WeakRetained _handleIncomingStreamDataWithIdentifier:v5 completion:v6];
    }

    WeakRetained = v7;
  }
}

- (void)_handleIncomingSessionFileAtOwnedURL:(id)l metadata:(id)metadata identifier:(id)identifier idsContext:(id)context
{
  v34 = *MEMORY[0x1E69E9840];
  lCopy = l;
  metadataCopy = metadata;
  identifierCopy = identifier;
  contextCopy = context;
  if (self->_inputStream)
  {
    if (_sync_log_facilities_pred != -1)
    {
      [SYIncomingSyncAllObjectsSession _continueProcessing];
    }

    v14 = qword_1EDE73428;
    if (os_log_type_enabled(qword_1EDE73428, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v31 = identifierCopy;
      _os_log_impl(&dword_1DF835000, v14, OS_LOG_TYPE_DEFAULT, "Deferring incoming file-transfer with identifier %{public}@ because I'm already within a file-transfer session", buf, 0xCu);
    }

    service = objc_opt_new();
    [service setResourceURL:lCopy];
    [service setIdentifier:identifierCopy];
    [service setMetadata:metadataCopy];
    [service setIdsContext:contextCopy];
    [(NSMutableArray *)self->_deferredIncomingSessions addObject:service];
  }

  else
  {
    service = [(SYSyncEngine *)self service];
    v26 = [metadataCopy objectForKeyedSubscript:@"SessionID"];
    v16 = +[SYStatisticStore sharedInstance];
    name = [service name];
    [v16 recordIncomingFileTransferAtURL:lCopy metadata:metadataCopy identifier:identifierCopy forService:name];

    [(SYFileTransferSyncEngine *)self beginResponseSession];
    [(_SYOutputStreamer *)self->_outputStream setStreamProperty:v26 forKey:SYAssociatedSessionIdentifierPropertyKey];
    objc_storeStrong(&self->_inputFileURL, l);
    v18 = [_SYInputStreamer alloc];
    inputFileURL = self->_inputFileURL;
    queue = [(SYSyncEngine *)self queue];
    v21 = [(_SYInputStreamer *)v18 initWithCompressedFileURL:inputFileURL callbackQueue:queue];
    inputStream = self->_inputStream;
    self->_inputStream = v21;

    objc_storeStrong(&self->_inputPriorityBoostContext, context);
    if (_sync_log_facilities_pred != -1)
    {
      [SYIncomingSyncAllObjectsSession _continueProcessing];
    }

    v23 = qword_1EDE73428;
    if (os_log_type_enabled(qword_1EDE73428, OS_LOG_TYPE_DEFAULT))
    {
      v24 = self->_inputStream;
      *buf = 138543618;
      v31 = v24;
      v32 = 2114;
      v33 = v26;
      _os_log_impl(&dword_1DF835000, v23, OS_LOG_TYPE_DEFAULT, "Incoming session stream: %{public}@, associated session ID: %{public}@", buf, 0x16u);
    }

    [(SYFileTransferSyncEngine *)self _suspendIdsQueue];
    objc_initWeak(buf, self);
    v28[0] = MEMORY[0x1E69E9820];
    v28[1] = 3221225472;
    v28[2] = __96__SYFileTransferSyncEngine__handleIncomingSessionFileAtOwnedURL_metadata_identifier_idsContext___block_invoke;
    v28[3] = &unk_1E86CB780;
    v28[4] = self;
    objc_copyWeak(&v29, buf);
    [(SYFileTransferSyncEngine *)self _handleIncomingStreamDataWithIdentifier:identifierCopy completion:v28];
    objc_destroyWeak(&v29);
    objc_destroyWeak(buf);
  }

  v25 = *MEMORY[0x1E69E9840];
}

void __96__SYFileTransferSyncEngine__handleIncomingSessionFileAtOwnedURL_metadata_identifier_idsContext___block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) transportActivity];
  os_activity_scope_enter(v2, &v12);

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    if (_sync_log_facilities_pred != -1)
    {
      [SYIncomingSyncAllObjectsSession _continueProcessing];
    }

    v4 = qword_1EDE73428;
    if (os_log_type_enabled(qword_1EDE73428, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(WeakRetained + 11);
      *buf = 138543362;
      v14 = v5;
      _os_log_impl(&dword_1DF835000, v4, OS_LOG_TYPE_DEFAULT, "Finished handling session stream: %{public}@", buf, 0xCu);
    }

    [WeakRetained endResponseSession];
    [*(WeakRetained + 11) close];
    v6 = *(WeakRetained + 11);
    *(WeakRetained + 11) = 0;

    v7 = *(WeakRetained + 12);
    *(WeakRetained + 12) = 0;

    v8 = [MEMORY[0x1E696AC08] defaultManager];
    v9 = [*(WeakRetained + 10) URLByDeletingLastPathComponent];
    [v8 removeItemAtURL:v9 error:0];

    v10 = *(WeakRetained + 10);
    *(WeakRetained + 10) = 0;

    [WeakRetained _resumeIdsQueue];
  }

  os_activity_scope_leave(&v12);
  v11 = *MEMORY[0x1E69E9840];
}

- (void)_handleIncomingSessionFileAtURL:(id)l metadata:(id)metadata identifier:(id)identifier idsContext:(id)context
{
  v32 = *MEMORY[0x1E69E9840];
  lCopy = l;
  metadataCopy = metadata;
  identifierCopy = identifier;
  contextCopy = context;
  v29 = 0;
  v14 = [(SYFileTransferSyncEngine *)self _assumeOwnershipOfURL:lCopy error:&v29];
  v15 = v29;
  if (v14)
  {
    if (_sync_log_facilities_pred != -1)
    {
      [SYIncomingSyncAllObjectsSession _continueProcessing];
    }

    v16 = qword_1EDE73428;
    if (os_log_type_enabled(qword_1EDE73428, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v31 = v14;
      _os_log_impl(&dword_1DF835000, v16, OS_LOG_TYPE_DEFAULT, "Keeping track of incoming file at URL %@", buf, 0xCu);
    }

    if (_sync_log_facilities_pred != -1)
    {
      [SYIncomingSyncAllObjectsSession _continueProcessing];
    }

    if (os_log_type_enabled(qword_1EDE73458, OS_LOG_TYPE_DEBUG))
    {
      v17 = [metadataCopy objectForKeyedSubscript:@"EnqueuedAt"];
      [v17 timeIntervalSinceNow];
      v19 = v18;
      if (_sync_log_facilities_pred != -1)
      {
        [SYIncomingSyncAllObjectsSession _continueProcessing];
      }

      v20 = qword_1EDE73458;
      if (os_log_type_enabled(qword_1EDE73458, OS_LOG_TYPE_DEBUG))
      {
        [SYFileTransferSyncEngine _handleIncomingSessionFileAtURL:identifierCopy metadata:v20 identifier:v19 idsContext:?];
      }
    }

    objc_initWeak(buf, self);
    responder = [(SYSyncEngine *)self responder];
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __91__SYFileTransferSyncEngine__handleIncomingSessionFileAtURL_metadata_identifier_idsContext___block_invoke;
    v23[3] = &unk_1E86CB7A8;
    objc_copyWeak(&v28, buf);
    v24 = v14;
    v25 = metadataCopy;
    v26 = identifierCopy;
    v27 = contextCopy;
    [responder serializeForIncomingSession:v23];

    objc_destroyWeak(&v28);
    objc_destroyWeak(buf);
  }

  else
  {
    if (_sync_log_facilities_pred != -1)
    {
      [SYIncomingSyncAllObjectsSession _continueProcessing];
    }

    if (os_log_type_enabled(qword_1EDE73428, OS_LOG_TYPE_ERROR))
    {
      [SYFileTransferSyncEngine _handleIncomingSessionFileAtURL:metadata:identifier:idsContext:];
    }
  }

  v22 = *MEMORY[0x1E69E9840];
}

void __91__SYFileTransferSyncEngine__handleIncomingSessionFileAtURL_metadata_identifier_idsContext___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  if (!WeakRetained)
  {
    if (_sync_log_facilities_pred != -1)
    {
      [SYIncomingSyncAllObjectsSession _continueProcessing];
    }

    v3 = qword_1EDE73428;
    if (os_log_type_enabled(qword_1EDE73428, OS_LOG_TYPE_DEFAULT))
    {
      v4 = *(a1 + 32);
      *buf = 138412290;
      v12 = v4;
      _os_log_impl(&dword_1DF835000, v3, OS_LOG_TYPE_DEFAULT, "Engine deallocated while waiting to process incoming file at URL: %@", buf, 0xCu);
    }

    v5 = [MEMORY[0x1E696AC08] defaultManager];
    v6 = [*(a1 + 32) URLByDeletingLastPathComponent];
    v10 = 0;
    v7 = [v5 removeItemAtURL:v6 error:&v10];
    v8 = v10;

    if ((v7 & 1) == 0)
    {
      if (_sync_log_facilities_pred != -1)
      {
        [SYIncomingSyncAllObjectsSession _continueProcessing];
      }

      if (os_log_type_enabled(qword_1EDE73428, OS_LOG_TYPE_ERROR))
      {
        __91__SYFileTransferSyncEngine__handleIncomingSessionFileAtURL_metadata_identifier_idsContext___block_invoke_cold_3();
      }
    }
  }

  [WeakRetained _handleIncomingSessionFileAtOwnedURL:*(a1 + 32) metadata:*(a1 + 40) identifier:*(a1 + 48) idsContext:*(a1 + 56)];

  v9 = *MEMORY[0x1E69E9840];
}

- (void)_processNMSMessageData:(id)data context:(id)context
{
  v33 = *MEMORY[0x1E69E9840];
  contextCopy = context;
  dataCopy = data;
  dataCopy2 = data;
  v9 = *[dataCopy2 bytes];
  storageGuid = [contextCopy storageGuid];
  incomingResponseIdentifier = [contextCopy incomingResponseIdentifier];

  v12 = [dataCopy2 length];
  if (incomingResponseIdentifier)
  {
    v13 = [dataCopy2 subdataWithRange:{2, v12 - 2}];

    [contextCopy incomingResponseIdentifier];
    storageGuid = dataCopy2 = storageGuid;
  }

  else
  {
    v13 = [dataCopy2 subdataWithRange:{3, v12 - 3}];
  }

  v14 = SYMessageClassForID(v9, incomingResponseIdentifier != 0);
  if (v14)
  {
    v15 = v14;
    v16 = [[v14 alloc] initWithData:v13];
    v17 = v16;
    if (v9 == 106)
    {
      payload = [v16 payload];

      if (!payload)
      {
        v19 = [v13 length];
        if (v19 >= 0x14)
        {
          v20 = 20;
        }

        else
        {
          v20 = v19;
        }

        v29 = [v13 subdataWithRange:{0, v20}];
        if (_sync_log_facilities_pred != -1)
        {
          [SYIncomingSyncAllObjectsSession _continueProcessing];
        }

        v21 = qword_1EDE73428;
        if (os_log_type_enabled(qword_1EDE73428, 0x90u))
        {
          [(SYFileTransferSyncEngine *)v21 _processNMSMessageData:v13 context:v29];
        }
      }
    }

    if (v17)
    {
      if (_sync_log_facilities_pred != -1)
      {
        [SYIncomingSyncAllObjectsSession _continueProcessing];
      }

      v22 = qword_1EDE73428;
      if (os_log_type_enabled(qword_1EDE73428, OS_LOG_TYPE_DEFAULT))
      {
        v23 = v22;
        v24 = NSStringFromClass(v15);
        *buf = 138543362;
        v32 = v24;
        _os_log_impl(&dword_1DF835000, v23, OS_LOG_TYPE_DEFAULT, "File-transfer engine decoded incoming %{public}@ message", buf, 0xCu);
      }

      [(SYFileTransferSyncEngine *)self _suspendIdsQueue];
      v30[0] = MEMORY[0x1E69E9820];
      v30[1] = 3221225472;
      v30[2] = __59__SYFileTransferSyncEngine__processNMSMessageData_context___block_invoke;
      v30[3] = &unk_1E86CB7D0;
      v30[4] = self;
      [(SYFileTransferSyncEngine *)self _handleProtobuf:v17 ofType:v9 identifier:storageGuid isResponse:incomingResponseIdentifier != 0 withCompletion:v30];
    }

    else
    {
      if (_sync_log_facilities_pred != -1)
      {
        [SYIncomingSyncAllObjectsSession _continueProcessing];
      }

      v26 = qword_1EDE73428;
      if (os_log_type_enabled(qword_1EDE73428, OS_LOG_TYPE_ERROR))
      {
        [SYFileTransferSyncEngine _processNMSMessageData:v26 context:v15];
      }

      v27 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithSYError:2016 userInfo:0];
      [(SYFileTransferSyncEngine *)self _handleError:v27 messageID:storageGuid streamer:0];
    }
  }

  else
  {
    if (_sync_log_facilities_pred != -1)
    {
      [SYIncomingSyncAllObjectsSession _continueProcessing];
    }

    v25 = qword_1EDE73428;
    if (os_log_type_enabled(qword_1EDE73428, OS_LOG_TYPE_ERROR))
    {
      [SYFileTransferSyncEngine _processNMSMessageData:v9 context:v25];
    }
  }

  v28 = *MEMORY[0x1E69E9840];
}

- (void)service:(id)service account:(id)account incomingResourceAtURL:(id)l metadata:(id)metadata fromID:(id)d context:(id)context
{
  v46 = *MEMORY[0x1E69E9840];
  serviceCopy = service;
  accountCopy = account;
  lCopy = l;
  metadataCopy = metadata;
  dCopy = d;
  contextCopy = context;
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  transportActivity = [(SYSyncEngine *)self transportActivity];
  os_activity_scope_enter(transportActivity, &state);

  v18 = [metadataCopy objectForKeyedSubscript:@"CRC"];
  service = [(SYSyncEngine *)self service];
  options = [service options];
  v21 = [options objectForKeyedSubscript:@"SYServiceOptionEnableCRC"];
  if ([v21 integerValue])
  {
    v22 = v18 == 0;
  }

  else
  {
    v22 = 1;
  }

  v23 = !v22;

  if (v23)
  {
    v24 = [(SYFileTransferSyncEngine *)self _crcChecksum:lCopy];
    v25 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:v24];
    v26 = [v18 isEqual:v25];

    if (v26)
    {
      if (_sync_log_facilities_pred != -1)
      {
        [SYIncomingSyncAllObjectsSession _continueProcessing];
      }

      v27 = qword_1EDE73428;
      if (os_log_type_enabled(qword_1EDE73428, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1DF835000, v27, OS_LOG_TYPE_DEFAULT, "CRC validated.", buf, 2u);
      }
    }

    else
    {
      if (_sync_log_facilities_pred != -1)
      {
        [SYIncomingSyncAllObjectsSession _continueProcessing];
      }

      v28 = qword_1EDE73428;
      if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        -[SYFileTransferSyncEngine service:account:incomingResourceAtURL:metadata:fromID:context:].cold.2([v18 integerValue], v24, v45, v28);
      }
    }
  }

  if (_sync_log_facilities_pred != -1)
  {
    [SYIncomingSyncAllObjectsSession _continueProcessing];
  }

  v29 = qword_1EDE73458;
  if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
  {
    outgoingResponseIdentifier = [contextCopy outgoingResponseIdentifier];
    incomingResponseIdentifier = [contextCopy incomingResponseIdentifier];
    [SYFileTransferSyncEngine service:outgoingResponseIdentifier account:incomingResponseIdentifier incomingResourceAtURL:buf metadata:v29 fromID:? context:?];
  }

  v32 = [metadataCopy objectForKeyedSubscript:@"ContainsSession"];
  bOOLValue = [v32 BOOLValue];

  if (bOOLValue)
  {
    incomingResponseIdentifier2 = [contextCopy incomingResponseIdentifier];
    v35 = incomingResponseIdentifier2;
    if (incomingResponseIdentifier2)
    {
      outgoingResponseIdentifier2 = incomingResponseIdentifier2;
    }

    else
    {
      outgoingResponseIdentifier2 = [contextCopy outgoingResponseIdentifier];
    }

    v37 = outgoingResponseIdentifier2;

    [(SYFileTransferSyncEngine *)self _handleIncomingSessionFileAtURL:lCopy metadata:metadataCopy identifier:v37 idsContext:contextCopy];
  }

  else
  {
    v37 = [metadataCopy objectForKeyedSubscript:@"UserMetadata"];
    responder = [(SYSyncEngine *)self responder];
    [responder handleFileTransfer:lCopy metadata:v37 completion:&__block_literal_global_14];
  }

  os_activity_scope_leave(&state);
  v39 = *MEMORY[0x1E69E9840];
}

void __90__SYFileTransferSyncEngine_service_account_incomingResourceAtURL_metadata_fromID_context___block_invoke(uint64_t a1, char a2, void *a3)
{
  v4 = a3;
  if ((a2 & 1) == 0)
  {
    if (_sync_log_facilities_pred != -1)
    {
      [SYIncomingSyncAllObjectsSession _continueProcessing];
    }

    if (os_log_type_enabled(qword_1EDE73428, OS_LOG_TYPE_ERROR))
    {
      __90__SYFileTransferSyncEngine_service_account_incomingResourceAtURL_metadata_fromID_context___block_invoke_cold_2();
    }
  }
}

- (void)service:(id)service account:(id)account incomingData:(id)data fromID:(id)d context:(id)context
{
  v89 = *MEMORY[0x1E69E9840];
  serviceCopy = service;
  accountCopy = account;
  dataCopy = data;
  dCopy = d;
  contextCopy = context;
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  transportActivity = [(SYSyncEngine *)self transportActivity];
  os_activity_scope_enter(transportActivity, &state);

  if (_sync_log_facilities_pred != -1)
  {
    [SYIncomingSyncAllObjectsSession _continueProcessing];
  }

  v15 = qword_1EDE73458;
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
  {
    v46 = [dataCopy length];
    outgoingResponseIdentifier = [contextCopy outgoingResponseIdentifier];
    incomingResponseIdentifier = [contextCopy incomingResponseIdentifier];
    *buf = 134218498;
    v80 = v46;
    v81 = 2114;
    *v82 = outgoingResponseIdentifier;
    *&v82[8] = 2114;
    v83 = incomingResponseIdentifier;
    _os_log_debug_impl(&dword_1DF835000, v15, OS_LOG_TYPE_DEBUG, "Receiving: %zu bytes, %{public}@, replying to %{public}@", buf, 0x20u);
  }

  storageGuid = [contextCopy storageGuid];
  if (!storageGuid)
  {
    storageGuid = [contextCopy outgoingResponseIdentifier];
  }

  if (_sync_log_facilities_pred != -1)
  {
    [SYIncomingSyncAllObjectsSession _continueProcessing];
  }

  v17 = qword_1EDE73428;
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    v18 = [dataCopy length];
    *buf = 138543618;
    v80 = storageGuid;
    v81 = 2048;
    *v82 = v18;
    _os_log_impl(&dword_1DF835000, v17, OS_LOG_TYPE_DEFAULT, "File-transfer engine receiving single message with GUID %{public}@, %ld bytes", buf, 0x16u);
  }

  if ([dataCopy length] > 7)
  {
    v20 = dataCopy;
    v62 = *[dataCopy bytes];
    v21 = dataCopy;
    v61 = *([dataCopy bytes] + 2);
    v22 = dataCopy;
    v23 = *([dataCopy bytes] + 4);
    if ([dataCopy length] - 8 >= v23)
    {
      v58 = v23;
      v59 = [dataCopy subdataWithRange:8];
      responder = [(SYSyncEngine *)self responder];
      v31 = SYMessageClassForID(v62, v61 != 0);
      v32 = v31;
      if (v31)
      {
        v33 = [[v31 alloc] initWithData:v59];
        if (v33)
        {
          if (_sync_log_facilities_pred != -1)
          {
            [SYIncomingSyncAllObjectsSession _continueProcessing];
          }

          v34 = qword_1EDE73428;
          if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
          {
            v35 = NSStringFromClass(v32);
            *buf = 138543362;
            v80 = v35;
            _os_log_impl(&dword_1DF835000, v34, OS_LOG_TYPE_DEFAULT, "File-transfer engine decoded incoming %{public}@ message", buf, 0xCu);
          }

          if (_sync_log_facilities_pred != -1)
          {
            [SYIncomingSyncAllObjectsSession _continueProcessing];
          }

          v36 = qword_1EDE73458;
          if (os_log_type_enabled(v36, OS_LOG_TYPE_DEBUG))
          {
            Current = CFAbsoluteTimeGetCurrent();
            header = [v33 header];
            [header timestamp];
            *buf = 138543618;
            v80 = storageGuid;
            v81 = 2048;
            *v82 = Current - v57;
            _os_log_debug_impl(&dword_1DF835000, v36, OS_LOG_TYPE_DEBUG, "Transit time for %{public}@: %.04f seconds", buf, 0x16u);
          }

          header2 = [v33 header];
          v38 = [responder willAcceptMessageWithHeader:header2 messageID:storageGuid];

          if (v38)
          {
            header3 = [v33 header];
            [(SYFileTransferSyncEngine *)self _recordLastSeqNo:header3];

            [(SYFileTransferSyncEngine *)self _suspendIdsQueue];
            service = [(SYSyncEngine *)self service];
            if (v61)
            {
              v41 = [(SYFileTransferSyncEngine *)self _wrapIncomingResponse:v33 ofType:v62 identifier:storageGuid];
              [v41 setIdsContext:contextCopy];
              v42 = +[SYStatisticStore sharedInstance];
              name = [service name];
              [v42 recordIncomingMessage:v41 forService:name];

              v75[0] = MEMORY[0x1E69E9820];
              v75[1] = 3221225472;
              v75[2] = __72__SYFileTransferSyncEngine_service_account_incomingData_fromID_context___block_invoke;
              v75[3] = &unk_1E86CB7F8;
              v44 = v41;
              v76 = v44;
              selfCopy = self;
              [responder handleSyncResponse:v33 ofType:v62 completion:v75];
            }

            else
            {
              v51 = [(SYFileTransferSyncEngine *)self _wrapIncomingMessage:v33 ofType:v62 identifier:storageGuid];
              [v51 setIdsContext:contextCopy];
              v52 = +[SYStatisticStore sharedInstance];
              name2 = [service name];
              [v52 recordIncomingMessage:v51 forService:name2];

              [v51 setExpectsResponse:0];
              objc_initWeak(buf, self);
              v66[0] = MEMORY[0x1E69E9820];
              v66[1] = 3221225472;
              v66[2] = __72__SYFileTransferSyncEngine_service_account_incomingData_fromID_context___block_invoke_138;
              v66[3] = &unk_1E86CB820;
              objc_copyWeak(&v71, buf);
              v44 = v51;
              v72 = v62;
              v73 = 0;
              v74 = v58;
              v67 = v44;
              selfCopy2 = self;
              v69 = contextCopy;
              v70 = responder;
              [v70 handleSyncRequest:v33 ofType:v62 response:v66];

              objc_destroyWeak(&v71);
              objc_destroyWeak(buf);
            }
          }

          else
          {
            service = [v33 header];
            [(SYFileTransferSyncEngine *)self _recordLastSeqNo:service];
          }
        }

        else
        {
          if (_sync_log_facilities_pred != -1)
          {
            [SYIncomingSyncAllObjectsSession _continueProcessing];
          }

          v49 = qword_1EDE73428;
          if (os_log_type_enabled(v49, 0x90u))
          {
            v50 = NSStringFromClass(v32);
            __46__SYFileTransferSyncEngine__readNextProtobuf___block_invoke_123_cold_5(v50, buf, v49);
          }

          service = [objc_alloc(MEMORY[0x1E696ABC0]) initWithSYError:2016 userInfo:0];
          [responder handleSyncError:service forMessageWithIdentifier:storageGuid];
        }
      }

      else
      {
        if (_sync_log_facilities_pred != -1)
        {
          [SYIncomingSyncAllObjectsSession _continueProcessing];
        }

        v45 = qword_1EDE73428;
        if (os_log_type_enabled(qword_1EDE73428, 0x90u))
        {
          [SYFileTransferSyncEngine service:v62 account:v45 incomingData:? fromID:? context:?];
        }

        v33 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithSYError:2015 userInfo:0];
        [responder handleSyncError:v33 forMessageWithIdentifier:storageGuid];
      }
    }

    else
    {
      v24 = v23;
      if (_sync_log_facilities_pred != -1)
      {
        [SYIncomingSyncAllObjectsSession _continueProcessing];
      }

      v25 = qword_1EDE73428;
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
      {
        v26 = [dataCopy length];
        v27 = dataCopy;
        bytes = [dataCopy bytes];
        v29 = dataCopy;
        bytes2 = [dataCopy bytes];
        *buf = 134219522;
        v80 = v26;
        v81 = 1024;
        *v82 = v62;
        *&v82[4] = 1024;
        *&v82[6] = v61;
        LOWORD(v83) = 1024;
        *(&v83 + 2) = v24;
        HIWORD(v83) = 2048;
        v84 = bytes;
        v85 = 1040;
        v86 = 8;
        v87 = 2096;
        v88 = bytes2;
        _os_log_impl(&dword_1DF835000, v25, OS_LOG_TYPE_DEFAULT, "Received a protobuf encoded by NMSMessageCenter? I have %lu bytes of data, and a header saying { msgID %hu, isResponse %hu, msgLen %u }. Header bytes (%p) = %.*P", buf, 0x38u);
      }

      [(SYFileTransferSyncEngine *)self _processNMSMessageData:dataCopy context:contextCopy];
    }
  }

  else
  {
    if (_sync_log_facilities_pred != -1)
    {
      [SYIncomingSyncAllObjectsSession _continueProcessing];
    }

    v19 = qword_1EDE73428;
    if (os_log_type_enabled(qword_1EDE73428, 0x90u))
    {
      [SYFileTransferSyncEngine service:v19 account:? incomingData:? fromID:? context:?];
    }
  }

  os_activity_scope_leave(&state);
  v54 = *MEMORY[0x1E69E9840];
}

void __72__SYFileTransferSyncEngine_service_account_incomingData_fromID_context___block_invoke(uint64_t a1, char a2, void *a3)
{
  v10 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if ((a2 & 1) == 0)
  {
    if (_sync_log_facilities_pred != -1)
    {
      [SYIncomingSyncAllObjectsSession _continueProcessing];
    }

    v6 = qword_1EDE73428;
    if (os_log_type_enabled(qword_1EDE73428, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 138412290;
      v9 = v5;
      _os_log_impl(&dword_1DF835000, v6, OS_LOG_TYPE_DEFAULT, "Response handler failure reported: %@", &v8, 0xCu);
    }
  }

  [*(a1 + 32) setIdsContext:0];
  [*(a1 + 40) _resumeIdsQueue];

  v7 = *MEMORY[0x1E69E9840];
}

void __72__SYFileTransferSyncEngine_service_account_incomingData_fromID_context___block_invoke_138(uint64_t a1, void *a2, void *a3)
{
  v49 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  v8 = WeakRetained;
  if (WeakRetained)
  {
    v9 = [WeakRetained service];
    v10 = (a1 + 72);
    v11 = [v8 _wrapResponse:v5 toRequest:*(a1 + 32) ofType:*(a1 + 72)];
    v40 = v6;
    [v11 setPersistentUserInfo:v6];
    v12 = +[SYStatisticStore sharedInstance];
    v39 = v9;
    v13 = [v9 name];
    v38 = v11;
    [v12 recordOutgoingMessage:v11 forService:v13];

    v41 = v5;
    v14 = [v5 data];
    v44 = 0x10000;
    LOWORD(v44) = *(a1 + 72);
    HIDWORD(v44) = [v14 length];
    v15 = [objc_alloc(MEMORY[0x1E695DF88]) initWithBytes:&v44 length:8];
    v37 = v14;
    [v15 appendData:v14];
    v16 = *(a1 + 40);
    v17 = *(v16 + 136);
    v18 = [*(v16 + 128) devices];
    v19 = [v17 findMatchingIDSDeviceFromList:v18];

    v36 = v19;
    v20 = IDSCopyIDForDevice();
    if (!v20)
    {
      v20 = *MEMORY[0x1E69A4B50];
    }

    v21 = [*(a1 + 48) priority];
    v22 = [v21 integerValue];

    v23 = [*(a1 + 56) extraTransportOptions];
    v24 = IDSOptionsFromSYServiceOptions(v23);

    v25 = *(*(a1 + 40) + 128);
    v26 = [MEMORY[0x1E695DFD8] setWithObject:v20];
    v27 = [v8 idsOptions:v24];
    v42 = 0;
    v43 = 0;
    v35 = v15;
    LODWORD(v22) = [v25 sendData:v15 toDestinations:v26 priority:v22 options:v27 identifier:&v43 error:&v42];
    v28 = v43;
    v29 = v42;

    if (v22)
    {
      v30 = +[SYStatisticStore sharedInstance];
      v31 = v38;
      [v30 assignIdentifier:v28 toOutgoingMessage:v38];

      [*(*(a1 + 40) + 208) addObject:v28];
      if (_sync_log_facilities_pred != -1)
      {
        [SYIncomingSyncAllObjectsSession _continueProcessing];
      }

      v32 = qword_1EDE73428;
      if (os_log_type_enabled(qword_1EDE73428, OS_LOG_TYPE_INFO))
      {
        v33 = *v10;
        *buf = 67109378;
        v46 = v33;
        v47 = 2114;
        v48 = v28;
        _os_log_impl(&dword_1DF835000, v32, OS_LOG_TYPE_INFO, "Enqueued response to %{companionsync:SYMessageID}hu, got identifier %{public}@", buf, 0x12u);
      }

      if (_sync_log_facilities_pred != -1)
      {
        [SYIncomingSyncAllObjectsSession _continueProcessing];
      }

      v5 = v41;
      if (os_log_type_enabled(qword_1EDE73458, OS_LOG_TYPE_DEBUG))
      {
        __72__SYFileTransferSyncEngine_service_account_incomingData_fromID_context___block_invoke_138_cold_5(v10);
      }
    }

    else
    {
      if (_sync_log_facilities_pred != -1)
      {
        [SYIncomingSyncAllObjectsSession _continueProcessing];
      }

      v5 = v41;
      v31 = v38;
      if (os_log_type_enabled(qword_1EDE73428, OS_LOG_TYPE_ERROR))
      {
        __72__SYFileTransferSyncEngine_service_account_incomingData_fromID_context___block_invoke_138_cold_2(v10);
      }
    }

    [v8 _resumeIdsQueue];

    v6 = v40;
  }

  v34 = *MEMORY[0x1E69E9840];
}

- (void)_handleError:(id)error messageID:(id)d streamer:(id)streamer
{
  v22[1] = *MEMORY[0x1E69E9840];
  errorCopy = error;
  dCopy = d;
  streamerCopy = streamer;
  v11 = streamerCopy;
  if (streamerCopy)
  {
    v12 = [streamerCopy streamPropertyForKey:SYAssociatedSessionIdentifierPropertyKey];
    if (!v12)
    {
      goto LABEL_9;
    }
  }

  else
  {
    os_unfair_lock_lock(&self->_messageMapLock);
    v12 = [(NSMutableDictionary *)self->_messageIDsToSessionIDs objectForKeyedSubscript:dCopy];
    os_unfair_lock_unlock(&self->_messageMapLock);
    if (!v12)
    {
      goto LABEL_9;
    }
  }

  userInfo = [errorCopy userInfo];
  if (userInfo)
  {
    v14 = userInfo;
    v15 = [userInfo mutableCopy];
    [v15 setObject:v12 forKeyedSubscript:0x1F5ACCE40];
  }

  else
  {
    v21 = 0x1F5ACCE40;
    v22[0] = v12;
    v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v22 forKeys:&v21 count:1];
  }

  v16 = objc_alloc(MEMORY[0x1E696ABC0]);
  domain = [errorCopy domain];
  v18 = [v16 initWithDomain:domain code:objc_msgSend(errorCopy userInfo:{"code"), v15}];

  errorCopy = v18;
LABEL_9:
  responder = [(SYSyncEngine *)self responder];
  [responder handleSyncError:errorCopy forMessageWithIdentifier:dCopy];

  v20 = *MEMORY[0x1E69E9840];
}

- (void)service:(id)service account:(id)account identifier:(id)identifier hasBeenDeliveredWithContext:(id)context
{
  v26 = *MEMORY[0x1E69E9840];
  serviceCopy = service;
  accountCopy = account;
  identifierCopy = identifier;
  contextCopy = context;
  v14 = [(SYSyncEngine *)self transportActivity:0];
  os_activity_scope_enter(v14, &v21);

  if (_sync_log_facilities_pred != -1)
  {
    [SYIncomingSyncAllObjectsSession _continueProcessing];
  }

  v15 = qword_1EDE73428;
  if (os_log_type_enabled(qword_1EDE73428, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v25 = identifierCopy;
    _os_log_impl(&dword_1DF835000, v15, OS_LOG_TYPE_DEFAULT, "Delivery confirmation for message %{public}@", buf, 0xCu);
  }

  if (_sync_log_facilities_pred != -1)
  {
    [SYIncomingSyncAllObjectsSession _continueProcessing];
  }

  if (os_log_type_enabled(qword_1EDE73458, OS_LOG_TYPE_DEBUG))
  {
    [SYFileTransferSyncEngine service:account:identifier:hasBeenDeliveredWithContext:];
  }

  if ([(NSMutableSet *)self->_singleMessageUUIDs containsObject:identifierCopy])
  {
    v16 = +[SYStatisticStore sharedInstance];
    [v16 confirmDeliveryOfOutgoingMessage:identifierCopy];
  }

  os_unfair_lock_lock(&self->_messageMapLock);
  v17 = [(NSMutableDictionary *)self->_messageIDsToSessionIDs objectForKeyedSubscript:identifierCopy];
  [(NSMutableDictionary *)self->_messageIDsToSessionIDs setObject:0 forKeyedSubscript:identifierCopy];
  os_unfair_lock_unlock(&self->_messageMapLock);
  if (v17)
  {
    v22 = 0x1F5ACCE40;
    v23 = v17;
    v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v23 forKeys:&v22 count:1];
  }

  else
  {
    v18 = 0;
  }

  responder = [(SYSyncEngine *)self responder];
  [responder sentMessageWithID:identifierCopy context:v18];

  os_activity_scope_leave(&v21);
  v20 = *MEMORY[0x1E69E9840];
}

- (void)service:(id)service didSwitchActivePairedDevice:(id)device acknowledgementBlock:(id)block
{
  serviceCopy = service;
  deviceCopy = device;
  blockCopy = block;
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  transportActivity = [(SYSyncEngine *)self transportActivity];
  os_activity_scope_enter(transportActivity, &state);

  if (self->_idsService == serviceCopy)
  {
    queue = [(SYSyncEngine *)self queue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __85__SYFileTransferSyncEngine_service_didSwitchActivePairedDevice_acknowledgementBlock___block_invoke;
    block[3] = &unk_1E86CB1D0;
    v14 = deviceCopy;
    selfCopy = self;
    v16 = blockCopy;
    dispatch_async(queue, block);
  }

  os_activity_scope_leave(&state);
}

uint64_t __85__SYFileTransferSyncEngine_service_didSwitchActivePairedDevice_acknowledgementBlock___block_invoke(void *a1)
{
  v11 = *MEMORY[0x1E69E9840];
  if (_sync_log_facilities_pred != -1)
  {
    [SYIncomingSyncAllObjectsSession _continueProcessing];
  }

  v2 = qword_1EDE73428;
  if (os_log_type_enabled(qword_1EDE73428, OS_LOG_TYPE_DEFAULT))
  {
    v3 = a1[4];
    v9 = 138412290;
    v10 = v3;
    _os_log_impl(&dword_1DF835000, v2, OS_LOG_TYPE_DEFAULT, "Active IDS device changed to: %@", &v9, 0xCu);
  }

  v4 = [SYDevice deviceForIDSDevice:a1[4]];
  v5 = a1[5];
  v6 = *(v5 + 136);
  *(v5 + 136) = v4;

  result = (*(a1[6] + 16))();
  v8 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)service:(id)service nearbyDevicesChanged:(id)changed
{
  v17 = *MEMORY[0x1E69E9840];
  serviceCopy = service;
  changedCopy = changed;
  v8 = [(SYSyncEngine *)self transportActivity:0];
  os_activity_scope_enter(v8, &v14);

  v9 = [(SYDevice *)self->_activeDevice findMatchingIDSDeviceFromList:changedCopy];

  if (![(SYDevice *)self->_activeDevice hasCachedNearby]|| (((v9 != 0) ^ [(SYDevice *)self->_activeDevice cachedIsNearby]) & 1) != 0)
  {
    [(SYDevice *)self->_activeDevice setCachedIsNearby:v9 != 0];
    [(SYDevice *)self->_activeDevice setHasCachedNearby:1];
    if (_sync_log_facilities_pred != -1)
    {
      [SYIncomingSyncAllObjectsSession _continueProcessing];
    }

    v10 = qword_1EDE73428;
    if (os_log_type_enabled(qword_1EDE73428, OS_LOG_TYPE_DEFAULT))
    {
      v11 = "left";
      if (v9)
      {
        v11 = "entered";
      }

      *buf = 136315138;
      v16 = v11;
      _os_log_impl(&dword_1DF835000, v10, OS_LOG_TYPE_DEFAULT, "Target device %s proximity", buf, 0xCu);
    }

    responder = [(SYSyncEngine *)self responder];
    [responder currentDeviceProximityChanged:v9 != 0];
  }

  os_activity_scope_leave(&v14);

  v13 = *MEMORY[0x1E69E9840];
}

- (void)service:(id)service connectedDevicesChanged:(id)changed
{
  serviceCopy = service;
  changedCopy = changed;
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  transportActivity = [(SYSyncEngine *)self transportActivity];
  os_activity_scope_enter(transportActivity, &state);

  v9 = [(SYDevice *)self->_activeDevice findMatchingIDSDeviceFromList:changedCopy];

  if (![(SYDevice *)self->_activeDevice hasCachedConnected]|| (((v9 != 0) ^ [(SYDevice *)self->_activeDevice cachedConnected]) & 1) != 0)
  {
    [(SYDevice *)self->_activeDevice setCachedConnected:v9 != 0];
    [(SYDevice *)self->_activeDevice setHasCachedConnected:1];
    if (v9)
    {
      if (_sync_log_facilities_pred != -1)
      {
        [SYIncomingSyncAllObjectsSession _continueProcessing];
      }

      v10 = qword_1EDE73428;
      if (!os_log_type_enabled(qword_1EDE73428, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_13;
      }

      *v13 = 0;
      v11 = "Target device is connected";
    }

    else
    {
      if (_sync_log_facilities_pred != -1)
      {
        [SYIncomingSyncAllObjectsSession _continueProcessing];
      }

      v10 = qword_1EDE73428;
      if (!os_log_type_enabled(qword_1EDE73428, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_13;
      }

      *v13 = 0;
      v11 = "Target device is NOT connected";
    }

    _os_log_impl(&dword_1DF835000, v10, OS_LOG_TYPE_DEFAULT, v11, v13, 2u);
LABEL_13:
    responder = [(SYSyncEngine *)self responder];
    [responder currentDeviceConnectionChanged:v9 != 0];
  }

  os_activity_scope_leave(&state);
}

- (unint64_t)_crcChecksum:(id)checksum
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = open([checksum fileSystemRepresentation], 0);
  v4 = crc32(0, 0, 0);
  v5 = read(v3, buf, 0x1000uLL);
  if (v5 >= 1)
  {
    v6 = v5;
    do
    {
      v4 = crc32(v4, buf, v6);
      v7 = read(v3, buf, 0x1000uLL);
      v6 = v7;
    }

    while (v7 > 0);
  }

  close(v3);
  v8 = *MEMORY[0x1E69E9840];
  return v4;
}

void __91__SYFileTransferSyncEngine_endFileTransferForStream_atURL_target_wasCancelled_messageRows___block_invoke_cold_2(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *MEMORY[0x1E69E9840];
  v9 = HIDWORD(*(a1 + 32));
  OUTLINED_FUNCTION_2_5(&dword_1DF835000, a2, a3, "Closing output stream %{public}@", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x1E69E9840];
}

void __91__SYFileTransferSyncEngine_endFileTransferForStream_atURL_target_wasCancelled_messageRows___block_invoke_62_cold_2(uint64_t *a1, void *a2, NSObject *a3)
{
  v8 = *MEMORY[0x1E69E9840];
  v4 = *a1;
  v5 = _SYObfuscate(a2);
  OUTLINED_FUNCTION_7_0();
  _os_log_error_impl(&dword_1DF835000, a3, 0x90u, "Failed to send file at %@ via IDS: %{public}@", v7, 0x16u);

  v6 = *MEMORY[0x1E69E9840];
}

void __102__SYFileTransferSyncEngine__enqueueSingleMessage_withMessageID_priority_options_userContext_callback___block_invoke_cold_3()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_1(&dword_1DF835000, v0, v1, "IDS message send failed: %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)enqueueSyncRequest:withMessageID:priority:options:userContext:callback:.cold.2()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_2_5(&dword_1DF835000, v0, v1, "File-transfer engine caching start request %p", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __99__SYFileTransferSyncEngine_enqueueSyncRequest_withMessageID_priority_options_userContext_callback___block_invoke_93_cold_2()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_1(&dword_1DF835000, v0, v1, "Error writing data to output file stream: %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __84__SYFileTransferSyncEngine_outputStreamWithMetadata_priority_options_context_error___block_invoke_cold_3()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_2_5(&dword_1DF835000, v0, v1, "Sent OOB file: %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __84__SYFileTransferSyncEngine_outputStreamWithMetadata_priority_options_context_error___block_invoke_cold_5(uint64_t *a1, void *a2, void *a3)
{
  v13 = *MEMORY[0x1E69E9840];
  v4 = *a1;
  v5 = a2;
  v6 = _SYObfuscate(a3);
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v7, v8, v9, v10, v11, 0x16u);

  v12 = *MEMORY[0x1E69E9840];
}

void __84__SYFileTransferSyncEngine_outputStreamWithMetadata_priority_options_context_error___block_invoke_cold_7(void *a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = [a2 streamError];
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0xCu);

  v10 = *MEMORY[0x1E69E9840];
}

void __84__SYFileTransferSyncEngine_outputStreamWithMetadata_priority_options_context_error___block_invoke_cold_9(uint64_t *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v7 = *a1;
  OUTLINED_FUNCTION_2_0();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
  v6 = *MEMORY[0x1E69E9840];
}

void __46__SYFileTransferSyncEngine__readNextProtobuf___block_invoke_123_cold_2(uint64_t a1, uint8_t *buf, uint64_t a3, os_log_t log)
{
  *buf = 134218242;
  *(buf + 4) = a3;
  *(buf + 6) = 2114;
  *(buf + 14) = a1;
  _os_log_error_impl(&dword_1DF835000, log, 0x90u, "Out of band message with nil payload found! Request data has size %lu. First 20 bytes = %{public}@", buf, 0x16u);
}

void __46__SYFileTransferSyncEngine__readNextProtobuf___block_invoke_123_cold_5(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 138543362;
  *(buf + 4) = a1;
  _os_log_error_impl(&dword_1DF835000, log, 0x90u, "File-transfer engine failed to decode incoming %{public}@ message", buf, 0xCu);
}

- (void)_recordLastSeqNo:.cold.2()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_1(&dword_1DF835000, v0, v1, "Failed to store incoming sequence number: %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __81__SYFileTransferSyncEngine__consumeRemainingStreamDataWithIdentifier_completion___block_invoke_cold_2()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_1(&dword_1DF835000, v0, v1, "Error reading from incoming file-transfer stream: %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __88__SYFileTransferSyncEngine__handleProtobuf_ofType_identifier_isResponse_withCompletion___block_invoke_cold_2()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_1(&dword_1DF835000, v0, v1, "Failure dealing with OOB data: %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __88__SYFileTransferSyncEngine__handleProtobuf_ofType_identifier_isResponse_withCompletion___block_invoke_2_cold_2(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 56);
  OUTLINED_FUNCTION_3_3();
  OUTLINED_FUNCTION_2_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x12u);
  v7 = *MEMORY[0x1E69E9840];
}

- (void)_handleIncomingSessionFileAtURL:(double)a3 metadata:identifier:idsContext:.cold.4(uint64_t a1, NSObject *a2, double a3)
{
  v8 = *MEMORY[0x1E69E9840];
  v4 = 138543618;
  v5 = a1;
  v6 = 2048;
  v7 = fabs(a3);
  _os_log_debug_impl(&dword_1DF835000, a2, OS_LOG_TYPE_DEBUG, "Transfer time for %{public}@: %.02f seconds", &v4, 0x16u);
  v3 = *MEMORY[0x1E69E9840];
}

- (void)_handleIncomingSessionFileAtURL:metadata:identifier:idsContext:.cold.6()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_2_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x1E69E9840];
}

void __91__SYFileTransferSyncEngine__handleIncomingSessionFileAtURL_metadata_identifier_idsContext___block_invoke_cold_3()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_1(&dword_1DF835000, v0, v1, "Failed to remove incoming file: %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)_processNMSMessageData:(uint64_t)a3 context:.cold.2(void *a1, void *a2, uint64_t a3)
{
  v10 = *MEMORY[0x1E69E9840];
  v5 = a1;
  [a2 length];
  OUTLINED_FUNCTION_5_0();
  v8 = 2114;
  v9 = a3;
  _os_log_error_impl(&dword_1DF835000, v5, 0x90u, "Out of band message with nil payload found! Request data has size %lu. First 20 bytes = %{public}@", v7, 0x16u);

  v6 = *MEMORY[0x1E69E9840];
}

- (void)_processNMSMessageData:(void *)a1 context:(objc_class *)a2 .cold.5(void *a1, objc_class *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = NSStringFromClass(a2);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0xCu);

  v10 = *MEMORY[0x1E69E9840];
}

- (void)_processNMSMessageData:(unsigned __int16)a1 context:(NSObject *)a2 .cold.7(unsigned __int16 a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v3[0] = 67109120;
  v3[1] = a1;
  _os_log_error_impl(&dword_1DF835000, a2, OS_LOG_TYPE_ERROR, "No protobuf class mapping found for message ID %{companionsync:SYMessageID}hu", v3, 8u);
  v2 = *MEMORY[0x1E69E9840];
}

- (void)service:(uint8_t *)buf account:(os_log_t)log incomingResourceAtURL:metadata:fromID:context:.cold.2(int a1, int a2, uint8_t *buf, os_log_t log)
{
  *buf = 67109376;
  *(buf + 1) = a1;
  *(buf + 4) = 1024;
  *(buf + 10) = a2;
  _os_log_error_impl(&dword_1DF835000, log, OS_LOG_TYPE_ERROR, "Incoming message CRC failure (0x%08x vs 0x%08x). Terrible things are about to happen.", buf, 0xEu);
}

- (void)service:(uint8_t *)buf account:(os_log_t)log incomingResourceAtURL:metadata:fromID:context:.cold.5(void *a1, void *a2, uint8_t *buf, os_log_t log)
{
  *buf = 138543618;
  *(buf + 4) = a1;
  *(buf + 6) = 2114;
  *(buf + 14) = a2;
  _os_log_debug_impl(&dword_1DF835000, log, OS_LOG_TYPE_DEBUG, "Incoming resource: %{public}@, replying to %{public}@", buf, 0x16u);
}

void __90__SYFileTransferSyncEngine_service_account_incomingResourceAtURL_metadata_fromID_context___block_invoke_cold_2()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_1(&dword_1DF835000, v0, v1, "Failed to process incoming file transfer: %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)service:(unsigned __int16)a1 account:(NSObject *)a2 incomingData:fromID:context:.cold.8(unsigned __int16 a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v3[0] = 67109120;
  v3[1] = a1;
  _os_log_error_impl(&dword_1DF835000, a2, 0x90u, "Unknown message ID: %hu", v3, 8u);
  v2 = *MEMORY[0x1E69E9840];
}

void __72__SYFileTransferSyncEngine_service_account_incomingData_fromID_context___block_invoke_138_cold_2(unsigned __int16 *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v1 = *a1;
  OUTLINED_FUNCTION_3_3();
  OUTLINED_FUNCTION_2_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x12u);
  v7 = *MEMORY[0x1E69E9840];
}

void __72__SYFileTransferSyncEngine_service_account_incomingData_fromID_context___block_invoke_138_cold_5(unsigned __int16 *a1)
{
  v5 = *MEMORY[0x1E69E9840];
  v1 = *a1;
  OUTLINED_FUNCTION_3_3();
  _os_log_debug_impl(&dword_1DF835000, v2, OS_LOG_TYPE_DEBUG, "Sent response to %{companionsync:SYMessageID}hu: %{public}@", v4, 0x12u);
  v3 = *MEMORY[0x1E69E9840];
}

- (void)service:account:identifier:didSendWithSuccess:error:context:.cold.2()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_1(&dword_1DF835000, v0, v1, "Error sending session via file-transfer: %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)service:account:identifier:hasBeenDeliveredWithContext:.cold.3()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_2_5(&dword_1DF835000, v0, v1, "App-level ACK: %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

@end