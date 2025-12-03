@interface MBCKCodeOperator
- (MBCKCodeOperator)initWithService:(id)service function:(id)function responseType:(Class)type;
- (id)operationForRequest:(id)request callback:(id)callback;
@end

@implementation MBCKCodeOperator

- (MBCKCodeOperator)initWithService:(id)service function:(id)function responseType:(Class)type
{
  serviceCopy = service;
  functionCopy = function;
  v14.receiver = self;
  v14.super_class = MBCKCodeOperator;
  v11 = [(MBCKCodeOperator *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_serviceName, service);
    objc_storeStrong(&v12->_functionName, function);
    objc_storeStrong(&v12->_responseType, type);
  }

  return v12;
}

- (id)operationForRequest:(id)request callback:(id)callback
{
  requestCopy = request;
  callbackCopy = callback;
  if (!requestCopy)
  {
    v13 = +[NSAssertionHandler currentHandler];
    [v13 handleFailureInMethod:a2 object:self file:@"MBCKCodeOperator.m" lineNumber:45 description:@"request is required"];
  }

  serviceName = [(MBCKCodeOperator *)self serviceName];
  functionName = [(MBCKCodeOperator *)self functionName];
  v11 = sub_100269780(requestCopy, serviceName, functionName, [(MBCKCodeOperator *)self responseType]);

  [(MBCKCodeOperator *)self responseType];
  sub_100269820(v11, callbackCopy);

  return v11;
}

@end