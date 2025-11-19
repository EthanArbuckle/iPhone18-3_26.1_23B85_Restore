@interface HDCachedSecureCKRecordJournalEntry
+ (void)applyEntries:(id)a3 withProfile:(id)a4;
- (HDCachedSecureCKRecordJournalEntry)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation HDCachedSecureCKRecordJournalEntry

+ (void)applyEntries:(id)a3 withProfile:(id)a4
{
  v41 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v7 = v5;
  v8 = [v7 countByEnumeratingWithState:&v32 objects:v40 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v33;
    while (2)
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v33 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v32 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v13 = [v12 recordID];
          v14 = [v12 recordData];
          v31 = 0;
          v15 = [HDCachedSecureCKRecordEntity insertOrUpdateWithRecordID:v13 recordData:v14 profile:v6 error:&v31];
          v16 = v31;

          if (!v15)
          {
            _HKInitializeLogging();
            v17 = *MEMORY[0x277CCC2A0];
            if (os_log_type_enabled(*MEMORY[0x277CCC2A0], OS_LOG_TYPE_ERROR))
            {
              v27 = v17;
              v28 = objc_opt_class();
              *buf = 138543618;
              v37 = v28;
              v38 = 2114;
              v39 = v16;
              v29 = v28;
              _os_log_error_impl(&dword_228986000, v27, OS_LOG_TYPE_ERROR, "Failed to apply %{public}@: %{public}@", buf, 0x16u);
            }

            if ([v16 hk_isTransactionInterruptedError])
            {

              goto LABEL_19;
            }

            v18 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@", objc_opt_class()];
            v19 = [v6 daemon];
            v20 = [v19 autoBugCaptureReporter];
            [v20 reportJournalFailureWithErrorDescription:v18 provenance:0 error:v16];
          }
        }

        else
        {
          _HKInitializeLogging();
          v21 = *MEMORY[0x277CCC2A0];
          if (os_log_type_enabled(*MEMORY[0x277CCC2A0], OS_LOG_TYPE_ERROR))
          {
            v22 = v21;
            v23 = objc_opt_class();
            v24 = v23;
            v25 = objc_opt_class();
            *buf = 138543618;
            v37 = v23;
            v38 = 2114;
            v39 = v25;
            v26 = v25;
            _os_log_error_impl(&dword_228986000, v22, OS_LOG_TYPE_ERROR, "Attempt to apply entry of class %{public}@ via class %{public}@", buf, 0x16u);
          }
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v32 objects:v40 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

LABEL_19:

  v30 = *MEMORY[0x277D85DE8];
}

- (HDCachedSecureCKRecordJournalEntry)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = HDCachedSecureCKRecordJournalEntry;
  v5 = [(HDJournalEntry *)&v9 initWithCoder:v4];
  if (v5)
  {
    v5->_recordID = [v4 decodeInt64ForKey:@"journal_entry_record_id"];
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"journal_entry_record_data"];
    recordData = v5->_recordData;
    v5->_recordData = v6;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  recordID = self->_recordID;
  v5 = a3;
  [v5 encodeInt64:recordID forKey:@"journal_entry_record_id"];
  [v5 encodeObject:self->_recordData forKey:@"journal_entry_record_data"];
}

@end