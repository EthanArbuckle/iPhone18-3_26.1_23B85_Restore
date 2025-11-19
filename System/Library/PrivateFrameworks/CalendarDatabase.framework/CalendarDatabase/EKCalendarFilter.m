@interface EKCalendarFilter
+ (void)_addCalendarUIDsFromPrefs:(id)a3 toSet:(id)a4 database:(CalDatabase *)a5;
+ (void)_addCalendarWithUID:(id)a3 toSet:(id)a4 database:(CalDatabase *)a5;
+ (void)_addCalendarsForStoreWithUID:(id)a3 toSet:(id)a4 database:(CalDatabase *)a5;
- (BOOL)_isFilteringAllWhileLocked;
- (BOOL)isCalendarUIDVisible:(id)a3;
- (BOOL)isEqual:(id)a3;
- (BOOL)isFilteringAll;
- (EKCalendarFilter)initWithDatabase:(CalDatabase *)a3 entityType:(int)a4 calendarUIDs:(id)a5;
- (EKCalendarFilter)initWithDatabase:(CalDatabase *)a3 showingCalendars:(id)a4;
- (EKCalendarFilter)initWithDatabase:(CalDatabase *)a3 showingCalendarsWithUIDs:(id)a4;
- (id)_UIDAntiSetWithCalendars:(id)a3;
- (id)_UIDSetWithCalendars:(id)a3;
- (id)_addFilterToQuery:(id)a3 creator:(void *)a4 userInfo:(void *)a5;
- (id)_generateUIDSetToFilterAllCalendars;
- (id)_generateUIDSetToFilterCalendars:(id)a3;
- (id)_generateUIDSetToShowCalendarUIDs:(id)a3;
- (id)_generateUIDSetToShowCalendars:(id)a3;
- (id)_visibleCalendarsWithOptions:(int)a3;
- (id)calendarIDClauseForQueryWithVariableName:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)filterQueryForKey:(id)a3 prefix:(id)a4 whereClause:(id)a5 creator:(void *)a6 userInfo:(void *)a7;
- (id)filterQueryForQueryString:(id)a3 creator:(void *)a4 userInfo:(void *)a5;
- (id)filteredCalendars;
- (id)initFilteringAllWithDatabase:(CalDatabase *)a3;
- (int)visibleCalendarCountWithOptions:(int)a3;
- (void)dealloc;
- (void)validate;
@end

@implementation EKCalendarFilter

- (BOOL)_isFilteringAllWhileLocked
{
  v2 = self;
  v3 = _CalDatabaseCopyOfAllCalendarsInStoreWithOptions(self->_database, 0, 2);
  v4 = [(EKCalendarFilter *)v2 _UIDSetWithCalendars:v3];
  [v4 minusSet:v2->_calendarUIDs];
  LOBYTE(v2) = [v4 count] == 0;

  return v2;
}

- (void)dealloc
{
  pthread_mutex_destroy(&self->_lock);
  database = self->_database;
  if (database)
  {
    CFRelease(database);
  }

  v4.receiver = self;
  v4.super_class = EKCalendarFilter;
  [(EKCalendarFilter *)&v4 dealloc];
}

- (id)initFilteringAllWithDatabase:(CalDatabase *)a3
{
  v3 = [(EKCalendarFilter *)self initWithDatabase:a3 entityType:2 calendarUIDs:0];
  v4 = v3;
  if (v3)
  {
    v5 = [(EKCalendarFilter *)v3 _generateUIDSetToFilterAllCalendars];
    calendarUIDs = v4->_calendarUIDs;
    v4->_calendarUIDs = v5;
  }

  return v4;
}

- (EKCalendarFilter)initWithDatabase:(CalDatabase *)a3 showingCalendars:(id)a4
{
  v6 = a4;
  v7 = [(EKCalendarFilter *)self initWithDatabase:a3 entityType:2 calendarUIDs:0];
  v8 = v7;
  if (v7)
  {
    v9 = [(EKCalendarFilter *)v7 _generateUIDSetToShowCalendars:v6];
    calendarUIDs = v8->_calendarUIDs;
    v8->_calendarUIDs = v9;
  }

  return v8;
}

