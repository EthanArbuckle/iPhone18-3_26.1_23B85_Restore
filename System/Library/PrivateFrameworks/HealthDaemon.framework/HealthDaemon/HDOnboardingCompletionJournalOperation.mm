@interface HDOnboardingCompletionJournalOperation
+ (void)applyEntries:(id)entries withProfile:(id)profile;
- (BOOL)performOrJournalWithProfile:(id)profile error:(id *)error;
- (HDOnboardingCompletionJournalOperation)initWithCodableOnboardingCompletions:(id)completions syncProvenance:(int64_t)provenance;
- (HDOnboardingCompletionJournalOperation)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HDOnboardingCompletionJournalOperation

+ (void)applyEntries:(id)entries withProfile:(id)profile
{
  v30 = *MEMORY[0x277D85DE8];
  entriesCopy = entries;
  profileCopy = profile;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v7 = entriesCopy;
  v8 = [v7 countByEnumeratingWithState:&v21 objects:v29 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v22;
    while (2)
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v22 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v21 + 1) + 8 * i);
        v20 = 0;
        v13 = [v12 performOrJournalWithProfile:profileCopy error:&v20];
        v14 = v20;
        if ((v13 & 1) == 0)
        {
          _HKInitializeLogging();
          v15 = *MEMORY[0x277CCC2A0];
          if (os_log_type_enabled(*MEMORY[0x277CCC2A0], OS_LOG_TYPE_ERROR))
          {
            *buf = 138543618;
            v26 = v12;
            v27 = 2114;
            v28 = v14;
            _os_log_error_impl(&dword_228986000, v15, OS_LOG_TYPE_ERROR, "%{public}@: Failed to perform during journal merge: %{public}@", buf, 0x16u);
          }

          if ([v14 hk_isTransactionInterruptedError])
          {

            goto LABEL_15;
          }

          v16 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@", v12];
          daemon = [profileCopy daemon];
          autoBugCaptureReporter = [daemon autoBugCaptureReporter];
          [autoBugCaptureReporter reportJournalFailureWithErrorDescription:v16 provenance:0 error:v14];
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v21 objects:v29 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

LABEL_15:

  v19 = *MEMORY[0x277D85DE8];
}

- (HDOnboardingCompletionJournalOperation)initWithCodableOnboardingCompletions:(id)completions syncProvenance:(int64_t)provenance
{
  completionsCopy = completions;
  v11.receiver = self;
  v11.super_class = HDOnboardingCompletionJournalOperation;
  v8 = [(HDOnboardingCompletionJournalOperation *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_codableOnboardingCompletions, completions);
    v9->_syncProvenance = provenance;
  }

  return v9;
}

- (BOOL)performOrJournalWithProfile:(id)profile error:(id *)error
{
  profileCopy = profile;
  onboardingCompletionManager = [profileCopy onboardingCompletionManager];
  codableOnboardingCompletions = self->_codableOnboardingCompletions;
  syncProvenance = self->_syncProvenance;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __76__HDOnboardingCompletionJournalOperation_performOrJournalWithProfile_error___block_invoke;
  v15[3] = &unk_278616F88;
  v16 = profileCopy;
  selfCopy = self;
  v10 = profileCopy;
  v11 = codableOnboardingCompletions;
  v12 = v11;
  if (onboardingCompletionManager)
  {
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __113__HDOnboardingCompletionManager__insertCodableOnboardingCompletions_syncProvenance_error_inaccessabilityHandler___block_invoke;
    v18[3] = &unk_27861B080;
    v20 = onboardingCompletionManager;
    v21 = syncProvenance;
    v19 = v11;
    v13 = [(HDOnboardingCompletionManager *)onboardingCompletionManager _performWriteTransactionAndNotifyObserversWithError:error block:v18 inaccessibilityHandler:v15];
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

uint64_t __76__HDOnboardingCompletionJournalOperation_performOrJournalWithProfile_error___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = [*(a1 + 32) database];
  v6 = [v5 addJournalEntry:*(a1 + 40) error:a3];

  return v6;
}

- (void)encodeWithCoder:(id)coder
{
  codableOnboardingCompletions = self->_codableOnboardingCompletions;
  coderCopy = coder;
  [coderCopy encodeObject:codableOnboardingCompletions forKey:@"onboardingCompletions"];
  [coderCopy encodeInt64:self->_syncProvenance forKey:@"syncProvenance"];
}

- (HDOnboardingCompletionJournalOperation)initWithCoder:(id)coder
{
  coderCopy = coder;
  v12.receiver = self;
  v12.super_class = HDOnboardingCompletionJournalOperation;
  v5 = [(HDJournalEntry *)&v12 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = MEMORY[0x277CBEB98];
    v7 = objc_opt_class();
    v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
    v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"onboardingCompletions"];
    codableOnboardingCompletions = v5->_codableOnboardingCompletions;
    v5->_codableOnboardingCompletions = v9;

    v5->_syncProvenance = [coderCopy decodeInt64ForKey:@"syncProvenance"];
  }

  return v5;
}

@end