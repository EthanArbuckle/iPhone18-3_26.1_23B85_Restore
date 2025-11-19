@interface CNFamilyCircleConfigurationUpdateTask
+ (id)os_log;
- (CNFamilyCircleConfigurationUpdateTask)init;
- (CNFamilyCircleConfigurationUpdateTask)initWithAccountSource:(id)a3 accountSink:(id)a4 accountStore:(id)a5;
- (CNFamilyCircleConfigurationUpdateTask)initWithName:(id)a3;
- (id)description;
- (id)run:(id *)a3;
- (void)loadDefaultSinkIfNecessary;
- (void)loadDefaultSourceIfNecessary;
- (void)loadDelegateAccountsFromSource;
- (void)updateDelegateAccounts;
@end

@implementation CNFamilyCircleConfigurationUpdateTask

+ (id)os_log
{
  if (os_log_cn_once_token_1_6 != -1)
  {
    +[CNFamilyCircleConfigurationUpdateTask os_log];
  }

  v3 = os_log_cn_once_object_1_6;

  return v3;
}

uint64_t __47__CNFamilyCircleConfigurationUpdateTask_os_log__block_invoke()
{
  v0 = os_log_create("com.apple.contacts", "family-circle-config-update-task");
  v1 = os_log_cn_once_object_1_6;
  os_log_cn_once_object_1_6 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

- (CNFamilyCircleConfigurationUpdateTask)init
{
  v3 = [MEMORY[0x1E6959A48] defaultStore];
  v4 = [(CNFamilyCircleConfigurationUpdateTask *)self initWithAccountSource:0 accountSink:0 accountStore:v3];

  return v4;
}

- (CNFamilyCircleConfigurationUpdateTask)initWithName:(id)a3
{
  v3 = [(CNFamilyCircleConfigurationUpdateTask *)self init];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  return v4;
}

- (CNFamilyCircleConfigurationUpdateTask)initWithAccountSource:(id)a3 accountSink:(id)a4 accountStore:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v20.receiver = self;
  v20.super_class = CNFamilyCircleConfigurationUpdateTask;
  v12 = [(CNTask *)&v20 initWithName:@"CNFamilyCircleConfigurationUpdateTask"];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_accountSource, a3);
    objc_storeStrong(&v13->_accountSink, a4);
    objc_storeStrong(&v13->_accountStore, a5);
    delegateAccounts = v13->_delegateAccounts;
    v13->_delegateAccounts = 0;

    v15 = [MEMORY[0x1E695DFB0] null];
    v16 = [CNResult successWithValue:v15];
    v17 = v13->_result;
    v13->_result = v16;

    v18 = v13;
  }

  return v13;
}

- (id)description
{
  v3 = [CNDescriptionBuilder descriptionBuilderWithObject:self];
  v4 = [v3 appendName:@"accountSource" object:self->_accountSource];
  v5 = [v3 appendName:@"accountSink" object:self->_accountSink];
  v6 = [v3 build];

  return v6;
}

- (id)run:(id *)a3
{
  [(CNFamilyCircleConfigurationUpdateTask *)self loadDefaultSourceIfNecessary];
  [(CNFamilyCircleConfigurationUpdateTask *)self loadDelegateAccountsFromSource];
  [(CNFamilyCircleConfigurationUpdateTask *)self loadDefaultSinkIfNecessary];
  [(CNFamilyCircleConfigurationUpdateTask *)self updateDelegateAccounts];
  v5 = self->_result;
  v6 = [(CNResult *)v5 value];

  if (v6)
  {
    v7 = [(CNResult *)v5 value];
  }

  else
  {
    v8 = [(CNResult *)v5 error];
    if (a3)
    {
      v8 = v8;
      *a3 = v8;
    }

    v7 = 0;
  }

  return v7;
}

- (void)loadDefaultSourceIfNecessary
{
  v8 = *MEMORY[0x1E69E9840];
  v1 = [a1 userInfo];
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);

  v7 = *MEMORY[0x1E69E9840];
}

- (void)loadDelegateAccountsFromSource
{
  v5 = [(CNDelegateAccountSource *)self->_accountSource delegateAccounts];
  v3 = [v5 copy];
  delegateAccounts = self->_delegateAccounts;
  self->_delegateAccounts = v3;
}

- (void)loadDefaultSinkIfNecessary
{
  v10 = *MEMORY[0x1E69E9840];
  v1 = [a1 accountSource];
  v2 = [v1 primaryAccount];
  v9 = [v2 appleID];
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0xCu);

  v8 = *MEMORY[0x1E69E9840];
}

- (void)updateDelegateAccounts
{
  v8 = *MEMORY[0x1E69E9840];
  v1 = [a1 userInfo];
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);

  v7 = *MEMORY[0x1E69E9840];
}

@end