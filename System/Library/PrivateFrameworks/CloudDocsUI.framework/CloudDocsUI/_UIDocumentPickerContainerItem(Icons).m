@interface _UIDocumentPickerContainerItem(Icons)
@end

@implementation _UIDocumentPickerContainerItem(Icons)

+ (void)_blockingThumbnailForItem:()Icons documentProxy:withSize:scale:wantsBorder:generatedThumbnail:.cold.1(void *a1)
{
  v1 = [a1 lastPathComponent];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v2, v3, OS_LOG_TYPE_DEBUG, v4, v5, 0x16u);
}

+ (void)_blockingFolderIconForURL:()Icons container:size:scale:.cold.1(double a1, double a2)
{
  v2 = NSStringFromCGSize(*&a1);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1();
  _os_log_fault_impl(v3, v4, OS_LOG_TYPE_FAULT, v5, v6, 0x16u);
}

@end