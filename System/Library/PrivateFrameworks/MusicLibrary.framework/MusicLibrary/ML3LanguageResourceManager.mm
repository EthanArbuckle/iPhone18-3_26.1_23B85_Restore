@interface ML3LanguageResourceManager
+ (ML3LanguageResourceManager)sharedResourceManager;
- (ML3LanguageResources)resources;
- (id)_buildLanguageResources;
- (id)_init;
- (void)invalidateCachedResources;
@end

@implementation ML3LanguageResourceManager

+ (ML3LanguageResourceManager)sharedResourceManager
{
  if (sharedResourceManager___once[0] != -1)
  {
    dispatch_once(sharedResourceManager___once, &__block_literal_global_26254);
  }

  v3 = sharedResourceManager___sharedResourceManager;

  return v3;
}

uint64_t __51__ML3LanguageResourceManager_sharedResourceManager__block_invoke()
{
  sharedResourceManager___sharedResourceManager = [[ML3LanguageResourceManager alloc] _init];

  return MEMORY[0x2821F96F8]();
}

- (id)_init
{
  v6.receiver = self;
  v6.super_class = ML3LanguageResourceManager;
  v2 = [(ML3LanguageResourceManager *)&v6 init];
  if (v2)
  {
    v3 = dispatch_queue_create("com.apple.MusicLibrary.ML3LanguageResourceManager", 0);
    serialQueue = v2->_serialQueue;
    v2->_serialQueue = v3;
  }

  return v2;
}

void __39__ML3LanguageResourceManager_resources__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (!v2[1])
  {
    if (__daemonProcessInfo)
    {
      v3 = [v2 _buildLanguageResources];
      v4 = *(a1 + 32);
      v5 = *(v4 + 8);
      *(v4 + 8) = v3;
    }

    else
    {
      v6 = +[MLMediaLibraryService sharedMediaLibraryService];
      v7[0] = MEMORY[0x277D85DD0];
      v7[1] = 3221225472;
      v7[2] = __39__ML3LanguageResourceManager_resources__block_invoke_2;
      v7[3] = &unk_278765D88;
      v7[4] = *(a1 + 32);
      [v6 getLanguageResourcesWithCompletion:v7];
    }
  }

  objc_storeStrong((*(*(a1 + 40) + 8) + 40), *(*(a1 + 32) + 8));
}

- (ML3LanguageResources)resources
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__26244;
  v10 = __Block_byref_object_dispose__26245;
  v11 = 0;
  serialQueue = self->_serialQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __39__ML3LanguageResourceManager_resources__block_invoke;
  v5[3] = &unk_278766080;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(serialQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

void __39__ML3LanguageResourceManager_resources__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v14 = *MEMORY[0x277D85DE8];
  v6 = a2;
  v7 = a3;
  if (v7)
  {
    v8 = os_log_create("com.apple.amp.medialibrary", "Default");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v12 = 138543362;
      v13 = v7;
      _os_log_impl(&dword_22D2FA000, v8, OS_LOG_TYPE_ERROR, "Error fetching language resources. (Error = %{public}@) Falling back to building resources in-process.", &v12, 0xCu);
    }

    v9 = [*(a1 + 32) _buildLanguageResources];
    v10 = *(a1 + 32);
    v11 = *(v10 + 8);
    *(v10 + 8) = v9;
  }

  else
  {
    objc_storeStrong((*(a1 + 32) + 8), a2);
  }
}

- (id)_buildLanguageResources
{
  v2 = *MEMORY[0x277CBF008];
  CFPreferencesAppSynchronize(*MEMORY[0x277CBF008]);
  v3 = CFPreferencesCopyAppValue(@"AppleLanguages", v2);
  if (v3)
  {
    v4 = v3;
    if (CFArrayGetCount(v3) <= 0)
    {
      CFRelease(v4);
    }

    else
    {
      ValueAtIndex = CFArrayGetValueAtIndex(v4, 0);
      CanonicalLanguageIdentifierFromString = CFLocaleCreateCanonicalLanguageIdentifierFromString(*MEMORY[0x277CBECE8], ValueAtIndex);
      CFRelease(v4);
      if (CanonicalLanguageIdentifierFromString)
      {
        goto LABEL_7;
      }
    }
  }

  CanonicalLanguageIdentifierFromString = @"en";
LABEL_7:
  v7 = [ML3MusicLibrary pathForResourceFileOrFolder:16];
  v8 = [objc_alloc(MEMORY[0x277CBEAC0]) initWithContentsOfFile:v7];
  v9 = [ML3MusicLibrary pathForResourceFileOrFolder:17];
  v10 = [objc_alloc(MEMORY[0x277CBEAC0]) initWithContentsOfFile:v9];
  v11 = [[ML3LanguageResources alloc] initWithSectionsInfo:v8 sortingDetails:v10 canonicalLanguageIdentifier:CanonicalLanguageIdentifierFromString];

  return v11;
}

- (void)invalidateCachedResources
{
  serialQueue = self->_serialQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __55__ML3LanguageResourceManager_invalidateCachedResources__block_invoke;
  block[3] = &unk_278765FB8;
  block[4] = self;
  dispatch_sync(serialQueue, block);
}

void __55__ML3LanguageResourceManager_invalidateCachedResources__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 8);
  *(v1 + 8) = 0;
}

@end