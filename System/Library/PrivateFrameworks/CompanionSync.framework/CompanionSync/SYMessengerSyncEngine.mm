@interface SYMessengerSyncEngine
- (BOOL)_checkMessageHeader:(id)header messageID:(id)d;
- (BOOL)resume:(id *)resume;
- (BOOL)targetConnected;
- (BOOL)targetIsNearby;
- (SYMessengerSyncEngine)initWithService:(id)service queue:(id)queue;
- (id)_fileTransferHeader;
- (id)_getRequestHeader:(id)header;
- (id)_getResponseHeader:(id)header;
- (id)cancelMessagesReturningFailures:(id)failures;
- (id)outputStreamWithMetadata:(id)metadata priority:(int64_t)priority options:(id)options context:(id)context error:(id *)error;
- (id)stateForLogging;
- (void)_handleError:(id)error forMessageID:(unsigned __int16)d;
- (void)_hookupMessageHandler;
- (void)_oobDataEnded;
- (void)_oobDataStarted;
- (void)_recordLastSeqNo:(id)no;
- (void)_requestEnded;
- (void)_requestStarted:(unsigned __int16)started;
- (void)_responseEnded;
- (void)_responseStarted:(unsigned __int16)started;
- (void)_resumeIncomingMessages;
- (void)_suspendIncomingMessages;
- (void)_updateMessageCenterPrefs:(id)prefs;
- (void)beginSession;
- (void)messageCenter:(id)center activeDeviceChanged:(id)changed acknowledgement:(id)acknowledgement;
- (void)messageCenter:(id)center connectedDevicesChanged:(id)changed;
- (void)messageCenter:(id)center didReceiveIncomingFileTransfer:(id)transfer;
- (void)messageCenter:(id)center didReceiveUnknownRequest:(id)request;
- (void)messageCenter:(id)center didResolveIDSIdentifier:(id)identifier forFileTransfer:(id)transfer;
- (void)messageCenter:(id)center didResolveIDSIdentifier:(id)identifier forResponse:(id)response;
- (void)messageCenter:(id)center didResolveIDSIdentifierForRequest:(id)request;
- (void)messageCenter:(id)center didSuccessfullyDeliverRequestWithIdentifier:(id)identifier userInfo:(id)info;
- (void)messageCenter:(id)center didSuccessfullySendRequestWithIdentifier:(id)identifier userInfo:(id)info;
- (void)messageCenter:(id)center failedToSendMessageWithIdentifier:(id)identifier error:(id)error userInfo:(id)info;
- (void)messageCenter:(id)center nearbyDevicesChanged:(id)changed;
- (void)suspend;
@end

@implementation SYMessengerSyncEngine

- (SYMessengerSyncEngine)initWithService:(id)service queue:(id)queue
{
  serviceCopy = service;
  v26.receiver = self;
  v26.super_class = SYMessengerSyncEngine;
  v7 = [(SYSyncEngine *)&v26 initWithService:serviceCopy queue:queue];
  if (v7)
  {
    v8 = objc_alloc(MEMORY[0x1E696AEC0]);
    name = [serviceCopy name];
    lastPathComponent = [name lastPathComponent];
    v11 = [v8 initWithFormat:@"%@ SYMessengerSyncEngine IDS Queue", lastPathComponent];

    relative_priority_ptr = 0;
    queue = [(SYSyncEngine *)v7 queue];
    LODWORD(lastPathComponent) = dispatch_queue_get_qos_class(queue, &relative_priority_ptr);

    v13 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v14 = dispatch_queue_attr_make_with_qos_class(v13, lastPathComponent, relative_priority_ptr);

    v15 = dispatch_queue_create([v11 UTF8String], v14);
    idsQueue = v7->_idsQueue;
    v7->_idsQueue = v15;

    [SYQueueDumper registerQueue:v7->_idsQueue];
    v17 = dispatch_semaphore_create(1);
    lookupLock = v7->_lookupLock;
    v7->_lookupLock = v17;

    weakToStrongObjectsMapTable = [MEMORY[0x1E696AD18] weakToStrongObjectsMapTable];
    requestLookup = v7->_requestLookup;
    v7->_requestLookup = weakToStrongObjectsMapTable;

    v21 = [MEMORY[0x1E696AD18] mapTableWithKeyOptions:517 valueOptions:0x10000];
    callbackLookup = v7->_callbackLookup;
    v7->_callbackLookup = v21;

    v23 = v7;
  }

  return v7;
}

- (BOOL)targetIsNearby
{
  v19 = *MEMORY[0x1E69E9840];
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
    idsService = [(NMSMessageCenter *)self->_messageCenter idsService];
    devices = [idsService devices];
    v10 = [(SYDevice *)activeDevice findMatchingIDSDeviceFromList:devices];

    if (v10)
    {
      if (_sync_log_facilities_pred != -1)
      {
        [SYIncomingSyncAllObjectsSession _continueProcessing];
      }

      v11 = qword_1EDE73428;
      if (os_log_type_enabled(qword_1EDE73428, OS_LOG_TYPE_DEFAULT))
      {
        v12 = v11;
        isNearby = [v10 isNearby];
        v14 = "not ";
        if (isNearby)
        {
          v14 = "";
        }

        v17 = 136315138;
        v18 = v14;
        _os_log_impl(&dword_1DF835000, v12, OS_LOG_TYPE_DEFAULT, "Target device is %snearby, caching value.", &v17, 0xCu);
      }

      -[SYDevice setCachedIsNearby:](self->_activeDevice, "setCachedIsNearby:", [v10 isNearby]);
      [(SYDevice *)self->_activeDevice setHasCachedNearby:1];
      isNearby2 = [v10 isNearby];
    }

    else
    {
      isNearby2 = 0;
    }

    v16 = *MEMORY[0x1E69E9840];
    return isNearby2;
  }
}

- (BOOL)targetConnected
{
  v19 = *MEMORY[0x1E69E9840];
  hasCachedConnected = [(SYDevice *)self->_activeDevice hasCachedConnected];
  activeDevice = self->_activeDevice;
  if (hasCachedConnected)
  {
    v5 = *MEMORY[0x1E69E9840];
    v6 = self->_activeDevice;

    return [(SYDevice *)v6 cachedConnected];
  }

  else
  {
    idsService = [(NMSMessageCenter *)self->_messageCenter idsService];
    devices = [idsService devices];
    v10 = [(SYDevice *)activeDevice findMatchingIDSDeviceFromList:devices];

    if (v10)
    {
      if (_sync_log_facilities_pred != -1)
      {
        [SYIncomingSyncAllObjectsSession _continueProcessing];
      }

      v11 = qword_1EDE73428;
      if (os_log_type_enabled(qword_1EDE73428, OS_LOG_TYPE_DEFAULT))
      {
        v12 = v11;
        isConnected = [v10 isConnected];
        v14 = "not ";
        if (isConnected)
        {
          v14 = "";
        }

        v17 = 136315138;
        v18 = v14;
        _os_log_impl(&dword_1DF835000, v12, OS_LOG_TYPE_DEFAULT, "Target device is %sconnected, caching value.", &v17, 0xCu);
      }

      -[SYDevice setCachedConnected:](self->_activeDevice, "setCachedConnected:", [v10 isConnected]);
      [(SYDevice *)self->_activeDevice setHasCachedConnected:1];
      isConnected2 = [v10 isConnected];
    }

    else
    {
      isConnected2 = 0;
    }

    v16 = *MEMORY[0x1E69E9840];
    return isConnected2;
  }
}

