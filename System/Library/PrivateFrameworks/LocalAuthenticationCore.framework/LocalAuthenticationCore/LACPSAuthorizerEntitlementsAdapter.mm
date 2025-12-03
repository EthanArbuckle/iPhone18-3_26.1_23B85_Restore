@interface LACPSAuthorizerEntitlementsAdapter
- (LACPSAuthorizerEntitlementsAdapter)initWithRequiredEntitlements:(id)entitlements;
- (void)authorizeWithCompletion:(id)completion;
@end

@implementation LACPSAuthorizerEntitlementsAdapter

- (LACPSAuthorizerEntitlementsAdapter)initWithRequiredEntitlements:(id)entitlements
{
  entitlementsCopy = entitlements;
  v11.receiver = self;
  v11.super_class = LACPSAuthorizerEntitlementsAdapter;
  v6 = [(LACPSAuthorizerEntitlementsAdapter *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_requiredEntitlements, entitlements);
    v8 = objc_alloc_init(LACEntitlementsChecker);
    entitlementsChecker = v7->_entitlementsChecker;
    v7->_entitlementsChecker = v8;
  }

  return v7;
}

- (void)authorizeWithCompletion:(id)completion
{
  completionCopy = completion;
  if ([(NSArray *)self->_requiredEntitlements count])
  {
    entitlementsChecker = self->_entitlementsChecker;
    v6 = [(NSArray *)self->_requiredEntitlements copy];
    v10 = 0;
    LOBYTE(entitlementsChecker) = [(LACEntitlementsChecker *)entitlementsChecker checkHasEntitlements:v6 error:&v10];
    v7 = v10;

    v8 = 0;
    if ((entitlementsChecker & 1) == 0)
    {
      v9 = LACLogPasscodeService();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        [(LACPSAuthorizerEntitlementsAdapter *)v7 authorizeWithCompletion:v9];
      }

      v8 = v7;
    }

    (completionCopy)[2](completionCopy, v8);
  }

  else
  {
    completionCopy[2](completionCopy, 0);
  }
}

- (void)authorizeWithCompletion:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138543362;
  v4 = a1;
  _os_log_error_impl(&dword_1B0233000, a2, OS_LOG_TYPE_ERROR, "Authorization failed: %{public}@", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

@end