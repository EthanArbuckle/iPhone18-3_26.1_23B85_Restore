@interface HDCloudSyncStateUpdater
+ (BOOL)persistDataWithStateStore:(id)a3 delegate:(id)a4 profile:(id)a5 error:(id *)a6;
+ (BOOL)updateDataWithStateStore:(id)a3 delegate:(id)a4 profile:(id)a5 transaction:(id)a6 error:(id *)a7;
+ (id)_descriptionForDelegate:(uint64_t)a1;
+ (uint64_t)_fetchCloudState:(HDCodableSyncState *)a3 codableSyncState:(void *)a4 stateStore:(void *)a5 profile:(void *)a6 delegate:(NSObject *)a7 error:;
+ (uint64_t)_persistCloudState:(void *)a3 delegate:(void *)a4 profile:(void *)a5 error:;
+ (uint64_t)_updateStateStore:(void *)a3 codableCloudState:(void *)a4 withMergeState:(void *)a5 profile:(void *)a6 delegate:(void *)a7 error:;
- (HDCloudSyncStateUpdater)init;
@end

@implementation HDCloudSyncStateUpdater

- (HDCloudSyncStateUpdater)init
{
  v3 = MEMORY[0x277CBEAD8];
  v4 = *MEMORY[0x277CBE660];
  v5 = NSStringFromSelector(a2);
  [v3 raise:v4 format:{@"The -%@ method is not available on %@", v5, objc_opt_class()}];

  return 0;
}

+ (BOOL)updateDataWithStateStore:(id)a3 delegate:(id)a4 profile:(id)a5 transaction:(id)a6 error:(id *)a7
{
  v16 = a3;
  v17 = a4;
  v18 = a5;
  v19 = a6;
  v10 = v19;
  v11 = v18;
  v12 = v17;
  v13 = v16;
  v14 = HKWithAutoreleasePool();

  return v14;
}

