@interface HDDatabaseCorruptionEventStore
+ (id)TTREventKeyForProfileIdentifier:(id)a3 component:(int64_t)a4;
+ (id)_migrationFailureEventKeyForProfileIdentifier:(unint64_t)a3 component:;
+ (id)corruptionEventKeyForProfileIdentifier:(id)a3 component:(int64_t)a4;
- (HDDatabaseCorruptionEventStore)initWithDelegate:(id)a3;
- (HDDatabaseCorruptionEventStoreDelegate)delegate;
- (id)dateOfMostRecentDeviceOutOfSpaceEvent;
- (id)dateOfMostRecentObliteration:(id *)a3;
- (id)mostRecentCorruptionEventForProfileIdentifier:(id)a3 component:(int64_t)a4;
- (id)mostRecentMigrationFailureEventForProfile:(id)a3 component:(int64_t)a4 schemaVersion:(int64_t *)a5;
- (id)mostRecentTTRAttemptForProfileIdentifier:(id)a3 component:(int64_t)a4;
- (void)persistCorruptionEvent:(id)a3;
- (void)persistDeviceOutOfSpaceEvent;
- (void)persistMigrationFailureEventForProfile:(id)a3 component:(int64_t)a4 schemaVersion:(int64_t)a5;
- (void)persistObliterationForReason:(id)a3;
- (void)persistTTRAttempt:(id)a3 forProfileIdentifier:(id)a4 component:(int64_t)a5;
@end

@implementation HDDatabaseCorruptionEventStore

- (HDDatabaseCorruptionEventStore)initWithDelegate:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = HDDatabaseCorruptionEventStore;
  v5 = [(HDDatabaseCorruptionEventStore *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_delegate, v4);
  }

  return v6;
}

+ (id)corruptionEventKeyForProfileIdentifier:(id)a3 component:(int64_t)a4
{
  v5 = a3;
  v6 = HDStringFromDatabaseComponentIdentifier(a4);
  v7 = [@"corruption." stringByAppendingString:v6];

  v8 = HDDatabaseUserDefaultsKeyForProfileIdentifier(v7, v5);

  return v8;
}

+ (id)TTREventKeyForProfileIdentifier:(id)a3 component:(int64_t)a4
{
  v5 = a3;
  v6 = HDStringFromDatabaseComponentIdentifier(a4);
  v7 = [@"corruption-reported." stringByAppendingString:v6];

  v8 = HDDatabaseUserDefaultsKeyForProfileIdentifier(v7, v5);

  return v8;
}

+ (id)_migrationFailureEventKeyForProfileIdentifier:(unint64_t)a3 component:
{
  v4 = a2;
  objc_opt_self();
  v5 = HDStringFromDatabaseComponentIdentifier(a3);
  v6 = [@"migration-failure" stringByAppendingString:v5];

  v7 = HDDatabaseUserDefaultsKeyForProfileIdentifier(v6, v4);

  return v7;
}

