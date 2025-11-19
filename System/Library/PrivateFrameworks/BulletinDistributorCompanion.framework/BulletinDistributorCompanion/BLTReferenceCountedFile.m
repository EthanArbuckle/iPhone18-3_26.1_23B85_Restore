@interface BLTReferenceCountedFile
+ (BOOL)release:(id)a3;
+ (BOOL)retain:(id)a3;
+ (BOOL)retain:(id)a3 fileData:(id)a4;
+ (BOOL)writeRetainCount:(int64_t)a3 oldMetadata:(id)a4 to:(id)a5;
+ (id)metadataForFile:(id)a3;
@end

@implementation BLTReferenceCountedFile

+ (BOOL)retain:(id)a3 fileData:(id)a4
{
  v6 = a3;
  v7 = a4;
  os_unfair_lock_lock(&__read_write_lock);
  v8 = [MEMORY[0x277CCAA00] defaultManager];
  v9 = [v6 relativePath];
  v10 = [v8 fileExistsAtPath:v9];

  if (!v10)
  {
    if ([v7 writeToURL:v6 atomically:1])
    {
      v12 = [v6 blt_metadataURL];
      v13 = [a1 writeRetainCount:1 oldMetadata:MEMORY[0x277CBEC10] to:v12];

      if (v13)
      {
        os_unfair_lock_unlock(&__read_write_lock);
        v11 = 1;
        goto LABEL_15;
      }

      v15 = [MEMORY[0x277CCAA00] defaultManager];
      v20 = 0;
      v16 = [v15 removeItemAtURL:v6 error:&v20];
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

  v11 = [a1 retain:v6];
  os_unfair_lock_unlock(&__read_write_lock);
LABEL_15:

  return v11;
}

+ (BOOL)retain:(id)a3
{
  v4 = a3;
  os_unfair_lock_assert_owner(&__read_write_lock);
  v5 = [a1 metadataForFile:v4];
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
  v10 = [v4 blt_metadataURL];
  v11 = [a1 writeRetainCount:v9 oldMetadata:v6 to:v10];

LABEL_10:
  return v11;
}

+ (id)metadataForFile:(id)a3
{
  v3 = a3;
  os_unfair_lock_assert_owner(&__read_write_lock);
  v4 = [v3 blt_metadataURL];

  v5 = [MEMORY[0x277CBEAC0] dictionaryWithContentsOfURL:v4];
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

+ (BOOL)writeRetainCount:(int64_t)a3 oldMetadata:(id)a4 to:(id)a5
{
  v7 = a5;
  v8 = a4;
  os_unfair_lock_assert_owner(&__read_write_lock);
  v9 = [v8 mutableCopy];

  v10 = [MEMORY[0x277CCABB0] numberWithInteger:a3];
  [v9 setObject:v10 forKeyedSubscript:@"refCount"];

  v11 = [v9 writeToURL:v7 atomically:1];
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

+ (BOOL)release:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&__read_write_lock);
  v5 = [MEMORY[0x277CCAA00] defaultManager];
  v6 = [v4 relativePath];
  v7 = [v5 fileExistsAtPath:v6];

  if (v7)
  {
    v8 = [a1 metadataForFile:v4];
    v9 = [v8 objectForKeyedSubscript:@"refCount"];
    v10 = v9;
    if (v8 && v9)
    {
      v11 = [v9 intValue];
      if (v11 < 2)
      {
        v18 = [MEMORY[0x277CCAA00] defaultManager];
        v28 = 0;
        v15 = [v18 removeItemAtURL:v4 error:&v28];
        v19 = v28;

        if ((v15 & 1) == 0)
        {
          v20 = blt_general_log();
          if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
          {
            +[BLTReferenceCountedFile release:];
          }
        }

        v21 = [MEMORY[0x277CCAA00] defaultManager];
        v22 = [v4 blt_metadataURL];
        v27 = v19;
        v23 = [v21 removeItemAtURL:v22 error:&v27];
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

      v12 = (v11 - 1);
      v13 = [v4 blt_metadataURL];
      v14 = [a1 writeRetainCount:v12 oldMetadata:v8 to:v13];

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