@interface SGSchemaOrgKey
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToSchemaOrgKey:(id)a3;
- (NSString)description;
- (SGSchemaOrgKey)init;
- (SGSchemaOrgKey)initWithSerialized:(id)a3;
@end

@implementation SGSchemaOrgKey

- (NSString)description
{
  v2 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"<SGSchemaOrgKey uuid:%@>", self->_uuid];

  return v2;
}

- (BOOL)isEqualToSchemaOrgKey:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v7 = 1;
  }

  else
  {
    v5 = self->_uuid;
    v6 = v5;
    if (v5 == v4->_uuid)
    {
      v7 = 1;
    }

    else
    {
      v7 = [(NSString *)v5 isEqual:?];
    }
  }

  return v7;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(SGSchemaOrgKey *)self isEqualToSchemaOrgKey:v5];
  }

  return v6;
}

- (SGSchemaOrgKey)initWithSerialized:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = SGSchemaOrgKey;
  v6 = [(SGSchemaOrgKey *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_uuid, a3);
  }

  return v7;
}

- (SGSchemaOrgKey)init
{
  v8.receiver = self;
  v8.super_class = SGSchemaOrgKey;
  v2 = [(SGSchemaOrgKey *)&v8 init];
  if (v2)
  {
    v3 = objc_autoreleasePoolPush();
    v4 = [MEMORY[0x277CCAD78] UUID];
    v5 = [v4 UUIDString];

    objc_autoreleasePoolPop(v3);
    uuid = v2->_uuid;
    v2->_uuid = v5;
  }

  return v2;
}

@end