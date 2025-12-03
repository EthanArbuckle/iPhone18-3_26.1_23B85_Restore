@interface MRDExternalDeviceAuthTokenRecord
- (id)_copyWithZone:(_NSZone *)zone usingConcreteClass:(Class)class;
- (id)copyWithZone:(_NSZone *)zone;
- (id)mutableCopyWithZone:(_NSZone *)zone;
@end

@implementation MRDExternalDeviceAuthTokenRecord

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = objc_opt_class();

  return [(MRDExternalDeviceAuthTokenRecord *)self _copyWithZone:zone usingConcreteClass:v5];
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v5 = objc_opt_class();

  return [(MRDExternalDeviceAuthTokenRecord *)self _copyWithZone:zone usingConcreteClass:v5];
}

- (id)_copyWithZone:(_NSZone *)zone usingConcreteClass:(Class)class
{
  v5 = objc_alloc_init(class);
  v6 = [(NSString *)self->_deviceID copy];
  v7 = *(v5 + 1);
  *(v5 + 1) = v6;

  v8 = [(NSString *)self->_token copy];
  v9 = *(v5 + 2);
  *(v5 + 2) = v8;

  objc_storeStrong(v5 + 3, self->_dateCreated);
  objc_storeStrong(v5 + 4, self->_expirationDate);
  return v5;
}

@end