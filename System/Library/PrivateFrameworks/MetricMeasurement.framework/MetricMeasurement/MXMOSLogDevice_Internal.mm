@interface MXMOSLogDevice_Internal
- (MXMOSLogDevice_Internal)initWithName:(id)name identifier:(id)identifier;
- (MXMOSLogDevice_Internal)initWithOSLogDevice:(id)device;
@end

@implementation MXMOSLogDevice_Internal

- (MXMOSLogDevice_Internal)initWithOSLogDevice:(id)device
{
  deviceCopy = device;
  v9.receiver = self;
  v9.super_class = MXMOSLogDevice_Internal;
  v6 = [(MXMOSLogDevice_Internal *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_rawDevice, device);
  }

  return v7;
}

- (MXMOSLogDevice_Internal)initWithName:(id)name identifier:(id)identifier
{
  nameCopy = name;
  identifierCopy = identifier;
  v12.receiver = self;
  v12.super_class = MXMOSLogDevice_Internal;
  v9 = [(MXMOSLogDevice_Internal *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_name, name);
    objc_storeStrong(&v10->_identifier, identifier);
  }

  return v10;
}

@end