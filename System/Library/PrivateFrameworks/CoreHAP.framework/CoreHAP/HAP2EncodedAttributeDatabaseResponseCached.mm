@interface HAP2EncodedAttributeDatabaseResponseCached
- (HAP2EncodedAttributeDatabaseResponseCached)initWithAttributeDatabase:(id)database;
@end

@implementation HAP2EncodedAttributeDatabaseResponseCached

- (HAP2EncodedAttributeDatabaseResponseCached)initWithAttributeDatabase:(id)database
{
  databaseCopy = database;
  v9.receiver = self;
  v9.super_class = HAP2EncodedAttributeDatabaseResponseCached;
  v6 = [(HAP2EncodedAttributeDatabaseResponseCached *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_attributeDatabase, database);
  }

  return v7;
}

@end