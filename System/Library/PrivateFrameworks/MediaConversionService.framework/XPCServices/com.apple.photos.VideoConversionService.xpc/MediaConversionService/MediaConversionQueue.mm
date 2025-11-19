@interface MediaConversionQueue
- (BOOL)cancelForCameraIfPossibleAndRequiredForNextQueueEntry:(id)a3;
- (BOOL)copyConversionOutput:(id)a3 toRequestDestination:(id)a4 requestIdentifier:(id)a5 error:(id *)a6;
- (BOOL)delegateCanCancelCurrentlyProcessingRequestQueueEntry;
- (BOOL)enqueueEntry:(id)a3 clientRequest:(id)a4 isDuplicateOfOriginalQueueEntry:(id *)a5;
- (BOOL)findAndRemoveCancelledRequest:(id *)a3 queueEntryWithoutRemainingClients:(id *)a4 forRequestIdentifier:(id)a5 shouldCancelCurrentQueueEntry:(BOOL *)a6;
- (MediaConversionQueue)initWithDelegate:(id)a3;
- (MediaConversionQueueDelegate)delegate;
- (id)anyDestinationURLCollectionForQueueEntry:(id)a3;
- (id)entriesSortedByExecutionOrderForPendingEntries:(id)a3;
- (id)optimizeQueueAndDequeueNextRequestQueueEntry;
- (id)orderingSummaryForRequestList:(id)a3;
- (id)queueEntryWithConversionOptions:(id)a3;
- (unint64_t)nextRequestNumber;
- (void)assertDelegate:(id)a3 respondsToSelector:(SEL)a4;
- (void)cameraWatcherDidChangeState:(id)a3;
- (void)cancelRequestWithIdentifier:(id)a3;
- (void)cancelRequestsForConnectionIdentifier:(id)a3;
- (void)enumerateCurrentlyProcessingAndQueuedEntries:(id)a3;
- (void)modifyRequestWithIdentifier:(id)a3 changeHandler:(id)a4;
- (void)processCompletedQueueEntry:(id)a3 resultURLCollection:(id)a4 didConvertSuccessfully:(BOOL)a5 conversionOutputInformation:(id)a6 conversionOutputData:(id)a7 conversionOutputFileType:(id)a8 conversionError:(id)a9;
- (void)processQueue;
- (void)scheduleQueueProcessing;
- (void)sendCancellationReplyForClientRequest:(id)a3;
@end

@implementation MediaConversionQueue

- (MediaConversionQueueDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)cameraWatcherDidChangeState:(id)a3
{
  cameraWatcherQueue = self->_cameraWatcherQueue;
  v5 = a3;
  dispatch_assert_queue_V2(cameraWatcherQueue);
  v6 = [v5 isCameraRunning];

  v7 = [(MediaConversionQueue *)self delegate];
  v8 = objc_opt_respondsToSelector();
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    v10[0] = 67109632;
    v10[1] = v6;
    v11 = 2048;
    v12 = v7;
    v13 = 1024;
    v14 = v8 & 1;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "Media conversion queue camera watcher state change, new state = %d, delegate (%p) present and supports cancellation: %d", v10, 0x18u);
  }

  if ((v6 & v8) == 1)
  {
    os_unfair_lock_lock(&self->_queueStateLock);
    if ([(MediaConversionQueue *)self delegateCanCancelCurrentlyProcessingRequestQueueEntry])
    {
      v9 = self->_currentlyProcessingRequestQueueEntry;
      os_unfair_lock_unlock(&self->_queueStateLock);
      if (v9)
      {
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
        {
          LOWORD(v10[0]) = 0;
          _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "Currently processing queue entry is optional, cancelling because camera started up", v10, 2u);
        }

        [v7 conversionQueue:self cancelCurrentlyProcessingEntry:v9];
      }
    }

    else
    {
      os_unfair_lock_unlock(&self->_queueStateLock);
    }
  }
}