- (BOOL)resume:(id *)resume
{
  [(SYMessengerSyncEngine *)self _hookupMessageHandler];
  [(NMSMessageCenter *)self->_messageCenter resume];
  v5 = +[SYDevice targetableDevice];
  activeDevice = self->_activeDevice;
  self->_activeDevice = v5;

  v7 = self->_activeDevice;
  if (resume && !v7)
  {
    *resume = [objc_alloc(MEMORY[0x1E696ABC0]) initWithSYError:2003 userInfo:0];
  }

  return v7 != 0;
}

- (void)suspend
{
  [(NMSMessageCenter *)self->_messageCenter _obliterate];
  messageCenter = self->_messageCenter;
  self->_messageCenter = 0;
}

- (void)beginSession
{
  v9.receiver = self;
  v9.super_class = SYMessengerSyncEngine;
  [(SYSyncEngine *)&v9 beginSession];
  activeDevice = self->_activeDevice;
  service = [(NMSMessageCenter *)self->_messageCenter service];
  devices = [service devices];
  v6 = [(SYDevice *)activeDevice findMatchingIDSDeviceFromList:devices];

  v7 = [(NMSMessageCenter *)self->_messageCenter deviceIDFromDevice:v6];
  sessionDeviceID = self->_sessionDeviceID;
  self->_sessionDeviceID = v7;
}

- (id)outputStreamWithMetadata:(id)metadata priority:(int64_t)priority options:(id)options context:(id)context error:(id *)error
{
  metadataCopy = metadata;
  optionsCopy = options;
  contextCopy = context;
  if (!self->_messageCenter)
  {
    _os_assumes_log();
  }

  v15 = [MEMORY[0x1E695DFF8] _SYURLForNewTemporaryFile:error];
  if (v15)
  {
    v16 = [[SYCompressedFileOutputStream alloc] initToCompressedFileAtURL:v15 shouldAppend:0];
    objc_initWeak(&location, self);
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __81__SYMessengerSyncEngine_outputStreamWithMetadata_priority_options_context_error___block_invoke;
    v18[3] = &unk_1E86CB360;
    objc_copyWeak(v24, &location);
    v19 = v15;
    selfCopy = self;
    v21 = optionsCopy;
    v22 = metadataCopy;
    v24[1] = priority;
    v23 = contextCopy;
    [v16 setOnClose:v18];

    objc_destroyWeak(v24);
    objc_destroyWeak(&location);
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

void __81__SYMessengerSyncEngine_outputStreamWithMetadata_priority_options_context_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 72));
  if (WeakRetained && [v3 streamStatus] != 7)
  {
    v11 = [*(a1 + 40) customIDSOptions];
    v12 = IDSOptionsFromSYServiceOptions(*(a1 + 48));
    v13 = CoalesceOptionDictionaries(v11, v12);

    v14 = objc_opt_new();
    [v14 setFileURL:*(a1 + 32)];
    [v14 setMetadata:*(a1 + 56)];
    v15 = *(a1 + 80);
    if (v15 == 20)
    {
      v16 = 2;
    }

    else
    {
      v16 = v15 != 0;
    }

    [v14 setPriority:v16];
    v17 = [WeakRetained service];
    [v17 defaultMessageTimeout];
    [v14 setSendTimeout:?];

    [v14 setPersistentUserInfo:*(a1 + 64)];
    [v14 setExtraIDSOptions:v13];
    v18 = objc_opt_new();
    v19 = [*(a1 + 40) _fileTransferHeader];
    [v18 setHeader:v19];

    v20 = [v18 header];
    [v20 timestamp];
    v22 = v21;
    [v14 sendTimeout];
    v24 = v22 + v23;
    v25 = [v18 header];
    [v25 setTimeout:v24];

    [v18 setDecompressedFileSize:{objc_msgSend(v3, "bytesThroughput")}];
    [v14 setPbHeaderInfo:v18];
    [WeakRetained[6] sendFile:v14];
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
        __81__SYMessengerSyncEngine_outputStreamWithMetadata_priority_options_context_error___block_invoke_cold_2(v6);
      }
    }

    v7 = [MEMORY[0x1E696AC08] defaultManager];
    v8 = *(a1 + 32);
    v26 = 0;
    v9 = [v7 removeItemAtURL:v8 error:&v26];
    v10 = v26;

    if ((v9 & 1) == 0)
    {
      if (_sync_log_facilities_pred != -1)
      {
        [SYIncomingSyncAllObjectsSession _continueProcessing];
      }

      if (os_log_type_enabled(qword_1EDE73428, OS_LOG_TYPE_ERROR))
      {
        __81__SYMessengerSyncEngine_outputStreamWithMetadata_priority_options_context_error___block_invoke_cold_4();
      }
    }
  }
}

- (id)cancelMessagesReturningFailures:(id)failures
{
  v29 = *MEMORY[0x1E69E9840];
  failuresCopy = failures;
  if ([failuresCopy count])
  {
    v5 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithCapacity:{objc_msgSend(failuresCopy, "count")}];
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v18 = failuresCopy;
    v6 = failuresCopy;
    v7 = [v6 countByEnumeratingWithState:&v20 objects:v28 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v21;
      do
      {
        v10 = 0;
        do
        {
          if (*v21 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v20 + 1) + 8 * v10);
          messageCenter = self->_messageCenter;
          v19 = 0;
          v13 = [(NMSMessageCenter *)messageCenter cancelMessageWithID:v11 error:&v19];
          v14 = v19;
          if (!v13)
          {
            if (_sync_log_facilities_pred != -1)
            {
              [SYIncomingSyncAllObjectsSession _continueProcessing];
            }

            v15 = qword_1EDE73428;
            if (os_log_type_enabled(qword_1EDE73428, OS_LOG_TYPE_INFO))
            {
              *buf = 138543618;
              v25 = v11;
              v26 = 2112;
              v27 = v14;
              _os_log_impl(&dword_1DF835000, v15, OS_LOG_TYPE_INFO, "Failed to cancel outgoing message (%{public}@): %@", buf, 0x16u);
            }

            [v5 addObject:v11];
          }

          ++v10;
        }

        while (v8 != v10);
        v8 = [v6 countByEnumeratingWithState:&v20 objects:v28 count:16];
      }

      while (v8);
    }

    failuresCopy = v18;
  }

  else
  {
    v5 = failuresCopy;
  }

  v16 = *MEMORY[0x1E69E9840];

  return v5;
}

- (void)_requestStarted:(unsigned __int16)started
{
  self->_handledRequestID = started;
  date = [MEMORY[0x1E695DF00] date];
  requestStartedDate = self->_requestStartedDate;
  self->_requestStartedDate = date;

  requestEndedDate = self->_requestEndedDate;
  self->_requestEndedDate = 0;
}

- (void)_requestEnded
{
  date = [MEMORY[0x1E695DF00] date];
  requestEndedDate = self->_requestEndedDate;
  self->_requestEndedDate = date;

  MEMORY[0x1EEE66BB8](date, requestEndedDate);
}

