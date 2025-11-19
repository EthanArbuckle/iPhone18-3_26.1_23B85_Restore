@interface DMCEnrollmentAccountUtilities
+ (void)removeOrphanedEnrollmentAccounts;
@end

@implementation DMCEnrollmentAccountUtilities

+ (void)removeOrphanedEnrollmentAccounts
{
  v2 = *DMCLogObjects();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_247E39000, v2, OS_LOG_TYPE_DEFAULT, "DMCAccountUtilities: Searching for orphaned enrollment account...", v5, 2u);
  }

  v3 = [MEMORY[0x277CB8F48] defaultStore];
  v4 = [v3 dmc_accountsWithPredicateBlock:&__block_literal_global];
  [v3 dmc_removeAccounts:v4 asynchronous:0];
}

uint64_t __65__DMCEnrollmentAccountUtilities_removeOrphanedEnrollmentAccounts__block_invoke(uint64_t a1, void *a2)
{
  v37 = *MEMORY[0x277D85DE8];
  v2 = a2;
  if ([v2 dmc_isPrimaryAccount])
  {
    v3 = 0;
    goto LABEL_20;
  }

  v4 = [v2 dmc_personaIdentifier];
  if (v4)
  {
    v5 = v4;
    v6 = MEMORY[0x277D03550];
    v7 = [v2 dmc_personaIdentifier];
    LOBYTE(v6) = [v6 personaWithUniqueIdentifierExists:v7];

    if ((v6 & 1) == 0)
    {
      v15 = *DMCLogObjects();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        v16 = v15;
        v17 = [v2 dmc_personaIdentifier];
        v18 = [v2 identifier];
        v19 = [v2 accountType];
        v20 = [v19 identifier];
        v31 = 138543874;
        v32 = v17;
        v33 = 2114;
        v34 = v18;
        v35 = 2114;
        v36 = v20;
        v21 = "DMCAccountUtilities: Persona (%{public}@) for orphaned account (%{public}@, %{public}@) does not exist.";
LABEL_18:
        _os_log_impl(&dword_247E39000, v16, OS_LOG_TYPE_ERROR, v21, &v31, 0x20u);
      }

LABEL_19:
      v3 = 1;
      goto LABEL_20;
    }
  }

  v8 = [v2 dmc_remoteManagingAccountIdentifier];
  if (v8)
  {
    v9 = v8;
    v10 = [v2 dmc_remoteManagementAccount];

    if (!v10)
    {
      v28 = *DMCLogObjects();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        v16 = v28;
        v17 = [v2 dmc_remoteManagingAccountIdentifier];
        v18 = [v2 identifier];
        v19 = [v2 accountType];
        v20 = [v19 identifier];
        v31 = 138543874;
        v32 = v17;
        v33 = 2114;
        v34 = v18;
        v35 = 2114;
        v36 = v20;
        v21 = "DMCAccountUtilities: Remote Management account (%{public}@) for orphaned account (%{public}@, %{public}@) does not exist.";
        goto LABEL_18;
      }

      goto LABEL_19;
    }
  }

  v11 = [MEMORY[0x277D24648] sharedConfiguration];
  v12 = [v11 managingProfileIdentifier];

  v3 = [v2 dmc_managementProfileIdentifier];
  if (v3)
  {
    v13 = [v2 dmc_managementProfileIdentifier];
    v14 = [v12 isEqualToString:v13];

    if (v14)
    {
      v3 = 0;
    }

    else
    {
      v22 = *DMCLogObjects();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        v23 = v22;
        v24 = [v2 dmc_managementProfileIdentifier];
        v25 = [v2 identifier];
        v26 = [v2 accountType];
        v27 = [v26 identifier];
        v31 = 138543874;
        v32 = v24;
        v33 = 2114;
        v34 = v25;
        v35 = 2114;
        v36 = v27;
        _os_log_impl(&dword_247E39000, v23, OS_LOG_TYPE_ERROR, "DMCAccountUtilities: Enrollment profile (%{public}@) for orphaned account (%{public}@, %{public}@) does not exist.", &v31, 0x20u);
      }

      v3 = 1;
    }
  }

LABEL_20:
  v29 = *MEMORY[0x277D85DE8];
  return v3;
}

@end