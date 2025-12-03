@interface SGSchemaOrgKey
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToSchemaOrgKey:(id)key;
- (NSString)description;
- (SGSchemaOrgKey)init;
- (SGSchemaOrgKey)initWithSerialized:(id)serialized;
@end

@implementation SGSchemaOrgKey

- (NSString)description
{
  v2 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"<SGSchemaOrgKey uuid:%@>", self->_uuid];

  return v2;
}

- (BOOL)isEqualToSchemaOrgKey:(id)key
{
  keyCopy = key;
  if (self == keyCopy)
  {
    v7 = 1;
  }

  else
  {
    v5 = self->_uuid;
    v6 = v5;
    if (v5 == keyCopy->_uuid)
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(SGSchemaOrgKey *)self isEqualToSchemaOrgKey:v5];
  }

  return v6;
}

- (SGSchemaOrgKey)initWithSerialized:(id)serialized
{
  serializedCopy = serialized;
  v9.receiver = self;
  v9.super_class = SGSchemaOrgKey;
  v6 = [(SGSchemaOrgKey *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_uuid, serialized);
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
    uUID = [MEMORY[0x277CCAD78] UUID];
    uUIDString = [uUID UUIDString];

    objc_autoreleasePoolPop(v3);
    uuid = v2->_uuid;
    v2->_uuid = uUIDString;
  }

  return v2;
}

@end