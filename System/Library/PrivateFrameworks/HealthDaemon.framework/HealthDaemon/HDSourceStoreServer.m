@interface HDSourceStoreServer
+ (id)requiredEntitlements;
- (uint64_t)_IsAllowedToAccessQASPI:(void *)a1;
- (void)remote_deleteSourceWithBundleIdentifier:(id)a3 completion:(id)a4;
- (void)remote_fetchAllSourcesWithCompletion:(id)a3;
- (void)remote_fetchHasSampleWithBundleIdentifier:(id)a3 completion:(id)a4;
- (void)remote_fetchOrderedSourcesForObjectType:(id)a3 completion:(id)a4;
- (void)remote_qaSourceForBundleIdentifier:(id)a3 name:(id)a4 completion:(id)a5;
- (void)remote_sourceForAppleDeviceWithUUID:(id)a3 identifier:(id)a4 name:(id)a5 productType:(id)a6 completion:(id)a7;
- (void)remote_updateOrderedSources:(id)a3 forObjectType:(id)a4 completion:(id)a5;
@end

@implementation HDSourceStoreServer

- (void)remote_fetchAllSourcesWithCompletion:(id)a3
{
  v4 = a3;
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = __Block_byref_object_copy__47;
  v14 = __Block_byref_object_dispose__47;
  v15 = 0;
  v5 = [(HDStandardTaskServer *)self profile];
  v6 = [v5 database];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __60__HDSourceStoreServer_remote_fetchAllSourcesWithCompletion___block_invoke;
  v8[3] = &unk_27861A418;
  v8[5] = &v10;
  v9 = 0;
  v8[4] = self;
  [v6 performHighPriorityTransactionsWithError:&v9 block:v8];
  v7 = v9;

  v4[2](v4, v11[5], v7);
  _Block_object_dispose(&v10, 8);
}

BOOL __60__HDSourceStoreServer_remote_fetchAllSourcesWithCompletion___block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = [*(a1 + 32) profile];
  v5 = [v4 sourceManager];
  v6 = [v5 allSourcesWithError:a2];
  v7 = *(*(a1 + 40) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;

  return *(*(*(a1 + 40) + 8) + 40) != 0;
}

- (void)remote_fetchHasSampleWithBundleIdentifier:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v17[0] = 0;
  v17[1] = v17;
  v17[2] = 0x2020000000;
  v17[3] = 0;
  v8 = [(HDStandardTaskServer *)self profile];
  v9 = [v8 database];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __76__HDSourceStoreServer_remote_fetchHasSampleWithBundleIdentifier_completion___block_invoke;
  v13[3] = &unk_27861A440;
  v15 = v17;
  v16 = 0;
  v13[4] = self;
  v10 = v6;
  v14 = v10;
  v11 = [v9 performHighPriorityTransactionsWithError:&v16 block:v13];
  v12 = v16;

  v7[2](v7, v11, v12);
  _Block_object_dispose(v17, 8);
}

BOOL __76__HDSourceStoreServer_remote_fetchHasSampleWithBundleIdentifier_completion___block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = [*(a1 + 32) profile];
  v5 = [v4 dataManager];
  *(*(*(a1 + 48) + 8) + 24) = [v5 hasSampleWithBundleIdentifier:*(a1 + 40) error:a2];

  return *(*(*(a1 + 48) + 8) + 24) == 1;
}

- (void)remote_deleteSourceWithBundleIdentifier:(id)a3 completion:(id)a4
{
  v33 = *MEMORY[0x277D85DE8];
  v7 = a3;
  if (v7)
  {
    v8 = a4;
    v9 = [(HDStandardTaskServer *)self profile];
    v10 = [v9 sourceManager];
    v26 = 0;
    v11 = [v10 deleteSourceWithBundleIdentifier:v7 error:&v26];
    v12 = v26;

    _HKInitializeLogging();
    v13 = *MEMORY[0x277CCC2A0];
    v14 = *MEMORY[0x277CCC2A0];
    if (v11)
    {
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v15 = v13;
        v16 = [(HDStandardTaskServer *)self client];
        v17 = [v16 process];
        v18 = [v17 name];
        *buf = 138543618;
        v28 = v18;
        v29 = 2114;
        v30 = v7;
        _os_log_impl(&dword_228986000, v15, OS_LOG_TYPE_DEFAULT, "Client %{public}@ deleted source %{public}@", buf, 0x16u);
      }

      v19 = [(HDStandardTaskServer *)self profile];
      [HDCloudSyncStore samplesDeletedInProfile:v19 byUser:1 intervals:0];
    }

    else
    {
      if (!os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_9;
      }

      v23 = v13;
      v19 = [(HDStandardTaskServer *)self client];
      v24 = [v19 process];
      v25 = [v24 name];
      *buf = 138543874;
      v28 = v25;
      v29 = 2114;
      v30 = v7;
      v31 = 2114;
      v32 = v12;
      _os_log_error_impl(&dword_228986000, v23, OS_LOG_TYPE_ERROR, "Client %{public}@ failed to deleted source %{public}@: %{public}@", buf, 0x20u);
    }

LABEL_9:
    v8[2](v8, v11, v12);

    goto LABEL_10;
  }

  v20 = MEMORY[0x277CCA9B8];
  v21 = a4;
  v12 = [v20 hk_errorForNilArgument:@"bundleIdentifier" class:objc_opt_class() selector:a2];
  (*(a4 + 2))(v21, 0, v12);