uint64_t __87__HDCloudSyncStateUpdater_updateDataWithStateStore_delegate_profile_transaction_error___block_invoke(uint64_t a1, NSObject **a2)
{
  v79 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v5 = *(a1 + 56);
  v6 = *(a1 + 32);
  v7 = v3;
  v8 = v4;
  v9 = v5;
  v10 = objc_opt_self();
  v71 = 0;
  v72 = 0;
  v11 = [v7 fetchLocalState:&v72 profile:v8 transaction:v9 error:&v71];
  v12 = v72;
  v13 = v71;
  if (v11)
  {
    v69 = 0;
    v70 = 0;
    v14 = [(HDCloudSyncStateUpdater *)v10 _fetchCloudState:&v69 codableSyncState:v6 stateStore:v8 profile:v7 delegate:a2 error:?];
    v15 = v70;
    v16 = v69;
    if (!v14)
    {
      v17 = 0;
      goto LABEL_52;
    }

    if (v14 == 2)
    {
      v17 = 1;
LABEL_52:

      goto LABEL_53;
    }

    v62 = v6;
    v63 = v16;
    v20 = v15;
    v61 = v12;
    v21 = v12;
    v66 = v8;
    v65 = v9;
    v68 = v7;
    v22 = v10;
    v59 = a2;
    v60 = objc_opt_self();
    v67 = v21;
    v64 = v20;
    if (v21)
    {
      if (v20)
      {
        v74 = 0;
        v73 = 0;
        v23 = [v68 shouldUpdateWithMergedState:&v74 cloudState:v20 localState:v21 profile:v66 transaction:v65 error:&v73];
        v24 = v74;
        v57 = v22;
        v58 = v73;
        v12 = v61;
        if (v23)
        {
          _HKInitializeLogging();
          v25 = *MEMORY[0x277CCC328];
          v26 = os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT);
          v6 = v62;
          if (v24)
          {
            if (v26)
            {
              v55 = v24;
              log = v25;
              v27 = [(HDCloudSyncStateUpdater *)v60 _descriptionForDelegate:v68];
              v28 = HKStringFromStateSyncMergeResult(v23);
              *buf = 138543618;
              v76 = v27;
              v77 = 2114;
              v78 = v28;
              _os_log_impl(&dword_228986000, log, OS_LOG_TYPE_DEFAULT, "%{public}@ merge result %{public}@", buf, 0x16u);

              v24 = v55;
            }

            v29 = v24;
            v30 = v24;
          }

          else
          {
            if (v26)
            {
              v48 = v25;
              v49 = [(HDCloudSyncStateUpdater *)v60 _descriptionForDelegate:v68];
              *buf = 138543362;
              v76 = v49;
              _os_log_impl(&dword_228986000, v48, OS_LOG_TYPE_DEFAULT, "%{public}@ merge state is nil, no update required", buf, 0xCu);
            }

            v30 = 0;
            v23 = 1;
          }
        }

        else
        {
          _HKInitializeLogging();
          v42 = *MEMORY[0x277CCC328];
          v6 = v62;
          if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
          {
            v53 = v42;
            v54 = [(HDCloudSyncStateUpdater *)v60 _descriptionForDelegate:v68];
            *buf = 138543618;
            v76 = v54;
            v77 = 2114;
            v78 = v58;
            _os_log_error_impl(&dword_228986000, v53, OS_LOG_TYPE_ERROR, "%{public}@ merge error: %{public}@", buf, 0x16u);
          }

          v43 = v58;
          v44 = v43;
          if (v43)
          {
            if (v59)
            {
              v45 = v43;
              *v59 = v44;
            }

            else
            {
              _HKLogDroppedError();
            }
          }

          v30 = 0;
          v23 = 0;
        }

        v10 = v57;
LABEL_43:

        v50 = v30;
        if (v23)
        {
          if (v23 == 1 || (v23 & 0xFFFFFFFFFFFFFFFELL) != 2)
          {
            goto LABEL_49;
          }

          if ([(HDCloudSyncStateUpdater *)v10 _persistCloudState:v50 delegate:v68 profile:v66 error:v59])
          {
            if (v23 == 3)
            {
              v17 = [(HDCloudSyncStateUpdater *)v10 _updateStateStore:v6 codableCloudState:v63 withMergeState:v50 profile:v66 delegate:v68 error:v59];
LABEL_51:

              v16 = v63;
              goto LABEL_52;
            }

LABEL_49:
            v17 = 1;
            goto LABEL_51;
          }
        }

        v17 = 0;
        goto LABEL_51;
      }

      _HKInitializeLogging();
      v37 = *MEMORY[0x277CCC328];
      v12 = v61;
      if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
      {
        v38 = v37;
        v39 = [(HDCloudSyncStateUpdater *)v60 _descriptionForDelegate:v68];
        *buf = 138543362;
        v76 = v39;
        _os_log_impl(&dword_228986000, v38, OS_LOG_TYPE_DEFAULT, "%{public}@ local state not nil and cloud state is nil, update cloud state", buf, 0xCu);
      }

      v36 = v67;
      v23 = 3;
    }

    else
    {
      _HKInitializeLogging();
      v31 = v20;
      v32 = *MEMORY[0x277CCC328];
      v33 = os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT);
      if (!v31)
      {
        v12 = v61;
        if (v33)
        {
          v46 = v32;
          v47 = [(HDCloudSyncStateUpdater *)v60 _descriptionForDelegate:v68];
          *buf = 138543362;
          v76 = v47;
          _os_log_impl(&dword_228986000, v46, OS_LOG_TYPE_DEFAULT, "%{public}@ local state and cloud state are nil, no merge required", buf, 0xCu);
        }

        v30 = 0;
        v23 = 1;
        goto LABEL_36;
      }

      v12 = v61;
      if (v33)
      {
        v34 = v32;
        v35 = [(HDCloudSyncStateUpdater *)v60 _descriptionForDelegate:v68];
        *buf = 138543362;
        v76 = v35;
        _os_log_impl(&dword_228986000, v34, OS_LOG_TYPE_DEFAULT, "%{public}@ local state nil and cloud state not nil, persist cloud state", buf, 0xCu);
      }

      v36 = v64;
      v23 = 2;
    }

    v30 = v36;
LABEL_36:
    v6 = v62;
    goto LABEL_43;
  }

  _HKInitializeLogging();
  v18 = *MEMORY[0x277CCC328];
  if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
  {
    v40 = v18;
    v41 = [(HDCloudSyncStateUpdater *)v10 _descriptionForDelegate:v7];
    *buf = 138543618;
    v76 = v41;
    v77 = 2114;
    v78 = v13;
    _os_log_error_impl(&dword_228986000, v40, OS_LOG_TYPE_ERROR, "%{public}@ fetch local state error: %{public}@", buf, 0x16u);
  }

  v15 = v13;
  if (!v15)
  {
    goto LABEL_19;
  }

  if (!a2)
  {
    _HKLogDroppedError();
LABEL_19:
    v17 = 0;
    goto LABEL_53;
  }

  v19 = v15;
  v17 = 0;
  *a2 = v15;
