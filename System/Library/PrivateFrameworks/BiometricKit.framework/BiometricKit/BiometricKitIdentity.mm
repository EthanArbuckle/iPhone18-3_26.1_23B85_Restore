@interface BiometricKitIdentity
+ (id)biometricKitIdentity;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToIdentity:(id)a3;
- (BiometricKitIdentity)init;
- (BiometricKitIdentity)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation BiometricKitIdentity

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  userID = self->_userID;
  v7 = [(NSUUID *)self->_uuid UUIDString];
  v8 = [v3 stringWithFormat:@"<%@: %p:(userID:%u, uuid:%@, accessory:%@, flags:0x%x)>", v5, self, userID, v7, self->_accessory, self->_flags];

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

- (BiometricKitIdentity)initWithCoder:(id)a3
{
  v4 = a3;
  v20.receiver = self;
  v20.super_class = BiometricKitIdentity;
  v5 = [(BiometricKitIdentity *)&v20 init];
  if (v5)
  {
    v19 = 0;
    v6 = [v4 decodeBytesForKey:@"BKIdentityUUID" returnedLength:&v19];
    if (v19 == 16)
    {
      v7 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDBytes:v6];
      uuid = v5->_uuid;
      v5->_uuid = v7;
    }

    if ([v4 containsValueForKey:@"BKIdentityUserID"])
    {
      v9 = [v4 decodeInt32ForKey:@"BKIdentityUserID"];
    }

    else
    {
      v9 = 501;
    }

    v5->_userID = v9;
    v5->_type = [v4 decodeIntForKey:@"BKIdentityType"];
    v5->_attribute = [v4 decodeIntForKey:@"BKIdentityAttribute"];
    v5->_entity = [v4 decodeIntForKey:@"BKIdentityEntityNumber"];
    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"BKIdentityName"];
    v11 = [v10 copy];
    name = v5->_name;
    v5->_name = v11;

    v13 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"BKIdentityCreationTime"];
    creationTime = v5->_creationTime;
    v5->_creationTime = v13;

    v5->_matchCount = [v4 decodeIntegerForKey:@"BKIdentityMatchCount"];
    v5->_matchCountContinuous = [v4 decodeIntegerForKey:@"BKIdentityMatchCountContinuous"];
    v5->_updateCount = [v4 decodeIntegerForKey:@"BKIdentityUpdateCount"];
    v5->_flags = [v4 decodeInt32ForKey:@"BKIdentityFlags"];
    v15 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"BKIdentityAccessory"];
    v16 = [v15 copy];
    accessory = v5->_accessory;
    v5->_accessory = v16;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v7[2] = *MEMORY[0x1E69E9840];
  v7[0] = 0;
  v7[1] = 0;
  uuid = self->_uuid;
  v5 = a3;
  [(NSUUID *)uuid getUUIDBytes:v7];
  [v5 encodeInt32:self->_userID forKey:@"BKIdentityUserID"];
  [v5 encodeBytes:v7 length:16 forKey:@"BKIdentityUUID"];
  [v5 encodeInt:self->_type forKey:@"BKIdentityType"];
  [v5 encodeInt:self->_attribute forKey:@"BKIdentityAttribute"];
  [v5 encodeInt:self->_entity forKey:@"BKIdentityEntityNumber"];
  [v5 encodeObject:self->_name forKey:@"BKIdentityName"];
  [v5 encodeObject:self->_creationTime forKey:@"BKIdentityCreationTime"];
  [v5 encodeInteger:self->_matchCount forKey:@"BKIdentityMatchCount"];
  [v5 encodeInteger:self->_matchCountContinuous forKey:@"BKIdentityMatchCountContinuous"];
  [v5 encodeInteger:self->_updateCount forKey:@"BKIdentityUpdateCount"];
  [v5 encodeInt32:self->_flags forKey:@"BKIdentityFlags"];
  [v5 encodeObject:self->_accessory forKey:@"BKIdentityAccessory"];

  v6 = *MEMORY[0x1E69E9840];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(BiometricKitIdentity);
  v5 = [(BiometricKitIdentity *)self uuid];
  v6 = [v5 copy];
  [(BiometricKitIdentity *)v4 setUuid:v6];

  [(BiometricKitIdentity *)v4 setUserID:[(BiometricKitIdentity *)self userID]];
  [(BiometricKitIdentity *)v4 setType:[(BiometricKitIdentity *)self type]];
  [(BiometricKitIdentity *)v4 setAttribute:[(BiometricKitIdentity *)self attribute]];
  [(BiometricKitIdentity *)v4 setEntity:[(BiometricKitIdentity *)self entity]];
  v7 = [(BiometricKitIdentity *)self name];
  [(BiometricKitIdentity *)v4 setName:v7];

  v8 = [(BiometricKitIdentity *)self creationTime];
  v9 = [v8 copy];
  [(BiometricKitIdentity *)v4 setCreationTime:v9];

  [(BiometricKitIdentity *)v4 setMatchCount:[(BiometricKitIdentity *)self matchCount]];
  [(BiometricKitIdentity *)v4 setMatchCountContinuous:[(BiometricKitIdentity *)self matchCountContinuous]];
  [(BiometricKitIdentity *)v4 setUpdateCount:[(BiometricKitIdentity *)self updateCount]];
  [(BiometricKitIdentity *)v4 setFlags:[(BiometricKitIdentity *)self flags]];
  v10 = [(BiometricKitIdentity *)self accessory];
  v11 = [v10 copy];
  [(BiometricKitIdentity *)v4 setAccessory:v11];

  return v4;
}

- (BOOL)isEqualToIdentity:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 && self->_type == *(v4 + 3) && self->_userID == *(v4 + 2))
  {
    v6 = [(NSUUID *)self->_uuid isEqual:*(v4 + 4)];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(BiometricKitIdentity *)self isEqualToIdentity:v4];
  }

  return v5;
}

@end