- (void)sendCancellationReplyForClientRequest:(id)a3
{
  v5 = a3;
  os_unfair_lock_assert_not_owner(&self->_queueStateLock);
  if (!v5)
  {
    v12 = +[NSAssertionHandler currentHandler];
    [v12 handleFailureInMethod:a2 object:self file:@"PAMediaConversionServiceSharedUtilitiesServiceSide.m" lineNumber:908 description:{@"Invalid parameter not satisfying: %@", @"cancelledRequest"}];
  }

  v13 = NSDebugDescriptionErrorKey;
  v6 = [v5 identifier];
  v7 = [v5 cancellationReasonDebugDescription];
  v8 = [NSString stringWithFormat:@"Request %@ cancelled with reason: %@", v6, v7];
  v14 = v8;
  v9 = [NSDictionary dictionaryWithObjects:&v14 forKeys:&v13 count:1];
  v10 = [NSError errorWithDomain:@"PAMediaConversionServiceErrorDomain" code:5 userInfo:v9];

  v11 = [v5 videoClientReplyHandler];

  (v11)[2](v11, 4, 0, v10);
}

- (void)cancelRequestsForConnectionIdentifier:(id)a3
{
  v4 = a3;
  v5 = +[NSMutableArray array];
  os_unfair_lock_lock(&self->_queueStateLock);
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_10000A274;
  v17[3] = &unk_10003D1C8;
  v6 = v5;
  v18 = v6;
  v7 = v4;
  v19 = v7;
  [(MediaConversionQueue *)self enumerateCurrentlyProcessingAndQueuedEntries:v17];
  os_unfair_lock_unlock(&self->_queueStateLock);
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v8 = v6;
  v9 = [v8 countByEnumeratingWithState:&v13 objects:v20 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v14;
    do
    {
      v12 = 0;
      do
      {
        if (*v14 != v11)
        {
          objc_enumerationMutation(v8);
        }

        [(MediaConversionQueue *)self cancelRequestWithIdentifier:*(*(&v13 + 1) + 8 * v12), v13];
        v12 = v12 + 1;
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v13 objects:v20 count:16];
    }

    while (v10);
  }
}

- (void)assertDelegate:(id)a3 respondsToSelector:(SEL)a4
{
  v10 = a3;
  if (!v10)
  {
    v7 = +[NSAssertionHandler currentHandler];
    [v7 handleFailureInMethod:a2 object:self file:@"PAMediaConversionServiceSharedUtilitiesServiceSide.m" lineNumber:886 description:{@"Invalid parameter not satisfying: %@", @"strongDelegate"}];
  }

  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    v8 = +[NSAssertionHandler currentHandler];
    v9 = NSStringFromSelector(a4);
    [v8 handleFailureInMethod:a2 object:self file:@"PAMediaConversionServiceSharedUtilitiesServiceSide.m" lineNumber:887 description:{@"Delegate %@ doesn't implement %@", v10, v9}];
  }
}

- (BOOL)findAndRemoveCancelledRequest:(id *)a3 queueEntryWithoutRemainingClients:(id *)a4 forRequestIdentifier:(id)a5 shouldCancelCurrentQueueEntry:(BOOL *)a6
{
  v10 = a5;
  os_unfair_lock_assert_owner(&self->_queueStateLock);
  v27 = 0;
  v28 = &v27;
  v29 = 0x3032000000;
  v30 = sub_100009318;
  v31 = sub_100009328;
  v32 = 0;
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = sub_100009318;
  v25 = sub_100009328;
  v26 = 0;
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_10000A6F8;
  v17[3] = &unk_10003D1A0;
  v19 = &v27;
  v11 = v10;
  v18 = v11;
  v20 = &v21;
  [(MediaConversionQueue *)self enumerateCurrentlyProcessingAndQueuedEntries:v17];
  v12 = v28[5];
  if (v12)
  {
    v13 = v22[5];
    if (v13)
    {
      currentlyProcessingRequestQueueEntry = self->_currentlyProcessingRequestQueueEntry;
      v15 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO);
      if (v13 == currentlyProcessingRequestQueueEntry)
      {
        if (v15)
        {
          *buf = 138543362;
          v34 = v13;
          _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "Cancelling currently processing request queue entry without remaining clients %{public}@", buf, 0xCu);
        }

        *a6 = 1;
        if (!a3)
        {
          goto LABEL_9;
        }

LABEL_8:
        *a3 = v28[5];
LABEL_9:
        if (a4)
        {
          *a4 = v22[5];
        }

        goto LABEL_13;
      }

      if (v15)
      {
        *buf = 138543362;
        v34 = v13;
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "Dequeueing pending request queue entry without remaining clients %{public}@", buf, 0xCu);
        v13 = v22[5];
      }

      [(NSMutableArray *)self->_queuedRequests removeObject:v13];
    }

    if (!a3)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    *buf = 138543362;
    v34 = v11;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "Ignoring cancellation request for unknown request identifier %{public}@", buf, 0xCu);
  }

