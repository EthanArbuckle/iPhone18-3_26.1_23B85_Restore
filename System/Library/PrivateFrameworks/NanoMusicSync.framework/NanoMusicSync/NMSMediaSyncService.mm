@interface NMSMediaSyncService
- (BOOL)_sendUrgentServiceResponseWithError:(id)error idsMessageID:(id)d timeout:(double)timeout;
- (BOOL)_sendUrgentServiceResultMessage:(id)message idsMessageID:(id)d timeout:(double)timeout;
- (Class)_modelClassForContainerType:(int)type;
- (NMSMediaSyncService)init;
- (id)_defaultPairedDevice;
- (id)_idsMessageOptionsWithTimeout:(double)timeout;
- (id)_midDataFromModelObject:(id)object;
- (id)_sendUrgentMessage:(id)message messageType:(int64_t)type timeout:(double)timeout completion:(id)completion;
- (id)_sendUrgentProtoBufForMessage:(id)message messageType:(int64_t)type timeout:(double)timeout error:(id *)error;
- (int)_containerTypeForModelObject:(id)object;
- (int)_convertMPModelObjectKeepLocalEnableState:(int64_t)state;
- (int)_convertNMSKeepLocalRequestCellularPolicy:(unint64_t)policy;
- (int)_convertNMSKeepLocalRequestPowerPolicy:(unint64_t)policy;
- (int)_nmsQOSFromNSQOS:(int64_t)s;
- (int64_t)_convertMediaSyncServiceKeepLocalEnableState:(int)state;
- (int64_t)_nsQOSFromNMSQOS:(int)s;
- (unint64_t)_convertMediaSyncServiceKeepLocalCellularPolicy:(int)policy;
- (unint64_t)_convertMediaSyncServiceKeepLocalPowerPolicy:(int)policy;
- (unint64_t)_nmsKeepLocalExceptionFromNMSSyncServiceException:(int)exception;
- (void)_callAndRemoveKeepLocalCompletionWithIDSMessageID:(id)d error:(id)error;
- (void)_cleanupKeepLocalCompletionWithID:(id)d;
- (void)_handleMediaSyncServiceKeepLocalRequest:(id)request service:(id)service account:(id)account fromID:(id)d context:(id)context;
- (void)_handleMediaSyncServiceKeepLocalResponse:(id)response service:(id)service account:(id)account fromID:(id)d context:(id)context;
- (void)_performFailSafeWithIDSMessageIdentifier:(id)identifier timeout:(double)timeout;
- (void)_setMessage:(id)message withValidatorException:(unint64_t)exception;
- (void)_setProtobufHandlers;
- (void)dealloc;
- (void)performKeepLocalRequestWithEnableState:(int64_t)state modelObject:(id)object options:(id)options completion:(id)completion;
- (void)service:(id)service account:(id)account identifier:(id)identifier didSendWithSuccess:(BOOL)success error:(id)error context:(id)context;
- (void)service:(id)service account:(id)account incomingUnhandledProtobuf:(id)protobuf fromID:(id)d context:(id)context;
@end

@implementation NMSMediaSyncService

- (NMSMediaSyncService)init
{
  v24 = *MEMORY[0x277D85DE8];
  v21.receiver = self;
  v21.super_class = NMSMediaSyncService;
  v2 = [(NMSMediaSyncService *)&v21 init];
  if (v2)
  {
    v3 = [objc_alloc(MEMORY[0x277D18778]) initWithService:@"com.apple.private.alloy.nanomediasync"];
    service = v2->_service;
    v2->_service = v3;

    [(NMSMediaSyncService *)v2 _setProtobufHandlers];
    v5 = MEMORY[0x277CCACA8];
    mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
    bundleIdentifier = [mainBundle bundleIdentifier];
    v8 = objc_opt_class();
    v9 = NSStringFromClass(v8);
    v10 = [v5 stringWithFormat:@"%@.%@.idsActionHandlerQueue", bundleIdentifier, v9];
    uTF8String = [v10 UTF8String];

    v12 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v13 = dispatch_queue_attr_make_with_qos_class(v12, QOS_CLASS_USER_INITIATED, 0);
    v14 = dispatch_queue_create(uTF8String, v13);
    idsActionHandlerQueue = v2->_idsActionHandlerQueue;
    v2->_idsActionHandlerQueue = v14;

    [(IDSService *)v2->_service addDelegate:v2 queue:v2->_idsActionHandlerQueue];
    v16 = objc_alloc_init(MEMORY[0x277CBEB38]);
    keepLocalCompletionsByIDSMsgID = v2->_keepLocalCompletionsByIDSMsgID;
    v2->_keepLocalCompletionsByIDSMsgID = v16;
  }

  v18 = NMLogForCategory(5);
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v23 = v2;
    _os_log_impl(&dword_25B27B000, v18, OS_LOG_TYPE_DEFAULT, "NMSMediaSyncService - init: %p", buf, 0xCu);
  }

  v19 = *MEMORY[0x277D85DE8];
  return v2;
}

