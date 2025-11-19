@interface HDAuthorizationStatus
+ (BOOL)isAuthorizedForObjectType:(id)a3 authorizationStatus:(id)a4 clientEntitlements:(id)a5 sharing:(BOOL)a6 error:(id *)a7;
+ (id)authorizationStatusForRecordForObjectType:(id)a3 authorizationStatusRecord:(id)a4 clientEntitlements:(id)a5;
+ (id)authorizationStatusForTypes:(id)a3 bundleIdentifier:(id)a4 profile:(id)a5 error:(id *)a6;
@end

@implementation HDAuthorizationStatus

+ (id)authorizationStatusForTypes:(id)a3 bundleIdentifier:(id)a4 profile:(id)a5 error:(id *)a6
{
  v53 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v36 = v9;
  if (!v10)
  {
    v28 = MEMORY[0x277CCA9B8];
    v29 = @"Missing application-identifier entitlement.";
    v30 = a6;
    v31 = 4;
LABEL_20:
    [v28 hk_assignError:v30 code:v31 description:v29];
    v16 = 0;
    goto LABEL_23;
  }

  if (![v9 count])
  {
    v28 = MEMORY[0x277CCA9B8];
    v29 = @"The types argument may not be empty";
    v30 = a6;
    v31 = 3;
    goto LABEL_20;
  }

  v46 = 0;
  v47 = &v46;
  v48 = 0x3032000000;
  v49 = __Block_byref_object_copy__175;
  v50 = __Block_byref_object_dispose__175;
  v51 = 0;
  v12 = objc_alloc_init(HDMutableDatabaseTransactionContext);
  [(HDMutableDatabaseTransactionContext *)v12 setHighPriority:1];
  v13 = [v11 database];
  v41[0] = MEMORY[0x277D85DD0];
  v41[1] = 3221225472;
  v41[2] = __84__HDAuthorizationStatus_authorizationStatusForTypes_bundleIdentifier_profile_error___block_invoke;
  v41[3] = &unk_27861D560;
  v45 = &v46;
  v42 = v10;
  v14 = v9;
  v43 = v14;
  v44 = v11;
  v15 = [(HDHealthEntity *)HDAuthorizationEntity performReadTransactionWithHealthDatabase:v13 context:v12 error:a6 block:v41];
  v35 = v11;

  if (!v15)
  {
    v16 = 0;
    goto LABEL_22;
  }

  v16 = [v47[5] mutableCopy];
  v17 = [MEMORY[0x277CCD720] _typesIncludingParentTypes:v14];
  v18 = [v16 count];
  if (v18 == [v17 count])
  {
    goto LABEL_17;
  }

  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v19 = v17;
  v20 = [v19 countByEnumeratingWithState:&v37 objects:v52 count:16];
  v34 = v17;
  if (!v20)
  {
    goto LABEL_16;
  }

  v21 = *v38;
  do
  {
    for (i = 0; i != v20; ++i)
    {
      if (*v38 != v21)
      {
        objc_enumerationMutation(v19);
      }

      v23 = *(*(&v37 + 1) + 8 * i);
      [v23 code];
      v24 = HKDataTypeRequiresAuthorization();
      v25 = &unk_283CB3F30;
      if (v24)
      {
        v26 = [v47[5] objectForKeyedSubscript:v23];
        v27 = v26 == 0;

        if (!v27)
        {
          continue;
        }

        v25 = &unk_283CB3F18;
      }

      [v16 setObject:v25 forKeyedSubscript:v23];
    }

    v20 = [v19 countByEnumeratingWithState:&v37 objects:v52 count:16];
  }

  while (v20);
LABEL_16:

  v17 = v34;
LABEL_17:

LABEL_22:
  _Block_object_dispose(&v46, 8);

  v11 = v35;
LABEL_23:

  v32 = *MEMORY[0x277D85DE8];

  return v16;
}

