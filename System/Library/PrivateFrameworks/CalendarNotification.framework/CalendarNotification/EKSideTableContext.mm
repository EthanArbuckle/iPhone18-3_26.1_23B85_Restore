@interface EKSideTableContext
+ (id)sideTableContext;
- (BOOL)_removeSqliteFiles;
- (EKSideTableContext)initWithConcurrencyType:(unint64_t)a3;
- (id)_alarmsMatchingPredicate:(id)a3;
- (id)_managedObjectModel;
- (id)_pathForPersistentStore;
- (id)_persistentStoreCoordinator;
- (id)_settingForKey:(id)a3;
- (id)_urlForPersistentStore;
- (id)alarmsBetweenStartDate:(id)a3 endDate:(id)a4;
- (id)nextAlarmFireTime;
- (id)rootDirectory;
- (id)settingForKey:(id)a3;
- (void)deleteAllAlarms;
- (void)setSetting:(id)a3 forKey:(id)a4;
@end

@implementation EKSideTableContext

+ (id)sideTableContext
{
  v2 = [[EKSideTableContext alloc] initWithConcurrencyType:1];
  v3 = [(EKSideTableContext *)v2 persistentStoreCoordinator];
  if (!v3)
  {
    goto LABEL_4;
  }

  v4 = v3;
  v5 = [(EKSideTableContext *)v2 persistentStoreCoordinator];
  v6 = [v5 persistentStores];
  v7 = [v6 count];

  if (v7)
  {
    v8 = v2;
  }

  else
  {
LABEL_4:
    v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"+[EKSideTableContext sideTableContext]"];
    NSLog(&cfstr_FailedToCreate_0.isa, v9);

    v8 = 0;
  }

  return v8;
}

- (EKSideTableContext)initWithConcurrencyType:(unint64_t)a3
{
  v7.receiver = self;
  v7.super_class = EKSideTableContext;
  v3 = [(EKSideTableContext *)&v7 initWithConcurrencyType:a3];
  v4 = v3;
  if (v3)
  {
    v5 = [(EKSideTableContext *)v3 _persistentStoreCoordinator];
    if (v5)
    {
      [(EKSideTableContext *)v4 setPersistentStoreCoordinator:v5];
    }

    [(EKSideTableContext *)v4 setUndoManager:0];
    [(EKSideTableContext *)v4 setMergePolicy:*MEMORY[0x277CBE1D0]];
  }

  return v4;
}

- (id)_alarmsMatchingPredicate:(id)a3
{
  v4 = MEMORY[0x277CBE408];
  v5 = a3;
  v6 = [v4 entityForName:@"Alarm" inManagedObjectContext:self];
  v7 = objc_alloc_init(MEMORY[0x277CBE428]);
  [v7 setEntity:v6];
  [v7 setPredicate:v5];

  [v7 setIncludesPendingChanges:0];
  v10 = 0;
  v8 = [(EKSideTableContext *)self executeFetchRequest:v7 error:&v10];

  return v8;
}

