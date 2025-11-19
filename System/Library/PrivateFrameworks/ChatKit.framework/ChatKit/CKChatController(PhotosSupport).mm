@interface CKChatController(PhotosSupport)
@end

@implementation CKChatController(PhotosSupport)

- (void)_presentGridForPendingMomentShareChatItem:()PhotosSupport .cold.1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)_gridViewNavigationControllerForMomentShareURL:()PhotosSupport chatItem:tapbackManager:completionHandler:.cold.1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6_2();
  _os_log_debug_impl(v0, v1, OS_LOG_TYPE_DEBUG, v2, v3, 0x16u);
}

- (void)_previewViewControllerForAssetReference:()PhotosSupport dataSource:previewDelegate:previewMode:.cold.1()
{
  objc_opt_class();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)_presentPreviewViewControllerFromPhotosViewController:()PhotosSupport assetReference:.cold.1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6_2();
  _os_log_error_impl(v0, v1, OS_LOG_TYPE_ERROR, v2, v3, 0x16u);
}

- (void)retractScheduledChatItem:()PhotosSupport .cold.1()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)retractScheduledChatItems:()PhotosSupport fromAggregateChatItem:.cold.1()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)retractScheduledChatItems:()PhotosSupport fromAggregateChatItem:.cold.2(uint8_t *buf, _BYTE *a2, os_log_t log)
{
  *buf = 0;
  *a2 = 0;
  _os_log_error_impl(&dword_19020E000, log, OS_LOG_TYPE_ERROR, "retractScheduledChatItems: can't retract chat items unless their IMChatItems are all of type IMMessagePartChatItem", buf, 2u);
}

- (void)retractScheduledChatItems:()PhotosSupport fromAggregateChatItem:.cold.3()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)_assetReferenceForDisplayedGridChatItem:()PhotosSupport selectionSnapshot:.cold.1()
{
  objc_opt_class();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)_assetReferenceForDisplayedGridChatItem:()PhotosSupport selectionSnapshot:.cold.2(void *a1)
{
  v1 = [a1 transferGUID];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_3();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

- (void)actionManager:()PhotosSupport quickLookChatItem:.cold.1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)actionManager:()PhotosSupport tapbackChatItem:.cold.1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)selectAllForActionManager:()PhotosSupport .cold.1()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

@end