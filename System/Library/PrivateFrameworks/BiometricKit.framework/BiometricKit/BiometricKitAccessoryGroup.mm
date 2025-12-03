@interface BiometricKitAccessoryGroup
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToAccessoryGroup:(id)group;
- (BiometricKitAccessoryGroup)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)encodeWithCoder:(id)coder;
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

- (BiometricKitAccessoryGroup)initWithCoder:(id)coder
{
  coderCopy = coder;
  v14.receiver = self;
  v14.super_class = BiometricKitAccessoryGroup;
  v5 = [(BiometricKitAccessoryGroup *)&v14 init];
  if (v5)
  {
    v13 = 0;
    v6 = [coderCopy decodeBytesForKey:@"BKAccessoryGroupUUID" returnedLength:&v13];
    if (v13 == 16)
    {
      v7 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDBytes:v6];
      uuid = v5->_uuid;
      v5->_uuid = v7;
    }

    v5->_type = [coderCopy decodeInt32ForKey:@"BKAccessoryGroupType"];
    v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"BKAccessoryGroupName"];
    v10 = [v9 copy];
    name = v5->_name;
    v5->_name = v10;
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
  [coderCopy encodeInt32:self->_type forKey:@"BKAccessoryGroupType"];
  [coderCopy encodeBytes:v7 length:16 forKey:@"BKAccessoryGroupUUID"];
  [coderCopy encodeObject:self->_name forKey:@"BKAccessoryGroupName"];

  v6 = *MEMORY[0x1E69E9840];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(BiometricKitAccessoryGroup);
  uuid = [(BiometricKitAccessoryGroup *)self uuid];
  v6 = [uuid copy];
  [(BiometricKitAccessoryGroup *)v4 setUuid:v6];

  [(BiometricKitAccessoryGroup *)v4 setType:[(BiometricKitAccessoryGroup *)self type]];
  name = [(BiometricKitAccessoryGroup *)self name];
  [(BiometricKitAccessoryGroup *)v4 setName:name];

  return v4;
}

- (BOOL)isEqualToAccessoryGroup:(id)group
{
  groupCopy = group;
  v5 = groupCopy;
  if (groupCopy && self->_type == *(groupCopy + 2))
  {
    v6 = [(NSUUID *)self->_uuid isEqual:*(groupCopy + 2)];
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
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(BiometricKitAccessoryGroup *)self isEqualToAccessoryGroup:equalCopy];
  }

  return v5;
}

@end