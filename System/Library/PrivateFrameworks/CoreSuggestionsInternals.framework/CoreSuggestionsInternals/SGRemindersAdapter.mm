@interface SGRemindersAdapter
+ (BOOL)reminderHasDuplicate:(id)a3 usingStore:(id)a4;
+ (id)_remindersFoundInAppsListInREMStore:(id)a3;
+ (id)constructNotesForReminder:(id)a3;
+ (id)reminderPredicateForReminder:(id)a3;
+ (unint64_t)remindersCreatedBetweenStartDate:(id)a3 endDate:(id)a4;
- (BOOL)_deleteReminder:(id)a3 usingReminderStore:(id)a4;
- (BOOL)_saveReminder:(id)a3 usingReminderStore:(id)a4;
- (SGRemindersAdapter)initWithSGSqlEntityStore:(id)a3;
- (SGRemindersAdapter)initWithSGSqlEntityStore:(id)a3 andREMStore:(id)a4;
- (SGSqlEntityStore)store;
- (id)_remRemindersAssociatedWithStorageReminder:(id)a3 remStore:(id)a4;
- (id)_remRemindersAssociatedWithTitle:(id)a3 sourceUniqueIdentifier:(id)a4 usingStore:(id)a5;
- (id)sourceUniqueIdentifierForStorageReminder:(id)a3;
- (void)addReminder:(id)a3;
- (void)confirmReminderFromOtherDevice:(id)a3;
- (void)confirmReminderFromThisDevice:(id)a3;
- (void)orphanReminder:(id)a3;
- (void)rejectReminder:(id)a3;
- (void)rejectReminderFromOtherDevice:(id)a3;
- (void)rejectReminderFromThisDevice:(id)a3;
- (void)reminderAlarmTriggeredFromThisDevice:(id)a3;
@end

@implementation SGRemindersAdapter

- (SGSqlEntityStore)store
{
  WeakRetained = objc_loadWeakRetained(&self->_store);

  return WeakRetained;
}

- (id)_remRemindersAssociatedWithTitle:(id)a3 sourceUniqueIdentifier:(id)a4 usingStore:(id)a5
{
  v46 = *MEMORY[0x277D85DE8];
  v34 = a3;
  v31 = a4;
  v7 = a5;
  v32 = objc_opt_new();
  v30 = v7;
  [objc_opt_class() _remindersFoundInAppsListInREMStore:v7];
  v29 = v40 = 0;
  v8 = [v29 fetchRemindersWithError:&v40];
  v28 = v40;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  obj = v8;
  v9 = [obj countByEnumeratingWithState:&v36 objects:v45 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v37;
    v12 = 0x277CCA000uLL;
    do
    {
      v13 = 0;
      do
      {
        if (*v37 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v36 + 1) + 8 * v13);
        v15 = *(v12 + 2760);
        v16 = objc_opt_class();
        v17 = [v14 siriFoundInAppsData];
        v35 = 0;
        v18 = [v15 unarchivedObjectOfClass:v16 fromData:v17 error:&v35];
        v19 = v35;

        if (v18)
        {
          v20 = [v14 title];
          v21 = [v20 string];
          if ([v34 isEqualToString:v21])
          {
          }

          else
          {
            v23 = [v18 sourceUniqueIdentifier];
            v24 = [v31 isEqualToString:v23];

            v12 = 0x277CCA000;
            if (!v24)
            {
              goto LABEL_14;
            }
          }

          [v32 addObject:v14];
        }

        else
        {
          v22 = sgRemindersLogHandle();
          if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
          {
            v25 = [v14 objectID];
            *buf = 138412546;
            v42 = v25;
            v43 = 2112;
            v44 = v19;
            _os_log_error_impl(&dword_231E60000, v22, OS_LOG_TYPE_ERROR, "Unable to load metadata from reminder with id: %@ error: %@", buf, 0x16u);

            v12 = 0x277CCA000;
          }
        }

LABEL_14:

        ++v13;
      }

      while (v10 != v13);
      v10 = [obj countByEnumeratingWithState:&v36 objects:v45 count:16];
    }

    while (v10);
  }

  v26 = *MEMORY[0x277D85DE8];

  return v32;
}