BOOL __84__HDAuthorizationStatus_authorizationStatusForTypes_bundleIdentifier_profile_error___block_invoke(void *a1, uint64_t a2, uint64_t a3)
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = [HDAuthorizationEntity authorizationStatusesForBundleIdentifier:a1[4] types:a1[5] profile:a1[6] error:a3];
  v5 = *(a1[7] + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;

  v7 = *(*(a1[7] + 8) + 40);
  if (!v7)
  {
    _HKInitializeLogging();
    v8 = HKLogAuthorization();
    v9 = os_log_type_enabled(v8, OS_LOG_TYPE_INFO);

    if (v9)
    {
      v10 = HKLogAuthorization();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        v11 = a1[5];
        v14 = 138412290;
        v15 = v11;
        _os_log_impl(&dword_228986000, v10, OS_LOG_TYPE_INFO, "Could not determine authorization status for types %@", &v14, 0xCu);
      }
    }
  }

  result = v7 != 0;
  v13 = *MEMORY[0x277D85DE8];
  return result;
}

+ (BOOL)isAuthorizedForObjectType:(id)a3 authorizationStatus:(id)a4 clientEntitlements:(id)a5 sharing:(BOOL)a6 error:(id *)a7
{
  v7 = a6;
  v12 = a3;
  v13 = a4;
  v14 = a5;
  if (!v13)
  {
    v26 = [MEMORY[0x277CCA890] currentHandler];
    [v26 handleFailureInMethod:a2 object:a1 file:@"HDAuthorizationStatus.m" lineNumber:95 description:{@"Invalid parameter not satisfying: %@", @"authorizationStatus != nil"}];
  }

  v27 = a1;
  v15 = [v13 integerValue];
  v16 = HKAuthorizationStatusAllowsSharing();
  v17 = HKAuthorizationStatusAllowsReading();
  v18 = *MEMORY[0x277CCCCE0];
  v19 = v12;
  v20 = [v12 identifier];
  v21 = [v14 arrayEntitlement:v18 containsString:v20];

  if ((v15 - 101) >= 4)
  {
    if (v15 == 100)
    {
      v22 = v7 | v21 ^ 1;
      v23 = v22 ^ 1;
    }

    else
    {
      v24 = [MEMORY[0x277CCA890] currentHandler];
      [v24 handleFailureInMethod:a2 object:v27 file:@"HDAuthorizationStatus.m" lineNumber:117 description:{@"Unexpected authorization status %@", v13}];

      v23 = 0;
      v22 = 0;
    }
  }

  else
  {
    v22 = 0;
    if (v7)
    {
      v23 = v16;
    }

    else
    {
      v23 = v17;
    }
  }

  if (a7 && (v23 & 1) == 0)
  {
    if (v22)
    {
      [MEMORY[0x277CCA9B8] hk_error:5 description:@"Authorization is not determined"];
    }

    else
    {
      [MEMORY[0x277CCA9B8] hk_error:4 format:@"Not authorized"];
    }
    *a7 = ;
  }

  return v23 & 1;
}

+ (id)authorizationStatusForRecordForObjectType:(id)a3 authorizationStatusRecord:(id)a4 clientEntitlements:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  [v7 code];
  if ((HKDataTypeRequiresAuthorization() & 1) == 0 || ([v7 code], HKDataTypeRequiresPerObjectAuthorization()) || (v10 = *MEMORY[0x277CCCCE0], objc_msgSend(v7, "identifier"), v11 = objc_claimAutoreleasedReturnValue(), LODWORD(v10) = objc_msgSend(v9, "arrayEntitlement:containsString:", v10, v11), v11, v10))
  {
    v12 = +[HDAuthorizationStatusRecord unrestrictedReadAuthorizationStatus];
  }

  else if (v8)
  {
    v12 = v8;
  }

  else
  {
    v12 = +[HDAuthorizationStatusRecord notDerminedReadAuthorizationStatus];
  }

  v13 = v12;

  return v13;
}

@end