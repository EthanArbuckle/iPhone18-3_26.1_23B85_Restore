@interface _HDUserDefaultUpdatedJournalEntry
+ (void)applyEntries:(id)entries withProfile:(id)profile;
- (_HDUserDefaultUpdatedJournalEntry)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation _HDUserDefaultUpdatedJournalEntry

+ (void)applyEntries:(id)entries withProfile:(id)profile
{
  v10 = *MEMORY[0x277D85DE8];
  _HKInitializeLogging();
  v4 = *MEMORY[0x277CCC2A0];
  if (os_log_type_enabled(*MEMORY[0x277CCC2A0], OS_LOG_TYPE_ERROR))
  {
    v6 = v4;
    v8 = 138543362;
    v9 = objc_opt_class();
    v7 = v9;
    _os_log_error_impl(&dword_228986000, v6, OS_LOG_TYPE_ERROR, "Unsupported journal entry %{public}@", &v8, 0xCu);
  }

  v5 = *MEMORY[0x277D85DE8];
}

- (_HDUserDefaultUpdatedJournalEntry)initWithCoder:(id)coder
{
  v4.receiver = self;
  v4.super_class = _HDUserDefaultUpdatedJournalEntry;
  return [(HDJournalEntry *)&v4 initWithCoder:coder];
}

- (void)encodeWithCoder:(id)coder
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"LegacyProtectedDataJournalSupport.m" lineNumber:38 description:@"Encoding is not supported"];
}

@end