LABEL_13:

  _Block_object_dispose(&v21, 8);
  _Block_object_dispose(&v27, 8);

  return v12 != 0;
}

- (void)cancelRequestWithIdentifier:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    v10 = +[NSAssertionHandler currentHandler];
    [v10 handleFailureInMethod:a2 object:self file:@"PAMediaConversionServiceSharedUtilitiesServiceSide.m" lineNumber:794 description:{@"Invalid parameter not satisfying: %@", @"requestIdentifier"}];
  }

  v6 = [(MediaConversionQueue *)self delegate];
  if (v6)
  {
    v13[0] = 0;
    os_unfair_lock_lock(&self->_queueStateLock);
    v11 = 0;
    v12 = 0;
    v7 = [(MediaConversionQueue *)self findAndRemoveCancelledRequest:&v12 queueEntryWithoutRemainingClients:&v11 forRequestIdentifier:v5 shouldCancelCurrentQueueEntry:v13];
    v8 = v12;
    v9 = v11;
    os_unfair_lock_unlock(&self->_queueStateLock);
    if (v7)
    {
      if (v8)
      {
        [(MediaConversionQueue *)self sendCancellationReplyForClientRequest:v8];
      }

      if (v13[0] == 1)
      {
        [(MediaConversionQueue *)self assertDelegate:v6 respondsToSelector:"conversionQueue:cancelCurrentlyProcessingEntry:"];
        [v6 conversionQueue:self cancelCurrentlyProcessingEntry:v9];
      }
    }
  }
}

- (void)modifyRequestWithIdentifier:(id)a3 changeHandler:(id)a4
{
  v7 = a3;
  v8 = a4;
  if (!v7)
  {
    v10 = +[NSAssertionHandler currentHandler];
    [v10 handleFailureInMethod:a2 object:self file:@"PAMediaConversionServiceSharedUtilitiesServiceSide.m" lineNumber:769 description:{@"Invalid parameter not satisfying: %@", @"requestIdentifier"}];
  }

  os_unfair_lock_lock(&self->_queueStateLock);
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = sub_100009318;
  v18 = sub_100009328;
  v19 = 0;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10000ACE0;
  v11[3] = &unk_10003D178;
  v13 = &v14;
  v9 = v7;
  v12 = v9;
  [(MediaConversionQueue *)self enumerateCurrentlyProcessingAndQueuedEntries:v11];
  v8[2](v8, v15[5]);

  _Block_object_dispose(&v14, 8);
  os_unfair_lock_unlock(&self->_queueStateLock);
}

- (id)orderingSummaryForRequestList:(id)a3
{
  v3 = [a3 valueForKey:@"identifier"];
  v4 = [v3 componentsJoinedByString:@" "];

  return v4;
}