- (void)dealloc
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = NMLogForCategory(5);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    selfCopy = self;
    _os_log_impl(&dword_25B27B000, v3, OS_LOG_TYPE_DEFAULT, "NMSMediaSyncService - dealloc: %p", buf, 0xCu);
  }

  v5.receiver = self;
  v5.super_class = NMSMediaSyncService;
  [(NMSMediaSyncService *)&v5 dealloc];
  v4 = *MEMORY[0x277D85DE8];
}

- (void)performKeepLocalRequestWithEnableState:(int64_t)state modelObject:(id)object options:(id)options completion:(id)completion
{
  optionsCopy = options;
  completionCopy = completion;
  objectCopy = object;
  v12 = objc_alloc_init(NMSMediaSyncServiceKeepLocalRequest);
  [(NMSMediaSyncServiceKeepLocalRequest *)v12 setEnableState:[(NMSMediaSyncService *)self _convertMPModelObjectKeepLocalEnableState:state]];
  v13 = objc_alloc_init(NMSMediaSyncServiceModelObject);
  v14 = [(NMSMediaSyncService *)self _midDataFromModelObject:objectCopy];
  [(NMSMediaSyncServiceModelObject *)v13 setDataMultiverseID:v14];

  v15 = [(NMSMediaSyncService *)self _containerTypeForModelObject:objectCopy];
  [(NMSMediaSyncServiceModelObject *)v13 setContainerType:v15];
  [(NMSMediaSyncServiceKeepLocalRequest *)v12 setModelObject:v13];
  v16 = optionsCopy;
  if (optionsCopy)
  {
    v17 = objc_alloc_init(NMSMediaSyncServiceKeepLocalOptions);
    -[NMSMediaSyncServiceKeepLocalOptions setRequiresValidation:](v17, "setRequiresValidation:", [optionsCopy requiresValidation]);
    cellularBundleIdentifier = [optionsCopy cellularBundleIdentifier];
    [(NMSMediaSyncServiceKeepLocalOptions *)v17 setCellularBundleIdentifier:cellularBundleIdentifier];

    -[NMSMediaSyncServiceKeepLocalOptions setDownloadOnCellularPolicy:](v17, "setDownloadOnCellularPolicy:", -[NMSMediaSyncService _convertNMSKeepLocalRequestCellularPolicy:](self, "_convertNMSKeepLocalRequestCellularPolicy:", [optionsCopy cellularPolicy]));
    -[NMSMediaSyncServiceKeepLocalOptions setDownloadOffPowerPolicy:](v17, "setDownloadOffPowerPolicy:", -[NMSMediaSyncService _convertNMSKeepLocalRequestPowerPolicy:](self, "_convertNMSKeepLocalRequestPowerPolicy:", [optionsCopy powerPolicy]));
    -[NMSMediaSyncServiceKeepLocalOptions setQualityOfService:](v17, "setQualityOfService:", -[NMSMediaSyncService _nmsQOSFromNSQOS:](self, "_nmsQOSFromNSQOS:", [optionsCopy qualityOfService]));
    [optionsCopy timeout];
    [(NMSMediaSyncServiceKeepLocalOptions *)v17 setTimeout:?];
    [(NMSMediaSyncServiceKeepLocalRequest *)v12 setOptions:v17];

    v16 = optionsCopy;
  }

  [v16 timeout];
  if (v19 <= 0.0)
  {
    v21 = *MEMORY[0x277D18828];
  }

  else
  {
    [optionsCopy timeout];
    v21 = v20;
  }

  v22 = [(NMSMediaSyncService *)self _sendUrgentMessage:v12 messageType:1 timeout:completionCopy completion:v21];
  v23 = v22;
  if (completionCopy && v22)
  {
    [(NMSMediaSyncService *)self _performFailSafeWithIDSMessageIdentifier:v22 timeout:v21];
  }
}

- (int)_containerTypeForModelObject:(id)object
{
  objectCopy = object;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = 0;
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v6 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE658] reason:@"Unsupported model type. Not allowed." userInfo:0];
      objc_exception_throw(v6);
    }

    v4 = 1;
  }

  return v4;
}

- (id)_midDataFromModelObject:(id)object
{
  objectCopy = object;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = MEMORY[0x277D2B598];
    v5 = MEMORY[0x277CCABB0];
    identifiers = [objectCopy identifiers];
    library = [identifiers library];
    v8 = [v5 numberWithLongLong:{objc_msgSend(library, "persistentID")}];
    v9 = [v4 midDataFromAlbumPID:v8];
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v14 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE658] reason:@"Unsupported model type. Not allowed." userInfo:0];
      objc_exception_throw(v14);
    }

    v10 = MEMORY[0x277D2B598];
    v11 = MEMORY[0x277CCABB0];
    identifiers = [objectCopy identifiers];
    library = [identifiers library];
    v8 = [v11 numberWithLongLong:{objc_msgSend(library, "persistentID")}];
    v9 = [v10 midDataFromPlaylistPID:v8];
  }

  v12 = v9;

  return v12;
}

