@interface HAP2EncodedAttributeDatabaseResponseCached
- (HAP2EncodedAttributeDatabaseResponseCached)initWithAttributeDatabase:(id)a3;
@end

@implementation HAP2EncodedAttributeDatabaseResponseCached

- (HAP2EncodedAttributeDatabaseResponseCached)initWithAttributeDatabase:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = HAP2EncodedAttributeDatabaseResponseCached;
  v6 = [(HAP2EncodedAttributeDatabaseResponseCached *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_attributeDatabase, a3);
  }

  return v7;
}

@end