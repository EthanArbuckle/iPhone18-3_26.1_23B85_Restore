@interface MediaConversionQueue
- (BOOL)cancelForCameraIfPossibleAndRequiredForNextQueueEntry:(id)entry;
- (BOOL)copyConversionOutput:(id)output toRequestDestination:(id)destination requestIdentifier:(id)identifier error:(id *)error;
- (BOOL)delegateCanCancelCurrentlyProcessingRequestQueueEntry;
- (BOOL)enqueueEntry:(id)entry clientRequest:(id)request isDuplicateOfOriginalQueueEntry:(id *)queueEntry;
- (BOOL)findAndRemoveCancelledRequest:(id *)request queueEntryWithoutRemainingClients:(id *)clients forRequestIdentifier:(id)identifier shouldCancelCurrentQueueEntry:(BOOL *)entry;
- (MediaConversionQueue)initWithDelegate:(id)delegate;
- (MediaConversionQueueDelegate)delegate;
- (id)anyDestinationURLCollectionForQueueEntry:(id)entry;
- (id)entriesSortedByExecutionOrderForPendingEntries:(id)entries;
- (id)optimizeQueueAndDequeueNextRequestQueueEntry;
- (id)orderingSummaryForRequestList:(id)list;
- (id)queueEntryWithConversionOptions:(id)options;
- (unint64_t)nextRequestNumber;
- (void)assertDelegate:(id)delegate respondsToSelector:(SEL)selector;
- (void)cameraWatcherDidChangeState:(id)state;
- (void)cancelRequestWithIdentifier:(id)identifier;
- (void)cancelRequestsForConnectionIdentifier:(id)identifier;
- (void)enumerateCurrentlyProcessingAndQueuedEntries:(id)entries;
- (void)modifyRequestWithIdentifier:(id)identifier changeHandler:(id)handler;
- (void)processCompletedQueueEntry:(id)entry resultURLCollection:(id)collection didConvertSuccessfully:(BOOL)successfully conversionOutputInformation:(id)information conversionOutputData:(id)data conversionOutputFileType:(id)type conversionError:(id)error;
- (void)processQueue;
- (void)scheduleQueueProcessing;
- (void)sendCancellationReplyForClientRequest:(id)request;
@end

@implementation MediaConversionQueue

- (MediaConversionQueueDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)cameraWatcherDidChangeState:(id)state
{
  cameraWatcherQueue = self->_cameraWatcherQueue;
  stateCopy = state;
  dispatch_assert_queue_V2(cameraWatcherQueue);
  isCameraRunning = [stateCopy isCameraRunning];

  delegate = [(MediaConversionQueue *)self delegate];
  v8 = objc_opt_respondsToSelector();
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    v10[0] = 67109632;
    v10[1] = isCameraRunning;
    v11 = 2048;
    v12 = delegate;
    v13 = 1024;
    v14 = v8 & 1;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "Media conversion queue camera watcher state change, new state = %d, delegate (%p) present and supports cancellation: %d", v10, 0x18u);
  }

  if ((isCameraRunning & v8) == 1)
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

        [delegate conversionQueue:self cancelCurrentlyProcessingEntry:v9];
      }
    }

    else
    {
      os_unfair_lock_unlock(&self->_queueStateLock);
    }
  }
}

- (void)sendCancellationReplyForClientRequest:(id)request
{
  requestCopy = request;
  os_unfair_lock_assert_not_owner(&self->_queueStateLock);
  if (!requestCopy)
  {
    v12 = +[NSAssertionHandler currentHandler];
    [v12 handleFailureInMethod:a2 object:self file:@"PAMediaConversionServiceSharedUtilitiesServiceSide.m" lineNumber:908 description:{@"Invalid parameter not satisfying: %@", @"cancelledRequest"}];
  }

  v13 = NSDebugDescriptionErrorKey;
  identifier = [requestCopy identifier];
  cancellationReasonDebugDescription = [requestCopy cancellationReasonDebugDescription];
  v8 = [NSString stringWithFormat:@"Request %@ cancelled with reason: %@", identifier, cancellationReasonDebugDescription];
  v14 = v8;
  v9 = [NSDictionary dictionaryWithObjects:&v14 forKeys:&v13 count:1];
  v10 = [NSError errorWithDomain:@"PAMediaConversionServiceErrorDomain" code:5 userInfo:v9];

  videoClientReplyHandler = [requestCopy videoClientReplyHandler];

  (videoClientReplyHandler)[2](videoClientReplyHandler, 4, 0, v10);
}

- (void)cancelRequestsForConnectionIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = +[NSMutableArray array];
  os_unfair_lock_lock(&self->_queueStateLock);
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_100010548;
  v17[3] = &unk_10003D890;
  v6 = v5;
  v18 = v6;
  v7 = identifierCopy;
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

- (void)assertDelegate:(id)delegate respondsToSelector:(SEL)selector
{
  delegateCopy = delegate;
  if (!delegateCopy)
  {
    v7 = +[NSAssertionHandler currentHandler];
    [v7 handleFailureInMethod:a2 object:self file:@"PAMediaConversionServiceSharedUtilitiesServiceSide.m" lineNumber:886 description:{@"Invalid parameter not satisfying: %@", @"strongDelegate"}];
  }

  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    v8 = +[NSAssertionHandler currentHandler];
    v9 = NSStringFromSelector(selector);
    [v8 handleFailureInMethod:a2 object:self file:@"PAMediaConversionServiceSharedUtilitiesServiceSide.m" lineNumber:887 description:{@"Delegate %@ doesn't implement %@", delegateCopy, v9}];
  }
}

- (BOOL)findAndRemoveCancelledRequest:(id *)request queueEntryWithoutRemainingClients:(id *)clients forRequestIdentifier:(id)identifier shouldCancelCurrentQueueEntry:(BOOL *)entry
{
  identifierCopy = identifier;
  os_unfair_lock_assert_owner(&self->_queueStateLock);
  v27 = 0;
  v28 = &v27;
  v29 = 0x3032000000;
  v30 = sub_10000F5EC;
  v31 = sub_10000F5FC;
  v32 = 0;
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = sub_10000F5EC;
  v25 = sub_10000F5FC;
  v26 = 0;
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_1000109CC;
  v17[3] = &unk_10003D868;
  v19 = &v27;
  v11 = identifierCopy;
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

        *entry = 1;
        if (!request)
        {
          goto LABEL_9;
        }

LABEL_8:
        *request = v28[5];
LABEL_9:
        if (clients)
        {
          *clients = v22[5];
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

    if (!request)
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

- (void)cancelRequestWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if (!identifierCopy)
  {
    v10 = +[NSAssertionHandler currentHandler];
    [v10 handleFailureInMethod:a2 object:self file:@"PAMediaConversionServiceSharedUtilitiesServiceSide.m" lineNumber:794 description:{@"Invalid parameter not satisfying: %@", @"requestIdentifier"}];
  }

  delegate = [(MediaConversionQueue *)self delegate];
  if (delegate)
  {
    v13[0] = 0;
    os_unfair_lock_lock(&self->_queueStateLock);
    v11 = 0;
    v12 = 0;
    v7 = [(MediaConversionQueue *)self findAndRemoveCancelledRequest:&v12 queueEntryWithoutRemainingClients:&v11 forRequestIdentifier:identifierCopy shouldCancelCurrentQueueEntry:v13];
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
        [(MediaConversionQueue *)self assertDelegate:delegate respondsToSelector:"conversionQueue:cancelCurrentlyProcessingEntry:"];
        [delegate conversionQueue:self cancelCurrentlyProcessingEntry:v9];
      }
    }
  }
}

- (void)modifyRequestWithIdentifier:(id)identifier changeHandler:(id)handler
{
  identifierCopy = identifier;
  handlerCopy = handler;
  if (!identifierCopy)
  {
    v10 = +[NSAssertionHandler currentHandler];
    [v10 handleFailureInMethod:a2 object:self file:@"PAMediaConversionServiceSharedUtilitiesServiceSide.m" lineNumber:769 description:{@"Invalid parameter not satisfying: %@", @"requestIdentifier"}];
  }

  os_unfair_lock_lock(&self->_queueStateLock);
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = sub_10000F5EC;
  v18 = sub_10000F5FC;
  v19 = 0;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100010FB4;
  v11[3] = &unk_10003D840;
  v13 = &v14;
  v9 = identifierCopy;
  v12 = v9;
  [(MediaConversionQueue *)self enumerateCurrentlyProcessingAndQueuedEntries:v11];
  handlerCopy[2](handlerCopy, v15[5]);

  _Block_object_dispose(&v14, 8);
  os_unfair_lock_unlock(&self->_queueStateLock);
}

- (id)orderingSummaryForRequestList:(id)list
{
  v3 = [list valueForKey:@"identifier"];
  v4 = [v3 componentsJoinedByString:@" "];

  return v4;
}