- (void)deleteAllAlarms
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = [(EKSideTableContext *)self _alarmsMatchingPredicate:0];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    do
    {
      v7 = 0;
      do
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [(EKSideTableContext *)self deleteObject:*(*(&v9 + 1) + 8 * v7++)];
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (id)nextAlarmFireTime
{
  v3 = objc_alloc_init(MEMORY[0x277CBE428]);
  v4 = [MEMORY[0x277CBE408] entityForName:@"Alarm" inManagedObjectContext:self];
  [v3 setEntity:v4];

  v5 = MEMORY[0x277CCAC30];
  v6 = [MEMORY[0x277CBEAA8] CalSimulatedDateForNow];
  v7 = [v5 predicateWithFormat:@"fireTime > %@", v6];
  [v3 setPredicate:v7];

  [v3 setIncludesPendingChanges:0];
  [v3 setFetchLimit:1];
  v8 = MEMORY[0x277CBEA60];
  v9 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"fireTime" ascending:1];
  v10 = [v8 arrayWithObject:v9];
  [v3 setSortDescriptors:v10];

  v15 = 0;
  v11 = [(EKSideTableContext *)self executeFetchRequest:v3 error:&v15];
  if ([v11 count])
  {
    v12 = [v11 objectAtIndex:0];
    v13 = [v12 fireTime];
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (id)alarmsBetweenStartDate:(id)a3 endDate:(id)a4
{
  v6 = MEMORY[0x277CBE428];
  v7 = a4;
  v8 = a3;
  v9 = objc_alloc_init(v6);
  v10 = [MEMORY[0x277CBE408] entityForName:@"Alarm" inManagedObjectContext:self];
  [v9 setEntity:v10];

  v11 = [MEMORY[0x277CCAC30] predicateWithFormat:@"fireTime >= %@ and fireTime <= %@", v8, v7];

  [v9 setPredicate:v11];
  [v9 setIncludesPendingChanges:0];
  v12 = MEMORY[0x277CBEA60];
  v13 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"fireTime" ascending:1];
  v14 = [v12 arrayWithObject:v13];
  [v9 setSortDescriptors:v14];

  v17 = 0;
  v15 = [(EKSideTableContext *)self executeFetchRequest:v9 error:&v17];

  return v15;
}

- (id)_settingForKey:(id)a3
{
  v4 = MEMORY[0x277CBE428];
  v5 = a3;
  v6 = objc_alloc_init(v4);
  v7 = [MEMORY[0x277CBE408] entityForName:@"Setting" inManagedObjectContext:self];
  [v6 setEntity:v7];

  v8 = [MEMORY[0x277CCAC30] predicateWithFormat:@"key = %@", v5];

  [v6 setPredicate:v8];
  [v6 setIncludesPendingChanges:1];
  [v6 setFetchLimit:1];
  v12 = 0;
  v9 = [(EKSideTableContext *)self executeFetchRequest:v6 error:&v12];
  if ([v9 count])
  {
    v10 = [v9 objectAtIndex:0];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)settingForKey:(id)a3
{
  v3 = [(EKSideTableContext *)self _settingForKey:a3];
  v4 = [v3 valueForKey:@"value"];

  return v4;
}

- (void)setSetting:(id)a3 forKey:(id)a4
{
  v8 = a3;
  v6 = a4;
  v7 = [(EKSideTableContext *)self _settingForKey:v6];
  if (!v7)
  {
    v7 = [MEMORY[0x277CBE408] insertNewObjectForEntityForName:@"Setting" inManagedObjectContext:self];
    [v7 setValue:v6 forKey:@"key"];
  }

  [v7 setValue:v8 forKey:@"value"];
}

- (id)rootDirectory
{
  path = self->_path;
  if (path)
  {
    v3 = path;
  }

  else
  {
    v3 = CALNDefaultCalendarDirectory();
  }

  return v3;
}

- (id)_pathForPersistentStore
{
  v2 = [(EKSideTableContext *)self rootDirectory];
  v3 = [v2 stringByAppendingPathComponent:@"Extras.db"];

  return v3;
}

- (id)_urlForPersistentStore
{
  v2 = MEMORY[0x277CBEBC0];
  v3 = [(EKSideTableContext *)self _pathForPersistentStore];
  v4 = [v2 fileURLWithPath:v3];

  return v4;
}

- (BOOL)_removeSqliteFiles
{
  v3 = [(EKSideTableContext *)self persistentStoreCoordinator];
  if (!v3)
  {
    v4 = objc_alloc(MEMORY[0x277CBE4D8]);
    v5 = [(EKSideTableContext *)self _managedObjectModel];
    v3 = [v4 initWithManagedObjectModel:v5];
  }

  v6 = [(EKSideTableContext *)self _urlForPersistentStore];
  v7 = *MEMORY[0x277CBE2E8];
  v12 = 0;
  v8 = [v3 _destroyPersistentStoreAtURL:v6 withType:v7 options:0 error:&v12];
  v9 = v12;

  if ((v8 & 1) == 0)
  {
    v10 = [v9 userInfo];
    NSLog(&cfstr_UnableToRecove.isa, v9, v10);
  }

  return v8;
}

- (id)_managedObjectModel
{
  v2 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v3 = [v2 pathForResource:@"SideTables" ofType:@"momd"];

  v4 = objc_alloc(MEMORY[0x277CBE450]);
  v5 = [MEMORY[0x277CBEBC0] fileURLWithPath:v3];
  v6 = [v4 initWithContentsOfURL:v5];

  if (v6)
  {

    return v6;
  }

  else
  {
    NSLog(&cfstr_FailedToLoadSc.isa, v3);
    __break(1u);
  }

  return result;
}

- (id)_persistentStoreCoordinator
{
  v3 = [(EKSideTableContext *)self _urlForPersistentStore];
  v4 = objc_alloc(MEMORY[0x277CBE4D8]);
  v5 = [(EKSideTableContext *)self _managedObjectModel];
  v6 = [v4 initWithManagedObjectModel:v5];

  v7 = MEMORY[0x277CBEAC0];
  v8 = [MEMORY[0x277CCABB0] numberWithBool:1];
  v9 = *MEMORY[0x277CBE1D8];
  v10 = [MEMORY[0x277CCABB0] numberWithBool:1];
  v11 = *MEMORY[0x277CBE178];
  v12 = [v7 dictionaryWithObjectsAndKeys:{v8, v9, v10, *MEMORY[0x277CBE178], *MEMORY[0x277CCA1B8], *MEMORY[0x277CBE240], 0}];

  v13 = *MEMORY[0x277CBE2E8];
  v22 = 0;
  v14 = [v6 addPersistentStoreWithType:v13 configuration:0 URL:v3 options:v12 error:&v22];
  v15 = v22;

  if (v14)
  {
    goto LABEL_2;
  }

  v17 = [v15 userInfo];
  NSLog(&cfstr_ErrorWhileImpo.isa, v15, v17);

  if ([(EKSideTableContext *)self _removeSqliteFiles])
  {
    v21 = 0;
    v18 = [v6 addPersistentStoreWithType:v13 configuration:0 URL:v3 options:v12 error:&v21];
    v15 = v21;

    if (v18)
    {
      NSLog(&cfstr_CreatedNewData.isa);
LABEL_2:
      v16 = v6;
      goto LABEL_9;
    }

    v19 = [v15 userInfo];
    NSLog(&cfstr_SecondErrorWhi.isa, v15, v19);
  }

  else
  {
    v15 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[EKSideTableContext _persistentStoreCoordinator]"];
    NSLog(&cfstr_UnableToRemove.isa, v15);
  }

  v16 = 0;
LABEL_9:

  return v16;
}

@end