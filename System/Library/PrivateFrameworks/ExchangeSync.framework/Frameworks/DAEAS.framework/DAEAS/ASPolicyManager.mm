@interface ASPolicyManager
- (ASPolicyManager)initWithAccount:(id)account;
- (ASPolicyManagerDelegate)delegate;
- (id)currentPolicyKey;
@end

@implementation ASPolicyManager

- (ASPolicyManager)initWithAccount:(id)account
{
  v5 = objc_opt_class();
  if (v5 == objc_opt_class())
  {
    [(ASPolicyManager *)a2 initWithAccount:?];
  }

  v7.receiver = self;
  v7.super_class = ASPolicyManager;
  return [(ASPolicyManager *)&v7 init];
}

- (id)currentPolicyKey
{
  v3 = [ASPerAccountPolicyData alloc];
  delegate = [(ASPolicyManager *)self delegate];
  accountPersistentUUID = [delegate accountPersistentUUID];
  v6 = [(ASPerAccountPolicyData *)v3 initWithAccountPersistentUUID:accountPersistentUUID];

  policyKey = [(ASPerAccountPolicyData *)v6 policyKey];
  v8 = policyKey;
  if (policyKey)
  {
    v9 = policyKey;
  }

  else
  {
    v9 = @"0";
  }

  v10 = v9;

  return v9;
}

- (ASPolicyManagerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)initWithAccount:(const char *)a1 .cold.1(const char *a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"ASPolicyManager.m" lineNumber:16 description:{@"%s should never be called on ASPolicyManager, but rather, on one of its subclasses", sel_getName(a1)}];
}

@end