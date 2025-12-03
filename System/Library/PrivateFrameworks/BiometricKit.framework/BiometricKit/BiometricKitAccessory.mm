@interface BiometricKitAccessory
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToAccessory:(id)accessory;
- (BiometricKitAccessory)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)encodeWithCoder:(id)coder;
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

- (BiometricKitAccessory)initWithCoder:(id)coder
{
  coderCopy = coder;
  v16.receiver = self;
  v16.super_class = BiometricKitAccessory;
  v5 = [(BiometricKitAccessory *)&v16 init];
  if (v5)
  {
    v15 = 0;
    v6 = [coderCopy decodeBytesForKey:@"BKAccessoryUUID" returnedLength:&v15];
    if (v15 == 16)
    {
      v7 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDBytes:v6];
      uuid = v5->_uuid;
      v5->_uuid = v7;
    }

    v5->_type = [coderCopy decodeInt32ForKey:@"BKAccessoryType"];
    v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"BKAccessoryName"];
    v10 = [v9 copy];
    name = v5->_name;
    v5->_name = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"BKAccessoryGroup"];
    group = v5->_group;
    v5->_group = v12;

    v5->_flags = [coderCopy decodeInt32ForKey:@"BKAccessoryFlags"];
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
  [coderCopy encodeInt32:self->_type forKey:@"BKAccessoryType"];
  [coderCopy encodeBytes:v7 length:16 forKey:@"BKAccessoryUUID"];
  [coderCopy encodeObject:self->_name forKey:@"BKAccessoryName"];
  [coderCopy encodeObject:self->_group forKey:@"BKAccessoryGroup"];
  [coderCopy encodeInt32:self->_flags forKey:@"BKAccessoryFlags"];

  v6 = *MEMORY[0x1E69E9840];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(BiometricKitAccessory);
  uuid = [(BiometricKitAccessory *)self uuid];
  v6 = [uuid copy];
  [(BiometricKitAccessory *)v4 setUuid:v6];

  [(BiometricKitAccessory *)v4 setType:[(BiometricKitAccessory *)self type]];
  name = [(BiometricKitAccessory *)self name];
  [(BiometricKitAccessory *)v4 setName:name];

  group = [(BiometricKitAccessory *)self group];
  v9 = [group copy];
  [(BiometricKitAccessory *)v4 setGroup:v9];

  [(BiometricKitAccessory *)v4 setFlags:[(BiometricKitAccessory *)self flags]];
  return v4;
}

- (BOOL)isEqualToAccessory:(id)accessory
{
  accessoryCopy = accessory;
  v5 = accessoryCopy;
  if (accessoryCopy && self->_type == *(accessoryCopy + 2))
  {
    v6 = [(NSUUID *)self->_uuid isEqual:*(accessoryCopy + 2)];
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
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(BiometricKitAccessory *)self isEqualToAccessory:equalCopy];
  }

  return v5;
}

@end