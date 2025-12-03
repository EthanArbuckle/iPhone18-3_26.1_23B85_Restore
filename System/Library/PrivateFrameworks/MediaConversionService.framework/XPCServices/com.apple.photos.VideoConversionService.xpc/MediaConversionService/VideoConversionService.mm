@interface VideoConversionService
+ (id)resourceURLCollectionForDestinationBookmarkDictionary:(id)dictionary error:(id *)error;
+ (void)run;
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (BOOL)optionsRequirePhotosAdjustmentProcessing:(id)processing;
- (BOOL)validateRequestIdentifier:(id)identifier replyHandler:(id)handler;
- (VideoConversionService)init;
- (id)connectionTerminationEventHandlerForConnectionIdentifier:(id)identifier eventDescription:(id)description;
- (void)cancelJobsForConnectionWithIdentifier:(id)identifier;
- (void)conversionQueue:(id)queue cancelCurrentlyProcessingEntry:(id)entry;
- (void)conversionQueue:(id)queue didCancelQueuedEntry:(id)entry clientRequests:(id)requests;
- (void)conversionQueue:(id)queue processNextEntry:(id)entry;
- (void)convertVideoAtSourceBookmarkDictionary:(id)dictionary toDestinationBookmarkDictionary:(id)bookmarkDictionary options:(id)options replyHandler:(id)handler;
- (void)echo:(id)echo reply:(id)reply;
- (void)extractStillImageFromVideoAtSourceBookmarkDictionary:(id)dictionary toDestinationBookmarkDictionary:(id)bookmarkDictionary options:(id)options replyHandler:(id)handler;
- (void)generateGIFForVideoAtSourceBookmarkDictionary:(id)dictionary toDestinationBookmarkDictionary:(id)bookmarkDictionary options:(id)options replyHandler:(id)handler;
- (void)modifyJobWithIdentifier:(id)identifier modifications:(id)modifications;
- (void)performConversionOfClass:(Class)class forSourceBookmarkDictionary:(id)dictionary destinationBookmarkDictionary:(id)bookmarkDictionary options:(id)options replyHandler:(id)handler;
- (void)requestStatusWithReply:(id)reply;
- (void)run;
- (void)singlePassConvertVideoAtSourceBookmarkDictionary:(id)dictionary toDestinationBookmarkDictionary:(id)bookmarkDictionary options:(id)options replyHandler:(id)handler;
@end

@implementation VideoConversionService

- (id)connectionTerminationEventHandlerForConnectionIdentifier:(id)identifier eventDescription:(id)description
{
  identifierCopy = identifier;
  descriptionCopy = description;
  objc_initWeak(&location, self);
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10001B810;
  v12[3] = &unk_10003D660;
  objc_copyWeak(&v15, &location);
  v13 = identifierCopy;
  v14 = descriptionCopy;
  v8 = descriptionCopy;
  v9 = identifierCopy;
  v10 = objc_retainBlock(v12);

  objc_destroyWeak(&v15);
  objc_destroyWeak(&location);

  return v10;
}

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  connectionCopy = connection;
  v5 = +[NSUUID UUID];
  _xpcConnection = [connectionCopy _xpcConnection];
  pid = xpc_connection_get_pid(_xpcConnection);

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    *buf = 138543618;
    v27 = v5;
    v28 = 1024;
    v29 = pid;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "Connection %{public}@ [%d] accepted", buf, 0x12u);
  }

  v24 = @"PAMCS_CONNECTION_USER_INFO_CONNECTION_IDENTIFIER_KEY";
  v25 = v5;
  v22 = v5;
  v8 = [NSDictionary dictionaryWithObjects:&v25 forKeys:&v24 count:1];
  [connectionCopy setUserInfo:v8];

  v9 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___VideoConversionService];
  v10 = objc_opt_class();
  v11 = objc_opt_class();
  v12 = objc_opt_class();
  v13 = objc_opt_class();
  v14 = objc_opt_class();
  v15 = objc_opt_class();
  v16 = objc_opt_class();
  v17 = [NSSet setWithObjects:v10, v11, v12, v13, v14, v15, v16, objc_opt_class(), 0];
  [v9 setClasses:v17 forSelector:"convertVideoAtSourceBookmarkDictionary:toDestinationBookmarkDictionary:options:replyHandler:" argumentIndex:2 ofReply:0];
  [v9 setClasses:v17 forSelector:"extractStillImageFromVideoAtSourceBookmarkDictionary:toDestinationBookmarkDictionary:options:replyHandler:" argumentIndex:2 ofReply:0];
  [connectionCopy setExportedInterface:v9];
  [connectionCopy setExportedObject:self];
  v18 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___VideoConversionServiceClient];
  [connectionCopy setRemoteObjectInterface:v18];

  v19 = [(VideoConversionService *)self connectionTerminationEventHandlerForConnectionIdentifier:v22 eventDescription:@"interruption"];
  [connectionCopy setInterruptionHandler:v19];

  v20 = [(VideoConversionService *)self connectionTerminationEventHandlerForConnectionIdentifier:v22 eventDescription:@"invalidation"];
  [connectionCopy setInvalidationHandler:v20];

  [connectionCopy resume];
  return 1;
}