- (BOOL)copyConversionOutput:(id)a3 toRequestDestination:(id)a4 requestIdentifier:(id)a5 error:(id *)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v30 = 0;
  v31 = &v30;
  v32 = 0x2020000000;
  v33 = 1;
  v24 = 0;
  v25 = &v24;
  v26 = 0x3032000000;
  v27 = sub_100009318;
  v28 = sub_100009328;
  v29 = 0;
  v12 = +[NSFileManager defaultManager];
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_10000AF7C;
  v18[3] = &unk_10003D150;
  v13 = v10;
  v19 = v13;
  v14 = v11;
  v20 = v14;
  v22 = &v30;
  v23 = &v24;
  v15 = v12;
  v21 = v15;
  [v9 enumerateResourceURLs:v18];
  v16 = *(v31 + 24);
  if (a6 && (v31[3] & 1) == 0)
  {
    *a6 = v25[5];
    v16 = *(v31 + 24);
  }

  _Block_object_dispose(&v24, 8);
  _Block_object_dispose(&v30, 8);

  return v16 & 1;
}

- (void)processCompletedQueueEntry:(id)a3 resultURLCollection:(id)a4 didConvertSuccessfully:(BOOL)a5 conversionOutputInformation:(id)a6 conversionOutputData:(id)a7 conversionOutputFileType:(id)a8 conversionError:(id)a9
{
  v12 = a5;
  v16 = a3;
  v42 = a4;
  v47 = a6;
  v17 = a7;
  v18 = a8;
  v19 = a9;
  dispatch_assert_queue_V2(self->_requestProcessingQueue);
  v41 = self;
  os_unfair_lock_assert_not_owner(&self->_queueStateLock);
  v46 = v19;
  v49 = v12;
  if ((v19 == 0) != v12)
  {
    v38 = +[NSAssertionHandler currentHandler];
    [v38 handleFailureInMethod:a2 object:self file:@"PAMediaConversionServiceSharedUtilitiesServiceSide.m" lineNumber:670 description:{@"Invalid parameter not satisfying: %@", @"(didConvertSuccessfully || error) && !(didConvertSuccessfully && error)"}];

    if (v16)
    {
      goto LABEL_3;
    }

LABEL_35:
    v39 = +[NSAssertionHandler currentHandler];
    [v39 handleFailureInMethod:a2 object:self file:@"PAMediaConversionServiceSharedUtilitiesServiceSide.m" lineNumber:671 description:{@"Invalid parameter not satisfying: %@", @"completedQueueEntry"}];

    goto LABEL_3;
  }

  if (!v16)
  {
    goto LABEL_35;
  }

LABEL_3:
  v20 = [v16 initialRequestConversionOptions];
  v21 = [v20 objectForKeyedSubscript:@"PAMediaConversionServiceOptionWantsResultAsDataKey"];
  v45 = [v21 BOOLValue];

  v22 = [v16 initialRequestConversionOptions];
  v23 = [v22 objectForKeyedSubscript:@"PAMediaConversionServiceOptionIsPhotosAdjustmentsCalculationKey"];
  v24 = [v23 BOOLValue];

  if (!v17 && v49 && v45 && !v24)
  {
    v40 = +[NSAssertionHandler currentHandler];
    [v40 handleFailureInMethod:a2 object:self file:@"PAMediaConversionServiceSharedUtilitiesServiceSide.m" lineNumber:680 description:@"Unexpected nil output data for completed conversion with result requested as data"];
  }

  v25 = [v16 clientRequestsSnapshot];
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    *buf = 138543362;
    v57 = v16;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "Conversion completed: %{public}@", buf, 0xCu);
  }

  v48 = +[NSMutableSet set];
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  v26 = v25;
  v27 = [v26 countByEnumeratingWithState:&v51 objects:v55 count:16];
  if (v27)
  {
    v28 = v27;
    v29 = *v52;
    do
    {
      for (i = 0; i != v28; i = i + 1)
      {
        if (*v52 != v29)
        {
          objc_enumerationMutation(v26);
        }

        v31 = *(*(&v51 + 1) + 8 * i);
        v32 = [v31 requestTracker];
        [v32 setOutputData:v17];
        [v32 setOutputTypeIdentifier:v18];
        if (!v49)
        {
          [v32 setError:v46];
          goto LABEL_31;
        }

        v33 = [v32 destinationURLCollection];
        if ([v48 containsObject:v33])
        {
          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
          {
            *buf = 138543362;
            v57 = v26;
            _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "Request %{public}@ has same destination as another request handled by the same conversion, not copying output", buf, 0xCu);
          }
        }

        else if ([v16 taskTypeSupportsDeduplication])
        {
          v34 = [v31 requiresDeduplicationAgainstOriginalWithIdenticalOutput];
          if (v45)
          {
            goto LABEL_26;
          }

          if ((v34 & 1) == 0)
          {
            v35 = [v32 requestIdentifier];
            v50 = 0;
            v43 = [(MediaConversionQueue *)v41 copyConversionOutput:v42 toRequestDestination:v33 requestIdentifier:v35 error:&v50];
            v44 = v50;

            if (v43)
            {
              [v48 addObject:v33];
              v36 = v44;
            }

            else
            {
              v36 = v44;
              [v32 setError:v44];
            }
          }
        }

        else if (v45)
        {
LABEL_26:
          [v32 setOutputData:v17];
          if (v18)
          {
            [v32 setOutputTypeIdentifier:v18];
          }
        }

        [v32 setOutputInformation:v47];

LABEL_31:
        v37 = [v16 initialRequestIdentifier];
        [v32 markAsCompletedWithInitialRequestIdentifier:v37];
      }

      v28 = [v26 countByEnumeratingWithState:&v51 objects:v55 count:16];
    }

    while (v28);
  }
}

