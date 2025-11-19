@interface CPSDevice
+ (CPSDevice)currentDevice;
- (CPSDevice)initWithCoder:(id)a3;
- (id)_initCurrentDevice;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CPSDevice

- (id)_initCurrentDevice
{
  v19.receiver = self;
  v19.super_class = CPSDevice;
  v2 = [(CPSDevice *)&v19 init];
  if (v2)
  {
    v3 = GestaltCopyAnswer();
    name = v2->_name;
    v2->_name = v3;

    v5 = GestaltCopyAnswer();
    model = v2->_model;
    v2->_model = v5;

    Boolean = GestaltGetBoolean();
    v8 = GestaltGetBoolean();
    v9 = 2;
    if (Boolean)
    {
      v9 = 3;
    }

    if (v8)
    {
      v10 = v9;
    }

    else
    {
      v10 = Boolean != 0;
    }

    v11 = [MEMORY[0x277CF0CA8] sharedInstance];
    v12 = [v11 homeButtonType];

    if (v12 >= 2)
    {
      v13 = v10;
    }

    else
    {
      v13 = v10 | 4;
    }

    v14 = SBSIsSystemApertureAvailable();
    v15 = v13 | 8;
    if (!v14)
    {
      v15 = v13;
    }

    v2->_flags = v15;
    v16 = GestaltCopyAnswer();
    buildVersion = v2->_buildVersion;
    v2->_buildVersion = v16;
  }

  return v2;
}

- (id)description
{
  v3 = [MEMORY[0x277CF0C00] builderWithObject:self];
  flags = self->_flags;
  v5 = CUPrintFlags64();
  [v3 appendString:v5 withName:@"flags"];

  [v3 appendString:self->_model withName:@"model" skipIfEmpty:1];
  [v3 appendString:self->_name withName:@"name" skipIfEmpty:1];
  [v3 appendString:self->_buildVersion withName:@"buildVersion" skipIfEmpty:1];
  v6 = [v3 build];

  return v6;
}

+ (CPSDevice)currentDevice
{
  v2 = [[CPSDevice alloc] _initCurrentDevice];

  return v2;
}

- (CPSDevice)initWithCoder:(id)a3
{
  v4 = a3;
  v16.receiver = self;
  v16.super_class = CPSDevice;
  v5 = [(CPSDevice *)&v16 init];
  if (v5)
  {
    v5->_flags = [v4 decodeIntegerForKey:@"flags"];
    v6 = objc_opt_self();
    v7 = [v4 decodeObjectOfClass:v6 forKey:@"model"];
    model = v5->_model;
    v5->_model = v7;

    v9 = objc_opt_self();
    v10 = [v4 decodeObjectOfClass:v9 forKey:@"name"];
    name = v5->_name;
    v5->_name = v10;

    v12 = objc_opt_self();
    v13 = [v4 decodeObjectOfClass:v12 forKey:@"buildVersion"];
    buildVersion = v5->_buildVersion;
    v5->_buildVersion = v13;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  flags = self->_flags;
  v5 = a3;
  [v5 encodeInteger:flags forKey:@"flags"];
  [v5 encodeObject:self->_model forKey:@"model"];
  [v5 encodeObject:self->_name forKey:@"name"];
  [v5 encodeObject:self->_buildVersion forKey:@"buildVersion"];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(CPSDevice);
  v4->_flags = self->_flags;
  v5 = [(NSString *)self->_model copy];
  model = v4->_model;
  v4->_model = v5;

  v7 = [(NSString *)self->_name copy];
  name = v4->_name;
  v4->_name = v7;

  v9 = [(NSString *)self->_buildVersion copy];
  buildVersion = v4->_buildVersion;
  v4->_buildVersion = v9;

  return v4;
}

@end