- (void)requestStatusWithReply:(id)reply
{
  v7 = @"PAMediaConversionServiceProcessIdentifierKey";
  replyCopy = reply;
  v5 = [NSNumber numberWithInt:getpid()];
  v8 = v5;
  v6 = [NSDictionary dictionaryWithObjects:&v8 forKeys:&v7 count:1];
  (*(reply + 2))(replyCopy, v6, 0);
}

- (void)cancelJobsForConnectionWithIdentifier:(id)identifier
{
  requestQueue = self->_requestQueue;
  uUIDString = [identifier UUIDString];
  [(MediaConversionQueue *)requestQueue cancelRequestsForConnectionIdentifier:uUIDString];
}

- (void)modifyJobWithIdentifier:(id)identifier modifications:(id)modifications
{
  identifierCopy = identifier;
  modificationsCopy = modifications;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    *buf = 138543618;
    v18 = identifierCopy;
    v19 = 2114;
    v20 = modificationsCopy;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "Modify job for request %{public}@: %{public}@", buf, 0x16u);
  }

  requestQueue = self->_requestQueue;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10001BE78;
  v12[3] = &unk_10003D638;
  v13 = identifierCopy;
  v14 = modificationsCopy;
  selfCopy = self;
  v16 = a2;
  v10 = modificationsCopy;
  v11 = identifierCopy;
  [(MediaConversionQueue *)requestQueue modifyRequestWithIdentifier:v11 changeHandler:v12];
}

- (void)extractStillImageFromVideoAtSourceBookmarkDictionary:(id)dictionary toDestinationBookmarkDictionary:(id)bookmarkDictionary options:(id)options replyHandler:(id)handler
{
  handlerCopy = handler;
  optionsCopy = options;
  bookmarkDictionaryCopy = bookmarkDictionary;
  dictionaryCopy = dictionary;
  [(VideoConversionService *)self performConversionOfClass:objc_opt_class() forSourceBookmarkDictionary:dictionaryCopy destinationBookmarkDictionary:bookmarkDictionaryCopy options:optionsCopy replyHandler:handlerCopy];
}

- (void)singlePassConvertVideoAtSourceBookmarkDictionary:(id)dictionary toDestinationBookmarkDictionary:(id)bookmarkDictionary options:(id)options replyHandler:(id)handler
{
  handlerCopy = handler;
  optionsCopy = options;
  bookmarkDictionaryCopy = bookmarkDictionary;
  dictionaryCopy = dictionary;
  [(VideoConversionService *)self performConversionOfClass:objc_opt_class() forSourceBookmarkDictionary:dictionaryCopy destinationBookmarkDictionary:bookmarkDictionaryCopy options:optionsCopy replyHandler:handlerCopy];
}

