@interface MBCKCodeLongLivedOperator
- (BOOL)reconfigureLongLivedOperation:(id)operation;
- (MBCKCodeLongLivedOperator)initWithService:(id)service function:(id)function responseType:(Class)type callback:(id)callback;
- (id)longLivedOperationForRequest:(id)request;
- (id)operationIdentifier;
@end

@implementation MBCKCodeLongLivedOperator

- (MBCKCodeLongLivedOperator)initWithService:(id)service function:(id)function responseType:(Class)type callback:(id)callback
{
  serviceCopy = service;
  functionCopy = function;
  callbackCopy = callback;
  v20.receiver = self;
  v20.super_class = MBCKCodeLongLivedOperator;
  v14 = [(MBCKCodeLongLivedOperator *)&v20 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_serviceName, service);
    objc_storeStrong(&v15->_functionName, function);
    objc_storeStrong(&v15->_responseType, type);
    v16 = objc_retainBlock(callbackCopy);
    responseCallback = v15->_responseCallback;
    v15->_responseCallback = v16;

    operationIdentifier = [(MBCKCodeLongLivedOperator *)v15 operationIdentifier];
    MBCKRegisterLongLivedOperator(operationIdentifier, v15);
  }

  return v15;
}

- (BOOL)reconfigureLongLivedOperation:(id)operation
{
  operationCopy = operation;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if (isKindOfClass)
  {
    [(MBCKCodeLongLivedOperator *)self responseType];
    responseCallback = [(MBCKCodeLongLivedOperator *)self responseCallback];
    sub_100269820(operationCopy, responseCallback);
  }

  else
  {
    responseCallback = MBGetDefaultLog();
    if (os_log_type_enabled(responseCallback, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v10 = objc_opt_class();
      v11 = 2112;
      v12 = objc_opt_class();
      v7 = v12;
      _os_log_impl(&_mh_execute_header, responseCallback, OS_LOG_TYPE_DEFAULT, "Unexpected operation class %@, expected %@", buf, 0x16u);

      objc_opt_class();
      objc_opt_class();
      _MBLog();
    }
  }

  return isKindOfClass & 1;
}

- (id)operationIdentifier
{
  serviceName = [(MBCKCodeLongLivedOperator *)self serviceName];
  functionName = [(MBCKCodeLongLivedOperator *)self functionName];
  v5 = [NSString stringWithFormat:@"MBCKCodeLongLivedOperator|%@|%@", serviceName, functionName];

  return v5;
}

- (id)longLivedOperationForRequest:(id)request
{
  requestCopy = request;
  serviceName = [(MBCKCodeLongLivedOperator *)self serviceName];
  functionName = [(MBCKCodeLongLivedOperator *)self functionName];
  v7 = sub_100269780(requestCopy, serviceName, functionName, [(MBCKCodeLongLivedOperator *)self responseType]);

  [(MBCKCodeLongLivedOperator *)self responseType];
  responseCallback = [(MBCKCodeLongLivedOperator *)self responseCallback];
  sub_100269820(v7, responseCallback);

  operationIdentifier = [(MBCKCodeLongLivedOperator *)self operationIdentifier];
  [v7 setName:operationIdentifier];

  return v7;
}

@end