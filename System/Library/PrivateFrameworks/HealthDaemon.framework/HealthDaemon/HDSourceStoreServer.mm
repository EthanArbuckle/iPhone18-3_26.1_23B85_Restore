@interface HDSourceStoreServer
+ (id)requiredEntitlements;
- (uint64_t)_IsAllowedToAccessQASPI:(void *)i;
- (void)remote_deleteSourceWithBundleIdentifier:(id)identifier completion:(id)completion;
- (void)remote_fetchAllSourcesWithCompletion:(id)completion;
- (void)remote_fetchHasSampleWithBundleIdentifier:(id)identifier completion:(id)completion;
- (void)remote_fetchOrderedSourcesForObjectType:(id)type completion:(id)completion;
- (void)remote_qaSourceForBundleIdentifier:(id)identifier name:(id)name completion:(id)completion;
- (void)remote_sourceForAppleDeviceWithUUID:(id)d identifier:(id)identifier name:(id)name productType:(id)type completion:(id)completion;
- (void)remote_updateOrderedSources:(id)sources forObjectType:(id)type completion:(id)completion;
@end

@implementation HDSourceStoreServer

- (void)remote_fetchAllSourcesWithCompletion:(id)completion
{
  completionCopy = completion;
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = __Block_byref_object_copy__47;
  v14 = __Block_byref_object_dispose__47;
  v15 = 0;
  profile = [(HDStandardTaskServer *)self profile];
  database = [profile database];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __60__HDSourceStoreServer_remote_fetchAllSourcesWithCompletion___block_invoke;
  v8[3] = &unk_27861A418;
  v8[5] = &v10;
  v9 = 0;
  v8[4] = self;
  [database performHighPriorityTransactionsWithError:&v9 block:v8];
  v7 = v9;

  completionCopy[2](completionCopy, v11[5], v7);
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

- (void)remote_fetchHasSampleWithBundleIdentifier:(id)identifier completion:(id)completion
{
  identifierCopy = identifier;
  completionCopy = completion;
  v17[0] = 0;
  v17[1] = v17;
  v17[2] = 0x2020000000;
  v17[3] = 0;
  profile = [(HDStandardTaskServer *)self profile];
  database = [profile database];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __76__HDSourceStoreServer_remote_fetchHasSampleWithBundleIdentifier_completion___block_invoke;
  v13[3] = &unk_27861A440;
  v15 = v17;
  v16 = 0;
  v13[4] = self;
  v10 = identifierCopy;
  v14 = v10;
  v11 = [database performHighPriorityTransactionsWithError:&v16 block:v13];
  v12 = v16;

  completionCopy[2](completionCopy, v11, v12);
  _Block_object_dispose(v17, 8);
}

BOOL __76__HDSourceStoreServer_remote_fetchHasSampleWithBundleIdentifier_completion___block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = [*(a1 + 32) profile];
  v5 = [v4 dataManager];
  *(*(*(a1 + 48) + 8) + 24) = [v5 hasSampleWithBundleIdentifier:*(a1 + 40) error:a2];

  return *(*(*(a1 + 48) + 8) + 24) == 1;
}

- (void)remote_deleteSourceWithBundleIdentifier:(id)identifier completion:(id)completion
{
  v33 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  if (identifierCopy)
  {
    completionCopy = completion;
    profile = [(HDStandardTaskServer *)self profile];
    sourceManager = [profile sourceManager];
    v26 = 0;
    v11 = [sourceManager deleteSourceWithBundleIdentifier:identifierCopy error:&v26];
    v12 = v26;

    _HKInitializeLogging();
    v13 = *MEMORY[0x277CCC2A0];
    v14 = *MEMORY[0x277CCC2A0];
    if (v11)
    {
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v15 = v13;
        client = [(HDStandardTaskServer *)self client];
        process = [client process];
        name = [process name];
        *buf = 138543618;
        v28 = name;
        v29 = 2114;
        v30 = identifierCopy;
        _os_log_impl(&dword_228986000, v15, OS_LOG_TYPE_DEFAULT, "Client %{public}@ deleted source %{public}@", buf, 0x16u);
      }

      profile2 = [(HDStandardTaskServer *)self profile];
      [HDCloudSyncStore samplesDeletedInProfile:profile2 byUser:1 intervals:0];
    }

    else
    {
      if (!os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_9;
      }

      v23 = v13;
      profile2 = [(HDStandardTaskServer *)self client];
      process2 = [profile2 process];
      name2 = [process2 name];
      *buf = 138543874;
      v28 = name2;
      v29 = 2114;
      v30 = identifierCopy;
      v31 = 2114;
      v32 = v12;
      _os_log_error_impl(&dword_228986000, v23, OS_LOG_TYPE_ERROR, "Client %{public}@ failed to deleted source %{public}@: %{public}@", buf, 0x20u);
    }

LABEL_9:
    completionCopy[2](completionCopy, v11, v12);

    goto LABEL_10;
  }

  v20 = MEMORY[0x277CCA9B8];
  completionCopy2 = completion;
  v12 = [v20 hk_errorForNilArgument:@"bundleIdentifier" class:objc_opt_class() selector:a2];
  (*(completion + 2))(completionCopy2, 0, v12);