- (id)entriesSortedByExecutionOrderForPendingEntries:(id)a3
{
  v4 = a3;
  os_unfair_lock_assert_owner(&self->_queueStateLock);
  v5 = [v4 sortedArrayUsingComparator:&stru_10003D128];

  return v5;
}

- (BOOL)cancelForCameraIfPossibleAndRequiredForNextQueueEntry:(id)a3
{
  v4 = a3;
  os_unfair_lock_assert_owner(&self->_queueStateLock);
  v25 = v4;
  v5 = [v4 initialRequestConversionOptions];
  v6 = [v5 objectForKeyedSubscript:@"PAMediaConversionServiceOptionUnitTestSupportServiceShouldSimulateCameraActiveKey"];
  v7 = [v6 BOOLValue];

  if (v7)
  {
    v8 = 1;
  }

  else
  {
    v8 = [(PFCameraViewfinderSessionWatcher *)self->_cameraWatcher isCameraRunning];
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if ((objc_opt_respondsToSelector() & 1) != 0 && ([v25 allRequestsAreOptional] & v8) == 1)
  {
    v23 = self;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
    {
      *buf = 138543362;
      v34 = v25;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "Cancelling next queue entry %{public}@ because it is optional and camera viewfinder is running", buf, 0xCu);
    }

    [v25 clientRequestsSnapshot];
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    obj = v29 = 0u;
    v10 = [obj countByEnumeratingWithState:&v26 objects:v32 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v27;
      do
      {
        for (i = 0; i != v11; i = i + 1)
        {
          if (*v27 != v12)
          {
            objc_enumerationMutation(obj);
          }

          v14 = *(*(&v26 + 1) + 8 * i);
          v15 = [v14 requestTracker];
          v30 = NSDebugDescriptionErrorKey;
          v16 = [v14 identifier];
          v17 = [NSString stringWithFormat:@"Queued request %@ cancelled for camera", v16];
          v31 = v17;
          v18 = [NSDictionary dictionaryWithObjects:&v31 forKeys:&v30 count:1];
          v19 = [NSError errorWithDomain:@"PAMediaConversionServiceErrorDomain" code:5 userInfo:v18];

          [v15 setError:v19];
          v20 = [v25 initialRequestIdentifier];
          [v15 markAsCompletedWithInitialRequestIdentifier:v20];
        }

        v11 = [obj countByEnumeratingWithState:&v26 objects:v32 count:16];
      }

      while (v11);
    }

    [WeakRetained conversionQueue:v23 didCancelQueuedEntry:v25 clientRequests:obj];

    v21 = 1;
  }

  else
  {
    v21 = 0;
  }

  return v21;
}

