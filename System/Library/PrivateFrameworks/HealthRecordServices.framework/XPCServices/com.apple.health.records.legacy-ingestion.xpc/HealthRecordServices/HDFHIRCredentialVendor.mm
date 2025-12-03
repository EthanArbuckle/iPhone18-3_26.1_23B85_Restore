@interface HDFHIRCredentialVendor
- (HDFHIRCredentialResult)currentResult;
- (HDFHIRCredentialVendor)init;
- (HDFHIRCredentialVendor)initWithCredential:(id)credential;
- (HDFHIRCredentialVendorDelegate)delegate;
- (void)_queue_dispatchResult:(id)result clientCompletion:(id)completion;
- (void)_queue_enqueueRefreshForResult:(id)result clientCompletion:(id)completion;
- (void)_queue_fetchOrRefreshCredentialWithClientCompletion:(id)completion;
- (void)_queue_handleDelegateRefreshCompletionForInitialResult:(id)result refreshResult:(id)refreshResult;
- (void)_queue_performRefreshRequestTaskForResult:(id)result;
- (void)_queue_releaseDelegate;
- (void)_queue_retainDelegate;
- (void)_setCurrentResultSync:(id)sync;
- (void)fetchOrRefreshCredentialWithCompletion:(id)completion;
- (void)setCurrentResult:(id)result;
@end

@implementation HDFHIRCredentialVendor

- (HDFHIRCredentialVendor)init
{
  v3 = NSStringFromSelector(a2);
  [NSException raise:NSInvalidArgumentException format:@"The -%@ method is not available on %@", v3, objc_opt_class()];

  return 0;
}

- (HDFHIRCredentialVendor)initWithCredential:(id)credential
{
  credentialCopy = credential;
  v15.receiver = self;
  v15.super_class = HDFHIRCredentialVendor;
  v5 = [(HDFHIRCredentialVendor *)&v15 init];
  if (v5)
  {
    v6 = HKCreateConcurrentDispatchQueue();
    clientQueue = v5->_clientQueue;
    v5->_clientQueue = v6;

    v8 = HKCreateSerialDispatchQueue();
    credentialResultQueue = v5->_credentialResultQueue;
    v5->_credentialResultQueue = v8;

    v10 = HKCreateSerialDispatchQueue();
    queue = v5->_queue;
    v5->_queue = v10;

    v12 = [[HDFHIRCredentialResult alloc] _initWithCredential:credentialCopy authResponse:0];
    currentResult = v5->_currentResult;
    v5->_currentResult = v12;
  }

  return v5;
}

- (void)fetchOrRefreshCredentialWithCompletion:(id)completion
{
  completionCopy = completion;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000037CC;
  v7[3] = &unk_100018538;
  v7[4] = self;
  v8 = completionCopy;
  v6 = completionCopy;
  dispatch_async(queue, v7);
}

- (void)_queue_fetchOrRefreshCredentialWithClientCompletion:(id)completion
{
  queue = self->_queue;
  completionCopy = completion;
  dispatch_assert_queue_V2(queue);
  [(HDFHIRCredentialVendor *)self _queue_retainDelegate];
  currentResult = [(HDFHIRCredentialVendor *)self currentResult];
  if ([currentResult shouldRefresh])
  {
    [(HDFHIRCredentialVendor *)self _queue_enqueueRefreshForResult:currentResult clientCompletion:completionCopy];
  }

  else
  {
    [(HDFHIRCredentialVendor *)self _queue_dispatchResult:currentResult clientCompletion:completionCopy];
  }

  [(HDFHIRCredentialVendor *)self _queue_releaseDelegate];
}

- (void)_queue_dispatchResult:(id)result clientCompletion:(id)completion
{
  resultCopy = result;
  completionCopy = completion;
  dispatch_assert_queue_V2(self->_queue);
  clientQueue = self->_clientQueue;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10000394C;
  v11[3] = &unk_100018560;
  v12 = resultCopy;
  v13 = completionCopy;
  v9 = resultCopy;
  v10 = completionCopy;
  dispatch_async(clientQueue, v11);
}

- (void)_queue_enqueueRefreshForResult:(id)result clientCompletion:(id)completion
{
  resultCopy = result;
  completionCopy = completion;
  dispatch_assert_queue_V2(self->_queue);
  if (![(HDFHIRCredentialVendor *)self _queue_hasInFlightRefreshTask])
  {
    [(HDFHIRCredentialVendor *)self _queue_performRefreshRequestTaskForResult:resultCopy];
  }

  v8 = self->_inFlightRefreshResultPromise;
  inFlightRefreshCompletionGroup = self->_inFlightRefreshCompletionGroup;
  clientQueue = self->_clientQueue;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100003A8C;
  v13[3] = &unk_100018560;
  v14 = v8;
  v15 = completionCopy;
  v11 = v8;
  v12 = completionCopy;
  dispatch_group_notify(inFlightRefreshCompletionGroup, clientQueue, v13);
}

