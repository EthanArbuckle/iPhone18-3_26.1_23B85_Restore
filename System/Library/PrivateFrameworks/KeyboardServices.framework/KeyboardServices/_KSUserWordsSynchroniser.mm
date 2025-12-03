@interface _KSUserWordsSynchroniser
+ (id)generateKeyWithSize:(unint64_t)size;
+ (id)generateRecordNameForFilename:(id)filename withKey:(id)key;
+ (id)sharedInstance;
- (BOOL)checkErrors:(id)errors;
- (NSArray)requiredLanguages;
- (id)filenameForLanguage:(id)language;
- (id)generateRecordListForLanguages:(id)languages;
- (id)information;
- (id)initForTestingWithManager:(id)manager enablePushing:(BOOL)pushing;
- (id)recordIDForLanguage:(id)language withKey:(id)key;
- (void)accountDidChange:(id)change;
- (void)checkConfiguration;
- (void)checkForDownload:(id)download uploads:(id)uploads allLanguages:(id)languages;
- (void)checkProgress:(int)progress withInfo:(id)info;
- (void)dealloc;
- (void)deltaDownloadForLanguages:(id)languages;
- (void)disable;
- (void)dumpAllRecordsWithCompletionHandler:(id)handler;
- (void)firstTimeDownloadWithKey:(id)key;
- (void)generateKeyWithCompletionHandler:(id)handler;
- (void)identitiesDidChange:(id)change;
- (void)information;
- (void)keyboardUsed;
- (void)loadKeyWithCompletion:(id)completion;
- (void)modifyInformationWithOperations:(id)operations;
- (void)overwriteFilesWithRecords:(id)records withCompletionHandler:(id)handler;
- (void)readFilesWithRecordIDs:(id)ds forColumns:(id)columns priority:(unint64_t)priority withCompletionHandler:(id)handler;
- (void)saveKey:(id)key withCompletion:(id)completion;
@end

@implementation _KSUserWordsSynchroniser

+ (id)generateKeyWithSize:(unint64_t)size
{
  v4 = malloc_type_malloc(size, 0x40E8223uLL);
  if (SecRandomCopyBytes(*MEMORY[0x277CDC540], size, v4))
  {
    v5 = 0;
  }

  else
  {
    v5 = [MEMORY[0x277CBEA90] dataWithBytes:v4 length:size];
  }

  free(v4);

  return v5;
}

+ (id)generateRecordNameForFilename:(id)filename withKey:(id)key
{
  v16 = *MEMORY[0x277D85DE8];
  keyCopy = key;
  v6 = [filename dataUsingEncoding:4];
  CCHmac(2u, [keyCopy bytes], objc_msgSend(keyCopy, "length"), objc_msgSend(v6, "bytes"), objc_msgSend(v6, "length"), macOut);
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
  block[4] = self;
  if (sharedInstance_onceToken_0 != -1)
  {
    dispatch_once(&sharedInstance_onceToken_0, block);
  }

  v2 = sharedInstance_synchroniser;

  return v2;
}

- (id)initForTestingWithManager:(id)manager enablePushing:(BOOL)pushing
{
  pushingCopy = pushing;
  managerCopy = manager;
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

    if (pushingCopy)
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

    if (managerCopy)
    {
      v18 = managerCopy;
      cloudKitManager = v8->_cloudKitManager;
      v8->_cloudKitManager = v18;
    }

    else
    {
      v20 = [_KSUserWordsSynchroniserCloudKitManager alloc];
      containerID = [(_KSUserWordsSynchroniser *)v8 containerID];
      v22 = [(_KSCloudKitManager *)v20 initWithContainer:containerID recordZoneName:@"UserWords"];
      v23 = v8->_cloudKitManager;
      v8->_cloudKitManager = v22;

      defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
      [defaultCenter addObserver:v8 selector:sel_accountDidChange_ name:@"KSCloudKitAccountDidChange" object:v8->_cloudKitManager];

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
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self];

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
    contents = [(_KSControlFileController *)self->_controlFile contents];
    v12 = [v3 unarchivedObjectOfClasses:v10 fromData:contents error:0];

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

- (void)modifyInformationWithOperations:(id)operations
{
  operationsCopy = operations;
  information = [(_KSUserWordsSynchroniser *)self information];
  v11 = information;
  if (information)
  {
    dictionary = [information mutableCopy];
  }

  else
  {
    dictionary = [MEMORY[0x277CBEB38] dictionary];
  }

  v7 = dictionary;
  v8 = operationsCopy[2](operationsCopy, v11 != 0, dictionary);

  if (v8)
  {
    controlFile = self->_controlFile;
    v10 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v7 requiringSecureCoding:1 error:0];
    [(_KSControlFileController *)controlFile setContents:v10];
  }
}

