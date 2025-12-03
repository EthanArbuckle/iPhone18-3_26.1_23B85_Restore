@interface CNUICoreContactTypeAssessor
+ (NSArray)keysToFetch;
- (CNUICoreContactTypeAssessor)init;
- (CNUICoreContactTypeAssessor)initWithFamilyInfo:(id)info;
- (CNUICoreContactTypeAssessor)initWithFamilyInfoFuture:(id)future;
- (int64_t)estiamtedTypeOfContact:(id)contact;
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
  selfCopy = self;
  v3 = CNInitializerUnavailableException();
  objc_exception_throw(v3);
}

- (CNUICoreContactTypeAssessor)initWithFamilyInfo:(id)info
{
  infoCopy = info;
  if (!infoCopy)
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

  v6 = [MEMORY[0x1E6996720] futureWithResult:infoCopy];
  v7 = [(CNUICoreContactTypeAssessor *)self initWithFamilyInfoFuture:v6];

  return v7;
}

- (CNUICoreContactTypeAssessor)initWithFamilyInfoFuture:(id)future
{
  futureCopy = future;
  if (!futureCopy)
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
    objc_storeStrong(&v7->_familyInfoFuture, future);
    v9 = v8;
  }

  return v8;
}

- (int64_t)estiamtedTypeOfContact:(id)contact
{
  contactCopy = contact;
  familyInfoFuture = [(CNUICoreContactTypeAssessor *)self familyInfoFuture];
  v6 = [familyInfoFuture result:0];

  if (v6)
  {
    meContact = [v6 meContact];
    v8 = [CNUICoreContactMatcher doesContact:contactCopy matchContact:meContact];

    v9 = [CNUICoreContactMatcher doesContact:contactCopy matchAnyParentOrGuardianInFamily:v6];
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