- (id)_remRemindersAssociatedWithStorageReminder:(id)a3 remStore:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [v7 title];
  v9 = [(SGRemindersAdapter *)self sourceUniqueIdentifierForStorageReminder:v7];

  v10 = [(SGRemindersAdapter *)self _remRemindersAssociatedWithTitle:v8 sourceUniqueIdentifier:v9 usingStore:v6];

  return v10;
}

- (BOOL)_deleteReminder:(id)a3 usingReminderStore:(id)a4
{
  v20 = *MEMORY[0x277D85DE8];
  v5 = MEMORY[0x277D447D8];
  v6 = a4;
  v7 = a3;
  v8 = [[v5 alloc] initWithStore:v6];
  v9 = [objc_opt_class() _remindersFoundInAppsListInREMStore:v6];

  v10 = [v8 updateList:v9];
  v11 = [v8 updateReminder:v7];

  [v11 removeFromList];
  v17 = 0;
  v12 = [v8 saveSynchronouslyWithError:&v17];
  v13 = v17;
  if ((v12 & 1) == 0)
  {
    v14 = sgRemindersLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v19 = v13;
      _os_log_error_impl(&dword_231E60000, v14, OS_LOG_TYPE_ERROR, "Unable to delete reminder in ReminderKit error: %@", buf, 0xCu);
    }
  }

  v15 = *MEMORY[0x277D85DE8];
  return v12;
}

- (BOOL)_saveReminder:(id)a3 usingReminderStore:(id)a4
{
  v54 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = [objc_opt_class() _remindersFoundInAppsListInREMStore:self->_reminderStore];
  if (v6)
  {
    v7 = [objc_alloc(MEMORY[0x277D447D8]) initWithStore:self->_reminderStore];
    v8 = [v7 updateList:v6];
    v9 = [v5 title];
    v49 = v8;
    v10 = [v7 addReminderWithTitle:v9 toListChangeItem:v8];

    v11 = objc_alloc(MEMORY[0x277D020D8]);
    v12 = [v5 recordId];
    v13 = [(SGRemindersAdapter *)self sourceUniqueIdentifierForStorageReminder:v5];
    v14 = [v11 initWithRecordId:v12 sourceUniqueIdentifier:v13];

    v51 = 0;
    v48 = v14;
    v15 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v14 requiringSecureCoding:1 error:&v51];
    v16 = v51;
    v47 = v15;
    if (v15)
    {
      [v10 setSiriFoundInAppsData:v15];
    }

    else
    {
      v19 = sgRemindersLogHandle();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v53 = v16;
        _os_log_error_impl(&dword_231E60000, v19, OS_LOG_TYPE_ERROR, "Unable to serialize ReminderMetadata: %@", buf, 0xCu);
      }
    }

    v20 = [v5 dueDateComponents];

    if (v20)
    {
      v21 = objc_alloc(MEMORY[0x277D44578]);
      v22 = [v5 dueDateComponents];
      v23 = [v21 initWithDateComponents:v22];

      v24 = [v10 addAlarmWithTrigger:v23];
      v25 = [v5 dueDateComponents];
      [v10 setDueDateComponents:v25];
    }

    v26 = [v5 dueLocation];

    if (v26)
    {
      v27 = objc_alloc(MEMORY[0x277D44868]);
      v28 = [v5 dueLocation];
      v29 = [v28 label];
      v30 = [v27 initWithTitle:v29];

      v31 = [v5 dueLocation];
      [v31 latitude];
      [v30 setLatitude:?];

      v32 = [v5 dueLocation];
      [v32 longitude];
      [v30 setLongitude:?];

      v33 = [v5 dueLocation];
      [v33 accuracy];
      [v30 setRadius:?];

      v34 = [v5 dueLocationTrigger];
      if (v34 == 1)
      {
        v35 = 1;
      }

      else
      {
        v35 = 2 * (v34 == 2);
      }

      v36 = [objc_alloc(MEMORY[0x277D44580]) initWithStructuredLocation:v30 proximity:v35];
      v37 = [v10 addAlarmWithTrigger:v36];
    }

    v38 = [objc_opt_class() constructNotesForReminder:v5];
    if (v38)
    {
      v39 = [objc_alloc(MEMORY[0x277CCA898]) initWithString:v38];
      [v10 setNotes:v39];
    }

    v40 = [v5 origin];
    v41 = [v40 universalURL];

    v42 = sgRemindersLogHandle();
    if (os_log_type_enabled(v42, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v53 = v41;
      _os_log_impl(&dword_231E60000, v42, OS_LOG_TYPE_INFO, "Saving Reminder with universal link: %@", buf, 0xCu);
    }

    if (v41)
    {
      v43 = [objc_alloc(MEMORY[0x277D448F0]) initWithUniversalLink:v41];
      [v10 setUserActivity:v43];
    }

    v50 = 0;
    v18 = [v7 saveSynchronouslyWithError:&v50];
    v17 = v50;
    if ((v18 & 1) == 0)
    {
      v44 = sgRemindersLogHandle();
      if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v53 = v17;
        _os_log_error_impl(&dword_231E60000, v44, OS_LOG_TYPE_ERROR, "Unable to save reminder in ReminderKit error: %@", buf, 0xCu);
      }
    }
  }

  else
  {
    v17 = sgRemindersLogHandle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_231E60000, v17, OS_LOG_TYPE_ERROR, "Unable to load RemindersFoundInApps list", buf, 2u);
    }

    v18 = 0;
  }

  v45 = *MEMORY[0x277D85DE8];
  return v18;
}

