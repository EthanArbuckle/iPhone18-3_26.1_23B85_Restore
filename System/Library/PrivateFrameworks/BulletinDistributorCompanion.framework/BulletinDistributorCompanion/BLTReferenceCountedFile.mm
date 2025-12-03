@interface BLTReferenceCountedFile
+ (BOOL)release:(id)release;
+ (BOOL)retain:(id)retain;
+ (BOOL)retain:(id)retain fileData:(id)data;
+ (BOOL)writeRetainCount:(int64_t)count oldMetadata:(id)metadata to:(id)to;
+ (id)metadataForFile:(id)file;
@end

@implementation BLTReferenceCountedFile

+ (BOOL)retain:(id)retain fileData:(id)data
{
  retainCopy = retain;
  dataCopy = data;
  os_unfair_lock_lock(&__read_write_lock);
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  relativePath = [retainCopy relativePath];
  v10 = [defaultManager fileExistsAtPath:relativePath];

  if (!v10)
  {
    if ([dataCopy writeToURL:retainCopy atomically:1])
    {
      blt_metadataURL = [retainCopy blt_metadataURL];
      v13 = [self writeRetainCount:1 oldMetadata:MEMORY[0x277CBEC10] to:blt_metadataURL];

      if (v13)
      {
        os_unfair_lock_unlock(&__read_write_lock);
        v11 = 1;
        goto LABEL_15;
      }

      defaultManager2 = [MEMORY[0x277CCAA00] defaultManager];
      v20 = 0;
      v16 = [defaultManager2 removeItemAtURL:retainCopy error:&v20];
      v17 = v20;

      if ((v16 & 1) == 0)
      {
        v18 = blt_general_log();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          +[BLTReferenceCountedFile retain:fileData:];
        }
      }

      os_unfair_lock_unlock(&__read_write_lock);
    }

    else
    {
      v14 = blt_general_log();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        +[BLTReferenceCountedFile retain:fileData:];
      }

      os_unfair_lock_unlock(&__read_write_lock);
    }

    v11 = 0;
    goto LABEL_15;
  }

  v11 = [self retain:retainCopy];
  os_unfair_lock_unlock(&__read_write_lock);
LABEL_15:

  return v11;
}

+ (BOOL)retain:(id)retain
{
  retainCopy = retain;
  os_unfair_lock_assert_owner(&__read_write_lock);
  v5 = [self metadataForFile:retainCopy];
  v6 = v5;
  if (!v5)
  {
    v8 = blt_general_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      +[BLTReferenceCountedFile retain:];
    }

    goto LABEL_9;
  }

  v7 = [v5 objectForKeyedSubscript:@"refCount"];
  v8 = v7;
  if (!v7)
  {
    v12 = blt_general_log();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      +[BLTReferenceCountedFile retain:];
    }

LABEL_9:
    v11 = 0;
    goto LABEL_10;
  }

  v9 = ([v7 intValue]+ 1);
  blt_metadataURL = [retainCopy blt_metadataURL];
  v11 = [self writeRetainCount:v9 oldMetadata:v6 to:blt_metadataURL];

LABEL_10:
  return v11;
}

+ (id)metadataForFile:(id)file
{
  fileCopy = file;
  os_unfair_lock_assert_owner(&__read_write_lock);
  blt_metadataURL = [fileCopy blt_metadataURL];

  v5 = [MEMORY[0x277CBEAC0] dictionaryWithContentsOfURL:blt_metadataURL];
  if (!v5)
  {
    v6 = blt_general_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      +[BLTReferenceCountedFile retain:];
    }
  }

  return v5;
}

+ (BOOL)writeRetainCount:(int64_t)count oldMetadata:(id)metadata to:(id)to
{
  toCopy = to;
  metadataCopy = metadata;
  os_unfair_lock_assert_owner(&__read_write_lock);
  v9 = [metadataCopy mutableCopy];

  v10 = [MEMORY[0x277CCABB0] numberWithInteger:count];
  [v9 setObject:v10 forKeyedSubscript:@"refCount"];

  v11 = [v9 writeToURL:toCopy atomically:1];
  if ((v11 & 1) == 0)
  {
    v12 = blt_general_log();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      +[BLTReferenceCountedFile writeRetainCount:oldMetadata:to:];
    }
  }

  return v11;
}

