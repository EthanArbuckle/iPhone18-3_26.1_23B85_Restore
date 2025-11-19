@interface ENAccountIdentity
- (ENAccountIdentity)initWithAccountKey:(id)a3 deviceKey:(id)a4;
- (void)encodeWithCoder:(id)a3;
@end

@implementation ENAccountIdentity

- (ENAccountIdentity)initWithAccountKey:(id)a3 deviceKey:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = ENAccountIdentity;
  v9 = [(ENAccountIdentity *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_accountKey, a3);
    objc_storeStrong(&v10->_deviceKey, a4);
  }

  return v10;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(ENAccountIdentity *)self accountKey];
  [v4 encodeObject:v5 forKey:@"kENPersonalIdentityAccountKey"];

  v6 = [(ENAccountIdentity *)self deviceKey];
  [v4 encodeObject:v6 forKey:@"kENPersonalIdentityDeviceKey"];
}

@end