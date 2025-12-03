@interface CKBalloonPluginManager(CKBrowserSelectionController)
- (void)regenerateCombinedStickersAppsIndexPaths;
@end

@implementation CKBalloonPluginManager(CKBrowserSelectionController)

- (void)isPluginSystemApp:()CKBrowserSelectionController .cold.1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = 138412802;
  v4 = a1;
  v5 = 2112;
  v6 = a2;
  v7 = 2112;
  v8 = @"YES";
  _os_log_error_impl(&dword_19020E000, log, OS_LOG_TYPE_ERROR, "Did not find plugin %@ for identifier %@ isAppExtension %@", &v3, 0x20u);
}

- (void)regenerateCombinedStickersAppsIndexPaths
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:self object:a2 file:@"CKBalloonPluginManager_SelectionController.m" lineNumber:666 description:@"Expected more plugin last"];
}

@end