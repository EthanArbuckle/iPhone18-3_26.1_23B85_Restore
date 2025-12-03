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
  v1 = [self accountPropertyForKey:@"primaryAccount"];
  bOOLValue = [v1 BOOLValue];

  return bOOLValue;
}

- (uint64_t)_cn_isLDAP
{
  accountType = [self accountType];
  identifier = [accountType identifier];
  v3 = [identifier isEqualToString:*MEMORY[0x1E69598C0]];

  return v3;
}

- (uint64_t)_cn_isCardDAV
{
  accountType = [self accountType];
  identifier = [accountType identifier];
  v3 = [identifier isEqualToString:*MEMORY[0x1E6959820]];

  return v3;
}

- (uint64_t)_cn_isAppleDisplayAccount
{
  displayAccount = [self displayAccount];
  accountType = [displayAccount accountType];
  identifier = [accountType identifier];
  v4 = [identifier isEqualToString:*MEMORY[0x1E69597F8]];

  return v4;
}

- (uint64_t)_cn_isPrimaryiCloudAccount
{
  result = [self _cn_isPrimaryAccount];
  if (result)
  {

    return [self _cn_isAppleDisplayAccount];
  }

  return result;
}

- (uint64_t)_cn_isChildDelegateAccount
{
  _cn_isCardDAV = [self _cn_isCardDAV];
  parentAccount = [self parentAccount];
  _cn_isCardDAV2 = [parentAccount _cn_isCardDAV];

  return _cn_isCardDAV & [self _cn_isAppleDisplayAccount] & _cn_isCardDAV2;
}

- (uint64_t)_cn_isManaged
{
  if (LoadManagedConfiguration_loadPredicate != -1)
  {
    [ACAccount(ContactsFoundation) _cn_isManaged];
  }

  return [self MCIsManaged];
}

- (void)setPropertiesFromDelegateInfo:()ContactsFoundation
{
  v4 = a3;
  dsid = [v4 dsid];
  [self set_cn_dsid:dsid];

  altDSID = [v4 altDSID];
  [self set_cn_altDSID:altDSID];

  principalPath = [v4 principalPath];
  [self set_cn_principalPath:principalPath];

  appleID = [v4 appleID];
  [self set_cn_appleID:appleID];

  nameComponents = [v4 nameComponents];
  givenName = [nameComponents givenName];
  [self set_cn_firstName:givenName];

  nameComponents2 = [v4 nameComponents];

  familyName = [nameComponents2 familyName];
  [self set_cn_lastName:familyName];
}

@end