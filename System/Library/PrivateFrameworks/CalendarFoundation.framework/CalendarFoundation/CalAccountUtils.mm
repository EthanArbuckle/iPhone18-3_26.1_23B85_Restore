@interface CalAccountUtils
+ (BOOL)isAccountDataSeparated:(id)separated;
+ (BOOL)isiCloudAccount:(id)account;
+ (id)_accountStore;
+ (id)personaIdentifierForAccountIdentifier:(id)identifier;
@end

@implementation CalAccountUtils

+ (id)_accountStore
{
  if (_accountStore_onceToken != -1)
  {
    +[CalAccountUtils _accountStore];
  }

  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = __Block_byref_object_copy__8;
  v9 = __Block_byref_object_dispose__8;
  v10 = 0;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __32__CalAccountUtils__accountStore__block_invoke_2;
  block[3] = &unk_1E7EC65D0;
  block[4] = &v5;
  dispatch_sync(_accountStore_queue, block);
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v2;
}

uint64_t __32__CalAccountUtils__accountStore__block_invoke()
{
  _accountStore_queue = dispatch_queue_create("CalAccountUtils", 0);

  return MEMORY[0x1EEE66BB8]();
}

void __32__CalAccountUtils__accountStore__block_invoke_2(uint64_t a1)
{
  if (!_accountStore_store)
  {
    v2 = objc_opt_new();
    v3 = _accountStore_store;
    _accountStore_store = v2;

    v4 = [CalIdleTimer alloc];
    v5 = [(CalIdleTimer *)v4 initWithQueue:_accountStore_queue timeoutInSeconds:300 leewayInSeconds:30 timeoutBlock:&__block_literal_global_5_1];
    v6 = _accountStore_idleTimer;
    _accountStore_idleTimer = v5;

    [_accountStore_idleTimer start];
  }

  [_accountStore_idleTimer poke];
  v7 = _accountStore_store;
  v8 = (*(*(a1 + 32) + 8) + 40);

  objc_storeStrong(v8, v7);
}

void __32__CalAccountUtils__accountStore__block_invoke_2()
{
  v0 = _accountStore_store;
  _accountStore_store = 0;

  v1 = _accountStore_idleTimer;
  _accountStore_idleTimer = 0;
}

+ (id)personaIdentifierForAccountIdentifier:(id)identifier
{
  if (identifier)
  {
    identifierCopy = identifier;
    _accountStore = [self _accountStore];
    v6 = [_accountStore accountWithIdentifier:identifierCopy];

    if (v6)
    {
      cal_personaIdentifier = [v6 cal_personaIdentifier];
    }

    else
    {
      cal_personaIdentifier = 0;
    }
  }

  else
  {
    cal_personaIdentifier = 0;
  }

  return cal_personaIdentifier;
}

+ (BOOL)isAccountDataSeparated:(id)separated
{
  separatedCopy = separated;
  v5 = [self personaIdentifierForAccountIdentifier:separatedCopy];
  if (v5)
  {
    v9 = 0;
    v10 = &v9;
    v11 = 0x2020000000;
    v12 = 0;
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __42__CalAccountUtils_isAccountDataSeparated___block_invoke;
    v8[3] = &unk_1E7EC7758;
    v8[4] = &v9;
    [CalPersonaUtils performBlockAsPersonaWithIdentifier:v5 block:v8];
    v6 = *(v10 + 24);
    _Block_object_dispose(&v9, 8);
  }

  else
  {
    v6 = 0;
  }

  return v6 & 1;
}

uint64_t __42__CalAccountUtils_isAccountDataSeparated___block_invoke(uint64_t a1, void *a2)
{
  result = [a2 isDataSeparatedPersona];
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

+ (BOOL)isiCloudAccount:(id)account
{
  if (!account)
  {
    return 0;
  }

  accountCopy = account;
  _accountStore = [self _accountStore];
  v6 = [_accountStore accountWithIdentifier:accountCopy];

  if (v6)
  {
    v7 = *MEMORY[0x1E69597F8];
    accountType = [v6 accountType];
    identifier = [accountType identifier];
    if ([v7 isEqualToString:identifier])
    {
      v10 = 1;
    }

    else
    {
      parentAccount = [v6 parentAccount];
      accountType2 = [parentAccount accountType];
      identifier2 = [accountType2 identifier];
      v10 = [v7 isEqualToString:identifier2];
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

@end