- (id)optimizeQueueAndDequeueNextRequestQueueEntry
{
  os_unfair_lock_assert_owner(&self->_queueStateLock);
  if ([(NSMutableArray *)self->_queuedRequests count])
  {
    v4 = [(NSMutableArray *)self->_queuedRequests copy];
    v5 = [(MediaConversionQueue *)self entriesSortedByExecutionOrderForPendingEntries:v4];
    v6 = [v5 mutableCopy];
    queuedRequests = self->_queuedRequests;
    self->_queuedRequests = v6;

    if (([v4 isEqualToArray:v5] & 1) == 0 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
    {
      v8 = [(MediaConversionQueue *)self orderingSummaryForRequestList:v4];
      v9 = [(MediaConversionQueue *)self orderingSummaryForRequestList:v5];
      v13 = 138543618;
      v14 = v8;
      v15 = 2114;
      v16 = v9;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "Queue reordered from %{public}@ to %{public}@", &v13, 0x16u);
    }

    v10 = [(NSMutableArray *)self->_queuedRequests firstObject];
    if (!v10)
    {
      v12 = +[NSAssertionHandler currentHandler];
      [v12 handleFailureInMethod:a2 object:self file:@"PAMediaConversionServiceSharedUtilitiesServiceSide.m" lineNumber:578 description:@"Unexpected empty queue"];
    }

    [(NSMutableArray *)self->_queuedRequests removeObjectAtIndex:0];
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
    {
      v13 = 138543362;
      v14 = v10;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "Processing queue, dequeued %{public}@", &v13, 0xCu);
    }

    if ([(MediaConversionQueue *)self cancelForCameraIfPossibleAndRequiredForNextQueueEntry:v10])
    {

      [(MediaConversionQueue *)self scheduleQueueProcessing];
      v10 = 0;
    }

    else
    {
      [v10 didDequeueAndStartProcessingQueueEntry];
    }
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
    {
      LOWORD(v13) = 0;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "Processing queue is empty", &v13, 2u);
    }

    v10 = 0;
  }

  return v10;
}

- (void)processQueue
{
  v12 = os_transaction_create();
  dispatch_assert_queue_V2(self->_requestProcessingQueue);
  os_unfair_lock_lock(&self->_queueStateLock);
  if (self->_currentlyProcessingRequestQueueEntry)
  {
    v9 = +[NSAssertionHandler currentHandler];
    [v9 handleFailureInMethod:a2 object:self file:@"PAMediaConversionServiceSharedUtilitiesServiceSide.m" lineNumber:533 description:@"Unexpected current request"];
  }

  v4 = [(MediaConversionQueue *)self optimizeQueueAndDequeueNextRequestQueueEntry];
  currentlyProcessingRequestQueueEntry = self->_currentlyProcessingRequestQueueEntry;
  self->_currentlyProcessingRequestQueueEntry = v4;

  v6 = self->_currentlyProcessingRequestQueueEntry;
  os_unfair_lock_unlock(&self->_queueStateLock);
  if (v6)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    if (WeakRetained)
    {
      v8 = objc_autoreleasePoolPush();
      [WeakRetained conversionQueue:self processNextEntry:self->_currentlyProcessingRequestQueueEntry];
      objc_autoreleasePoolPop(v8);
      if (self->_currentlyProcessingRequestQueueEntry)
      {
        v10 = +[NSAssertionHandler currentHandler];
        v11 = NSStringFromSelector("markCompletionAndRetrieveClientRequestsForQueueEntry:resultURLCollection:didConvertSuccessfully:conversionOutputInformation:conversionOutputData:conversionOutputFileType:conversionError:");
        [v10 handleFailureInMethod:a2 object:self file:@"PAMediaConversionServiceSharedUtilitiesServiceSide.m" lineNumber:550 description:{@"Delegate failed to call %@ during processing", v11}];
      }

      if (objc_opt_respondsToSelector())
      {
        [WeakRetained conversionQueueDidFinishProcessingEntry:self];
      }
    }
  }
}