LABEL_10:
  v22 = *MEMORY[0x277D85DE8];
}

- (void)remote_fetchOrderedSourcesForObjectType:(id)type completion:(id)completion
{
  completionCopy = completion;
  typeCopy = type;
  profile = [(HDStandardTaskServer *)self profile];
  sourceOrderManager = [profile sourceOrderManager];
  v12 = 0;
  v10 = [sourceOrderManager orderedSourcesForObjectType:typeCopy error:&v12];

  v11 = v12;
  completionCopy[2](completionCopy, v10, v11);
}

- (void)remote_updateOrderedSources:(id)sources forObjectType:(id)type completion:(id)completion
{
  completionCopy = completion;
  typeCopy = type;
  sourcesCopy = sources;
  profile = [(HDStandardTaskServer *)self profile];
  sourceOrderManager = [profile sourceOrderManager];
  v15 = 0;
  v13 = [sourceOrderManager updateOrderedSources:sourcesCopy forObjectType:typeCopy error:&v15];

  v14 = v15;
  completionCopy[2](completionCopy, v13, v14);
}

- (uint64_t)_IsAllowedToAccessQASPI:(void *)i
{
  if (i)
  {
    client = [i client];
    process = [client process];
    bundleIdentifier = [process bundleIdentifier];
    if ([bundleIdentifier isEqual:@"com.apple.HealthKitTestHost"])
    {
LABEL_7:

LABEL_8:
      client2 = [i client];
      v14 = [client2 hasRequiredEntitlement:*MEMORY[0x277CCCDD8] error:a2];

      return v14;
    }

    client3 = [i client];
    process2 = [client3 process];
    bundleIdentifier2 = [process2 bundleIdentifier];
    if ([bundleIdentifier2 isEqual:@"com.apple.HKTester"])
    {
LABEL_6:

      goto LABEL_7;
    }

    v20 = a2;
    client4 = [i client];
    process3 = [client4 process];
    bundleIdentifier3 = [process3 bundleIdentifier];
    if ([bundleIdentifier3 hasPrefix:@"com.apple.internal.HealthUIAKit."])
    {

      a2 = v20;
      goto LABEL_6;
    }

    client5 = [i client];
    [client5 sourceBundleIdentifier];
    v16 = v18 = client4;
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

- (void)remote_sourceForAppleDeviceWithUUID:(id)d identifier:(id)identifier name:(id)name productType:(id)type completion:(id)completion
{
  dCopy = d;
  identifierCopy = identifier;
  nameCopy = name;
  typeCopy = type;
  completionCopy = completion;
  v29 = 0;
  v17 = [(HDSourceStoreServer *)self _IsAllowedToAccessQASPI:?];
  v18 = v29;
  if (v17)
  {
    profile = [(HDStandardTaskServer *)self profile];
    sourceManager = [profile sourceManager];
    v28 = v18;
    v26 = dCopy;
    v21 = [sourceManager sourceForAppleDeviceWithUUID:dCopy identifier:identifierCopy name:nameCopy productType:typeCopy createIfNecessary:1 error:&v28];
    v22 = v28;

    if (v21)
    {
      profile2 = [(HDStandardTaskServer *)self profile];
      v27 = v22;
      v24 = [v21 sourceWithProfile:profile2 error:&v27];
      v25 = v27;

      v22 = v25;
    }

    else
    {
      v24 = 0;
    }

    v18 = v22;
    dCopy = v26;
  }

  else
  {
    v24 = 0;
  }

  completionCopy[2](completionCopy, v24, v18);
}

- (void)remote_qaSourceForBundleIdentifier:(id)identifier name:(id)name completion:(id)completion
{
  identifierCopy = identifier;
  nameCopy = name;
  completionCopy = completion;
  v23 = 0;
  v11 = [(HDSourceStoreServer *)self _IsAllowedToAccessQASPI:?];
  v12 = v23;
  if (v11)
  {
    profile = [(HDStandardTaskServer *)self profile];
    sourceManager = [profile sourceManager];
    v15 = [MEMORY[0x277CCDDA8] entitlementsWithDictionary:MEMORY[0x277CBEC10]];
    v22 = v12;
    v16 = [sourceManager sourceForApplicationIdentifier:identifierCopy createOrUpdateIfNecessary:1 entitlements:v15 name:nameCopy error:&v22];
    v17 = v22;

    if (v16)
    {
      profile2 = [(HDStandardTaskServer *)self profile];
      v21 = v17;
      v19 = [v16 sourceWithProfile:profile2 error:&v21];
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

  completionCopy[2](completionCopy, v19, v12);
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