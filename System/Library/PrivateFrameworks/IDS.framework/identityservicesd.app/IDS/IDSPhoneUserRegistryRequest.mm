@interface IDSPhoneUserRegistryRequest
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToRegistryRequest:(id)a3;
- (IDSPhoneUserRegistryRequest)initWithServiceType:(int64_t)a3 uniqueIdentifier:(id)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (unint64_t)hash;
@end

@implementation IDSPhoneUserRegistryRequest

- (IDSPhoneUserRegistryRequest)initWithServiceType:(int64_t)a3 uniqueIdentifier:(id)a4
{
  v7 = a4;
  v11.receiver = self;
  v11.super_class = IDSPhoneUserRegistryRequest;
  v8 = [(IDSPhoneUserRegistryRequest *)&v11 init];
  v9 = v8;
  if (v8)
  {
    v8->_serviceType = a3;
    objc_storeStrong(&v8->_uniqueIdentifier, a4);
  }

  return v9;
}

- (id)description
{
  v3 = objc_opt_class();
  v4 = [NSNumber numberWithInteger:[(IDSPhoneUserRegistryRequest *)self serviceType]];
  v5 = [(IDSPhoneUserRegistryRequest *)self uniqueIdentifier];
  v6 = [NSString stringWithFormat:@"<%@: %p serviceType = %@; uniqueIdentifier = %@>", v3, self, v4, v5];;

  return v6;
}

- (unint64_t)hash
{
  v3 = [(IDSPhoneUserRegistryRequest *)self serviceType];
  v4 = [(IDSPhoneUserRegistryRequest *)self uniqueIdentifier];
  v5 = [v4 hash];

  return v5 ^ v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [(IDSPhoneUserRegistryRequest *)self isEqualToRegistryRequest:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)isEqualToRegistryRequest:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self == v4)
  {
    v9 = 1;
  }

  else
  {
    v6 = [(IDSPhoneUserRegistryRequest *)v4 uniqueIdentifier];
    v7 = [(IDSPhoneUserRegistryRequest *)self uniqueIdentifier];
    if ([v6 isEqualToString:v7])
    {
      v8 = [(IDSPhoneUserRegistryRequest *)v5 serviceType];
      v9 = v8 == [(IDSPhoneUserRegistryRequest *)self serviceType];
    }

    else
    {
      v9 = 0;
    }
  }

  return v9;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc(objc_opt_class());
  serviceType = self->_serviceType;
  uniqueIdentifier = self->_uniqueIdentifier;

  return [v4 initWithServiceType:serviceType uniqueIdentifier:uniqueIdentifier];
}

@end