@interface ENAccountIdentity
- (ENAccountIdentity)initWithAccountKey:(id)key deviceKey:(id)deviceKey;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ENAccountIdentity

- (ENAccountIdentity)initWithAccountKey:(id)key deviceKey:(id)deviceKey
{
  keyCopy = key;
  deviceKeyCopy = deviceKey;
  v12.receiver = self;
  v12.super_class = ENAccountIdentity;
  v9 = [(ENAccountIdentity *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_accountKey, key);
    objc_storeStrong(&v10->_deviceKey, deviceKey);
  }

  return v10;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  accountKey = [(ENAccountIdentity *)self accountKey];
  [coderCopy encodeObject:accountKey forKey:@"kENPersonalIdentityAccountKey"];

  deviceKey = [(ENAccountIdentity *)self deviceKey];
  [coderCopy encodeObject:deviceKey forKey:@"kENPersonalIdentityDeviceKey"];
}

@end