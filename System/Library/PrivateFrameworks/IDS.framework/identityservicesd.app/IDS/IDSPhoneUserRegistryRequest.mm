@interface IDSPhoneUserRegistryRequest
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToRegistryRequest:(id)request;
- (IDSPhoneUserRegistryRequest)initWithServiceType:(int64_t)type uniqueIdentifier:(id)identifier;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (unint64_t)hash;
@end

@implementation IDSPhoneUserRegistryRequest

- (IDSPhoneUserRegistryRequest)initWithServiceType:(int64_t)type uniqueIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v11.receiver = self;
  v11.super_class = IDSPhoneUserRegistryRequest;
  v8 = [(IDSPhoneUserRegistryRequest *)&v11 init];
  v9 = v8;
  if (v8)
  {
    v8->_serviceType = type;
    objc_storeStrong(&v8->_uniqueIdentifier, identifier);
  }

  return v9;
}

- (id)description
{
  v3 = objc_opt_class();
  v4 = [NSNumber numberWithInteger:[(IDSPhoneUserRegistryRequest *)self serviceType]];
  uniqueIdentifier = [(IDSPhoneUserRegistryRequest *)self uniqueIdentifier];
  v6 = [NSString stringWithFormat:@"<%@: %p serviceType = %@; uniqueIdentifier = %@>", v3, self, v4, uniqueIdentifier];;

  return v6;
}

- (unint64_t)hash
{
  serviceType = [(IDSPhoneUserRegistryRequest *)self serviceType];
  uniqueIdentifier = [(IDSPhoneUserRegistryRequest *)self uniqueIdentifier];
  v5 = [uniqueIdentifier hash];

  return v5 ^ serviceType;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [(IDSPhoneUserRegistryRequest *)self isEqualToRegistryRequest:equalCopy];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)isEqualToRegistryRequest:(id)request
{
  requestCopy = request;
  v5 = requestCopy;
  if (self == requestCopy)
  {
    v9 = 1;
  }

  else
  {
    uniqueIdentifier = [(IDSPhoneUserRegistryRequest *)requestCopy uniqueIdentifier];
    uniqueIdentifier2 = [(IDSPhoneUserRegistryRequest *)self uniqueIdentifier];
    if ([uniqueIdentifier isEqualToString:uniqueIdentifier2])
    {
      serviceType = [(IDSPhoneUserRegistryRequest *)v5 serviceType];
      v9 = serviceType == [(IDSPhoneUserRegistryRequest *)self serviceType];
    }

    else
    {
      v9 = 0;
    }
  }

  return v9;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc(objc_opt_class());
  serviceType = self->_serviceType;
  uniqueIdentifier = self->_uniqueIdentifier;

  return [v4 initWithServiceType:serviceType uniqueIdentifier:uniqueIdentifier];
}

@end