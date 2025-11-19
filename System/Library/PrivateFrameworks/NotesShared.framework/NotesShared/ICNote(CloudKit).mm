@interface ICNote(CloudKit)
@end

@implementation ICNote(CloudKit)

- (void)mergeCloudKitRecord:()CloudKit mergePolicy:account:approach:mergeableFieldState:.cold.1(void *a1, void *a2, NSObject *a3)
{
  v15 = *MEMORY[0x277D85DE8];
  v6 = [a1 defaultFolder];
  v7 = [v6 identifier];
  v8 = [a1 identifier];
  v9 = [a2 recordID];
  v10 = [v9 ic_loggingDescription];
  v12 = 138412802;
  v13 = v7;
  OUTLINED_FUNCTION_5_3();
  v14 = v11;
  _os_log_debug_impl(&dword_214D51000, a3, OS_LOG_TYPE_DEBUG, "Setting default folder %@ in account %@ for shared note with no folder: %@", &v12, 0x20u);
}

- (void)mergeTextDataFromRecord:()CloudKit mergePolicy:mergeableFieldState:.cold.1(void *a1)
{
  v1 = [a1 ic_loggingIdentifier];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

- (void)mergeTextDataFromRecord:()CloudKit mergePolicy:mergeableFieldState:.cold.2(void *a1)
{
  [a1 mergeableString];
  objc_claimAutoreleasedReturnValue();
  v2 = [OUTLINED_FUNCTION_4() identifier];
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);
}

- (void)mergeTextDataFromRecord:()CloudKit mergePolicy:mergeableFieldState:.cold.3(void *a1)
{
  v1 = [a1 mergeableString];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

- (void)mergeTextDataFromRecord:()CloudKit mergePolicy:mergeableFieldState:.cold.4(void *a1)
{
  v1 = [a1 mergeableString];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

- (void)mergeTextDataFromRecord:()CloudKit mergePolicy:mergeableFieldState:.cold.5(void *a1)
{
  v1 = [a1 mergeableString];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

- (void)mergeTextDataFromRecord:()CloudKit mergePolicy:mergeableFieldState:.cold.6(void *a1)
{
  [a1 mergeableString];
  objc_claimAutoreleasedReturnValue();
  v2 = [OUTLINED_FUNCTION_4() identifier];
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);
}

- (void)writeCurrentTimestampToMergeableFieldStateIfNecessary:()CloudKit .cold.1(void *a1)
{
  v1 = [a1 ic_loggingIdentifier];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

- (void)folderReferenceFromRecord:()CloudKit .cold.1(void *a1)
{
  v1 = [a1 shortLoggingDescription];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);
}

- (void)folderReferenceFromRecord:()CloudKit .cold.2(void *a1)
{
  v1 = [a1 shortLoggingDescription];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);
}

- (void)mergeFoldersFromRecord:()CloudKit account:.cold.1(void *a1, void *a2, NSObject *a3)
{
  v20 = *MEMORY[0x277D85DE8];
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  v8 = [a1 recordID];
  v9 = [v8 recordName];
  v10 = [a2 shortLoggingDescription];
  v11 = objc_opt_class();
  v12 = NSStringFromClass(v11);
  v15 = 138413058;
  v16 = v7;
  OUTLINED_FUNCTION_5_3();
  v17 = v10;
  v18 = v13;
  v19 = v14;
  _os_log_debug_impl(&dword_214D51000, a3, OS_LOG_TYPE_DEBUG, "Trying to set a %@ (%@) for %@, but we couldn't find the %@. Creating a temporary one.", &v15, 0x2Au);
}

- (void)mergeFoldersFromRecord:()CloudKit account:.cold.2(void *a1)
{
  v1 = [a1 shortLoggingDescription];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

- (void)mergeFoldersFromRecord:()CloudKit account:.cold.3(void *a1)
{
  [a1 shortLoggingDescription];
  objc_claimAutoreleasedReturnValue();
  v2 = [OUTLINED_FUNCTION_4() shortLoggingDescription];
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0x16u);
}

- (void)addNoteBodyToRecord:()CloudKit forApproach:mergeableFieldState:.cold.1(void *a1)
{
  v1 = [a1 ic_loggingIdentifier];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);
}

- (void)addNoteBodyToRecord:()CloudKit forApproach:mergeableFieldState:.cold.2(void *a1)
{
  [a1 ic_loggingIdentifier];
  objc_claimAutoreleasedReturnValue();
  [OUTLINED_FUNCTION_4() length];
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

- (void)makeUserSpecificCloudKitRecordForApproach:()CloudKit .cold.1(void *a1)
{
  v1 = [a1 shortLoggingDescription];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);
}

- (void)makeUserSpecificCloudKitRecordForApproach:()CloudKit .cold.2(void *a1, void *a2)
{
  [a1 isSystemPaper];
  v3 = [a2 ic_loggingIdentifier];
  OUTLINED_FUNCTION_4_6();
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v4, v5, v6, v7, v8, 0x12u);
}

- (void)mergeDataFromUserSpecificRecord:()CloudKit accountID:.cold.1(void *a1)
{
  [a1 isSystemPaper];
  v2 = [a1 ic_loggingIdentifier];
  OUTLINED_FUNCTION_4_6();
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0x12u);
}

- (void)mergePolicyForRecord:()CloudKit .cold.1(void *a1)
{
  v1 = [a1 identifier];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);
}

@end