- (void)scheduleQueueProcessing
{
  requestProcessingQueue = self->_requestProcessingQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000C10C;
  block[3] = &unk_10003D438;
  block[4] = self;
  dispatch_async(requestProcessingQueue, block);
}

- (id)anyDestinationURLCollectionForQueueEntry:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_queueStateLock);
  v5 = [v4 anyDestinationURLCollection];

  os_unfair_lock_unlock(&self->_queueStateLock);

  return v5;
}

- (void)enumerateCurrentlyProcessingAndQueuedEntries:(id)a3
{
  v4 = a3;
  os_unfair_lock_assert_owner(&self->_queueStateLock);
  v9 = 0;
  currentlyProcessingRequestQueueEntry = self->_currentlyProcessingRequestQueueEntry;
  if (!currentlyProcessingRequestQueueEntry || ((*(v4 + 2))(v4, currentlyProcessingRequestQueueEntry, &v9), (v9 & 1) == 0))
  {
    queuedRequests = self->_queuedRequests;
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_10000C244;
    v7[3] = &unk_10003D0E8;
    v8 = v4;
    [(NSMutableArray *)queuedRequests enumerateObjectsUsingBlock:v7];
  }
}

- (BOOL)delegateCanCancelCurrentlyProcessingRequestQueueEntry
{
  os_unfair_lock_assert_owner(&self->_queueStateLock);
  if (!self->_currentlyProcessingRequestQueueEntry)
  {
    return 0;
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    v4 = [(MediaConversionQueueEntry *)self->_currentlyProcessingRequestQueueEntry allRequestsAreOptional];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (BOOL)enqueueEntry:(id)a3 clientRequest:(id)a4 isDuplicateOfOriginalQueueEntry:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v39 = 0;
  v40 = &v39;
  v41 = 0x2020000000;
  v42 = 0;
  v35 = 0;
  v36 = &v35;
  v37 = 0x2020000000;
  v38 = 0;
  v29 = 0;
  v30 = &v29;
  v31 = 0x3032000000;
  v32 = sub_100009318;
  v33 = sub_100009328;
  v34 = 0;
  v10 = [v9 requestTracker];
  os_unfair_lock_lock(&self->_queueStateLock);
  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = sub_10000C88C;
  v23[3] = &unk_10003D0C0;
  v11 = v8;
  v24 = v11;
  v26 = &v39;
  v12 = v9;
  v25 = v12;
  v27 = &v35;
  v28 = &v29;
  [(MediaConversionQueue *)self enumerateCurrentlyProcessingAndQueuedEntries:v23];
  v13 = *(v36 + 24);
  if (v13 == 1)
  {
    v14 = &_os_log_default;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
    {
      v15 = [v12 identifier];
      v16 = [v11 identifier];
      v17 = v30[5];
      *buf = 138543874;
      v44 = v15;
      v45 = 2114;
      v46 = v16;
      v47 = 2114;
      v48 = v17;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "New queue entry %{public}@ for request %{public}@ is duplicate of existing entry %{public}@ but identical output is required but not present", buf, 0x20u);
    }

LABEL_5:
    v18 = 0;
    goto LABEL_20;
  }

  if (*(v40 + 24) == 1)
  {
    if (v30[5] == self->_currentlyProcessingRequestQueueEntry)
    {
      [v10 didDequeueAndStartProcessingRequest];
    }

    if (!a5)
    {
      goto LABEL_5;
    }

    v18 = 0;
    *a5 = v30[5];
  }

  else
  {
    v19 = [v12 identifier];
    [v11 setInitialRequestIdentifier:v19];

    [v11 addClientRequest:v12];
    [(NSMutableArray *)self->_queuedRequests addObject:v11];
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
    {
      *buf = 138543362;
      v44 = v11;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "Enqueued new queue entry %{public}@", buf, 0xCu);
    }

    if (-[MediaConversionQueue delegateCanCancelCurrentlyProcessingRequestQueueEntry](self, "delegateCanCancelCurrentlyProcessingRequestQueueEntry") && ([v11 allRequestsAreBackground] & 1) == 0)
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "Currently processing queue entry is optional, cancelling because non-optional non-background work was enqueued", buf, 2u);
      }

      v18 = self->_currentlyProcessingRequestQueueEntry;
    }

    else
    {
      v18 = 0;
    }

    [(MediaConversionQueue *)self scheduleQueueProcessing];
  }