- (void)_responseStarted:(unsigned __int16)started
{
  self->_handledResponseID = started;
  date = [MEMORY[0x1E695DF00] date];
  responseStartedDate = self->_responseStartedDate;
  self->_responseStartedDate = date;

  responseEndedDate = self->_responseEndedDate;
  self->_responseEndedDate = 0;
}

- (void)_responseEnded
{
  date = [MEMORY[0x1E695DF00] date];
  responseEndedDate = self->_responseEndedDate;
  self->_responseEndedDate = date;

  MEMORY[0x1EEE66BB8](date, responseEndedDate);
}

- (void)_oobDataStarted
{
  date = [MEMORY[0x1E695DF00] date];
  oobDataStartedDate = self->_oobDataStartedDate;
  self->_oobDataStartedDate = date;

  oobDataEndedDate = self->_oobDataEndedDate;
  self->_oobDataEndedDate = 0;
}

- (void)_oobDataEnded
{
  date = [MEMORY[0x1E695DF00] date];
  oobDataEndedDate = self->_oobDataEndedDate;
  self->_oobDataEndedDate = date;

  MEMORY[0x1EEE66BB8](date, oobDataEndedDate);
}

- (id)stateForLogging
{
  v3 = objc_opt_new();
  [v3 setType:1];
  [v3 setSuspended:self->_messageCenter == 0];
  [v3 setInSession:{-[SYSyncEngine isInSession](self, "isInSession")}];
  [v3 setBuffersSessions:{-[SYSyncEngine buffersSessions](self, "buffersSessions")}];
  [v3 setQueueSuspendedDate:self->_queueSuspendedDate];
  [v3 setQueueResumedDate:self->_queueResumedDate];
  [v3 setHandledRequestID:self->_handledRequestID];
  [v3 setRequestStartedDate:self->_requestStartedDate];
  [v3 setRequestEndedDate:self->_requestEndedDate];
  [v3 setHandledResponseID:self->_handledResponseID];
  [v3 setResponseStartedDate:self->_responseStartedDate];
  [v3 setResponseEndedDate:self->_responseEndedDate];
  [v3 setOobDataStartedDate:self->_oobDataStartedDate];
  [v3 setOobDataEndedDate:self->_oobDataEndedDate];

  return v3;
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

- (void)_updateMessageCenterPrefs:(id)prefs
{
  prefsCopy = prefs;
  v4 = [prefsCopy objectForKeyedSubscript:@"EnableTransmitWindow"];
  v5 = v4;
  if (!v4 || [v4 BOOLValue])
  {
    [(NMSMessageCenter *)self->_messageCenter setEnableTransmissionWindow:1];
    v6 = [prefsCopy objectForKeyedSubscript:@"MaxMessagesInFlight"];

    if (v6)
    {
      unsignedIntegerValue = [v6 unsignedIntegerValue];
    }

    else
    {
      unsignedIntegerValue = 20;
    }

    [(NMSMessageCenter *)self->_messageCenter setMaxMessagesInFlight:unsignedIntegerValue];
    v8 = [prefsCopy objectForKeyedSubscript:@"MinMessagesInFlight"];

    if (v8)
    {
      unsignedIntegerValue2 = [v8 unsignedIntegerValue];
    }

    else
    {
      unsignedIntegerValue2 = 10;
    }

    [(NMSMessageCenter *)self->_messageCenter setMinMessagesInFlight:unsignedIntegerValue2];
    v5 = [prefsCopy objectForKeyedSubscript:@"MaxBytesInFlight"];

    if (v5)
    {
      unsignedIntegerValue3 = [v5 unsignedIntegerValue];
    }

    else
    {
      unsignedIntegerValue3 = 1000000;
    }

    [(NMSMessageCenter *)self->_messageCenter setMaxBytesInFlight:unsignedIntegerValue3];
  }
}

- (void)_suspendIncomingMessages
{
  date = [MEMORY[0x1E695DF00] date];
  queueSuspendedDate = self->_queueSuspendedDate;
  self->_queueSuspendedDate = date;

  queueResumedDate = self->_queueResumedDate;
  self->_queueResumedDate = 0;

  messageCenter = self->_messageCenter;

  [(NMSMessageCenter *)messageCenter suspendIncomingMessages];
}

- (void)_resumeIncomingMessages
{
  date = [MEMORY[0x1E695DF00] date];
  queueResumedDate = self->_queueResumedDate;
  self->_queueResumedDate = date;

  messageCenter = self->_messageCenter;

  [(NMSMessageCenter *)messageCenter resumeIncomingMessages];
}

- (void)_hookupMessageHandler
{
  if (_sync_log_facilities_pred != -1)
  {
    [SYIncomingSyncAllObjectsSession _continueProcessing];
  }

  v3 = qword_1EDE73428;
  if (os_log_type_enabled(qword_1EDE73428, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf[0]) = 0;
    _os_log_impl(&dword_1DF835000, v3, OS_LOG_TYPE_DEFAULT, "Creating NanoMessageCenter", buf, 2u);
  }

  v4 = [NMSMessageCenter alloc];
  service = [(SYSyncEngine *)self service];
  name = [service name];
  v7 = [(NMSMessageCenter *)v4 initWithIDSServiceIdentifier:name];
  messageCenter = self->_messageCenter;
  self->_messageCenter = v7;

  transportActivity = [(SYSyncEngine *)self transportActivity];
  [(NMSMessageCenter *)self->_messageCenter setTransportActivity:transportActivity];

  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  v11 = [standardUserDefaults persistentDomainForName:@"com.apple.companionsync"];

  [(SYMessengerSyncEngine *)self _updateMessageCenterPrefs:v11];
  v12 = self->_messageCenter;
  v13 = objc_opt_class();
  [(NMSMessageCenter *)v12 mapPBRequest:v13 toResponse:objc_opt_class() messageID:102];
  v14 = self->_messageCenter;
  v15 = objc_opt_class();
  [(NMSMessageCenter *)v14 mapPBRequest:v15 toResponse:objc_opt_class() messageID:101];
  v16 = self->_messageCenter;
  v17 = objc_opt_class();
  [(NMSMessageCenter *)v16 mapPBRequest:v17 toResponse:objc_opt_class() messageID:103];
  v18 = self->_messageCenter;
  v19 = objc_opt_class();
  [(NMSMessageCenter *)v18 mapPBRequest:v19 toResponse:objc_opt_class() messageID:104];
  v20 = self->_messageCenter;
  v21 = objc_opt_class();
  [(NMSMessageCenter *)v20 mapPBRequest:v21 toResponse:objc_opt_class() messageID:105];
  [(NMSMessageCenter *)self->_messageCenter mapPBRequest:objc_opt_class() toResponse:0 messageID:106];
  [(NMSMessageCenter *)self->_messageCenter mapPBRequest:objc_opt_class() toResponse:0 messageID:0x7FFFLL];
  v22 = self->_messageCenter;
  v23 = objc_opt_class();
  [(NMSMessageCenter *)v22 mapPBRequest:v23 toResponse:objc_opt_class() messageID:1];
  v24 = self->_messageCenter;
  v25 = objc_opt_class();
  [(NMSMessageCenter *)v24 mapPBRequest:v25 toResponse:objc_opt_class() messageID:2];
  [(NMSMessageCenter *)self->_messageCenter mapPBRequest:objc_opt_class() toResponse:0 messageID:3];
  v26 = self->_messageCenter;
  v27 = objc_opt_class();
  [(NMSMessageCenter *)v26 mapPBRequest:v27 toResponse:objc_opt_class() messageID:4];
  v28 = self->_messageCenter;
  v29 = objc_opt_class();
  [(NMSMessageCenter *)v28 mapPBRequest:v29 toResponse:objc_opt_class() messageID:5];
  [(NMSMessageCenter *)self->_messageCenter mapPBRequest:objc_opt_class() toResponse:0 messageID:6];
  [(NMSMessageCenter *)self->_messageCenter setDelegate:self queue:self->_idsQueue];
  objc_initWeak(buf, self);
  v30 = objc_alloc_init(MEMORY[0x1E696AD50]);
  v31 = objc_alloc_init(MEMORY[0x1E696AD50]);
  [v30 addIndexesInRange:{1, 6}];
  [v30 addIndexesInRange:{101, 6}];
  [v30 addIndex:0x7FFFLL];
  [v31 addIndex:1];
  [v31 addIndex:2];
  [v31 addIndex:4];
  [v31 addIndex:5];
  [v31 addIndexesInRange:{101, 6}];
  [v31 removeIndex:106];
  v37[0] = MEMORY[0x1E69E9820];
  v37[1] = 3221225472;
  v37[2] = __46__SYMessengerSyncEngine__hookupMessageHandler__block_invoke;
  v37[3] = &unk_1E86CB3B0;
  v37[4] = self;
  objc_copyWeak(&v38, buf);
  [v30 enumerateIndexesUsingBlock:v37];
  v35[0] = MEMORY[0x1E69E9820];
  v35[1] = 3221225472;
  v35[2] = __46__SYMessengerSyncEngine__hookupMessageHandler__block_invoke_3;
  v35[3] = &unk_1E86CB3B0;
  v35[4] = self;
  objc_copyWeak(&v36, buf);
  [v31 enumerateIndexesUsingBlock:v35];
  v32 = self->_messageCenter;
  v33[0] = MEMORY[0x1E69E9820];
  v33[1] = 3221225472;
  v33[2] = __46__SYMessengerSyncEngine__hookupMessageHandler__block_invoke_85;
  v33[3] = &unk_1E86CA400;
  objc_copyWeak(&v34, buf);
  [(NMSMessageCenter *)v32 addRequestHandlerForMessageID:106 usingBlock:v33];
  objc_destroyWeak(&v34);
  objc_destroyWeak(&v36);
  objc_destroyWeak(&v38);

  objc_destroyWeak(buf);
}

void __46__SYMessengerSyncEngine__hookupMessageHandler__block_invoke(uint64_t a1, unsigned __int16 a2)
{
  v4 = *(*(a1 + 32) + 48);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __46__SYMessengerSyncEngine__hookupMessageHandler__block_invoke_2;
  v8[3] = &unk_1E86CA478;
  objc_copyWeak(&v9, (a1 + 40));
  v10 = a2;
  [v4 addErrorHandlerForMessageID:a2 usingBlock:v8];
  v5 = *(*(a1 + 32) + 48);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __46__SYMessengerSyncEngine__hookupMessageHandler__block_invoke_74;
  v6[3] = &unk_1E86CA400;
  objc_copyWeak(&v7, (a1 + 40));
  [v5 addRequestHandlerForMessageID:a2 usingBlock:v6];
  objc_destroyWeak(&v7);
  objc_destroyWeak(&v9);
}

void __46__SYMessengerSyncEngine__hookupMessageHandler__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    if (_sync_log_facilities_pred != -1)
    {
      [SYIncomingSyncAllObjectsSession _continueProcessing];
    }

    v5 = qword_1EDE73428;
    if (os_log_type_enabled(qword_1EDE73428, OS_LOG_TYPE_ERROR))
    {
      __46__SYMessengerSyncEngine__hookupMessageHandler__block_invoke_2_cold_2(a1, v3, v5);
    }

    [WeakRetained _handleError:v3 forMessageID:*(a1 + 40)];
  }
}

