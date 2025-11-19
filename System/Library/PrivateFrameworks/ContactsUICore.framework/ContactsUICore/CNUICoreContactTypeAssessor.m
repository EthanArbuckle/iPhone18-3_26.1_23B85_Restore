@interface CNUICoreContactTypeAssessor
+ (NSArray)keysToFetch;
- (CNUICoreContactTypeAssessor)init;
- (CNUICoreContactTypeAssessor)initWithFamilyInfo:(id)a3;
- (CNUICoreContactTypeAssessor)initWithFamilyInfoFuture:(id)a3;
- (int64_t)estiamtedTypeOfContact:(id)a3;
@end

@implementation CNUICoreContactTypeAssessor

+ (NSArray)keysToFetch
{
  v5[5] = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E695CD80] descriptorForRequiredKeysForStyle:{+[CNUICoreFamilyMemberContactsModelRetriever contactFormatterStyle](CNUICoreFamilyMemberContactsModelRetriever, "contactFormatterStyle", *MEMORY[0x1E695C240], *MEMORY[0x1E695C230], *MEMORY[0x1E695C330], *MEMORY[0x1E695C200])}];
  v5[4] = v2;
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:5];

  return v3;
}

- (CNUICoreContactTypeAssessor)init
{
  v2 = self;
  v3 = CNInitializerUnavailableException();
  objc_exception_throw(v3);
}

- (CNUICoreContactTypeAssessor)initWithFamilyInfo:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    if (CNGuardOSLog_cn_once_token_0_17 != -1)
    {
      [CNUICoreContactTypeAssessor initWithFamilyInfo:];
    }

    v5 = CNGuardOSLog_cn_once_object_0_17;
    if (os_log_type_enabled(CNGuardOSLog_cn_once_object_0_17, OS_LOG_TYPE_FAULT))
    {
      [CNUICoreContactTypeAssessor initWithFamilyInfo:v5];
    }
  }

  v6 = [MEMORY[0x1E6996720] futureWithResult:v4];
  v7 = [(CNUICoreContactTypeAssessor *)self initWithFamilyInfoFuture:v6];

  return v7;
}

- (CNUICoreContactTypeAssessor)initWithFamilyInfoFuture:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    if (CNGuardOSLog_cn_once_token_0_17 != -1)
    {
      [CNUICoreContactTypeAssessor initWithFamilyInfo:];
    }

    v6 = CNGuardOSLog_cn_once_object_0_17;
    if (os_log_type_enabled(CNGuardOSLog_cn_once_object_0_17, OS_LOG_TYPE_FAULT))
    {
      [CNUICoreContactTypeAssessor initWithFamilyInfoFuture:v6];
    }
  }

  v11.receiver = self;
  v11.super_class = CNUICoreContactTypeAssessor;
  v7 = [(CNUICoreContactTypeAssessor *)&v11 init];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(&v7->_familyInfoFuture, a3);
    v9 = v8;
  }

  return v8;
}

- (int64_t)estiamtedTypeOfContact:(id)a3
{
  v4 = a3;
  v5 = [(CNUICoreContactTypeAssessor *)self familyInfoFuture];
  v6 = [v5 result:0];

  if (v6)
  {
    v7 = [v6 meContact];
    v8 = [CNUICoreContactMatcher doesContact:v4 matchContact:v7];

    v9 = [CNUICoreContactMatcher doesContact:v4 matchAnyParentOrGuardianInFamily:v6];
    if (v8)
    {
      v10 = 2;
    }

    else
    {
      v10 = v9;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

@end