- (id)sourceUniqueIdentifierForStorageReminder:(id)a3
{
  v3 = [a3 duplicateKey];
  v4 = [v3 parentKey];
  v5 = [v4 entityKey];
  v6 = [v5 serialize];

  if (v6)
  {
    v7 = [[SGMessageKey alloc] initWithSerialized:v6];
    v8 = [(SGMessageKey *)v7 uniqueIdentifier];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)rejectReminder:(id)a3
{
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  v6 = [(SGRemindersAdapter *)v5 _remRemindersAssociatedWithStorageReminder:v4 remStore:v5->_reminderStore];
  if ([v6 count] < 2)
  {
    if ([v6 count] == 1)
    {
      v7 = [v6 firstObject];
      [(SGRemindersAdapter *)v5 _deleteReminder:v7 usingReminderStore:v5->_reminderStore];
    }

    else
    {
      v7 = sgRemindersLogHandle();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
      {
        *v8 = 0;
        _os_log_debug_impl(&dword_231E60000, v7, OS_LOG_TYPE_DEBUG, "Didn't find any REMReminders to reject", v8, 2u);
      }
    }
  }

  else
  {
    v7 = sgRemindersLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_231E60000, v7, OS_LOG_TYPE_DEFAULT, "Multiple reminders linked to one storage reminder", buf, 2u);
    }
  }

  objc_sync_exit(v5);
}

- (void)orphanReminder:(id)a3
{
  v4 = a3;
  v5 = sgRemindersLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *v6 = 0;
    _os_log_impl(&dword_231E60000, v5, OS_LOG_TYPE_INFO, "SGRemindersAdapter: Removing pseudo reminder because of parent deletion", v6, 2u);
  }

  [(SGRemindersAdapter *)self rejectReminder:v4];
}

- (void)rejectReminderFromOtherDevice:(id)a3
{
  v4 = a3;
  v5 = sgRemindersLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *v6 = 0;
    _os_log_impl(&dword_231E60000, v5, OS_LOG_TYPE_INFO, "SGRemindersAdapter: Rejecting reminder from other device", v6, 2u);
  }

  [(SGRemindersAdapter *)self rejectReminder:v4];
}

- (void)confirmReminderFromOtherDevice:(id)a3
{
  v4 = a3;
  v5 = sgRemindersLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *v6 = 0;
    _os_log_impl(&dword_231E60000, v5, OS_LOG_TYPE_INFO, "SGRemindersAdapter: Confirming reminder from other device", v6, 2u);
  }

  [(SGRemindersAdapter *)self rejectReminder:v4];
}

- (void)reminderAlarmTriggeredFromThisDevice:(id)a3
{
  v4 = a3;
  v5 = sgRemindersLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_231E60000, v5, OS_LOG_TYPE_INFO, "SGRemindersAdapter: alarm triggered from this device", buf, 2u);
  }

  if ([v4 isAllDay])
  {
    v6 = sgRemindersLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      *v7 = 0;
      _os_log_impl(&dword_231E60000, v6, OS_LOG_TYPE_INFO, "SGRemindersAdapter: Not removing reminder since it's an allDay reminder", v7, 2u);
    }
  }

  else
  {
    [(SGRemindersAdapter *)self rejectReminder:v4];
  }
}

