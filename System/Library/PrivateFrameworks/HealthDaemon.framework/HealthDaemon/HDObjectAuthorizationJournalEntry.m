@interface HDObjectAuthorizationJournalEntry
+ (void)applyEntries:(id)a3 withProfile:(id)a4;
- (HDObjectAuthorizationJournalEntry)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation HDObjectAuthorizationJournalEntry

+ (void)applyEntries:(id)a3 withProfile:(id)a4
{
  v52 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v7 = v5;
  v8 = [v7 countByEnumeratingWithState:&v43 objects:v51 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v44;
    v11 = off_27860F000;
    while (2)
    {
      v12 = 0;
      v41 = v9;
      do
      {
        if (*v44 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v13 = *(*(&v43 + 1) + 8 * v12);
        v14 = v11[10];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v15 = [v6 syncIdentityManager];
          v16 = [v15 legacySyncIdentity];
          v17 = [v16 entity];
          v18 = [v17 persistentID];

          if ([v13 syncIdentity] != -1)
          {
            v18 = [v13 syncIdentity];
          }

          v19 = [v13 records];
          v20 = [v13 syncProvenance];
          v42 = 0;
          v21 = [HDObjectAuthorizationEntity setObjectAuthorizationRecords:v19 syncProvenance:v20 syncIdentity:v18 profile:v6 error:&v42];
          v22 = v42;

          if (!v21)
          {
            _HKInitializeLogging();
            v23 = *MEMORY[0x277CCC2A0];
            if (os_log_type_enabled(*MEMORY[0x277CCC2A0], OS_LOG_TYPE_ERROR))
            {
              v37 = v23;
              v38 = objc_opt_class();
              *buf = 138543618;
              v48 = v38;
              v49 = 2114;
              v50 = v22;
              v39 = v38;
              _os_log_error_impl(&dword_228986000, v37, OS_LOG_TYPE_ERROR, "Failed to apply %{public}@: %{public}@", buf, 0x16u);
            }

            if ([v22 hk_isTransactionInterruptedError])
            {

              goto LABEL_21;
            }

            v24 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@", objc_opt_class()];
            v25 = [v6 daemon];
            v26 = [v25 autoBugCaptureReporter];
            v27 = v6;
            v28 = v10;
            v29 = v7;
            v30 = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(v13, "syncProvenance")}];
            [v26 reportJournalFailureWithErrorDescription:v24 provenance:v30 error:v22];

            v7 = v29;
            v10 = v28;
            v6 = v27;
            v11 = off_27860F000;
          }

          v9 = v41;
        }

        else
        {
          _HKInitializeLogging();
          v31 = *MEMORY[0x277CCC2A0];
          if (os_log_type_enabled(*MEMORY[0x277CCC2A0], OS_LOG_TYPE_ERROR))
          {
            v32 = v31;
            v33 = objc_opt_class();
            v34 = v33;
            v35 = objc_opt_class();
            *buf = 138543618;
            v48 = v33;
            v49 = 2114;
            v50 = v35;
            v36 = v35;
            _os_log_error_impl(&dword_228986000, v32, OS_LOG_TYPE_ERROR, "Attempt to apply entry of class %{public}@ via class %{public}@", buf, 0x16u);
          }
        }

        ++v12;
      }

      while (v9 != v12);
      v9 = [v7 countByEnumeratingWithState:&v43 objects:v51 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

LABEL_21:

  v40 = *MEMORY[0x277D85DE8];
}

- (HDObjectAuthorizationJournalEntry)initWithCoder:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = HDObjectAuthorizationJournalEntry;
  v5 = [(HDJournalEntry *)&v14 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 containsValueForKey:@"records"];
    v7 = MEMORY[0x277CBEB98];
    v8 = objc_opt_class();
    [v7 setWithObjects:{v8, objc_opt_class(), 0}];
    if (v6)
      v9 = {;
      v10 = [v4 decodeObjectOfClasses:v9 forKey:@"records"];

      [v10 hk_map:&__block_literal_global_170];
    }

    else
      v10 = {;
      [v4 decodeObjectOfClasses:v10 forKey:@"expectedRecords"];
    }
    v11 = ;
    records = v5->_records;
    v5->_records = v11;

    v5->_syncProvenance = [v4 decodeInt64ForKey:@"sp"];
    v5->_syncIdentity = -1;
    if ([v4 containsValueForKey:@"syncIdentity"])
    {
      v5->_syncIdentity = [v4 decodeInt64ForKey:@"syncIdentity"];
    }
  }

  return v5;
}

id __51__HDObjectAuthorizationJournalEntry_initWithCoder___block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277CCD710];
  v3 = a2;
  v4 = objc_alloc_init(v2);
  v5 = [v3 objectUUID];
  [v4 setObjectUUID:v5];

  v6 = [v3 sourceUUID];
  [v4 setSourceUUID:v6];

  [v4 setStatus:{objc_msgSend(v3, "status")}];
  [v3 modificationDate];
  [v4 setModificationDate:?];
  v7 = [v3 sessionUUID];

  [v4 setSessionUUID:v7];

  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  records = self->_records;
  v5 = a3;
  [v5 encodeObject:records forKey:@"expectedRecords"];
  [v5 encodeInt64:self->_syncProvenance forKey:@"sp"];
  [v5 encodeInt64:self->_syncIdentity forKey:@"syncIdentity"];
}

@end