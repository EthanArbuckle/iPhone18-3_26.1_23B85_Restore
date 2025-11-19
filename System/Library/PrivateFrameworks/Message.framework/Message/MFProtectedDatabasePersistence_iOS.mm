@interface MFProtectedDatabasePersistence_iOS
- (BOOL)protectedDataAvailable;
- (void)addAdditionalCriteriaToCleanupActivity:(id)a3;
- (void)finishJournalReconciliation:(unint64_t)a3;
@end

@implementation MFProtectedDatabasePersistence_iOS

- (BOOL)protectedDataAvailable
{
  v3 = +[MFMailMessageLibrary defaultInstance];
  if ([v3 allowedToAccessProtectedData])
  {
    v6.receiver = self;
    v6.super_class = MFProtectedDatabasePersistence_iOS;
    v4 = [(EDProtectedDatabasePersistence *)&v6 protectedDataAvailable];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)finishJournalReconciliation:(unint64_t)a3
{
  v5.receiver = self;
  v5.super_class = MFProtectedDatabasePersistence_iOS;
  [(EDProtectedDatabasePersistence *)&v5 finishJournalReconciliation:?];
  if (a3 == 2)
  {
    v4 = +[MFMailMessageLibrary defaultInstance];
    [v4 journalReconciliationFailed];
  }

  else
  {
    if (a3)
    {
      return;
    }

    v4 = +[MFMailMessageLibrary defaultInstance];
    [v4 journalWasReconciled];
  }
}

- (void)addAdditionalCriteriaToCleanupActivity:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = MFProtectedDatabasePersistence_iOS;
  [(EDProtectedDatabasePersistence *)&v10 addAdditionalCriteriaToCleanupActivity:v4];
  v5 = v4;
  v6 = _os_feature_enabled_impl();
  v7 = v5;
  v8 = v7;
  v9 = MEMORY[0x1E69E9DA8];
  if (!v6)
  {
    v9 = MEMORY[0x1E69E9D98];
  }

  xpc_dictionary_set_BOOL(v7, *v9, 1);
}

@end