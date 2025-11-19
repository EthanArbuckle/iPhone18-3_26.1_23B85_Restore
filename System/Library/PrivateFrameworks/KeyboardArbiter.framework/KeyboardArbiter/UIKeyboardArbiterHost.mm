@interface UIKeyboardArbiterHost
@end

@implementation UIKeyboardArbiterHost

void __33___UIKeyboardArbiterHost_dealloc__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) identifier];
  v1 = [getFBSceneManagerClass_0() sharedInstance];
  [v1 destroyScene:v2 withTransitionContext:0];
}

void __76___UIKeyboardArbiterHost_launchAdvisorWithOmniscientDelegate_sceneDelegate___block_invoke(uint64_t a1)
{
  if ([MEMORY[0x277D761A0] useSystemService])
  {
    v4 = objc_alloc_init(_UIKeyboardArbiterHost);
    v2 = [[_UIKeyboardArbiter alloc] initWithLink:v4];
    v3 = _MergedGlobals_3;
    _MergedGlobals_3 = v2;

    [_MergedGlobals_3 setOmniscientDelegate:*(a1 + 32)];
    [_MergedGlobals_3 setSceneDelegate:*(a1 + 40)];
    [_MergedGlobals_3 resume];
  }
}

void __75___UIKeyboardArbiterHost__createSceneWithIdentifier_initialClientSettings___block_invoke(uint64_t a1)
{
  v22 = 0;
  v23 = &v22;
  v24 = 0x2050000000;
  v2 = getFBDisplayManagerClass_softClass_0;
  v25 = getFBDisplayManagerClass_softClass_0;
  if (!getFBDisplayManagerClass_softClass_0)
  {
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __getFBDisplayManagerClass_block_invoke_0;
    v21[3] = &unk_2797F4CF8;
    v21[4] = &v22;
    __getFBDisplayManagerClass_block_invoke_0(v21);
    v2 = v23[3];
  }

  v3 = v2;
  _Block_object_dispose(&v22, 8);
  v4 = [v2 mainConfiguration];
  v5 = MEMORY[0x277D0AD50];
  v6 = +[(FBSSceneSpecification *)_UIKeyboardSceneSpecification];
  v7 = [v5 parametersForSpecification:v6];

  [v7 setClientSettings:*(a1 + 32)];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __75___UIKeyboardArbiterHost__createSceneWithIdentifier_initialClientSettings___block_invoke_2;
  v18[3] = &unk_2797F4DD0;
  v8 = v4;
  v19 = v8;
  v20 = *(a1 + 32);
  [v7 updateSettingsWithBlock:v18];
  v9 = [getFBSceneManagerClass_0() sharedInstance];
  v10 = *(a1 + 40);
  v11 = [getFBLocalSynchronousSceneClientProviderClass() sharedInstance];
  v12 = [v9 createSceneWithIdentifier:v10 parameters:v7 clientProvider:v11 transitionContext:0];

  v13 = [getFBLocalSynchronousSceneClientProviderClass() sharedInstance];
  v14 = [v13 fbsSceneForScene:v12];
  v15 = *(*(a1 + 56) + 8);
  v16 = *(v15 + 40);
  *(v15 + 40) = v14;

  [getFBSceneManagerClass_0() setKeyboardScene:v12];
  if (!*(*(*(a1 + 56) + 8) + 40))
  {
    v17 = [MEMORY[0x277CCA890] currentHandler];
    [v17 handleFailureInMethod:*(a1 + 64) object:*(a1 + 48) file:@"_UIKeyboardArbiterHost.m" lineNumber:192 description:@"Expected a scene but did not find one."];
  }
}

void __75___UIKeyboardArbiterHost__createSceneWithIdentifier_initialClientSettings___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v4 setDisplayConfiguration:v3];
  [*(a1 + 32) bounds];
  [v4 setFrame:?];
  [*(a1 + 40) preferredLevel];
  [v4 setLevel:?];
  [v4 setInterfaceOrientation:{objc_msgSend(*(a1 + 40), "preferredInterfaceOrientation")}];
  [v4 setForeground:1];
}

@end