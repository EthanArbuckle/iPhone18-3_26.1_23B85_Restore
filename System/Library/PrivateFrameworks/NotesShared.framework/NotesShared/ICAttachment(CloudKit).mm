@interface ICAttachment(CloudKit)
@end

@implementation ICAttachment(CloudKit)

- (void)mergeCloudKitRecord:()CloudKit accountID:approach:mergeableFieldState:newAttachment:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(&dword_214D51000, v0, OS_LOG_TYPE_ERROR, "Error creating unarchiver: %@", v1, 0xCu);
}

- (void)makeCloudKitRecordForApproach:()CloudKit mergeableFieldState:.cold.1(void *a1)
{
  v1 = [a1 localizedDescription];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

+ (void)noteFromAttachmentUserSpecificRecord:()CloudKit accountID:context:.cold.1()
{
  OUTLINED_FUNCTION_10();
  v1 = [v0 recordID];
  v2 = [v1 recordName];
  OUTLINED_FUNCTION_0_5();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);
}

+ (void)addPreviewImages:()CloudKit toRecord:.cold.1(uint8_t *a1, void *a2, void *a3, NSObject *a4)
{
  v7 = [a2 identifier];
  *a1 = 138412290;
  *a3 = v7;
  _os_log_error_impl(&dword_214D51000, a4, OS_LOG_TYPE_ERROR, "Error creating asset for preview image: %@", a1, 0xCu);
}

- (void)processFallbackAsset:()CloudKit fallbackAssetType:.cold.1(void *a1)
{
  v1 = [a1 shortLoggingDescription];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

- (void)processFallbackAsset:()CloudKit fallbackAssetType:.cold.2()
{
  OUTLINED_FUNCTION_10();
  v1 = [v0 shortLoggingDescription];
  OUTLINED_FUNCTION_0_5();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

- (void)processFallbackAsset:()CloudKit fallbackAssetType:.cold.3()
{
  OUTLINED_FUNCTION_10();
  v1 = [v0 shortLoggingDescription];
  OUTLINED_FUNCTION_0_5();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

- (void)processFallbackAsset:()CloudKit fallbackAssetType:.cold.4()
{
  OUTLINED_FUNCTION_10();
  v1 = [v0 shortLoggingDescription];
  OUTLINED_FUNCTION_0_5();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

- (void)processFallbackAsset:()CloudKit fallbackAssetType:.cold.5(void *a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = [a1 shortLoggingDescription];
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(&dword_214D51000, a2, OS_LOG_TYPE_DEBUG, "Processed fallback asset — committing… {attachment: %@}", v4, 0xCu);
}

- (void)processFallbackAsset:()CloudKit fallbackAssetType:.cold.6(void *a1)
{
  v1 = [a1 shortLoggingDescription];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

- (void)mergePaperBundleFromRecord:()CloudKit .cold.1()
{
  OUTLINED_FUNCTION_10();
  v1 = [v0 ic_loggingIdentifier];
  OUTLINED_FUNCTION_0_5();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

@end