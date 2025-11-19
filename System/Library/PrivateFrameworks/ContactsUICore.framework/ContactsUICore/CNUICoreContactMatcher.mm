@interface CNUICoreContactMatcher
+ (BOOL)doesContact:(id)a3 matchAnyParentOrGuardianInFamily:(id)a4;
+ (BOOL)doesNameOfContact:(id)a3 matchNameOfContact:(id)a4;
+ (BOOL)doesNameOfContact:(id)a3 matchNameOfFamilyMember:(id)a4;
+ (id)nameFromFammilyMember:(id)a3;
@end

@implementation CNUICoreContactMatcher

+ (id)nameFromFammilyMember:(id)a3
{
  v3 = MEMORY[0x1E695CF18];
  v4 = a3;
  v5 = objc_alloc_init(v3);
  v6 = [v4 firstName];
  [v5 setGivenName:v6];

  v7 = [v4 lastName];

  [v5 setFamilyName:v7];
  v8 = [MEMORY[0x1E695CD80] stringFromContact:v5 style:0];

  return v8;
}

+ (BOOL)doesNameOfContact:(id)a3 matchNameOfContact:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v5 givenName];
  v8 = [v6 givenName];
  if ([v7 _cn_caseInsensitiveIsEqual:v8])
  {
    v9 = [v5 familyName];
    v10 = [v6 familyName];
    v11 = [v9 _cn_caseInsensitiveIsEqual:v10];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

+ (BOOL)doesContact:(id)a3 matchAnyParentOrGuardianInFamily:(id)a4
{
  v6 = a3;
  v7 = [a4 elements];
  v8 = [v7 _cn_filter:&__block_literal_global_13];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __71__CNUICoreContactMatcher_doesContact_matchAnyParentOrGuardianInFamily___block_invoke_2;
  v11[3] = &unk_1E76E8418;
  v12 = v6;
  v13 = a1;
  v9 = v6;
  LOBYTE(v6) = [v8 _cn_any:v11];

  return v6;
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

+ (BOOL)doesNameOfContact:(id)a3 matchNameOfFamilyMember:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v5 givenName];
  v8 = [v6 firstName];
  if ([v7 _cn_caseInsensitiveIsEqual:v8])
  {
    v9 = [v5 familyName];
    v10 = [v6 lastName];
    v11 = [v9 _cn_caseInsensitiveIsEqual:v10];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

@end