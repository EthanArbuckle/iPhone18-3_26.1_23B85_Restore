@interface HDFHIRResourceTask
- (id)createURLRequestWithCredentialResult:(id)result error:(id *)error;
- (id)errorForRequest:(id)request response:(id)response data:(id)data;
- (void)createURLRequestWithCompletion:(id)completion;
@end

@implementation HDFHIRResourceTask

- (void)createURLRequestWithCompletion:(id)completion
{
  completionCopy = completion;
  credentialedSession = [(HDFHIRCredentialedRequestTask *)self credentialedSession];
  credentialVendor = [credentialedSession credentialVendor];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100008B24;
  v8[3] = &unk_100018710;
  v8[4] = self;
  v9 = completionCopy;
  v7 = completionCopy;
  [credentialVendor fetchOrRefreshCredentialWithCompletion:v8];
}

- (id)errorForRequest:(id)request response:(id)response data:(id)data
{
  dataCopy = data;
  responseCopy = response;
  requestCopy = request;
  session = [(HDFHIRRequestTask *)self session];
  specification = [session specification];
  v13 = [specification errorForResourceRequest:requestCopy response:responseCopy data:dataCopy];

  return v13;
}

- (id)createURLRequestWithCredentialResult:(id)result error:(id *)error
{
  objc_opt_class();
  NSRequestConcreteImplementation();
  return 0;
}

@end