- (EKCalendarFilter)initWithDatabase:(CalDatabase *)a3 showingCalendarsWithUIDs:(id)a4
{
  v6 = a4;
  v7 = [(EKCalendarFilter *)self initWithDatabase:a3 entityType:2 calendarUIDs:0];
  v8 = v7;
  if (v7)
  {
    v9 = [(EKCalendarFilter *)v7 _generateUIDSetToShowCalendarUIDs:v6];
    calendarUIDs = v8->_calendarUIDs;
    v8->_calendarUIDs = v9;
  }

  return v8;
}

- (EKCalendarFilter)initWithDatabase:(CalDatabase *)a3 entityType:(int)a4 calendarUIDs:(id)a5
{
  v8 = a5;
  v14.receiver = self;
  v14.super_class = EKCalendarFilter;
  v9 = [(EKCalendarFilter *)&v14 init];
  v10 = v9;
  if (v9)
  {
    v9->_lock.__sig = 850045863;
    *v9->_lock.__opaque = 0u;
    *&v9->_lock.__opaque[16] = 0u;
    *&v9->_lock.__opaque[32] = 0u;
    *&v9->_lock.__opaque[48] = 0;
    v9->_database = CFRetain(a3);
    v11 = [v8 mutableCopy];
    calendarUIDs = v10->_calendarUIDs;
    v10->_calendarUIDs = v11;

    v10->_entityType = a4;
  }

  return v10;
}

- (BOOL)isFilteringAll
{
  v3 = CalDatabaseLockForThread(self->_database);
  if (v3)
  {
    v4 = [(EKCalendarFilter *)self _isFilteringAllWhileLocked];
    CalDatabaseUnlockForThread(self->_database);
    LOBYTE(v3) = v4;
  }

  return v3;
}

- (id)_UIDSetWithCalendars:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [MEMORY[0x1E695DFA8] setWithCapacity:0];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v6);
        }

        if (_CalCalendarCanContainEntityType(*(*(&v14 + 1) + 8 * i), self->_entityType))
        {
          v11 = [MEMORY[0x1E696AD98] numberWithInt:{CPRecordGetID(), v14}];
          [v5 addObject:v11];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  v12 = *MEMORY[0x1E69E9840];

  return v5;
}

- (id)_UIDAntiSetWithCalendars:(id)a3
{
  v22 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [MEMORY[0x1E695DFA8] setWithCapacity:0];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v18;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v18 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v17 + 1) + 8 * i);
        Store = _CalCalendarGetStore(v11);
        if (!Store || (v13 = Store, !_CalStoreIsEnabled(Store)) || self->_entityType == 2 && !_CalStoreAllowsEvents(v13) || _CalCalendarIsHidden(v11) || (_CalCalendarCanContainEntityType(v11, self->_entityType) & 1) == 0)
        {
          v14 = [MEMORY[0x1E696AD98] numberWithInt:{CPRecordGetID(), v17}];
          [v5 addObject:v14];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v8);
  }

  v15 = *MEMORY[0x1E69E9840];

  return v5;
}

