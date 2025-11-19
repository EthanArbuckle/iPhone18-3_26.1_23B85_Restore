@interface NSFileManager(protobuf)
- (id)blt_contactImagesDirectory;
- (void)blt_contactImagesDirectory;
@end

@implementation NSFileManager(protobuf)

- (id)blt_contactImagesDirectory
{
  v0 = BLTFileURLInPairingPath(@"ContactImages");
  if (v0)
  {
    v1 = [MEMORY[0x277CCAA00] defaultManager];
    v7 = 0;
    v2 = [v1 createDirectoryAtURL:v0 withIntermediateDirectories:1 attributes:0 error:&v7];
    v3 = v7;

    if ((v2 & 1) == 0)
    {
      v4 = blt_general_log();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        [NSFileManager(protobuf) blt_contactImagesDirectory];
      }
    }

    v5 = v0;
  }

  return v0;
}

- (void)blt_contactImagesDirectory
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_3();
  OUTLINED_FUNCTION_0(&dword_241FB3000, v0, v1, "Error %@ when creating contact icons directory: %@");
  v2 = *MEMORY[0x277D85DE8];
}

@end