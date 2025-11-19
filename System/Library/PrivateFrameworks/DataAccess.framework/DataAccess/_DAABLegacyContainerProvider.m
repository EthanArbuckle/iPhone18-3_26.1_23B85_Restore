@interface _DAABLegacyContainerProvider
- (BOOL)setLastSyncDateForContainer:(id)a3;
- (_DAABLegacyContainerProvider)initWithAddressBook:(void *)a3;
- (id)allContainers;
- (id)allContainersForAccountWithExternalIdentifier:(id)a3;
- (id)containerWithExternalIdentifier:(id)a3 forAccountWithExternalIdentifier:(id)a4;
- (id)createNewContainerWithType:(int)a3 name:(id)a4 externalIdentifier:(id)a5 constraintsPath:(id)a6 syncData:(id)a7 contentReadonly:(BOOL)a8 propertiesReadonly:(BOOL)a9 forAccount:(id)a10;
- (void)dealloc;
- (void)mergeAllRecordsIntoContainer:(id)a3 shouldInsertChangeHistoryRecords:(BOOL)a4;
@end

@implementation _DAABLegacyContainerProvider

- (_DAABLegacyContainerProvider)initWithAddressBook:(void *)a3
{
  v6.receiver = self;
  v6.super_class = _DAABLegacyContainerProvider;
  v4 = [(_DAABLegacyContainerProvider *)&v6 init];
  if (v4)
  {
    v4->_addressBook = CFRetain(a3);
  }

  return v4;
}

- (void)dealloc
{
  CFRelease(self->_addressBook);
  v3.receiver = self;
  v3.super_class = _DAABLegacyContainerProvider;
  [(_DAABLegacyContainerProvider *)&v3 dealloc];
}

- (id)containerWithExternalIdentifier:(id)a3 forAccountWithExternalIdentifier:(id)a4
{
  v6 = a4;
  v7 = a3;
  [(_DAABLegacyContainerProvider *)self addressBook];
  v8 = ABAddressBookCopySourceWithAccountAndExternalIdentifiers();

  if (v8)
  {
    v9 = [[DAABLegacyContainer alloc] initWithABSource:v8];
    CFRelease(v8);
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)allContainers
{
  v19 = *MEMORY[0x277D85DE8];
  [(_DAABLegacyContainerProvider *)self addressBook];
  v2 = ABAddressBookCopyArrayOfAllSourcesIncludingDisabledSources();
  v3 = [MEMORY[0x277CBEB18] array];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v4 = v2;
  v5 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
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
        v10 = [DAABLegacyContainer alloc];
        v11 = [(DAABLegacyContainer *)v10 initWithABSource:v9, v14];
        [v3 addObject:v11];
      }

      v6 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v6);
  }

  v12 = *MEMORY[0x277D85DE8];

  return v3;
}

- (id)allContainersForAccountWithExternalIdentifier:(id)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v4 = a3;
  [(_DAABLegacyContainerProvider *)self addressBook];
  v5 = ABAddressBookCopyArrayOfAllSourcesWithAccountIdentifier();
  v6 = [MEMORY[0x277CBEB18] array];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v7 = v5;
  v8 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v18;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v18 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v17 + 1) + 8 * i);
        v13 = [DAABLegacyContainer alloc];
        v14 = [(DAABLegacyContainer *)v13 initWithABSource:v12, v17];
        [v6 addObject:v14];
      }

      v9 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v9);
  }

  v15 = *MEMORY[0x277D85DE8];

  return v6;
}

- (id)createNewContainerWithType:(int)a3 name:(id)a4 externalIdentifier:(id)a5 constraintsPath:(id)a6 syncData:(id)a7 contentReadonly:(BOOL)a8 propertiesReadonly:(BOOL)a9 forAccount:(id)a10
{
  v24 = a8;
  v15 = a10;
  v16 = a7;
  v17 = a6;
  v18 = a5;
  v19 = a4;
  v20 = ABSourceCreate();
  v21 = *MEMORY[0x277CE9A70];
  [v15 legacyIdentifier];

  ABRecordSetIntValue();
  v22 = [[DAABLegacyContainer alloc] initWithABSource:v20];
  [(DAABLegacyContainer *)v22 setType:a3];
  [(DAABLegacyContainer *)v22 setName:v19];

  [(DAABLegacyContainer *)v22 setExternalIdentifier:v18];
  [(DAABLegacyContainer *)v22 setConstraintsPath:v17];

  [(DAABLegacyContainer *)v22 setSyncData:v16];
  [(DAABLegacyContainer *)v22 setContentReadonly:v24];
  [(DAABLegacyContainer *)v22 setArePropertiesReadonly:a9];
  ABAddressBookAddRecord([(_DAABLegacyContainerProvider *)self addressBook], v20, 0);
  CFRelease(v20);

  return v22;
}

