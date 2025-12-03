@interface NUANFFontLoader
- (NUANFFontLoader)initWithANFContent:(id)content flintResourceManager:(id)manager fontRegistration:(id)registration;
- (id)asyncLoadFontsOnceWithCompletion:(id)completion;
- (id)loadFontsWithCompletion:(id)completion;
- (void)registerFontsWithCompletion:(id)completion;
- (void)setRelativePriority:(int64_t)priority;
- (void)unregisterFontsWithCompletion:(id)completion;
@end

@implementation NUANFFontLoader

- (NUANFFontLoader)initWithANFContent:(id)content flintResourceManager:(id)manager fontRegistration:(id)registration
{
  contentCopy = content;
  managerCopy = manager;
  registrationCopy = registration;
  v21.receiver = self;
  v21.super_class = NUANFFontLoader;
  v12 = [(NUANFFontLoader *)&v21 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_anfContent, content);
    objc_storeStrong(&v13->_flintResourceManager, manager);
    objc_storeStrong(&v13->_fontRegistration, registration);
    v14 = objc_opt_new();
    fontResourcesToRegister = v13->_fontResourcesToRegister;
    v13->_fontResourcesToRegister = v14;

    v16 = objc_opt_new();
    fontResourcesRegistered = v13->_fontResourcesRegistered;
    v13->_fontResourcesRegistered = v16;

    v13->_relativePriority = 0;
    v18 = [objc_alloc(MEMORY[0x277D30E30]) initWithTarget:v13 selector:sel_asyncLoadFontsOnceWithCompletion_];
    asyncOnceOperation = v13->_asyncOnceOperation;
    v13->_asyncOnceOperation = v18;
  }

  return v13;
}

- (void)setRelativePriority:(int64_t)priority
{
  self->_relativePriority = priority;
  asyncOnceOperation = [(NUANFFontLoader *)self asyncOnceOperation];
  [asyncOnceOperation setRelativePriority:priority];
}

- (void)registerFontsWithCompletion:(id)completion
{
  v29 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  v4 = NUSharedLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    selfCopy = self;
    _os_log_impl(&dword_25C2D6000, v4, OS_LOG_TYPE_DEFAULT, "Registering font resource for loader %{public}@", buf, 0xCu);
  }

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  fontResourcesToRegister = [(NUANFFontLoader *)self fontResourcesToRegister];
  v6 = [fontResourcesToRegister copy];

  v7 = [v6 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v23;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v23 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v22 + 1) + 8 * i);
        fileURL = [v11 fileURL];

        fontRegistration = NUSharedLog();
        v14 = os_log_type_enabled(fontRegistration, OS_LOG_TYPE_DEFAULT);
        if (fileURL)
        {
          if (v14)
          {
            resourceID = [v11 resourceID];
            *buf = 138543362;
            selfCopy = resourceID;
            _os_log_impl(&dword_25C2D6000, fontRegistration, OS_LOG_TYPE_DEFAULT, "Registering font resource %{public}@", buf, 0xCu);
          }

          fontRegistration = [(NUANFFontLoader *)self fontRegistration];
          fileURL2 = [v11 fileURL];
          [fontRegistration registerFontWithURL:fileURL2 error:0];
        }

        else
        {
          if (!v14)
          {
            goto LABEL_15;
          }

          fileURL2 = [v11 resourceID];
          *buf = 138543362;
          selfCopy = fileURL2;
          _os_log_impl(&dword_25C2D6000, fontRegistration, OS_LOG_TYPE_DEFAULT, "Unable to register font resource %{public}@", buf, 0xCu);
        }

LABEL_15:
      }

      v8 = [v6 countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v8);
  }

  fontResourcesRegistered = [(NUANFFontLoader *)self fontResourcesRegistered];
  fontResourcesToRegister2 = [(NUANFFontLoader *)self fontResourcesToRegister];
  [fontResourcesRegistered addObjectsFromArray:fontResourcesToRegister2];

  fontResourcesToRegister3 = [(NUANFFontLoader *)self fontResourcesToRegister];
  [fontResourcesToRegister3 removeAllObjects];

  if (completionCopy)
  {
    completionCopy[2](completionCopy);
  }

  v20 = *MEMORY[0x277D85DE8];
}

