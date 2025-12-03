@interface CNUICoreContactNicknameValueFilter
- (NSString)description;
- (id)contactByFilteringOutPropertyValueOfContact:(id)contact;
@end

@implementation CNUICoreContactNicknameValueFilter

- (id)contactByFilteringOutPropertyValueOfContact:(id)contact
{
  contactCopy = contact;
  if (!contactCopy)
  {
    if (CNGuardOSLog_cn_once_token_0_18 != -1)
    {
      [CNUICoreContactNicknameValueFilter contactByFilteringOutPropertyValueOfContact:];
    }

    v5 = CNGuardOSLog_cn_once_object_0_18;
    if (os_log_type_enabled(CNGuardOSLog_cn_once_object_0_18, OS_LOG_TYPE_FAULT))
    {
      [CNUICoreContactAggregateValueFilter contactByFilteringOutPropertyValueOfContact:v5];
    }
  }

  v6 = [contactCopy mutableCopy];
  [(CNUICoreContactNicknameValueFilter *)self filterPropertyValuesFromContact:v6];

  return v6;
}

- (NSString)description
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

@end