void __46__SYMessengerSyncEngine__hookupMessageHandler__block_invoke_74(uint64_t a1, void *a2)
{
  v39 = *MEMORY[0x1E69E9840];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = [WeakRetained service];
    v7 = +[SYStatisticStore sharedInstance];
    v8 = [v6 name];
    [v7 recordIncomingMessage:v3 forService:v8];

    v9 = [v5 _getRequestHeader:v3];
    v10 = [v9 copy];

    if (_sync_log_facilities_pred != -1)
    {
      [SYIncomingSyncAllObjectsSession _continueProcessing];
    }

    if (os_log_type_enabled(qword_1EDE73458, OS_LOG_TYPE_DEBUG))
    {
      Current = CFAbsoluteTimeGetCurrent();
      [v10 timestamp];
      v13 = v12;
      if (_sync_log_facilities_pred != -1)
      {
        [SYIncomingSyncAllObjectsSession _continueProcessing];
      }

      v14 = qword_1EDE73458;
      if (os_log_type_enabled(qword_1EDE73458, OS_LOG_TYPE_DEBUG))
      {
        v22 = v14;
        v23 = [v3 messageID];
        v24 = [v3 idsIdentifier];
        *buf = 67109634;
        v34 = v23;
        v35 = 2114;
        v36 = v24;
        v37 = 2048;
        v38 = Current - v13;
        _os_log_debug_impl(&dword_1DF835000, v22, OS_LOG_TYPE_DEBUG, "Incoming request %{companionsync:SYMessageID}hu: %{public}@. Transit time = %.02f seconds", buf, 0x1Cu);
      }
    }

    v15 = [v3 idsIdentifier];
    v16 = [v5 _checkMessageHeader:v10 messageID:v15];

    if (v16)
    {
      [v5 _suspendIncomingMessages];
      v17 = [v3 pbRequest];
      if ([v3 expectsResponse])
      {
        [v3 configureResponse];
      }

      v18 = [v5 queue];
      v25 = MEMORY[0x1E69E9820];
      v26 = 3221225472;
      v27 = __46__SYMessengerSyncEngine__hookupMessageHandler__block_invoke_75;
      v28 = &unk_1E86CA728;
      v19 = v5;
      v29 = v19;
      v30 = v3;
      v31 = v17;
      v32 = v6;
      v20 = v17;
      dispatch_async(v18, &v25);

      [v19 _recordLastSeqNo:{v10, v25, v26, v27, v28}];
    }

    else
    {
      [v3 setExpectsResponse:0];
    }
  }

  v21 = *MEMORY[0x1E69E9840];
}

void __46__SYMessengerSyncEngine__hookupMessageHandler__block_invoke_75(uint64_t a1)
{
  [*(a1 + 32) _requestStarted:{objc_msgSend(*(a1 + 40), "messageID")}];
  v2 = [*(a1 + 32) responder];
  v3 = *(a1 + 48);
  v4 = [*(a1 + 40) messageID];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __46__SYMessengerSyncEngine__hookupMessageHandler__block_invoke_2_76;
  v5[3] = &unk_1E86CB388;
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  v8 = *(a1 + 56);
  [v2 handleSyncRequest:v3 ofType:v4 response:v5];
}

