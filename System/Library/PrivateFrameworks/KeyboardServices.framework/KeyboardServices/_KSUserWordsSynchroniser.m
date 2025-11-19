@interface _KSUserWordsSynchroniser
+ (id)generateKeyWithSize:(unint64_t)a3;
+ (id)generateRecordNameForFilename:(id)a3 withKey:(id)a4;
+ (id)sharedInstance;
- (BOOL)checkErrors:(id)a3;
- (NSArray)requiredLanguages;
- (id)filenameForLanguage:(id)a3;
- (id)generateRecordListForLanguages:(id)a3;
- (id)information;
- (id)initForTestingWithManager:(id)a3 enablePushing:(BOOL)a4;
- (id)recordIDForLanguage:(id)a3 withKey:(id)a4;
- (void)accountDidChange:(id)a3;
- (void)checkConfiguration;
- (void)checkForDownload:(id)a3 uploads:(id)a4 allLanguages:(id)a5;
- (void)checkProgress:(int)a3 withInfo:(id)a4;
- (void)dealloc;
- (void)deltaDownloadForLanguages:(id)a3;
- (void)disable;
- (void)dumpAllRecordsWithCompletionHandler:(id)a3;
- (void)firstTimeDownloadWithKey:(id)a3;
- (void)generateKeyWithCompletionHandler:(id)a3;
- (void)identitiesDidChange:(id)a3;
- (void)information;
- (void)keyboardUsed;
- (void)loadKeyWithCompletion:(id)a3;
- (void)modifyInformationWithOperations:(id)a3;
- (void)overwriteFilesWithRecords:(id)a3 withCompletionHandler:(id)a4;
- (void)readFilesWithRecordIDs:(id)a3 forColumns:(id)a4 priority:(unint64_t)a5 withCompletionHandler:(id)a6;
- (void)saveKey:(id)a3 withCompletion:(id)a4;
@end

@implementation _KSUserWordsSynchroniser

+ (id)generateKeyWithSize:(unint64_t)a3
{
  v4 = malloc_type_malloc(a3, 0x40E8223uLL);
  if (SecRandomCopyBytes(*MEMORY[0x277CDC540], a3, v4))
  {
    v5 = 0;
  }

  else
  {
    v5 = [MEMORY[0x277CBEA90] dataWithBytes:v4 length:a3];
  }

  free(v4);

  return v5;
}

+ (id)generateRecordNameForFilename:(id)a3 withKey:(id)a4
{
  v16 = *MEMORY[0x277D85DE8];
  v5 = a4;
  v6 = [a3 dataUsingEncoding:4];
  CCHmac(2u, [v5 bytes], objc_msgSend(v5, "length"), objc_msgSend(v6, "bytes"), objc_msgSend(v6, "length"), macOut);
  v7 = 0;
  v8 = v14;
  do
  {
    v9 = macOut[v7];
    *(v8 - 1) = a0123456789abcd[v9 >> 4];
    *v8 = a0123456789abcd[v9 & 0xF];
    v8 += 2;
    ++v7;
  }

  while (v7 != 32);
  v10 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytes:&v13 length:64 encoding:4];

  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

+ (id)sharedInstance
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __42___KSUserWordsSynchroniser_sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (sharedInstance_onceToken_0 != -1)
  {
    dispatch_once(&sharedInstance_onceToken_0, block);
  }

  v2 = sharedInstance_synchroniser;

  return v2;
}

