@interface MBCKCodeOperator
- (MBCKCodeOperator)initWithService:(id)a3 function:(id)a4 responseType:(Class)a5;
- (id)operationForRequest:(id)a3 callback:(id)a4;
@end

@implementation MBCKCodeOperator

- (MBCKCodeOperator)initWithService:(id)a3 function:(id)a4 responseType:(Class)a5
{
  v9 = a3;
  v10 = a4;
  v14.receiver = self;
  v14.super_class = MBCKCodeOperator;
  v11 = [(MBCKCodeOperator *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_serviceName, a3);
    objc_storeStrong(&v12->_functionName, a4);
    objc_storeStrong(&v12->_responseType, a5);
  }

  return v12;
}

- (id)operationForRequest:(id)a3 callback:(id)a4
{
  v7 = a3;
  v8 = a4;
  if (!v7)
  {
    v13 = +[NSAssertionHandler currentHandler];
    [v13 handleFailureInMethod:a2 object:self file:@"MBCKCodeOperator.m" lineNumber:45 description:@"request is required"];
  }

  v9 = [(MBCKCodeOperator *)self serviceName];
  v10 = [(MBCKCodeOperator *)self functionName];
  v11 = sub_100269780(v7, v9, v10, [(MBCKCodeOperator *)self responseType]);

  [(MBCKCodeOperator *)self responseType];
  sub_100269820(v11, v8);

  return v11;
}

@end