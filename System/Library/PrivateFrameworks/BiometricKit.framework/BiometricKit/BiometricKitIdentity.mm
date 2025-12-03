@interface BiometricKitIdentity
+ (id)biometricKitIdentity;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToIdentity:(id)identity;
- (BiometricKitIdentity)init;
- (BiometricKitIdentity)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation BiometricKitIdentity

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  userID = self->_userID;
  uUIDString = [(NSUUID *)self->_uuid UUIDString];
  v8 = [v3 stringWithFormat:@"<%@: %p:(userID:%u, uuid:%@, accessory:%@, flags:0x%x)>", v5, self, userID, uUIDString, self->_accessory, self->_flags];

  return v8;
}

+ (id)biometricKitIdentity
{
  v2 = objc_alloc_init(BiometricKitIdentity);

  return v2;
}

- (BiometricKitIdentity)init
{
  v3.receiver = self;
  v3.super_class = BiometricKitIdentity;
  result = [(BiometricKitIdentity *)&v3 init];
  if (result)
  {
    result->_userID = -1;
  }

  return result;
}

- (BiometricKitIdentity)initWithCoder:(id)coder
{
  coderCopy = coder;
  v20.receiver = self;
  v20.super_class = BiometricKitIdentity;
  v5 = [(BiometricKitIdentity *)&v20 init];
  if (v5)
  {
    v19 = 0;
    v6 = [coderCopy decodeBytesForKey:@"BKIdentityUUID" returnedLength:&v19];
    if (v19 == 16)
    {
      v7 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDBytes:v6];
      uuid = v5->_uuid;
      v5->_uuid = v7;
    }

    if ([coderCopy containsValueForKey:@"BKIdentityUserID"])
    {
      v9 = [coderCopy decodeInt32ForKey:@"BKIdentityUserID"];
    }

    else
    {
      v9 = 501;
    }

    v5->_userID = v9;
    v5->_type = [coderCopy decodeIntForKey:@"BKIdentityType"];
    v5->_attribute = [coderCopy decodeIntForKey:@"BKIdentityAttribute"];
    v5->_entity = [coderCopy decodeIntForKey:@"BKIdentityEntityNumber"];
    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"BKIdentityName"];
    v11 = [v10 copy];
    name = v5->_name;
    v5->_name = v11;

    v13 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"BKIdentityCreationTime"];
    creationTime = v5->_creationTime;
    v5->_creationTime = v13;

    v5->_matchCount = [coderCopy decodeIntegerForKey:@"BKIdentityMatchCount"];
    v5->_matchCountContinuous = [coderCopy decodeIntegerForKey:@"BKIdentityMatchCountContinuous"];
    v5->_updateCount = [coderCopy decodeIntegerForKey:@"BKIdentityUpdateCount"];
    v5->_flags = [coderCopy decodeInt32ForKey:@"BKIdentityFlags"];
    v15 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"BKIdentityAccessory"];
    v16 = [v15 copy];
    accessory = v5->_accessory;
    v5->_accessory = v16;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v7[2] = *MEMORY[0x1E69E9840];
  v7[0] = 0;
  v7[1] = 0;
  uuid = self->_uuid;
  coderCopy = coder;
  [(NSUUID *)uuid getUUIDBytes:v7];
  [coderCopy encodeInt32:self->_userID forKey:@"BKIdentityUserID"];
  [coderCopy encodeBytes:v7 length:16 forKey:@"BKIdentityUUID"];
  [coderCopy encodeInt:self->_type forKey:@"BKIdentityType"];
  [coderCopy encodeInt:self->_attribute forKey:@"BKIdentityAttribute"];
  [coderCopy encodeInt:self->_entity forKey:@"BKIdentityEntityNumber"];
  [coderCopy encodeObject:self->_name forKey:@"BKIdentityName"];
  [coderCopy encodeObject:self->_creationTime forKey:@"BKIdentityCreationTime"];
  [coderCopy encodeInteger:self->_matchCount forKey:@"BKIdentityMatchCount"];
  [coderCopy encodeInteger:self->_matchCountContinuous forKey:@"BKIdentityMatchCountContinuous"];
  [coderCopy encodeInteger:self->_updateCount forKey:@"BKIdentityUpdateCount"];
  [coderCopy encodeInt32:self->_flags forKey:@"BKIdentityFlags"];
  [coderCopy encodeObject:self->_accessory forKey:@"BKIdentityAccessory"];

  v6 = *MEMORY[0x1E69E9840];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(BiometricKitIdentity);
  uuid = [(BiometricKitIdentity *)self uuid];
  v6 = [uuid copy];
  [(BiometricKitIdentity *)v4 setUuid:v6];

  [(BiometricKitIdentity *)v4 setUserID:[(BiometricKitIdentity *)self userID]];
  [(BiometricKitIdentity *)v4 setType:[(BiometricKitIdentity *)self type]];
  [(BiometricKitIdentity *)v4 setAttribute:[(BiometricKitIdentity *)self attribute]];
  [(BiometricKitIdentity *)v4 setEntity:[(BiometricKitIdentity *)self entity]];
  name = [(BiometricKitIdentity *)self name];
  [(BiometricKitIdentity *)v4 setName:name];

  creationTime = [(BiometricKitIdentity *)self creationTime];
  v9 = [creationTime copy];
  [(BiometricKitIdentity *)v4 setCreationTime:v9];

  [(BiometricKitIdentity *)v4 setMatchCount:[(BiometricKitIdentity *)self matchCount]];
  [(BiometricKitIdentity *)v4 setMatchCountContinuous:[(BiometricKitIdentity *)self matchCountContinuous]];
  [(BiometricKitIdentity *)v4 setUpdateCount:[(BiometricKitIdentity *)self updateCount]];
  [(BiometricKitIdentity *)v4 setFlags:[(BiometricKitIdentity *)self flags]];
  accessory = [(BiometricKitIdentity *)self accessory];
  v11 = [accessory copy];
  [(BiometricKitIdentity *)v4 setAccessory:v11];

  return v4;
}

- (BOOL)isEqualToIdentity:(id)identity
{
  identityCopy = identity;
  v5 = identityCopy;
  if (identityCopy && self->_type == *(identityCopy + 3) && self->_userID == *(identityCopy + 2))
  {
    v6 = [(NSUUID *)self->_uuid isEqual:*(identityCopy + 4)];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(BiometricKitIdentity *)self isEqualToIdentity:equalCopy];
  }

  return v5;
}

@end