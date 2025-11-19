@interface HDFHIRCredentialedRequestTask
- (HDFHIRCredentialResult)credentialResult;
- (HDFHIRCredentialedRequestTask)initWithCredentialedSession:(id)a3;
- (HDFHIRCredentialedRequestTask)initWithSession:(id)a3;
- (void)_handleError:(id)a3 endState:(id)a4;
- (void)setCredentialResult:(id)a3;
- (void)startTaskWithRequest:(id)a3 completion:(id)a4;
@end

@implementation HDFHIRCredentialedRequestTask

- (HDFHIRCredentialedRequestTask)initWithSession:(id)a3
{
  v4 = NSStringFromSelector(a2);
  [NSException raise:NSInvalidArgumentException format:@"The -%@ method is not available on %@", v4, objc_opt_class()];

  return 0;
}

- (HDFHIRCredentialedRequestTask)initWithCredentialedSession:(id)a3
{
  v7.receiver = self;
  v7.super_class = HDFHIRCredentialedRequestTask;
  v3 = [(HDFHIRRequestTask *)&v7 initWithSession:a3];
  if (v3)
  {
    v4 = HKCreateSerialDispatchQueue();
    resourceQueue = v3->_resourceQueue;
    v3->_resourceQueue = v4;
  }

  return v3;
}

- (void)startTaskWithRequest:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(HDFHIRCredentialedRequestTask *)self credentialResult];

  if (!v8)
  {
    sub_10000C4C4();
  }

  v9.receiver = self;
  v9.super_class = HDFHIRCredentialedRequestTask;
  [(HDFHIRRequestTask *)&v9 startTaskWithRequest:v6 completion:v7];
}

- (void)_handleError:(id)a3 endState:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(HDFHIRRequestTask *)self session];
  v9 = [v8 specification];
  v10 = [v9 shouldRefreshTokenForCredentialedTaskError:v6];

  if (v10)
  {
    v11 = [(HDFHIRCredentialedRequestTask *)self credentialResult];
    [v11 invalidate];
  }

  v12.receiver = self;
  v12.super_class = HDFHIRCredentialedRequestTask;
  [(HDFHIRRequestTask *)&v12 _handleError:v6 endState:v7];
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

- (void)setCredentialResult:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    sub_10000C534();
  }

  resourceQueue = self->_resourceQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000A4C0;
  block[3] = &unk_1000187B0;
  v9 = v5;
  v10 = a2;
  block[4] = self;
  v7 = v5;
  dispatch_async(resourceQueue, block);
}

@end