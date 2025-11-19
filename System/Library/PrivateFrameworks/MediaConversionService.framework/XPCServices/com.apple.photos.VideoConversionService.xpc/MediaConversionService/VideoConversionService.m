@interface VideoConversionService
+ (id)resourceURLCollectionForDestinationBookmarkDictionary:(id)a3 error:(id *)a4;
+ (void)run;
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
- (BOOL)optionsRequirePhotosAdjustmentProcessing:(id)a3;
- (BOOL)validateRequestIdentifier:(id)a3 replyHandler:(id)a4;
- (VideoConversionService)init;
- (id)connectionTerminationEventHandlerForConnectionIdentifier:(id)a3 eventDescription:(id)a4;
- (void)cancelJobsForConnectionWithIdentifier:(id)a3;
- (void)conversionQueue:(id)a3 cancelCurrentlyProcessingEntry:(id)a4;
- (void)conversionQueue:(id)a3 didCancelQueuedEntry:(id)a4 clientRequests:(id)a5;
- (void)conversionQueue:(id)a3 processNextEntry:(id)a4;
- (void)convertVideoAtSourceBookmarkDictionary:(id)a3 toDestinationBookmarkDictionary:(id)a4 options:(id)a5 replyHandler:(id)a6;
- (void)echo:(id)a3 reply:(id)a4;
- (void)extractStillImageFromVideoAtSourceBookmarkDictionary:(id)a3 toDestinationBookmarkDictionary:(id)a4 options:(id)a5 replyHandler:(id)a6;
- (void)generateGIFForVideoAtSourceBookmarkDictionary:(id)a3 toDestinationBookmarkDictionary:(id)a4 options:(id)a5 replyHandler:(id)a6;
- (void)modifyJobWithIdentifier:(id)a3 modifications:(id)a4;
- (void)performConversionOfClass:(Class)a3 forSourceBookmarkDictionary:(id)a4 destinationBookmarkDictionary:(id)a5 options:(id)a6 replyHandler:(id)a7;
- (void)requestStatusWithReply:(id)a3;
- (void)run;
- (void)singlePassConvertVideoAtSourceBookmarkDictionary:(id)a3 toDestinationBookmarkDictionary:(id)a4 options:(id)a5 replyHandler:(id)a6;
@end

@implementation VideoConversionService

- (id)connectionTerminationEventHandlerForConnectionIdentifier:(id)a3 eventDescription:(id)a4
{
  v6 = a3;
  v7 = a4;
  objc_initWeak(&location, self);
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10001B810;
  v12[3] = &unk_10003D660;
  objc_copyWeak(&v15, &location);
  v13 = v6;
  v14 = v7;
  v8 = v7;
  v9 = v6;
  v10 = objc_retainBlock(v12);

  objc_destroyWeak(&v15);
  objc_destroyWeak(&location);

  return v10;
}

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v4 = a4;
  v5 = +[NSUUID UUID];
  v6 = [v4 _xpcConnection];
  pid = xpc_connection_get_pid(v6);

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
  [v4 setUserInfo:v8];

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
  [v4 setExportedInterface:v9];
  [v4 setExportedObject:self];
  v18 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___VideoConversionServiceClient];
  [v4 setRemoteObjectInterface:v18];

  v19 = [(VideoConversionService *)self connectionTerminationEventHandlerForConnectionIdentifier:v22 eventDescription:@"interruption"];
  [v4 setInterruptionHandler:v19];

  v20 = [(VideoConversionService *)self connectionTerminationEventHandlerForConnectionIdentifier:v22 eventDescription:@"invalidation"];
  [v4 setInvalidationHandler:v20];

  [v4 resume];
  return 1;
}

- (void)requestStatusWithReply:(id)a3
{
  v7 = @"PAMediaConversionServiceProcessIdentifierKey";
  v4 = a3;
  v5 = [NSNumber numberWithInt:getpid()];
  v8 = v5;
  v6 = [NSDictionary dictionaryWithObjects:&v8 forKeys:&v7 count:1];
  (*(a3 + 2))(v4, v6, 0);
}

- (void)cancelJobsForConnectionWithIdentifier:(id)a3
{
  requestQueue = self->_requestQueue;
  v4 = [a3 UUIDString];
  [(MediaConversionQueue *)requestQueue cancelRequestsForConnectionIdentifier:v4];
}

- (void)modifyJobWithIdentifier:(id)a3 modifications:(id)a4
{
  v7 = a3;
  v8 = a4;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    *buf = 138543618;
    v18 = v7;
    v19 = 2114;
    v20 = v8;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "Modify job for request %{public}@: %{public}@", buf, 0x16u);
  }

  requestQueue = self->_requestQueue;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10001BE78;
  v12[3] = &unk_10003D638;
  v13 = v7;
  v14 = v8;
  v15 = self;
  v16 = a2;
  v10 = v8;
  v11 = v7;
  [(MediaConversionQueue *)requestQueue modifyRequestWithIdentifier:v11 changeHandler:v12];
}

