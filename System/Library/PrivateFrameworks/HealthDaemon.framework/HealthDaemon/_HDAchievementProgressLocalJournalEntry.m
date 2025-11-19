@interface _HDAchievementProgressLocalJournalEntry
+ (void)applyEntries:(id)a3 withProfile:(id)a4;
- (_HDAchievementProgressLocalJournalEntry)initWithCoder:(id)a3;
@end

@implementation _HDAchievementProgressLocalJournalEntry

+ (void)applyEntries:(id)a3 withProfile:(id)a4
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

- (_HDAchievementProgressLocalJournalEntry)initWithCoder:(id)a3
{
  v4.receiver = self;
  v4.super_class = _HDAchievementProgressLocalJournalEntry;
  return [(_HDAchievementProgressLocalJournalEntry *)&v4 init];
}

@end