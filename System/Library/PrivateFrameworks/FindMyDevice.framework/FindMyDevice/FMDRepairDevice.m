@interface FMDRepairDevice
- (FMDRepairDevice)initWithClientIdentifier:(id)a3 isThisDevice:(BOOL)a4;
- (FMDRepairDevice)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation FMDRepairDevice

- (FMDRepairDevice)initWithClientIdentifier:(id)a3 isThisDevice:(BOOL)a4
{
  v7 = a3;
  v11.receiver = self;
  v11.super_class = FMDRepairDevice;
  v8 = [(FMDRepairDevice *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_identifier, a3);
    v9->_isThisDevice = a4;
  }

  return v9;
}

- (FMDRepairDevice)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = FMDRepairDevice;
  v5 = [(FMDRepairDevice *)&v9 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
    identifier = v5->_identifier;
    v5->_identifier = v6;

    v5->_isThisDevice = [v4 decodeBoolForKey:@"isThisDevice"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  identifier = self->_identifier;
  v5 = a3;
  [v5 encodeObject:identifier forKey:@"identifier"];
  [v5 encodeBool:self->_isThisDevice forKey:@"isThisDevice"];
}

@end