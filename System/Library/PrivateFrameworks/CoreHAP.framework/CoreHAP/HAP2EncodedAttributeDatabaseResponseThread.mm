@interface HAP2EncodedAttributeDatabaseResponseThread
- (HAP2EncodedAttributeDatabaseResponseThread)initWithBTLEResponse:(id)response attributeDatabase:(id)database;
@end

@implementation HAP2EncodedAttributeDatabaseResponseThread

- (HAP2EncodedAttributeDatabaseResponseThread)initWithBTLEResponse:(id)response attributeDatabase:(id)database
{
  databaseCopy = database;
  v12.receiver = self;
  v12.super_class = HAP2EncodedAttributeDatabaseResponseThread;
  v8 = [(HAP2EncodedResponseThread *)&v12 initWithBTLEResponse:response];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_attributeDatabase, database);
    v10 = v9;
  }

  return v9;
}

@end