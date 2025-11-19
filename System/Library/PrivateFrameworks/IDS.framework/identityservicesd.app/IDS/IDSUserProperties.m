@interface IDSUserProperties
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToUserProperties:(id)a3;
- (BOOL)isSPSCapable;
- (IDSUserProperties)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)propsByUpdatingDisableRegistration:(BOOL)a3;
- (id)propsByUpdatingHasActiveSIM:(BOOL)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation IDSUserProperties

- (id)copyWithZone:(_NSZone *)a3
{
  result = objc_alloc_init(objc_opt_class());
  *(result + 8) = self->_disableRegistration;
  *(result + 9) = self->_hasActiveSIM;
  return result;
}

- (id)propsByUpdatingDisableRegistration:(BOOL)a3
{
  v4 = [(IDSUserProperties *)self copy];
  v4[8] = a3;

  return v4;
}

- (id)propsByUpdatingHasActiveSIM:(BOOL)a3
{
  v4 = [(IDSUserProperties *)self copy];
  v4[9] = a3;

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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [(IDSUserProperties *)self isEqualToUserProperties:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)isEqualToUserProperties:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self == v4)
  {
    LOBYTE(v7) = 1;
  }

  else
  {
    v6 = [(IDSUserProperties *)v4 disableRegistration];
    if (v6 == [(IDSUserProperties *)self disableRegistration])
    {
      v8 = [(IDSUserProperties *)v5 hasActiveSIM];
      v7 = v8 ^ [(IDSUserProperties *)self hasActiveSIM]^ 1;
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
  v4 = [(IDSUserProperties *)self disableRegistration];
  v5 = @"NO";
  if (v4)
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

- (void)encodeWithCoder:(id)a3
{
  disableRegistration = self->_disableRegistration;
  v5 = a3;
  [v5 encodeBool:disableRegistration forKey:@"disableReg"];
  [v5 encodeBool:self->_hasActiveSIM forKey:@"hasActiveSIM"];
}

- (IDSUserProperties)initWithCoder:(id)a3
{
  v4 = a3;
  self->_disableRegistration = [v4 decodeBoolForKey:@"disableReg"];
  v5 = [v4 decodeBoolForKey:@"hasActiveSIM"];

  self->_hasActiveSIM = v5;
  return self;
}

@end