void __46__SYMessengerSyncEngine__hookupMessageHandler__block_invoke_2_76(id *a1, void *a2, void *a3)
{
  v15 = a2;
  v5 = a3;
  [a1[4] _requestEnded];
  v6 = [a1[5] expectsResponse];
  if (v15 && v6)
  {
    v7 = [a1[5] response];
    [v7 setPbResponse:v15];
    [v7 setPersistentUserInfo:v5];
    v8 = [a1[4] customIDSOptions];
    v9 = [a1[4] responder];
    v10 = [v9 extraTransportOptions];
    v11 = IDSOptionsFromSYServiceOptions(v10);

    v12 = CoalesceOptionDictionaries(v8, v11);
    [v7 setExtraIDSOptions:v12];

    v13 = +[SYStatisticStore sharedInstance];
    v14 = [a1[6] name];
    [v13 recordOutgoingMessage:v7 forService:v14];

    [v7 send];
  }

  [a1[4] _resumeIncomingMessages];
}

void __46__SYMessengerSyncEngine__hookupMessageHandler__block_invoke_3(uint64_t a1, unsigned __int16 a2)
{
  v3 = *(*(a1 + 32) + 48);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __46__SYMessengerSyncEngine__hookupMessageHandler__block_invoke_4;
  v4[3] = &unk_1E86CA428;
  objc_copyWeak(&v5, (a1 + 40));
  [v3 addResponseHandler:a2 usingBlock:v4];
  objc_destroyWeak(&v5);
}

void __46__SYMessengerSyncEngine__hookupMessageHandler__block_invoke_4(uint64_t a1, void *a2)
{
  v37 = *MEMORY[0x1E69E9840];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = [WeakRetained service];
    v7 = +[SYStatisticStore sharedInstance];
    v8 = [v6 name];
    [v7 recordIncomingMessage:v3 forService:v8];

    v9 = [v5 _getResponseHeader:v3];
    if (_sync_log_facilities_pred != -1)
    {
      [SYIncomingSyncAllObjectsSession _continueProcessing];
    }

    if (os_log_type_enabled(qword_1EDE73458, OS_LOG_TYPE_DEBUG))
    {
      Current = CFAbsoluteTimeGetCurrent();
      [v9 timestamp];
      v12 = v11;
      if (_sync_log_facilities_pred != -1)
      {
        [SYIncomingSyncAllObjectsSession _continueProcessing];
      }

      v13 = qword_1EDE73458;
      if (os_log_type_enabled(qword_1EDE73458, OS_LOG_TYPE_DEBUG))
      {
        v19 = v13;
        v20 = [v3 messageID];
        v21 = [v3 idsIdentifier];
        v22 = [v3 requestIDSIdentifier];
        *buf = 67109890;
        v30 = v20;
        v31 = 2114;
        v32 = v21;
        v33 = 2114;
        v34 = v22;
        v35 = 2048;
        v36 = Current - v12;
        _os_log_debug_impl(&dword_1DF835000, v19, OS_LOG_TYPE_DEBUG, "Incoming response to %{companionsync:SYMessageID}hu: %{public}@, responding to %{public}@. Transit time = %.02f seconds", buf, 0x26u);
      }
    }

    v14 = [v3 idsIdentifier];
    v15 = [v5 _checkMessageHeader:v9 messageID:v14];

    if (v15)
    {
      [v5 _suspendIncomingMessages];
      v16 = [v5 queue];
      v23 = MEMORY[0x1E69E9820];
      v24 = 3221225472;
      v25 = __46__SYMessengerSyncEngine__hookupMessageHandler__block_invoke_81;
      v26 = &unk_1E86C9E90;
      v17 = v5;
      v27 = v17;
      v28 = v3;
      dispatch_async(v16, &v23);

      [v17 _recordLastSeqNo:{v9, v23, v24, v25, v26}];
    }
  }

  v18 = *MEMORY[0x1E69E9840];
}

void __46__SYMessengerSyncEngine__hookupMessageHandler__block_invoke_81(uint64_t a1)
{
  [*(a1 + 32) _responseStarted:{objc_msgSend(*(a1 + 40), "messageID")}];
  v2 = [*(a1 + 32) responder];
  v3 = [*(a1 + 40) pbResponse];
  v4 = [*(a1 + 40) messageID];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __46__SYMessengerSyncEngine__hookupMessageHandler__block_invoke_2_82;
  v5[3] = &unk_1E86C9E68;
  v6 = *(a1 + 32);
  [v2 handleSyncResponse:v3 ofType:v4 completion:v5];
}

void __46__SYMessengerSyncEngine__hookupMessageHandler__block_invoke_2_82(uint64_t a1, char a2, void *a3)
{
  v10 = *MEMORY[0x1E69E9840];
  v5 = a3;
  [*(a1 + 32) _responseEnded];
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

  [*(a1 + 32) _resumeIncomingMessages];

  v7 = *MEMORY[0x1E69E9840];
}

void __46__SYMessengerSyncEngine__hookupMessageHandler__block_invoke_85(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = [WeakRetained service];
    v7 = [v3 pbRequest];
    v8 = +[SYStatisticStore sharedInstance];
    v9 = [v6 name];
    [v8 recordIncomingMessage:v3 forService:v9];

    v10 = [v7 payload];
    if (!v10)
    {
      v11 = [v3 data];
      v12 = [v3 data];
      v13 = [v12 length];

      if (v13 >= 0x14)
      {
        v14 = 20;
      }

      else
      {
        v14 = v13;
      }

      v15 = [v11 subdataWithRange:{0, v14}];

      if (_sync_log_facilities_pred != -1)
      {
        [SYIncomingSyncAllObjectsSession _continueProcessing];
      }

      v16 = qword_1EDE73428;
      if (os_log_type_enabled(qword_1EDE73428, 0x90u))
      {
        __46__SYMessengerSyncEngine__hookupMessageHandler__block_invoke_85_cold_2(v16, v3, v15);
      }
    }

    [v5 _suspendIncomingMessages];
    v17 = [v5 queue];
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __46__SYMessengerSyncEngine__hookupMessageHandler__block_invoke_86;
    v19[3] = &unk_1E86C9E90;
    v20 = v5;
    v21 = v7;
    v18 = v7;
    dispatch_async(v17, v19);
  }
}

void __46__SYMessengerSyncEngine__hookupMessageHandler__block_invoke_86(uint64_t a1)
{
  [*(a1 + 32) _oobDataStarted];
  v2 = [*(a1 + 32) responder];
  v3 = [*(a1 + 40) payload];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __46__SYMessengerSyncEngine__hookupMessageHandler__block_invoke_2_87;
  v4[3] = &unk_1E86C9E68;
  v5 = *(a1 + 32);
  [v2 handleOutOfBandData:v3 completion:v4];
}

