@interface CalCalendarDatabaseReminderMigrationContext
+ (id)reminderMigrationContextWithReminderKitProvider:(id)a3;
- (BOOL)_isCalendarOwnedByExistingStoreToDelete:(void *)a3;
- (NSArray)calendarsToClearSyncToken;
- (NSArray)calendarsToDelete;
- (NSArray)calendarsToDisableReminders;
- (NSArray)storesToDelete;
- (NSArray)storesToDisableReminders;
- (NSArray)storesToSetWasMigrated;
- (void)_removeCalendarsToDeleteInStore:(void *)a3;
- (void)addCalendarToDelete:(void *)a3;
- (void)addStoreToDelete:(void *)a3;
- (void)addStoreToSetWasMigrated:(void *)a3;
@end

@implementation CalCalendarDatabaseReminderMigrationContext

+ (id)reminderMigrationContextWithReminderKitProvider:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] _initWithReminderKitProvider:v4];

  if (v5)
  {
    v6 = objc_opt_new();
    v7 = v5[14];
    v5[14] = v6;

    v8 = objc_opt_new();
    v9 = v5[15];
    v5[15] = v8;

    v10 = objc_opt_new();
    v11 = v5[16];
    v5[16] = v10;

    v12 = objc_opt_new();
    v13 = v5[17];
    v5[17] = v12;

    v14 = objc_opt_new();
    v15 = v5[19];
    v5[19] = v14;

    v16 = objc_opt_new();
    v17 = v5[18];
    v5[18] = v16;

    if (([v5 _tryBeginMigration] & 1) == 0)
    {

      v5 = 0;
    }
  }

  return v5;
}

- (NSArray)storesToDisableReminders
{
  v2 = [(NSMutableArray *)self->_storesToDisableReminders copy];

  return v2;
}

- (NSArray)storesToDelete
{
  v2 = [(NSMutableArray *)self->_storesToDelete copy];

  return v2;
}

- (void)addStoreToDelete:(void *)a3
{
  [(NSMutableArray *)self->_storesToDelete addObject:?];
  [(CalCalendarDatabaseReminderMigrationContext *)self _removeCalendarsToDeleteInStore:a3];
  storesToSetWasMigrated = self->_storesToSetWasMigrated;

  [(NSMutableArray *)storesToSetWasMigrated removeObject:a3];
}

- (NSArray)storesToSetWasMigrated
{
  v2 = [(NSMutableArray *)self->_storesToSetWasMigrated copy];

  return v2;
}

- (void)addStoreToSetWasMigrated:(void *)a3
{
  if (([(NSMutableArray *)self->_storesToDelete containsObject:?]& 1) == 0)
  {
    storesToSetWasMigrated = self->_storesToSetWasMigrated;

    [(NSMutableArray *)storesToSetWasMigrated addObject:a3];
  }
}

- (NSArray)calendarsToDisableReminders
{
  v2 = [(NSMutableArray *)self->_calendarsToDisableReminders copy];

  return v2;
}

- (NSArray)calendarsToClearSyncToken
{
  v2 = [(NSMutableArray *)self->_calendarsToClearSyncToken copy];

  return v2;
}

- (NSArray)calendarsToDelete
{
  v2 = [(NSMutableArray *)self->_calendarsToDelete copy];

  return v2;
}

- (void)addCalendarToDelete:(void *)a3
{
  if (![(CalCalendarDatabaseReminderMigrationContext *)self _isCalendarOwnedByExistingStoreToDelete:?])
  {
    calendarsToDelete = self->_calendarsToDelete;

    [(NSMutableArray *)calendarsToDelete addObject:a3];
  }
}

- (void)_removeCalendarsToDeleteInStore:(void *)a3
{
  v5 = [MEMORY[0x277CBEB18] arrayWithCapacity:{-[NSMutableArray count](self->_calendarsToDelete, "count")}];
  calendarsToDelete = self->_calendarsToDelete;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __79__CalCalendarDatabaseReminderMigrationContext__removeCalendarsToDeleteInStore___block_invoke;
  v10[3] = &unk_278D6D558;
  v12 = a3;
  v7 = v5;
  v11 = v7;
  [(NSMutableArray *)calendarsToDelete enumerateCalCalendarRefsUsingBlock:v10];
  v8 = self->_calendarsToDelete;
  self->_calendarsToDelete = v7;
  v9 = v7;
}

void __79__CalCalendarDatabaseReminderMigrationContext__removeCalendarsToDeleteInStore___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  v3 = CalCalendarCopyStore();
  if (v3 != *(a1 + 40))
  {
    [*(a1 + 32) addObject:v4];
  }

  if (v3)
  {
    CFRelease(v3);
  }
}

- (BOOL)_isCalendarOwnedByExistingStoreToDelete:(void *)a3
{
  v4 = CalCalendarCopyStore();
  if (!v4)
  {
    return 0;
  }

  v5 = v4;
  v6 = [(NSMutableArray *)self->_storesToDelete containsObject:v4];
  CFRelease(v5);
  return v6;
}

@end