@interface EDSentToFilter
@end

@implementation EDSentToFilter

id __31___EDSentToFilter_loadFromDisk__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a2;
  v5 = a3;
  v6 = v4;
  v7 = [MEMORY[0x1E699AE20] mailDataDirectory];
  v8 = [v7 URLByAppendingPathComponent:v6];

  v16 = 0;
  v9 = [MEMORY[0x1E699B788] bloomFilterWithContentsOfFile:v8 error:&v16];
  v10 = v16;
  v11 = v10;
  if (!v9)
  {
    if (isNoSuchFileError(v10))
    {
      v12 = EDSenderLog();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v18 = v5;
        _os_log_impl(&dword_1C61EF000, v12, OS_LOG_TYPE_DEFAULT, "Sent to addresses filter %@ does not exist", buf, 0xCu);
      }
    }

    else
    {
      v12 = EDSenderLog();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        v13 = [v11 ef_publicDescription];
        __31___EDSentToFilter_loadFromDisk__block_invoke_cold_1(v5, v13, buf, v12);
      }
    }
  }

  v14 = *MEMORY[0x1E69E9840];

  return v9;
}

void __31___EDSentToFilter_loadFromDisk__block_invoke_cold_1(uint64_t a1, void *a2, uint64_t a3, NSObject *a4)
{
  *a3 = 138412546;
  *(a3 + 4) = a1;
  *(a3 + 12) = 2114;
  *(a3 + 14) = a2;
  OUTLINED_FUNCTION_5_0(&dword_1C61EF000, "Unable to load sent to addresses filter %@: %{public}@", a3, a4);
}

@end