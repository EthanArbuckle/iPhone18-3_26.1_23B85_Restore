@interface HDDataEntitySyncMessageBuilder
@end

@implementation HDDataEntitySyncMessageBuilder

uint64_t __68___HDDataEntitySyncMessageBuilder__addEntity_row_anchor_provenance___block_invoke(void *a1, void *a2, unint64_t a3, uint64_t a4, void *a5)
{
  v49 = *MEMORY[0x277D85DE8];
  v8 = a2;
  v9 = a1[4];
  if ((*(v9 + 80) + a3) > *(v9 + 64))
  {
    *(*(a1[6] + 8) + 24) = 1;
    v9 = a1[4];
    if (*(*(a1[7] + 8) + 24) & 1) == 0 && (*(v9 + 112))
    {
      v10 = 1;
      goto LABEL_39;
    }
  }

  v11 = *(v9 + 88);
  v12 = *(v9 + 104) >= 1 && a1[8] != *(v9 + 96);
  v10 = 0;
  v39 = a5;
  if (((v11 + a3) > *(v9 + 72) || v12) && v11 >= 1)
  {
    v42 = 0;
    v13 = [(_HDDataEntitySyncMessageBuilder *)v9 _sendCurrentCollectionIsFinal:&v42 error:?];
    v14 = v42;
    v15 = 0;
    v16 = a1[4];
    if (a1[8] == *(v16 + 96))
    {
      v15 = *(v16 + 104) + 1;
    }

    *(v16 + 104) = v15;
    if (v13)
    {
      v10 = 0;
    }

    else
    {
      _HKInitializeLogging();
      v17 = *MEMORY[0x277CCC328];
      if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
      {
        v38 = a1[4];
        *buf = 138543618;
        v44 = v38;
        v45 = 2114;
        v46 = v14;
        _os_log_error_impl(&dword_228986000, v17, OS_LOG_TYPE_ERROR, "%{public}@: failed to send current collection: %{public}@", buf, 0x16u);
      }

      v18 = v14;
      if (v18)
      {
        if (a5)
        {
          v19 = v18;
          *a5 = v18;
        }

        else
        {
          _HKLogDroppedError();
        }
      }

      v10 = 2;
    }

    v9 = a1[4];
  }

  v20 = a1[8];
  v21 = a1[5];
  v40 = v8;
  v41 = 0;
  v22 = v8;
  v23 = v21;
  if (v9)
  {
    v24 = *(v9 + 16);
    v25 = *(v9 + 32);
    WeakRetained = objc_loadWeakRetained((v9 + 8));
    v27 = [v25 codableObjectCollectionForProvenance:v23 profile:WeakRetained];
    LOBYTE(v24) = [v24 addCodableObject:v22 toCollection:v27];

    if ((v24 & 1) == 0)
    {
      [MEMORY[0x277CCA9B8] hk_assignError:&v41 code:100 format:@"Failed to add codable representation to object collection"];
      v29 = 0;
      v28 = 2;
      goto LABEL_27;
    }

    v28 = 0;
    *(v9 + 80) = vaddq_s64(*(v9 + 80), vdupq_n_s64(a3));
    *(v9 + 96) = v20;
  }

  else
  {
    v28 = 0;
  }

  v29 = 1;
LABEL_27:

  v30 = v41;
  if (v29)
  {
    *(a1[4] + 112) = 1;
    *(*(a1[7] + 8) + 24) = 1;
  }

  else
  {
    _HKInitializeLogging();
    v31 = *MEMORY[0x277CCC328];
    if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
    {
      v36 = a1[4];
      v37 = a1[8];
      *buf = 138543874;
      v44 = v36;
      v45 = 2048;
      v46 = v37;
      v47 = 2114;
      v48 = v30;
      _os_log_error_impl(&dword_228986000, v31, OS_LOG_TYPE_ERROR, "%{public}@: failed to add codable representation for anchor %lld: %{public}@", buf, 0x20u);
    }

    v32 = v30;
    if (v32)
    {
      if (v39)
      {
        v33 = v32;
        *v39 = v32;
      }

      else
      {
        _HKLogDroppedError();
      }
    }
  }

  if (!v10)
  {
    v10 = v28;
  }

  v8 = v40;
LABEL_39:

  v34 = *MEMORY[0x277D85DE8];
  return v10;
}

@end