- (BOOL)copyConversionOutput:(id)output toRequestDestination:(id)destination requestIdentifier:(id)identifier error:(id *)error
{
  outputCopy = output;
  destinationCopy = destination;
  identifierCopy = identifier;
  v30 = 0;
  v31 = &v30;
  v32 = 0x2020000000;
  v33 = 1;
  v24 = 0;
  v25 = &v24;
  v26 = 0x3032000000;
  v27 = sub_10000F5EC;
  v28 = sub_10000F5FC;
  v29 = 0;
  v12 = +[NSFileManager defaultManager];
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_100011250;
  v18[3] = &unk_10003D818;
  v13 = destinationCopy;
  v19 = v13;
  v14 = identifierCopy;
  v20 = v14;
  v22 = &v30;
  v23 = &v24;
  v15 = v12;
  v21 = v15;
  [outputCopy enumerateResourceURLs:v18];
  v16 = *(v31 + 24);
  if (error && (v31[3] & 1) == 0)
  {
    *error = v25[5];
    v16 = *(v31 + 24);
  }

  _Block_object_dispose(&v24, 8);
  _Block_object_dispose(&v30, 8);

  return v16 & 1;
}

- (void)processCompletedQueueEntry:(id)entry resultURLCollection:(id)collection didConvertSuccessfully:(BOOL)successfully conversionOutputInformation:(id)information conversionOutputData:(id)data conversionOutputFileType:(id)type conversionError:(id)error
{
  successfullyCopy = successfully;
  entryCopy = entry;
  collectionCopy = collection;
  informationCopy = information;
  dataCopy = data;
  typeCopy = type;
  errorCopy = error;
  dispatch_assert_queue_V2(self->_requestProcessingQueue);
  selfCopy = self;
  os_unfair_lock_assert_not_owner(&self->_queueStateLock);
  v46 = errorCopy;
  v49 = successfullyCopy;
  if ((errorCopy == 0) != successfullyCopy)
  {
    v38 = +[NSAssertionHandler currentHandler];
    [v38 handleFailureInMethod:a2 object:self file:@"PAMediaConversionServiceSharedUtilitiesServiceSide.m" lineNumber:670 description:{@"Invalid parameter not satisfying: %@", @"(didConvertSuccessfully || error) && !(didConvertSuccessfully && error)"}];

    if (entryCopy)
    {
      goto LABEL_3;
    }

LABEL_35:
    v39 = +[NSAssertionHandler currentHandler];
    [v39 handleFailureInMethod:a2 object:self file:@"PAMediaConversionServiceSharedUtilitiesServiceSide.m" lineNumber:671 description:{@"Invalid parameter not satisfying: %@", @"completedQueueEntry"}];

    goto LABEL_3;
  }

  if (!entryCopy)
  {
    goto LABEL_35;
  }

LABEL_3:
  initialRequestConversionOptions = [entryCopy initialRequestConversionOptions];
  v21 = [initialRequestConversionOptions objectForKeyedSubscript:@"PAMediaConversionServiceOptionWantsResultAsDataKey"];
  bOOLValue = [v21 BOOLValue];

  initialRequestConversionOptions2 = [entryCopy initialRequestConversionOptions];
  v23 = [initialRequestConversionOptions2 objectForKeyedSubscript:@"PAMediaConversionServiceOptionIsPhotosAdjustmentsCalculationKey"];
  bOOLValue2 = [v23 BOOLValue];

  if (!dataCopy && v49 && bOOLValue && !bOOLValue2)
  {
    v40 = +[NSAssertionHandler currentHandler];
    [v40 handleFailureInMethod:a2 object:self file:@"PAMediaConversionServiceSharedUtilitiesServiceSide.m" lineNumber:680 description:@"Unexpected nil output data for completed conversion with result requested as data"];
  }

  clientRequestsSnapshot = [entryCopy clientRequestsSnapshot];
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    *buf = 138543362;
    v57 = entryCopy;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "Conversion completed: %{public}@", buf, 0xCu);
  }

  v48 = +[NSMutableSet set];
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  v26 = clientRequestsSnapshot;
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
        requestTracker = [v31 requestTracker];
        [requestTracker setOutputData:dataCopy];
        [requestTracker setOutputTypeIdentifier:typeCopy];
        if (!v49)
        {
          [requestTracker setError:v46];
          goto LABEL_31;
        }

        destinationURLCollection = [requestTracker destinationURLCollection];
        if ([v48 containsObject:destinationURLCollection])
        {
          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
          {
            *buf = 138543362;
            v57 = v26;
            _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "Request %{public}@ has same destination as another request handled by the same conversion, not copying output", buf, 0xCu);
          }
        }

        else if ([entryCopy taskTypeSupportsDeduplication])
        {
          requiresDeduplicationAgainstOriginalWithIdenticalOutput = [v31 requiresDeduplicationAgainstOriginalWithIdenticalOutput];
          if (bOOLValue)
          {
            goto LABEL_26;
          }

          if ((requiresDeduplicationAgainstOriginalWithIdenticalOutput & 1) == 0)
          {
            requestIdentifier = [requestTracker requestIdentifier];
            v50 = 0;
            v43 = [(MediaConversionQueue *)selfCopy copyConversionOutput:collectionCopy toRequestDestination:destinationURLCollection requestIdentifier:requestIdentifier error:&v50];
            v44 = v50;

            if (v43)
            {
              [v48 addObject:destinationURLCollection];
              v36 = v44;
            }

            else
            {
              v36 = v44;
              [requestTracker setError:v44];
            }
          }
        }

        else if (bOOLValue)
        {
LABEL_26:
          [requestTracker setOutputData:dataCopy];
          if (typeCopy)
          {
            [requestTracker setOutputTypeIdentifier:typeCopy];
          }
        }

        [requestTracker setOutputInformation:informationCopy];