- (id)initForTestingWithManager:(id)a3 enablePushing:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v30.receiver = self;
  v30.super_class = _KSUserWordsSynchroniser;
  v7 = [(_KSUserWordsSynchroniser *)&v30 init];
  v8 = v7;
  if (v7)
  {
    languagesIfOffline = v7->_languagesIfOffline;
    v7->_languagesIfOffline = MEMORY[0x277CBEBF8];

    v10 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v11 = dispatch_queue_create("com.apple.keyboardServices.userWords.workQueue", v10);
    workQueue = v8->_workQueue;
    v8->_workQueue = v11;

    v13 = [_KSControlFileController alloc];
    v14 = [objc_msgSend(objc_opt_class() "infoClass")];
    v15 = [(_KSControlFileController *)v13 initWithName:@"UserWords" inDirectory:v14];
    controlFile = v8->_controlFile;
    v8->_controlFile = v15;

    if (v4)
    {
      v8->_taskRun = 1;
      v17 = v8->_workQueue;
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __68___KSUserWordsSynchroniser_initForTestingWithManager_enablePushing___block_invoke;
      block[3] = &unk_2797F6310;
      v29 = v8;
      dispatch_async(v17, block);
    }

    if (v6)
    {
      v18 = v6;
      cloudKitManager = v8->_cloudKitManager;
      v8->_cloudKitManager = v18;
    }

    else
    {
      v20 = [_KSUserWordsSynchroniserCloudKitManager alloc];
      v21 = [(_KSUserWordsSynchroniser *)v8 containerID];
      v22 = [(_KSCloudKitManager *)v20 initWithContainer:v21 recordZoneName:@"UserWords"];
      v23 = v8->_cloudKitManager;
      v8->_cloudKitManager = v22;

      v24 = [MEMORY[0x277CCAB98] defaultCenter];
      [v24 addObserver:v8 selector:sel_accountDidChange_ name:@"KSCloudKitAccountDidChange" object:v8->_cloudKitManager];

      cloudKitManager = [MEMORY[0x277CCAB98] defaultCenter];
      [cloudKitManager addObserver:v8 selector:sel_identitiesDidChange_ name:@"KSCloudKitIdentitiesDidChange" object:v8->_cloudKitManager];
    }

    v25 = objc_alloc_init(_KSRequestThrottle);
    identityThrottle = v8->_identityThrottle;
    v8->_identityThrottle = v25;

    [(_KSRequestThrottle *)v8->_identityThrottle setQueue:v8->_workQueue];
    [(_KSRequestThrottle *)v8->_identityThrottle setDebugIdentifier:@"identity change"];
  }

  return v8;
}

- (void)dealloc
{
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = _KSUserWordsSynchroniser;
  [(_KSUserWordsSynchroniser *)&v4 dealloc];
}

- (void)disable
{
  [(_KSControlFileController *)self->_controlFile reset];
  if (self->_pushTask)
  {
    v3 = +[_KSTaskScheduler sharedInstance];
    [v3 unregisterTask:self->_pushTask];
  }
}

- (id)information
{
  if ([(_KSControlFileController *)self->_controlFile checkIfExists])
  {
    v3 = MEMORY[0x277CCAAC8];
    v4 = MEMORY[0x277CBEB98];
    v5 = objc_opt_class();
    v6 = objc_opt_class();
    v7 = objc_opt_class();
    v8 = objc_opt_class();
    v9 = objc_opt_class();
    v10 = [v4 setWithObjects:{v5, v6, v7, v8, v9, objc_opt_class(), 0}];
    v11 = [(_KSControlFileController *)self->_controlFile contents];
    v12 = [v3 unarchivedObjectOfClasses:v10 fromData:v11 error:0];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = v12;
    }

    else
    {
      v14 = KSCategory();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        [_KSUserWordsSynchroniser information];
      }

      [(_KSUserWordsSynchroniser *)self disable];
      v13 = 0;
    }
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (void)modifyInformationWithOperations:(id)a3
{
  v4 = a3;
  v5 = [(_KSUserWordsSynchroniser *)self information];
  v11 = v5;
  if (v5)
  {
    v6 = [v5 mutableCopy];
  }

  else
  {
    v6 = [MEMORY[0x277CBEB38] dictionary];
  }

  v7 = v6;
  v8 = v4[2](v4, v11 != 0, v6);

  if (v8)
  {
    controlFile = self->_controlFile;
    v10 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v7 requiringSecureCoding:1 error:0];
    [(_KSControlFileController *)controlFile setContents:v10];
  }
}

- (NSArray)requiredLanguages
{
  v3 = [(_KSUserWordsSynchroniser *)self information];
  v4 = [v3 objectForKey:@"Languages"];
  languagesIfOffline = v4;
  if (!v4)
  {
    languagesIfOffline = self->_languagesIfOffline;
  }

  v6 = languagesIfOffline;

  return languagesIfOffline;
}