- (void)mergeAllRecordsIntoContainer:(id)a3 shouldInsertChangeHistoryRecords:(BOOL)a4
{
  v4 = a4;
  v27 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = v6;
  if (v6)
  {
    v8 = [v6 asSource];
    v9 = DALoggingwithCategory();
    v10 = v9;
    if (v8)
    {
      v11 = *(MEMORY[0x277D03988] + 5);
      if (os_log_type_enabled(v9, v11))
      {
        *buf = 67240192;
        v26 = v4;
        _os_log_impl(&dword_24844D000, v10, v11, "About to mergeAllRecordsIntoContainer, shouldInsertChangeHistoryRecords: %{public}d ", buf, 8u);
      }

      [(_DAABLegacyContainerProvider *)self addressBook];
      if (ABAddressBookGetCountOfRecordsOutsideSource() >= 1)
      {
        [(_DAABLegacyContainerProvider *)self addressBook];
        v12 = ABAddressBookCopyArrayOfAllSourcesIncludingDisabledSources();
        if (v12)
        {
          v13 = v12;
          Count = CFArrayGetCount(v12);
          RecordID = ABRecordGetRecordID(v8);
          v22[0] = MEMORY[0x277D85DD0];
          v22[1] = 3221225472;
          v22[2] = __94___DAABLegacyContainerProvider_mergeAllRecordsIntoContainer_shouldInsertChangeHistoryRecords___block_invoke;
          v22[3] = &unk_278F13850;
          v24 = v4;
          v23 = RecordID;
          v22[4] = self;
          v22[5] = Count;
          v22[6] = v13;
          v22[7] = v8;
          v16 = MEMORY[0x24C1CE570](v22);
          v17 = v16;
          if (v4)
          {
            [(_DAABLegacyContainerProvider *)self addressBook];
            ABChangeHistoryInsertUpdatesForRecordsFromBlockWithClientIdentifier();
          }

          else
          {
            (*(v16 + 16))(v16);
          }

          CFRelease(v13);
        }
      }
    }

    else
    {
      v20 = *(MEMORY[0x277D03988] + 3);
      if (os_log_type_enabled(v9, v20))
      {
        *buf = 0;
        _os_log_impl(&dword_24844D000, v10, v20, "Could not derive an ABSource from DAContainer in -mergeAllRecordsIntoContainer:shouldInsertChangeHistoryRecords, aborting merge", buf, 2u);
      }
    }
  }

  else
  {
    v18 = DALoggingwithCategory();
    v19 = *(MEMORY[0x277D03988] + 3);
    if (os_log_type_enabled(v18, v19))
    {
      *buf = 0;
      _os_log_impl(&dword_24844D000, v18, v19, "Nil container passed to -mergeAllRecordsIntoContainer:shouldInsertChangeHistoryRecords, aborting merge", buf, 2u);
    }
  }

  v21 = *MEMORY[0x277D85DE8];
}

- (BOOL)setLastSyncDateForContainer:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [MEMORY[0x277CBEAA8] date];
  v5 = [v3 asSource];
  v6 = *MEMORY[0x277CE9AB0];
  v7 = ABRecordCopyValue(v5, *MEMORY[0x277CE9AB0]);
  v8 = DALoggingwithCategory();
  v9 = *(MEMORY[0x277D03988] + 5);
  v10 = os_log_type_enabled(v8, v9);
  if (v7)
  {
    if (v10)
    {
      v13 = 138543362;
      v14 = v4;
      _os_log_impl(&dword_24844D000, v8, v9, "Another sync finishing %{public}@, not setting lastSyncDate", &v13, 0xCu);
    }
  }

  else
  {
    if (v10)
    {
      v13 = 138543362;
      v14 = v4;
      _os_log_impl(&dword_24844D000, v8, v9, "First sync finishing %{public}@, setting lastSyncDate", &v13, 0xCu);
    }

    ABRecordSetValue([v3 asSource], v6, v4, 0);
  }

  v11 = *MEMORY[0x277D85DE8];
  return v7 == 0;
}

@end