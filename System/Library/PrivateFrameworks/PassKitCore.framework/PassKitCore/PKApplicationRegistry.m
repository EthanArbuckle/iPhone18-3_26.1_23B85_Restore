@interface PKApplicationRegistry
- (BOOL)applicationIsRegisteredWithBundleIdentifier:(id)a3;
- (BOOL)registerApplicationWithBundleIdentifier:(id)a3;
- (PKApplicationRegistry)initWithArchiveFileURL:(id)a3;
- (void)_requestArchiveToDisk;
- (void)_validateRegisteredApplications;
- (void)applicationsDidUninstall:(id)a3;
- (void)dealloc;
@end

@implementation PKApplicationRegistry

- (PKApplicationRegistry)initWithArchiveFileURL:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = PKApplicationRegistry;
  v5 = [(PKApplicationRegistry *)&v13 init];
  if (v5)
  {
    v6 = dispatch_queue_create("com.apple.passkit.applicationregistry", 0);
    applicationRegistryQueue = v5->_applicationRegistryQueue;
    v5->_applicationRegistryQueue = v6;

    v8 = v5->_applicationRegistryQueue;
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __48__PKApplicationRegistry_initWithArchiveFileURL___block_invoke;
    v10[3] = &unk_1E79C4DD8;
    v11 = v5;
    v12 = v4;
    dispatch_sync(v8, v10);
  }

  return v5;
}

void __48__PKApplicationRegistry_initWithArchiveFileURL___block_invoke(uint64_t a1)
{
  v31 = *MEMORY[0x1E69E9840];
  v2 = objc_alloc_init(MEMORY[0x1E696AC08]);
  objc_storeStrong((*(a1 + 32) + 16), *(a1 + 40));
  v3 = dispatch_semaphore_create(1);
  v4 = *(a1 + 32);
  v5 = *(v4 + 24);
  *(v4 + 24) = v3;

  v6 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v7 = *(a1 + 32);
  v8 = *(v7 + 8);
  *(v7 + 8) = v6;

  v9 = [MEMORY[0x1E6963608] defaultWorkspace];
  [v9 addObserver:*(a1 + 32)];
  v10 = [*(a1 + 40) path];
  v11 = [v2 fileExistsAtPath:v10];

  if (v11)
  {
    v12 = [MEMORY[0x1E695DEF0] dataWithContentsOfURL:*(a1 + 40) options:1 error:0];
    if (!v12)
    {
LABEL_11:

      goto LABEL_12;
    }

    v26 = 0;
    v13 = [objc_alloc(MEMORY[0x1E696ACD0]) initForReadingFromData:v12 error:&v26];
    v14 = v26;
    v15 = v14;
    if (v13)
    {
      if (v14)
      {
        [v13 finishDecoding];
      }

      else
      {
        v16 = MEMORY[0x1E695DFD8];
        v17 = objc_opt_class();
        v18 = [v16 setWithObjects:{v17, objc_opt_class(), 0}];
        v25 = 0;
        v19 = [v13 decodeTopLevelObjectOfClasses:v18 forKey:@"registeredBundleIdentifiers" error:&v25];
        v15 = v25;

        v20 = [v19 mutableCopy];
        v21 = *(a1 + 32);
        v22 = *(v21 + 8);
        *(v21 + 8) = v20;

        [*(a1 + 32) _validateRegisteredApplications];
        [v13 finishDecoding];
        if (!v15)
        {
LABEL_10:

          goto LABEL_11;
        }
      }
    }

    v23 = PKLogFacilityTypeGetObject(0);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      v24 = *(a1 + 40);
      *buf = 138543618;
      v28 = v24;
      v29 = 2114;
      v30 = v15;
      _os_log_error_impl(&dword_1AD337000, v23, OS_LOG_TYPE_ERROR, "PKApplicationRegistry: error trying to read %{public}@. The data will be discarded. %{public}@.", buf, 0x16u);
    }

    goto LABEL_10;
  }

LABEL_12:
}

- (void)dealloc
{
  v3 = [MEMORY[0x1E6963608] defaultWorkspace];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = PKApplicationRegistry;
  [(PKApplicationRegistry *)&v4 dealloc];
}

- (void)applicationsDidUninstall:(id)a3
{
  v4 = a3;
  applicationRegistryQueue = self->_applicationRegistryQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __50__PKApplicationRegistry_applicationsDidUninstall___block_invoke;
  v7[3] = &unk_1E79C4DD8;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_async(applicationRegistryQueue, v7);
}

uint64_t __50__PKApplicationRegistry_applicationsDidUninstall___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __50__PKApplicationRegistry_applicationsDidUninstall___block_invoke_2;
  v4[3] = &unk_1E79E0F18;
  v4[4] = *(a1 + 40);
  [v2 enumerateObjectsUsingBlock:v4];
  return [*(a1 + 40) _requestArchiveToDisk];
}

void __50__PKApplicationRegistry_applicationsDidUninstall___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 bundleIdentifier];
  [*(*(a1 + 32) + 8) removeObject:v3];
}

