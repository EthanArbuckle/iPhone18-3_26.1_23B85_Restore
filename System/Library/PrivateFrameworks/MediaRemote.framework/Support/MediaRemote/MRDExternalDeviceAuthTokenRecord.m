@interface MRDExternalDeviceAuthTokenRecord
- (id)_copyWithZone:(_NSZone *)a3 usingConcreteClass:(Class)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (id)mutableCopyWithZone:(_NSZone *)a3;
@end

@implementation MRDExternalDeviceAuthTokenRecord

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = objc_opt_class();

  return [(MRDExternalDeviceAuthTokenRecord *)self _copyWithZone:a3 usingConcreteClass:v5];
}

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  v5 = objc_opt_class();

  return [(MRDExternalDeviceAuthTokenRecord *)self _copyWithZone:a3 usingConcreteClass:v5];
}

- (id)_copyWithZone:(_NSZone *)a3 usingConcreteClass:(Class)a4
{
  v5 = objc_alloc_init(a4);
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