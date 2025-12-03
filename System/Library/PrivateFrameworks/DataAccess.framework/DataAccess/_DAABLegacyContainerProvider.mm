@interface _DAABLegacyContainerProvider
- (BOOL)setLastSyncDateForContainer:(id)container;
- (_DAABLegacyContainerProvider)initWithAddressBook:(void *)book;
- (id)allContainers;
- (id)allContainersForAccountWithExternalIdentifier:(id)identifier;
- (id)containerWithExternalIdentifier:(id)identifier forAccountWithExternalIdentifier:(id)externalIdentifier;
- (id)createNewContainerWithType:(int)type name:(id)name externalIdentifier:(id)identifier constraintsPath:(id)path syncData:(id)data contentReadonly:(BOOL)readonly propertiesReadonly:(BOOL)propertiesReadonly forAccount:(id)self0;
- (void)dealloc;
- (void)mergeAllRecordsIntoContainer:(id)container shouldInsertChangeHistoryRecords:(BOOL)records;
@end

@implementation _DAABLegacyContainerProvider

- (_DAABLegacyContainerProvider)initWithAddressBook:(void *)book
{
  v6.receiver = self;
  v6.super_class = _DAABLegacyContainerProvider;
  v4 = [(_DAABLegacyContainerProvider *)&v6 init];
  if (v4)
  {
    v4->_addressBook = CFRetain(book);
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

- (id)containerWithExternalIdentifier:(id)identifier forAccountWithExternalIdentifier:(id)externalIdentifier
{
  externalIdentifierCopy = externalIdentifier;
  identifierCopy = identifier;
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
  array = [MEMORY[0x277CBEB18] array];
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
        [array addObject:v11];
      }

      v6 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v6);
  }

  v12 = *MEMORY[0x277D85DE8];

  return array;
}

- (id)allContainersForAccountWithExternalIdentifier:(id)identifier
{
  v22 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  [(_DAABLegacyContainerProvider *)self addressBook];
  v5 = ABAddressBookCopyArrayOfAllSourcesWithAccountIdentifier();
  array = [MEMORY[0x277CBEB18] array];
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
        [array addObject:v14];
      }

      v9 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v9);
  }

  v15 = *MEMORY[0x277D85DE8];

  return array;
}

- (id)createNewContainerWithType:(int)type name:(id)name externalIdentifier:(id)identifier constraintsPath:(id)path syncData:(id)data contentReadonly:(BOOL)readonly propertiesReadonly:(BOOL)propertiesReadonly forAccount:(id)self0
{
  readonlyCopy = readonly;
  accountCopy = account;
  dataCopy = data;
  pathCopy = path;
  identifierCopy = identifier;
  nameCopy = name;
  v20 = ABSourceCreate();
  v21 = *MEMORY[0x277CE9A70];
  [accountCopy legacyIdentifier];

  ABRecordSetIntValue();
  v22 = [[DAABLegacyContainer alloc] initWithABSource:v20];
  [(DAABLegacyContainer *)v22 setType:type];
  [(DAABLegacyContainer *)v22 setName:nameCopy];

  [(DAABLegacyContainer *)v22 setExternalIdentifier:identifierCopy];
  [(DAABLegacyContainer *)v22 setConstraintsPath:pathCopy];

  [(DAABLegacyContainer *)v22 setSyncData:dataCopy];
  [(DAABLegacyContainer *)v22 setContentReadonly:readonlyCopy];
  [(DAABLegacyContainer *)v22 setArePropertiesReadonly:propertiesReadonly];
  ABAddressBookAddRecord([(_DAABLegacyContainerProvider *)self addressBook], v20, 0);
  CFRelease(v20);

  return v22;
}

- (void)mergeAllRecordsIntoContainer:(id)container shouldInsertChangeHistoryRecords:(BOOL)records
{
  recordsCopy = records;
  v27 = *MEMORY[0x277D85DE8];
  containerCopy = container;
  v7 = containerCopy;
  if (containerCopy)
  {
    asSource = [containerCopy asSource];
    v9 = DALoggingwithCategory();
    v10 = v9;
    if (asSource)
    {
      v11 = *(MEMORY[0x277D03988] + 5);
      if (os_log_type_enabled(v9, v11))
      {
        *buf = 67240192;
        v26 = recordsCopy;
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
          RecordID = ABRecordGetRecordID(asSource);
          v22[0] = MEMORY[0x277D85DD0];
          v22[1] = 3221225472;
          v22[2] = __94___DAABLegacyContainerProvider_mergeAllRecordsIntoContainer_shouldInsertChangeHistoryRecords___block_invoke;
          v22[3] = &unk_278F13850;
          v24 = recordsCopy;
          v23 = RecordID;
          v22[4] = self;
          v22[5] = Count;
          v22[6] = v13;
          v22[7] = asSource;
          v16 = MEMORY[0x24C1CE570](v22);
          v17 = v16;
          if (recordsCopy)
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

- (BOOL)setLastSyncDateForContainer:(id)container
{
  v15 = *MEMORY[0x277D85DE8];
  containerCopy = container;
  date = [MEMORY[0x277CBEAA8] date];
  asSource = [containerCopy asSource];
  v6 = *MEMORY[0x277CE9AB0];
  v7 = ABRecordCopyValue(asSource, *MEMORY[0x277CE9AB0]);
  v8 = DALoggingwithCategory();
  v9 = *(MEMORY[0x277D03988] + 5);
  v10 = os_log_type_enabled(v8, v9);
  if (v7)
  {
    if (v10)
    {
      v13 = 138543362;
      v14 = date;
      _os_log_impl(&dword_24844D000, v8, v9, "Another sync finishing %{public}@, not setting lastSyncDate", &v13, 0xCu);
    }
  }

  else
  {
    if (v10)
    {
      v13 = 138543362;
      v14 = date;
      _os_log_impl(&dword_24844D000, v8, v9, "First sync finishing %{public}@, setting lastSyncDate", &v13, 0xCu);
    }

    ABRecordSetValue([containerCopy asSource], v6, date, 0);
  }

  v11 = *MEMORY[0x277D85DE8];
  return v7 == 0;
}

@end