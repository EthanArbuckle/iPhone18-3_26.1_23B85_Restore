@interface FCBundleEntitlementsProvider
- (FCBundleEntitlementsProvider)initWithConfigurationManager:(id)manager entitlementService:(id)service;
- (void)fetchEntitlementsWithIgnoreCache:(BOOL)cache completion:(id)completion;
@end

@implementation FCBundleEntitlementsProvider

- (FCBundleEntitlementsProvider)initWithConfigurationManager:(id)manager entitlementService:(id)service
{
  managerCopy = manager;
  serviceCopy = service;
  v12.receiver = self;
  v12.super_class = FCBundleEntitlementsProvider;
  v9 = [(FCBundleEntitlementsProvider *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_configurationManager, manager);
    objc_storeStrong(&v10->_entitlementService, service);
  }

  return v10;
}

- (void)fetchEntitlementsWithIgnoreCache:(BOOL)cache completion:(id)completion
{
  completionCopy = completion;
  objc_initWeak(&location, self);
  configurationManager = [(FCBundleEntitlementsProvider *)self configurationManager];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __76__FCBundleEntitlementsProvider_fetchEntitlementsWithIgnoreCache_completion___block_invoke;
  v9[3] = &unk_1E7C43698;
  objc_copyWeak(&v11, &location);
  v8 = completionCopy;
  v10 = v8;
  cacheCopy = cache;
  FCCoreConfigurationFetch(configurationManager, v9);

  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);
}

void __76__FCBundleEntitlementsProvider_fetchEntitlementsWithIgnoreCache_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __76__FCBundleEntitlementsProvider_fetchEntitlementsWithIgnoreCache_completion___block_invoke_2;
  v6[3] = &unk_1E7C43670;
  v7 = v3;
  v8 = *(a1 + 32);
  v9 = *(a1 + 48);
  v5 = v3;
  FCPerformIfNonNil(WeakRetained, v6);
}

void __76__FCBundleEntitlementsProvider_fetchEntitlementsWithIgnoreCache_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v40 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (NFInternalBuild())
  {
    v4 = NewsCoreUserDefaults();
    v5 = [v4 BOOLForKey:@"running_ui_automation"];

    if (v5)
    {
      v6 = [*(a1 + 32) paidBundleConfig];
      v7 = [v6 offeredBundlePurchaseIDs];
      v8 = [v7 firstObject];

      v9 = NewsCoreUserDefaults();
      v10 = [v9 integerForKey:@"simulate_bundle_subscription_state"];

      v11 = NewsCoreUserDefaults();
      v12 = [v11 BOOLForKey:@"simulate_bundle_subscription_is_family_member"];

      v13 = NewsCoreUserDefaults();
      v14 = [v13 BOOLForKey:@"simulate_bundle_subscription_is_amplify_user"];

      v15 = NewsCoreUserDefaults();
      LODWORD(v7) = [v15 BOOLForKey:@"simulate_bundle_subscription_is_services_bundle"];

      v16 = NewsCoreUserDefaults();
      v17 = [v16 BOOLForKey:@"simulate_bundle_subscription_paid_bundle_via_offer_activated"];

      v18 = @"servicesBundlePurchaseID";
      if (!v7)
      {
        v18 = 0;
      }

      v19 = v18;
      v20 = 0;
      if (v17)
      {
        v21 = [*(a1 + 32) paidBundleViaOfferConfig];
        v22 = [v21 vendorAdHocOfferIds];
        v20 = [v22 firstObject];
      }

      switch(v10)
      {
        case 3:
          v24 = [MEMORY[0x1E696ABC0] errorWithDomain:@"BundleEntitlementsProviderErrorDomain" code:5002 userInfo:0];
          v27 = *(a1 + 40);
          if (v27)
          {
            v26 = *(v27 + 16);
            goto LABEL_16;
          }

LABEL_17:

LABEL_25:
          goto LABEL_29;
        case 2:
          v23 = [[FCBundleEntitlementsProviderResult alloc] initWithBundlePurchaseID:v8 inTrialPeriod:1 isPurchaser:v12 ^ 1u servicesBundlePurchaseID:v19 isAmplifyUser:v14 initialPurchaseTimestamp:0 vendorAdHocOfferID:v20];
LABEL_12:
          v24 = v23;
          v25 = *(a1 + 40);
          if (v25)
          {
            v26 = *(v25 + 16);
LABEL_16:
            v26();
            goto LABEL_17;
          }

          goto LABEL_17;
        case 1:
          v23 = [[FCBundleEntitlementsProviderResult alloc] initWithBundlePurchaseID:v8 inTrialPeriod:0 isPurchaser:v12 ^ 1u servicesBundlePurchaseID:v19 isAmplifyUser:v14 initialPurchaseTimestamp:0 vendorAdHocOfferID:v20];
          goto LABEL_12;
      }
    }
  }

  if (NFStoreDemoMode())
  {
    v28 = [*(a1 + 32) paidBundleConfig];
    v29 = [v28 offeredBundlePurchaseIDs];
    v8 = [v29 firstObject];

    v30 = FCPurchaseLog;
    if (os_log_type_enabled(FCPurchaseLog, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v39 = v8;
      _os_log_impl(&dword_1B63EF000, v30, OS_LOG_TYPE_DEFAULT, "Temporary access activated with purchaseID:%@", buf, 0xCu);
    }

    if (v8)
    {
      v19 = [[FCBundleEntitlementsProviderResult alloc] initWithBundlePurchaseID:v8 inTrialPeriod:0 isPurchaser:1 servicesBundlePurchaseID:0 isAmplifyUser:0 initialPurchaseTimestamp:0 vendorAdHocOfferID:0];
      v31 = *(a1 + 40);
      if (v31)
      {
        (*(v31 + 16))(v31, v19, 0);
      }

      goto LABEL_25;
    }
  }

  if ([MEMORY[0x1E696AF00] isMainThread])
  {
    v32 = dispatch_get_global_queue(2, 0);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __76__FCBundleEntitlementsProvider_fetchEntitlementsWithIgnoreCache_completion___block_invoke_6;
    block[3] = &unk_1E7C43648;
    block[4] = v3;
    v37 = *(a1 + 48);
    v35 = *(a1 + 32);
    v36 = *(a1 + 40);
    dispatch_async(v32, block);
  }

  else
  {
    [v3 _fetchEntitlementsWithIgnoreCache:*(a1 + 48) configuration:*(a1 + 32) completion:*(a1 + 40)];
  }

LABEL_29:

  v33 = *MEMORY[0x1E69E9840];
}