- (void)unregisterFontsWithCompletion:(id)completion
{
  v26 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  v4 = NUSharedLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    selfCopy = self;
    _os_log_impl(&dword_25C2D6000, v4, OS_LOG_TYPE_DEFAULT, "Unregistering font resource for loader %{public}@", buf, 0xCu);
  }

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  fontResourcesRegistered = [(NUANFFontLoader *)self fontResourcesRegistered];
  v6 = [fontResourcesRegistered copy];

  v7 = [v6 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v20;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v20 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v19 + 1) + 8 * i);
        v12 = NUSharedLog();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          resourceID = [v11 resourceID];
          *buf = 138543362;
          selfCopy = resourceID;
          _os_log_impl(&dword_25C2D6000, v12, OS_LOG_TYPE_DEFAULT, "Unregistering font resource %{public}@", buf, 0xCu);
        }

        fileURL = [v11 fileURL];

        if (fileURL)
        {
          fontRegistration = [(NUANFFontLoader *)self fontRegistration];
          fileURL2 = [v11 fileURL];
          [fontRegistration unregisterFontWithURL:fileURL2];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v8);
  }

  if (completionCopy)
  {
    completionCopy[2](completionCopy);
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (id)loadFontsWithCompletion:(id)completion
{
  completionCopy = completion;
  asyncOnceOperation = [(NUANFFontLoader *)self asyncOnceOperation];
  v6 = [asyncOnceOperation executeWithCompletionHandler:completionCopy];

  return v6;
}

- (id)asyncLoadFontsOnceWithCompletion:(id)completion
{
  v21 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  v5 = NUSharedLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    selfCopy = self;
    _os_log_impl(&dword_25C2D6000, v5, OS_LOG_TYPE_DEFAULT, "Loading font resources for loader %{public}@", buf, 0xCu);
  }

  anfContent = [(NUANFFontLoader *)self anfContent];
  fontResourceIDs = [anfContent fontResourceIDs];

  if ([fontResourceIDs count])
  {
    objc_initWeak(buf, self);
    flintResourceManager = [(NUANFFontLoader *)self flintResourceManager];
    relativePriority = [(NUANFFontLoader *)self relativePriority];
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __52__NUANFFontLoader_asyncLoadFontsOnceWithCompletion___block_invoke_2;
    v13[3] = &unk_2799A36D0;
    objc_copyWeak(&v16, buf);
    v15 = completionCopy;
    v14 = fontResourceIDs;
    v10 = [flintResourceManager fetchFontResourcesWithIdentifiers:v14 downloadAssets:1 relativePriority:relativePriority completionBlock:v13];

    objc_destroyWeak(&v16);
    objc_destroyWeak(buf);
  }

  else
  {
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __52__NUANFFontLoader_asyncLoadFontsOnceWithCompletion___block_invoke;
    v17[3] = &unk_2799A3680;
    v17[4] = self;
    v18 = completionCopy;
    v10 = __52__NUANFFontLoader_asyncLoadFontsOnceWithCompletion___block_invoke(v17);
  }

  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

uint64_t __52__NUANFFontLoader_asyncLoadFontsOnceWithCompletion___block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = NUSharedLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    *buf = 138543362;
    v9 = v3;
    _os_log_impl(&dword_25C2D6000, v2, OS_LOG_TYPE_DEFAULT, "No font resources required for loader %{public}@", buf, 0xCu);
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __52__NUANFFontLoader_asyncLoadFontsOnceWithCompletion___block_invoke_4;
  block[3] = &unk_2799A3148;
  v7 = *(a1 + 40);
  dispatch_async(MEMORY[0x277D85CD0], block);

  v4 = *MEMORY[0x277D85DE8];
  return 0;
}

uint64_t __52__NUANFFontLoader_asyncLoadFontsOnceWithCompletion___block_invoke_4(uint64_t a1)
{
  return (*(*(a1 + 32) + 16))();
}

