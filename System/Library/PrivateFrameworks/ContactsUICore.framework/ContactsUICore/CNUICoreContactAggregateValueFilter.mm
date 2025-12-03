@interface CNUICoreContactAggregateValueFilter
- (CNUICoreContactAggregateValueFilter)init;
- (CNUICoreContactAggregateValueFilter)initWithValueFilters:(id)filters;
- (NSString)description;
- (id)contactByFilteringOutPropertyValueOfContact:(id)contact;
- (void)filterPropertyValuesFromContact:(id)contact;
@end

@implementation CNUICoreContactAggregateValueFilter

- (CNUICoreContactAggregateValueFilter)init
{
  selfCopy = self;
  v3 = CNInitializerUnavailableException();
  objc_exception_throw(v3);
}

- (CNUICoreContactAggregateValueFilter)initWithValueFilters:(id)filters
{
  filtersCopy = filters;
  if (!filtersCopy)
  {
    if (CNGuardOSLog_cn_once_token_0 != -1)
    {
      [CNUICoreContactAggregateValueFilter initWithValueFilters:];
    }

    v6 = CNGuardOSLog_cn_once_object_0;
    if (os_log_type_enabled(CNGuardOSLog_cn_once_object_0, OS_LOG_TYPE_FAULT))
    {
      [CNUICoreContactAggregateValueFilter initWithValueFilters:v6];
    }
  }

  v11.receiver = self;
  v11.super_class = CNUICoreContactAggregateValueFilter;
  v7 = [(CNUICoreContactAggregateValueFilter *)&v11 init];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(&v7->_valueFilters, filters);
    v9 = v8;
  }

  return v8;
}

- (id)contactByFilteringOutPropertyValueOfContact:(id)contact
{
  contactCopy = contact;
  if (!contactCopy)
  {
    if (CNGuardOSLog_cn_once_token_0 != -1)
    {
      [CNUICoreContactAggregateValueFilter initWithValueFilters:];
    }

    v5 = CNGuardOSLog_cn_once_object_0;
    if (os_log_type_enabled(CNGuardOSLog_cn_once_object_0, OS_LOG_TYPE_FAULT))
    {
      [CNUICoreContactAggregateValueFilter contactByFilteringOutPropertyValueOfContact:v5];
    }
  }

  v6 = [contactCopy mutableCopy];
  [(CNUICoreContactAggregateValueFilter *)self filterPropertyValuesFromContact:v6];

  return v6;
}

- (void)filterPropertyValuesFromContact:(id)contact
{
  contactCopy = contact;
  valueFilters = [(CNUICoreContactAggregateValueFilter *)self valueFilters];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __71__CNUICoreContactAggregateValueFilter_filterPropertyValuesFromContact___block_invoke;
  v7[3] = &unk_1E76E7828;
  v8 = contactCopy;
  v6 = contactCopy;
  [valueFilters _cn_each:v7];
}

- (NSString)description
{
  v3 = [MEMORY[0x1E69966B0] descriptionBuilderWithObject:self];
  valueFilters = [(CNUICoreContactAggregateValueFilter *)self valueFilters];
  v5 = [v3 appendName:@"valueFilters" object:valueFilters];

  build = [v3 build];

  return build;
}

@end