@interface CNUICoreFamilyInfo
- (CNUICoreFamilyInfo)init;
- (CNUICoreFamilyInfo)initWithMeContact:(id)a3 elements:(id)a4;
- (id)description;
@end

@implementation CNUICoreFamilyInfo

- (CNUICoreFamilyInfo)init
{
  v2 = self;
  v3 = CNInitializerUnavailableException();
  objc_exception_throw(v3);
}

- (CNUICoreFamilyInfo)initWithMeContact:(id)a3 elements:(id)a4
{
  v7 = a3;
  v8 = a4;
  if (!v8)
  {
    if (CNGuardOSLog_cn_once_token_0_21 != -1)
    {
      [CNUICoreFamilyInfo initWithMeContact:elements:];
    }

    v9 = CNGuardOSLog_cn_once_object_0_21;
    if (os_log_type_enabled(CNGuardOSLog_cn_once_object_0_21, OS_LOG_TYPE_FAULT))
    {
      [CNUICoreFamilyInfo initWithMeContact:v9 elements:?];
    }
  }

  v14.receiver = self;
  v14.super_class = CNUICoreFamilyInfo;
  v10 = [(CNUICoreFamilyInfo *)&v14 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_meContact, a3);
    objc_storeStrong(&v11->_elements, a4);
    v12 = v11;
  }

  return v11;
}

- (id)description
{
  v3 = [MEMORY[0x1E69966B0] descriptionBuilderWithObject:self];
  v4 = [(CNUICoreFamilyInfo *)self meContact];
  v5 = [v3 appendObject:v4 withName:@"meContact"];

  v6 = [(CNUICoreFamilyInfo *)self elements];
  v7 = [v3 appendObject:v6 withName:@"elements"];

  v8 = [v3 build];

  return v8;
}

@end