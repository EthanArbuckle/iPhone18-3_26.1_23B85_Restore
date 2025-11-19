@interface SFSiriVoiceUtilities
+ (SFSiriVoiceUtilities)sharedVoiceUtilities;
- (SFSiriVoiceUtilities)init;
- (void)fetchAvailableVoiceLanguages;
@end

@implementation SFSiriVoiceUtilities

+ (SFSiriVoiceUtilities)sharedVoiceUtilities
{
  if (sharedVoiceUtilities_onceToken != -1)
  {
    +[SFSiriVoiceUtilities sharedVoiceUtilities];
  }

  v3 = sharedVoiceUtilities_sharedVoiceUtilitiesInstance;

  return v3;
}

void __44__SFSiriVoiceUtilities_sharedVoiceUtilities__block_invoke()
{
  v0 = objc_alloc_init(SFSiriVoiceUtilities);
  v1 = sharedVoiceUtilities_sharedVoiceUtilitiesInstance;
  sharedVoiceUtilities_sharedVoiceUtilitiesInstance = v0;
}

- (SFSiriVoiceUtilities)init
{
  v8.receiver = self;
  v8.super_class = SFSiriVoiceUtilities;
  v2 = [(SFSiriVoiceUtilities *)&v8 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_UTILITY, 0);
    v4 = dispatch_queue_create("com.apple.mobilesafari.siriVoiceUtilitiesQueue", v3);
    siriVoiceUtilitiesQueue = v2->_siriVoiceUtilitiesQueue;
    v2->_siriVoiceUtilitiesQueue = v4;

    v6 = v2;
  }

  return v2;
}

- (void)fetchAvailableVoiceLanguages
{
  siriVoiceUtilitiesQueue = self->_siriVoiceUtilitiesQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __52__SFSiriVoiceUtilities_fetchAvailableVoiceLanguages__block_invoke;
  block[3] = &unk_1E721B360;
  block[4] = self;
  dispatch_async(siriVoiceUtilitiesQueue, block);
}

void __52__SFSiriVoiceUtilities_fetchAvailableVoiceLanguages__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (!v2[1])
  {
    v3 = objc_alloc_init(MEMORY[0x1E69D32E0]);
    v4 = *(a1 + 32);
    v5 = *(v4 + 8);
    *(v4 + 8) = v3;

    v2 = *(a1 + 32);
  }

  objc_initWeak(&location, v2);
  v6 = *(*(a1 + 32) + 8);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __52__SFSiriVoiceUtilities_fetchAvailableVoiceLanguages__block_invoke_2;
  v7[3] = &unk_1E721FB60;
  objc_copyWeak(&v8, &location);
  [v6 downloadedVoicesMatching:0 reply:v7];
  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

void __52__SFSiriVoiceUtilities_fetchAvailableVoiceLanguages__block_invoke_2(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v5 = [v3 safari_mapObjectsUsingBlock:&__block_literal_global_6];
    v6 = [v5 copy];
    v7 = WeakRetained[3];
    WeakRetained[3] = v6;

    This = WBS_LOG_CHANNEL_PREFIXSiriReadThis();
    if (os_log_type_enabled(This, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 138543362;
      v11 = v5;
      _os_log_impl(&dword_18B7AC000, This, OS_LOG_TYPE_DEFAULT, "Siri has downloaded voices for the following languages: %{public}@", &v10, 0xCu);
    }

    v9 = WeakRetained[1];
    WeakRetained[1] = 0;
  }
}

id __52__SFSiriVoiceUtilities_fetchAvailableVoiceLanguages__block_invoke_3(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x1E695DF58];
  v3 = [a2 language];
  v4 = [v2 localeWithLocaleIdentifier:v3];
  v5 = [v4 languageCode];

  return v5;
}

@end