- (void)generateGIFForVideoAtSourceBookmarkDictionary:(id)dictionary toDestinationBookmarkDictionary:(id)bookmarkDictionary options:(id)options replyHandler:(id)handler
{
  handlerCopy = handler;
  optionsCopy = options;
  bookmarkDictionaryCopy = bookmarkDictionary;
  dictionaryCopy = dictionary;
  [(VideoConversionService *)self performConversionOfClass:objc_opt_class() forSourceBookmarkDictionary:dictionaryCopy destinationBookmarkDictionary:bookmarkDictionaryCopy options:optionsCopy replyHandler:handlerCopy];
}

- (void)convertVideoAtSourceBookmarkDictionary:(id)dictionary toDestinationBookmarkDictionary:(id)bookmarkDictionary options:(id)options replyHandler:(id)handler
{
  handlerCopy = handler;
  optionsCopy = options;
  bookmarkDictionaryCopy = bookmarkDictionary;
  dictionaryCopy = dictionary;
  v13 = [(VideoConversionService *)self optionsRequirePhotosAdjustmentProcessing:optionsCopy];
  v14 = &off_10003C550;
  if (!v13)
  {
    v14 = off_10003C548;
  }

  v15 = *v14;
  [(VideoConversionService *)self performConversionOfClass:objc_opt_class() forSourceBookmarkDictionary:dictionaryCopy destinationBookmarkDictionary:bookmarkDictionaryCopy options:optionsCopy replyHandler:handlerCopy];
}

- (void)echo:(id)echo reply:(id)reply
{
  replyCopy = reply;
  v7 = [echo stringByAppendingString:echo];
  (*(reply + 2))(replyCopy, v7);
}

- (void)conversionQueue:(id)queue cancelCurrentlyProcessingEntry:(id)entry
{
  queueCopy = queue;
  entryCopy = entry;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    v11 = 138543362;
    v12 = entryCopy;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "Request queue issued cancellation of currently processing queue entry %{public}@", &v11, 0xCu);
  }

  videoConversionTask = [entryCopy videoConversionTask];
  if (!videoConversionTask)
  {
    v10 = +[NSAssertionHandler currentHandler];
    [v10 handleFailureInMethod:a2 object:self file:@"VideoConversionService.m" lineNumber:1772 description:@"Unexpected nil conversion task"];
  }

  [videoConversionTask cancel];
}

