@interface HUSceneUtilities
+ (id)_hasSuggestedScenesForHome:(id)home;
+ (id)initialViewControllerForAddingSceneWithPresentationDelegate:(id)delegate home:(id)home;
@end

@implementation HUSceneUtilities

+ (id)initialViewControllerForAddingSceneWithPresentationDelegate:(id)delegate home:(id)home
{
  delegateCopy = delegate;
  v7 = MEMORY[0x277D2C900];
  homeCopy = home;
  v9 = objc_alloc_init(v7);
  v10 = [self _hasSuggestedScenesForHome:homeCopy];

  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __85__HUSceneUtilities_initialViewControllerForAddingSceneWithPresentationDelegate_home___block_invoke;
  v17[3] = &unk_277DC05E8;
  v18 = delegateCopy;
  v11 = v9;
  v19 = v11;
  v12 = delegateCopy;
  v13 = [v10 addCompletionBlock:v17];

  v14 = v19;
  v15 = v11;

  return v11;
}

void __85__HUSceneUtilities_initialViewControllerForAddingSceneWithPresentationDelegate_home___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = a3;
  if (v8 && [v8 BOOLValue])
  {
    v6 = objc_alloc_init(HUSceneSuggestionsViewController);
  }

  else
  {
    v6 = [[HUSceneActionEditorViewController alloc] initWithActionSetBuilder:0 mode:2];
  }

  v7 = v6;
  [(HUSceneSuggestionsViewController *)v6 setPresentationDelegate:*(a1 + 32)];
  [*(a1 + 40) finishWithResult:v7];
}

+ (id)_hasSuggestedScenesForHome:(id)home
{
  v3 = [HUSceneSuggestionsViewController computeNumberOfSuggestionsInHome:home];
  v4 = [v3 flatMap:&__block_literal_global_178];

  return v4;
}

id __47__HUSceneUtilities__hasSuggestedScenesForHome___block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277D2C900];
  v3 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(a2, "unsignedIntegerValue") != 0}];
  v4 = [v2 futureWithResult:v3];

  return v4;
}

@end