LABEL_20:

  v20 = v13 ^ 1;
  os_unfair_lock_unlock(&self->_queueStateLock);
  if (v18)
  {
    v21 = [(MediaConversionQueue *)self delegate];
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
    {
      *buf = 138412546;
      v44 = v21;
      v45 = 2114;
      v46 = v18;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "Enqueued new request while currently processing queue entry is optional, requesting delegate %@ to cancel %{public}@", buf, 0x16u);
    }

    if (v21)
    {
      [(MediaConversionQueue *)self assertDelegate:v21 respondsToSelector:"conversionQueue:cancelCurrentlyProcessingEntry:"];
      [v21 conversionQueue:self cancelCurrentlyProcessingEntry:v18];
    }
  }

  _Block_object_dispose(&v29, 8);
  _Block_object_dispose(&v35, 8);
  _Block_object_dispose(&v39, 8);

  return v20;
}

- (id)queueEntryWithConversionOptions:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    v11 = +[NSAssertionHandler currentHandler];
    [v11 handleFailureInMethod:a2 object:self file:@"PAMediaConversionServiceSharedUtilitiesServiceSide.m" lineNumber:402 description:{@"Invalid parameter not satisfying: %@", @"conversionOptions"}];
  }

  os_unfair_lock_lock(&self->_queueStateLock);
  v6 = self->_queueEntryCounter + 1;
  self->_queueEntryCounter = v6;
  os_unfair_lock_unlock(&self->_queueStateLock);
  v7 = [MediaConversionQueueEntry alloc];
  v8 = [NSString stringWithFormat:@"QE-%lu", v6];
  v9 = [(MediaConversionQueueEntry *)v7 initWithIdentifier:v8 initialConversionOptions:v5];

  return v9;
}

- (unint64_t)nextRequestNumber
{
  os_unfair_lock_lock(&self->_queueStateLock);
  v3 = self->_requestCounter + 1;
  self->_requestCounter = v3;
  os_unfair_lock_unlock(&self->_queueStateLock);
  return v3;
}

- (MediaConversionQueue)initWithDelegate:(id)a3
{
  v4 = a3;
  v18.receiver = self;
  v18.super_class = MediaConversionQueue;
  v5 = [(MediaConversionQueue *)&v18 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_delegate, v4);
    v7 = +[NSMutableArray array];
    queuedRequests = v6->_queuedRequests;
    v6->_queuedRequests = v7;

    v9 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v10 = dispatch_queue_create("com.apple.photos.media-conversion.requestProcessing", v9);
    requestProcessingQueue = v6->_requestProcessingQueue;
    v6->_requestProcessingQueue = v10;

    v12 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v13 = dispatch_queue_create("com.apple.photos.media-conversion.cameraWatcher", v12);
    cameraWatcherQueue = v6->_cameraWatcherQueue;
    v6->_cameraWatcherQueue = v13;

    v6->_queueStateLock._os_unfair_lock_opaque = 0;
    v15 = [[PFCameraViewfinderSessionWatcher alloc] initWithDispatchQueue:v6->_cameraWatcherQueue delegate:v6];
    cameraWatcher = v6->_cameraWatcher;
    v6->_cameraWatcher = v15;

    [(PFCameraViewfinderSessionWatcher *)v6->_cameraWatcher startWatching];
  }

  return v6;
}

@end