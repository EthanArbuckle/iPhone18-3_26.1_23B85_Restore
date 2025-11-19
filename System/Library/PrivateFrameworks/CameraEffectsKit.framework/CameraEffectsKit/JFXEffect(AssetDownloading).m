@interface JFXEffect(AssetDownloading)
@end

@implementation JFXEffect(AssetDownloading)

- (void)registerMotionDocumentWithinAssets:()AssetDownloading .cold.1()
{
  OUTLINED_FUNCTION_4_1();
  v2 = NSStringFromJFXEffectType([v1 type]);
  v3 = [v0 displayName];
  OUTLINED_FUNCTION_2_3();
  OUTLINED_FUNCTION_0_9();
  _os_log_debug_impl(v4, v5, v6, v7, v8, 0x20u);
}

- (void)registerMotionDocumentWithinAssets:()AssetDownloading .cold.2()
{
  OUTLINED_FUNCTION_5_0();
  v2 = NSStringFromJFXEffectType([v1 type]);
  v3 = [v0 displayName];
  OUTLINED_FUNCTION_0_4();
  OUTLINED_FUNCTION_0_9();
  _os_log_debug_impl(v4, v5, v6, v7, v8, 0x16u);
}

- (void)requestPreviewingAssetsWithPriority:()AssetDownloading onlyThumbnailAssetWhenAvailable:progressHandler:completionHandler:.cold.1(void *a1)
{
  v6 = [a1 displayName];
  OUTLINED_FUNCTION_0_9();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
}

@end