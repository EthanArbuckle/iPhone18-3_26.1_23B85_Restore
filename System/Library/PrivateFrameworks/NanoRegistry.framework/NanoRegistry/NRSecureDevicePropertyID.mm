@interface NRSecureDevicePropertyID
- (BOOL)isEqual:(id)equal;
- (NRSecureDevicePropertyID)init;
- (NRSecureDevicePropertyID)initWithCoder:(id)coder;
- (NRSecureDevicePropertyID)initWithData:(id)data;
- (NRSecureDevicePropertyID)initWithPropertyString:(id)string;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
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

- (NRSecureDevicePropertyID)initWithPropertyString:(id)string
{
  stringCopy = string;
  v9.receiver = self;
  v9.super_class = NRSecureDevicePropertyID;
  v5 = [(NRSecureDevicePropertyID *)&v9 init];
  if (!v5)
  {
    goto LABEL_4;
  }

  v6 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:stringCopy];
  v7 = v6;
  if (v6)
  {
    [(NRSecureDevicePropertyID *)v6 getUUIDBytes:v5->_uuid];

LABEL_4:
    v7 = v5;
  }

  return v7;
}

- (NRSecureDevicePropertyID)initWithData:(id)data
{
  dataCopy = data;
  v8.receiver = self;
  v8.super_class = NRSecureDevicePropertyID;
  v5 = [(NRSecureDevicePropertyID *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [dataCopy getBytes:v5->_uuid length:16];
  }

  return v6;
}

- (NRSecureDevicePropertyID)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(NRSecureDevicePropertyID *)self init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"UUIDData"];
    if (v6)
    {
      [NRUnarchivedObjectVerifier unarchivingVerifyObjectIsNotNil:v6 name:@"secure property UUID" owner:v5];
      [v6 getBytes:v5->_uuid length:16];
    }

    else
    {
      v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"UUID"];
      [NRUnarchivedObjectVerifier unarchivingVerifyObjectIsNotNil:v7 name:@"secure property UUID" owner:v5];
      [v7 getUUIDBytes:v5->_uuid];
    }
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v4 = MEMORY[0x1E695DEF0];
  coderCopy = coder;
  v6 = [v4 dataWithBytes:self->_uuid length:16];
  [coderCopy encodeObject:v6 forKey:@"UUIDData"];
}

- (id)copyWithZone:(_NSZone *)zone
{
  result = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  *(result + 8) = *self->_uuid;
  return result;
}

- (id)description
{
  v2 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDBytes:self->_uuid];
  uUIDString = [v2 UUIDString];
  v4 = [@"Secure property ID: " stringByAppendingString:uUIDString];

  return v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v6 = 1;
  }

  else
  {
    objc_opt_class();
    v6 = (objc_opt_isKindOfClass() & 1) != 0 && *self->_uuid == *equalCopy->_uuid && *&self->_uuid[8] == *&equalCopy->_uuid[8];
  }

  return v6;
}

@end