void __91__FCBundleEntitlementsProvider__fetchEntitlementsWithIgnoreCache_configuration_completion___block_invoke(id *a1, void *a2, int a3, void *a4)
{
  v37 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a4;
  v9 = FCPurchaseLog;
  if (v8)
  {
    if (!os_log_type_enabled(FCPurchaseLog, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_7;
    }

    v10 = a1[4];
    v11 = v9;
    *buf = 138412802;
    v32 = objc_opt_class();
    v33 = 2114;
    v34 = v7;
    v35 = 2114;
    v36 = v8;
    _os_log_error_impl(&dword_1B63EF000, v11, OS_LOG_TYPE_ERROR, "%@ failed to fetch entitlements with entitlements:%{public}@, error: %{public}@", buf, 0x20u);
  }

  else
  {
    if (!os_log_type_enabled(FCPurchaseLog, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_7;
    }

    v12 = a1[4];
    v11 = v9;
    *buf = 138412546;
    v32 = objc_opt_class();
    v33 = 2114;
    v34 = v7;
    _os_log_impl(&dword_1B63EF000, v11, OS_LOG_TYPE_DEFAULT, "%@ Entitlements response received with entitlements: %{public}@", buf, 0x16u);
  }

LABEL_7:
  v13 = [v7 fc_arrayByTransformingWithBlock:&__block_literal_global_121];
  v14 = [a1[4] entitlementsOverrideProvider];

  if (v14)
  {
    v15 = [a1[4] entitlementsOverrideProvider];
    v16 = [v15 entitlementsOverrideWithDefaultEntitlements:v13];

    if (v16)
    {
      v17 = [v16 entitlements];

      v18 = [v16 error];

      v13 = v17;
      v8 = v18;
    }
  }

  if ([v8 code] == 3001)
  {
    v19 = MEMORY[0x1E696ABC0];
    v20 = 3001;
    goto LABEL_24;
  }

  if (!a3 || (v21 = [v13 count], v8) || v21)
  {
    if (!v13 || v8 && ![v13 count])
    {
      goto LABEL_23;
    }

    goto LABEL_22;
  }

  v22 = [a1[4] entitlementsOverrideProvider];

  if (v22)
  {
    if (!v13)
    {
LABEL_23:
      v19 = MEMORY[0x1E696ABC0];
      v20 = 5001;
      goto LABEL_24;
    }

LABEL_22:
    WeakRetained = objc_loadWeakRetained(a1 + 7);
    v27[0] = MEMORY[0x1E69E9820];
    v27[1] = 3221225472;
    v27[2] = __91__FCBundleEntitlementsProvider__fetchEntitlementsWithIgnoreCache_configuration_completion___block_invoke_2;
    v27[3] = &unk_1E7C436E8;
    v28 = v13;
    v29 = a1[5];
    v30 = a1[6];
    FCPerformIfNonNil(WeakRetained, v27);

    v24 = v28;
    goto LABEL_26;
  }

  v19 = MEMORY[0x1E696ABC0];
  v20 = 5003;
LABEL_24:
  v24 = [v19 errorWithDomain:@"BundleEntitlementsProviderErrorDomain" code:v20 userInfo:0];
  v25 = a1[6];
  if (v25)
  {
    v25[2](v25, 0, v24);
  }

LABEL_26:

  v26 = *MEMORY[0x1E69E9840];
}

FCSubscriptionEntitlement *__91__FCBundleEntitlementsProvider__fetchEntitlementsWithIgnoreCache_configuration_completion___block_invoke_10(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[FCSubscriptionEntitlement alloc] initWithASDEntitlement:v2];

  return v3;
}

void __91__FCBundleEntitlementsProvider__fetchEntitlementsWithIgnoreCache_configuration_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v51 = 0;
  v52 = &v51;
  v53 = 0x3032000000;
  v54 = __Block_byref_object_copy__56;
  v55 = __Block_byref_object_dispose__56;
  v56 = 0;
  v45 = 0;
  v46 = &v45;
  v47 = 0x3032000000;
  v48 = __Block_byref_object_copy__56;
  v49 = __Block_byref_object_dispose__56;
  v50 = 0;
  v41 = 0;
  v42 = &v41;
  v43 = 0x2020000000;
  v44 = 0;
  v37 = 0;
  v38 = &v37;
  v39 = 0x2020000000;
  v40 = 0;
  v33 = 0;
  v34 = &v33;
  v35 = 0x2020000000;
  v36 = 0;
  v27 = 0;
  v28 = &v27;
  v29 = 0x3032000000;
  v30 = __Block_byref_object_copy__56;
  v31 = __Block_byref_object_dispose__56;
  v32 = 0;
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = __Block_byref_object_copy__56;
  v25 = __Block_byref_object_dispose__56;
  v26 = 0;
  v9 = MEMORY[0x1E69E9820];
  v10 = 3221225472;
  v11 = __91__FCBundleEntitlementsProvider__fetchEntitlementsWithIgnoreCache_configuration_completion___block_invoke_13;
  v12 = &unk_1E7C436C0;
  v4 = *(a1 + 32);
  v13 = *(a1 + 40);
  v14 = &v51;
  v15 = &v45;
  v16 = &v41;
  v17 = &v37;
  v18 = &v33;
  v19 = &v27;
  v20 = &v21;
  [v4 enumerateObjectsUsingBlock:&v9];
  if (v52[5])
  {
    v5 = [FCBundleEntitlementsProviderResult alloc];
    v6 = [(FCBundleEntitlementsProviderResult *)v5 initWithBundlePurchaseID:v52[5] inTrialPeriod:*(v42 + 24) isPurchaser:*(v38 + 24) servicesBundlePurchaseID:v46[5] isAmplifyUser:*(v34 + 24) initialPurchaseTimestamp:v22[5] vendorAdHocOfferID:v28[5], v9, v10, v11, v12];
    v7 = *(a1 + 48);
    if (v7)
    {
      (*(v7 + 16))(v7, v6, 0);
    }
  }

  else
  {
    v6 = [MEMORY[0x1E696ABC0] errorWithDomain:@"BundleEntitlementsProviderErrorDomain" code:5002 userInfo:0];
    v8 = *(a1 + 48);
    if (v8)
    {
      (*(v8 + 16))(v8, 0, v6);
    }
  }

  _Block_object_dispose(&v21, 8);
  _Block_object_dispose(&v27, 8);

  _Block_object_dispose(&v33, 8);
  _Block_object_dispose(&v37, 8);
  _Block_object_dispose(&v41, 8);
  _Block_object_dispose(&v45, 8);

  _Block_object_dispose(&v51, 8);
}