- (void)_performFailSafeWithIDSMessageIdentifier:(id)identifier timeout:(double)timeout
{
  identifierCopy = identifier;
  v7 = dispatch_time(0, (timeout * 1000000000.0));
  idsActionHandlerQueue = self->_idsActionHandlerQueue;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __72__NMSMediaSyncService__performFailSafeWithIDSMessageIdentifier_timeout___block_invoke;
  v10[3] = &unk_27993E570;
  v10[4] = self;
  v11 = identifierCopy;
  v9 = identifierCopy;
  dispatch_after(v7, idsActionHandlerQueue, v10);
}

- (void)_cleanupKeepLocalCompletionWithID:(id)d
{
  dCopy = d;
  dispatch_assert_queue_V2(self->_idsActionHandlerQueue);
  v5 = [(NSMutableDictionary *)self->_keepLocalCompletionsByIDSMsgID objectForKey:dCopy];
  if (v5)
  {
    v6 = NMLogForCategory(5);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [NMSMediaSyncService _cleanupKeepLocalCompletionWithID:];
    }

    v7 = [MEMORY[0x277CCA9B8] errorWithDomain:@"NMSKeepLocalRequestErrorDomain" code:2 userInfo:0];
    (v5)[2](v5, v7);
    [(NSMutableDictionary *)self->_keepLocalCompletionsByIDSMsgID removeObjectForKey:dCopy];
  }
}

- (id)_sendUrgentMessage:(id)message messageType:(int64_t)type timeout:(double)timeout completion:(id)completion
{
  v36 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  v27 = 0;
  v11 = [(NMSMediaSyncService *)self _sendUrgentProtoBufForMessage:message messageType:type timeout:&v27 error:timeout];
  v12 = v27;
  v13 = v12;
  if (completionCopy)
  {
    if (v11)
    {
      v14 = NMLogForCategory(5);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v15 = MEMORY[0x25F865990](completionCopy);
        v16 = [(NSMutableDictionary *)self->_keepLocalCompletionsByIDSMsgID count];
        *buf = 134218498;
        v31 = v15;
        v32 = 2112;
        v33 = v11;
        v34 = 2048;
        v35 = v16;
        _os_log_impl(&dword_25B27B000, v14, OS_LOG_TYPE_DEFAULT, "Adding completion-handler %p for ID=%@. Total-pending: %lu", buf, 0x20u);
      }

      idsActionHandlerQueue = self->_idsActionHandlerQueue;
      v24[0] = MEMORY[0x277D85DD0];
      v24[1] = 3221225472;
      v24[2] = __73__NMSMediaSyncService__sendUrgentMessage_messageType_timeout_completion___block_invoke;
      v24[3] = &unk_27993E8A8;
      v24[4] = self;
      v26 = completionCopy;
      v25 = v11;
      dispatch_async(idsActionHandlerQueue, v24);
    }

    else
    {
      v18 = MEMORY[0x277CCA9B8];
      v28 = *MEMORY[0x277CCA7E8];
      v29 = v12;
      v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v29 forKeys:&v28 count:1];
      v20 = [v18 errorWithDomain:@"NMSKeepLocalRequestErrorDomain" code:0 userInfo:v19];

      (*(completionCopy + 2))(completionCopy, v20);
      v21 = NMLogForCategory(5);
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        [NMSMediaSyncService _sendUrgentMessage:v21 messageType:? timeout:? completion:?];
      }
    }
  }

  v22 = *MEMORY[0x277D85DE8];

  return v11;
}

void __73__NMSMediaSyncService__sendUrgentMessage_messageType_timeout_completion___block_invoke(void *a1)
{
  v2 = *(a1[4] + 24);
  v3 = MEMORY[0x25F865990](a1[6]);
  [v2 setObject:v3 forKey:a1[5]];
}

- (id)_sendUrgentProtoBufForMessage:(id)message messageType:(int64_t)type timeout:(double)timeout error:(id *)error
{
  typeCopy = type;
  v34 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  v11 = objc_alloc(MEMORY[0x277D189F0]);
  data = [messageCopy data];
  v13 = [v11 initWithProtobufData:data type:typeCopy isResponse:0];

  _defaultPairedDevice = [(NMSMediaSyncService *)self _defaultPairedDevice];
  service = self->_service;
  v16 = MEMORY[0x277CBEB98];
  v17 = IDSCopyIDForDevice();
  v18 = [v16 setWithObject:v17];
  v19 = [(NMSMediaSyncService *)self _idsMessageOptionsWithTimeout:timeout];
  v27 = 0;
  v20 = [(IDSService *)service sendProtobuf:v13 toDestinations:v18 priority:300 options:v19 identifier:&v27 error:error];
  v21 = v27;

  v22 = NMLogForCategory(5);
  v23 = v22;
  if (v20)
  {
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v29 = messageCopy;
      v30 = 2112;
      v31 = v21;
      _os_log_impl(&dword_25B27B000, v23, OS_LOG_TYPE_DEFAULT, "Successfully requested send of IDS message (%@) with ID: %@.", buf, 0x16u);
    }
  }

  else if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
  {
    if (error)
    {
      v26 = *error;
    }

    else
    {
      v26 = 0;
    }

    *buf = 138412802;
    v29 = messageCopy;
    v30 = 2112;
    v31 = v21;
    v32 = 2112;
    v33 = v26;
    _os_log_error_impl(&dword_25B27B000, v23, OS_LOG_TYPE_ERROR, "Failed to request send of IDS message (%@) with ID: %@. Error: %@", buf, 0x20u);
  }

  v24 = *MEMORY[0x277D85DE8];

  return v21;
}

