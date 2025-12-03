@interface MKContactMigrator
- (MKContactMigrator)init;
- (void)import:(id)import;
- (void)importVCard:(id)card;
@end

@implementation MKContactMigrator

- (MKContactMigrator)init
{
  v6.receiver = self;
  v6.super_class = MKContactMigrator;
  v2 = [(MKMigrator *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBDAB8]);
    contactStore = v2->_contactStore;
    v2->_contactStore = v3;

    [(MKMigrator *)v2 setType:5];
  }

  return v2;
}

- (void)importVCard:(id)card
{
  cardCopy = card;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v5 = objc_autoreleasePoolPush();
  [(MKContactMigrator *)selfCopy import:cardCopy];
  objc_autoreleasePoolPop(v5);
  objc_sync_exit(selfCopy);
}

- (void)import:(id)import
{
  v43 = *MEMORY[0x277D85DE8];
  importCopy = import;
  date = [MEMORY[0x277CBEAA8] date];
  v6 = +[MKLog log];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    selfCopy2 = self;
    _os_log_impl(&dword_2592D2000, v6, OS_LOG_TYPE_INFO, "%@ will import a vcard.", buf, 0xCu);
  }

  v39 = 0;
  v7 = [MEMORY[0x277CBDAC8] contactsWithData:importCopy error:&v39];
  v8 = v39;
  if (v8)
  {
    v9 = +[MKLog log];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [(MKBookmarkMigrator *)v8 import:v9];
    }

LABEL_20:

    v10 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:importCopy encoding:4];
    if ([v10 length])
    {
      v18 = [v10 mk_occurrenceCountOfString:@"BEGIN:VCARD"];
      if (v18 <= 1)
      {
        v19 = 1;
      }

      else
      {
        v19 = v18;
      }

      [(MKMigrator *)self migratorDidFailWithImportError:v8 count:v19];
    }

    else
    {
      [(MKMigrator *)self migratorDidFailWithImportError:v8];
    }

    goto LABEL_30;
  }

  if (![v7 count])
  {
    v9 = +[MKLog log];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [MKContactMigrator import:v9];
    }

    goto LABEL_20;
  }

  v9 = objc_alloc_init(MEMORY[0x277CBDBA0]);
  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v10 = v7;
  v11 = [v10 countByEnumeratingWithState:&v35 objects:v40 count:16];
  if (v11)
  {
    v12 = *v36;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v36 != v12)
        {
          objc_enumerationMutation(v10);
        }

        v14 = [*(*(&v35 + 1) + 8 * i) mutableCopy];
        [v9 addContact:v14 toContainerWithIdentifier:0];
      }

      v11 = [v10 countByEnumeratingWithState:&v35 objects:v40 count:16];
    }

    while (v11);
  }

  contactStore = self->_contactStore;
  v34 = 0;
  [(CNContactStore *)contactStore executeSaveRequest:v9 error:&v34];
  v16 = v34;
  if (v16)
  {
    v8 = v16;
    v17 = +[MKLog log];
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      [(MKBookmarkMigrator *)v8 import:v17];
    }

    goto LABEL_20;
  }

  v20 = [v10 count];
  v21 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:importCopy encoding:4];
  if ([v21 length])
  {
    v22 = [v21 mk_occurrenceCountOfString:@"BEGIN:VCARD"];
    if (v22 > 0)
    {
      v20 = v22;
    }
  }

  [(MKMigrator *)self migratorDidImportWithCount:v20];
  -[MKMigrator migratorDidAppendDataSize:](self, "migratorDidAppendDataSize:", [importCopy length]);

  v8 = 0;
LABEL_30:

  v23 = +[MKLog log];
  if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    selfCopy2 = self;
    _os_log_impl(&dword_2592D2000, v23, OS_LOG_TYPE_INFO, "%@ did import a vcard.", buf, 0xCu);
  }

  v24 = +[MKAnalytics sharedInstance];
  objc_sync_enter(v24);
  payload = [v24 payload];
  contacts = [payload contacts];

  date2 = [MEMORY[0x277CBEAA8] date];
  [date2 timeIntervalSinceDate:date];
  v29 = v28;

  v30 = [objc_alloc(MEMORY[0x277CCA980]) initWithDouble:v29];
  importElapsedTime = [contacts importElapsedTime];
  v32 = [importElapsedTime decimalNumberByAdding:v30];
  [contacts setImportElapsedTime:v32];

  objc_sync_exit(v24);
  v33 = *MEMORY[0x277D85DE8];
}

@end