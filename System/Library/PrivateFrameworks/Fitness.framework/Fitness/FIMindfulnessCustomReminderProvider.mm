@interface FIMindfulnessCustomReminderProvider
- (FIMindfulnessCustomReminderProvider)init;
- (id)reminders;
- (void)reminders;
- (void)updateReminders:(id)reminders;
@end

@implementation FIMindfulnessCustomReminderProvider

- (FIMindfulnessCustomReminderProvider)init
{
  v6.receiver = self;
  v6.super_class = FIMindfulnessCustomReminderProvider;
  v2 = [(FIMindfulnessCustomReminderProvider *)&v6 init];
  if (v2)
  {
    v3 = objc_opt_new();
    syncManager = v2->_syncManager;
    v2->_syncManager = v3;
  }

  return v2;
}

- (id)reminders
{
  v2 = CFPreferencesCopyAppValue(@"CustomReminders", @"com.apple.Mind");
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v4 = MEMORY[0x277CBEB98];
  if (isKindOfClass)
  {
    v5 = objc_opt_class();
    v6 = [v4 setWithObjects:{v5, objc_opt_class(), 0}];
    v13 = 0;
    v7 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClasses:v6 fromData:v2 error:&v13];
    v8 = v13;
    if (v7)
    {
      v9 = [MEMORY[0x277CBEB98] setWithArray:v7];
    }

    else
    {
      _HKInitializeLogging();
      v11 = *MEMORY[0x277CCC2A8];
      if (os_log_type_enabled(*MEMORY[0x277CCC2A8], OS_LOG_TYPE_ERROR))
      {
        [(FIMindfulnessCustomReminderProvider *)v8 reminders];
      }

      v9 = [MEMORY[0x277CBEB98] set];
    }

    v10 = v9;
  }

  else
  {
    v10 = [MEMORY[0x277CBEB98] set];
  }

  return v10;
}

- (void)updateReminders:(id)reminders
{
  v16[1] = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x277CCAAB0];
  allObjects = [reminders allObjects];
  v15 = 0;
  v6 = [v4 archivedDataWithRootObject:allObjects requiringSecureCoding:1 error:&v15];
  v7 = v15;

  if (v6)
  {
    v8 = v7 == 0;
  }

  else
  {
    v8 = 0;
  }

  if (v8)
  {
    CFPreferencesSetAppValue(@"CustomReminders", v6, @"com.apple.Mind");
    CFPreferencesAppSynchronize(@"com.apple.Mind");
    syncManager = self->_syncManager;
    v11 = MEMORY[0x277CBEB98];
    v16[0] = @"CustomReminders";
    v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:1];
    v13 = [v11 setWithArray:v12];
    [(NPSManager *)syncManager synchronizeUserDefaultsDomain:@"com.apple.Mind" keys:v13];

    notify_post("NanoLifestyleMindfulnessPreferencesChangedNotification");
  }

  else
  {
    _HKInitializeLogging();
    v9 = *MEMORY[0x277CCC2A8];
    if (os_log_type_enabled(*MEMORY[0x277CCC2A8], OS_LOG_TYPE_ERROR))
    {
      [(FIMindfulnessCustomReminderProvider *)v7 updateReminders:v9];
    }
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)reminders
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  selfCopy = self;
  _os_log_error_impl(&dword_24B35E000, a2, OS_LOG_TYPE_ERROR, "Error to unarchiving reminders %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

- (void)updateReminders:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_24B35E000, a2, OS_LOG_TYPE_ERROR, "Error to archiving reminders %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end