- (void)accountDidChange:(id)a3
{
  v4 = a3;
  v5 = [v4 userInfo];
  v6 = [v5 objectForKeyedSubscript:@"KSCloudKitAccountDidChangeStatusKey"];
  v7 = [v6 integerValue];

  v8 = [v4 userInfo];
  v9 = [v8 objectForKeyedSubscript:@"KSCloudKitAccountDidChangeUserChangedKey"];
  LOBYTE(v5) = [v9 BOOLValue];

  v10 = [v4 userInfo];
  v11 = [v10 objectForKeyedSubscript:@"KSCloudKitAccountDidChangeDeviceToDeviceKey"];
  LOBYTE(v8) = [v11 BOOLValue];

  v12 = [v4 userInfo];

  v13 = [v12 objectForKeyedSubscript:@"KSCloudKitAccountDidSuccessfullyCreateZone"];
  LOBYTE(v11) = [v13 BOOLValue];

  workQueue = self->_workQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __45___KSUserWordsSynchroniser_accountDidChange___block_invoke;
  block[3] = &unk_2797F7638;
  v16 = v5;
  block[4] = self;
  block[5] = v7;
  v17 = v8;
  v18 = v11;
  dispatch_async(workQueue, block);
}

- (void)identitiesDidChange:(id)a3
{
  identityThrottle = self->_identityThrottle;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __48___KSUserWordsSynchroniser_identitiesDidChange___block_invoke;
  v4[3] = &unk_2797F6610;
  v4[4] = self;
  [(_KSRequestThrottle *)identityThrottle postRequest:v4];
}

- (void)checkProgress:(int)a3 withInfo:(id)a4
{
  v15 = *MEMORY[0x277D85DE8];
  v5 = a4;
  v6 = KSCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = checkProgress_withInfo__meanings[a3];
    v9 = 136315650;
    v10 = "[_KSUserWordsSynchroniser checkProgress:withInfo:]";
    v11 = 2080;
    v12 = v7;
    v13 = 2112;
    v14 = v5;
    _os_log_impl(&dword_2557E2000, v6, OS_LOG_TYPE_INFO, "%s  State: %s: %@", &v9, 0x20u);
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)checkForDownload:(id)a3 uploads:(id)a4 allLanguages:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (_IsEnabled())
  {
    if (v8)
    {
      v20[0] = MEMORY[0x277D85DD0];
      v20[1] = 3221225472;
      v20[2] = __66___KSUserWordsSynchroniser_checkForDownload_uploads_allLanguages___block_invoke_2;
      v20[3] = &unk_2797F76D8;
      v20[4] = self;
      v11 = MEMORY[0x259C41CB0](v20);
    }

    else
    {
      v11 = &__block_literal_global_10;
    }

    workQueue = self->_workQueue;
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __66___KSUserWordsSynchroniser_checkForDownload_uploads_allLanguages___block_invoke_4;
    v14[3] = &unk_2797F77C8;
    v15 = v9;
    v16 = v10;
    v17 = self;
    v18 = v8;
    v19 = v11;
    v13 = v11;
    dispatch_async(workQueue, v14);
  }

  else
  {
    [(_KSUserWordsSynchroniser *)self checkProgress:0 withInfo:MEMORY[0x277CBEC28]];
  }
}

- (void)keyboardUsed
{
  workQueue = self->_workQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __40___KSUserWordsSynchroniser_keyboardUsed__block_invoke;
  block[3] = &unk_2797F6310;
  block[4] = self;
  dispatch_async(workQueue, block);
}

- (void)generateKeyWithCompletionHandler:(id)a3
{
  v4 = a3;
  if (!self->_retryPending && !self->_attemptingConnection)
  {
    self->_attemptingConnection = 1;
    self->_needRetry = 0;
    v5 = [objc_opt_class() generateKeyWithSize:64];
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __61___KSUserWordsSynchroniser_generateKeyWithCompletionHandler___block_invoke;
    v19[3] = &unk_2797F7818;
    v19[4] = self;
    v6 = v4;
    v20 = v6;
    v7 = MEMORY[0x259C41CB0](v19);
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __61___KSUserWordsSynchroniser_generateKeyWithCompletionHandler___block_invoke_3;
    v17[3] = &unk_2797F7840;
    v17[4] = self;
    v18 = v6;
    v8 = MEMORY[0x259C41CB0](v17);
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __61___KSUserWordsSynchroniser_generateKeyWithCompletionHandler___block_invoke_3_161;
    v12[3] = &unk_2797F7890;
    v13 = v5;
    v14 = self;
    v15 = v7;
    v16 = v8;
    v9 = v8;
    v10 = v5;
    v11 = v7;
    [(_KSUserWordsSynchroniser *)self saveKey:v10 withCompletion:v12];
  }
}