- (void)extractStillImageFromVideoAtSourceBookmarkDictionary:(id)a3 toDestinationBookmarkDictionary:(id)a4 options:(id)a5 replyHandler:(id)a6
{
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v13 = a3;
  [(VideoConversionService *)self performConversionOfClass:objc_opt_class() forSourceBookmarkDictionary:v13 destinationBookmarkDictionary:v12 options:v11 replyHandler:v10];
}

- (void)singlePassConvertVideoAtSourceBookmarkDictionary:(id)a3 toDestinationBookmarkDictionary:(id)a4 options:(id)a5 replyHandler:(id)a6
{
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v13 = a3;
  [(VideoConversionService *)self performConversionOfClass:objc_opt_class() forSourceBookmarkDictionary:v13 destinationBookmarkDictionary:v12 options:v11 replyHandler:v10];
}

- (void)generateGIFForVideoAtSourceBookmarkDictionary:(id)a3 toDestinationBookmarkDictionary:(id)a4 options:(id)a5 replyHandler:(id)a6
{
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v13 = a3;
  [(VideoConversionService *)self performConversionOfClass:objc_opt_class() forSourceBookmarkDictionary:v13 destinationBookmarkDictionary:v12 options:v11 replyHandler:v10];
}

- (void)convertVideoAtSourceBookmarkDictionary:(id)a3 toDestinationBookmarkDictionary:(id)a4 options:(id)a5 replyHandler:(id)a6
{
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v16 = a3;
  v13 = [(VideoConversionService *)self optionsRequirePhotosAdjustmentProcessing:v11];
  v14 = &off_10003C550;
  if (!v13)
  {
    v14 = off_10003C548;
  }

  v15 = *v14;
  [(VideoConversionService *)self performConversionOfClass:objc_opt_class() forSourceBookmarkDictionary:v16 destinationBookmarkDictionary:v12 options:v11 replyHandler:v10];
}

- (void)echo:(id)a3 reply:(id)a4
{
  v6 = a4;
  v7 = [a3 stringByAppendingString:a3];
  (*(a4 + 2))(v6, v7);
}

- (void)conversionQueue:(id)a3 cancelCurrentlyProcessingEntry:(id)a4
{
  v7 = a3;
  v8 = a4;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    v11 = 138543362;
    v12 = v8;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "Request queue issued cancellation of currently processing queue entry %{public}@", &v11, 0xCu);
  }

  v9 = [v8 videoConversionTask];
  if (!v9)
  {
    v10 = +[NSAssertionHandler currentHandler];
    [v10 handleFailureInMethod:a2 object:self file:@"VideoConversionService.m" lineNumber:1772 description:@"Unexpected nil conversion task"];
  }

  [v9 cancel];
}

- (void)conversionQueue:(id)a3 processNextEntry:(id)a4
{
  v37 = a3;
  v39 = a4;
  v41 = [v39 videoConversionTask];
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
  [v41 setCompletionHandler:v47];
  v6 = [v41 options];
  v38 = [v6 objectForKeyedSubscript:@"_unitTestPreConversionDelayKey"];

  if (v38)
  {
    sleep([v38 intValue]);
  }

  [v41 performConversion];
  while (1)
  {
    v7 = dispatch_time(0, 10000000000);
    if (!dispatch_semaphore_wait(dsema, v7))
    {
      break;
    }

    if ([v41 didDetectHang])
    {
      v8 = [v39 sourceURLCollection];
      v9 = [v8 filenameExtensionAndPathHashForRole:@"PAMediaConversionResourceRoleMainResource"];

      v10 = &_os_log_default;
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        v11 = [v39 sourceURLCollection];
        v12 = [v11 logMessageSummary];
        *buf = 138543875;
        v56 = v39;
        v57 = 2113;
        v58 = v9;
        v59 = 2114;
        v60 = v12;
        _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Timeout for %{public}@ with stalled conversion for %{private}@ (%{public}@), forcing exit", buf, 0x20u);
      }

      [objc_opt_class() _forceCrashAfterVideoConversionHangDetectedWithMarker];
    }
  }

  v36 = [v41 error];
  v35 = [v41 resultInformation];
  v42 = v51[3];
  v13 = [v41 resultInformation];
  if (v13)
  {
    goto LABEL_10;
  }

  v14 = [v41 error];
  v15 = v14 == 0;

  if (v15)
  {
    v13 = +[NSAssertionHandler currentHandler];
    [v13 handleFailureInMethod:a2 object:self file:@"VideoConversionService.m" lineNumber:1738 description:@"Conversion task finished without output information or error"];
LABEL_10:
  }

  v34 = [v41 outputURLCollection];
  v16 = [v41 resultInformation];
  v17 = [v16 objectForKeyedSubscript:@"PAMediaConversionServiceResultDataKey"];
  v18 = [v41 options];
  v19 = [v18 objectForKeyedSubscript:@"PAMediaConversionServiceOptionOutputFileTypeKey"];
  v20 = [v37 markCompletionAndRetrieveClientRequestsForQueueEntry:v39 resultURLCollection:v34 didConvertSuccessfully:v42 == 1 conversionOutputInformation:v35 conversionOutputData:v17 conversionOutputFileType:v19 conversionError:v36];

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
        v27 = [v25 requestTracker];
        v28 = v27;
        if (v42 == 1)
        {
          v29 = [v27 outputInformation];
        }

        else
        {
          v29 = 0;
        }

        v30 = [v25 videoClientReplyHandler];
        v31 = v51[3];
        v32 = [v28 error];
        (v30)[2](v30, v31, v29, v32);

        objc_autoreleasePoolPop(v26);
      }

      v22 = [v21 countByEnumeratingWithState:&v43 objects:v54 count:16];
    }

    while (v22);
  }

  _Block_object_dispose(&v50, 8);
}