- (void)conversionQueue:(id)queue processNextEntry:(id)entry
{
  queueCopy = queue;
  entryCopy = entry;
  videoConversionTask = [entryCopy videoConversionTask];
  v50 = 0;
  v51 = &v50;
  v52 = 0x2020000000;
  v53 = 0;
  v47[0] = _NSConcreteStackBlock;
  v47[1] = 3221225472;
  v47[2] = sub_10001CB98;
  v47[3] = &unk_10003D610;
  v49 = &v50;
  dsema = dispatch_semaphore_create(0);
  v48 = dsema;
  [videoConversionTask setCompletionHandler:v47];
  options = [videoConversionTask options];
  v38 = [options objectForKeyedSubscript:@"_unitTestPreConversionDelayKey"];

  if (v38)
  {
    sleep([v38 intValue]);
  }

  [videoConversionTask performConversion];
  while (1)
  {
    v7 = dispatch_time(0, 10000000000);
    if (!dispatch_semaphore_wait(dsema, v7))
    {
      break;
    }

    if ([videoConversionTask didDetectHang])
    {
      sourceURLCollection = [entryCopy sourceURLCollection];
      v9 = [sourceURLCollection filenameExtensionAndPathHashForRole:@"PAMediaConversionResourceRoleMainResource"];

      v10 = &_os_log_default;
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        sourceURLCollection2 = [entryCopy sourceURLCollection];
        logMessageSummary = [sourceURLCollection2 logMessageSummary];
        *buf = 138543875;
        v56 = entryCopy;
        v57 = 2113;
        v58 = v9;
        v59 = 2114;
        v60 = logMessageSummary;
        _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Timeout for %{public}@ with stalled conversion for %{private}@ (%{public}@), forcing exit", buf, 0x20u);
      }

      [objc_opt_class() _forceCrashAfterVideoConversionHangDetectedWithMarker];
    }
  }

  error = [videoConversionTask error];
  resultInformation = [videoConversionTask resultInformation];
  v42 = v51[3];
  resultInformation2 = [videoConversionTask resultInformation];
  if (resultInformation2)
  {
    goto LABEL_10;
  }

  error2 = [videoConversionTask error];
  v15 = error2 == 0;

  if (v15)
  {
    resultInformation2 = +[NSAssertionHandler currentHandler];
    [resultInformation2 handleFailureInMethod:a2 object:self file:@"VideoConversionService.m" lineNumber:1738 description:@"Conversion task finished without output information or error"];
LABEL_10:
  }

  outputURLCollection = [videoConversionTask outputURLCollection];
  resultInformation3 = [videoConversionTask resultInformation];
  v17 = [resultInformation3 objectForKeyedSubscript:@"PAMediaConversionServiceResultDataKey"];
  options2 = [videoConversionTask options];
  v19 = [options2 objectForKeyedSubscript:@"PAMediaConversionServiceOptionOutputFileTypeKey"];
  v20 = [queueCopy markCompletionAndRetrieveClientRequestsForQueueEntry:entryCopy resultURLCollection:outputURLCollection didConvertSuccessfully:v42 == 1 conversionOutputInformation:resultInformation conversionOutputData:v17 conversionOutputFileType:v19 conversionError:error];

  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  v21 = v20;
  v22 = [v21 countByEnumeratingWithState:&v43 objects:v54 count:16];
  if (v22)
  {
    v23 = *v44;
    do
    {
      for (i = 0; i != v22; i = i + 1)
      {
        if (*v44 != v23)
        {
          objc_enumerationMutation(v21);
        }

        v25 = *(*(&v43 + 1) + 8 * i);
        v26 = objc_autoreleasePoolPush();
        requestTracker = [v25 requestTracker];
        v28 = requestTracker;
        if (v42 == 1)
        {
          outputInformation = [requestTracker outputInformation];
        }

        else
        {
          outputInformation = 0;
        }

        videoClientReplyHandler = [v25 videoClientReplyHandler];
        v31 = v51[3];
        error3 = [v28 error];
        (videoClientReplyHandler)[2](videoClientReplyHandler, v31, outputInformation, error3);

        objc_autoreleasePoolPop(v26);
      }

      v22 = [v21 countByEnumeratingWithState:&v43 objects:v54 count:16];
    }

    while (v22);
  }

  _Block_object_dispose(&v50, 8);
}

