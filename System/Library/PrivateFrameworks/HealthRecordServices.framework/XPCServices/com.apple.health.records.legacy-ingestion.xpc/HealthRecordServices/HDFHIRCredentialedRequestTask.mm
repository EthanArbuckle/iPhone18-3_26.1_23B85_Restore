@interface HDFHIRCredentialedRequestTask
- (HDFHIRCredentialResult)credentialResult;
- (HDFHIRCredentialedRequestTask)initWithCredentialedSession:(id)session;
- (HDFHIRCredentialedRequestTask)initWithSession:(id)session;
- (void)_handleError:(id)error endState:(id)state;
- (void)setCredentialResult:(id)result;
- (void)startTaskWithRequest:(id)request completion:(id)completion;
@end

@implementation HDFHIRCredentialedRequestTask

- (HDFHIRCredentialedRequestTask)initWithSession:(id)session
{
  v4 = NSStringFromSelector(a2);
  [NSException raise:NSInvalidArgumentException format:@"The -%@ method is not available on %@", v4, objc_opt_class()];

  return 0;
}

- (HDFHIRCredentialedRequestTask)initWithCredentialedSession:(id)session
{
  v7.receiver = self;
  v7.super_class = HDFHIRCredentialedRequestTask;
  v3 = [(HDFHIRRequestTask *)&v7 initWithSession:session];
  if (v3)
  {
    v4 = HKCreateSerialDispatchQueue();
    resourceQueue = v3->_resourceQueue;
    v3->_resourceQueue = v4;
  }

  return v3;
}

- (void)startTaskWithRequest:(id)request completion:(id)completion
{
  requestCopy = request;
  completionCopy = completion;
  credentialResult = [(HDFHIRCredentialedRequestTask *)self credentialResult];

  if (!credentialResult)
  {
    sub_10000C4C4();
  }

  v9.receiver = self;
  v9.super_class = HDFHIRCredentialedRequestTask;
  [(HDFHIRRequestTask *)&v9 startTaskWithRequest:requestCopy completion:completionCopy];
}

- (void)_handleError:(id)error endState:(id)state
{
  errorCopy = error;
  stateCopy = state;
  session = [(HDFHIRRequestTask *)self session];
  specification = [session specification];
  v10 = [specification shouldRefreshTokenForCredentialedTaskError:errorCopy];

  if (v10)
  {
    credentialResult = [(HDFHIRCredentialedRequestTask *)self credentialResult];
    [credentialResult invalidate];
  }

  v12.receiver = self;
  v12.super_class = HDFHIRCredentialedRequestTask;
  [(HDFHIRRequestTask *)&v12 _handleError:errorCopy endState:stateCopy];
}

- (HDFHIRCredentialResult)credentialResult
{
  dispatch_assert_queue_not_V2(self->_resourceQueue);
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = sub_10000A3C4;
  v11 = sub_10000A3D4;
  v12 = 0;
  resourceQueue = self->_resourceQueue;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10000A3DC;
  v6[3] = &unk_1000185D8;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(resourceQueue, v6);
  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

- (void)setCredentialResult:(id)result
{
  resultCopy = result;
  if (!resultCopy)
  {
    sub_10000C534();
  }

  resourceQueue = self->_resourceQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000A4C0;
  block[3] = &unk_1000187B0;
  v9 = resultCopy;
  v10 = a2;
  block[4] = self;
  v7 = resultCopy;
  dispatch_async(resourceQueue, block);
}

@end