- (id)_idsMessageOptionsWithTimeout:(double)timeout
{
  v10[3] = *MEMORY[0x277D85DE8];
  v9[0] = *MEMORY[0x277D18650];
  v3 = [MEMORY[0x277CCABB0] numberWithDouble:timeout];
  v4 = *MEMORY[0x277D185D0];
  v10[0] = v3;
  v10[1] = MEMORY[0x277CBEC38];
  v5 = *MEMORY[0x277D185B0];
  v9[1] = v4;
  v9[2] = v5;
  v10[2] = MEMORY[0x277CBEC38];
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:v9 count:3];

  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

- (id)_defaultPairedDevice
{
  v14 = *MEMORY[0x277D85DE8];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  devices = [(IDSService *)self->_service devices];
  v3 = [devices countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = *v10;
    while (2)
    {
      for (i = 0; i != v3; i = i + 1)
      {
        if (*v10 != v4)
        {
          objc_enumerationMutation(devices);
        }

        v6 = *(*(&v9 + 1) + 8 * i);
        if ([v6 isDefaultPairedDevice])
        {
          v3 = v6;
          goto LABEL_11;
        }
      }

      v3 = [devices countByEnumeratingWithState:&v9 objects:v13 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v7 = *MEMORY[0x277D85DE8];

  return v3;
}

- (void)_setProtobufHandlers
{
  [(IDSService *)self->_service setProtobufAction:sel__handleMediaSyncServiceKeepLocalRequest_service_account_fromID_context_ forIncomingRequestsOfType:1];
  service = self->_service;

  [(IDSService *)service setProtobufAction:sel__handleMediaSyncServiceKeepLocalResponse_service_account_fromID_context_ forIncomingRequestsOfType:2];
}

- (BOOL)_sendUrgentServiceResultMessage:(id)message idsMessageID:(id)d timeout:(double)timeout
{
  v33 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  dCopy = d;
  _defaultPairedDevice = [(NMSMediaSyncService *)self _defaultPairedDevice];
  v11 = [(NMSMediaSyncService *)self _idsMessageOptionsWithTimeout:timeout];
  v12 = [MEMORY[0x277CBEB38] dictionaryWithDictionary:v11];
  [v12 setObject:dCopy forKey:*MEMORY[0x277D18610]];

  v13 = NMLogForCategory(5);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v28 = _defaultPairedDevice;
    _os_log_impl(&dword_25B27B000, v13, OS_LOG_TYPE_DEFAULT, "Sending validation result IDS message to default paired device: %@", buf, 0xCu);
  }

  service = self->_service;
  v15 = MEMORY[0x277CBEB98];
  v16 = IDSCopyIDForDevice();
  v17 = [v15 setWithObject:v16];
  v25 = 0;
  v26 = 0;
  v18 = [(IDSService *)service sendProtobuf:messageCopy toDestinations:v17 priority:300 options:v12 identifier:&v26 error:&v25];
  v19 = v26;
  v20 = v25;

  v21 = NMLogForCategory(5);
  v22 = v21;
  if (v18)
  {
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v28 = messageCopy;
      v29 = 2112;
      v30 = v19;
      _os_log_impl(&dword_25B27B000, v22, OS_LOG_TYPE_DEFAULT, "Successfully requested send of IDS message (%@) with ID: %@.", buf, 0x16u);
    }
  }

  else if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412802;
    v28 = messageCopy;
    v29 = 2112;
    v30 = v19;
    v31 = 2112;
    v32 = v20;
    _os_log_error_impl(&dword_25B27B000, v22, OS_LOG_TYPE_ERROR, "Failed to request send of IDS message (%@) with ID: %@. Error: %@", buf, 0x20u);
  }

  v23 = *MEMORY[0x277D85DE8];
  return v18;
}