LABEL_53:

  v51 = *MEMORY[0x277D85DE8];
  return v17;
}

+ (BOOL)persistDataWithStateStore:(id)a3 delegate:(id)a4 profile:(id)a5 error:(id *)a6
{
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v8 = v15;
  v9 = v14;
  v10 = v13;
  v11 = HKWithAutoreleasePool();

  return v11;
}

uint64_t __76__HDCloudSyncStateUpdater_persistDataWithStateStore_delegate_profile_error___block_invoke(uint64_t a1, NSObject **a2)
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 32);
  v4 = *(a1 + 48);
  v5 = *(a1 + 40);
  v6 = v4;
  v7 = v3;
  v8 = objc_opt_self();
  v18 = 0;
  v9 = [(HDCloudSyncStateUpdater *)v8 _fetchCloudState:0 codableSyncState:v7 stateStore:v6 profile:v5 delegate:a2 error:?];

  v10 = v18;
  v11 = v10;
  if (v9 == 1)
  {
    if (v10)
    {
      v12 = [(HDCloudSyncStateUpdater *)v8 _persistCloudState:v10 delegate:v5 profile:v6 error:a2];
    }

    else
    {
      _HKInitializeLogging();
      v13 = *MEMORY[0x277CCC328];
      if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
      {
        v14 = v13;
        v15 = [(HDCloudSyncStateUpdater *)v8 _descriptionForDelegate:v5];
        *buf = 138543362;
        v20 = v15;
        _os_log_impl(&dword_228986000, v14, OS_LOG_TYPE_DEFAULT, "%{public}@ no cloud state to perist", buf, 0xCu);
      }

      v12 = 1;
    }
  }

  else
  {
    v12 = 0;
  }

  v16 = *MEMORY[0x277D85DE8];
  return v12;
}

+ (id)_descriptionForDelegate:(uint64_t)a1
{
  v2 = a2;
  objc_opt_self();
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = objc_opt_class();
  v6 = [v2 domain];
  v7 = [v2 key];
  v8 = [v3 stringWithFormat:@"[%@:%@:%p (%@, %@)]", v4, v5, v2, v6, v7];

  return v8;
}