- (id)_generateUIDSetToShowCalendars:(id)a3
{
  v4 = a3;
  if (CalDatabaseLockForThread(self->_database))
  {
    v5 = [(EKCalendarFilter *)self _UIDSetWithCalendars:v4];
    v6 = _CalDatabaseCopyOfAllCalendarsInStoreWithOptions(self->_database, 0, 0);
    v7 = [(EKCalendarFilter *)self _UIDSetWithCalendars:v6];
    [v7 minusSet:v5];
    CalDatabaseUnlockForThread(self->_database);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)_generateUIDSetToFilterCalendars:(id)a3
{
  v4 = a3;
  if (CalDatabaseLockForThread(self->_database))
  {
    v5 = [(EKCalendarFilter *)self _UIDSetWithCalendars:v4];
    CalDatabaseUnlockForThread(self->_database);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)_generateUIDSetToShowCalendarUIDs:(id)a3
{
  v4 = a3;
  if (CalDatabaseLockForThread(self->_database))
  {
    v5 = _CalDatabaseCopyOfAllCalendarsInStoreWithOptions(self->_database, 0, 0);
    v6 = [(EKCalendarFilter *)self _UIDSetWithCalendars:v5];
    [v6 minusSet:v4];
    CalDatabaseUnlockForThread(self->_database);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)_generateUIDSetToFilterAllCalendars
{
  if (CalDatabaseLockForThread(self->_database))
  {
    v3 = _CalDatabaseCopyOfAllCalendarsInStoreWithOptions(self->_database, 0, 0);
    v4 = [(EKCalendarFilter *)self _UIDSetWithCalendars:v3];
    CalDatabaseUnlockForThread(self->_database);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)filteredCalendars
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF70] arrayWithCapacity:0];
  if (CalDatabaseLockForThread(self->_database))
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v4 = self->_calendarUIDs;
    v5 = [(NSMutableSet *)v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v15;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v15 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v9 = *(*(&v14 + 1) + 8 * i);
          RecordStore = _CalDatabaseGetRecordStore(self->_database);
          [v9 intValue];
          CalendarWithUID = _CalGetCalendarWithUID(RecordStore);
          if (CalendarWithUID)
          {
            [v3 addObject:CalendarWithUID];
          }
        }

        v6 = [(NSMutableSet *)v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v6);
    }

    CalDatabaseUnlockForThread(self->_database);
  }

  v12 = *MEMORY[0x1E69E9840];

  return v3;
}

- (id)_visibleCalendarsWithOptions:(int)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = _CalDatabaseCopyOfAllCalendarsInStoreWithOptions(self->_database, 0, a3 | 2u);
  if (v4)
  {
    v5 = [MEMORY[0x1E695DF70] arrayWithCapacity:0];
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v6 = v4;
    v7 = [(__CFArray *)v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v16;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v16 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v15 + 1) + 8 * i);
          if (_CalCalendarCanContainEntityTypeAndStoreAllowsIt(v11, 2))
          {
            v12 = [MEMORY[0x1E696AD98] numberWithInt:{CPRecordGetID(), v15}];
            if (([(NSMutableSet *)self->_calendarUIDs containsObject:v12]& 1) == 0)
            {
              [v5 addObject:v11];
            }
          }
        }

        v8 = [(__CFArray *)v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v8);
    }
  }

  else
  {
    v5 = 0;
  }

  v13 = *MEMORY[0x1E69E9840];

  return v5;
}

- (int)visibleCalendarCountWithOptions:(int)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = CalDatabaseCopyOfAllCalendarsInStoreWithOptions(self->_database, 0, a3 | 2u);
  v5 = v4;
  if (v4)
  {
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v6 = v4;
    v7 = [(__CFArray *)v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = 0;
      v10 = *v16;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v16 != v10)
          {
            objc_enumerationMutation(v6);
          }

          if (CalCalendarCanContainEntityTypeAndStoreAllowsIt(*(*(&v15 + 1) + 8 * i), 2))
          {
            v12 = [MEMORY[0x1E696AD98] numberWithInt:{CalCalendarGetUID(), v15}];
            v9 += [(NSMutableSet *)self->_calendarUIDs containsObject:v12]^ 1;
          }
        }

        v8 = [(__CFArray *)v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v8);
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  v13 = *MEMORY[0x1E69E9840];
  return v9;
}