LABEL_31:
        initialRequestIdentifier = [entryCopy initialRequestIdentifier];
        [requestTracker markAsCompletedWithInitialRequestIdentifier:initialRequestIdentifier];
      }

      v28 = [v26 countByEnumeratingWithState:&v51 objects:v55 count:16];
    }

    while (v28);
  }
}

- (id)entriesSortedByExecutionOrderForPendingEntries:(id)entries
{
  entriesCopy = entries;
  os_unfair_lock_assert_owner(&self->_queueStateLock);
  v5 = [entriesCopy sortedArrayUsingComparator:&stru_10003D7F0];

  return v5;
}

- (BOOL)cancelForCameraIfPossibleAndRequiredForNextQueueEntry:(id)entry
{
  entryCopy = entry;
  os_unfair_lock_assert_owner(&self->_queueStateLock);
  v25 = entryCopy;
  initialRequestConversionOptions = [entryCopy initialRequestConversionOptions];
  v6 = [initialRequestConversionOptions objectForKeyedSubscript:@"PAMediaConversionServiceOptionUnitTestSupportServiceShouldSimulateCameraActiveKey"];
  bOOLValue = [v6 BOOLValue];

  if (bOOLValue)
  {
    isCameraRunning = 1;
  }

  else
  {
    isCameraRunning = [(PFCameraViewfinderSessionWatcher *)self->_cameraWatcher isCameraRunning];
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if ((objc_opt_respondsToSelector() & 1) != 0 && ([v25 allRequestsAreOptional] & isCameraRunning) == 1)
  {
    selfCopy = self;
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
          requestTracker = [v14 requestTracker];
          v30 = NSDebugDescriptionErrorKey;
          identifier = [v14 identifier];
          v17 = [NSString stringWithFormat:@"Queued request %@ cancelled for camera", identifier];
          v31 = v17;
          v18 = [NSDictionary dictionaryWithObjects:&v31 forKeys:&v30 count:1];
          v19 = [NSError errorWithDomain:@"PAMediaConversionServiceErrorDomain" code:5 userInfo:v18];

          [requestTracker setError:v19];
          initialRequestIdentifier = [v25 initialRequestIdentifier];
          [requestTracker markAsCompletedWithInitialRequestIdentifier:initialRequestIdentifier];
        }

        v11 = [obj countByEnumeratingWithState:&v26 objects:v32 count:16];
      }

      while (v11);
    }

    [WeakRetained conversionQueue:selfCopy didCancelQueuedEntry:v25 clientRequests:obj];

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

    firstObject = [(NSMutableArray *)self->_queuedRequests firstObject];
    if (!firstObject)
    {
      v12 = +[NSAssertionHandler currentHandler];
      [v12 handleFailureInMethod:a2 object:self file:@"PAMediaConversionServiceSharedUtilitiesServiceSide.m" lineNumber:578 description:@"Unexpected empty queue"];
    }

    [(NSMutableArray *)self->_queuedRequests removeObjectAtIndex:0];
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
    {
      v13 = 138543362;
      v14 = firstObject;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "Processing queue, dequeued %{public}@", &v13, 0xCu);
    }

    if ([(MediaConversionQueue *)self cancelForCameraIfPossibleAndRequiredForNextQueueEntry:firstObject])
    {

      [(MediaConversionQueue *)self scheduleQueueProcessing];
      firstObject = 0;
    }

    else
    {
      [firstObject didDequeueAndStartProcessingQueueEntry];
    }
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
    {
      LOWORD(v13) = 0;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "Processing queue is empty", &v13, 2u);
    }

    firstObject = 0;
  }

  return firstObject;
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

  optimizeQueueAndDequeueNextRequestQueueEntry = [(MediaConversionQueue *)self optimizeQueueAndDequeueNextRequestQueueEntry];
  currentlyProcessingRequestQueueEntry = self->_currentlyProcessingRequestQueueEntry;
  self->_currentlyProcessingRequestQueueEntry = optimizeQueueAndDequeueNextRequestQueueEntry;

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
  block[2] = sub_1000123E0;
  block[3] = &unk_10003D7B0;
  block[4] = self;
  dispatch_async(requestProcessingQueue, block);
}