- (void)_queue_performRefreshRequestTaskForResult:(id)result
{
  resultCopy = result;
  dispatch_assert_queue_V2(self->_queue);
  if ([(HDFHIRCredentialVendor *)self _queue_hasInFlightRefreshTask])
  {
    sub_10000BAB8();
  }

  if (!self->_strongDelegate)
  {
    sub_10000BB2C();
  }

  self->_hasInFlightRefreshTask = 1;
  v5 = objc_alloc_init(_HDFHIRCredentialResultPromise);
  inFlightRefreshResultPromise = self->_inFlightRefreshResultPromise;
  self->_inFlightRefreshResultPromise = v5;

  v7 = dispatch_group_create();
  inFlightRefreshCompletionGroup = self->_inFlightRefreshCompletionGroup;
  self->_inFlightRefreshCompletionGroup = v7;

  dispatch_group_enter(self->_inFlightRefreshCompletionGroup);
  strongDelegate = self->_strongDelegate;
  credential = [resultCopy credential];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100003C20;
  v12[3] = &unk_1000185B0;
  v12[4] = self;
  v13 = resultCopy;
  v11 = resultCopy;
  [(HDFHIRCredentialVendorDelegate *)strongDelegate credentialVendor:self refreshCredential:credential completion:v12];
}

- (void)_queue_handleDelegateRefreshCompletionForInitialResult:(id)result refreshResult:(id)refreshResult
{
  refreshResultCopy = refreshResult;
  queue = self->_queue;
  resultCopy = result;
  dispatch_assert_queue_V2(queue);
  authResponse = [refreshResultCopy authResponse];

  if (authResponse)
  {
    authResponse2 = [refreshResultCopy authResponse];
    v10 = [resultCopy _resultWithAuthResponse:authResponse2];
  }

  else
  {
    error = [refreshResultCopy error];

    if (!error)
    {
      sub_10000BBA0();
    }

    authResponse2 = [refreshResultCopy error];
    v10 = [resultCopy _resultWithRefreshError:authResponse2];
  }

  v12 = v10;

  [(HDFHIRCredentialVendor *)self _setCurrentResultSync:v12];
  credentialResultDidUpdateHandler = [(HDFHIRCredentialVendor *)self credentialResultDidUpdateHandler];
  if (credentialResultDidUpdateHandler)
  {
    endStates = [refreshResultCopy endStates];
    v15 = endStates;
    if (endStates)
    {
      v16 = endStates;
    }

    else
    {
      v16 = [[HKFHIRRequestTaskEndStates alloc] initWithEndStates:&__NSArray0__struct];
    }

    v17 = v16;

    (credentialResultDidUpdateHandler)[2](credentialResultDidUpdateHandler, v12, v17);
  }

  [(_HDFHIRCredentialResultPromise *)self->_inFlightRefreshResultPromise fulfillWithResult:v12];
  inFlightRefreshResultPromise = self->_inFlightRefreshResultPromise;
  self->_inFlightRefreshResultPromise = 0;

  inFlightRefreshCompletionGroup = self->_inFlightRefreshCompletionGroup;
  self->_inFlightRefreshCompletionGroup = 0;
  v20 = inFlightRefreshCompletionGroup;

  self->_hasInFlightRefreshTask = 0;
  dispatch_group_leave(v20);
}

- (void)_queue_retainDelegate
{
  dispatch_assert_queue_V2(self->_queue);
  if (!self->_strongDelegateRetainCount)
  {
    delegate = [(HDFHIRCredentialVendor *)self delegate];
    strongDelegate = self->_strongDelegate;
    self->_strongDelegate = delegate;

    if (!self->_strongDelegate)
    {
      sub_10000BC14();
    }
  }

  ++self->_strongDelegateRetainCount;
}

- (void)_queue_releaseDelegate
{
  dispatch_assert_queue_V2(self->_queue);
  strongDelegateRetainCount = self->_strongDelegateRetainCount;
  if (!strongDelegateRetainCount)
  {
    sub_10000BC80(a2, self, &self->_strongDelegateRetainCount, &v7);
    strongDelegateRetainCount = v7;
  }

  v5 = strongDelegateRetainCount - 1;
  self->_strongDelegateRetainCount = v5;
  if (!v5)
  {
    strongDelegate = self->_strongDelegate;
    self->_strongDelegate = 0;
  }
}

- (HDFHIRCredentialResult)currentResult
{
  dispatch_assert_queue_not_V2(self->_credentialResultQueue);
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = sub_1000040A8;
  v11 = sub_1000040B8;
  v12 = 0;
  credentialResultQueue = self->_credentialResultQueue;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1000040C0;
  v6[3] = &unk_1000185D8;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(credentialResultQueue, v6);
  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

- (void)setCurrentResult:(id)result
{
  resultCopy = result;
  credentialResultQueue = self->_credentialResultQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10000416C;
  v7[3] = &unk_100018600;
  v7[4] = self;
  v8 = resultCopy;
  v6 = resultCopy;
  dispatch_async(credentialResultQueue, v7);
}

- (void)_setCurrentResultSync:(id)sync
{
  syncCopy = sync;
  dispatch_assert_queue_not_V2(self->_credentialResultQueue);
  credentialResultQueue = self->_credentialResultQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100004224;
  v7[3] = &unk_100018600;
  v7[4] = self;
  v8 = syncCopy;
  v6 = syncCopy;
  dispatch_sync(credentialResultQueue, v7);
}

- (HDFHIRCredentialVendorDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end