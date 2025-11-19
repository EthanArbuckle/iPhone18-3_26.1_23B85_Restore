@interface MKContactMigrator
- (MKContactMigrator)init;
- (void)import:(id)a3;
- (void)importVCard:(id)a3;
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

- (void)importVCard:(id)a3
{
  v6 = a3;
  v4 = self;
  objc_sync_enter(v4);
  v5 = objc_autoreleasePoolPush();
  [(MKContactMigrator *)v4 import:v6];
  objc_autoreleasePoolPop(v5);
  objc_sync_exit(v4);
}

- (void)import:(id)a3
{
  v43 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [MEMORY[0x277CBEAA8] date];
  v6 = +[MKLog log];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v42 = self;
    _os_log_impl(&dword_2592D2000, v6, OS_LOG_TYPE_INFO, "%@ will import a vcard.", buf, 0xCu);
  }

  v39 = 0;
  v7 = [MEMORY[0x277CBDAC8] contactsWithData:v4 error:&v39];
  v8 = v39;
  if (v8)
  {
    v9 = +[MKLog log];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [(MKBookmarkMigrator *)v8 import:v9];
    }

LABEL_20:

    v10 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:v4 encoding:4];
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
  v21 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:v4 encoding:4];
  if ([v21 length])
  {
    v22 = [v21 mk_occurrenceCountOfString:@"BEGIN:VCARD"];
    if (v22 > 0)
    {
      v20 = v22;
    }
  }

  [(MKMigrator *)self migratorDidImportWithCount:v20];
  -[MKMigrator migratorDidAppendDataSize:](self, "migratorDidAppendDataSize:", [v4 length]);

  v8 = 0;
LABEL_30:

  v23 = +[MKLog log];
  if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v42 = self;
    _os_log_impl(&dword_2592D2000, v23, OS_LOG_TYPE_INFO, "%@ did import a vcard.", buf, 0xCu);
  }

  v24 = +[MKAnalytics sharedInstance];
  objc_sync_enter(v24);
  v25 = [v24 payload];
  v26 = [v25 contacts];

  v27 = [MEMORY[0x277CBEAA8] date];
  [v27 timeIntervalSinceDate:v5];
  v29 = v28;

  v30 = [objc_alloc(MEMORY[0x277CCA980]) initWithDouble:v29];
  v31 = [v26 importElapsedTime];
  v32 = [v31 decimalNumberByAdding:v30];
  [v26 setImportElapsedTime:v32];

  objc_sync_exit(v24);
  v33 = *MEMORY[0x277D85DE8];
}

@end