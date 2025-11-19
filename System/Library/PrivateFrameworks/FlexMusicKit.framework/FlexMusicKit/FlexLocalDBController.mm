@interface FlexLocalDBController
- (BOOL)createSongEntryWithSongData:(id)a3 error:(id *)a4;
- (BOOL)deleteFieldsForSongUID:(id)a3 deletions:(id)a4 error:(id *)a5;
- (BOOL)updateSongWithData:(id)a3 error:(id *)a4;
- (FlexLocalDBController)initWithDestinationURL:(id)a3;
- (NSArray)allSongEntries;
- (NSDate)lastCloudCheckDate;
- (void)_insertFirstCloudCheckDate:(id)a3 andSave:(BOOL)a4;
- (void)setLastCloudCheckDate:(id)a3;
@end

@implementation FlexLocalDBController

- (FlexLocalDBController)initWithDestinationURL:(id)a3
{
  v53[1] = *MEMORY[0x277D85DE8];
  v5 = a3;
  v52.receiver = self;
  v52.super_class = FlexLocalDBController;
  v6 = [(FlexLocalDBController *)&v52 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_destinationURL, a3);
    v8 = MEMORY[0x277CCA8D8];
    v9 = objc_opt_class();
    v13 = objc_msgSend_bundleForClass_(v8, v10, v9, v11, v12);
    v16 = objc_msgSend_URLForResource_withExtension_(v13, v14, @"LocalDatabase", @"momd", v15);

    v17 = objc_alloc(MEMORY[0x277CBE450]);
    v21 = objc_msgSend_initWithContentsOfURL_(v17, v18, v16, v19, v20);
    v24 = objc_msgSend_persistentContainerWithName_managedObjectModel_(MEMORY[0x277CBE4A0], v22, @"SongDatabase", v21, v23);
    localSongDatabase = v7->_localSongDatabase;
    v7->_localSongDatabase = v24;

    v29 = objc_msgSend_URLByAppendingPathComponent_(v7->_destinationURL, v26, @"SongDatabase", v27, v28);
    v33 = objc_msgSend_URLByAppendingPathExtension_(v29, v30, @"sqlite", v31, v32);

    v37 = objc_msgSend_persistentStoreDescriptionWithURL_(MEMORY[0x277CBE4E0], v34, v33, v35, v36);
    v53[0] = v37;
    v40 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v38, v53, 1, v39);
    objc_msgSend_setPersistentStoreDescriptions_(v7->_localSongDatabase, v41, v40, v42, v43);

    v44 = v7->_localSongDatabase;
    v50[0] = MEMORY[0x277D85DD0];
    v50[1] = 3221225472;
    v50[2] = sub_24B7F7120;
    v50[3] = &unk_27900EE30;
    v51 = v7;
    objc_msgSend_loadPersistentStoresWithCompletionHandler_(v44, v45, v50, v46, v47);
  }

  v48 = *MEMORY[0x277D85DE8];
  return v7;
}

- (NSArray)allSongEntries
{
  if (objc_msgSend_isMainThread(MEMORY[0x277CCACC8], a2, v2, v3, v4))
  {
    v9 = objc_msgSend_fetchRequestWithEntityName_(MEMORY[0x277CBE428], v6, @"LocalSongs", v7, v8);
    v14 = objc_msgSend_viewContext(self->_localSongDatabase, v10, v11, v12, v13);
    v24 = 0;
    v17 = objc_msgSend_executeFetchRequest_error_(v14, v15, v9, &v24, v16);
    v18 = v24;

    if (v17)
    {
      goto LABEL_9;
    }

    if (v18)
    {
      v19 = FlexLogForCategory(3uLL);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        sub_24B7F8B88(v18, v19, v20, v21, v22);
      }
    }
  }

  else
  {
    v18 = 0;
  }

  v17 = MEMORY[0x277CBEBF8];
LABEL_9:

  return v17;
}

- (BOOL)createSongEntryWithSongData:(id)a3 error:(id *)a4
{
  v6 = a3;
  v26 = 0;
  v27 = &v26;
  v28 = 0x2020000000;
  v29 = 0;
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = sub_24B7F74BC;
  v24 = sub_24B7F74CC;
  v25 = 0;
  objc_initWeak(&location, self->_backgroundContext);
  backgroundContext = self->_backgroundContext;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = sub_24B7F74D4;
  v14[3] = &unk_27900EE58;
  objc_copyWeak(&v18, &location);
  v8 = v6;
  v15 = v8;
  v16 = &v20;
  v17 = &v26;
  objc_msgSend_performBlockAndWait_(backgroundContext, v9, v14, v10, v11);
  if (a4)
  {
    *a4 = v21[5];
  }

  v12 = *(v27 + 24);

  objc_destroyWeak(&v18);
  objc_destroyWeak(&location);
  _Block_object_dispose(&v20, 8);

  _Block_object_dispose(&v26, 8);
  return v12;
}

