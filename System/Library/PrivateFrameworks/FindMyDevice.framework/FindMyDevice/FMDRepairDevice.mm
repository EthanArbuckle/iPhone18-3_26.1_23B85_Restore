@interface FMDRepairDevice
- (FMDRepairDevice)initWithClientIdentifier:(id)identifier isThisDevice:(BOOL)device;
- (FMDRepairDevice)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation FMDRepairDevice

- (FMDRepairDevice)initWithClientIdentifier:(id)identifier isThisDevice:(BOOL)device
{
  identifierCopy = identifier;
  v11.receiver = self;
  v11.super_class = FMDRepairDevice;
  v8 = [(FMDRepairDevice *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_identifier, identifier);
    v9->_isThisDevice = device;
  }

  return v9;
}

- (FMDRepairDevice)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = FMDRepairDevice;
  v5 = [(FMDRepairDevice *)&v9 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
    identifier = v5->_identifier;
    v5->_identifier = v6;

    v5->_isThisDevice = [coderCopy decodeBoolForKey:@"isThisDevice"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  identifier = self->_identifier;
  coderCopy = coder;
  [coderCopy encodeObject:identifier forKey:@"identifier"];
  [coderCopy encodeBool:self->_isThisDevice forKey:@"isThisDevice"];
}

@end