@interface BKIdentity
+ (id)identity;
- (BKIdentity)initWithServerIdentity:(id)identity device:(id)device;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToIdentity:(id)identity;
- (id)serverIdentity;
@end

@implementation BKIdentity

+ (id)identity
{
  v2 = objc_alloc_init(self);

  return v2;
}

- (BKIdentity)initWithServerIdentity:(id)identity device:(id)device
{
  identityCopy = identity;
  deviceCopy = device;
  v25.receiver = self;
  v25.super_class = BKIdentity;
  v8 = [(BKIdentity *)&v25 init];
  v9 = v8;
  if (identityCopy && v8)
  {
    uuid = [identityCopy uuid];
    uuid = v9->_uuid;
    v9->_uuid = uuid;

    v9->_userID = [identityCopy userID];
    name = [identityCopy name];
    name = v9->_name;
    v9->_name = name;

    creationTime = [identityCopy creationTime];
    creationTime = v9->_creationTime;
    v9->_creationTime = creationTime;

    objc_storeStrong(&v9->_device, device);
    v16 = [BKAccessory alloc];
    accessory = [identityCopy accessory];
    v18 = [(BKAccessory *)v16 initWithServerAccessory:accessory device:deviceCopy];
    accessory = v9->_accessory;
    v9->_accessory = v18;

    accessoryGroup = [(BKAccessory *)v9->_accessory accessoryGroup];
    accessoryGroup = v9->_accessoryGroup;
    v9->_accessoryGroup = accessoryGroup;

    v9->_placeholderIdentity = [identityCopy flags] & 1;
    if ([identityCopy type] == 4)
    {
      v9->_hasPeriocularEnrollment = ([identityCopy flags] >> 16) & 1;
      v9->_hasPeriocularEnrollmentWithGlasses = ([identityCopy flags] & 0x20000) != 0;
      v9->_canAddPeriocularEnrollment = ([identityCopy flags] & 0x40000) != 0;
      v9->_secondaryPeriocularEnrollments = ([identityCopy flags] >> 19) & 7;
    }

    type = [identityCopy type];
    v23 = 2 * (type == 4);
    if (type == 1)
    {
      v23 = 1;
    }

    v9->_type = v23;
  }

  return v9;
}

- (id)serverIdentity
{
  v3 = +[BiometricKitIdentity biometricKitIdentity];
  [v3 setUuid:self->_uuid];
  [v3 setUserID:self->_userID];
  [v3 setName:self->_name];
  [v3 setCreationTime:self->_creationTime];
  type = self->_type;
  if (type == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 4 * (type == 2);
  }

  [v3 setType:v5];

  return v3;
}

- (BOOL)isEqualToIdentity:(id)identity
{
  identityCopy = identity;
  v5 = identityCopy;
  if (identityCopy && self->_type == *(identityCopy + 3) && self->_userID == *(identityCopy + 3))
  {
    v6 = [(NSUUID *)self->_uuid isEqual:*(identityCopy + 2)];
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
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(BKIdentity *)self isEqualToIdentity:equalCopy];
  }

  return v5;
}

@end