@interface CardDAVDelegateInfo
+ (id)dsidForAccount:(id)a3;
- (CardDAVDelegateInfo)initWithFamilyMember:(id)a3;
- (id)_hardCodedPrincipalPathForFamilyMember:(id)a3;
- (void)setPropertiesOnAccount:(id)a3;
@end

@implementation CardDAVDelegateInfo

- (CardDAVDelegateInfo)initWithFamilyMember:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = CardDAVDelegateInfo;
  v5 = [(CardDAVDelegateInfo *)&v11 init];
  if (v5)
  {
    v6 = [v4 appleID];
    [(CardDAVDelegateInfo *)v5 setAppleID:v6];

    v7 = [v4 dsid];
    [(CardDAVDelegateInfo *)v5 setDsid:v7];

    v8 = [v4 altDSID];
    [(CardDAVDelegateInfo *)v5 setAltDSID:v8];

    v9 = [(CardDAVDelegateInfo *)v5 _hardCodedPrincipalPathForFamilyMember:v4];
    [(CardDAVDelegateInfo *)v5 setPrincipalPath:v9];
  }

  return v5;
}

- (void)setPropertiesOnAccount:(id)a3
{
  v4 = a3;
  v5 = [(CardDAVDelegateInfo *)self principalPath];
  v6 = [MEMORY[0x277D03970] DAAccountPrincipalPath];
  [v4 setAccountProperty:v5 forKey:v6];

  v7 = [(CardDAVDelegateInfo *)self dsid];
  v8 = [MEMORY[0x277D03970] DACardDAVAccountDSID];
  [v4 setAccountProperty:v7 forKey:v8];

  v9 = [(CardDAVDelegateInfo *)self altDSID];
  [v4 setAccountProperty:v9 forKey:@"DACardDAVAccountAltDSID"];

  v10 = [(CardDAVDelegateInfo *)self appleID];
  [v4 setAccountProperty:v10 forKey:@"DACardDAVAccountAppleID"];
}

+ (id)dsidForAccount:(id)a3
{
  v3 = MEMORY[0x277D03970];
  v4 = a3;
  v5 = [v3 DACardDAVAccountDSID];
  v6 = [v4 accountPropertyForKey:v5];

  return v6;
}

- (id)_hardCodedPrincipalPathForFamilyMember:(id)a3
{
  v3 = [a3 dsid];
  v4 = [v3 stringValue];

  v5 = [objc_opt_class() hardCodedPrincipalPathForDSID:v4];

  return v5;
}

@end