LABEL_10:
  v22 = *MEMORY[0x277D85DE8];
}

- (void)remote_fetchOrderedSourcesForObjectType:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(HDStandardTaskServer *)self profile];
  v9 = [v8 sourceOrderManager];
  v12 = 0;
  v10 = [v9 orderedSourcesForObjectType:v7 error:&v12];

  v11 = v12;
  v6[2](v6, v10, v11);
}

- (void)remote_updateOrderedSources:(id)a3 forObjectType:(id)a4 completion:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [(HDStandardTaskServer *)self profile];
  v12 = [v11 sourceOrderManager];
  v15 = 0;
  v13 = [v12 updateOrderedSources:v10 forObjectType:v9 error:&v15];

  v14 = v15;
  v8[2](v8, v13, v14);
}

- (uint64_t)_IsAllowedToAccessQASPI:(void *)a1
{
  if (a1)
  {
    v4 = [a1 client];
    v5 = [v4 process];
    v6 = [v5 bundleIdentifier];
    if ([v6 isEqual:@"com.apple.HealthKitTestHost"])
    {
LABEL_7:

LABEL_8:
      v13 = [a1 client];
      v14 = [v13 hasRequiredEntitlement:*MEMORY[0x277CCCDD8] error:a2];

      return v14;
    }

    v7 = [a1 client];
    v8 = [v7 process];
    v9 = [v8 bundleIdentifier];
    if ([v9 isEqual:@"com.apple.HKTester"])
    {
LABEL_6:

      goto LABEL_7;
    }

    v20 = a2;
    v10 = [a1 client];
    v11 = [v10 process];
    v12 = [v11 bundleIdentifier];
    if ([v12 hasPrefix:@"com.apple.internal.HealthUIAKit."])
    {

      a2 = v20;
      goto LABEL_6;
    }

    v17 = [a1 client];
    [v17 sourceBundleIdentifier];
    v16 = v18 = v10;
    v19 = [v16 hasPrefix:@"com.apple.internal.HealthUIAKit."];

    a2 = v20;
    if (v19)
    {
      goto LABEL_8;
    }

    [MEMORY[0x277CCA9B8] hk_assignError:v20 code:4 format:@"Client unauthorized; only specific bundle identifiers are allowed to call this method"];
  }

  return 0;
}

- (void)remote_sourceForAppleDeviceWithUUID:(id)a3 identifier:(id)a4 name:(id)a5 productType:(id)a6 completion:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v29 = 0;
  v17 = [(HDSourceStoreServer *)self _IsAllowedToAccessQASPI:?];
  v18 = v29;
  if (v17)
  {
    v19 = [(HDStandardTaskServer *)self profile];
    v20 = [v19 sourceManager];
    v28 = v18;
    v26 = v12;
    v21 = [v20 sourceForAppleDeviceWithUUID:v12 identifier:v13 name:v14 productType:v15 createIfNecessary:1 error:&v28];
    v22 = v28;

    if (v21)
    {
      v23 = [(HDStandardTaskServer *)self profile];
      v27 = v22;
      v24 = [v21 sourceWithProfile:v23 error:&v27];
      v25 = v27;

      v22 = v25;
    }

    else
    {
      v24 = 0;
    }

    v18 = v22;
    v12 = v26;
  }

  else
  {
    v24 = 0;
  }

  v16[2](v16, v24, v18);
}

- (void)remote_qaSourceForBundleIdentifier:(id)a3 name:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v23 = 0;
  v11 = [(HDSourceStoreServer *)self _IsAllowedToAccessQASPI:?];
  v12 = v23;
  if (v11)
  {
    v13 = [(HDStandardTaskServer *)self profile];
    v14 = [v13 sourceManager];
    v15 = [MEMORY[0x277CCDDA8] entitlementsWithDictionary:MEMORY[0x277CBEC10]];
    v22 = v12;
    v16 = [v14 sourceForApplicationIdentifier:v8 createOrUpdateIfNecessary:1 entitlements:v15 name:v9 error:&v22];
    v17 = v22;

    if (v16)
    {
      v18 = [(HDStandardTaskServer *)self profile];
      v21 = v17;
      v19 = [v16 sourceWithProfile:v18 error:&v21];
      v20 = v21;

      v17 = v20;
    }

    else
    {
      v19 = 0;
    }

    v12 = v17;
  }

  else
  {
    v19 = 0;
  }

  v10[2](v10, v19, v12);
}

+ (id)requiredEntitlements
{
  v5[1] = *MEMORY[0x277D85DE8];
  v5[0] = *MEMORY[0x277CCC8B0];
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:1];
  v3 = *MEMORY[0x277D85DE8];

  return v2;
}

@end