- (void)conversionQueue:(id)queue didCancelQueuedEntry:(id)entry clientRequests:(id)requests
{
  queueCopy = queue;
  entryCopy = entry;
  requestsCopy = requests;
  videoConversionTask = [entryCopy videoConversionTask];
  status = [videoConversionTask status];
  if (status != 5)
  {
    v24 = status;
    v25 = +[NSAssertionHandler currentHandler];
    if (v24 > 6)
    {
      v26 = 0;
    }

    else
    {
      v26 = off_10003D340[v24];
    }

    v27 = v26;
    [v25 handleFailureInMethod:a2 object:self file:@"VideoConversionService.m" lineNumber:1693 description:{@"Unexpected conversion task status %@ during cancellation of queued task", v27, queueCopy}];
  }

  v33[0] = _NSConcreteStackBlock;
  v33[1] = 3221225472;
  v33[2] = sub_10001CE3C;
  v33[3] = &unk_10003D5E8;
  v13 = entryCopy;
  v34 = v13;
  [videoConversionTask setCompletionHandler:v33];
  [videoConversionTask cancel];
  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v14 = requestsCopy;
  v15 = [v14 countByEnumeratingWithState:&v29 objects:v35 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v30;
    do
    {
      v18 = 0;
      do
      {
        if (*v30 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v19 = *(*(&v29 + 1) + 8 * v18);
        v20 = objc_autoreleasePoolPush();
        requestTracker = [v19 requestTracker];
        videoClientReplyHandler = [v19 videoClientReplyHandler];
        error = [requestTracker error];
        (videoClientReplyHandler)[2](videoClientReplyHandler, 4, 0, error);

        objc_autoreleasePoolPop(v20);
        v18 = v18 + 1;
      }

      while (v16 != v18);
      v16 = [v14 countByEnumeratingWithState:&v29 objects:v35 count:16];
    }

    while (v16);
  }
}

- (BOOL)optionsRequirePhotosAdjustmentProcessing:(id)processing
{
  v3 = [processing objectForKeyedSubscript:@"PAMediaConversionServiceOptionAdjustmentInformationKey"];
  v4 = v3 != 0;

  return v4;
}

- (void)performConversionOfClass:(Class)class forSourceBookmarkDictionary:(id)dictionary destinationBookmarkDictionary:(id)bookmarkDictionary options:(id)options replyHandler:(id)handler
{
  dictionaryCopy = dictionary;
  bookmarkDictionaryCopy = bookmarkDictionary;
  optionsCopy = options;
  handlerCopy = handler;
  v16 = [optionsCopy objectForKeyedSubscript:@"PAMediaConversionServiceJobIdentifierKey"];
  if ([(VideoConversionService *)self validateRequestIdentifier:v16 replyHandler:handlerCopy])
  {
    v68 = bookmarkDictionaryCopy;
    v17 = +[NSXPCConnection currentConnection];
    userInfo = [v17 userInfo];
    v18 = [userInfo objectForKeyedSubscript:@"PAMCS_CONNECTION_USER_INFO_CONNECTION_IDENTIFIER_KEY"];
    v19 = objc_opt_new();
    v66 = v17;
    [v19 setConnection:v17];
    v67 = v18;
    [v19 setConnectionIdentifier:v18];
    [v19 setVideoClientReplyHandler:handlerCopy];
    v20 = [optionsCopy objectForKeyedSubscript:@"PAMediaConversionServiceOptionWantsProgressKey"];
    [v19 setWantsProgress:{objc_msgSend(v20, "BOOLValue")}];

    v21 = [optionsCopy objectForKeyedSubscript:@"PAMediaConversionServiceOptionJobPriorityKey"];
    integerValue = [v21 integerValue];

    v69 = v16;
    if (!integerValue)
    {
      v23 = [optionsCopy mutableCopy];
      [v23 setObject:&off_10003FB80 forKeyedSubscript:@"PAMediaConversionServiceOptionJobPriorityKey"];
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        v24 = @"background";
        *buf = 138543618;
        v75 = v16;
        v76 = 2112;
        v77 = @"background";
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Request %{public}@ does not have a priority, the client should provide one. Defaulting to %@.", buf, 0x16u);
      }

      optionsCopy = v23;
    }

    nextRequestNumber = [(MediaConversionQueue *)self->_requestQueue nextRequestNumber];
    v26 = [optionsCopy mutableCopy];
    [v26 setObject:dictionaryCopy forKeyedSubscript:@"PAMediaConversionServiceSourceBookmarkCollectionKey"];
    v64 = v26;
    v60 = nextRequestNumber;
    v70 = [[MediaConversionRequestTracker alloc] initWithRequestOptions:v26 requestNumber:nextRequestNumber];
    [v19 setRequestTracker:?];
    v27 = [(MediaConversionQueue *)self->_requestQueue queueEntryWithConversionOptions:optionsCopy];
    [v27 setTaskTypeSupportsDeduplication:{-[objc_class supportsDeduplication](class, "supportsDeduplication")}];
    identifier = [v27 identifier];
    v73 = 0;
    v29 = [PAMediaConversionServiceSharedUtilitiesServiceSide temporaryFilesDirectoryURLForConversionTaskIdentifier:identifier error:&v73];
    v30 = v73;

    if (!v29)
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543618;
        v75 = v69;
        v76 = 2112;
        v77 = v30;
        _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Unable to create temporary files directory for request %{public}@: %@", buf, 0x16u);
      }

      handlerCopy[2](handlerCopy, 2, 0, v30);
      goto LABEL_40;
    }

    v61 = v19;
    classCopy = class;
    v32 = v30;
    [v27 setTemporaryFilesParentDirectoryURL:v29];
    [optionsCopy objectForKeyedSubscript:@"PAMediaConversionServiceOptionWantsResultAsDataKey"];
    v34 = v33 = v29;
    bOOLValue = [v34 BOOLValue];

    v63 = v33;
    if (bOOLValue)
    {
      v36 = [v33 URLByAppendingPathComponent:v69];
      v37 = [v36 URLByAppendingPathExtension:@"mov"];

      v38 = [PAMediaConversionServiceResourceURLCollection collectionWithMainResourceURL:v37];
      v30 = v32;
      v39 = classCopy;
    }

    else
    {
      v72 = v32;
      bookmarkDictionaryCopy = v68;
      v37 = [objc_opt_class() resourceURLCollectionForDestinationBookmarkDictionary:v68 error:&v72];
      v30 = v72;

      if (!v37)
      {
        domain = [(__CFString *)v30 domain];
        if ([domain isEqualToString:NSCocoaErrorDomain])
        {
          v39 = classCopy;
          code = [(__CFString *)v30 code];

          v43 = code == 4;
          bookmarkDictionaryCopy = v68;
          v19 = v61;
          if (v43)
          {
            [v61 setRequiresDeduplicationAgainstOriginalWithIdenticalOutput:1];
            v37 = 0;
            v38 = 0;
LABEL_22:

            v44 = [[v39 alloc] initWithSourceBookmarkDictionary:dictionaryCopy outputURLCollection:v38 options:optionsCopy requestTracker:v70];
            sourceURLCollection = [v44 sourceURLCollection];
            [v27 setSourceURLCollection:sourceURLCollection];

            identifier2 = [v27 identifier];
            [v44 setIdentifier:identifier2];

            [v27 setVideoConversionTask:v44];
            [v44 setProgressObserver:v27];
            [v44 didEnqueue];
            requestQueue = self->_requestQueue;
            v71 = 0;
            LOBYTE(identifier2) = [(MediaConversionQueue *)requestQueue enqueueEntry:v27 clientRequest:v19 isDuplicateOfOriginalQueueEntry:&v71];
            v48 = v71;
            v49 = v48;
            v62 = v38;
            if (identifier2)
            {
              if (v48)
              {
                v50 = v48;
              }

              else
              {
                v50 = v27;
              }

              v51 = v50;
              if (!v49)
              {
                [v44 startProgressUpdateTimerAndMarkStartTime];
              }

              v52 = [optionsCopy objectForKeyedSubscript:@"PAMediaConversionServiceOptionRequestReasonKey"];
              if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
              {
                [v51 identifier];
                v53 = v59 = v51;
                *buf = 134219266;
                v75 = v60;
                v76 = 2114;
                v77 = v69;
                v78 = 2114;
                v79 = v53;
                v80 = 1024;
                v81 = v49 != 0;
                v82 = 2114;
                v83 = v52;
                v84 = 2114;
                v85 = v67;
                _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Received conversion request #%lu %{public}@, attached to conversion task %{public}@, isDuplicate = %d, reason '%{public}@', connection %{public}@", buf, 0x3Au);

                v51 = v59;
              }
            }

            else
            {
              requiresDeduplicationAgainstOriginalWithIdenticalOutput = [v19 requiresDeduplicationAgainstOriginalWithIdenticalOutput];
              v55 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
              if (requiresDeduplicationAgainstOriginalWithIdenticalOutput)
              {
                if (v55)
                {
                  *buf = 0;
                  _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Unable to enqueue new request, required deduplication failed", buf, 2u);
                }

                v88 = NSDebugDescriptionErrorKey;
                v89 = @"Unable to enqueue new request, required deduplication failed";
                v56 = [NSDictionary dictionaryWithObjects:&v89 forKeys:&v88 count:1];
                v57 = 4;
              }

              else
              {
                if (v55)
                {
                  *buf = 0;
                  _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Unable to enqueue new request, unknown reason", buf, 2u);
                }

                v86 = NSDebugDescriptionErrorKey;
                v87 = @"Unable to enqueue new request, unknown reason";
                v56 = [NSDictionary dictionaryWithObjects:&v87 forKeys:&v86 count:1];
                v57 = 0;
              }

              v58 = [NSError errorWithDomain:@"PAMediaConversionServiceErrorDomain" code:v57 userInfo:v56];

              handlerCopy[2](handlerCopy, 2, 0, v58);
              v30 = v58;
            }

            v29 = v63;

LABEL_40:
            bookmarkDictionaryCopy = v68;
LABEL_41:

            v16 = v69;
            goto LABEL_42;
          }
        }

        else
        {

          v19 = v61;
        }

        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          *buf = 138543618;
          v75 = v69;
          v76 = 2112;
          v77 = v30;
          _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Unable to resolve final destination URLs for %{public}@: %@", buf, 0x16u);
        }

        handlerCopy[2](handlerCopy, 2, 0, v30);
        v29 = v63;
        goto LABEL_41;
      }

      [(MediaConversionRequestTracker *)v70 setDestinationURLCollection:v37];
      v39 = classCopy;
      if ([v27 taskTypeSupportsDeduplication])
      {
        v40 = [PAMediaConversionServiceSharedUtilitiesServiceSide temporaryDestinationURLCollectionForFinalDestinationURLCollection:v37 inParentDirectoryURL:v63];
      }

      else
      {
        v40 = v37;
        v37 = v40;
      }

      v38 = v40;
    }

    v19 = v61;
    goto LABEL_22;
  }