void __46__SYMessengerSyncEngine__hookupMessageHandler__block_invoke_2_87(uint64_t a1, char a2, void *a3)
{
  v10 = *MEMORY[0x1E69E9840];
  v5 = a3;
  [*(a1 + 32) _oobDataEnded];
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
      _os_log_impl(&dword_1DF835000, v6, OS_LOG_TYPE_DEFAULT, "Failure dealing with OOB data: %@", &v8, 0xCu);
    }
  }

  [*(a1 + 32) _resumeIncomingMessages];

  v7 = *MEMORY[0x1E69E9840];
}

- (id)_getRequestHeader:(id)header
{
  pbRequest = [header pbRequest];
  header = [pbRequest header];

  return header;
}

- (id)_getResponseHeader:(id)header
{
  pbResponse = [header pbResponse];
  header = [pbResponse header];

  return header;
}

- (BOOL)_checkMessageHeader:(id)header messageID:(id)d
{
  dCopy = d;
  headerCopy = header;
  responder = [(SYSyncEngine *)self responder];
  v9 = [responder willAcceptMessageWithHeader:headerCopy messageID:dCopy];

  return v9;
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
  v14 = 0;
  v11 = [v7 setLastSequenceNumber:sequenceNumber fromPeer:peerID error:&v14];
  v12 = v14;

  if ((v11 & 1) == 0)
  {
    if (_sync_log_facilities_pred != -1)
    {
      [SYIncomingSyncAllObjectsSession _continueProcessing];
    }

    v13 = qword_1EDE73428;
    if (os_log_type_enabled(qword_1EDE73428, OS_LOG_TYPE_ERROR))
    {
      [SYMessengerSyncEngine _recordLastSeqNo:v13];
    }
  }
}

- (void)_handleError:(id)error forMessageID:(unsigned __int16)d
{
  errorCopy = error;
  idsIdentifier = [errorCopy idsIdentifier];
  domain = [errorCopy domain];
  v7 = [domain isEqualToString:@"NMSErrorDomain"];

  if (v7 && [errorCopy code] == 7)
  {
    v8 = objc_alloc(MEMORY[0x1E696ABC0]);
    userInfo = [errorCopy userInfo];
    v10 = [v8 initWithSYError:2019 userInfo:userInfo];

    errorCopy = v10;
  }

  responder = [(SYSyncEngine *)self responder];
  [responder handleSyncError:errorCopy forMessageWithIdentifier:idsIdentifier];
}

- (void)messageCenter:(id)center didReceiveUnknownRequest:(id)request
{
  centerCopy = center;
  requestCopy = request;
  if (_sync_log_facilities_pred != -1)
  {
    [SYIncomingSyncAllObjectsSession _continueProcessing];
  }

  v7 = qword_1EDE73428;
  if (os_log_type_enabled(qword_1EDE73428, 0x90u))
  {
    [SYMessengerSyncEngine messageCenter:v7 didReceiveUnknownRequest:?];
  }
}

- (void)messageCenter:(id)center didReceiveIncomingFileTransfer:(id)transfer
{
  transferCopy = transfer;
  fileURL = [transferCopy fileURL];
  metadata = [transferCopy metadata];
  if (_sync_log_facilities_pred != -1)
  {
    [SYIncomingSyncAllObjectsSession _continueProcessing];
  }

  v8 = qword_1EDE73458;
  if (os_log_type_enabled(qword_1EDE73458, OS_LOG_TYPE_DEBUG))
  {
    [SYMessengerSyncEngine messageCenter:v8 didReceiveIncomingFileTransfer:?];
  }

  responder = [(SYSyncEngine *)self responder];
  [responder handleFileTransfer:fileURL metadata:metadata completion:&__block_literal_global_11];
}

void __70__SYMessengerSyncEngine_messageCenter_didReceiveIncomingFileTransfer___block_invoke(uint64_t a1, char a2, void *a3)
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
      __70__SYMessengerSyncEngine_messageCenter_didReceiveIncomingFileTransfer___block_invoke_cold_2();
    }
  }
}

- (void)messageCenter:(id)center didResolveIDSIdentifierForRequest:(id)request
{
  requestCopy = request;
  v6 = +[SYStatisticStore sharedInstance];
  idsIdentifier = [requestCopy idsIdentifier];
  [v6 assignIdentifier:idsIdentifier toOutgoingMessage:requestCopy];

  responder = [(SYSyncEngine *)self responder];
  idsIdentifier2 = [requestCopy idsIdentifier];
  persistentUserInfo = [requestCopy persistentUserInfo];
  [responder enqueuedMessageWithID:idsIdentifier2 context:persistentUserInfo];

  if (_sync_log_facilities_pred != -1)
  {
    [SYIncomingSyncAllObjectsSession _continueProcessing];
  }

  v11 = qword_1EDE73458;
  if (os_log_type_enabled(qword_1EDE73458, OS_LOG_TYPE_DEBUG))
  {
    [SYMessengerSyncEngine messageCenter:v11 didResolveIDSIdentifierForRequest:requestCopy];
  }

  dispatch_semaphore_wait(self->_lookupLock, 0xFFFFFFFFFFFFFFFFLL);
  v12 = [(NSMapTable *)self->_callbackLookup objectForKey:requestCopy];
  if (v12)
  {
    [(NSMapTable *)self->_callbackLookup removeObjectForKey:requestCopy];
    dispatch_semaphore_signal(self->_lookupLock);
    idsIdentifier3 = [requestCopy idsIdentifier];
    (v12)[2](v12, 1, idsIdentifier3, 0);
  }

  else
  {
    dispatch_semaphore_signal(self->_lookupLock);
  }
}

- (void)messageCenter:(id)center didResolveIDSIdentifier:(id)identifier forResponse:(id)response
{
  identifierCopy = identifier;
  responseCopy = response;
  request = [responseCopy request];
  if (_sync_log_facilities_pred != -1)
  {
    [SYIncomingSyncAllObjectsSession _continueProcessing];
  }

  v10 = qword_1EDE73458;
  if (os_log_type_enabled(qword_1EDE73458, OS_LOG_TYPE_DEBUG))
  {
    [SYMessengerSyncEngine messageCenter:v10 didResolveIDSIdentifier:request forResponse:identifierCopy];
  }

  v11 = +[SYStatisticStore sharedInstance];
  [v11 assignIdentifier:identifierCopy toOutgoingMessage:responseCopy];

  responder = [(SYSyncEngine *)self responder];
  persistentUserInfo = [responseCopy persistentUserInfo];

  [responder enqueuedMessageWithID:identifierCopy context:persistentUserInfo];
}

- (void)messageCenter:(id)center didResolveIDSIdentifier:(id)identifier forFileTransfer:(id)transfer
{
  identifierCopy = identifier;
  transferCopy = transfer;
  v8 = +[SYStatisticStore sharedInstance];
  [v8 assignIdentifier:identifierCopy toOutgoingMessage:transferCopy];

  if (_sync_log_facilities_pred != -1)
  {
    [SYIncomingSyncAllObjectsSession _continueProcessing];
  }

  if (os_log_type_enabled(qword_1EDE73458, OS_LOG_TYPE_DEBUG))
  {
    [SYMessengerSyncEngine messageCenter:didResolveIDSIdentifier:forFileTransfer:];
  }
}