- (void)checkConfiguration
{
  v14 = *MEMORY[0x277D85DE8];
  if (_IsEnabled())
  {
    if (![(_KSControlFileController *)self->_controlFile checkIfExists])
    {
      v7 = KSCategory();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        *buf = 136315138;
        v13 = "[_KSUserWordsSynchroniser checkConfiguration]";
        _os_log_impl(&dword_2557E2000, v7, OS_LOG_TYPE_INFO, "%s  Persistent data not found, acquiring key!", buf, 0xCu);
      }

      v5 = v11;
      v11[0] = MEMORY[0x277D85DD0];
      v11[1] = 3221225472;
      v6 = __46___KSUserWordsSynchroniser_checkConfiguration__block_invoke;
      goto LABEL_8;
    }

    v3 = [(_KSUserWordsSynchroniser *)self information];
    v4 = [v3 objectForKey:@"Key"];

    if (!v4)
    {
      v5 = &v9;
      v9 = MEMORY[0x277D85DD0];
      v10 = 3221225472;
      v6 = __46___KSUserWordsSynchroniser_checkConfiguration__block_invoke_2;
LABEL_8:
      v5[2] = v6;
      v5[3] = &unk_2797F78B8;
      v5[4] = self;
      [(_KSUserWordsSynchroniser *)self generateKeyWithCompletionHandler:v9, v10];
    }
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)firstTimeDownloadWithKey:(id)a3
{
  v4 = a3;
  workQueue = self->_workQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __53___KSUserWordsSynchroniser_firstTimeDownloadWithKey___block_invoke;
  v7[3] = &unk_2797F71B8;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(workQueue, v7);
}

- (void)deltaDownloadForLanguages:(id)a3
{
  v4 = a3;
  workQueue = self->_workQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __54___KSUserWordsSynchroniser_deltaDownloadForLanguages___block_invoke;
  v7[3] = &unk_2797F71B8;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(workQueue, v7);
}

- (id)generateRecordListForLanguages:(id)a3
{
  v27 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(_KSUserWordsSynchroniser *)self information];
  v6 = v5;
  if (!v4)
  {
    v4 = [v5 objectForKey:@"Languages"];
  }

  v7 = [v6 objectForKey:@"Key"];
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __59___KSUserWordsSynchroniser_generateRecordListForLanguages___block_invoke;
  v23[3] = &unk_2797F78E0;
  v8 = v7;
  v24 = v8;
  v25 = self;
  [(_KSUserWordsSynchroniser *)self loadKeyWithCompletion:v23];
  v9 = [MEMORY[0x277CBEB38] dictionary];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v10 = v4;
  v11 = [v10 countByEnumeratingWithState:&v19 objects:v26 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v20;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v20 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v19 + 1) + 8 * i);
        v16 = [(_KSUserWordsSynchroniser *)self recordIDForLanguage:v15 withKey:v8, v19];
        [v9 setObject:v15 forKey:v16];
      }

      v12 = [v10 countByEnumeratingWithState:&v19 objects:v26 count:16];
    }

    while (v12);
  }

  v17 = *MEMORY[0x277D85DE8];

  return v9;
}

- (id)filenameForLanguage:(id)a3
{
  v3 = softLinkMGCopyAnswer_0;
  v4 = a3;
  v5 = v3(@"DeviceName", 0);
  v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@-%@", v5, v4];

  return v6;
}