- (void)persistCorruptionEvent:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HDDatabaseCorruptionEventStore *)self delegate];

  if (v5)
  {
    v6 = objc_opt_class();
    v7 = [v4 profileIdentifier];
    v8 = [v6 corruptionEventKeyForProfileIdentifier:v7 component:{objc_msgSend(v4, "component")}];

    v14 = 0;
    v9 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v4 requiringSecureCoding:1 error:&v14];
    v10 = v14;
    if (v9)
    {
      v11 = [(HDDatabaseCorruptionEventStore *)self delegate];
      [v11 store:self setObject:v9 forKey:v8];
    }

    else
    {
      _HKInitializeLogging();
      v12 = *MEMORY[0x277CCC2A0];
      if (os_log_type_enabled(*MEMORY[0x277CCC2A0], OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v16 = v10;
        _os_log_error_impl(&dword_228986000, v12, OS_LOG_TYPE_ERROR, "Could not encode corruption event (%@); skipping", buf, 0xCu);
      }
    }
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (id)mostRecentCorruptionEventForProfileIdentifier:(id)a3 component:(int64_t)a4
{
  v18 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = [objc_opt_class() corruptionEventKeyForProfileIdentifier:v6 component:a4];

  v8 = [(HDDatabaseCorruptionEventStore *)self delegate];
  v9 = [v8 store:self objectForKey:v7];

  if (v9 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v15 = 0;
    v10 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClass:objc_opt_class() fromData:v9 error:&v15];
    v11 = v15;
    if (!v10)
    {
      _HKInitializeLogging();
      v12 = *MEMORY[0x277CCC2A0];
      if (os_log_type_enabled(*MEMORY[0x277CCC2A0], OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v17 = v11;
        _os_log_error_impl(&dword_228986000, v12, OS_LOG_TYPE_ERROR, "Could not decode corruption event (%@)", buf, 0xCu);
      }
    }
  }

  else
  {
    v10 = 0;
  }

  v13 = *MEMORY[0x277D85DE8];

  return v10;
}

- (void)persistDeviceOutOfSpaceEvent
{
  v4 = [(HDDatabaseCorruptionEventStore *)self delegate];
  v3 = [MEMORY[0x277CBEAA8] now];
  [v4 store:self setObject:v3 forKey:@"databaseDetectedOutOfSpace"];
}

- (id)dateOfMostRecentDeviceOutOfSpaceEvent
{
  v3 = [(HDDatabaseCorruptionEventStore *)self delegate];
  v4 = [v3 store:self objectForKey:@"databaseDetectedOutOfSpace"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  return v5;
}

- (void)persistMigrationFailureEventForProfile:(id)a3 component:(int64_t)a4 schemaVersion:(int64_t)a5
{
  v14[2] = *MEMORY[0x277D85DE8];
  v7 = [HDDatabaseCorruptionEventStore _migrationFailureEventKeyForProfileIdentifier:a3 component:a4];
  v13[0] = @"lastReportedDate";
  v8 = [MEMORY[0x277CBEAA8] now];
  v13[1] = @"failedSchemaVersion";
  v14[0] = v8;
  v9 = [MEMORY[0x277CCABB0] numberWithInteger:a5];
  v14[1] = v9;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:v13 count:2];

  v11 = [(HDDatabaseCorruptionEventStore *)self delegate];
  [v11 store:self setObject:v10 forKey:v7];

  v12 = *MEMORY[0x277D85DE8];
}

- (id)mostRecentMigrationFailureEventForProfile:(id)a3 component:(int64_t)a4 schemaVersion:(int64_t *)a5
{
  v7 = [HDDatabaseCorruptionEventStore _migrationFailureEventKeyForProfileIdentifier:a3 component:a4];
  v8 = [(HDDatabaseCorruptionEventStore *)self delegate];
  v9 = [v8 store:self objectForKey:v7];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = [v9 valueForKey:@"lastReportedDate"];
    v11 = [v9 valueForKey:@"failedSchemaVersion"];
    objc_opt_class();
    if (objc_opt_isKindOfClass() & 1) != 0 && (objc_opt_class(), (objc_opt_isKindOfClass()))
    {
      *a5 = [v11 integerValue];
      v12 = v10;
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (id)mostRecentTTRAttemptForProfileIdentifier:(id)a3 component:(int64_t)a4
{
  v6 = a3;
  v7 = [objc_opt_class() TTREventKeyForProfileIdentifier:v6 component:a4];

  v8 = [(HDDatabaseCorruptionEventStore *)self delegate];
  v9 = [v8 store:self objectForKey:v7];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  v11 = v10;

  return v10;
}

- (void)persistTTRAttempt:(id)a3 forProfileIdentifier:(id)a4 component:(int64_t)a5
{
  v8 = a4;
  v9 = a3;
  v11 = [objc_opt_class() TTREventKeyForProfileIdentifier:v8 component:a5];

  v10 = [(HDDatabaseCorruptionEventStore *)self delegate];
  [v10 store:self setObject:v9 forKey:v11];
}

- (void)persistObliterationForReason:(id)a3
{
  v11[2] = *MEMORY[0x277D85DE8];
  v10[0] = @"reason";
  v10[1] = @"date";
  v11[0] = a3;
  v4 = MEMORY[0x277CBEAA8];
  v5 = a3;
  v6 = [v4 now];
  v11[1] = v6;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:v10 count:2];

  v8 = [(HDDatabaseCorruptionEventStore *)self delegate];
  [v8 store:self setObject:v7 forKey:@"databaseObliterated"];

  v9 = *MEMORY[0x277D85DE8];
}

- (id)dateOfMostRecentObliteration:(id *)a3
{
  v5 = [(HDDatabaseCorruptionEventStore *)self delegate];
  v6 = [v5 store:self objectForKey:@"databaseObliterated"];

  if (a3)
  {
    *a3 = 0;
  }

  if (v6 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v7 = [v6 objectForKeyedSubscript:@"date"];
    v8 = [v6 objectForKeyedSubscript:@"reason"];
    v9 = v8;
    v10 = 0;
    if (v7 && v8)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass() & 1) != 0 && (objc_opt_class(), (objc_opt_isKindOfClass()))
      {
        if (a3)
        {
          v11 = v9;
          *a3 = v9;
        }

        v10 = v7;
      }

      else
      {
        v10 = 0;
      }
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (HDDatabaseCorruptionEventStoreDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end