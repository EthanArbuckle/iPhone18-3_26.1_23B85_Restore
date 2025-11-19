@interface CNUICoreFamilyElement
- (BOOL)containsFamilyMember:(id)a3;
- (BOOL)hasMatchingContacts;
- (BOOL)isParent;
- (CNUICoreFamilyElement)initWithFamilyMember:(id)a3 matchingContacts:(id)a4;
- (id)description;
@end

@implementation CNUICoreFamilyElement

- (CNUICoreFamilyElement)initWithFamilyMember:(id)a3 matchingContacts:(id)a4
{
  v7 = a3;
  v8 = a4;
  if (v7)
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
    if (v8)
    {
      goto LABEL_10;
    }
  }

  else
  {
LABEL_5:
    if (v8)
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
    objc_storeStrong(&v11->_familyMember, a3);
    objc_storeStrong(&v12->_matchingContacts, a4);
    v13 = v12;
  }

  return v12;
}

- (BOOL)hasMatchingContacts
{
  v2 = *MEMORY[0x1E6996530];
  v3 = [(CNUICoreFamilyElement *)self matchingContacts];
  LOBYTE(v2) = (*(v2 + 16))(v2, v3);

  return v2 ^ 1;
}

- (BOOL)isParent
{
  v2 = [(CNUICoreFamilyElement *)self familyMember];
  v3 = [v2 isParent];

  return v3;
}

- (BOOL)containsFamilyMember:(id)a3
{
  v4 = a3;
  v5 = [(CNUICoreFamilyElement *)self familyMember];

  if (v5 == v4)
  {
    v9 = 1;
  }

  else
  {
    v6 = [v4 dsid];
    v7 = [(CNUICoreFamilyElement *)self familyMember];
    v8 = [v7 dsid];
    if ([v6 isEqual:v8])
    {
      v9 = 1;
    }

    else
    {
      v10 = [v4 altDSID];
      v11 = [(CNUICoreFamilyElement *)self familyMember];
      v12 = [v11 altDSID];
      v9 = [v10 isEqualToString:v12];
    }
  }

  return v9;
}

- (id)description
{
  v3 = [MEMORY[0x1E69966B0] descriptionBuilderWithObject:self];
  v4 = [(CNUICoreFamilyElement *)self familyMember];
  v5 = [v3 appendObject:v4 withName:@"familyMember"];

  v6 = [(CNUICoreFamilyElement *)self matchingContacts];
  v7 = [v3 appendObject:v6 withName:@"matchingContacts"];

  v8 = [v3 build];

  return v8;
}

@end