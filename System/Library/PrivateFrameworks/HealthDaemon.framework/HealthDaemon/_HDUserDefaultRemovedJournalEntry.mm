@interface _HDUserDefaultRemovedJournalEntry
+ (void)applyEntries:(id)a3 withProfile:(id)a4;
- (_HDUserDefaultRemovedJournalEntry)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation _HDUserDefaultRemovedJournalEntry

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

- (_HDUserDefaultRemovedJournalEntry)initWithCoder:(id)a3
{
  v4.receiver = self;
  v4.super_class = _HDUserDefaultRemovedJournalEntry;
  return [(HDJournalEntry *)&v4 initWithCoder:a3];
}

- (void)encodeWithCoder:(id)a3
{
  v9 = *MEMORY[0x277D85DE8];
  _HKInitializeLogging();
  v3 = *MEMORY[0x277CCC2A0];
  if (os_log_type_enabled(*MEMORY[0x277CCC2A0], OS_LOG_TYPE_ERROR))
  {
    v5 = v3;
    v7 = 138543362;
    v8 = objc_opt_class();
    v6 = v8;
    _os_log_error_impl(&dword_228986000, v5, OS_LOG_TYPE_ERROR, "%{public}@: encoding is not supported", &v7, 0xCu);
  }

  v4 = *MEMORY[0x277D85DE8];
}

@end