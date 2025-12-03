@interface HDDatabaseCorruptionEventStore
+ (id)TTREventKeyForProfileIdentifier:(id)identifier component:(int64_t)component;
+ (id)_migrationFailureEventKeyForProfileIdentifier:(unint64_t)identifier component:;
+ (id)corruptionEventKeyForProfileIdentifier:(id)identifier component:(int64_t)component;
- (HDDatabaseCorruptionEventStore)initWithDelegate:(id)delegate;
- (HDDatabaseCorruptionEventStoreDelegate)delegate;
- (id)dateOfMostRecentDeviceOutOfSpaceEvent;
- (id)dateOfMostRecentObliteration:(id *)obliteration;
- (id)mostRecentCorruptionEventForProfileIdentifier:(id)identifier component:(int64_t)component;
- (id)mostRecentMigrationFailureEventForProfile:(id)profile component:(int64_t)component schemaVersion:(int64_t *)version;
- (id)mostRecentTTRAttemptForProfileIdentifier:(id)identifier component:(int64_t)component;
- (void)persistCorruptionEvent:(id)event;
- (void)persistDeviceOutOfSpaceEvent;
- (void)persistMigrationFailureEventForProfile:(id)profile component:(int64_t)component schemaVersion:(int64_t)version;
- (void)persistObliterationForReason:(id)reason;
- (void)persistTTRAttempt:(id)attempt forProfileIdentifier:(id)identifier component:(int64_t)component;
@end

@implementation HDDatabaseCorruptionEventStore

- (HDDatabaseCorruptionEventStore)initWithDelegate:(id)delegate
{
  delegateCopy = delegate;
  v8.receiver = self;
  v8.super_class = HDDatabaseCorruptionEventStore;
  v5 = [(HDDatabaseCorruptionEventStore *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_delegate, delegateCopy);
  }

  return v6;
}

+ (id)corruptionEventKeyForProfileIdentifier:(id)identifier component:(int64_t)component
{
  identifierCopy = identifier;
  v6 = HDStringFromDatabaseComponentIdentifier(component);
  v7 = [@"corruption." stringByAppendingString:v6];

  v8 = HDDatabaseUserDefaultsKeyForProfileIdentifier(v7, identifierCopy);

  return v8;
}

+ (id)TTREventKeyForProfileIdentifier:(id)identifier component:(int64_t)component
{
  identifierCopy = identifier;
  v6 = HDStringFromDatabaseComponentIdentifier(component);
  v7 = [@"corruption-reported." stringByAppendingString:v6];

  v8 = HDDatabaseUserDefaultsKeyForProfileIdentifier(v7, identifierCopy);

  return v8;
}

+ (id)_migrationFailureEventKeyForProfileIdentifier:(unint64_t)identifier component:
{
  v4 = a2;
  objc_opt_self();
  v5 = HDStringFromDatabaseComponentIdentifier(identifier);
  v6 = [@"migration-failure" stringByAppendingString:v5];

  v7 = HDDatabaseUserDefaultsKeyForProfileIdentifier(v6, v4);

  return v7;
}

