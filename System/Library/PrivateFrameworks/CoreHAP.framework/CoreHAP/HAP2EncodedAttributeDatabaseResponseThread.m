@interface HAP2EncodedAttributeDatabaseResponseThread
- (HAP2EncodedAttributeDatabaseResponseThread)initWithBTLEResponse:(id)a3 attributeDatabase:(id)a4;
@end

@implementation HAP2EncodedAttributeDatabaseResponseThread

- (HAP2EncodedAttributeDatabaseResponseThread)initWithBTLEResponse:(id)a3 attributeDatabase:(id)a4
{
  v7 = a4;
  v12.receiver = self;
  v12.super_class = HAP2EncodedAttributeDatabaseResponseThread;
  v8 = [(HAP2EncodedResponseThread *)&v12 initWithBTLEResponse:a3];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_attributeDatabase, a4);
    v10 = v9;
  }

  return v9;
}

@end