+ (BOOL)release:(id)release
{
  releaseCopy = release;
  os_unfair_lock_lock(&__read_write_lock);
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  relativePath = [releaseCopy relativePath];
  v7 = [defaultManager fileExistsAtPath:relativePath];

  if (v7)
  {
    v8 = [self metadataForFile:releaseCopy];
    v9 = [v8 objectForKeyedSubscript:@"refCount"];
    v10 = v9;
    if (v8 && v9)
    {
      intValue = [v9 intValue];
      if (intValue < 2)
      {
        defaultManager2 = [MEMORY[0x277CCAA00] defaultManager];
        v28 = 0;
        v15 = [defaultManager2 removeItemAtURL:releaseCopy error:&v28];
        v19 = v28;

        if ((v15 & 1) == 0)
        {
          v20 = blt_general_log();
          if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
          {
            +[BLTReferenceCountedFile release:];
          }
        }

        defaultManager3 = [MEMORY[0x277CCAA00] defaultManager];
        blt_metadataURL = [releaseCopy blt_metadataURL];
        v27 = v19;
        v23 = [defaultManager3 removeItemAtURL:blt_metadataURL error:&v27];
        v24 = v27;

        if ((v23 & 1) == 0)
        {
          v25 = blt_general_log();
          if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
          {
            +[BLTReferenceCountedFile release:];
          }

          v15 = 0;
        }

        os_unfair_lock_unlock(&__read_write_lock);

        goto LABEL_22;
      }

      v12 = (intValue - 1);
      blt_metadataURL2 = [releaseCopy blt_metadataURL];
      v14 = [self writeRetainCount:v12 oldMetadata:v8 to:blt_metadataURL2];

      if (v14)
      {
        os_unfair_lock_unlock(&__read_write_lock);
        v15 = 1;
LABEL_22:

        goto LABEL_23;
      }

      v17 = blt_general_log();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        +[BLTReferenceCountedFile release:];
      }
    }

    else
    {
      v17 = blt_general_log();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        +[BLTReferenceCountedFile release:];
      }
    }

    os_unfair_lock_unlock(&__read_write_lock);
    v15 = 0;
    goto LABEL_22;
  }

  v16 = blt_general_log();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
  {
    +[BLTReferenceCountedFile release:];
  }

  os_unfair_lock_unlock(&__read_write_lock);
  v15 = 0;
LABEL_23:

  return v15;
}

+ (void)retain:fileData:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_2(&dword_241FB3000, v0, v1, "BLTReferenceCountedFile: Error saving data to: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

+ (void)retain:fileData:.cold.2()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_2(&dword_241FB3000, v0, v1, "BLTReferenceCountedFile: Succeeded saving data to: %@ but failed to write metadata and then failed to remove file - things are going badly", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

+ (void)retain:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_2(&dword_241FB3000, v0, v1, "BLTReferenceCountedFile: Error reading refCount from: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

+ (void)retain:.cold.2()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_2(&dword_241FB3000, v0, v1, "BLTReferenceCountedFile: Error reading file data from: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

+ (void)writeRetainCount:oldMetadata:to:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_3();
  OUTLINED_FUNCTION_0(&dword_241FB3000, v0, v1, "BLTReferenceCountedFile: Failed to write url: %@ fileInfo: %@");
  v2 = *MEMORY[0x277D85DE8];
}

+ (void)release:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_2(&dword_241FB3000, v0, v1, "BLTReferenceCountedFile: No file at url: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

+ (void)release:.cold.2()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_2(&dword_241FB3000, v0, v1, "BLTReferenceCountedFile: No metadata for file at url: %@ - this is bad", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

+ (void)release:.cold.3()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_3();
  OUTLINED_FUNCTION_0(&dword_241FB3000, v0, v1, "BLTReferenceCountedFile: Unable to remove file: %@ error: %@");
  v2 = *MEMORY[0x277D85DE8];
}

+ (void)release:.cold.5()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_2(&dword_241FB3000, v0, v1, "BLTReferenceCountedFile: Failed to write updated retain count: %@ - this is bad", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

@end