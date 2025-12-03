@interface CNUICoreFamilyElement
- (BOOL)containsFamilyMember:(id)member;
- (BOOL)hasMatchingContacts;
- (BOOL)isParent;
- (CNUICoreFamilyElement)initWithFamilyMember:(id)member matchingContacts:(id)contacts;
- (id)description;
@end

@implementation CNUICoreFamilyElement

- (CNUICoreFamilyElement)initWithFamilyMember:(id)member matchingContacts:(id)contacts
{
  memberCopy = member;
  contactsCopy = contacts;
  if (memberCopy)
  {
    goto LABEL_5;
  }

  if (CNGuardOSLog_cn_once_token_0_15 != -1)
  {
    [CNUICoreFamilyElement initWithFamilyMember:matchingContacts:];
  }

  v9 = CNGuardOSLog_cn_once_object_0_15;
  if (os_log_type_enabled(CNGuardOSLog_cn_once_object_0_15, OS_LOG_TYPE_FAULT))
  {
    [CNUICoreFamilyElement initWithFamilyMember:v9 matchingContacts:?];
    if (contactsCopy)
    {
      goto LABEL_10;
    }
  }

  else
  {
LABEL_5:
    if (contactsCopy)
    {
      goto LABEL_10;
    }
  }

  if (CNGuardOSLog_cn_once_token_0_15 != -1)
  {
    [CNUICoreFamilyElement initWithFamilyMember:matchingContacts:];
  }

  v10 = CNGuardOSLog_cn_once_object_0_15;
  if (os_log_type_enabled(CNGuardOSLog_cn_once_object_0_15, OS_LOG_TYPE_FAULT))
  {
    [CNUICoreFamilyElement initWithFamilyMember:v10 matchingContacts:?];
  }

LABEL_10:
  v15.receiver = self;
  v15.super_class = CNUICoreFamilyElement;
  v11 = [(CNUICoreFamilyElement *)&v15 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_familyMember, member);
    objc_storeStrong(&v12->_matchingContacts, contacts);
    v13 = v12;
  }

  return v12;
}

- (BOOL)hasMatchingContacts
{
  v2 = *MEMORY[0x1E6996530];
  matchingContacts = [(CNUICoreFamilyElement *)self matchingContacts];
  LOBYTE(v2) = (*(v2 + 16))(v2, matchingContacts);

  return v2 ^ 1;
}

- (BOOL)isParent
{
  familyMember = [(CNUICoreFamilyElement *)self familyMember];
  isParent = [familyMember isParent];

  return isParent;
}

- (BOOL)containsFamilyMember:(id)member
{
  memberCopy = member;
  familyMember = [(CNUICoreFamilyElement *)self familyMember];

  if (familyMember == memberCopy)
  {
    v9 = 1;
  }

  else
  {
    dsid = [memberCopy dsid];
    familyMember2 = [(CNUICoreFamilyElement *)self familyMember];
    dsid2 = [familyMember2 dsid];
    if ([dsid isEqual:dsid2])
    {
      v9 = 1;
    }

    else
    {
      altDSID = [memberCopy altDSID];
      familyMember3 = [(CNUICoreFamilyElement *)self familyMember];
      altDSID2 = [familyMember3 altDSID];
      v9 = [altDSID isEqualToString:altDSID2];
    }
  }

  return v9;
}

- (id)description
{
  v3 = [MEMORY[0x1E69966B0] descriptionBuilderWithObject:self];
  familyMember = [(CNUICoreFamilyElement *)self familyMember];
  v5 = [v3 appendObject:familyMember withName:@"familyMember"];

  matchingContacts = [(CNUICoreFamilyElement *)self matchingContacts];
  v7 = [v3 appendObject:matchingContacts withName:@"matchingContacts"];

  build = [v3 build];

  return build;
}

@end