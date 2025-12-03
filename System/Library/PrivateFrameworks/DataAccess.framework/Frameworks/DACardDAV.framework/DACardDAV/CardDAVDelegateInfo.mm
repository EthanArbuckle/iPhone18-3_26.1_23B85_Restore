@interface CardDAVDelegateInfo
+ (id)dsidForAccount:(id)account;
- (CardDAVDelegateInfo)initWithFamilyMember:(id)member;
- (id)_hardCodedPrincipalPathForFamilyMember:(id)member;
- (void)setPropertiesOnAccount:(id)account;
@end

@implementation CardDAVDelegateInfo

- (CardDAVDelegateInfo)initWithFamilyMember:(id)member
{
  memberCopy = member;
  v11.receiver = self;
  v11.super_class = CardDAVDelegateInfo;
  v5 = [(CardDAVDelegateInfo *)&v11 init];
  if (v5)
  {
    appleID = [memberCopy appleID];
    [(CardDAVDelegateInfo *)v5 setAppleID:appleID];

    dsid = [memberCopy dsid];
    [(CardDAVDelegateInfo *)v5 setDsid:dsid];

    altDSID = [memberCopy altDSID];
    [(CardDAVDelegateInfo *)v5 setAltDSID:altDSID];

    v9 = [(CardDAVDelegateInfo *)v5 _hardCodedPrincipalPathForFamilyMember:memberCopy];
    [(CardDAVDelegateInfo *)v5 setPrincipalPath:v9];
  }

  return v5;
}

- (void)setPropertiesOnAccount:(id)account
{
  accountCopy = account;
  principalPath = [(CardDAVDelegateInfo *)self principalPath];
  dAAccountPrincipalPath = [MEMORY[0x277D03970] DAAccountPrincipalPath];
  [accountCopy setAccountProperty:principalPath forKey:dAAccountPrincipalPath];

  dsid = [(CardDAVDelegateInfo *)self dsid];
  dACardDAVAccountDSID = [MEMORY[0x277D03970] DACardDAVAccountDSID];
  [accountCopy setAccountProperty:dsid forKey:dACardDAVAccountDSID];

  altDSID = [(CardDAVDelegateInfo *)self altDSID];
  [accountCopy setAccountProperty:altDSID forKey:@"DACardDAVAccountAltDSID"];

  appleID = [(CardDAVDelegateInfo *)self appleID];
  [accountCopy setAccountProperty:appleID forKey:@"DACardDAVAccountAppleID"];
}

+ (id)dsidForAccount:(id)account
{
  v3 = MEMORY[0x277D03970];
  accountCopy = account;
  dACardDAVAccountDSID = [v3 DACardDAVAccountDSID];
  v6 = [accountCopy accountPropertyForKey:dACardDAVAccountDSID];

  return v6;
}

- (id)_hardCodedPrincipalPathForFamilyMember:(id)member
{
  dsid = [member dsid];
  stringValue = [dsid stringValue];

  v5 = [objc_opt_class() hardCodedPrincipalPathForDSID:stringValue];

  return v5;
}

@end