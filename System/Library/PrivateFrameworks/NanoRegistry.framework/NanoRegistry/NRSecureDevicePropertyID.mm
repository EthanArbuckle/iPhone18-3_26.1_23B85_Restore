@interface NRSecureDevicePropertyID
- (BOOL)isEqual:(id)a3;
- (NRSecureDevicePropertyID)init;
- (NRSecureDevicePropertyID)initWithCoder:(id)a3;
- (NRSecureDevicePropertyID)initWithData:(id)a3;
- (NRSecureDevicePropertyID)initWithPropertyString:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation NRSecureDevicePropertyID

- (unint64_t)hash
{
  v2 = 0;
  uuid = self->_uuid;
  result = 2166136261;
  do
  {
    result = (16777619 * result) ^ uuid[v2++];
  }

  while (v2 != 16);
  return result;
}

- (NRSecureDevicePropertyID)init
{
  v5.receiver = self;
  v5.super_class = NRSecureDevicePropertyID;
  v2 = [(NRSecureDevicePropertyID *)&v5 init];
  if (v2)
  {
    v3 = objc_opt_new();
    [v3 getUUIDBytes:v2->_uuid];
  }

  return v2;
}

- (NRSecureDevicePropertyID)initWithPropertyString:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = NRSecureDevicePropertyID;
  v5 = [(NRSecureDevicePropertyID *)&v9 init];
  if (!v5)
  {
    goto LABEL_4;
  }

  v6 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:v4];
  v7 = v6;
  if (v6)
  {
    [(NRSecureDevicePropertyID *)v6 getUUIDBytes:v5->_uuid];

LABEL_4:
    v7 = v5;
  }

  return v7;
}

- (NRSecureDevicePropertyID)initWithData:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = NRSecureDevicePropertyID;
  v5 = [(NRSecureDevicePropertyID *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [v4 getBytes:v5->_uuid length:16];
  }

  return v6;
}

- (NRSecureDevicePropertyID)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(NRSecureDevicePropertyID *)self init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"UUIDData"];
    if (v6)
    {
      [NRUnarchivedObjectVerifier unarchivingVerifyObjectIsNotNil:v6 name:@"secure property UUID" owner:v5];
      [v6 getBytes:v5->_uuid length:16];
    }

    else
    {
      v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"UUID"];
      [NRUnarchivedObjectVerifier unarchivingVerifyObjectIsNotNil:v7 name:@"secure property UUID" owner:v5];
      [v7 getUUIDBytes:v5->_uuid];
    }
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = MEMORY[0x1E695DEF0];
  v5 = a3;
  v6 = [v4 dataWithBytes:self->_uuid length:16];
  [v5 encodeObject:v6 forKey:@"UUIDData"];
}

- (id)copyWithZone:(_NSZone *)a3
{
  result = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  *(result + 8) = *self->_uuid;
  return result;
}

- (id)description
{
  v2 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDBytes:self->_uuid];
  v3 = [v2 UUIDString];
  v4 = [@"Secure property ID: " stringByAppendingString:v3];

  return v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v6 = 1;
  }

  else
  {
    objc_opt_class();
    v6 = (objc_opt_isKindOfClass() & 1) != 0 && *self->_uuid == *v4->_uuid && *&self->_uuid[8] == *&v4->_uuid[8];
  }

  return v6;
}

@end