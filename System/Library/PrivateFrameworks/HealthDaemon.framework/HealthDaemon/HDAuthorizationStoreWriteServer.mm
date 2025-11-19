@interface HDAuthorizationStoreWriteServer
+ (BOOL)validateClient:(id)a3 error:(id *)a4;
- (void)remote_setAuthorizationStatuses:(id)a3 authorizationModes:(id)a4 forBundleIdentifier:(id)a5 options:(unint64_t)a6 completion:(id)a7;
- (void)remote_setObjectAuthorizationStatuses:(id)a3 objectType:(id)a4 bundleIdentifier:(id)a5 completion:(id)a6;
- (void)remote_setRequestedAuthorizationForBundleIdentifier:(id)a3 shareTypes:(id)a4 readTypes:(id)a5 completion:(id)a6;
@end

@implementation HDAuthorizationStoreWriteServer

+ (BOOL)validateClient:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = *MEMORY[0x277CCB888];
  if ([v5 hasRequiredEntitlement:*MEMORY[0x277CCB888] error:a4])
  {
    v7 = [v5 valueForEntitlement:v6];
    objc_opt_class();
    v8 = objc_opt_isKindOfClass() ^ 1;
  }

  else
  {
    LOBYTE(v8) = 0;
  }

  v9 = v8 | [v5 hasRequiredArrayEntitlement:v6 containing:*MEMORY[0x277CCBD68] error:a4];

  return v9 & 1;
}

- (void)remote_setAuthorizationStatuses:(id)a3 authorizationModes:(id)a4 forBundleIdentifier:(id)a5 options:(unint64_t)a6 completion:(id)a7
{
  v12 = a7;
  v13 = a5;
  v14 = a4;
  v15 = a3;
  v17 = [(HDStandardTaskServer *)self profile];
  v16 = [v17 authorizationManager];
  [v16 setAuthorizationStatuses:v15 authorizationModes:v14 forBundleIdentifier:v13 options:a6 completion:v12];
}

- (void)remote_setRequestedAuthorizationForBundleIdentifier:(id)a3 shareTypes:(id)a4 readTypes:(id)a5 completion:(id)a6
{
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v13 = a3;
  v14 = [(HDStandardTaskServer *)self profile];
  v15 = [v14 authorizationManager];

  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __119__HDAuthorizationStoreWriteServer_remote_setRequestedAuthorizationForBundleIdentifier_shareTypes_readTypes_completion___block_invoke;
  v18[3] = &unk_278625280;
  v19 = v12;
  v16 = v12;
  v17 = [v15 enqueueAuthorizationRequestForBundleIdentifier:v13 writeTypes:v10 readTypes:v11 authorizationNeededHandler:0 completion:v18];
  [v15 handleAuthorizationRequestsForBundleIdentifier:v13 promptHandler:0 completion:0];
}

- (void)remote_setObjectAuthorizationStatuses:(id)a3 objectType:(id)a4 bundleIdentifier:(id)a5 completion:(id)a6
{
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v13 = a3;
  v15 = [(HDStandardTaskServer *)self profile];
  v14 = [v15 authorizationManager];
  [v14 setObjectAuthorizationStatusContext:v13 forObjectType:v12 bundleIdentifier:v11 completion:v10];
}

@end