LABEL_42:
}

- (BOOL)validateRequestIdentifier:(id)identifier replyHandler:(id)handler
{
  identifierCopy = identifier;
  handlerCopy = handler;
  if (identifierCopy)
  {
    v9 = identifierCopy;
  }

  else
  {
    v14 = +[NSAssertionHandler currentHandler];
    [v14 handleFailureInMethod:a2 object:self file:@"VideoConversionService.m" lineNumber:1526 description:{@"Invalid parameter not satisfying: %@", @"requestIdentifier"}];

    v9 = 0;
  }

  v10 = [v9 rangeOfString:@"[0-9a-f]{8}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{12}$" options:1033];
  if (v10 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v15 = NSDebugDescriptionErrorKey;
    v16 = @"Invalid request identifier format";
    v11 = [NSDictionary dictionaryWithObjects:&v16 forKeys:&v15 count:1];
    v12 = [NSError errorWithDomain:@"PAMediaConversionServiceErrorDomain" code:6 userInfo:v11];

    handlerCopy[2](handlerCopy, 2, 0, v12);
  }

  return v10 != 0x7FFFFFFFFFFFFFFFLL;
}

- (void)run
{
  v3 = [[NSXPCListener alloc] initWithMachServiceName:@"com.apple.photos.VideoConversionService"];
  [(VideoConversionService *)self setListener:v3];

  listener = [(VideoConversionService *)self listener];
  [listener setDelegate:self];

  listener2 = [(VideoConversionService *)self listener];
  [listener2 resume];

  dispatch_main();
}

