@interface ACAccount(ContactsFoundation)
- (uint64_t)_cn_isAppleDisplayAccount;
- (uint64_t)_cn_isCardDAV;
- (uint64_t)_cn_isChildDelegateAccount;
- (uint64_t)_cn_isLDAP;
- (uint64_t)_cn_isManaged;
- (uint64_t)_cn_isPrimaryAccount;
- (uint64_t)_cn_isPrimaryiCloudAccount;
- (void)setPropertiesFromDelegateInfo:()ContactsFoundation;
@end

@implementation ACAccount(ContactsFoundation)

- (uint64_t)_cn_isPrimaryAccount
{
  v1 = [a1 accountPropertyForKey:@"primaryAccount"];
  v2 = [v1 BOOLValue];

  return v2;
}

- (uint64_t)_cn_isLDAP
{
  v1 = [a1 accountType];
  v2 = [v1 identifier];
  v3 = [v2 isEqualToString:*MEMORY[0x1E69598C0]];

  return v3;
}

- (uint64_t)_cn_isCardDAV
{
  v1 = [a1 accountType];
  v2 = [v1 identifier];
  v3 = [v2 isEqualToString:*MEMORY[0x1E6959820]];

  return v3;
}

- (uint64_t)_cn_isAppleDisplayAccount
{
  v1 = [a1 displayAccount];
  v2 = [v1 accountType];
  v3 = [v2 identifier];
  v4 = [v3 isEqualToString:*MEMORY[0x1E69597F8]];

  return v4;
}

- (uint64_t)_cn_isPrimaryiCloudAccount
{
  result = [a1 _cn_isPrimaryAccount];
  if (result)
  {

    return [a1 _cn_isAppleDisplayAccount];
  }

  return result;
}

- (uint64_t)_cn_isChildDelegateAccount
{
  v2 = [a1 _cn_isCardDAV];
  v3 = [a1 parentAccount];
  v4 = [v3 _cn_isCardDAV];

  return v2 & [a1 _cn_isAppleDisplayAccount] & v4;
}

- (uint64_t)_cn_isManaged
{
  if (LoadManagedConfiguration_loadPredicate != -1)
  {
    [ACAccount(ContactsFoundation) _cn_isManaged];
  }

  return [a1 MCIsManaged];
}

- (void)setPropertiesFromDelegateInfo:()ContactsFoundation
{
  v4 = a3;
  v5 = [v4 dsid];
  [a1 set_cn_dsid:v5];

  v6 = [v4 altDSID];
  [a1 set_cn_altDSID:v6];

  v7 = [v4 principalPath];
  [a1 set_cn_principalPath:v7];

  v8 = [v4 appleID];
  [a1 set_cn_appleID:v8];

  v9 = [v4 nameComponents];
  v10 = [v9 givenName];
  [a1 set_cn_firstName:v10];

  v12 = [v4 nameComponents];

  v11 = [v12 familyName];
  [a1 set_cn_lastName:v11];
}

@end