- (NSArray)requiredLanguages
{
  information = [(_KSUserWordsSynchroniser *)self information];
  v4 = [information objectForKey:@"Languages"];
  languagesIfOffline = v4;
  if (!v4)
  {
    languagesIfOffline = self->_languagesIfOffline;
  }

  v6 = languagesIfOffline;

  return languagesIfOffline;
}

- (void)accountDidChange:(id)change
{
  changeCopy = change;
  userInfo = [changeCopy userInfo];
  v6 = [userInfo objectForKeyedSubscript:@"KSCloudKitAccountDidChangeStatusKey"];
  integerValue = [v6 integerValue];

  userInfo2 = [changeCopy userInfo];
  v9 = [userInfo2 objectForKeyedSubscript:@"KSCloudKitAccountDidChangeUserChangedKey"];
  LOBYTE(userInfo) = [v9 BOOLValue];

  userInfo3 = [changeCopy userInfo];
  v11 = [userInfo3 objectForKeyedSubscript:@"KSCloudKitAccountDidChangeDeviceToDeviceKey"];
  LOBYTE(userInfo2) = [v11 BOOLValue];

  userInfo4 = [changeCopy userInfo];

  v13 = [userInfo4 objectForKeyedSubscript:@"KSCloudKitAccountDidSuccessfullyCreateZone"];
  LOBYTE(v11) = [v13 BOOLValue];

  workQueue = self->_workQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __45___KSUserWordsSynchroniser_accountDidChange___block_invoke;
  block[3] = &unk_2797F7638;
  v16 = userInfo;
  block[4] = self;
  block[5] = integerValue;
  v17 = userInfo2;
  v18 = v11;
  dispatch_async(workQueue, block);
}

- (void)identitiesDidChange:(id)change
{
  identityThrottle = self->_identityThrottle;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __48___KSUserWordsSynchroniser_identitiesDidChange___block_invoke;
  v4[3] = &unk_2797F6610;
  v4[4] = self;
  [(_KSRequestThrottle *)identityThrottle postRequest:v4];
}

