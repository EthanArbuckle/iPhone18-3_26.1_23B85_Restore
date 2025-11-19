@interface CPSRestrictedAccessRequest
- (CPSRestrictedAccessRequest)initWithCoder:(id)a3;
- (CPSRestrictedAccessRequest)initWithXPCDictionary:(id)a3;
- (NSString)description;
- (void)encodeWithCoder:(id)a3;
- (void)encodeWithXPCDictionary:(id)a3;
@end

@implementation CPSRestrictedAccessRequest

- (NSString)description
{
  v3 = [MEMORY[0x277CF0C00] builderWithObject:self];
  v4 = [v3 appendInteger:self->_restrictionType withName:@"restrictionType"];
  v5 = [v3 appendObject:self->_approversAppleAccountAltDSIDs withName:@"approversAppleAccountAltDSIDs"];
  v6 = [v3 build];

  return v6;
}

- (CPSRestrictedAccessRequest)initWithCoder:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = CPSRestrictedAccessRequest;
  v5 = [(CPSAuthenticationRequest *)&v10 initWithCoder:v4];
  if (v5)
  {
    v6 = objc_opt_self();
    v7 = [v4 decodeArrayOfObjectsOfClass:v6 forKey:@"approversAppleAccountAltDSIDs"];
    approversAppleAccountAltDSIDs = v5->_approversAppleAccountAltDSIDs;
    v5->_approversAppleAccountAltDSIDs = v7;

    v5->_restrictionType = [v4 decodeIntegerForKey:@"restrictionType"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = CPSRestrictedAccessRequest;
  v4 = a3;
  [(CPSAuthenticationRequest *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_approversAppleAccountAltDSIDs forKey:{@"approversAppleAccountAltDSIDs", v5.receiver, v5.super_class}];
  [v4 encodeInteger:self->_restrictionType forKey:@"restrictionType"];
}

- (CPSRestrictedAccessRequest)initWithXPCDictionary:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = CPSRestrictedAccessRequest;
  v5 = [(CPSAuthenticationRequest *)&v14 init];
  if (v5)
  {
    v6 = [MEMORY[0x277CF0D20] coderWithMessage:v4];
    v7 = [v6 decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
    [(CPSAuthenticationRequest *)v5 setIdentifier:v7];

    v8 = objc_opt_self();
    v9 = objc_opt_self();
    v10 = [v6 decodeCollectionOfClass:v8 containingClass:v9 forKey:@"approversAppleAccountAltDSIDs"];
    approversAppleAccountAltDSIDs = v5->_approversAppleAccountAltDSIDs;
    v5->_approversAppleAccountAltDSIDs = v10;

    v12 = [v6 decodeObjectOfClass:objc_opt_class() forKey:@"restrictionType"];
    v5->_restrictionType = [v12 integerValue];
  }

  return v5;
}

- (void)encodeWithXPCDictionary:(id)a3
{
  v6 = [MEMORY[0x277CF0D20] coderWithMessage:a3];
  v4 = [(CPSAuthenticationRequest *)self identifier];
  [v6 encodeObject:v4 forKey:@"identifier"];

  [v6 encodeObject:self->_approversAppleAccountAltDSIDs forKey:@"approversAppleAccountAltDSIDs"];
  v5 = [MEMORY[0x277CCABB0] numberWithInteger:self->_restrictionType];
  [v6 encodeObject:v5 forKey:@"restrictionType"];
}

@end