+ (uint64_t)_fetchCloudState:(HDCodableSyncState *)a3 codableSyncState:(void *)a4 stateStore:(void *)a5 profile:(void *)a6 delegate:(NSObject *)a7 error:
{
  v68 = *MEMORY[0x277D85DE8];
  v10 = a5;
  v11 = a6;
  v12 = a4;
  v13 = objc_opt_self();
  v14 = [v11 domain];
  v15 = [v11 key];
  v16 = [v11 supportedSyncVersionRange];
  v58 = 0;
  v59 = 0;
  v17 = [v12 data:&v59 forKey:v15 error:&v58];

  v18 = v59;
  v19 = v58;
  if ((v17 & 1) == 0)
  {
    _HKInitializeLogging();
    v27 = *MEMORY[0x277CCC328];
    if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
    {
      v44 = v27;
      v45 = [(HDCloudSyncStateUpdater *)v13 _descriptionForDelegate:v11];
      *buf = 138543618;
      v61 = v45;
      v62 = 2114;
      *v63 = v19;
      _os_log_error_impl(&dword_228986000, v44, OS_LOG_TYPE_ERROR, "%{public}@ state store data fetch error: %{public}@", buf, 0x16u);
    }

    v28 = v19;
    v21 = v28;
    if (v28)
    {
      if (a7)
      {
        v29 = v28;
        v30 = 0;
        *a7 = &v21->super.super;
LABEL_42:

        goto LABEL_43;
      }

      _HKLogDroppedError();
    }

    v30 = 0;
    goto LABEL_42;
  }

  if (v18)
  {
    v52 = v13;
    v20 = [[HDCodableSyncState alloc] initWithData:v18];
    v21 = v20;
    v54 = v10;
    if (!v20)
    {
      v31 = MEMORY[0x277CCA9B8];
      v32 = [v11 domain];
      v33 = [v11 key];
      [v31 hk_assignError:a7 code:129 format:{@"Unable to decode state sync data for domain %@ key %@", v32, v33}];

LABEL_24:
      v30 = 0;
LABEL_41:

      v10 = v54;
      goto LABEL_42;
    }

    v22 = [(HDCodableSyncState *)v20 domain];
    v23 = v22;
    v53 = v19;
    if (v22 == v14)
    {
    }

    else
    {
      if (!v14)
      {

LABEL_23:
        v39 = MEMORY[0x277CCA9B8];
        v32 = [(HDCodableSyncState *)v21 key];
        [v39 hk_assignError:a7 code:129 format:{@"Serialized domain %@ does not matched expected value %@", v32, v14}];
        goto LABEL_24;
      }

      [(HDCodableSyncState *)v21 domain];
      v25 = v24 = v14;
      v26 = [v25 isEqualToString:v24];

      v14 = v24;
      v19 = v53;

      if ((v26 & 1) == 0)
      {
        goto LABEL_23;
      }
    }

    v34 = [(HDCodableSyncState *)v21 key];
    v35 = v34;
    v36 = v14;
    if (v34 == v15)
    {
    }

    else
    {
      if (!v15)
      {

LABEL_38:
        v46 = MEMORY[0x277CCA9B8];
        v32 = [(HDCodableSyncState *)v21 key];
        v14 = v36;
        [v46 hk_assignError:a7 code:129 format:{@"Serialized key %@ does not matched %@ for domain %@", v32, v15, v36}];
        v30 = 0;
        goto LABEL_40;
      }

      v37 = [(HDCodableSyncState *)v21 key];
      v38 = [v37 isEqualToString:v15];

      if ((v38 & 1) == 0)
      {
        goto LABEL_38;
      }
    }

    if ([(HDCodableSyncState *)v21 versionRange]<= SHIDWORD(v16))
    {
      if (a3)
      {
        v41 = v21;
        *a3 = v21;
      }

      v57 = 0;
      v30 = [v11 fetchCloudState:a2 codableSyncState:v21 profile:v54 error:&v57];
      v32 = v57;
      v14 = v36;
      if (!v30)
      {
        _HKInitializeLogging();
        v42 = *MEMORY[0x277CCC328];
        v19 = v53;
        if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
        {
          v49 = v42;
          [(HDCloudSyncStateUpdater *)v52 _descriptionForDelegate:v11];
          v51 = v50 = v14;
          *buf = 138543618;
          v61 = v51;
          v62 = 2114;
          *v63 = v32;
          _os_log_error_impl(&dword_228986000, v49, OS_LOG_TYPE_ERROR, "%{public}@ decode cloud state error: %{public}@", buf, 0x16u);

          v14 = v50;
          v19 = v53;
        }

        v32 = v32;
        if (v32)
        {
          if (a7)
          {
            v43 = v32;
            *a7 = v32;
          }

          else
          {
            _HKLogDroppedError();
          }
        }

        goto LABEL_24;
      }
    }

    else
    {
      _HKInitializeLogging();
      v32 = HKLogMedication();
      if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
      {
        v40 = [(HDCodableSyncState *)v21 versionRange];
        *buf = 138544386;
        v61 = v52;
        v62 = 1024;
        *v63 = v40;
        *&v63[4] = 1024;
        *&v63[6] = HIDWORD(v16);
        v64 = 2114;
        v14 = v36;
        v65 = v36;
        v66 = 2114;
        v67 = v15;
        _os_log_impl(&dword_228986000, v32, OS_LOG_TYPE_DEFAULT, "[%{public}@] Codable state has minimum version %d but current version for OS is %d for (%{public}@, %{public}@) ", buf, 0x2Cu);
        v30 = 2;
      }

      else
      {
        v30 = 2;
        v14 = v36;
      }
    }

LABEL_40:
    v19 = v53;
    goto LABEL_41;
  }

  v30 = 1;
LABEL_43:

  v47 = *MEMORY[0x277D85DE8];
  return v30;
}