- (void)rejectReminderFromThisDevice:(id)a3
{
  v4 = a3;
  v5 = sgRemindersLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *v6 = 0;
    _os_log_impl(&dword_231E60000, v5, OS_LOG_TYPE_INFO, "SGRemindersAdapter: Rejecting reminder", v6, 2u);
  }

  [(SGRemindersAdapter *)self rejectReminder:v4];
}

- (void)confirmReminderFromThisDevice:(id)a3
{
  v4 = a3;
  v5 = sgRemindersLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *v6 = 0;
    _os_log_impl(&dword_231E60000, v5, OS_LOG_TYPE_INFO, "SGRemindersAdapter: Confirming reminder", v6, 2u);
  }

  [(SGRemindersAdapter *)self rejectReminderFromThisDevice:v4];
}

- (void)addReminder:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  v6 = +[SGSuggestHistory sharedSuggestHistory];
  v7 = [v6 isValidNewReminder:v4];

  if (!v7)
  {
    v12 = sgRemindersLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      LOWORD(v19) = 0;
      _os_log_impl(&dword_231E60000, v12, OS_LOG_TYPE_INFO, "Reminder is not a valid new one, already exists in SGSuggestHistory", &v19, 2u);
    }

    goto LABEL_21;
  }

  v8 = [v4 dueDateComponents];
  if (v8)
  {
    v9 = [v4 dueDateComponents];
    v10 = [MEMORY[0x277CBEAA8] date];
    if (+[SGReminderDissector isReminderDueDateComponentsInPast:givenReferenceDate:allDay:](SGReminderDissector, "isReminderDueDateComponentsInPast:givenReferenceDate:allDay:", v9, v10, [v4 isAllDay]))
    {
      v11 = [MEMORY[0x277D02098] showPastEvents];

      if ((v11 & 1) == 0)
      {
        v12 = sgRemindersLogHandle();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
        {
          LOWORD(v19) = 0;
          v13 = "SGRemindersAdapter: Not adding reminder that has dueDate in the past";
LABEL_16:
          _os_log_debug_impl(&dword_231E60000, v12, OS_LOG_TYPE_DEBUG, v13, &v19, 2u);
          goto LABEL_21;
        }

        goto LABEL_21;
      }
    }

    else
    {
    }
  }

  v14 = [(SGRemindersAdapter *)v5 _remRemindersAssociatedWithStorageReminder:v4 remStore:v5->_reminderStore];
  v15 = [v14 count];

  if (v15)
  {
    v12 = sgRemindersLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(v19) = 0;
      v13 = "SGRemindersAdapter: PseudoReminder found in Found in Apps list, not adding";
      goto LABEL_16;
    }

LABEL_21:

    goto LABEL_22;
  }

  if ([objc_opt_class() reminderHasDuplicate:v4 usingStore:v5->_reminderStore])
  {
    v12 = sgRemindersLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(v19) = 0;
      v13 = "SGRemindersAdapter: Duplicate found in user defined list, not adding";
      goto LABEL_16;
    }

    goto LABEL_21;
  }

  v16 = sgRemindersLogHandle();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
  {
    v17 = [v4 recordId];
    v19 = 138412290;
    v20 = v17;
    _os_log_impl(&dword_231E60000, v16, OS_LOG_TYPE_INFO, "SGRemindersAdapter: Adding Reminder with recordId: %@", &v19, 0xCu);
  }

  if ([(SGRemindersAdapter *)v5 _saveReminder:v4 usingReminderStore:v5->_reminderStore])
  {
    v12 = +[SGRTCLogging defaultLogger];
    [v12 logReminderInteractionFromReminder:v4 interface:0 actionType:1];
    goto LABEL_21;
  }

LABEL_22:
  objc_sync_exit(v5);

  v18 = *MEMORY[0x277D85DE8];
}

- (SGRemindersAdapter)initWithSGSqlEntityStore:(id)a3 andREMStore:(id)a4
{
  v6 = a3;
  v7 = a4;
  v11.receiver = self;
  v11.super_class = SGRemindersAdapter;
  v8 = [(SGRemindersAdapter *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_store, v6);
    objc_storeStrong(&v9->_reminderStore, a4);
  }

  return v9;
}

