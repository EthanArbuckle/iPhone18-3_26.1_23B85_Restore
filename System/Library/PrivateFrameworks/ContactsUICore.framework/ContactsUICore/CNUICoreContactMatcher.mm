@interface CNUICoreContactMatcher
+ (BOOL)doesContact:(id)contact matchAnyParentOrGuardianInFamily:(id)family;
+ (BOOL)doesNameOfContact:(id)contact matchNameOfContact:(id)ofContact;
+ (BOOL)doesNameOfContact:(id)contact matchNameOfFamilyMember:(id)member;
+ (id)nameFromFammilyMember:(id)member;
@end

@implementation CNUICoreContactMatcher

+ (id)nameFromFammilyMember:(id)member
{
  v3 = MEMORY[0x1E695CF18];
  memberCopy = member;
  v5 = objc_alloc_init(v3);
  firstName = [memberCopy firstName];
  [v5 setGivenName:firstName];

  lastName = [memberCopy lastName];

  [v5 setFamilyName:lastName];
  v8 = [MEMORY[0x1E695CD80] stringFromContact:v5 style:0];

  return v8;
}

+ (BOOL)doesNameOfContact:(id)contact matchNameOfContact:(id)ofContact
{
  contactCopy = contact;
  ofContactCopy = ofContact;
  givenName = [contactCopy givenName];
  givenName2 = [ofContactCopy givenName];
  if ([givenName _cn_caseInsensitiveIsEqual:givenName2])
  {
    familyName = [contactCopy familyName];
    familyName2 = [ofContactCopy familyName];
    v11 = [familyName _cn_caseInsensitiveIsEqual:familyName2];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

+ (BOOL)doesContact:(id)contact matchAnyParentOrGuardianInFamily:(id)family
{
  contactCopy = contact;
  elements = [family elements];
  v8 = [elements _cn_filter:&__block_literal_global_13];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __71__CNUICoreContactMatcher_doesContact_matchAnyParentOrGuardianInFamily___block_invoke_2;
  v11[3] = &unk_1E76E8418;
  v12 = contactCopy;
  selfCopy = self;
  v9 = contactCopy;
  LOBYTE(contactCopy) = [v8 _cn_any:v11];

  return contactCopy;
}

uint64_t __71__CNUICoreContactMatcher_doesContact_matchAnyParentOrGuardianInFamily___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 familyMember];
  v3 = [v2 isParent];

  return v3;
}

uint64_t __71__CNUICoreContactMatcher_doesContact_matchAnyParentOrGuardianInFamily___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  v4 = [a2 familyMember];
  v5 = [v2 doesNameOfContact:v3 matchNameOfFamilyMember:v4];

  return v5;
}

+ (BOOL)doesNameOfContact:(id)contact matchNameOfFamilyMember:(id)member
{
  contactCopy = contact;
  memberCopy = member;
  givenName = [contactCopy givenName];
  firstName = [memberCopy firstName];
  if ([givenName _cn_caseInsensitiveIsEqual:firstName])
  {
    familyName = [contactCopy familyName];
    lastName = [memberCopy lastName];
    v11 = [familyName _cn_caseInsensitiveIsEqual:lastName];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

@end