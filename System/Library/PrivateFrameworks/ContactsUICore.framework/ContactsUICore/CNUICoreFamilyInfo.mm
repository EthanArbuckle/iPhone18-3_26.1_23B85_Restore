@interface CNUICoreFamilyInfo
- (CNUICoreFamilyInfo)init;
- (CNUICoreFamilyInfo)initWithMeContact:(id)contact elements:(id)elements;
- (id)description;
@end

@implementation CNUICoreFamilyInfo

- (CNUICoreFamilyInfo)init
{
  selfCopy = self;
  v3 = CNInitializerUnavailableException();
  objc_exception_throw(v3);
}

- (CNUICoreFamilyInfo)initWithMeContact:(id)contact elements:(id)elements
{
  contactCopy = contact;
  elementsCopy = elements;
  if (!elementsCopy)
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
    objc_storeStrong(&v10->_meContact, contact);
    objc_storeStrong(&v11->_elements, elements);
    v12 = v11;
  }

  return v11;
}

- (id)description
{
  v3 = [MEMORY[0x1E69966B0] descriptionBuilderWithObject:self];
  meContact = [(CNUICoreFamilyInfo *)self meContact];
  v5 = [v3 appendObject:meContact withName:@"meContact"];

  elements = [(CNUICoreFamilyInfo *)self elements];
  v7 = [v3 appendObject:elements withName:@"elements"];

  build = [v3 build];

  return build;
}

@end