- (BOOL)_sendUrgentServiceResponseWithError:(id)error idsMessageID:(id)d timeout:(double)timeout
{
  errorCopy = error;
  dCopy = d;
  v10 = objc_opt_new();
  v11 = v10;
  if (errorCopy)
  {
    [v10 setErrorCode:0];
    domain = [errorCopy domain];
    v13 = [domain isEqualToString:@"NMSKeepLocalRequestErrorDomain"];

    if (!v13)
    {
      userInfo = NMLogForCategory(5);
      if (os_log_type_enabled(userInfo, OS_LOG_TYPE_ERROR))
      {
        [NMSMediaSyncService _sendUrgentServiceResponseWithError:idsMessageID:timeout:];
      }

      goto LABEL_7;
    }

    if ([errorCopy code] == 1)
    {
      [v11 setErrorCode:1];
      userInfo = [errorCopy userInfo];
      v15 = [userInfo objectForKey:@"NMSKeepLocalRequestErrorValidatorExceptionKey"];
      -[NMSMediaSyncService _setMessage:withValidatorException:](self, "_setMessage:withValidatorException:", v11, [v15 unsignedIntegerValue]);

LABEL_7:
    }
  }

  v16 = objc_alloc(MEMORY[0x277D189F0]);
  data = [v11 data];
  v18 = [v16 initWithProtobufData:data type:2 isResponse:0];

  v19 = [(NMSMediaSyncService *)self _sendUrgentServiceResultMessage:v18 idsMessageID:dCopy timeout:timeout];
  return v19;
}

- (void)_setMessage:(id)message withValidatorException:(unint64_t)exception
{
  messageCopy = message;
  if (!exception)
  {
    goto LABEL_9;
  }

  v6 = messageCopy;
  if ((exception & 2) != 0)
  {
    [messageCopy addValidatorException:1];
    messageCopy = v6;
    if ((exception & 4) == 0)
    {
LABEL_4:
      if ((exception & 0x40) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_14;
    }
  }

  else if ((exception & 4) == 0)
  {
    goto LABEL_4;
  }

  [v6 addValidatorException:2];
  messageCopy = v6;
  if ((exception & 0x40) == 0)
  {
LABEL_5:
    if ((exception & 8) == 0)
    {
      goto LABEL_6;
    }

LABEL_15:
    [v6 addValidatorException:3];
    messageCopy = v6;
    if ((exception & 0x10) == 0)
    {
LABEL_7:
      if ((exception & 0x20) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_8;
    }

    goto LABEL_16;
  }

LABEL_14:
  [v6 addValidatorException:6];
  messageCopy = v6;
  if ((exception & 8) != 0)
  {
    goto LABEL_15;
  }

LABEL_6:
  if ((exception & 0x10) == 0)
  {
    goto LABEL_7;
  }

LABEL_16:
  [v6 addValidatorException:4];
  messageCopy = v6;
  if ((exception & 0x20) != 0)
  {
LABEL_8:
    [v6 addValidatorException:5];
    messageCopy = v6;
  }

LABEL_9:
}

- (Class)_modelClassForContainerType:(int)type
{
  if (type)
  {
    if (type != 1)
    {
      v7 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE658] reason:@"Unsupported container type specified." userInfo:0];
      objc_exception_throw(v7);
    }

    v3 = 0x277CD5EF0;
  }

  else
  {
    v3 = 0x277CD5E40;
  }

  v4 = *v3;
  v5 = objc_opt_class();

  return v5;
}

- (void)_callAndRemoveKeepLocalCompletionWithIDSMessageID:(id)d error:(id)error
{
  v21 = *MEMORY[0x277D85DE8];
  dCopy = d;
  errorCopy = error;
  dispatch_assert_queue_V2(self->_idsActionHandlerQueue);
  v8 = [(NSMutableDictionary *)self->_keepLocalCompletionsByIDSMsgID objectForKey:dCopy];
  v9 = v8;
  if (v8)
  {
    (*(v8 + 16))(v8, errorCopy);
    [(NSMutableDictionary *)self->_keepLocalCompletionsByIDSMsgID removeObjectForKey:dCopy];
    v10 = NMLogForCategory(5);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = MEMORY[0x25F865990](v9);
      v12 = [(NSMutableDictionary *)self->_keepLocalCompletionsByIDSMsgID count];
      v15 = 134218498;
      v16 = v11;
      v17 = 2114;
      v18 = dCopy;
      v19 = 2048;
      v20 = v12;
      _os_log_impl(&dword_25B27B000, v10, OS_LOG_TYPE_DEFAULT, "Called and removed completion-handler %p for ID=<%{public}@>. Total-pending: %lu", &v15, 0x20u);
    }
  }

  else
  {
    v10 = NMLogForCategory(5);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v13 = [(NSMutableDictionary *)self->_keepLocalCompletionsByIDSMsgID count];
      v15 = 138543618;
      v16 = dCopy;
      v17 = 2048;
      v18 = v13;
      _os_log_impl(&dword_25B27B000, v10, OS_LOG_TYPE_DEFAULT, "Unable to find completion-handler for ID=<%{public}@>. Total-pending: %lu", &v15, 0x16u);
    }
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)service:(id)service account:(id)account incomingUnhandledProtobuf:(id)protobuf fromID:(id)d context:(id)context
{
  serviceCopy = service;
  protobufCopy = protobuf;
  v10 = NMLogForCategory(5);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    [NMSMediaSyncService service:account:incomingUnhandledProtobuf:fromID:context:];
  }
}

