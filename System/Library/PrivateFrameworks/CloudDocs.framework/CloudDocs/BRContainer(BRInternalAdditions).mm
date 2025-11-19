@interface BRContainer(BRInternalAdditions)
+ (void)postContainerListUpdateNotification;
@end

@implementation BRContainer(BRInternalAdditions)

- (void)accessDataRepresentationInBlock:()BRInternalAdditions .cold.1()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6(&dword_1AE2A9000, v0, v1, "[DEBUG] recalculating purgeable data for %@%@");
  v2 = *MEMORY[0x1E69E9840];
}

+ (void)versionOfBundle:()BRInternalAdditions changedFromVersion:.cold.1()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(&dword_1AE2A9000, v0, 0x90u, "[ERROR] unable to retrieve properties without a bundle%@", v2, 0xCu);
  v1 = *MEMORY[0x1E69E9840];
}

+ (void)postContainerListUpdateNotification
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_4(&dword_1AE2A9000, v0, v1, "[DEBUG] broadcasting to framework clients the container list did update notification%@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

+ (void)postContainerStatusChangeNotificationWithID:()BRInternalAdditions key:value:.cold.1(uint64_t *a1)
{
  v9 = *MEMORY[0x1E69E9840];
  *a1 = brc_bread_crumbs("+[BRContainer(BRInternalAdditions) postContainerStatusChangeNotificationWithID:key:value:]", 1849);
  v2 = brc_default_log(0, 0);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
  {
    OUTLINED_FUNCTION_4_4();
    _os_log_fault_impl(v4, v5, v6, v7, v8, 0xCu);
  }

  v3 = *MEMORY[0x1E69E9840];
}

- (void)_updateMetadataOnDiskWithProperties:()BRInternalAdditions .cold.1()
{
  v13 = *MEMORY[0x1E69E9840];
  brc_bread_crumbs("[BRContainer(BRInternalAdditions) _updateMetadataOnDiskWithProperties:]", 1875);
  objc_claimAutoreleasedReturnValue();
  v2 = OUTLINED_FUNCTION_6_0();
  v4 = brc_default_log(v2, v3);
  if (OUTLINED_FUNCTION_5_0(v4))
  {
    OUTLINED_FUNCTION_3_1();
    OUTLINED_FUNCTION_10(&dword_1AE2A9000, v6, v7, "[CRIT] Assertion failed: !_mangledID.isCloudDocsMangledID%@", v8, v9, v10, v11, v12);
  }

  v5 = *MEMORY[0x1E69E9840];
}

- (void)updateMetadataWithExtractorProperties:()BRInternalAdditions iconPaths:bundleID:.cold.1()
{
  v13 = *MEMORY[0x1E69E9840];
  brc_bread_crumbs("[BRContainer(BRInternalAdditions) updateMetadataWithExtractorProperties:iconPaths:bundleID:]", 1893);
  objc_claimAutoreleasedReturnValue();
  v2 = OUTLINED_FUNCTION_6_0();
  v4 = brc_default_log(v2, v3);
  if (OUTLINED_FUNCTION_5_0(v4))
  {
    OUTLINED_FUNCTION_3_1();
    OUTLINED_FUNCTION_10(&dword_1AE2A9000, v6, v7, "[CRIT] Assertion failed: updatedProperties%@", v8, v9, v10, v11, v12);
  }

  v5 = *MEMORY[0x1E69E9840];
}

- (void)updateMetadataWithExtractorProperties:()BRInternalAdditions iconPaths:bundleID:.cold.2()
{
  v13 = *MEMORY[0x1E69E9840];
  brc_bread_crumbs("[BRContainer(BRInternalAdditions) updateMetadataWithExtractorProperties:iconPaths:bundleID:]", 1894);
  objc_claimAutoreleasedReturnValue();
  v2 = OUTLINED_FUNCTION_6_0();
  v4 = brc_default_log(v2, v3);
  if (OUTLINED_FUNCTION_5_0(v4))
  {
    OUTLINED_FUNCTION_3_1();
    OUTLINED_FUNCTION_10(&dword_1AE2A9000, v6, v7, "[CRIT] Assertion failed: bundleID%@", v8, v9, v10, v11, v12);
  }

  v5 = *MEMORY[0x1E69E9840];
}

- (void)updateMetadataWithExtractorProperties:()BRInternalAdditions iconPaths:bundleID:.cold.3()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  _os_log_fault_impl(&dword_1AE2A9000, v0, OS_LOG_TYPE_FAULT, "[CRIT] Assertion failed: ![bundleID isEqualToString:BRDaemonBundleID]%@", v2, 0xCu);
  v1 = *MEMORY[0x1E69E9840];
}

- (void)updateMetadataWithExtractorProperties:()BRInternalAdditions iconPaths:bundleID:.cold.4()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  _os_log_fault_impl(&dword_1AE2A9000, v0, OS_LOG_TYPE_FAULT, "[CRIT] Assertion failed: (!isEqual && !isEqualExceptVersionNumber) || (isEqual != isEqualExceptVersionNumber)%@", v2, 0xCu);
  v1 = *MEMORY[0x1E69E9840];
}

