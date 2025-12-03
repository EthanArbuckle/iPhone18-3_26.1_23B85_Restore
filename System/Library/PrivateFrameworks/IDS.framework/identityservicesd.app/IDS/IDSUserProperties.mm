@interface IDSUserProperties
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToUserProperties:(id)properties;
- (BOOL)isSPSCapable;
- (IDSUserProperties)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)propsByUpdatingDisableRegistration:(BOOL)registration;
- (id)propsByUpdatingHasActiveSIM:(BOOL)m;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation IDSUserProperties

- (id)copyWithZone:(_NSZone *)zone
{
  result = objc_alloc_init(objc_opt_class());
  *(result + 8) = self->_disableRegistration;
  *(result + 9) = self->_hasActiveSIM;
  return result;
}

- (id)propsByUpdatingDisableRegistration:(BOOL)registration
{
  v4 = [(IDSUserProperties *)self copy];
  v4[8] = registration;

  return v4;
}

- (id)propsByUpdatingHasActiveSIM:(BOOL)m
{
  v4 = [(IDSUserProperties *)self copy];
  v4[9] = m;

  return v4;
}

- (BOOL)isSPSCapable
{
  if ([(IDSUserProperties *)self disableRegistration])
  {
    return 0;
  }

  return [(IDSUserProperties *)self hasActiveSIM];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [(IDSUserProperties *)self isEqualToUserProperties:equalCopy];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)isEqualToUserProperties:(id)properties
{
  propertiesCopy = properties;
  v5 = propertiesCopy;
  if (self == propertiesCopy)
  {
    LOBYTE(v7) = 1;
  }

  else
  {
    disableRegistration = [(IDSUserProperties *)propertiesCopy disableRegistration];
    if (disableRegistration == [(IDSUserProperties *)self disableRegistration])
    {
      hasActiveSIM = [(IDSUserProperties *)v5 hasActiveSIM];
      v7 = hasActiveSIM ^ [(IDSUserProperties *)self hasActiveSIM]^ 1;
    }

    else
    {
      LOBYTE(v7) = 0;
    }
  }

  return v7;
}

- (unint64_t)hash
{
  v3.receiver = self;
  v3.super_class = IDSUserProperties;
  return [(IDSUserProperties *)&v3 hash]^ self->_disableRegistration ^ self->_hasActiveSIM;
}

- (id)description
{
  v3 = objc_opt_class();
  disableRegistration = [(IDSUserProperties *)self disableRegistration];
  v5 = @"NO";
  if (disableRegistration)
  {
    v6 = @"YES";
  }

  else
  {
    v6 = @"NO";
  }

  if (self->_hasActiveSIM)
  {
    v5 = @"YES";
  }

  return [NSString stringWithFormat:@"<%@:%p; disableRegistration: %@; hasActiveSim: %@>", v3, self, v6, v5];
}

- (void)encodeWithCoder:(id)coder
{
  disableRegistration = self->_disableRegistration;
  coderCopy = coder;
  [coderCopy encodeBool:disableRegistration forKey:@"disableReg"];
  [coderCopy encodeBool:self->_hasActiveSIM forKey:@"hasActiveSIM"];
}

- (IDSUserProperties)initWithCoder:(id)coder
{
  coderCopy = coder;
  self->_disableRegistration = [coderCopy decodeBoolForKey:@"disableReg"];
  v5 = [coderCopy decodeBoolForKey:@"hasActiveSIM"];

  self->_hasActiveSIM = v5;
  return self;
}

@end