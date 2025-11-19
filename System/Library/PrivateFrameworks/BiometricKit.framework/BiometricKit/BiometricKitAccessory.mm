@interface BiometricKitAccessory
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToAccessory:(id)a3;
- (BiometricKitAccessory)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation BiometricKitAccessory

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  type = self->_type;
  v7 = getUUIDString(self->_uuid);
  v8 = [v3 stringWithFormat:@"<%@: %p:(type:%u, uuid:%@, flags:0x%x, group:%@)>", v5, self, type, v7, self->_flags, self->_group];

  return v8;
}

- (BiometricKitAccessory)initWithCoder:(id)a3
{
  v4 = a3;
  v16.receiver = self;
  v16.super_class = BiometricKitAccessory;
  v5 = [(BiometricKitAccessory *)&v16 init];
  if (v5)
  {
    v15 = 0;
    v6 = [v4 decodeBytesForKey:@"BKAccessoryUUID" returnedLength:&v15];
    if (v15 == 16)
    {
      v7 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDBytes:v6];
      uuid = v5->_uuid;
      v5->_uuid = v7;
    }

    v5->_type = [v4 decodeInt32ForKey:@"BKAccessoryType"];
    v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"BKAccessoryName"];
    v10 = [v9 copy];
    name = v5->_name;
    v5->_name = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"BKAccessoryGroup"];
    group = v5->_group;
    v5->_group = v12;

    v5->_flags = [v4 decodeInt32ForKey:@"BKAccessoryFlags"];
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
  [v5 encodeInt32:self->_type forKey:@"BKAccessoryType"];
  [v5 encodeBytes:v7 length:16 forKey:@"BKAccessoryUUID"];
  [v5 encodeObject:self->_name forKey:@"BKAccessoryName"];
  [v5 encodeObject:self->_group forKey:@"BKAccessoryGroup"];
  [v5 encodeInt32:self->_flags forKey:@"BKAccessoryFlags"];

  v6 = *MEMORY[0x1E69E9840];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(BiometricKitAccessory);
  v5 = [(BiometricKitAccessory *)self uuid];
  v6 = [v5 copy];
  [(BiometricKitAccessory *)v4 setUuid:v6];

  [(BiometricKitAccessory *)v4 setType:[(BiometricKitAccessory *)self type]];
  v7 = [(BiometricKitAccessory *)self name];
  [(BiometricKitAccessory *)v4 setName:v7];

  v8 = [(BiometricKitAccessory *)self group];
  v9 = [v8 copy];
  [(BiometricKitAccessory *)v4 setGroup:v9];

  [(BiometricKitAccessory *)v4 setFlags:[(BiometricKitAccessory *)self flags]];
  return v4;
}

- (BOOL)isEqualToAccessory:(id)a3
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
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(BiometricKitAccessory *)self isEqualToAccessory:v4];
  }

  return v5;
}

@end