- (SGRemindersAdapter)initWithSGSqlEntityStore:(id)a3
{
  v4 = a3;
  v5 = objc_opt_new();
  v6 = [(SGRemindersAdapter *)self initWithSGSqlEntityStore:v4 andREMStore:v5];

  return v6;
}

+ (id)constructNotesForReminder:(id)a3
{
  v24[1] = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [v3 origin];
  v5 = [v4 localizedApplicationName];

  v6 = +[SGContactStoreFactory contactStore];
  v7 = [v3 contactIdentifier];
  v8 = [MEMORY[0x277CBDA78] descriptorForRequiredKeysForStyle:1000];
  v24[0] = v8;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v24 count:1];
  v19 = 0;
  v10 = [SGContactsInterface unifiedContactWithIdentifier:v7 keysToFetch:v9 usingContactStore:v6 error:&v19];
  v11 = v19;

  if (v10 && ([MEMORY[0x277CBDA78] stringFromContact:v10 style:1000], (v12 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v13 = v12;
    v14 = [SGFoundInAppsStrings foundInAppsStringLongVersionForAppName:v5 contactName:v12];

    v15 = v14;
  }

  else
  {
    v14 = sgRemindersLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v16 = [v3 loggingIdentifier];
      *buf = 138543618;
      v21 = v16;
      v22 = 2114;
      v23 = v11;
      _os_log_impl(&dword_231E60000, v14, OS_LOG_TYPE_DEFAULT, "SGRemindersAdapter - [SGStorageReminder (%{public}@)] constructNotesForReminder: Unable to fetch contact: %{public}@", buf, 0x16u);
    }

    v15 = 0;
  }

  v17 = *MEMORY[0x277D85DE8];

  return v15;
}

+ (unint64_t)remindersCreatedBetweenStartDate:(id)a3 endDate:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = objc_opt_new();
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 0;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __63__SGRemindersAdapter_remindersCreatedBetweenStartDate_endDate___block_invoke;
  v12[3] = &unk_27894C528;
  v8 = v5;
  v13 = v8;
  v9 = v6;
  v14 = v9;
  v15 = &v16;
  [v7 enumerateAllRemindersWithBlock:v12];
  v10 = v17[3];

  _Block_object_dispose(&v16, 8);
  return v10;
}

void __63__SGRemindersAdapter_remindersCreatedBetweenStartDate_endDate___block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  v14 = a2;
  v5 = [v14 creationDate];
  [v5 timeIntervalSinceReferenceDate];
  v7 = v6;
  [*(a1 + 32) timeIntervalSinceReferenceDate];
  if (v7 >= v8)
  {
    v9 = [v14 creationDate];
    [v9 timeIntervalSinceReferenceDate];
    v11 = v10;
    [*(a1 + 40) timeIntervalSinceReferenceDate];
    v13 = v12;

    if (v11 <= v13)
    {
      ++*(*(*(a1 + 48) + 8) + 24);
    }
  }

  else
  {
  }

  if (*(*(*(a1 + 48) + 8) + 24) >= 0x33uLL)
  {
    *a3 = 1;
  }
}