- (void)messageCenter:(id)center didSuccessfullySendRequestWithIdentifier:(id)identifier userInfo:(id)info
{
  v22 = *MEMORY[0x1E69E9840];
  centerCopy = center;
  identifierCopy = identifier;
  infoCopy = info;
  if (_sync_log_facilities_pred != -1)
  {
    [SYIncomingSyncAllObjectsSession _continueProcessing];
  }

  if (os_log_type_enabled(qword_1EDE73458, OS_LOG_TYPE_DEBUG))
  {
    [SYMessengerSyncEngine messageCenter:didSuccessfullySendRequestWithIdentifier:userInfo:];
  }

  if (_sync_log_facilities_pred != -1)
  {
    [SYIncomingSyncAllObjectsSession _continueProcessing];
  }

  v11 = qword_1EDE73428;
  if (os_log_type_enabled(qword_1EDE73428, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v21 = identifierCopy;
    _os_log_impl(&dword_1DF835000, v11, OS_LOG_TYPE_DEFAULT, "dataIdentifier: %{public}@ didSendWithSuccess: YES error: nil", buf, 0xCu);
  }

  v12 = +[SYStatisticStore sharedInstance];
  [v12 confirmDeliveryOfOutgoingMessage:identifierCopy];

  queue = [(SYSyncEngine *)self queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __89__SYMessengerSyncEngine_messageCenter_didSuccessfullySendRequestWithIdentifier_userInfo___block_invoke;
  block[3] = &unk_1E86CA0F8;
  block[4] = self;
  v18 = identifierCopy;
  v19 = infoCopy;
  v14 = infoCopy;
  v15 = identifierCopy;
  dispatch_async(queue, block);

  v16 = *MEMORY[0x1E69E9840];
}

void __89__SYMessengerSyncEngine_messageCenter_didSuccessfullySendRequestWithIdentifier_userInfo___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) responder];
  [v2 sentMessageWithID:*(a1 + 40) context:*(a1 + 48)];
}

- (void)messageCenter:(id)center didSuccessfullyDeliverRequestWithIdentifier:(id)identifier userInfo:(id)info
{
  v22 = *MEMORY[0x1E69E9840];
  centerCopy = center;
  identifierCopy = identifier;
  infoCopy = info;
  if (_sync_log_facilities_pred != -1)
  {
    [SYIncomingSyncAllObjectsSession _continueProcessing];
  }

  if (os_log_type_enabled(qword_1EDE73458, OS_LOG_TYPE_DEBUG))
  {
    [SYMessengerSyncEngine messageCenter:didSuccessfullyDeliverRequestWithIdentifier:userInfo:];
  }

  if (_sync_log_facilities_pred != -1)
  {
    [SYIncomingSyncAllObjectsSession _continueProcessing];
  }

  v11 = qword_1EDE73428;
  if (os_log_type_enabled(qword_1EDE73428, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v21 = identifierCopy;
    _os_log_impl(&dword_1DF835000, v11, OS_LOG_TYPE_DEFAULT, "Remote delivery confirmation for %{public}@", buf, 0xCu);
  }

  v12 = +[SYStatisticStore sharedInstance];
  [v12 confirmDeliveryOfOutgoingMessage:identifierCopy];

  queue = [(SYSyncEngine *)self queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __92__SYMessengerSyncEngine_messageCenter_didSuccessfullyDeliverRequestWithIdentifier_userInfo___block_invoke;
  block[3] = &unk_1E86CA0F8;
  block[4] = self;
  v18 = identifierCopy;
  v19 = infoCopy;
  v14 = infoCopy;
  v15 = identifierCopy;
  dispatch_async(queue, block);

  v16 = *MEMORY[0x1E69E9840];
}

void __92__SYMessengerSyncEngine_messageCenter_didSuccessfullyDeliverRequestWithIdentifier_userInfo___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) responder];
  [v2 deliveredMessageWithID:*(a1 + 40) context:*(a1 + 48)];
}

- (void)messageCenter:(id)center failedToSendMessageWithIdentifier:(id)identifier error:(id)error userInfo:(id)info
{
  centerCopy = center;
  identifierCopy = identifier;
  errorCopy = error;
  infoCopy = info;
  if (_sync_log_facilities_pred != -1)
  {
    [SYIncomingSyncAllObjectsSession _continueProcessing];
  }

  if (os_log_type_enabled(qword_1EDE73428, OS_LOG_TYPE_ERROR))
  {
    [SYMessengerSyncEngine messageCenter:failedToSendMessageWithIdentifier:error:userInfo:];
  }

  if (_sync_log_facilities_pred != -1)
  {
    [SYIncomingSyncAllObjectsSession _continueProcessing];
  }

  v14 = qword_1EDE73458;
  if (os_log_type_enabled(qword_1EDE73458, OS_LOG_TYPE_DEBUG))
  {
    [SYMessengerSyncEngine messageCenter:identifierCopy failedToSendMessageWithIdentifier:v14 error:errorCopy userInfo:?];
  }

  v15 = +[SYStatisticStore sharedInstance];
  service = [(SYSyncEngine *)self service];
  name = [service name];
  [v15 updateOutgoingMessageWithIdentifier:identifierCopy forService:name sentSuccessfully:0 sendError:errorCopy];

  queue = [(SYSyncEngine *)self queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __88__SYMessengerSyncEngine_messageCenter_failedToSendMessageWithIdentifier_error_userInfo___block_invoke;
  block[3] = &unk_1E86CA0F8;
  block[4] = self;
  v22 = errorCopy;
  v23 = identifierCopy;
  v19 = identifierCopy;
  v20 = errorCopy;
  dispatch_async(queue, block);
}

void __88__SYMessengerSyncEngine_messageCenter_failedToSendMessageWithIdentifier_error_userInfo___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) responder];
  [v2 handleSyncError:*(a1 + 40) forMessageWithIdentifier:*(a1 + 48)];
}

- (void)messageCenter:(id)center activeDeviceChanged:(id)changed acknowledgement:(id)acknowledgement
{
  v20 = *MEMORY[0x1E69E9840];
  centerCopy = center;
  changedCopy = changed;
  acknowledgementCopy = acknowledgement;
  if (_sync_log_facilities_pred != -1)
  {
    [SYIncomingSyncAllObjectsSession _continueProcessing];
  }

  v11 = qword_1EDE73428;
  if (os_log_type_enabled(qword_1EDE73428, OS_LOG_TYPE_DEFAULT))
  {
    activeDevice = self->_activeDevice;
    v16 = 138412546;
    v17 = activeDevice;
    v18 = 2112;
    v19 = changedCopy;
    _os_log_impl(&dword_1DF835000, v11, OS_LOG_TYPE_DEFAULT, "Active IDS device changed. Old = %@, new = %@", &v16, 0x16u);
  }

  v13 = [SYDevice deviceForIDSDevice:changedCopy];
  v14 = self->_activeDevice;
  self->_activeDevice = v13;

  acknowledgementCopy[2](acknowledgementCopy);
  v15 = *MEMORY[0x1E69E9840];
}

