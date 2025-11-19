@interface MBCKCodeLongLivedOperator
- (BOOL)reconfigureLongLivedOperation:(id)a3;
- (MBCKCodeLongLivedOperator)initWithService:(id)a3 function:(id)a4 responseType:(Class)a5 callback:(id)a6;
- (id)longLivedOperationForRequest:(id)a3;
- (id)operationIdentifier;
@end

@implementation MBCKCodeLongLivedOperator

- (MBCKCodeLongLivedOperator)initWithService:(id)a3 function:(id)a4 responseType:(Class)a5 callback:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a6;
  v20.receiver = self;
  v20.super_class = MBCKCodeLongLivedOperator;
  v14 = [(MBCKCodeLongLivedOperator *)&v20 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_serviceName, a3);
    objc_storeStrong(&v15->_functionName, a4);
    objc_storeStrong(&v15->_responseType, a5);
    v16 = objc_retainBlock(v13);
    responseCallback = v15->_responseCallback;
    v15->_responseCallback = v16;

    v18 = [(MBCKCodeLongLivedOperator *)v15 operationIdentifier];
    MBCKRegisterLongLivedOperator(v18, v15);
  }

  return v15;
}

- (BOOL)reconfigureLongLivedOperation:(id)a3
{
  v4 = a3;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if (isKindOfClass)
  {
    [(MBCKCodeLongLivedOperator *)self responseType];
    v6 = [(MBCKCodeLongLivedOperator *)self responseCallback];
    sub_100269820(v4, v6);
  }

  else
  {
    v6 = MBGetDefaultLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v10 = objc_opt_class();
      v11 = 2112;
      v12 = objc_opt_class();
      v7 = v12;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Unexpected operation class %@, expected %@", buf, 0x16u);

      objc_opt_class();
      objc_opt_class();
      _MBLog();
    }
  }

  return isKindOfClass & 1;
}

- (id)operationIdentifier
{
  v3 = [(MBCKCodeLongLivedOperator *)self serviceName];
  v4 = [(MBCKCodeLongLivedOperator *)self functionName];
  v5 = [NSString stringWithFormat:@"MBCKCodeLongLivedOperator|%@|%@", v3, v4];

  return v5;
}

- (id)longLivedOperationForRequest:(id)a3
{
  v4 = a3;
  v5 = [(MBCKCodeLongLivedOperator *)self serviceName];
  v6 = [(MBCKCodeLongLivedOperator *)self functionName];
  v7 = sub_100269780(v4, v5, v6, [(MBCKCodeLongLivedOperator *)self responseType]);

  [(MBCKCodeLongLivedOperator *)self responseType];
  v8 = [(MBCKCodeLongLivedOperator *)self responseCallback];
  sub_100269820(v7, v8);

  v9 = [(MBCKCodeLongLivedOperator *)self operationIdentifier];
  [v7 setName:v9];

  return v7;
}

@end