+ (BOOL)reminderHasDuplicate:(id)a3 usingStore:(id)a4
{
  v50 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (!v7)
  {
    v7 = objc_opt_new();
  }

  v8 = [a1 reminderPredicateForReminder:v6];
  v48 = 0;
  v9 = [v7 fetchRemindersMatchingPredicateDescriptor:v8 sortDescriptors:0 options:0 error:&v48];
  v10 = v48;
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  obj = v9;
  v11 = [obj countByEnumeratingWithState:&v44 objects:v49 count:16];
  if (v11)
  {
    v12 = v11;
    v39 = v10;
    v40 = v8;
    v41 = v7;
    v13 = *v45;
    while (2)
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v45 != v13)
        {
          objc_enumerationMutation(obj);
        }

        v15 = *(*(&v44 + 1) + 8 * i);
        v16 = objc_autoreleasePoolPush();
        if (([v15 isCompleted] & 1) == 0)
        {
          v17 = [v15 title];
          v18 = [v17 string];
          v19 = [v6 title];
          v20 = [v18 isEqualToString:v19];

          if (v20)
          {
            v35 = sgRemindersLogHandle();
            if (!os_log_type_enabled(v35, OS_LOG_TYPE_DEBUG))
            {
LABEL_22:
              v8 = v40;
              v7 = v41;
              v10 = v39;

              objc_autoreleasePoolPop(v16);
              v34 = 1;
              goto LABEL_23;
            }

            *buf = 0;
            v36 = "SGRemindersAdapter: Duplicate reminder found based on exact title match";
LABEL_25:
            _os_log_debug_impl(&dword_231E60000, v35, OS_LOG_TYPE_DEBUG, v36, buf, 2u);
            goto LABEL_22;
          }

          v21 = [v15 dueDateComponents];
          v22 = [v6 dueDateComponents];
          v23 = [v21 isEqual:v22];

          if (v23)
          {
            v24 = [v6 title];
            v25 = [v15 title];
            v26 = [v25 string];
            v27 = [SGLevenshtein distanceBetweenStrings:v24 and:v26];

            v28 = [v6 title];
            v29 = [v28 length];

            v30 = [v15 title];
            v31 = [v30 string];
            v32 = [v31 length];

            v33 = v29 <= v32 ? v32 : v29;
            if (v27 / v33 < 0.5)
            {
              v35 = sgRemindersLogHandle();
              if (!os_log_type_enabled(v35, OS_LOG_TYPE_DEBUG))
              {
                goto LABEL_22;
              }

              *buf = 0;
              v36 = "SGRemindersAdapter: Duplicate reminder found based on dueDate and edit distance of title";
              goto LABEL_25;
            }
          }
        }

        objc_autoreleasePoolPop(v16);
      }

      v12 = [obj countByEnumeratingWithState:&v44 objects:v49 count:16];
      if (v12)
      {
        continue;
      }

      break;
    }

    v34 = 0;
    v8 = v40;
    v7 = v41;
    v10 = v39;
  }

  else
  {
    v34 = 0;
  }

LABEL_23:

  v37 = *MEMORY[0x277D85DE8];
  return v34;
}

+ (id)reminderPredicateForReminder:(id)a3
{
  v38 = *MEMORY[0x277D85DE8];
  v29 = a3;
  v3 = [v29 title];
  v4 = [SGReminderMessage searchTokensForReminderTitle:v3];

  v5 = objc_opt_new();
  v6 = [MEMORY[0x277D447C0] predicateDescriptorForRemindersWithCompleted:0];
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  obj = v4;
  v7 = [obj countByEnumeratingWithState:&v31 objects:v37 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v32;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v32 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = [MEMORY[0x277D447C0] predicateDescriptorForRemindersWithTitleContains:*(*(&v31 + 1) + 8 * i)];
        v12 = MEMORY[0x277D447C0];
        v36[0] = v6;
        v36[1] = v11;
        v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v36 count:2];
        v14 = [v12 andPredicateDescriptorWithDescriptors:v13];

        [v5 addObject:v14];
      }

      v8 = [obj countByEnumeratingWithState:&v31 objects:v37 count:16];
    }

    while (v8);
  }

  v15 = [v29 dueDateComponents];
  v16 = [v15 date];

  if (v16)
  {
    v17 = MEMORY[0x277D447C0];
    v18 = [v29 dueDateComponents];
    v19 = [v18 date];
    v20 = [v29 dueDateComponents];
    v21 = [v20 date];
    v22 = [v17 predicateDescriptorForRemindersWithDueDateBetween:v19 and:v21];

    v23 = MEMORY[0x277D447C0];
    v35[0] = v6;
    v35[1] = v22;
    v24 = [MEMORY[0x277CBEA60] arrayWithObjects:v35 count:2];
    v25 = [v23 andPredicateDescriptorWithDescriptors:v24];

    [v5 addObject:v25];
  }

  v26 = [MEMORY[0x277D447C0] orPredicateDescriptorWithDescriptors:v5];

  v27 = *MEMORY[0x277D85DE8];

  return v26;
}

+ (id)_remindersFoundInAppsListInREMStore:(id)a3
{
  v11 = *MEMORY[0x277D85DE8];
  v8 = 0;
  v3 = [a3 fetchSiriFoundInAppsListWithError:&v8];
  v4 = v8;
  if (!v3)
  {
    v5 = sgRemindersLogHandle();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v10 = v4;
      _os_log_error_impl(&dword_231E60000, v5, OS_LOG_TYPE_ERROR, "Unable to retrieve found in apps list: %@", buf, 0xCu);
    }
  }

  v6 = *MEMORY[0x277D85DE8];

  return v3;
}

@end