- (id)anyDestinationURLCollectionForQueueEntry:(id)entry
{
  entryCopy = entry;
  os_unfair_lock_lock(&self->_queueStateLock);
  anyDestinationURLCollection = [entryCopy anyDestinationURLCollection];

  os_unfair_lock_unlock(&self->_queueStateLock);

  return anyDestinationURLCollection;
}

- (void)enumerateCurrentlyProcessingAndQueuedEntries:(id)entries
{
  entriesCopy = entries;
  os_unfair_lock_assert_owner(&self->_queueStateLock);
  v9 = 0;
  currentlyProcessingRequestQueueEntry = self->_currentlyProcessingRequestQueueEntry;
  if (!currentlyProcessingRequestQueueEntry || ((*(entriesCopy + 2))(entriesCopy, currentlyProcessingRequestQueueEntry, &v9), (v9 & 1) == 0))
  {
    queuedRequests = self->_queuedRequests;
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_100012518;
    v7[3] = &unk_10003D788;
    v8 = entriesCopy;
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
    allRequestsAreOptional = [(MediaConversionQueueEntry *)self->_currentlyProcessingRequestQueueEntry allRequestsAreOptional];
  }

  else
  {
    allRequestsAreOptional = 0;
  }

  return allRequestsAreOptional;
}

- (BOOL)enqueueEntry:(id)entry clientRequest:(id)request isDuplicateOfOriginalQueueEntry:(id *)queueEntry
{
  entryCopy = entry;
  requestCopy = request;
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
  v32 = sub_10000F5EC;
  v33 = sub_10000F5FC;
  v34 = 0;
  requestTracker = [requestCopy requestTracker];
  os_unfair_lock_lock(&self->_queueStateLock);
  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = sub_100012B60;
  v23[3] = &unk_10003D760;
  v11 = entryCopy;
  v24 = v11;
  v26 = &v39;
  v12 = requestCopy;
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
      identifier = [v12 identifier];
      identifier2 = [v11 identifier];
      v17 = v30[5];
      *buf = 138543874;
      v44 = identifier;
      v45 = 2114;
      v46 = identifier2;
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
      [requestTracker didDequeueAndStartProcessingRequest];
    }

    if (!queueEntry)
    {
      goto LABEL_5;
    }

    v18 = 0;
    *queueEntry = v30[5];
  }

  else
  {
    identifier3 = [v12 identifier];
    [v11 setInitialRequestIdentifier:identifier3];

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
    delegate = [(MediaConversionQueue *)self delegate];
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
    {
      *buf = 138412546;
      v44 = delegate;
      v45 = 2114;
      v46 = v18;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "Enqueued new request while currently processing queue entry is optional, requesting delegate %@ to cancel %{public}@", buf, 0x16u);
    }

    if (delegate)
    {
      [(MediaConversionQueue *)self assertDelegate:delegate respondsToSelector:"conversionQueue:cancelCurrentlyProcessingEntry:"];
      [delegate conversionQueue:self cancelCurrentlyProcessingEntry:v18];
    }
  }

  _Block_object_dispose(&v29, 8);
  _Block_object_dispose(&v35, 8);
  _Block_object_dispose(&v39, 8);

  return v20;
}

- (id)queueEntryWithConversionOptions:(id)options
{
  optionsCopy = options;
  if (!optionsCopy)
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
  v9 = [(MediaConversionQueueEntry *)v7 initWithIdentifier:v8 initialConversionOptions:optionsCopy];

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

- (MediaConversionQueue)initWithDelegate:(id)delegate
{
  delegateCopy = delegate;
  v18.receiver = self;
  v18.super_class = MediaConversionQueue;
  v5 = [(MediaConversionQueue *)&v18 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_delegate, delegateCopy);
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