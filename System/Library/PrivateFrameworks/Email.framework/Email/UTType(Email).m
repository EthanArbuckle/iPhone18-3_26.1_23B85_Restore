@interface UTType(Email)
+ (id)em_contentTypeForFilename:()Email fileURL:;
+ (id)log;
@end

@implementation UTType(Email)

+ (id)log
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __20__UTType_Email__log__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (log_onceToken_41 != -1)
  {
    dispatch_once(&log_onceToken_41, block);
  }

  v1 = log_log_41;

  return v1;
}

+ (id)em_contentTypeForFilename:()Email fileURL:
{
  v22 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v7 = [v5 pathExtension];
  v8 = MEMORY[0x1E6982D60];
  if (v7 && ([MEMORY[0x1E6982C40] typeWithFilenameExtension:v7 conformingToType:*MEMORY[0x1E6982D60]], (v9 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v10 = [MEMORY[0x1E6982C40] log];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      v16 = 138543874;
      v17 = v9;
      v18 = 2112;
      v19 = v5;
      v20 = 2112;
      v21 = v6;
      _os_log_debug_impl(&dword_1C6655000, v10, OS_LOG_TYPE_DEBUG, "Content type is %{public}@ for attachment file name '%@', file URL '%@'", &v16, 0x20u);
    }
  }

  else
  {
    v11 = [v6 pathExtension];

    if (v11 && ([MEMORY[0x1E6982C40] typeWithFilenameExtension:v11 conformingToType:*v8], (v9 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v12 = [MEMORY[0x1E6982C40] log];
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        v16 = 138412802;
        v17 = v5;
        v18 = 2112;
        v19 = v6;
        v20 = 2112;
        v21 = v9;
        _os_log_error_impl(&dword_1C6655000, v12, OS_LOG_TYPE_ERROR, "Unable to determine content type for item from its filename '%@'. Falling back to attachment file URL '%@': %@", &v16, 0x20u);
      }
    }

    else
    {
      v13 = [MEMORY[0x1E6982C40] log];
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        [(UTType(Email) *)v5 em_contentTypeForFilename:v6 fileURL:v13];
      }

      v9 = *v8;
    }

    v7 = v11;
  }

  v14 = *MEMORY[0x1E69E9840];

  return v9;
}

+ (void)em_contentTypeForFilename:()Email fileURL:.cold.1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v8 = *MEMORY[0x1E69E9840];
  v4 = 138412546;
  v5 = a1;
  v6 = 2112;
  v7 = a2;
  _os_log_error_impl(&dword_1C6655000, log, OS_LOG_TYPE_ERROR, "Unable to determine content type for item. Attachment file name '%@', file URL: '%@'", &v4, 0x16u);
  v3 = *MEMORY[0x1E69E9840];
}

@end