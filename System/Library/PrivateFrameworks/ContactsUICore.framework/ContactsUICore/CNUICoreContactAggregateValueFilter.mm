@interface CNUICoreContactAggregateValueFilter
- (CNUICoreContactAggregateValueFilter)init;
- (CNUICoreContactAggregateValueFilter)initWithValueFilters:(id)a3;
- (NSString)description;
- (id)contactByFilteringOutPropertyValueOfContact:(id)a3;
- (void)filterPropertyValuesFromContact:(id)a3;
@end

@implementation CNUICoreContactAggregateValueFilter

- (CNUICoreContactAggregateValueFilter)init
{
  v2 = self;
  v3 = CNInitializerUnavailableException();
  objc_exception_throw(v3);
}

- (CNUICoreContactAggregateValueFilter)initWithValueFilters:(id)a3
{
  v5 = a3;
  if (!v5)
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
    objc_storeStrong(&v7->_valueFilters, a3);
    v9 = v8;
  }

  return v8;
}

- (id)contactByFilteringOutPropertyValueOfContact:(id)a3
{
  v4 = a3;
  if (!v4)
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

  v6 = [v4 mutableCopy];
  [(CNUICoreContactAggregateValueFilter *)self filterPropertyValuesFromContact:v6];

  return v6;
}

- (void)filterPropertyValuesFromContact:(id)a3
{
  v4 = a3;
  v5 = [(CNUICoreContactAggregateValueFilter *)self valueFilters];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __71__CNUICoreContactAggregateValueFilter_filterPropertyValuesFromContact___block_invoke;
  v7[3] = &unk_1E76E7828;
  v8 = v4;
  v6 = v4;
  [v5 _cn_each:v7];
}

- (NSString)description
{
  v3 = [MEMORY[0x1E69966B0] descriptionBuilderWithObject:self];
  v4 = [(CNUICoreContactAggregateValueFilter *)self valueFilters];
  v5 = [v3 appendName:@"valueFilters" object:v4];

  v6 = [v3 build];

  return v6;
}

@end