- (void)checkProgress:(int)progress withInfo:(id)info
{
  v15 = *MEMORY[0x277D85DE8];
  infoCopy = info;
  v6 = KSCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = checkProgress_withInfo__meanings[progress];
    v9 = 136315650;
    v10 = "[_KSUserWordsSynchroniser checkProgress:withInfo:]";
    v11 = 2080;
    v12 = v7;
    v13 = 2112;
    v14 = infoCopy;
    _os_log_impl(&dword_2557E2000, v6, OS_LOG_TYPE_INFO, "%s  State: %s: %@", &v9, 0x20u);
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)checkForDownload:(id)download uploads:(id)uploads allLanguages:(id)languages
{
  downloadCopy = download;
  uploadsCopy = uploads;
  languagesCopy = languages;
  if (_IsEnabled())
  {
    if (downloadCopy)
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
    v15 = uploadsCopy;
    v16 = languagesCopy;
    selfCopy = self;
    v18 = downloadCopy;
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

- (void)generateKeyWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
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
    v6 = handlerCopy;
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
    selfCopy = self;
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

    information = [(_KSUserWordsSynchroniser *)self information];
    v4 = [information objectForKey:@"Key"];

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

- (void)firstTimeDownloadWithKey:(id)key
{
  keyCopy = key;
  workQueue = self->_workQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __53___KSUserWordsSynchroniser_firstTimeDownloadWithKey___block_invoke;
  v7[3] = &unk_2797F71B8;
  v7[4] = self;
  v8 = keyCopy;
  v6 = keyCopy;
  dispatch_async(workQueue, v7);
}

- (void)deltaDownloadForLanguages:(id)languages
{
  languagesCopy = languages;
  workQueue = self->_workQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __54___KSUserWordsSynchroniser_deltaDownloadForLanguages___block_invoke;
  v7[3] = &unk_2797F71B8;
  v7[4] = self;
  v8 = languagesCopy;
  v6 = languagesCopy;
  dispatch_async(workQueue, v7);
}

- (id)generateRecordListForLanguages:(id)languages
{
  v27 = *MEMORY[0x277D85DE8];
  languagesCopy = languages;
  information = [(_KSUserWordsSynchroniser *)self information];
  v6 = information;
  if (!languagesCopy)
  {
    languagesCopy = [information objectForKey:@"Languages"];
  }

  v7 = [v6 objectForKey:@"Key"];
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __59___KSUserWordsSynchroniser_generateRecordListForLanguages___block_invoke;
  v23[3] = &unk_2797F78E0;
  v8 = v7;
  v24 = v8;
  selfCopy = self;
  [(_KSUserWordsSynchroniser *)self loadKeyWithCompletion:v23];
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v10 = languagesCopy;
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
        [dictionary setObject:v15 forKey:v16];
      }

      v12 = [v10 countByEnumeratingWithState:&v19 objects:v26 count:16];
    }

    while (v12);
  }

  v17 = *MEMORY[0x277D85DE8];

  return dictionary;
}

- (id)filenameForLanguage:(id)language
{
  v3 = softLinkMGCopyAnswer_0;
  languageCopy = language;
  v5 = v3(@"DeviceName", 0);
  languageCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"%@-%@", v5, languageCopy];

  return languageCopy;
}

- (id)recordIDForLanguage:(id)language withKey:(id)key
{
  cloudKitManager = self->_cloudKitManager;
  keyCopy = key;
  languageCopy = language;
  v9 = objc_opt_class();
  v10 = [(_KSUserWordsSynchroniser *)self filenameForLanguage:languageCopy];

  v11 = [v9 generateRecordNameForFilename:v10 withKey:keyCopy];

  v12 = [(_KSCloudKitManager *)cloudKitManager recordIDForName:v11];

  return v12;
}

- (BOOL)checkErrors:(id)errors
{
  v29 = *MEMORY[0x277D85DE8];
  errorsCopy = errors;
  domain = [errorsCopy domain];
  v6 = [domain isEqualToString:*MEMORY[0x277CBBF50]];

  if (!v6)
  {
    goto LABEL_28;
  }

  code = [errorsCopy code];
  v8 = 0;
  v9 = 1;
  if (code <= 27)
  {
    if (code != 2)
    {
      if (code != 26)
      {
        goto LABEL_29;
      }

      goto LABEL_15;
    }

    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    userInfo = [errorsCopy userInfo];
    v15 = [userInfo objectForKey:*MEMORY[0x277CBBFB0]];
    allValues = [v15 allValues];

    v17 = [allValues countByEnumeratingWithState:&v24 objects:v28 count:16];
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
            objc_enumerationMutation(allValues);
          }

          if (![(_KSUserWordsSynchroniser *)self checkErrors:*(*(&v24 + 1) + 8 * i)])
          {

            goto LABEL_18;
          }
        }

        v18 = [allValues countByEnumeratingWithState:&v24 objects:v28 count:16];
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

  switch(code)
  {
    case 28:
LABEL_15:
      v12 = KSCategory();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        [_KSUserWordsSynchroniser checkErrors:errorsCopy];
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

- (void)readFilesWithRecordIDs:(id)ds forColumns:(id)columns priority:(unint64_t)priority withCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v11 = MEMORY[0x277CBC3E0];
  columnsCopy = columns;
  dsCopy = ds;
  v14 = [[v11 alloc] initWithRecordIDs:dsCopy];

  [v14 setDesiredKeys:columnsCopy];
  v16 = MEMORY[0x277D85DD0];
  v17 = 3221225472;
  v18 = __93___KSUserWordsSynchroniser_readFilesWithRecordIDs_forColumns_priority_withCompletionHandler___block_invoke;
  v19 = &unk_2797F6C00;
  selfCopy = self;
  v21 = handlerCopy;
  v15 = handlerCopy;
  [v14 setFetchRecordsCompletionBlock:&v16];
  [(_KSCloudKitManager *)self->_cloudKitManager addOperation:v14 priority:priority, v16, v17, v18, v19, selfCopy];
}