- (void)persistCorruptionEvent:(id)event
{
  v17 = *MEMORY[0x277D85DE8];
  eventCopy = event;
  delegate = [(HDDatabaseCorruptionEventStore *)self delegate];

  if (delegate)
  {
    v6 = objc_opt_class();
    profileIdentifier = [eventCopy profileIdentifier];
    v8 = [v6 corruptionEventKeyForProfileIdentifier:profileIdentifier component:{objc_msgSend(eventCopy, "component")}];

    v14 = 0;
    v9 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:eventCopy requiringSecureCoding:1 error:&v14];
    v10 = v14;
    if (v9)
    {
      delegate2 = [(HDDatabaseCorruptionEventStore *)self delegate];
      [delegate2 store:self setObject:v9 forKey:v8];
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

- (id)mostRecentCorruptionEventForProfileIdentifier:(id)identifier component:(int64_t)component
{
  v18 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  v7 = [objc_opt_class() corruptionEventKeyForProfileIdentifier:identifierCopy component:component];

  delegate = [(HDDatabaseCorruptionEventStore *)self delegate];
  v9 = [delegate store:self objectForKey:v7];

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
  delegate = [(HDDatabaseCorruptionEventStore *)self delegate];
  v3 = [MEMORY[0x277CBEAA8] now];
  [delegate store:self setObject:v3 forKey:@"databaseDetectedOutOfSpace"];
}

- (id)dateOfMostRecentDeviceOutOfSpaceEvent
{
  delegate = [(HDDatabaseCorruptionEventStore *)self delegate];
  v4 = [delegate store:self objectForKey:@"databaseDetectedOutOfSpace"];

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

- (void)persistMigrationFailureEventForProfile:(id)profile component:(int64_t)component schemaVersion:(int64_t)version
{
  v14[2] = *MEMORY[0x277D85DE8];
  v7 = [HDDatabaseCorruptionEventStore _migrationFailureEventKeyForProfileIdentifier:profile component:component];
  v13[0] = @"lastReportedDate";
  v8 = [MEMORY[0x277CBEAA8] now];
  v13[1] = @"failedSchemaVersion";
  v14[0] = v8;
  v9 = [MEMORY[0x277CCABB0] numberWithInteger:version];
  v14[1] = v9;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:v13 count:2];

  delegate = [(HDDatabaseCorruptionEventStore *)self delegate];
  [delegate store:self setObject:v10 forKey:v7];

  v12 = *MEMORY[0x277D85DE8];
}

- (id)mostRecentMigrationFailureEventForProfile:(id)profile component:(int64_t)component schemaVersion:(int64_t *)version
{
  v7 = [HDDatabaseCorruptionEventStore _migrationFailureEventKeyForProfileIdentifier:profile component:component];
  delegate = [(HDDatabaseCorruptionEventStore *)self delegate];
  v9 = [delegate store:self objectForKey:v7];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = [v9 valueForKey:@"lastReportedDate"];
    v11 = [v9 valueForKey:@"failedSchemaVersion"];
    objc_opt_class();
    if (objc_opt_isKindOfClass() & 1) != 0 && (objc_opt_class(), (objc_opt_isKindOfClass()))
    {
      *version = [v11 integerValue];
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

- (id)mostRecentTTRAttemptForProfileIdentifier:(id)identifier component:(int64_t)component
{
  identifierCopy = identifier;
  v7 = [objc_opt_class() TTREventKeyForProfileIdentifier:identifierCopy component:component];

  delegate = [(HDDatabaseCorruptionEventStore *)self delegate];
  v9 = [delegate store:self objectForKey:v7];

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

- (void)persistTTRAttempt:(id)attempt forProfileIdentifier:(id)identifier component:(int64_t)component
{
  identifierCopy = identifier;
  attemptCopy = attempt;
  v11 = [objc_opt_class() TTREventKeyForProfileIdentifier:identifierCopy component:component];

  delegate = [(HDDatabaseCorruptionEventStore *)self delegate];
  [delegate store:self setObject:attemptCopy forKey:v11];
}

- (void)persistObliterationForReason:(id)reason
{
  v11[2] = *MEMORY[0x277D85DE8];
  v10[0] = @"reason";
  v10[1] = @"date";
  v11[0] = reason;
  v4 = MEMORY[0x277CBEAA8];
  reasonCopy = reason;
  v6 = [v4 now];
  v11[1] = v6;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:v10 count:2];

  delegate = [(HDDatabaseCorruptionEventStore *)self delegate];
  [delegate store:self setObject:v7 forKey:@"databaseObliterated"];

  v9 = *MEMORY[0x277D85DE8];
}

- (id)dateOfMostRecentObliteration:(id *)obliteration
{
  delegate = [(HDDatabaseCorruptionEventStore *)self delegate];
  v6 = [delegate store:self objectForKey:@"databaseObliterated"];

  if (obliteration)
  {
    *obliteration = 0;
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
        if (obliteration)
        {
          v11 = v9;
          *obliteration = v9;
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