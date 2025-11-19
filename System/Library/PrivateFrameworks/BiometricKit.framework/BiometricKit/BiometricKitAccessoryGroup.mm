@interface BiometricKitAccessoryGroup
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToAccessoryGroup:(id)a3;
- (BiometricKitAccessoryGroup)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation BiometricKitAccessoryGroup

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  type = self->_type;
  v7 = getUUIDString(self->_uuid);
  v8 = [v3 stringWithFormat:@"<%@: %p:(type:%u, uuid:%@)>", v5, self, type, v7];

  return v8;
}

- (BiometricKitAccessoryGroup)initWithCoder:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = BiometricKitAccessoryGroup;
  v5 = [(BiometricKitAccessoryGroup *)&v14 init];
  if (v5)
  {
    v13 = 0;
    v6 = [v4 decodeBytesForKey:@"BKAccessoryGroupUUID" returnedLength:&v13];
    if (v13 == 16)
    {
      v7 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDBytes:v6];
      uuid = v5->_uuid;
      v5->_uuid = v7;
    }

    v5->_type = [v4 decodeInt32ForKey:@"BKAccessoryGroupType"];
    v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"BKAccessoryGroupName"];
    v10 = [v9 copy];
    name = v5->_name;
    v5->_name = v10;
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
  [v5 encodeInt32:self->_type forKey:@"BKAccessoryGroupType"];
  [v5 encodeBytes:v7 length:16 forKey:@"BKAccessoryGroupUUID"];
  [v5 encodeObject:self->_name forKey:@"BKAccessoryGroupName"];

  v6 = *MEMORY[0x1E69E9840];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(BiometricKitAccessoryGroup);
  v5 = [(BiometricKitAccessoryGroup *)self uuid];
  v6 = [v5 copy];
  [(BiometricKitAccessoryGroup *)v4 setUuid:v6];

  [(BiometricKitAccessoryGroup *)v4 setType:[(BiometricKitAccessoryGroup *)self type]];
  v7 = [(BiometricKitAccessoryGroup *)self name];
  [(BiometricKitAccessoryGroup *)v4 setName:v7];

  return v4;
}

- (BOOL)isEqualToAccessoryGroup:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 && self->_type == *(v4 + 2))
  {
    v6 = [(NSUUID *)self->_uuid isEqual:*(v4 + 2)];
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
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(BiometricKitAccessoryGroup *)self isEqualToAccessoryGroup:v4];
  }

  return v5;
}

@end