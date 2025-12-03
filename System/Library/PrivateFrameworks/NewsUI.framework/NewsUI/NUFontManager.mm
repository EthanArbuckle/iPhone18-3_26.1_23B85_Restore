@interface NUFontManager
- (BOOL)registerFontWithURL:(id)l error:(id *)error;
- (BOOL)unregisterFontAtURL:(id)l error:(id *)error;
- (NUFontManager)init;
- (unint64_t)referenceCountForFontWithURL:(id)l;
- (void)decreaseReferenceCountForFontWithURL:(id)l;
- (void)increaseReferenceCountForFontWithURL:(id)l;
- (void)unregisterFontWithURL:(id)l;
@end

@implementation NUFontManager

- (NUFontManager)init
{
  v9.receiver = self;
  v9.super_class = NUFontManager;
  v2 = [(NUFontManager *)&v9 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_qos_class(0, 0xFFFFFFFE, 0);
    v4 = dispatch_queue_create("com.apple.news.font.registration", v3);
    registrationQueue = v2->_registrationQueue;
    v2->_registrationQueue = v4;

    v6 = objc_alloc_init(MEMORY[0x277CCA940]);
    referenceCounts = v2->_referenceCounts;
    v2->_referenceCounts = v6;
  }

  return v2;
}

- (BOOL)registerFontWithURL:(id)l error:(id *)error
{
  v20 = *MEMORY[0x277D85DE8];
  lCopy = l;
  v7 = NUSharedLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 138543362;
    *(&buf + 4) = lCopy;
    _os_log_impl(&dword_25C2D6000, v7, OS_LOG_TYPE_DEFAULT, "Registering font at URL %{public}@", &buf, 0xCu);
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v18 = 0x2020000000;
  v19 = 1;
  registrationQueue = [(NUFontManager *)self registrationQueue];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __43__NUFontManager_registerFontWithURL_error___block_invoke;
  v13[3] = &unk_2799A3418;
  v13[4] = self;
  v14 = lCopy;
  p_buf = &buf;
  errorCopy = error;
  v9 = lCopy;
  dispatch_sync(registrationQueue, v13);

  v10 = *(*(&buf + 1) + 24);
  _Block_object_dispose(&buf, 8);
  v11 = *MEMORY[0x277D85DE8];
  return v10 & 1;
}

void __43__NUFontManager_registerFontWithURL_error___block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  if (![*(a1 + 32) referenceCountForFontWithURL:*(a1 + 40)])
  {
    error = 0;
    if (!CTFontManagerRegisterFontsForURL(*(a1 + 40), kCTFontManagerScopeProcess, &error))
    {
      Code = CFErrorGetCode(error);
      if (Code == 105 || (v3 = Code, Code == 305))
      {
        *(*(*(a1 + 48) + 8) + 24) = 1;
      }

      else
      {
        if (*(a1 + 56))
        {
          **(a1 + 56) = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CC4900] code:Code userInfo:0];
        }

        *(*(*(a1 + 48) + 8) + 24) = 0;
        v4 = NUSharedLog();
        if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
        {
          v5 = *(a1 + 40);
          *buf = 138543618;
          v11 = v5;
          v12 = 2048;
          v13 = v3;
          _os_log_impl(&dword_25C2D6000, v4, OS_LOG_TYPE_DEFAULT, "Font registration failed for font at URL %{public}@ with error code %lu", buf, 0x16u);
        }
      }
    }
  }

  if (*(*(*(a1 + 48) + 8) + 24) == 1)
  {
    v6 = NUSharedLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(a1 + 40);
      *buf = 138543362;
      v11 = v7;
      _os_log_impl(&dword_25C2D6000, v6, OS_LOG_TYPE_DEFAULT, "Font registration succeeded for font at URL %{public}@", buf, 0xCu);
    }

    [*(a1 + 32) increaseReferenceCountForFontWithURL:*(a1 + 40)];
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)unregisterFontWithURL:(id)l
{
  lCopy = l;
  registrationQueue = [(NUFontManager *)self registrationQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __39__NUFontManager_unregisterFontWithURL___block_invoke;
  v7[3] = &unk_2799A3440;
  v7[4] = self;
  v8 = lCopy;
  v6 = lCopy;
  dispatch_sync(registrationQueue, v7);
}

- (BOOL)unregisterFontAtURL:(id)l error:(id *)error
{
  v18 = *MEMORY[0x277D85DE8];
  lCopy = l;
  v6 = NUSharedLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v15 = lCopy;
    _os_log_impl(&dword_25C2D6000, v6, OS_LOG_TYPE_DEFAULT, "Unregister font at URL %{public}@", buf, 0xCu);
  }

  error = 0;
  v7 = 1;
  if (!CTFontManagerUnregisterFontsForURL(lCopy, kCTFontManagerScopeProcess, &error))
  {
    Code = CFErrorGetCode(error);
    v9 = Code;
    if (!error || Code == 201)
    {
      v7 = Code == 201;
    }

    else
    {
      [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CC4900] code:Code userInfo:0];
      *error = v7 = 0;
    }

    v10 = NUSharedLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      v15 = lCopy;
      v16 = 2048;
      v17 = v9;
      _os_log_impl(&dword_25C2D6000, v10, OS_LOG_TYPE_DEFAULT, "Unable to unregister font at URL %{public}@ with error %lu", buf, 0x16u);
    }
  }

  v11 = *MEMORY[0x277D85DE8];
  return v7;
}

- (void)increaseReferenceCountForFontWithURL:(id)l
{
  v10 = *MEMORY[0x277D85DE8];
  lCopy = l;
  v5 = NUSharedLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138543362;
    v9 = lCopy;
    _os_log_impl(&dword_25C2D6000, v5, OS_LOG_TYPE_DEFAULT, "Increase reference count for font at URL %{public}@", &v8, 0xCu);
  }

  referenceCounts = [(NUFontManager *)self referenceCounts];
  [referenceCounts addObject:lCopy];

  v7 = *MEMORY[0x277D85DE8];
}

- (void)decreaseReferenceCountForFontWithURL:(id)l
{
  v11 = *MEMORY[0x277D85DE8];
  lCopy = l;
  v5 = NUSharedLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v10 = lCopy;
    _os_log_impl(&dword_25C2D6000, v5, OS_LOG_TYPE_DEFAULT, "Decrease reference count for font at URL %{public}@", buf, 0xCu);
  }

  referenceCounts = [(NUFontManager *)self referenceCounts];
  [referenceCounts removeObject:lCopy];

  if ([(NUFontManager *)self shouldUnregisterFontWithURL:lCopy])
  {
    v8 = 0;
    [(NUFontManager *)self unregisterFontAtURL:lCopy error:&v8];
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (unint64_t)referenceCountForFontWithURL:(id)l
{
  lCopy = l;
  referenceCounts = [(NUFontManager *)self referenceCounts];
  v6 = [referenceCounts countForObject:lCopy];

  return v6;
}

@end