- (BOOL)isCalendarUIDVisible:(id)a3
{
  v4 = a3;
  if ([(EKCalendarFilter *)self isShowingAll])
  {
    LOBYTE(v5) = 1;
  }

  else
  {
    v5 = [(NSMutableSet *)self->_calendarUIDs containsObject:v4]^ 1;
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [EKCalendarFilter alloc];
  entityType = self->_entityType;
  calendarUIDs = self->_calendarUIDs;
  database = self->_database;

  return [(EKCalendarFilter *)v4 initWithDatabase:database entityType:entityType calendarUIDs:calendarUIDs];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [(NSMutableSet *)self->_calendarUIDs count];
    if (v6 == [*(v5 + 9) count])
    {
      searchTerm = self->_searchTerm;
      v8 = *(v5 + 11);
      if (searchTerm)
      {
        if (v8 && [(NSString *)searchTerm isEqualToString:?])
        {
LABEL_6:
          calendarUIDs = self->_calendarUIDs;
          v10 = *(v5 + 9);
          v11 = (calendarUIDs | v10) == 0;
          if (calendarUIDs && v10)
          {
            v11 = [(NSMutableSet *)calendarUIDs isEqual:?];
          }

          goto LABEL_12;
        }
      }

      else if (!v8)
      {
        goto LABEL_6;
      }
    }

    v11 = 0;
LABEL_12:

    goto LABEL_13;
  }

  v11 = 0;
LABEL_13:

  return v11;
}

+ (void)_addCalendarWithUID:(id)a3 toSet:(id)a4 database:(CalDatabase *)a5
{
  v10 = a3;
  v7 = a4;
  [v10 intValue];
  v8 = CalDatabaseCopyCalendarWithUID(a5);
  if (v8)
  {
    v9 = v8;
    if (!CalCalendarIsHidden(v8))
    {
      [v7 addObject:v10];
    }

    CFRelease(v9);
  }
}

+ (void)_addCalendarUIDsFromPrefs:(id)a3 toSet:(id)a4 database:(CalDatabase *)a5
{
  v21 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v10 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v17;
    do
    {
      v13 = 0;
      do
      {
        if (*v17 != v12)
        {
          objc_enumerationMutation(v8);
        }

        v14 = *(*(&v16 + 1) + 8 * v13);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [a1 _addCalendarWithUID:v14 toSet:v9 database:a5];
        }

        ++v13;
      }

      while (v11 != v13);
      v11 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v11);
  }

  v15 = *MEMORY[0x1E69E9840];
}

+ (void)_addCalendarsForStoreWithUID:(id)a3 toSet:(id)a4 database:(CalDatabase *)a5
{
  v16 = a4;
  [a3 intValue];
  v7 = CalDatabaseCopyStoreWithUID(a5);
  if (v7)
  {
    v8 = v7;
    v9 = CalStoreCopyCalendars(v7);
    if (v9)
    {
      v10 = v9;
      Count = CFArrayGetCount(v9);
      if (Count >= 1)
      {
        v12 = Count;
        for (i = 0; i != v12; ++i)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(v10, i);
          if (!CalCalendarIsHidden(ValueAtIndex) && CalCalendarCanContainEntityTypeAndStoreAllowsIt(ValueAtIndex, 2))
          {
            v15 = [MEMORY[0x1E696AD98] numberWithInt:CalCalendarGetUID()];
            [v16 addObject:v15];
          }
        }
      }

      CFRelease(v10);
    }

    CFRelease(v8);
  }
}

- (void)validate
{
  v22 = *MEMORY[0x1E69E9840];
  if ([(NSMutableSet *)self->_calendarUIDs count])
  {
    v3 = [(NSMutableSet *)self->_calendarUIDs copy];
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v4 = v3;
    v5 = [v4 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (!v5)
    {
      goto LABEL_16;
    }

    v6 = v5;
    v7 = *v18;
    while (1)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v18 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v17 + 1) + 8 * i);
        database = self->_database;
        [v9 intValue];
        v11 = CalDatabaseCopyCalendarWithUID(database);
        if (!v11)
        {
          goto LABEL_13;
        }

        v12 = v11;
        if (CalCalendarIsHidden(v11) || (v13 = CalCalendarCopyStore(v12)) == 0)
        {
          CFRelease(v12);
LABEL_13:
          [(NSMutableSet *)self->_calendarUIDs removeObject:v9];
          continue;
        }

        v14 = v13;
        IsEnabled = CalStoreIsEnabled(v13);
        CFRelease(v14);
        CFRelease(v12);
        if (!IsEnabled)
        {
          goto LABEL_13;
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v17 objects:v21 count:16];
      if (!v6)
      {
LABEL_16:

        break;
      }
    }
  }

  v16 = *MEMORY[0x1E69E9840];
}

