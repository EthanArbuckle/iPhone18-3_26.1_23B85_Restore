@interface FAFamilySettings
- (BOOL)isAccountSignedIn;
- (void)_launchPrefsUsingDaemonWithOptions:(id)options;
- (void)familySetupPrompterDidFinish:(id)finish;
- (void)launchiCloudFamilySettingsWithOptions:(id)options;
@end

@implementation FAFamilySettings

- (BOOL)isAccountSignedIn
{
  defaultStore = [MEMORY[0x1E6959A48] defaultStore];
  aa_primaryAppleAccount = [defaultStore aa_primaryAppleAccount];
  v4 = aa_primaryAppleAccount != 0;

  return v4;
}

- (void)launchiCloudFamilySettingsWithOptions:(id)options
{
  optionsCopy = options;
  defaultStore = [MEMORY[0x1E6959A48] defaultStore];
  aa_primaryAppleAccount = [defaultStore aa_primaryAppleAccount];
  if (aa_primaryAppleAccount)
  {
    v7 = objc_alloc_init(FAFetchFamilyCircleRequest);
    [(FAFetchFamilyCircleRequest *)v7 setDoNotFetchFromServer:1];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __58__FAFamilySettings_launchiCloudFamilySettingsWithOptions___block_invoke;
    v8[3] = &unk_1E7CA5098;
    v8[4] = self;
    v9 = optionsCopy;
    [(FAFetchFamilyCircleRequest *)v7 startRequestWithCompletionHandler:v8];
  }

  else
  {
    [(FAFamilySettings *)self _launchPrefsUsingDaemonWithOptions:optionsCopy];
  }
}

void __58__FAFamilySettings_launchiCloudFamilySettingsWithOptions___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [v5 members];
  v8 = [v7 count];

  if (v8)
  {
    [*(a1 + 32) _launchPrefsUsingDaemonWithOptions:*(a1 + 40)];
  }

  else
  {
    v20 = 0;
    v21 = &v20;
    v22 = 0x2050000000;
    v9 = getAAUIFamilySetupPrompterClass_softClass;
    v23 = getAAUIFamilySetupPrompterClass_softClass;
    if (!getAAUIFamilySetupPrompterClass_softClass)
    {
      v19[0] = MEMORY[0x1E69E9820];
      v19[1] = 3221225472;
      v19[2] = __getAAUIFamilySetupPrompterClass_block_invoke;
      v19[3] = &unk_1E7CA4F30;
      v19[4] = &v20;
      __getAAUIFamilySetupPrompterClass_block_invoke(v19);
      v9 = v21[3];
    }

    v10 = v9;
    _Block_object_dispose(&v20, 8);
    v11 = [v9 alloc];
    v12 = [*(a1 + 32) iTunesAccount];
    v13 = [v11 initWithiTunesAccount:v12];
    v14 = *(a1 + 32);
    v15 = *(v14 + 32);
    *(v14 + 32) = v13;

    [*(*(a1 + 32) + 32) setDelegate:?];
    objc_storeStrong((*(a1 + 32) + 40), *(a1 + 32));
    v16 = *(a1 + 32);
    v17 = v16[4];
    v18 = [v16 presentingViewController];
    [v17 promptIfEligibleWithPresentingViewController:v18 isFirstRun:0];
  }
}

- (void)_launchPrefsUsingDaemonWithOptions:(id)options
{
  optionsCopy = options;
  v5 = [(FAFamilyCircleRequest *)self serviceRemoteObjectWithErrorHandler:&__block_literal_global_9];
  [v5 launchICloudFamilySettingsWithOptions:optionsCopy];
}

void __55__FAFamilySettings__launchPrefsUsingDaemonWithOptions___block_invoke(uint64_t a1, void *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = _FALogSystem();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138412290;
    v6 = v2;
    _os_log_impl(&dword_1B70B0000, v3, OS_LOG_TYPE_DEFAULT, "FAFamilySettings: Error from service launching family settings - %@", &v5, 0xCu);
  }

  v4 = *MEMORY[0x1E69E9840];
}

- (void)familySetupPrompterDidFinish:(id)finish
{
  retainedSelf = self->_retainedSelf;
  self->_retainedSelf = 0;

  prompter = self->_prompter;
  self->_prompter = 0;
}

@end