- (void)service:(id)service account:(id)account identifier:(id)identifier didSendWithSuccess:(BOOL)success error:(id)error context:(id)context
{
  successCopy = success;
  v35 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  errorCopy = error;
  v13 = NMLogForCategory(5);
  v14 = v13;
  if (!successCopy)
  {
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [NMSMediaSyncService service:account:identifier:didSendWithSuccess:error:context:];
    }

    domain = [errorCopy domain];
    v16 = *MEMORY[0x277D18538];
    if ([domain isEqualToString:*MEMORY[0x277D18538]])
    {
      code = [errorCopy code];

      if (code == 43)
      {
        v18 = MEMORY[0x277CCA9B8];
        v31 = *MEMORY[0x277CCA7E8];
        v32 = errorCopy;
        v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v32 forKeys:&v31 count:1];
        v20 = v18;
        v21 = 3;
LABEL_15:
        v14 = [v20 errorWithDomain:@"NMSKeepLocalRequestErrorDomain" code:v21 userInfo:v19];

        [(NMSMediaSyncService *)self _callAndRemoveKeepLocalCompletionWithIDSMessageID:identifierCopy error:v14];
        goto LABEL_16;
      }
    }

    else
    {
    }

    domain2 = [errorCopy domain];
    if ([domain2 isEqualToString:v16])
    {
      code2 = [errorCopy code];

      if (code2 == 23)
      {
        v24 = MEMORY[0x277CCA9B8];
        v29 = *MEMORY[0x277CCA7E8];
        v30 = errorCopy;
        v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v30 forKeys:&v29 count:1];
        v20 = v24;
        v21 = 2;
        goto LABEL_15;
      }
    }

    else
    {
    }

    v25 = MEMORY[0x277CCA9B8];
    v27 = *MEMORY[0x277CCA7E8];
    v28 = errorCopy;
    v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v28 forKeys:&v27 count:1];
    v20 = v25;
    v21 = 0;
    goto LABEL_15;
  }

  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v34 = identifierCopy;
    _os_log_impl(&dword_25B27B000, v14, OS_LOG_TYPE_DEFAULT, "Successfully sent message (ID: %@).", buf, 0xCu);
  }

LABEL_16:

  v26 = *MEMORY[0x277D85DE8];
}

- (void)_handleMediaSyncServiceKeepLocalRequest:(id)request service:(id)service account:(id)account fromID:(id)d context:(id)context
{
  v44 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  idsActionHandlerQueue = self->_idsActionHandlerQueue;
  requestCopy = request;
  dispatch_assert_queue_V2(idsActionHandlerQueue);
  v12 = [NMSMediaSyncServiceKeepLocalRequest alloc];
  data = [requestCopy data];

  v14 = [(NMSMediaSyncServiceKeepLocalRequest *)v12 initWithData:data];
  v15 = NMLogForCategory(5);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v43 = v14;
    _os_log_impl(&dword_25B27B000, v15, OS_LOG_TYPE_DEFAULT, "NMSMediaSyncService - _handleMediaSyncServiceKeepLocalRequest: %@", buf, 0xCu);
  }

  v16 = MEMORY[0x277D2B598];
  modelObject = [(NMSMediaSyncServiceKeepLocalRequest *)v14 modelObject];
  dataMultiverseID = [modelObject dataMultiverseID];
  v19 = [v16 pidFromMIDData:dataMultiverseID];
  longLongValue = [v19 longLongValue];

  modelObject2 = [(NMSMediaSyncServiceKeepLocalRequest *)v14 modelObject];
  v22 = -[NMSMediaSyncService _modelClassForContainerType:](self, "_modelClassForContainerType:", [modelObject2 containerType]);

  v23 = [(objc_class *)v22 nms_modelObjectWithLibraryPersistentID:longLongValue];
  v24 = [(NMSMediaSyncService *)self _convertMediaSyncServiceKeepLocalEnableState:[(NMSMediaSyncServiceKeepLocalRequest *)v14 enableState]];
  v25 = objc_alloc_init(NMSKeepLocalRequestOptions);
  options = [(NMSMediaSyncServiceKeepLocalRequest *)v14 options];
  -[NMSKeepLocalRequestOptions setRequiresValidation:](v25, "setRequiresValidation:", [options requiresValidation]);

  options2 = [(NMSMediaSyncServiceKeepLocalRequest *)v14 options];
  cellularBundleIdentifier = [options2 cellularBundleIdentifier];
  [(NMSKeepLocalRequestOptions *)v25 setCellularBundleIdentifier:cellularBundleIdentifier];

  options3 = [(NMSMediaSyncServiceKeepLocalRequest *)v14 options];
  -[NMSKeepLocalRequestOptions setPowerPolicy:](v25, "setPowerPolicy:", -[NMSMediaSyncService _convertMediaSyncServiceKeepLocalPowerPolicy:](self, "_convertMediaSyncServiceKeepLocalPowerPolicy:", [options3 downloadOffPowerPolicy]));

  options4 = [(NMSMediaSyncServiceKeepLocalRequest *)v14 options];
  -[NMSKeepLocalRequestOptions setCellularPolicy:](v25, "setCellularPolicy:", -[NMSMediaSyncService _convertMediaSyncServiceKeepLocalCellularPolicy:](self, "_convertMediaSyncServiceKeepLocalCellularPolicy:", [options4 downloadOnCellularPolicy]));

  options5 = [(NMSMediaSyncServiceKeepLocalRequest *)v14 options];
  -[NMSKeepLocalRequestOptions setQualityOfService:](v25, "setQualityOfService:", -[NMSMediaSyncService _nsQOSFromNMSQOS:](self, "_nsQOSFromNMSQOS:", [options5 qualityOfService]));

  options6 = [(NMSMediaSyncServiceKeepLocalRequest *)v14 options];
  LODWORD(cellularBundleIdentifier) = [options6 hasTimeout];

  if (cellularBundleIdentifier)
  {
    options7 = [(NMSMediaSyncServiceKeepLocalRequest *)v14 options];
    [options7 timeout];
    [(NMSKeepLocalRequestOptions *)v25 setTimeout:?];
  }

  v34 = [[NMSKeepLocalRequestLocal alloc] initWithModelObject:v23 enableState:v24];
  v38[0] = MEMORY[0x277D85DD0];
  v38[1] = 3221225472;
  v38[2] = __94__NMSMediaSyncService__handleMediaSyncServiceKeepLocalRequest_service_account_fromID_context___block_invoke;
  v38[3] = &unk_27993E8D0;
  v39 = v25;
  selfCopy = self;
  v41 = contextCopy;
  v35 = contextCopy;
  v36 = v25;
  [(NMSKeepLocalRequestLocal *)v34 performWithOptions:v36 completion:v38];

  v37 = *MEMORY[0x277D85DE8];
}