- (VideoConversionService)init
{
  v6.receiver = self;
  v6.super_class = VideoConversionService;
  v2 = [(VideoConversionService *)&v6 init];
  if (v2)
  {
    v3 = [[MediaConversionQueue alloc] initWithDelegate:v2];
    requestQueue = v2->_requestQueue;
    v2->_requestQueue = v3;
  }

  return v2;
}

+ (id)resourceURLCollectionForDestinationBookmarkDictionary:(id)dictionary error:(id *)error
{
  v5 = [PAMediaConversionServiceResourceURLCollection collectionForBookmarkDataDictionaryRepresentation:dictionary accessProvider:0 error:error];
  v6 = v5;
  if (v5)
  {
    v11 = 0;
    v7 = [v5 removeExistingEmptyFilesWithError:&v11];
    v8 = v11;
    if (v7)
    {
      goto LABEL_8;
    }

    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v13 = v8;
      _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Unable to remove destination URL: %@", buf, 0xCu);
      if (!error)
      {
        goto LABEL_6;
      }
    }

    else if (!error)
    {
LABEL_6:

      v6 = 0;
      goto LABEL_8;
    }

    v9 = v8;
    *error = v8;
    goto LABEL_6;
  }

  v8 = 0;
LABEL_8:

  return v6;
}

+ (void)run
{
  v2 = objc_alloc_init(self);
  [v2 run];
}

@end