- (void)conversionQueue:(id)a3 didCancelQueuedEntry:(id)a4 clientRequests:(id)a5
{
  v28 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [v9 videoConversionTask];
  v12 = [v11 status];
  if (v12 != 5)
  {
    v24 = v12;
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
    [v25 handleFailureInMethod:a2 object:self file:@"VideoConversionService.m" lineNumber:1693 description:{@"Unexpected conversion task status %@ during cancellation of queued task", v27, v28}];
  }

  v33[0] = _NSConcreteStackBlock;
  v33[1] = 3221225472;
  v33[2] = sub_10001CE3C;
  v33[3] = &unk_10003D5E8;
  v13 = v9;
  v34 = v13;
  [v11 setCompletionHandler:v33];
  [v11 cancel];
  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v14 = v10;
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
        v21 = [v19 requestTracker];
        v22 = [v19 videoClientReplyHandler];
        v23 = [v21 error];
        (v22)[2](v22, 4, 0, v23);

        objc_autoreleasePoolPop(v20);
        v18 = v18 + 1;
      }

      while (v16 != v18);
      v16 = [v14 countByEnumeratingWithState:&v29 objects:v35 count:16];
    }

    while (v16);
  }
}

- (BOOL)optionsRequirePhotosAdjustmentProcessing:(id)a3
{
  v3 = [a3 objectForKeyedSubscript:@"PAMediaConversionServiceOptionAdjustmentInformationKey"];
  v4 = v3 != 0;

  return v4;
}