- (id)recordIDForLanguage:(id)a3 withKey:(id)a4
{
  cloudKitManager = self->_cloudKitManager;
  v7 = a4;
  v8 = a3;
  v9 = objc_opt_class();
  v10 = [(_KSUserWordsSynchroniser *)self filenameForLanguage:v8];

  v11 = [v9 generateRecordNameForFilename:v10 withKey:v7];

  v12 = [(_KSCloudKitManager *)cloudKitManager recordIDForName:v11];

  return v12;
}

- (BOOL)checkErrors:(id)a3
{
  v29 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 domain];
  v6 = [v5 isEqualToString:*MEMORY[0x277CBBF50]];

  if (!v6)
  {
    goto LABEL_28;
  }

  v7 = [v4 code];
  v8 = 0;
  v9 = 1;
  if (v7 <= 27)
  {
    if (v7 != 2)
    {
      if (v7 != 26)
      {
        goto LABEL_29;
      }

      goto LABEL_15;
    }

    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v14 = [v4 userInfo];
    v15 = [v14 objectForKey:*MEMORY[0x277CBBFB0]];
    v16 = [v15 allValues];

    v17 = [v16 countByEnumeratingWithState:&v24 objects:v28 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v25;
      while (2)
      {
        for (i = 0; i != v18; ++i)
        {
          if (*v25 != v19)
          {
            objc_enumerationMutation(v16);
          }

          if (![(_KSUserWordsSynchroniser *)self checkErrors:*(*(&v24 + 1) + 8 * i)])
          {

            goto LABEL_18;
          }
        }

        v18 = [v16 countByEnumeratingWithState:&v24 objects:v28 count:16];
        if (v18)
        {
          continue;
        }

        break;
      }
    }

LABEL_28:
    v9 = 1;
    goto LABEL_29;
  }

  switch(v7)
  {
    case 28:
LABEL_15:
      v12 = KSCategory();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        [_KSUserWordsSynchroniser checkErrors:v4];
      }

      cloudKitManager = self->_cloudKitManager;
      v23[0] = MEMORY[0x277D85DD0];
      v23[1] = 3221225472;
      v23[2] = __40___KSUserWordsSynchroniser_checkErrors___block_invoke;
      v23[3] = &unk_2797F7928;
      v23[4] = self;
      v23[5] = v8;
      [(_KSCloudKitManager *)cloudKitManager resetZoneWithDelete:v8 withCompletionHandler:v23];
      goto LABEL_18;
    case 112:
      v11 = KSCategory();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        [_KSUserWordsSynchroniser checkErrors:];
      }

      v8 = 2;
      goto LABEL_15;
    case 5006:
      v10 = KSCategory();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        [_KSUserWordsSynchroniser checkErrors:];
      }

      [(_KSControlFileController *)self->_controlFile reset];
LABEL_18:
      v9 = 0;
      break;
  }

LABEL_29:

  v21 = *MEMORY[0x277D85DE8];
  return v9;
}

- (void)readFilesWithRecordIDs:(id)a3 forColumns:(id)a4 priority:(unint64_t)a5 withCompletionHandler:(id)a6
{
  v10 = a6;
  v11 = MEMORY[0x277CBC3E0];
  v12 = a4;
  v13 = a3;
  v14 = [[v11 alloc] initWithRecordIDs:v13];

  [v14 setDesiredKeys:v12];
  v16 = MEMORY[0x277D85DD0];
  v17 = 3221225472;
  v18 = __93___KSUserWordsSynchroniser_readFilesWithRecordIDs_forColumns_priority_withCompletionHandler___block_invoke;
  v19 = &unk_2797F6C00;
  v20 = self;
  v21 = v10;
  v15 = v10;
  [v14 setFetchRecordsCompletionBlock:&v16];
  [(_KSCloudKitManager *)self->_cloudKitManager addOperation:v14 priority:a5, v16, v17, v18, v19, v20];
}

- (void)overwriteFilesWithRecords:(id)a3 withCompletionHandler:(id)a4
{
  v6 = a4;
  v7 = MEMORY[0x277CBC4A0];
  v8 = a3;
  v9 = [[v7 alloc] initWithRecordsToSave:v8 recordIDsToDelete:0];

  [v9 setSavePolicy:2];
  v11 = MEMORY[0x277D85DD0];
  v12 = 3221225472;
  v13 = __76___KSUserWordsSynchroniser_overwriteFilesWithRecords_withCompletionHandler___block_invoke;
  v14 = &unk_2797F7950;
  v15 = self;
  v16 = v6;
  v10 = v6;
  [v9 setModifyRecordsCompletionBlock:&v11];
  [(_KSCloudKitManager *)self->_cloudKitManager addOperation:v9, v11, v12, v13, v14, v15];
}