void __91__FCBundleEntitlementsProvider__fetchEntitlementsWithIgnoreCache_configuration_completion___block_invoke_13(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v26 = a2;
  v6 = [*(a1 + 32) paidBundleConfig];
  v7 = [v6 restorableBundlePurchaseIDs];
  v8 = [v26 inAppAdamID];
  v9 = [v8 stringValue];
  v10 = [v7 containsObject:v9];

  if (v10)
  {
    v11 = [v26 inAppAdamID];
    v12 = [v11 stringValue];
    v13 = [v12 copy];
    v14 = *(*(a1 + 40) + 8);
    v15 = *(v14 + 40);
    *(v14 + 40) = v13;

    v16 = [v26 servicesBundleAdamID];
    v17 = [v16 copy];
    v18 = *(*(a1 + 48) + 8);
    v19 = *(v18 + 40);
    *(v18 + 40) = v17;

    *(*(*(a1 + 56) + 8) + 24) = [v26 isTrialPeriod];
    *(*(*(a1 + 64) + 8) + 24) = [v26 isPurchaser];
    *(*(*(a1 + 72) + 8) + 24) = [v26 isAmplifyUser];
    v20 = [v26 vendorAdHocOfferID];
    v21 = *(*(a1 + 80) + 8);
    v22 = *(v21 + 40);
    *(v21 + 40) = v20;

    v23 = [v26 initialPurchaseTimestamp];
    v24 = *(*(a1 + 88) + 8);
    v25 = *(v24 + 40);
    *(v24 + 40) = v23;

    *a4 = 1;
  }
}

@end