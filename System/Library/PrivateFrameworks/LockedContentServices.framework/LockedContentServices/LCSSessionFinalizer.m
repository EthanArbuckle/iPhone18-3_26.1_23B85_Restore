@interface LCSSessionFinalizer
+ (BOOL)removeContentsOfExtensionDataContainerForBundleProvider:(id)a3;
+ (id)finalizeTemporarySessionAtURL:(id)a3 forBundleProvider:(id)a4;
@end

@implementation LCSSessionFinalizer

+ (id)finalizeTemporarySessionAtURL:(id)a3 forBundleProvider:(id)a4
{
  v49 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v7 = [MEMORY[0x277CCAA00] defaultManager];
  v42 = 0;
  v8 = [v7 contentsOfDirectoryAtURL:v5 includingPropertiesForKeys:MEMORY[0x277CBEBF8] options:0 error:&v42];
  v9 = v42;
  v10 = 0;
  if ([v8 count])
  {
    v11 = 0;
  }

  else
  {
    v11 = v9 == 0;
  }

  if (!v11)
  {
    v12 = [v5 pathComponents];
    if ([v12 count] < 2)
    {
      v10 = 0;
LABEL_43:

      goto LABEL_44;
    }

    v37 = [v12 objectAtIndex:{objc_msgSend(v12, "count") - 2}];
    v13 = [[LCSSessionURLBuilder alloc] initWithTypeIdentifier:v37];
    v14 = [(LCSSessionURLBuilder *)v13 finalizationStagingSessionURLForBundleProvider:v6 fromTemporaryURL:v5];
    v15 = v14;
    if (!v14)
    {
      v16 = LCSLogCommon();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        +[LCSSessionFinalizer finalizeTemporarySessionAtURL:forBundleProvider:];
      }

      v10 = 0;
      goto LABEL_42;
    }

    v16 = [v14 URLByDeletingLastPathComponent];
    v41 = 0;
    v17 = [v7 createDirectoryAtURL:v16 withIntermediateDirectories:1 attributes:0 error:&v41];
    v36 = v41;
    if ((v17 & 1) == 0)
    {
      v35 = LCSLogCommon();
      if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
      {
        +[LCSSessionFinalizer finalizeTemporarySessionAtURL:forBundleProvider:];
      }

      v10 = 0;
      goto LABEL_41;
    }

    v40 = 0;
    v18 = [v7 copyItemAtURL:v5 toURL:v15 error:&v40];
    v35 = v40;
    if ((v18 & 1) == 0)
    {
      v34 = LCSLogCommon();
      if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
      {
        +[LCSSessionFinalizer finalizeTemporarySessionAtURL:forBundleProvider:];
      }

      v10 = 0;
      goto LABEL_40;
    }

    v19 = [(LCSSessionURLBuilder *)v13 finalizedSessionURLForBundleProvider:v6 fromSessionURL:v15];
    v34 = v19;
    if (!v19)
    {
      v23 = LCSLogCommon();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        +[LCSSessionFinalizer finalizeTemporarySessionAtURL:forBundleProvider:];
      }

      v39 = 0;
      v33 = [v7 removeItemAtURL:v15 error:&v39];
      v24 = v39;
      if (v33)
      {
        v10 = 0;
LABEL_39:

LABEL_40:
LABEL_41:

LABEL_42:
        goto LABEL_43;
      }

      v32 = v24;
      v31 = LCSLogCommon();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
      {
        +[LCSSessionFinalizer finalizeTemporarySessionAtURL:forBundleProvider:];
      }

      v10 = 0;
LABEL_38:

      v24 = v32;
      goto LABEL_39;
    }

    [v19 URLByDeletingLastPathComponent];
    v32 = v38[1] = 0;
    v20 = [v7 createDirectoryAtURL:? withIntermediateDirectories:? attributes:? error:?];
    v31 = 0;
    if (v20)
    {
      v38[0] = 0;
      v21 = [v7 moveItemAtURL:v15 toURL:v34 error:v38];
      v30 = v38[0];
      v22 = LCSLogCommon();
      if (v21)
      {
        v29 = v22;
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
        {
          +[LCSSessionFinalizer finalizeTemporarySessionAtURL:forBundleProvider:];
        }

        v10 = v34;
        goto LABEL_37;
      }

      v25 = v22;
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        v28 = @"no error returned";
        *buf = 138412802;
        if (v30)
        {
          v28 = v30;
        }

        v44 = v15;
        v45 = 2112;
        v46 = v34;
        v47 = 2112;
        v48 = v28;
        _os_log_error_impl(&dword_256175000, v25, OS_LOG_TYPE_ERROR, "Failed moving from %@ to %@: %@", buf, 0x20u);
      }
    }

    else
    {
      v30 = LCSLogCommon();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
      {
        +[LCSSessionFinalizer finalizeTemporarySessionAtURL:forBundleProvider:];
      }
    }

    v10 = 0;