- (void)overwriteFilesWithRecords:(id)records withCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v7 = MEMORY[0x277CBC4A0];
  recordsCopy = records;
  v9 = [[v7 alloc] initWithRecordsToSave:recordsCopy recordIDsToDelete:0];

  [v9 setSavePolicy:2];
  v11 = MEMORY[0x277D85DD0];
  v12 = 3221225472;
  v13 = __76___KSUserWordsSynchroniser_overwriteFilesWithRecords_withCompletionHandler___block_invoke;
  v14 = &unk_2797F7950;
  selfCopy = self;
  v16 = handlerCopy;
  v10 = handlerCopy;
  [v9 setModifyRecordsCompletionBlock:&v11];
  [(_KSCloudKitManager *)self->_cloudKitManager addOperation:v9, v11, v12, v13, v14, selfCopy];
}

- (void)loadKeyWithCompletion:(id)completion
{
  v15[1] = *MEMORY[0x277D85DE8];
  completionCopy = completion;
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
  v14 = completionCopy;
  v12[4] = self;
  v9 = v5;
  v10 = completionCopy;
  [v8 setFetchRecordsCompletionBlock:v12];
  [(_KSCloudKitManager *)self->_cloudKitManager addOperation:v8];

  v11 = *MEMORY[0x277D85DE8];
}

- (void)saveKey:(id)key withCompletion:(id)completion
{
  v24[1] = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  v7 = MEMORY[0x277CBC5A0];
  keyCopy = key;
  v9 = [v7 alloc];
  v10 = [(_KSCloudKitManager *)self->_cloudKitManager recordIDForName:@"key"];
  v11 = [v9 initWithRecordType:@"UserWordData" recordID:v10];

  encryptedValueStore = [v11 encryptedValueStore];
  [encryptedValueStore setObject:keyCopy forKey:@"keybytes"];

  v13 = objc_alloc(MEMORY[0x277CBC4A0]);
  v24[0] = v11;
  v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v24 count:1];
  v15 = [v13 initWithRecordsToSave:v14 recordIDsToDelete:0];

  [v15 setSavePolicy:0];
  v18 = MEMORY[0x277D85DD0];
  v19 = 3221225472;
  v20 = __51___KSUserWordsSynchroniser_saveKey_withCompletion___block_invoke;
  v21 = &unk_2797F7950;
  selfCopy = self;
  v23 = completionCopy;
  v16 = completionCopy;
  [v15 setModifyRecordsCompletionBlock:&v18];
  [(_KSCloudKitManager *)self->_cloudKitManager addOperation:v15, v18, v19, v20, v21, selfCopy];

  v17 = *MEMORY[0x277D85DE8];
}

- (void)dumpAllRecordsWithCompletionHandler:(id)handler
{
  v20[1] = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v6 = objc_alloc(MEMORY[0x277CBC3B8]);
  recordZone = [(_KSCloudKitManager *)self->_cloudKitManager recordZone];
  zoneID = [recordZone zoneID];
  v20[0] = zoneID;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v20 count:1];
  v10 = [v6 initWithRecordZoneIDs:v9 optionsByRecordZoneID:0];

  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __64___KSUserWordsSynchroniser_dumpAllRecordsWithCompletionHandler___block_invoke;
  v18[3] = &unk_2797F6A48;
  v11 = dictionary;
  v19 = v11;
  [v10 setRecordChangedBlock:v18];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __64___KSUserWordsSynchroniser_dumpAllRecordsWithCompletionHandler___block_invoke_2;
  v15[3] = &unk_2797F6598;
  v16 = v11;
  v17 = handlerCopy;
  v12 = handlerCopy;
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