- (void)updateMetadataWithExtractorProperties:()BRInternalAdditions iconPaths:bundleID:.cold.5(uint64_t a1)
{
  OUTLINED_FUNCTION_14(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_0_3();
  OUTLINED_FUNCTION_6(&dword_1AE2A9000, v1, v2, "[DEBUG] metadata for container %@ are equal except version number but icons are different%@");
  v3 = *MEMORY[0x1E69E9840];
}

- (void)updateMetadataWithExtractorProperties:()BRInternalAdditions iconPaths:bundleID:.cold.6(uint64_t a1)
{
  OUTLINED_FUNCTION_14(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_0_3();
  OUTLINED_FUNCTION_6(&dword_1AE2A9000, v1, v2, "[DEBUG] metadata for container %@ are equal except version number; perform local update only%@");
  v3 = *MEMORY[0x1E69E9840];
}

- (void)updateMetadataWithExtractorProperties:()BRInternalAdditions iconPaths:bundleID:.cold.7(uint64_t a1)
{
  OUTLINED_FUNCTION_14(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_0_3();
  OUTLINED_FUNCTION_6(&dword_1AE2A9000, v1, v2, "[DEBUG] metadata for container %@ are already up-to-date%@");
  v3 = *MEMORY[0x1E69E9840];
}

- (void)updateMetadataWithExtractorProperties:()BRInternalAdditions iconPaths:bundleID:.cold.8()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6(&dword_1AE2A9000, v0, v1, "[DEBUG] removed temporary path at '%@'%@");
  v2 = *MEMORY[0x1E69E9840];
}

- (void)updateMetadataWithRecordData:()BRInternalAdditions iconPaths:.cold.1()
{
  v13 = *MEMORY[0x1E69E9840];
  brc_bread_crumbs("[BRContainer(BRInternalAdditions) updateMetadataWithRecordData:iconPaths:]", 2051);
  objc_claimAutoreleasedReturnValue();
  v2 = OUTLINED_FUNCTION_6_0();
  v4 = brc_default_log(v2, v3);
  if (OUTLINED_FUNCTION_5_0(v4))
  {
    OUTLINED_FUNCTION_3_1();
    OUTLINED_FUNCTION_10(&dword_1AE2A9000, v6, v7, "[CRIT] Assertion failed: recordData%@", v8, v9, v10, v11, v12);
  }

  v5 = *MEMORY[0x1E69E9840];
}

- (void)updateMetadataWithRecordData:()BRInternalAdditions iconPaths:.cold.2()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_4(&dword_1AE2A9000, v0, v1, "[DEBUG] stripped plist from potential icon names%@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

+ (void)_generateiOSIconsForMangledID:()BRInternalAdditions usingBundle:generatedIcons:.cold.1(uint64_t *a1)
{
  v5 = *MEMORY[0x1E69E9840];
  v1 = *a1;
  OUTLINED_FUNCTION_0_3();
  OUTLINED_FUNCTION_6(&dword_1AE2A9000, v2, v3, "[DEBUG] ┏%llx generate iOS icons%@");
  v4 = *MEMORY[0x1E69E9840];
}

+ (void)_generateiOSIconsForMangledID:()BRInternalAdditions usingBundle:generatedIcons:.cold.2()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6(&dword_1AE2A9000, v0, v1, "[DEBUG] unable to retrieve app icon %@%@");
  v2 = *MEMORY[0x1E69E9840];
}

+ (void)_generateiOSIconsForMangledID:()BRInternalAdditions usingBundle:generatedIcons:.cold.3()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6(&dword_1AE2A9000, v0, v1, "[DEBUG] icon generated %@%@");
  v2 = *MEMORY[0x1E69E9840];
}

+ (void)_generateiOSIconsForMangledID:()BRInternalAdditions usingBundle:generatedIcons:.cold.4()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x1E69E9840];
}

+ (void)_generateiOSIconsForMangledID:()BRInternalAdditions usingBundle:generatedIcons:.cold.5()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_4(&dword_1AE2A9000, v0, v1, "[DEBUG] unable to find filenames that match the icons names.%@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

+ (void)_generateiOSIconsForMangledID:()BRInternalAdditions usingBundle:generatedIcons:.cold.6()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_4(&dword_1AE2A9000, v0, v1, "[DEBUG] unable to retrieve app icon%@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)containsExcludedDocumentsOnTheFSWithExcludedButPreservedFilename:()BRInternalAdditions excludedButPreservedExtensions:andStampUploadedAppWithXattr:.cold.1()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6(&dword_1AE2A9000, v0, v1, "[DEBUG] found an excluded file: %@%@");
  v2 = *MEMORY[0x1E69E9840];
}

@end