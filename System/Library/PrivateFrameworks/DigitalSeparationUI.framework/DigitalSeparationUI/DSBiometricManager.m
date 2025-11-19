@interface DSBiometricManager
+ (id)pearlIdentities;
+ (unint64_t)pearlIdentityCount;
+ (unint64_t)touchIDCount;
+ (void)deleteAllTouchIDs;
+ (void)pearlIdentities;
- (CIDVUIBiometricBindingFlowManager)_biometricBindingFlowManager;
- (DSBiometricManager)initWithContext:(id)a3;
- (void)deleteAllPearlIdentities;
- (void)deleteGlobalAuthACL;
@end

@implementation DSBiometricManager

- (DSBiometricManager)initWithContext:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = DSBiometricManager;
  v5 = [(DSBiometricManager *)&v9 init];
  if (v5)
  {
    v6 = os_log_create("com.apple.DigitalSeparation", "DSBiometricManager");
    v7 = DSLogBiometrics_0;
    DSLogBiometrics_0 = v6;

    [(DSBiometricManager *)v5 setAuthContext:v4];
  }

  return v5;
}

+ (id)pearlIdentities
{
  if ([a1 supportsPearl])
  {
    v2 = MEMORY[0x277CF1BA0];
    v3 = [MEMORY[0x277CF1BB0] deviceDescriptorForType:2];
    v11 = 0;
    v4 = [v2 deviceWithDescriptor:v3 error:&v11];
    v5 = v11;

    if (v4)
    {
      v6 = v5 == 0;
    }

    else
    {
      v6 = 0;
    }

    if (v6)
    {
      v10 = 0;
      v8 = [v4 identitiesForUser:getuid() error:&v10];
      v5 = v10;
    }

    else
    {
      v7 = DSLogBiometrics_0;
      if (os_log_type_enabled(DSLogBiometrics_0, OS_LOG_TYPE_ERROR))
      {
        +[(DSBiometricManager *)v5];
      }

      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

+ (unint64_t)pearlIdentityCount
{
  v2 = [a1 pearlIdentities];
  v3 = [v2 count];

  return v3;
}

- (void)deleteAllPearlIdentities
{
  v18 = *MEMORY[0x277D85DE8];
  [(DSBiometricManager *)self deleteGlobalAuthACL];
  v3 = [MEMORY[0x277D3F928] sharedInstance];
  v4 = [v3 identitiesForIdentityType:2];

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = v4;
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      v9 = 0;
      do
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v13 + 1) + 8 * v9);
        v11 = [MEMORY[0x277D3F928] sharedInstance];
        [v11 removeIdentity:v10];

        ++v9;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  if (_os_feature_enabled_impl())
  {
    [(DSBiometricManager *)self configurePeriocularEnabled:0];
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)deleteGlobalAuthACL
{
  objc_initWeak(&location, self);
  v2 = dispatch_get_global_queue(0, 0);
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __41__DSBiometricManager_deleteGlobalAuthACL__block_invoke;
  v3[3] = &unk_278F75230;
  objc_copyWeak(&v4, &location);
  dispatch_async(v2, v3);

  objc_destroyWeak(&v4);
  objc_destroyWeak(&location);
}

void __41__DSBiometricManager_deleteGlobalAuthACL__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained _biometricBindingFlowManager];
  [v1 deleteBoundACLWithCompletion:&__block_literal_global_14];
}

void __41__DSBiometricManager_deleteGlobalAuthACL__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  if (v2)
  {
    v3 = DSLogBiometrics_0;
    if (os_log_type_enabled(DSLogBiometrics_0, OS_LOG_TYPE_ERROR))
    {
      __41__DSBiometricManager_deleteGlobalAuthACL__block_invoke_2_cold_1(v2, v3);
    }
  }
}

- (CIDVUIBiometricBindingFlowManager)_biometricBindingFlowManager
{
  biometricBindingFlowManager = self->__biometricBindingFlowManager;
  if (!biometricBindingFlowManager)
  {
    v10 = 0;
    v11 = &v10;
    v12 = 0x2050000000;
    v4 = getCIDVUIBiometricBindingFlowManagerClass_softClass;
    v13 = getCIDVUIBiometricBindingFlowManagerClass_softClass;
    if (!getCIDVUIBiometricBindingFlowManagerClass_softClass)
    {
      v9[0] = MEMORY[0x277D85DD0];
      v9[1] = 3221225472;
      v9[2] = __getCIDVUIBiometricBindingFlowManagerClass_block_invoke;
      v9[3] = &unk_278F75430;
      v9[4] = &v10;
      __getCIDVUIBiometricBindingFlowManagerClass_block_invoke(v9);
      v4 = v11[3];
    }

    v5 = v4;
    _Block_object_dispose(&v10, 8);
    v6 = objc_alloc_init(v4);
    v7 = self->__biometricBindingFlowManager;
    self->__biometricBindingFlowManager = v6;

    biometricBindingFlowManager = self->__biometricBindingFlowManager;
  }

  return biometricBindingFlowManager;
}

+ (unint64_t)touchIDCount
{
  v2 = [MEMORY[0x277D3F970] identities];
  v3 = [v2 count];

  return v3;
}

+ (void)deleteAllTouchIDs
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277D3F970] identities];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v9;
    do
    {
      v6 = 0;
      do
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [MEMORY[0x277D3F970] removeIdentity:*(*(&v8 + 1) + 8 * v6++)];
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }

  v7 = *MEMORY[0x277D85DE8];
}

+ (void)pearlIdentities
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_248C7E000, a2, OS_LOG_TYPE_ERROR, "DS Face ID: Failed to fetch BKDevice: %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

void __41__DSBiometricManager_deleteGlobalAuthACL__block_invoke_2_cold_1(uint64_t a1, NSObject *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = 136315394;
  v4 = "[DSBiometricManager deleteGlobalAuthACL]_block_invoke_2";
  v5 = 2114;
  v6 = a1;
  _os_log_error_impl(&dword_248C7E000, a2, OS_LOG_TYPE_ERROR, "%s: Encountered error '%{public}@'", &v3, 0x16u);
  v2 = *MEMORY[0x277D85DE8];
}

@end