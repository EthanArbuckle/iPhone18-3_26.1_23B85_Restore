@interface CNFamilyCircleConfigurationUpdateTask
+ (id)os_log;
- (CNFamilyCircleConfigurationUpdateTask)init;
- (CNFamilyCircleConfigurationUpdateTask)initWithAccountSource:(id)source accountSink:(id)sink accountStore:(id)store;
- (CNFamilyCircleConfigurationUpdateTask)initWithName:(id)name;
- (id)description;
- (id)run:(id *)run;
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
  defaultStore = [MEMORY[0x1E6959A48] defaultStore];
  v4 = [(CNFamilyCircleConfigurationUpdateTask *)self initWithAccountSource:0 accountSink:0 accountStore:defaultStore];

  return v4;
}

- (CNFamilyCircleConfigurationUpdateTask)initWithName:(id)name
{
  v3 = [(CNFamilyCircleConfigurationUpdateTask *)self init];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  return v4;
}

- (CNFamilyCircleConfigurationUpdateTask)initWithAccountSource:(id)source accountSink:(id)sink accountStore:(id)store
{
  sourceCopy = source;
  sinkCopy = sink;
  storeCopy = store;
  v20.receiver = self;
  v20.super_class = CNFamilyCircleConfigurationUpdateTask;
  v12 = [(CNTask *)&v20 initWithName:@"CNFamilyCircleConfigurationUpdateTask"];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_accountSource, source);
    objc_storeStrong(&v13->_accountSink, sink);
    objc_storeStrong(&v13->_accountStore, store);
    delegateAccounts = v13->_delegateAccounts;
    v13->_delegateAccounts = 0;

    null = [MEMORY[0x1E695DFB0] null];
    v16 = [CNResult successWithValue:null];
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
  build = [v3 build];

  return build;
}

- (id)run:(id *)run
{
  [(CNFamilyCircleConfigurationUpdateTask *)self loadDefaultSourceIfNecessary];
  [(CNFamilyCircleConfigurationUpdateTask *)self loadDelegateAccountsFromSource];
  [(CNFamilyCircleConfigurationUpdateTask *)self loadDefaultSinkIfNecessary];
  [(CNFamilyCircleConfigurationUpdateTask *)self updateDelegateAccounts];
  v5 = self->_result;
  value = [(CNResult *)v5 value];

  if (value)
  {
    value2 = [(CNResult *)v5 value];
  }

  else
  {
    error = [(CNResult *)v5 error];
    if (run)
    {
      error = error;
      *run = error;
    }

    value2 = 0;
  }

  return value2;
}

- (void)loadDefaultSourceIfNecessary
{
  v8 = *MEMORY[0x1E69E9840];
  userInfo = [self userInfo];
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);

  v7 = *MEMORY[0x1E69E9840];
}

- (void)loadDelegateAccountsFromSource
{
  delegateAccounts = [(CNDelegateAccountSource *)self->_accountSource delegateAccounts];
  v3 = [delegateAccounts copy];
  delegateAccounts = self->_delegateAccounts;
  self->_delegateAccounts = v3;
}

- (void)loadDefaultSinkIfNecessary
{
  v10 = *MEMORY[0x1E69E9840];
  accountSource = [self accountSource];
  primaryAccount = [accountSource primaryAccount];
  appleID = [primaryAccount appleID];
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0xCu);

  v8 = *MEMORY[0x1E69E9840];
}

- (void)updateDelegateAccounts
{
  v8 = *MEMORY[0x1E69E9840];
  userInfo = [self userInfo];
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);

  v7 = *MEMORY[0x1E69E9840];
}

@end