void __94__NMSMediaSyncService__handleMediaSyncServiceKeepLocalRequest_service_account_fromID_context___block_invoke(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = NMLogForCategory(5);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138412290;
    v12 = v3;
    _os_log_impl(&dword_25B27B000, v4, OS_LOG_TYPE_DEFAULT, "Result of perform KeepLocal task. Error: %@", &v11, 0xCu);
  }

  [*(a1 + 32) timeout];
  if (v5 <= 0.0)
  {
    v7 = *MEMORY[0x277D18828];
  }

  else
  {
    [*(a1 + 32) timeout];
    v7 = v6;
  }

  v8 = *(a1 + 40);
  v9 = [*(a1 + 48) outgoingResponseIdentifier];
  [v8 _sendUrgentServiceResponseWithError:v3 idsMessageID:v9 timeout:v7];

  v10 = *MEMORY[0x277D85DE8];
}

- (void)_handleMediaSyncServiceKeepLocalResponse:(id)response service:(id)service account:(id)account fromID:(id)d context:(id)context
{
  v29 = *MEMORY[0x277D85DE8];
  responseCopy = response;
  contextCopy = context;
  dispatch_assert_queue_V2(self->_idsActionHandlerQueue);
  v11 = [NMSMediaSyncServiceKeepLocalResponse alloc];
  data = [responseCopy data];
  v13 = [(NMSMediaSyncServiceKeepLocalResponse *)v11 initWithData:data];

  v14 = NMLogForCategory(5);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v28 = v13;
    _os_log_impl(&dword_25B27B000, v14, OS_LOG_TYPE_DEFAULT, "NMSMediaSyncService - _handleMediaSyncServiceKeepLocalResponse: %@", buf, 0xCu);
  }

  if ([(NMSMediaSyncServiceKeepLocalResponse *)v13 hasErrorCode])
  {
    errorCode = [(NMSMediaSyncServiceKeepLocalResponse *)v13 errorCode];
    if (errorCode)
    {
      if (errorCode == 1)
      {
        v16 = 0;
        if ([(NMSMediaSyncServiceKeepLocalResponse *)v13 validatorExceptionsCount])
        {
          v17 = 0;
          do
          {
            v16 |= [(NMSMediaSyncService *)self _nmsKeepLocalExceptionFromNMSSyncServiceException:[(NMSMediaSyncServiceKeepLocalResponse *)v13 validatorExceptionAtIndex:v17++]];
          }

          while (v17 < [(NMSMediaSyncServiceKeepLocalResponse *)v13 validatorExceptionsCount]);
        }

        v18 = MEMORY[0x277CCA9B8];
        v19 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{v16, @"NMSKeepLocalRequestErrorValidatorExceptionKey"}];
        v26 = v19;
        v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v26 forKeys:&v25 count:1];
        v21 = [v18 errorWithDomain:@"NMSKeepLocalRequestErrorDomain" code:1 userInfo:v20];

LABEL_17:
        goto LABEL_18;
      }
    }

    else
    {
      v22 = NMLogForCategory(5);
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        [NMSMediaSyncService _handleMediaSyncServiceKeepLocalResponse:service:account:fromID:context:];
      }
    }

    v19 = NMLogForCategory(5);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      [NMSMediaSyncService _handleMediaSyncServiceKeepLocalResponse:service:account:fromID:context:];
    }

    v21 = 0;
    goto LABEL_17;
  }

  v21 = 0;