- (BOOL)registerApplicationWithBundleIdentifier:(id)a3
{
  v4 = a3;
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  applicationRegistryQueue = self->_applicationRegistryQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __65__PKApplicationRegistry_registerApplicationWithBundleIdentifier___block_invoke;
  block[3] = &unk_1E79D1A78;
  v9 = v4;
  v10 = self;
  v11 = &v12;
  v6 = v4;
  dispatch_sync(applicationRegistryQueue, block);
  LOBYTE(applicationRegistryQueue) = *(v13 + 24);

  _Block_object_dispose(&v12, 8);
  return applicationRegistryQueue;
}

void __65__PKApplicationRegistry_registerApplicationWithBundleIdentifier___block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v2 = objc_alloc(MEMORY[0x1E69635F8]);
  v3 = *(a1 + 32);
  v10 = 0;
  v4 = [v2 initWithBundleIdentifier:v3 allowPlaceholder:1 error:&v10];
  v5 = v10;
  if (v5)
  {
    v6 = PKLogFacilityTypeGetObject(0);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(a1 + 32);
      *buf = 138412546;
      v12 = v7;
      v13 = 2112;
      v14 = v5;
      _os_log_impl(&dword_1AD337000, v6, OS_LOG_TYPE_DEFAULT, "PKApplicationRegistry failed to obtain application record for %@ with error %@", buf, 0x16u);
    }
  }

  if (([*(*(a1 + 40) + 8) containsObject:*(a1 + 32)] & 1) != 0 || (objc_msgSend(v4, "applicationState"), v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v8, "isInstalled"), v8, v9))
  {
    *(*(*(a1 + 48) + 8) + 24) = 1;
    [*(*(a1 + 40) + 8) addObject:*(a1 + 32)];
    [*(a1 + 40) _requestArchiveToDisk];
  }
}

- (BOOL)applicationIsRegisteredWithBundleIdentifier:(id)a3
{
  v4 = a3;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  applicationRegistryQueue = self->_applicationRegistryQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __69__PKApplicationRegistry_applicationIsRegisteredWithBundleIdentifier___block_invoke;
  block[3] = &unk_1E79E0D00;
  v9 = v4;
  v10 = &v11;
  block[4] = self;
  v6 = v4;
  dispatch_sync(applicationRegistryQueue, block);
  LOBYTE(applicationRegistryQueue) = *(v12 + 24);

  _Block_object_dispose(&v11, 8);
  return applicationRegistryQueue;
}

uint64_t __69__PKApplicationRegistry_applicationIsRegisteredWithBundleIdentifier___block_invoke(void *a1)
{
  result = [*(a1[4] + 8) containsObject:a1[5]];
  *(*(a1[6] + 8) + 24) = result;
  return result;
}

- (void)_validateRegisteredApplications
{
  v3 = [MEMORY[0x1E695DFA8] set];
  registeredBundleIdentifiers = self->_registeredBundleIdentifiers;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __56__PKApplicationRegistry__validateRegisteredApplications__block_invoke;
  v6[3] = &unk_1E79C9500;
  v7 = v3;
  v5 = v3;
  [(NSMutableSet *)registeredBundleIdentifiers enumerateObjectsUsingBlock:v6];
  [(NSMutableSet *)self->_registeredBundleIdentifiers minusSet:v5];
  [(PKApplicationRegistry *)self _requestArchiveToDisk];
}

void __56__PKApplicationRegistry__validateRegisteredApplications__block_invoke(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = [objc_alloc(MEMORY[0x1E69635F8]) initWithBundleIdentifier:v6 allowPlaceholder:1 error:0];
  v4 = [v3 applicationState];
  v5 = [v4 isInstalled];

  if ((v5 & 1) == 0)
  {
    [*(a1 + 32) addObject:v6];
  }
}

- (void)_requestArchiveToDisk
{
  if (!dispatch_semaphore_wait(self->_archiveSemaphore, 0))
  {
    v3 = dispatch_time(0, 2000000000);
    applicationRegistryQueue = self->_applicationRegistryQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __46__PKApplicationRegistry__requestArchiveToDisk__block_invoke;
    block[3] = &unk_1E79C4E28;
    block[4] = self;
    dispatch_after(v3, applicationRegistryQueue, block);
  }
}

intptr_t __46__PKApplicationRegistry__requestArchiveToDisk__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (*(v1 + 16))
  {
    if (![*(v1 + 8) count])
    {
      goto LABEL_7;
    }

    v3 = PKLogFacilityTypeGetObject(0);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&dword_1AD337000, v3, OS_LOG_TYPE_DEFAULT, "Archiving Application Registry", v7, 2u);
    }

    v4 = [objc_alloc(MEMORY[0x1E696ACC8]) initRequiringSecureCoding:1];
    [v4 encodeObject:*(*(a1 + 32) + 8) forKey:@"registeredBundleIdentifiers"];
    [v4 finishEncoding];
    v5 = [v4 encodedData];

    if (v5)
    {
      [v5 writeToURL:*(*(a1 + 32) + 16) atomically:1];
      PKExcludeFileURLFromBackup(*(*(a1 + 32) + 16));
    }

    else
    {
LABEL_7:
      v5 = [MEMORY[0x1E696AC08] defaultManager];
      [v5 removeItemAtURL:*(*(a1 + 32) + 16) error:0];
    }

    v1 = *(a1 + 32);
  }

  return dispatch_semaphore_signal(*(v1 + 24));
}

@end