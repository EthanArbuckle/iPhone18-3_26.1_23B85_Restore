@interface HDCachedSecureDeleteCKRecordJournalEntry
+ (void)applyEntries:(id)entries withProfile:(id)profile;
- (HDCachedSecureDeleteCKRecordJournalEntry)initWithCoder:(id)coder;
@end

@implementation HDCachedSecureDeleteCKRecordJournalEntry

+ (void)applyEntries:(id)entries withProfile:(id)profile
{
  v41 = *MEMORY[0x277D85DE8];
  entriesCopy = entries;
  profileCopy = profile;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  obj = entriesCopy;
  v7 = [obj countByEnumeratingWithState:&v32 objects:v40 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v33;
    while (2)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v33 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v32 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v12 = HDPredicateForRecordID([v11 recordID]);
          database = [profileCopy database];
          v31 = 0;
          v14 = [(HDHealthEntity *)HDCachedSecureCKRecordEntity deleteEntitiesWithPredicate:v12 healthDatabase:database error:&v31];
          v15 = v31;

          if (!v14)
          {
            _HKInitializeLogging();
            v16 = *MEMORY[0x277CCC2A0];
            if (os_log_type_enabled(*MEMORY[0x277CCC2A0], OS_LOG_TYPE_ERROR))
            {
              v26 = v16;
              v27 = objc_opt_class();
              *buf = 138543618;
              v37 = v27;
              v38 = 2114;
              v39 = v15;
              v28 = v27;
              _os_log_error_impl(&dword_228986000, v26, OS_LOG_TYPE_ERROR, "Failed to apply %{public}@: %{public}@", buf, 0x16u);
            }

            if ([v15 hk_isTransactionInterruptedError])
            {

              goto LABEL_19;
            }

            v17 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@", objc_opt_class()];
            daemon = [profileCopy daemon];
            autoBugCaptureReporter = [daemon autoBugCaptureReporter];
            [autoBugCaptureReporter reportJournalFailureWithErrorDescription:v17 provenance:0 error:v15];
          }
        }

        else
        {
          _HKInitializeLogging();
          v20 = *MEMORY[0x277CCC2A0];
          if (os_log_type_enabled(*MEMORY[0x277CCC2A0], OS_LOG_TYPE_ERROR))
          {
            v21 = v20;
            v22 = objc_opt_class();
            v23 = v22;
            v24 = objc_opt_class();
            *buf = 138543618;
            v37 = v22;
            v38 = 2114;
            v39 = v24;
            v25 = v24;
            _os_log_error_impl(&dword_228986000, v21, OS_LOG_TYPE_ERROR, "Attempt to apply entry of class %{public}@ via class %{public}@", buf, 0x16u);
          }
        }
      }

      v8 = [obj countByEnumeratingWithState:&v32 objects:v40 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

LABEL_19:

  v29 = *MEMORY[0x277D85DE8];
}

- (HDCachedSecureDeleteCKRecordJournalEntry)initWithCoder:(id)coder
{
  coderCopy = coder;
  v7.receiver = self;
  v7.super_class = HDCachedSecureDeleteCKRecordJournalEntry;
  v5 = [(HDJournalEntry *)&v7 initWithCoder:coderCopy];
  if (v5)
  {
    v5->_recordID = [coderCopy decodeInt64ForKey:@"journal_entry_record_id"];
  }

  return v5;
}

@end