- (BOOL)updateSongWithData:(id)a3 error:(id *)a4
{
  v6 = a3;
  v26 = 0;
  v27 = &v26;
  v28 = 0x2020000000;
  v29 = 0;
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = sub_24B7F74BC;
  v24 = sub_24B7F74CC;
  v25 = 0;
  objc_initWeak(&location, self->_backgroundContext);
  backgroundContext = self->_backgroundContext;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = sub_24B7F7B74;
  v14[3] = &unk_27900EE58;
  objc_copyWeak(&v18, &location);
  v8 = v6;
  v15 = v8;
  v16 = &v20;
  v17 = &v26;
  objc_msgSend_performBlockAndWait_(backgroundContext, v9, v14, v10, v11);
  if (a4)
  {
    *a4 = v21[5];
  }

  v12 = *(v27 + 24);

  objc_destroyWeak(&v18);
  objc_destroyWeak(&location);
  _Block_object_dispose(&v20, 8);

  _Block_object_dispose(&v26, 8);
  return v12;
}

- (BOOL)deleteFieldsForSongUID:(id)a3 deletions:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v31 = 0;
  v32 = &v31;
  v33 = 0x2020000000;
  v34 = 0;
  v25 = 0;
  v26 = &v25;
  v27 = 0x3032000000;
  v28 = sub_24B7F74BC;
  v29 = sub_24B7F74CC;
  v30 = 0;
  objc_initWeak(&location, self->_backgroundContext);
  backgroundContext = self->_backgroundContext;
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = sub_24B7F817C;
  v18[3] = &unk_27900EE80;
  objc_copyWeak(&v23, &location);
  v11 = v8;
  v19 = v11;
  v12 = v9;
  v20 = v12;
  v21 = &v25;
  v22 = &v31;
  objc_msgSend_performBlockAndWait_(backgroundContext, v13, v18, v14, v15);
  if (a5)
  {
    *a5 = v26[5];
  }

  v16 = *(v32 + 24);

  objc_destroyWeak(&v23);
  objc_destroyWeak(&location);
  _Block_object_dispose(&v25, 8);

  _Block_object_dispose(&v31, 8);
  return v16;
}

- (NSDate)lastCloudCheckDate
{
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = sub_24B7F74BC;
  v20 = sub_24B7F74CC;
  v21 = 0;
  v5 = objc_msgSend_fetchRequestWithEntityName_(MEMORY[0x277CBE428], a2, @"LastCloudUpdate", v2, v3);
  backgroundContext = self->_backgroundContext;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = sub_24B7F868C;
  v13[3] = &unk_27900EEA8;
  v13[4] = self;
  v7 = v5;
  v14 = v7;
  v15 = &v16;
  objc_msgSend_performBlockAndWait_(backgroundContext, v8, v13, v9, v10);
  v11 = v17[5];

  _Block_object_dispose(&v16, 8);

  return v11;
}

- (void)setLastCloudCheckDate:(id)a3
{
  v4 = a3;
  v8 = objc_msgSend_fetchRequestWithEntityName_(MEMORY[0x277CBE428], v5, @"LastCloudUpdate", v6, v7);
  backgroundContext = self->_backgroundContext;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_24B7F88A8;
  v15[3] = &unk_27900EED0;
  v15[4] = self;
  v16 = v8;
  v17 = v4;
  v10 = v4;
  v11 = v8;
  objc_msgSend_performBlockAndWait_(backgroundContext, v12, v15, v13, v14);
}

- (void)_insertFirstCloudCheckDate:(id)a3 andSave:(BOOL)a4
{
  v4 = a4;
  v6 = MEMORY[0x277CBE408];
  backgroundContext = self->_backgroundContext;
  v8 = a3;
  v11 = objc_msgSend_insertNewObjectForEntityForName_inManagedObjectContext_(v6, v9, @"LastCloudUpdate", backgroundContext, v10);
  objc_msgSend_setDate_(v11, v12, v8, v13, v14);

  if (v4)
  {
    v18 = self->_backgroundContext;
    v25 = 0;
    v19 = objc_msgSend_save_(v18, v15, &v25, v16, v17);
    v20 = v25;
    if ((v19 & 1) == 0)
    {
      v21 = FlexLogForCategory(0);
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        sub_24B7F8DC8(v20, v21, v22, v23, v24);
      }
    }
  }
}

@end