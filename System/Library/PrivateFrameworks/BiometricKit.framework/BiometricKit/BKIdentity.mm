@interface BKIdentity
+ (id)identity;
- (BKIdentity)initWithServerIdentity:(id)a3 device:(id)a4;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToIdentity:(id)a3;
- (id)serverIdentity;
@end

@implementation BKIdentity

+ (id)identity
{
  v2 = objc_alloc_init(a1);

  return v2;
}

- (BKIdentity)initWithServerIdentity:(id)a3 device:(id)a4
{
  v6 = a3;
  v7 = a4;
  v25.receiver = self;
  v25.super_class = BKIdentity;
  v8 = [(BKIdentity *)&v25 init];
  v9 = v8;
  if (v6 && v8)
  {
    v10 = [v6 uuid];
    uuid = v9->_uuid;
    v9->_uuid = v10;

    v9->_userID = [v6 userID];
    v12 = [v6 name];
    name = v9->_name;
    v9->_name = v12;

    v14 = [v6 creationTime];
    creationTime = v9->_creationTime;
    v9->_creationTime = v14;

    objc_storeStrong(&v9->_device, a4);
    v16 = [BKAccessory alloc];
    v17 = [v6 accessory];
    v18 = [(BKAccessory *)v16 initWithServerAccessory:v17 device:v7];
    accessory = v9->_accessory;
    v9->_accessory = v18;

    v20 = [(BKAccessory *)v9->_accessory accessoryGroup];
    accessoryGroup = v9->_accessoryGroup;
    v9->_accessoryGroup = v20;

    v9->_placeholderIdentity = [v6 flags] & 1;
    if ([v6 type] == 4)
    {
      v9->_hasPeriocularEnrollment = ([v6 flags] >> 16) & 1;
      v9->_hasPeriocularEnrollmentWithGlasses = ([v6 flags] & 0x20000) != 0;
      v9->_canAddPeriocularEnrollment = ([v6 flags] & 0x40000) != 0;
      v9->_secondaryPeriocularEnrollments = ([v6 flags] >> 19) & 7;
    }

    v22 = [v6 type];
    v23 = 2 * (v22 == 4);
    if (v22 == 1)
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

- (BOOL)isEqualToIdentity:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 && self->_type == *(v4 + 3) && self->_userID == *(v4 + 3))
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
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(BKIdentity *)self isEqualToIdentity:v4];
  }

  return v5;
}

@end