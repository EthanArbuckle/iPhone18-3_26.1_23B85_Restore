@interface _HMDAppleAccountIdentifier
+ (id)namespace;
- (BOOL)isAuthenticated;
- (BOOL)isEqual:(id)a3;
- (_HMDAppleAccountIdentifier)initWithCoder:(id)a3;
- (_HMDAppleAccountIdentifier)initWithIdentifier:(id)a3;
- (_HMDAppleAccountIdentifier)initWithIdentifierString:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation _HMDAppleAccountIdentifier

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5.receiver = self;
  v5.super_class = _HMDAppleAccountIdentifier;
  [(_HMDAccountIdentifier *)&v5 encodeWithCoder:v4];
  os_unfair_lock_lock_with_options();
  [v4 encodeObject:self->_identifierString forKey:@"HM.string"];
  os_unfair_lock_unlock(&self->_lock);
}

- (_HMDAppleAccountIdentifier)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = _HMDAppleAccountIdentifier;
  v5 = [(_HMDAccountIdentifier *)&v9 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HM.string"];
    identifierString = v5->_identifierString;
    v5->_identifierString = v6;
  }

  return v5;
}

- (BOOL)isAuthenticated
{
  v2 = [(_HMDAppleAccountIdentifier *)self identifierString];
  v3 = +[HMDAppleAccountManager sharedManager];
  v4 = [v3 accountContext];
  v5 = [v4 identifier];
  v6 = [v2 isEqualToString:v5];

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v9 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
    }

    else
    {
      v5 = 0;
    }

    v6 = v5;
    if (v6)
    {
      v7 = [(_HMDAppleAccountIdentifier *)self identifierString];
      v8 = [(_HMDAppleAccountIdentifier *)v6 identifierString];
      v9 = [v7 isEqualToString:v8];
    }

    else
    {
      v9 = 0;
    }
  }

  return v9;
}

- (_HMDAppleAccountIdentifier)initWithIdentifierString:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = objc_alloc(MEMORY[0x277CCAD78]);
    v6 = +[_HMDAppleAccountIdentifier namespace];
    v7 = [v4 dataUsingEncoding:4];
    v8 = [v5 initWithNamespace:v6 data:v7];

    v14.receiver = self;
    v14.super_class = _HMDAppleAccountIdentifier;
    v9 = [(_HMDAccountIdentifier *)&v14 initWithIdentifier:v8];
    if (v9)
    {
      v10 = [v4 copy];
      identifierString = v9->_identifierString;
      v9->_identifierString = v10;
    }

    self = v9;

    v12 = self;
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (_HMDAppleAccountIdentifier)initWithIdentifier:(id)a3
{
  v4 = a3;
  v5 = MEMORY[0x277CBEAD8];
  v6 = *MEMORY[0x277CBE658];
  v7 = MEMORY[0x277CCACA8];
  v8 = NSStringFromSelector(a2);
  v9 = [v7 stringWithFormat:@"%@ is unavailable", v8];
  v10 = [v5 exceptionWithName:v6 reason:v9 userInfo:0];
  v11 = v10;

  objc_exception_throw(v10);
}

+ (id)namespace
{
  if (namespace_onceToken != -1)
  {
    dispatch_once(&namespace_onceToken, &__block_literal_global_17688);
  }

  v3 = namespace_namespace;

  return v3;
}

@end