void __52__NUANFFontLoader_asyncLoadFontsOnceWithCompletion___block_invoke_2(id *a1, void *a2, void *a3)
{
  v48 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  v8 = WeakRetained;
  if (WeakRetained)
  {
    v9 = WeakRetained;
    if (v6)
    {
      v38[0] = MEMORY[0x277D85DD0];
      v38[1] = 3221225472;
      v38[2] = __52__NUANFFontLoader_asyncLoadFontsOnceWithCompletion___block_invoke_4;
      v38[3] = &unk_2799A36A8;
      v10 = &v39;
      v39 = v6;
      v40 = a1[5];
      __52__NUANFFontLoader_asyncLoadFontsOnceWithCompletion___block_invoke_4(v38);
    }

    else
    {
      v11 = NUSharedLog();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134218242;
        v45 = [v5 count];
        v46 = 2114;
        v47 = v9;
        _os_log_impl(&dword_25C2D6000, v11, OS_LOG_TYPE_DEFAULT, "Finished loading %lu fonts for loader %{public}@", buf, 0x16u);
      }

      v12 = [v9 fontResourcesToRegister];
      [v12 removeAllObjects];

      v13 = [v5 count];
      if (v13 != [a1[4] count])
      {
        v14 = [a1[4] mutableCopy];
        v15 = [v5 allKeys];
        v16 = v15;
        if (v15)
        {
          v17 = v15;
        }

        else
        {
          v17 = MEMORY[0x277CBEBF8];
        }

        [v14 removeObjectsInArray:v17];

        v18 = NUSharedLog();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543362;
          v45 = v14;
          _os_log_impl(&dword_25C2D6000, v18, OS_LOG_TYPE_DEFAULT, "Missing font resources %{public}@", buf, 0xCu);
        }
      }

      v30 = a1;
      v31 = v8;
      v36 = 0u;
      v37 = 0u;
      v34 = 0u;
      v35 = 0u;
      v19 = a1[4];
      v20 = [v19 countByEnumeratingWithState:&v34 objects:v43 count:16];
      if (v20)
      {
        v21 = v20;
        v22 = *v35;
        do
        {
          for (i = 0; i != v21; ++i)
          {
            if (*v35 != v22)
            {
              objc_enumerationMutation(v19);
            }

            v24 = *(*(&v34 + 1) + 8 * i);
            v25 = [v5 objectForKey:v24];
            v26 = [v25 fileURL];

            v27 = NUSharedLog();
            v28 = os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT);
            if (v26)
            {
              if (v28)
              {
                *buf = 138543362;
                v45 = v24;
                _os_log_impl(&dword_25C2D6000, v27, OS_LOG_TYPE_DEFAULT, "Tracking font resource to register %{public}@", buf, 0xCu);
              }

              v27 = [v9 fontResourcesToRegister];
              [v27 addObject:v25];
            }

            else if (v28)
            {
              *buf = 138543362;
              v45 = v24;
              _os_log_impl(&dword_25C2D6000, v27, OS_LOG_TYPE_DEFAULT, "Failed to load font resource with identifier %{public}@", buf, 0xCu);
            }
          }

          v21 = [v19 countByEnumeratingWithState:&v34 objects:v43 count:16];
        }

        while (v21);
      }

      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __52__NUANFFontLoader_asyncLoadFontsOnceWithCompletion___block_invoke_7;
      block[3] = &unk_2799A3148;
      v10 = &v33;
      v33 = v30[5];
      dispatch_async(MEMORY[0x277D85CD0], block);
      v8 = v31;
      v6 = 0;
    }
  }

  else
  {
    v41[0] = MEMORY[0x277D85DD0];
    v41[1] = 3221225472;
    v41[2] = __52__NUANFFontLoader_asyncLoadFontsOnceWithCompletion___block_invoke_3;
    v41[3] = &unk_2799A3148;
    v42 = a1[5];
    __52__NUANFFontLoader_asyncLoadFontsOnceWithCompletion___block_invoke_3(v41);
    v9 = v42;
  }

  v29 = *MEMORY[0x277D85DE8];
}

@end