- (void)performConversionOfClass:(Class)a3 forSourceBookmarkDictionary:(id)a4 destinationBookmarkDictionary:(id)a5 options:(id)a6 replyHandler:(id)a7
{
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v15 = a7;
  v16 = [v14 objectForKeyedSubscript:@"PAMediaConversionServiceJobIdentifierKey"];
  if ([(VideoConversionService *)self validateRequestIdentifier:v16 replyHandler:v15])
  {
    v68 = v13;
    v17 = +[NSXPCConnection currentConnection];
    v65 = [v17 userInfo];
    v18 = [v65 objectForKeyedSubscript:@"PAMCS_CONNECTION_USER_INFO_CONNECTION_IDENTIFIER_KEY"];
    v19 = objc_opt_new();
    v66 = v17;
    [v19 setConnection:v17];
    v67 = v18;
    [v19 setConnectionIdentifier:v18];
    [v19 setVideoClientReplyHandler:v15];
    v20 = [v14 objectForKeyedSubscript:@"PAMediaConversionServiceOptionWantsProgressKey"];
    [v19 setWantsProgress:{objc_msgSend(v20, "BOOLValue")}];

    v21 = [v14 objectForKeyedSubscript:@"PAMediaConversionServiceOptionJobPriorityKey"];
    v22 = [v21 integerValue];

    v69 = v16;
    if (!v22)
    {
      v23 = [v14 mutableCopy];
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

      v14 = v23;
    }

    v25 = [(MediaConversionQueue *)self->_requestQueue nextRequestNumber];
    v26 = [v14 mutableCopy];
    [v26 setObject:v12 forKeyedSubscript:@"PAMediaConversionServiceSourceBookmarkCollectionKey"];
    v64 = v26;
    v60 = v25;
    v70 = [[MediaConversionRequestTracker alloc] initWithRequestOptions:v26 requestNumber:v25];
    [v19 setRequestTracker:?];
    v27 = [(MediaConversionQueue *)self->_requestQueue queueEntryWithConversionOptions:v14];
    [v27 setTaskTypeSupportsDeduplication:{-[objc_class supportsDeduplication](a3, "supportsDeduplication")}];
    v28 = [v27 identifier];
    v73 = 0;
    v29 = [PAMediaConversionServiceSharedUtilitiesServiceSide temporaryFilesDirectoryURLForConversionTaskIdentifier:v28 error:&v73];
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

      v15[2](v15, 2, 0, v30);
      goto LABEL_40;
    }

    v61 = v19;
    v31 = a3;
    v32 = v30;
    [v27 setTemporaryFilesParentDirectoryURL:v29];
    [v14 objectForKeyedSubscript:@"PAMediaConversionServiceOptionWantsResultAsDataKey"];
    v34 = v33 = v29;
    v35 = [v34 BOOLValue];

    v63 = v33;
    if (v35)
    {
      v36 = [v33 URLByAppendingPathComponent:v69];
      v37 = [v36 URLByAppendingPathExtension:@"mov"];

      v38 = [PAMediaConversionServiceResourceURLCollection collectionWithMainResourceURL:v37];
      v30 = v32;
      v39 = v31;
    }

    else
    {
      v72 = v32;
      v13 = v68;
      v37 = [objc_opt_class() resourceURLCollectionForDestinationBookmarkDictionary:v68 error:&v72];
      v30 = v72;

      if (!v37)
      {
        v41 = [(__CFString *)v30 domain];
        if ([v41 isEqualToString:NSCocoaErrorDomain])
        {
          v39 = v31;
          v42 = [(__CFString *)v30 code];

          v43 = v42 == 4;
          v13 = v68;
          v19 = v61;
          if (v43)
          {
            [v61 setRequiresDeduplicationAgainstOriginalWithIdenticalOutput:1];
            v37 = 0;
            v38 = 0;
LABEL_22:

            v44 = [[v39 alloc] initWithSourceBookmarkDictionary:v12 outputURLCollection:v38 options:v14 requestTracker:v70];
            v45 = [v44 sourceURLCollection];
            [v27 setSourceURLCollection:v45];

            v46 = [v27 identifier];
            [v44 setIdentifier:v46];

            [v27 setVideoConversionTask:v44];
            [v44 setProgressObserver:v27];
            [v44 didEnqueue];
            requestQueue = self->_requestQueue;
            v71 = 0;
            LOBYTE(v46) = [(MediaConversionQueue *)requestQueue enqueueEntry:v27 clientRequest:v19 isDuplicateOfOriginalQueueEntry:&v71];
            v48 = v71;
            v49 = v48;
            v62 = v38;
            if (v46)
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

              v52 = [v14 objectForKeyedSubscript:@"PAMediaConversionServiceOptionRequestReasonKey"];
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
              v54 = [v19 requiresDeduplicationAgainstOriginalWithIdenticalOutput];
              v55 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
              if (v54)
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

              v15[2](v15, 2, 0, v58);
              v30 = v58;
            }

            v29 = v63;

LABEL_40:
            v13 = v68;
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

        v15[2](v15, 2, 0, v30);
        v29 = v63;
        goto LABEL_41;
      }

      [(MediaConversionRequestTracker *)v70 setDestinationURLCollection:v37];
      v39 = v31;
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

- (BOOL)validateRequestIdentifier:(id)a3 replyHandler:(id)a4
{
  v7 = a3;
  v8 = a4;
  if (v7)
  {
    v9 = v7;
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

    v8[2](v8, 2, 0, v12);
  }

  return v10 != 0x7FFFFFFFFFFFFFFFLL;
}

- (void)run
{
  v3 = [[NSXPCListener alloc] initWithMachServiceName:@"com.apple.photos.VideoConversionService"];
  [(VideoConversionService *)self setListener:v3];

  v4 = [(VideoConversionService *)self listener];
  [v4 setDelegate:self];

  v5 = [(VideoConversionService *)self listener];
  [v5 resume];

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

+ (id)resourceURLCollectionForDestinationBookmarkDictionary:(id)a3 error:(id *)a4
{
  v5 = [PAMediaConversionServiceResourceURLCollection collectionForBookmarkDataDictionaryRepresentation:a3 accessProvider:0 error:a4];
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
      if (!a4)
      {
        goto LABEL_6;
      }
    }

    else if (!a4)
    {
LABEL_6:

      v6 = 0;
      goto LABEL_8;
    }

    v9 = v8;
    *a4 = v8;
    goto LABEL_6;
  }

  v8 = 0;
LABEL_8:

  return v6;
}

+ (void)run
{
  v2 = objc_alloc_init(a1);
  [v2 run];
}

@end