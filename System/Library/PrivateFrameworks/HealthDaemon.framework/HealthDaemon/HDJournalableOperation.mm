@interface HDJournalableOperation
+ (void)applyEntries:(id)entries withProfile:(id)profile;
- (BOOL)performOrJournalWithProfile:(id)profile error:(id *)error;
- (BOOL)performWithProfile:(id)profile transaction:(id)transaction error:(id *)error;
- (HDJournalableOperation)initWithCoder:(id)coder;
@end

@implementation HDJournalableOperation

+ (void)applyEntries:(id)entries withProfile:(id)profile
{
  v29 = *MEMORY[0x277D85DE8];
  entriesCopy = entries;
  profileCopy = profile;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v7 = [entriesCopy countByEnumeratingWithState:&v20 objects:v28 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v21;
    do
    {
      v10 = 0;
      do
      {
        if (*v21 != v9)
        {
          objc_enumerationMutation(entriesCopy);
        }

        v11 = *(*(&v20 + 1) + 8 * v10);
        v19 = 0;
        v12 = [v11 performOrJournalWithProfile:profileCopy error:&v19];
        v13 = v19;
        if ((v12 & 1) == 0)
        {
          _HKInitializeLogging();
          v14 = *MEMORY[0x277CCC2A0];
          if (os_log_type_enabled(*MEMORY[0x277CCC2A0], OS_LOG_TYPE_ERROR))
          {
            *buf = 138543618;
            v25 = v11;
            v26 = 2114;
            v27 = v13;
            _os_log_error_impl(&dword_228986000, v14, OS_LOG_TYPE_ERROR, "%{public}@: Failed to perform during journal merge: %{public}@", buf, 0x16u);
          }

          v15 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@", objc_opt_class()];
          daemon = [profileCopy daemon];
          autoBugCaptureReporter = [daemon autoBugCaptureReporter];
          [autoBugCaptureReporter reportJournalFailureWithErrorDescription:v15 provenance:0 error:v13];
        }

        ++v10;
      }

      while (v8 != v10);
      v8 = [entriesCopy countByEnumeratingWithState:&v20 objects:v28 count:16];
    }

    while (v8);
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (BOOL)performOrJournalWithProfile:(id)profile error:(id *)error
{
  profileCopy = profile;
  database = [profileCopy database];
  transactionContext = [(HDJournalableOperation *)self transactionContext];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __60__HDJournalableOperation_performOrJournalWithProfile_error___block_invoke;
  v14[3] = &unk_278613218;
  v14[4] = self;
  v15 = profileCopy;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __60__HDJournalableOperation_performOrJournalWithProfile_error___block_invoke_2;
  v12[3] = &unk_278616F88;
  v12[4] = self;
  v13 = v15;
  v9 = v15;
  v10 = [database performTransactionWithContext:transactionContext error:error block:v14 inaccessibilityHandler:v12];

  if ((v10 & 1) == 0)
  {
    self->_didJournal = 0;
  }

  return v10;
}

uint64_t __60__HDJournalableOperation_performOrJournalWithProfile_error___block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(*(a1 + 32) + 8) = 1;
  v5 = [*(a1 + 40) database];
  v6 = [v5 addJournalEntry:*(a1 + 32) error:a3];

  return v6;
}

- (BOOL)performWithProfile:(id)profile transaction:(id)transaction error:(id *)error
{
  objc_opt_class();
  NSRequestConcreteImplementation();
  return 0;
}

- (HDJournalableOperation)initWithCoder:(id)coder
{
  coderCopy = coder;
  v7.receiver = self;
  v7.super_class = HDJournalableOperation;
  v5 = [(HDJournalableOperation *)&v7 init];
  if (v5)
  {
    v5->_didJournal = [coderCopy decodeBoolForKey:@"didJournal"];
  }

  return v5;
}

@end