- (void)loadKeyWithCompletion:(id)a3
{
  v15[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(_KSCloudKitManager *)self->_cloudKitManager recordIDForName:@"key"];
  v6 = objc_alloc(MEMORY[0x277CBC3E0]);
  v15[0] = v5;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:1];
  v8 = [v6 initWithRecordIDs:v7];

  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __50___KSUserWordsSynchroniser_loadKeyWithCompletion___block_invoke;
  v12[3] = &unk_2797F7978;
  v13 = v5;
  v14 = v4;
  v12[4] = self;
  v9 = v5;
  v10 = v4;
  [v8 setFetchRecordsCompletionBlock:v12];
  [(_KSCloudKitManager *)self->_cloudKitManager addOperation:v8];

  v11 = *MEMORY[0x277D85DE8];
}

- (void)saveKey:(id)a3 withCompletion:(id)a4
{
  v24[1] = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = MEMORY[0x277CBC5A0];
  v8 = a3;
  v9 = [v7 alloc];
  v10 = [(_KSCloudKitManager *)self->_cloudKitManager recordIDForName:@"key"];
  v11 = [v9 initWithRecordType:@"UserWordData" recordID:v10];

  v12 = [v11 encryptedValueStore];
  [v12 setObject:v8 forKey:@"keybytes"];

  v13 = objc_alloc(MEMORY[0x277CBC4A0]);
  v24[0] = v11;
  v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v24 count:1];
  v15 = [v13 initWithRecordsToSave:v14 recordIDsToDelete:0];

  [v15 setSavePolicy:0];
  v18 = MEMORY[0x277D85DD0];
  v19 = 3221225472;
  v20 = __51___KSUserWordsSynchroniser_saveKey_withCompletion___block_invoke;
  v21 = &unk_2797F7950;
  v22 = self;
  v23 = v6;
  v16 = v6;
  [v15 setModifyRecordsCompletionBlock:&v18];
  [(_KSCloudKitManager *)self->_cloudKitManager addOperation:v15, v18, v19, v20, v21, v22];

  v17 = *MEMORY[0x277D85DE8];
}

- (void)dumpAllRecordsWithCompletionHandler:(id)a3
{
  v20[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [MEMORY[0x277CBEB38] dictionary];
  v6 = objc_alloc(MEMORY[0x277CBC3B8]);
  v7 = [(_KSCloudKitManager *)self->_cloudKitManager recordZone];
  v8 = [v7 zoneID];
  v20[0] = v8;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v20 count:1];
  v10 = [v6 initWithRecordZoneIDs:v9 optionsByRecordZoneID:0];

  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __64___KSUserWordsSynchroniser_dumpAllRecordsWithCompletionHandler___block_invoke;
  v18[3] = &unk_2797F6A48;
  v11 = v5;
  v19 = v11;
  [v10 setRecordChangedBlock:v18];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __64___KSUserWordsSynchroniser_dumpAllRecordsWithCompletionHandler___block_invoke_2;
  v15[3] = &unk_2797F6598;
  v16 = v11;
  v17 = v4;
  v12 = v4;
  v13 = v11;
  [v10 setFetchRecordZoneChangesCompletionBlock:v15];
  [(_KSCloudKitManager *)self->_cloudKitManager addOperation:v10];

  v14 = *MEMORY[0x277D85DE8];
}

- (void)information
{
  v8 = *MEMORY[0x277D85DE8];
  v0 = objc_opt_class();
  v1 = NSStringFromClass(v0);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_2_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)checkErrors:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)checkErrors:(void *)a1 .cold.2(void *a1)
{
  v7 = *MEMORY[0x277D85DE8];
  [a1 code];
  OUTLINED_FUNCTION_2_1();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)checkErrors:.cold.3()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

@end