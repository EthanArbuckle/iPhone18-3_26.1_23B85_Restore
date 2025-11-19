@interface CNFoundationUserDefaults
+ (id)makeRegisteredDefaults;
+ (id)registeredDefaults;
+ (id)sharedDefaults;
- (CNFoundationUserDefaults)init;
- (NSDictionary)filteredAccountsAndContainers;
- (id)countryCode;
- (unint64_t)newContactNameOrder;
- (unint64_t)sortOrder;
- (void)setFilteredAccountsAndContainers:(id)a3;
@end

@implementation CNFoundationUserDefaults

+ (id)makeRegisteredDefaults
{
  v2 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v3 = [v2 pathForResource:@"LocalizedDefaults" ofType:@"plist"];

  v4 = [MEMORY[0x1E695DF20] dictionaryWithContentsOfFile:v3];

  return v4;
}

+ (id)registeredDefaults
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __46__CNFoundationUserDefaults_registeredDefaults__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (registeredDefaults_cn_once_token_2 != -1)
  {
    dispatch_once(&registeredDefaults_cn_once_token_2, block);
  }

  v2 = registeredDefaults_cn_once_object_2;

  return v2;
}

void __46__CNFoundationUserDefaults_registeredDefaults__block_invoke(uint64_t a1)
{
  v3 = [*(a1 + 32) makeRegisteredDefaults];
  v1 = [v3 copy];
  v2 = registeredDefaults_cn_once_object_2;
  registeredDefaults_cn_once_object_2 = v1;
}

+ (id)sharedDefaults
{
  if (sharedDefaults_cn_once_token_3 != -1)
  {
    +[CNFoundationUserDefaults sharedDefaults];
  }

  v3 = sharedDefaults_cn_once_object_3;

  return v3;
}

uint64_t __42__CNFoundationUserDefaults_sharedDefaults__block_invoke()
{
  v0 = objc_alloc_init(CNFoundationUserDefaults);
  v1 = sharedDefaults_cn_once_object_3;
  sharedDefaults_cn_once_object_3 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

- (CNFoundationUserDefaults)init
{
  v9.receiver = self;
  v9.super_class = CNFoundationUserDefaults;
  v2 = [(CNFoundationUserDefaults *)&v9 init];
  if (v2)
  {
    v3 = [CNUserDefaults preferencesWithApplicationID:@"com.apple.AddressBook"];
    userDefaults = v2->_userDefaults;
    v2->_userDefaults = v3;

    v5 = v2->_userDefaults;
    v6 = [objc_opt_class() registeredDefaults];
    [(CNUserDefaults *)v5 registerDefaults:v6];

    v7 = v2;
  }

  return v2;
}

- (unint64_t)newContactNameOrder
{
  [MEMORY[0x1E695DF30] raise:@"MethodNotImplemented" format:{@"You shouldn't have hit that, CNFoundationUserDefaults on iOS shouldn't be used directly, use CNContactsUserDefaults instead"}];
  v3 = [(CNUserDefaults *)self->_userDefaults integerForKey:@"ABNewContactNameDisplay"];
  if (v3 == 2)
  {
    return 1;
  }

  if (v3 == 1)
  {
    return 0;
  }

  return [(CNFoundationUserDefaults *)self nameOrder];
}

- (unint64_t)sortOrder
{
  [MEMORY[0x1E695DF30] raise:@"MethodNotImplemented" format:{@"You shouldn't have hit that, CNFoundationUserDefaults on iOS shouldn't be used directly, use CNContactsUserDefaults instead"}];
  v3 = [(CNUserDefaults *)self->_userDefaults objectForKey:@"ABNameSortingFormat"];
  v4 = [v3 rangeOfString:@"firstName" options:1];
  v5 = v4 >= [v3 rangeOfString:@"lastName" options:1];

  return v5;
}

- (id)countryCode
{
  [MEMORY[0x1E695DF30] raise:@"MethodNotImplemented" format:{@"You shouldn't have hit that, CNFoundationUserDefaults on iOS shouldn't be used directly, use CNContactsUserDefaults instead"}];
  userDefaults = self->_userDefaults;

  return [(CNUserDefaults *)userDefaults objectForKey:@"ABDefaultAddressCountryCode"];
}

- (NSDictionary)filteredAccountsAndContainers
{
  v2 = [(CNFoundationUserDefaults *)self userDefaults];
  v3 = [v2 objectForKey:@"CNDefaultsFilteredAccountsAndContainersKey"];

  return v3;
}

- (void)setFilteredAccountsAndContainers:(id)a3
{
  v4 = a3;
  v5 = [(CNFoundationUserDefaults *)self userDefaults];
  [v5 setObject:v4 forKey:@"CNDefaultsFilteredAccountsAndContainersKey"];
}

@end