- (void)messageCenter:(id)center nearbyDevicesChanged:(id)changed
{
  v17 = *MEMORY[0x1E69E9840];
  centerCopy = center;
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

- (void)messageCenter:(id)center connectedDevicesChanged:(id)changed
{
  centerCopy = center;
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

- (void)enqueueSyncRequest:withMessageID:priority:options:userContext:callback:.cold.2()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_2_5(&dword_1DF835000, v0, v1, "Input request options: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)enqueueSyncRequest:withMessageID:priority:options:userContext:callback:.cold.4()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_2_5(&dword_1DF835000, v0, v1, "Coalesced IDS options: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)enqueueSyncRequest:(void *)a1 withMessageID:priority:options:userContext:callback:.cold.6(void *a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = a1;
  v3 = OUTLINED_FUNCTION_7();
  v4 = _SYObfuscate(v3);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_4_2(&dword_1DF835000, v5, v6, "Failed to wrap message: %{public}@", v7, v8, v9, v10, v12);

  v11 = *MEMORY[0x1E69E9840];
}

void __81__SYMessengerSyncEngine_outputStreamWithMetadata_priority_options_context_error___block_invoke_cold_2(void *a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v2 = a1;
  v3 = [OUTLINED_FUNCTION_7() streamError];
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_4_2(&dword_1DF835000, v4, v5, "Error writing to URL for file transfer: %{public}@", v6, v7, v8, v9, v11);

  v10 = *MEMORY[0x1E69E9840];
}

void __81__SYMessengerSyncEngine_outputStreamWithMetadata_priority_options_context_error___block_invoke_cold_4()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_5_0();
  _os_log_error_impl(&dword_1DF835000, v0, OS_LOG_TYPE_ERROR, "Failed to delete unused file-transfer file: %{public}@", v2, 0xCu);
  v1 = *MEMORY[0x1E69E9840];
}

void __46__SYMessengerSyncEngine__hookupMessageHandler__block_invoke_2_cold_2(uint64_t a1, uint64_t a2, os_log_t log)
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 40);
  v5[0] = 67109378;
  v5[1] = v3;
  v6 = 2114;
  v7 = a2;
  _os_log_error_impl(&dword_1DF835000, log, OS_LOG_TYPE_ERROR, "Error sending message with ID %{companionsync:SYMessageID}hu: %{public}@", v5, 0x12u);
  v4 = *MEMORY[0x1E69E9840];
}

void __46__SYMessengerSyncEngine__hookupMessageHandler__block_invoke_85_cold_2(void *a1, void *a2, uint64_t a3)
{
  v11 = *MEMORY[0x1E69E9840];
  v5 = a1;
  v6 = [a2 data];
  [v6 length];
  OUTLINED_FUNCTION_5_0();
  v9 = 2114;
  v10 = a3;
  _os_log_error_impl(&dword_1DF835000, v5, 0x90u, "Out of band message with nil payload found! Request data has size %lu. First 20 bytes = %{public}@", v8, 0x16u);

  v7 = *MEMORY[0x1E69E9840];
}

- (void)_recordLastSeqNo:(void *)a1 .cold.2(void *a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = a1;
  v3 = OUTLINED_FUNCTION_7();
  v4 = _SYObfuscate(v3);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_4_2(&dword_1DF835000, v5, v6, "Failed to store incoming sequence number: %{public}@", v7, v8, v9, v10, v12);

  v11 = *MEMORY[0x1E69E9840];
}

- (void)messageCenter:(void *)a1 didReceiveUnknownRequest:.cold.2(void *a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = a1;
  v3 = OUTLINED_FUNCTION_7();
  v4 = _SYObfuscate(v3);
  OUTLINED_FUNCTION_5_0();
  _os_log_error_impl(&dword_1DF835000, v1, 0x90u, "Received an unknown message: %{public}@", v6, 0xCu);

  v5 = *MEMORY[0x1E69E9840];
}

- (void)messageCenter:(void *)a1 didReceiveIncomingFileTransfer:.cold.2(void *a1)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = a1;
  v3 = [OUTLINED_FUNCTION_7() idsIdentifier];
  OUTLINED_FUNCTION_5_0();
  _os_log_debug_impl(&dword_1DF835000, v1, OS_LOG_TYPE_DEBUG, "Incoming file: %{public}@", v5, 0xCu);

  v4 = *MEMORY[0x1E69E9840];
}

void __70__SYMessengerSyncEngine_messageCenter_didReceiveIncomingFileTransfer___block_invoke_cold_2()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_5_0();
  _os_log_error_impl(&dword_1DF835000, v0, OS_LOG_TYPE_ERROR, "Failed to process incoming file transfer: %{public}@", v2, 0xCu);
  v1 = *MEMORY[0x1E69E9840];
}

- (void)messageCenter:(void *)a1 didResolveIDSIdentifierForRequest:(void *)a2 .cold.2(void *a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v4 = a1;
  v5 = [OUTLINED_FUNCTION_7() messageID];
  v6 = [a2 idsIdentifier];
  v8[0] = 67109378;
  v8[1] = v5;
  v9 = 2114;
  v10 = v6;
  _os_log_debug_impl(&dword_1DF835000, v2, OS_LOG_TYPE_DEBUG, "Sent %{companionsync:SYMessageID}hu: %{public}@", v8, 0x12u);

  v7 = *MEMORY[0x1E69E9840];
}

- (void)messageCenter:(void *)a1 didResolveIDSIdentifier:(void *)a2 forResponse:(uint64_t)a3 .cold.2(void *a1, void *a2, uint64_t a3)
{
  v14 = *MEMORY[0x1E69E9840];
  v5 = a1;
  v6 = [a2 messageID];
  v7 = [a2 idsIdentifier];
  v9[0] = 67109634;
  v9[1] = v6;
  v10 = 2114;
  v11 = v7;
  v12 = 2114;
  v13 = a3;
  _os_log_debug_impl(&dword_1DF835000, v5, OS_LOG_TYPE_DEBUG, "Sent response to %{companionsync:SYMessageID}hu (%{public}@): %{public}@", v9, 0x1Cu);

  v8 = *MEMORY[0x1E69E9840];
}

- (void)messageCenter:didResolveIDSIdentifier:forFileTransfer:.cold.2()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_2_5(&dword_1DF835000, v0, v1, "Sent file: %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)messageCenter:didSuccessfullySendRequestWithIdentifier:userInfo:.cold.2()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_2_5(&dword_1DF835000, v0, v1, "Device-level ACK for %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)messageCenter:didSuccessfullyDeliverRequestWithIdentifier:userInfo:.cold.2()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_2_5(&dword_1DF835000, v0, v1, "App-level ACK for %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)messageCenter:failedToSendMessageWithIdentifier:error:userInfo:.cold.2()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_5_0();
  v4 = 2114;
  v5 = v0;
  _os_log_error_impl(&dword_1DF835000, v1, OS_LOG_TYPE_ERROR, "Message send failure for %{public}@: %{public}@", v3, 0x16u);
  v2 = *MEMORY[0x1E69E9840];
}

- (void)messageCenter:(void *)a3 failedToSendMessageWithIdentifier:error:userInfo:.cold.4(uint64_t a1, void *a2, void *a3)
{
  v12 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = _SYObfuscate(a3);
  v8 = 138543618;
  v9 = a1;
  v10 = 2114;
  v11 = v6;
  _os_log_debug_impl(&dword_1DF835000, v5, OS_LOG_TYPE_DEBUG, "Send failure: %{public}@, error=%{public}@", &v8, 0x16u);

  v7 = *MEMORY[0x1E69E9840];
}

@end