- (id)_addFilterToQuery:(id)a3 creator:(void *)a4 userInfo:(void *)a5
{
  v5 = (a4)(self, self->_database, a3, a5);

  return v5;
}

- (id)filterQueryForQueryString:(id)a3 creator:(void *)a4 userInfo:(void *)a5
{
  v8 = a3;
  pthread_mutex_lock(&self->_lock);
  v9 = [(EKCalendarFilter *)self _addFilterToQuery:v8 creator:a4 userInfo:a5];

  pthread_mutex_unlock(&self->_lock);

  return v9;
}

- (id)filterQueryForKey:(id)a3 prefix:(id)a4 whereClause:(id)a5 creator:(void *)a6 userInfo:(void *)a7
{
  v11 = a4;
  v12 = a5;
  pthread_mutex_lock(&self->_lock);
  v13 = (a6)(self, self->_database, a7);
  v14 = v13;
  if (!v12 || !v13)
  {
    if (!v13)
    {
      goto LABEL_9;
    }

    goto LABEL_7;
  }

  if (![v13 length] || !objc_msgSend(v12, "length"))
  {
LABEL_7:
    if ([v14 length])
    {
      v16 = v14;
LABEL_12:
      v15 = [v16 copy];
      goto LABEL_13;
    }

LABEL_9:
    if (!v12 || ![v12 length])
    {
      v17 = 0;
      goto LABEL_17;
    }

    v16 = v12;
    goto LABEL_12;
  }

  v15 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%@ AND %@", v14, v12];
LABEL_13:
  v17 = v15;
  if (v15 && [v15 length])
  {
    v18 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ WHERE %@", v11, v17];
    goto LABEL_18;
  }

LABEL_17:
  v18 = [v11 copy];
LABEL_18:
  v19 = v18;
  pthread_mutex_unlock(&self->_lock);

  return v19;
}

- (id)calendarIDClauseForQueryWithVariableName:(id)a3
{
  v4 = a3;
  if ([(NSMutableSet *)self->_calendarUIDs count])
  {
    if ([(EKCalendarFilter *)self _isFilteringAllWhileLocked])
    {
      v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ in ()", v4];
    }

    else
    {
      v6 = _CalDatabaseCopyOfAllCalendarsInStoreWithOptions(self->_database, 0, 2);
      v7 = [(EKCalendarFilter *)self _UIDSetWithCalendars:v6];
      v8 = v7;
      if (v7 && ![v7 isSubsetOfSet:self->_calendarUIDs])
      {
        v9 = _CalDatabaseCopyOfAllCalendarsInStoreWithOptions(self->_database, 0, 0);
        v10 = [(EKCalendarFilter *)self _UIDAntiSetWithCalendars:v9];
        [v10 unionSet:self->_calendarUIDs];
        [v8 minusSet:self->_calendarUIDs];
        v11 = [v10 count];
        if (v11 >= [v8 count])
        {
          if ([v8 count] == 1)
          {
            v14 = MEMORY[0x1E696AEC0];
            v13 = [v8 anyObject];
            [v14 stringWithFormat:@"%@ = %@", v4, v13];
          }

          else
          {
            v15 = [v8 allObjects];
            v13 = [v15 componentsJoinedByString:{@", "}];

            [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ IN (%@)", v4, v13];
          }
        }

        else
        {
          v12 = [v10 allObjects];
          v13 = [v12 componentsJoinedByString:{@", "}];

          [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ NOT IN (%@)", v4, v13];
        }
        v5 = ;
      }

      else
      {
        v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ IN ()", v4];
      }
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end