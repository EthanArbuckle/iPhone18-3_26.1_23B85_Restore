@interface HDFHIRResourceTask
- (id)createURLRequestWithCredentialResult:(id)a3 error:(id *)a4;
- (id)errorForRequest:(id)a3 response:(id)a4 data:(id)a5;
- (void)createURLRequestWithCompletion:(id)a3;
@end

@implementation HDFHIRResourceTask

- (void)createURLRequestWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(HDFHIRCredentialedRequestTask *)self credentialedSession];
  v6 = [v5 credentialVendor];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100008B24;
  v8[3] = &unk_100018710;
  v8[4] = self;
  v9 = v4;
  v7 = v4;
  [v6 fetchOrRefreshCredentialWithCompletion:v8];
}

- (id)errorForRequest:(id)a3 response:(id)a4 data:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [(HDFHIRRequestTask *)self session];
  v12 = [v11 specification];
  v13 = [v12 errorForResourceRequest:v10 response:v9 data:v8];

  return v13;
}

- (id)createURLRequestWithCredentialResult:(id)a3 error:(id *)a4
{
  objc_opt_class();
  NSRequestConcreteImplementation();
  return 0;
}

@end