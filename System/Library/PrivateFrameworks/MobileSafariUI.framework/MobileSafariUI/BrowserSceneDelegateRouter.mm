@interface BrowserSceneDelegateRouter
- (void)scene:(id)scene willConnectToSession:(id)session options:(id)options;
@end

@implementation BrowserSceneDelegateRouter

- (void)scene:(id)scene willConnectToSession:(id)session options:(id)options
{
  sceneCopy = scene;
  sessionCopy = session;
  optionsCopy = options;
  objc_initWeak(&location, sceneCopy);
  objc_initWeak(&from, sessionCopy);
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __65__BrowserSceneDelegateRouter_scene_willConnectToSession_options___block_invoke;
  aBlock[3] = &unk_2781DC658;
  objc_copyWeak(&v14, &location);
  objc_copyWeak(&v15, &from);
  v10 = optionsCopy;
  v13 = v10;
  v11 = _Block_copy(aBlock);
  v11[2]();

  objc_destroyWeak(&v15);
  objc_destroyWeak(&v14);
  objc_destroyWeak(&from);
  objc_destroyWeak(&location);
}

void __65__BrowserSceneDelegateRouter_scene_willConnectToSession_options___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained && v2)
  {
    v3 = +[Application sharedApplication];
    v4 = [v3 browserWindowController];
    v5 = [v2 persistentIdentifier];
    v6 = [v4 windowForSceneID:v5 options:*(a1 + 32)];

    [WeakRetained setDelegate:v6];
    [v6 scene:WeakRetained willConnectToSession:v2 options:*(a1 + 32)];
    v7 = +[Application sharedApplication];
    [v7 startCommandLineTest];
  }
}

@end