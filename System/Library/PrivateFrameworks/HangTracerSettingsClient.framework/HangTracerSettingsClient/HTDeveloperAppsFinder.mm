@interface HTDeveloperAppsFinder
- (HTDeveloperAppsFinder)init;
- (HTDeveloperAppsFinderDelegate)delegate;
- (void)checkProxiesForDeveloperAppAndNotifyDelegate:(id)delegate;
- (void)dealloc;
- (void)findApps:(id)apps;
@end

@implementation HTDeveloperAppsFinder

- (HTDeveloperAppsFinder)init
{
  v5.receiver = self;
  v5.super_class = HTDeveloperAppsFinder;
  v2 = [(HTDeveloperAppsFinder *)&v5 init];
  if (v2)
  {
    defaultWorkspace = [MEMORY[0x277CC1E80] defaultWorkspace];
    [defaultWorkspace addObserver:v2];
  }

  return v2;
}

- (void)dealloc
{
  defaultWorkspace = [MEMORY[0x277CC1E80] defaultWorkspace];
  [defaultWorkspace removeObserver:self];

  v4.receiver = self;
  v4.super_class = HTDeveloperAppsFinder;
  [(HTDeveloperAppsFinder *)&v4 dealloc];
}

- (void)findApps:(id)apps
{
  appsCopy = apps;
  NSLog(&cfstr_FindingApplica.isa);
  v5 = dispatch_get_global_queue(0, 0);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __34__HTDeveloperAppsFinder_findApps___block_invoke;
  v7[3] = &unk_2796A92F8;
  v7[4] = self;
  v8 = appsCopy;
  v6 = appsCopy;
  dispatch_async(v5, v7);
}

void __34__HTDeveloperAppsFinder_findApps___block_invoke(uint64_t a1)
{
  v22 = 0;
  v23 = &v22;
  v24 = 0x2020000000;
  v25 = 0;
  v2 = [MEMORY[0x277CC1E70] enumeratorWithOptions:0];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __34__HTDeveloperAppsFinder_findApps___block_invoke_2;
  v19[3] = &unk_2796A93A8;
  v21 = &v22;
  v20 = *(a1 + 40);
  [v2 setErrorHandler:v19];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __34__HTDeveloperAppsFinder_findApps___block_invoke_4;
  v18[3] = &unk_2796A93D0;
  v18[4] = *(a1 + 32);
  [v2 setFilter:v18];
  v13 = a1;
  v14 = [MEMORY[0x277CBEB18] array];
  for (i = 0; ; i = v4)
  {
    v4 = [v2 nextObject];

    if (!v4)
    {
      break;
    }

    v5 = [v4 infoDictionary];
    v6 = [HTDeveloperApp alloc];
    v7 = [v4 localizedName];
    v8 = [v4 bundleIdentifier];
    v9 = [v5 objectForKey:@"CFBundleExecutable" ofClass:objc_opt_class()];
    v10 = [v5 objectForKey:@"CFBundleName" ofClass:objc_opt_class()];
    v11 = [v5 objectForKey:@"CFBundleDisplayName" ofClass:objc_opt_class()];
    v12 = [(HTDeveloperApp *)v6 initWithName:v7 bundleID:v8 bundleExecutable:v9 bundleName:v10 bundleDisplayName:v11];
    [v14 addObject:v12];
  }

  NSLog(&cfstr_FoundLuDevelop.isa, [v14 count]);
  if (v23[3])
  {
    NSLog(&cfstr_CompletionBloc_0.isa);
  }

  else
  {
    NSLog(&cfstr_CallingComplet.isa);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __34__HTDeveloperAppsFinder_findApps___block_invoke_5;
    block[3] = &unk_2796A92F8;
    v17 = *(v13 + 40);
    v16 = v14;
    dispatch_async(MEMORY[0x277D85CD0], block);
  }

  _Block_object_dispose(&v22, 8);
}

void __34__HTDeveloperAppsFinder_findApps___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  NSLog(&cfstr_ThereWasAnErro_0.isa, v3);
  v4 = *(*(a1 + 40) + 8);
  if (*(v4 + 24) == 1)
  {
    NSLog(&cfstr_CompletionBloc.isa);
  }

  else
  {
    *(v4 + 24) = 1;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __34__HTDeveloperAppsFinder_findApps___block_invoke_3;
    block[3] = &unk_2796A92F8;
    v7 = *(a1 + 32);
    v6 = v3;
    dispatch_async(MEMORY[0x277D85CD0], block);
  }
}

uint64_t __34__HTDeveloperAppsFinder_findApps___block_invoke_3(uint64_t a1)
{
  NSLog(&cfstr_ReportingTheEr.isa);
  v2 = *(a1 + 32);
  v3 = *(*(a1 + 40) + 16);

  return v3();
}

uint64_t __34__HTDeveloperAppsFinder_findApps___block_invoke_4(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([*(a1 + 32) doNotFilter])
  {
    v4 = 1;
  }

  else
  {
    v4 = [v3 isDeveloperApp];
  }

  return v4;
}

void __34__HTDeveloperAppsFinder_findApps___block_invoke_5(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) sortedArrayUsingComparator:&__block_literal_global_4];
  (*(v1 + 16))(v1, v2, 0);
}

uint64_t __34__HTDeveloperAppsFinder_findApps___block_invoke_6(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 name];
  v6 = [v4 name];

  v7 = [v5 compare:v6];
  return v7;
}

- (void)checkProxiesForDeveloperAppAndNotifyDelegate:(id)delegate
{
  v19 = *MEMORY[0x277D85DE8];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  delegateCopy = delegate;
  v5 = [delegateCopy countByEnumeratingWithState:&v14 objects:v18 count:16];
  v6 = delegateCopy;
  if (v5)
  {
    v7 = v5;
    v8 = *v15;
LABEL_3:
    v9 = 0;
    while (1)
    {
      if (*v15 != v8)
      {
        objc_enumerationMutation(delegateCopy);
      }

      correspondingApplicationRecord = [*(*(&v14 + 1) + 8 * v9) correspondingApplicationRecord];
      isDeveloperApp = [correspondingApplicationRecord isDeveloperApp];

      if (isDeveloperApp)
      {
        break;
      }

      if (v7 == ++v9)
      {
        v7 = [delegateCopy countByEnumeratingWithState:&v14 objects:v18 count:16];
        if (v7)
        {
          goto LABEL_3;
        }

        v6 = delegateCopy;
        goto LABEL_12;
      }
    }

    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    if (!WeakRetained)
    {
      goto LABEL_13;
    }

    v6 = objc_loadWeakRetained(&self->_delegate);
    [v6 developerAppsDidChangeForFinder:self];
  }

LABEL_12:

LABEL_13:
  v13 = *MEMORY[0x277D85DE8];
}

- (HTDeveloperAppsFinderDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end