LABEL_18:
  incomingResponseIdentifier = [contextCopy incomingResponseIdentifier];
  [(NMSMediaSyncService *)self _callAndRemoveKeepLocalCompletionWithIDSMessageID:incomingResponseIdentifier error:v21];

  v24 = *MEMORY[0x277D85DE8];
}

- (unint64_t)_convertMediaSyncServiceKeepLocalCellularPolicy:(int)policy
{
  if (policy >= 3)
  {
    v6 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE658] reason:@"Unsupported Media Sync Service cellular policy specified." userInfo:{0, v3, v4}];
    objc_exception_throw(v6);
  }

  return policy;
}

- (int)_convertNMSKeepLocalRequestCellularPolicy:(unint64_t)policy
{
  if (policy >= 3)
  {
    v6 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE658] reason:@"Unsupported NMS cellular policy specified." userInfo:{0, v3, v4}];
    objc_exception_throw(v6);
  }

  return policy;
}

- (unint64_t)_convertMediaSyncServiceKeepLocalPowerPolicy:(int)policy
{
  if (policy >= 3)
  {
    v6 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE658] reason:@"Unsupported Media Sync Service power policy specified." userInfo:{0, v3, v4}];
    objc_exception_throw(v6);
  }

  return policy;
}

- (int)_convertNMSKeepLocalRequestPowerPolicy:(unint64_t)policy
{
  if (policy >= 3)
  {
    v6 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE658] reason:@"Unsupported NMS power policy specified." userInfo:{0, v3, v4}];
    objc_exception_throw(v6);
  }

  return policy;
}

- (int)_convertMPModelObjectKeepLocalEnableState:(int64_t)state
{
  if ((state + 1) >= 5)
  {
    v6 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE658] reason:@"Unknown KeepLocalEnableState specified." userInfo:{0, v3, v4}];
    objc_exception_throw(v6);
  }

  return dword_25B2CEC88[state + 1];
}

- (int64_t)_convertMediaSyncServiceKeepLocalEnableState:(int)state
{
  if (state >= 5)
  {
    v6 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE658] reason:@"Unknown NMS KeepLocalEnableState specified." userInfo:{0, v3, v4}];
    objc_exception_throw(v6);
  }

  return qword_25B2CECA0[state];
}

- (int)_nmsQOSFromNSQOS:(int64_t)s
{
  if (s <= 16)
  {
    if (s == -1)
    {
      return 0;
    }

    else
    {
      if (s != 9)
      {
        goto LABEL_12;
      }

      return 1;
    }
  }

  else
  {
    switch(s)
    {
      case 17:
        return 2;
      case 33:
        return 4;
      case 25:
        return 3;
      default:
LABEL_12:
        v6 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE658] reason:@"Unsupported NS-QOS specified." userInfo:{0, v3, v4}];
        objc_exception_throw(v6);
    }
  }
}

- (int64_t)_nsQOSFromNMSQOS:(int)s
{
  if (s >= 5)
  {
    v6 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE658] reason:@"Unsupported NMS-QOS specified." userInfo:{0, v3, v4}];
    objc_exception_throw(v6);
  }

  return qword_25B2CECC8[s];
}

- (unint64_t)_nmsKeepLocalExceptionFromNMSSyncServiceException:(int)exception
{
  if ((exception - 1) >= 6)
  {
    v6 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE658] reason:@"Unsupported KeepLocal validator exception specified." userInfo:{0, v3, v4}];
    objc_exception_throw(v6);
  }

  return qword_25B2CECF0[exception - 1];
}

- (void)_cleanupKeepLocalCompletionWithID:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_4(&dword_25B27B000, v0, v1, "_cleanupKeepLocalCompletionWithID - FAIL-SAFE: Found orphaned completion-handler for message ID: %@. Calling completion-handler and removing from pending list.", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)_sendUrgentServiceResponseWithError:idsMessageID:timeout:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_4(&dword_25B27B000, v0, v1, "Unknown error domain specified. error: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)service:account:incomingUnhandledProtobuf:fromID:context:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2_0(&dword_25B27B000, v0, v1, "UNHANDLED IDS Protobuf %@ for service %@ has been received. This should have a setProtobufAction assigned.");
  v2 = *MEMORY[0x277D85DE8];
}

- (void)service:account:identifier:didSendWithSuccess:error:context:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2_0(&dword_25B27B000, v0, v1, "Failed to send IDS message (ID: %@) with error %@.");
  v2 = *MEMORY[0x277D85DE8];
}

- (void)_handleMediaSyncServiceKeepLocalResponse:service:account:fromID:context:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_4(&dword_25B27B000, v0, v1, "NMSMediaSyncService - _handleMediaSyncServiceKeepLocalResponse: received a Generic error code from the remote device.  message: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)_handleMediaSyncServiceKeepLocalResponse:service:account:fromID:context:.cold.2()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_4(&dword_25B27B000, v0, v1, "NMSMediaSyncService - _handleMediaSyncServiceKeepLocalResponse: received a unknown error code from the remote device.  message: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

@end