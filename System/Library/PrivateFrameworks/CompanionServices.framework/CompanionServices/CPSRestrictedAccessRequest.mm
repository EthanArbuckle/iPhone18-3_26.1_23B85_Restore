@interface CPSRestrictedAccessRequest
- (CPSRestrictedAccessRequest)initWithCoder:(id)coder;
- (CPSRestrictedAccessRequest)initWithXPCDictionary:(id)dictionary;
- (NSString)description;
- (void)encodeWithCoder:(id)coder;
- (void)encodeWithXPCDictionary:(id)dictionary;
@end

@implementation CPSRestrictedAccessRequest

- (NSString)description
{
  v3 = [MEMORY[0x277CF0C00] builderWithObject:self];
  v4 = [v3 appendInteger:self->_restrictionType withName:@"restrictionType"];
  v5 = [v3 appendObject:self->_approversAppleAccountAltDSIDs withName:@"approversAppleAccountAltDSIDs"];
  build = [v3 build];

  return build;
}

- (CPSRestrictedAccessRequest)initWithCoder:(id)coder
{
  coderCopy = coder;
  v10.receiver = self;
  v10.super_class = CPSRestrictedAccessRequest;
  v5 = [(CPSAuthenticationRequest *)&v10 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = objc_opt_self();
    v7 = [coderCopy decodeArrayOfObjectsOfClass:v6 forKey:@"approversAppleAccountAltDSIDs"];
    approversAppleAccountAltDSIDs = v5->_approversAppleAccountAltDSIDs;
    v5->_approversAppleAccountAltDSIDs = v7;

    v5->_restrictionType = [coderCopy decodeIntegerForKey:@"restrictionType"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = CPSRestrictedAccessRequest;
  coderCopy = coder;
  [(CPSAuthenticationRequest *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_approversAppleAccountAltDSIDs forKey:{@"approversAppleAccountAltDSIDs", v5.receiver, v5.super_class}];
  [coderCopy encodeInteger:self->_restrictionType forKey:@"restrictionType"];
}

- (CPSRestrictedAccessRequest)initWithXPCDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v14.receiver = self;
  v14.super_class = CPSRestrictedAccessRequest;
  v5 = [(CPSAuthenticationRequest *)&v14 init];
  if (v5)
  {
    v6 = [MEMORY[0x277CF0D20] coderWithMessage:dictionaryCopy];
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

- (void)encodeWithXPCDictionary:(id)dictionary
{
  v6 = [MEMORY[0x277CF0D20] coderWithMessage:dictionary];
  identifier = [(CPSAuthenticationRequest *)self identifier];
  [v6 encodeObject:identifier forKey:@"identifier"];

  [v6 encodeObject:self->_approversAppleAccountAltDSIDs forKey:@"approversAppleAccountAltDSIDs"];
  v5 = [MEMORY[0x277CCABB0] numberWithInteger:self->_restrictionType];
  [v6 encodeObject:v5 forKey:@"restrictionType"];
}

@end