LABEL_37:

    goto LABEL_38;
  }

LABEL_44:

  v26 = *MEMORY[0x277D85DE8];

  return v10;
}

+ (BOOL)removeContentsOfExtensionDataContainerForBundleProvider:(id)a3
{
  v3 = a3;
  v4 = MEMORY[0x277D46FA0];
  v5 = [v3 bundleIdentifier];
  v6 = [v4 predicateMatchingBundleIdentifier:v5];

  v7 = [objc_alloc(MEMORY[0x277D47010]) initWithExplanation:@"LockedContentServices deleting contents of extension data container"];
  v8 = [objc_alloc(MEMORY[0x277D47020]) initWithPredicate:v6 context:v7];
  v17 = 0;
  v9 = [v8 acquireWithError:&v17];
  v10 = v17;
  if (v9)
  {
    v11 = [v3 bundleIdentifier];
    [v11 cStringUsingEncoding:4];
    v12 = container_delete_all_data_container_content_for_current_user();

    v13 = v12 == 1;
    if (v12 != 1)
    {
      v14 = LCSLogCommon();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        +[LCSSessionFinalizer removeContentsOfExtensionDataContainerForBundleProvider:];
      }
    }

    [v8 invalidate];
  }

  else
  {
    v15 = LCSLogCommon();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      [(LCSSessionFinalizer *)v3 removeContentsOfExtensionDataContainerForBundleProvider:v10, v15];
    }

    v13 = 0;
  }

  return v13;
}

+ (void)finalizeTemporarySessionAtURL:forBundleProvider:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_3(&dword_256175000, v0, v1, "Failed creating staging container directory %@:%@");
  v2 = *MEMORY[0x277D85DE8];
}

+ (void)finalizeTemporarySessionAtURL:forBundleProvider:.cold.2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

+ (void)finalizeTemporarySessionAtURL:forBundleProvider:.cold.3()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_3(&dword_256175000, v0, v1, "Failed creating finalized Library container directory %@:%@");
  v2 = *MEMORY[0x277D85DE8];
}

+ (void)finalizeTemporarySessionAtURL:forBundleProvider:.cold.4()
{
  v5 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2_1();
  v4 = v0;
  _os_log_debug_impl(&dword_256175000, v1, OS_LOG_TYPE_DEBUG, "Finalized %@ to %@", v3, 0x16u);
  v2 = *MEMORY[0x277D85DE8];
}

+ (void)finalizeTemporarySessionAtURL:forBundleProvider:.cold.6()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

+ (void)removeContentsOfExtensionDataContainerForBundleProvider:(NSObject *)a3 .cold.1(void *a1, uint64_t a2, NSObject *a3)
{
  v9 = *MEMORY[0x277D85DE8];
  v5 = [a1 bundleIdentifier];
  OUTLINED_FUNCTION_2_1();
  v8 = a2;
  _os_log_error_impl(&dword_256175000, a3, OS_LOG_TYPE_ERROR, "Unable to acquire termination assertion for %@: %@", v7, 0x16u);

  v6 = *MEMORY[0x277D85DE8];
}

+ (void)removeContentsOfExtensionDataContainerForBundleProvider:.cold.2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

@end