+ (uint64_t)_persistCloudState:(void *)a3 delegate:(void *)a4 profile:(void *)a5 error:
{
  v30 = *MEMORY[0x277D85DE8];
  v8 = a2;
  v9 = a3;
  v10 = a4;
  v11 = objc_opt_self();
  _HKInitializeLogging();
  v12 = MEMORY[0x277CCC328];
  v13 = *MEMORY[0x277CCC328];
  if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
  {
    v14 = v13;
    v15 = [(HDCloudSyncStateUpdater *)v11 _descriptionForDelegate:v9];
    *buf = 138543618;
    v27 = v15;
    v28 = 2114;
    v29 = objc_opt_class();
    _os_log_impl(&dword_228986000, v14, OS_LOG_TYPE_DEFAULT, "%{public}@ persist cloud state %{public}@", buf, 0x16u);
  }

  v25 = 0;
  v16 = [v9 persistCloudState:v8 profile:v10 error:&v25];

  v17 = v25;
  if ((v16 & 1) == 0)
  {
    _HKInitializeLogging();
    v18 = *v12;
    if (os_log_type_enabled(*v12, OS_LOG_TYPE_ERROR))
    {
      v23 = v18;
      v24 = [(HDCloudSyncStateUpdater *)v11 _descriptionForDelegate:v9];
      *buf = 138543618;
      v27 = v24;
      v28 = 2114;
      v29 = v17;
      _os_log_error_impl(&dword_228986000, v23, OS_LOG_TYPE_ERROR, "%{public}@ perist cloud state error: %{public}@", buf, 0x16u);
    }

    v19 = v17;
    if (v19)
    {
      if (a5)
      {
        v20 = v19;
        *a5 = v19;
      }

      else
      {
        _HKLogDroppedError();
      }
    }
  }

  v21 = *MEMORY[0x277D85DE8];
  return v16;
}

+ (uint64_t)_updateStateStore:(void *)a3 codableCloudState:(void *)a4 withMergeState:(void *)a5 profile:(void *)a6 delegate:(void *)a7 error:
{
  v51 = *MEMORY[0x277D85DE8];
  v12 = a2;
  v13 = a3;
  v14 = a6;
  v15 = a5;
  v16 = a4;
  v17 = objc_opt_self();
  if (v13)
  {
    v18 = v13;
  }

  else
  {
    v19 = v14;
    objc_opt_self();
    v18 = objc_alloc_init(HDCodableSyncState);
    v20 = [v19 domain];
    [(HDCodableSyncState *)v18 setDomain:v20];

    v21 = [v19 key];

    [(HDCodableSyncState *)v18 setKey:v21];
  }

  -[HDCodableSyncState setVersionRange:](v18, "setVersionRange:", [v14 supportedSyncVersionRange]);
  v46 = 0;
  v22 = [v14 updateCodableSyncState:v18 withMergeState:v16 profile:v15 error:&v46];

  v23 = v46;
  if ((v22 & 1) == 0)
  {
    _HKInitializeLogging();
    v36 = *MEMORY[0x277CCC328];
    if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
    {
      v40 = v36;
      v41 = [(HDCloudSyncStateUpdater *)v17 _descriptionForDelegate:v14];
      *buf = 138543618;
      v48 = v41;
      v49 = 2114;
      v50 = v23;
      _os_log_error_impl(&dword_228986000, v40, OS_LOG_TYPE_ERROR, "%{public}@ update codable sync state error: %{public}@", buf, 0x16u);
    }

    v24 = v23;
    if (v24)
    {
      if (a7)
      {
        v37 = v24;
        v30 = 0;
        *a7 = v24;
        goto LABEL_23;
      }

      _HKLogDroppedError();
    }

    v30 = 0;
    goto LABEL_23;
  }

  v44 = a7;
  v24 = [(HDCodableSyncState *)v18 data];
  _HKInitializeLogging();
  v25 = *MEMORY[0x277CCC328];
  if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
  {
    v26 = v25;
    v27 = [(HDCloudSyncStateUpdater *)v17 _descriptionForDelegate:v14];
    v28 = [v24 length];
    *buf = 138543618;
    v48 = v27;
    v49 = 2048;
    v50 = v28;
    _os_log_impl(&dword_228986000, v26, OS_LOG_TYPE_DEFAULT, "%{public}@ update cloud state with %ld bytes of data", buf, 0x16u);
  }

  v29 = [v14 key];
  v45 = 0;
  v30 = [v12 setData:v24 forKey:v29 error:&v45];
  v31 = v45;

  if ((v30 & 1) == 0)
  {
    _HKInitializeLogging();
    v32 = *MEMORY[0x277CCC328];
    if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
    {
      v42 = v32;
      v43 = [(HDCloudSyncStateUpdater *)v17 _descriptionForDelegate:v14];
      *buf = 138543618;
      v48 = v43;
      v49 = 2114;
      v50 = v31;
      _os_log_error_impl(&dword_228986000, v42, OS_LOG_TYPE_ERROR, "%{public}@ state store data set error: %{public}@", buf, 0x16u);
    }

    v33 = v31;
    v34 = v33;
    if (v33)
    {
      if (v44)
      {
        v35 = v33;
        *v44 = v34;
      }

      else
      {
        _HKLogDroppedError();
      }
    }
  }

LABEL_23:
  v38 = *MEMORY[0x277D85DE8];
  return v30;
}

@end