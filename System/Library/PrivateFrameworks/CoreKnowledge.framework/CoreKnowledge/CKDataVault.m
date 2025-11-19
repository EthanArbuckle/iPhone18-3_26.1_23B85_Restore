@interface CKDataVault
+ (BOOL)createDataVaultDirectoryAtPath:(id)a3 withStorageClass:(id)a4 error:(id *)a5;
+ (id)errorWithDescription:(uint64_t)a1;
@end

@implementation CKDataVault

+ (BOOL)createDataVaultDirectoryAtPath:(id)a3 withStorageClass:(id)a4 error:(id *)a5
{
  v43[2] = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v9 = [MEMORY[0x1E696AC08] defaultManager];
  [v9 createDirectoryAtPath:v7 withIntermediateDirectories:1 attributes:0 error:a5];

  if (a5)
  {
    v10 = *a5;
    if (*a5)
    {
      v11 = CKLogContextFramework;
      if (os_log_type_enabled(CKLogContextFramework, OS_LOG_TYPE_ERROR))
      {
        v24 = v11;
        v25 = [v10 localizedDescription];
        v38 = 136315650;
        v39 = "+[CKDataVault createDataVaultDirectoryAtPath:withStorageClass:error:]";
        v40 = 2112;
        v41 = v7;
        v42 = 2112;
        v43[0] = v25;
        _os_log_error_impl(&dword_1C8683000, v24, OS_LOG_TYPE_ERROR, "%s could not create directory at path %@: %@", &v38, 0x20u);
      }

      goto LABEL_5;
    }
  }

  v13 = [v7 UTF8String];
  [v8 UTF8String];
  v14 = rootless_check_datavault_flag();
  if (v14 == 1)
  {
    if (!chmod(v13, 0x1C0u))
    {
      v20 = rootless_convert_to_datavault();
      v21 = CKLogContextFramework;
      if (!v20)
      {
        if (!os_log_type_enabled(CKLogContextFramework, OS_LOG_TYPE_DEBUG))
        {
          goto LABEL_9;
        }

        v38 = 136315138;
        v39 = "+[CKDataVault createDataVaultDirectoryAtPath:withStorageClass:error:]";
        v22 = "%s successfully converted directory to data vault";
        v23 = v21;
        goto LABEL_26;
      }

      if (os_log_type_enabled(CKLogContextFramework, OS_LOG_TYPE_ERROR))
      {
        v34 = v21;
        v35 = *__error();
        v36 = __error();
        v37 = strerror(*v36);
        v38 = 136315906;
        v39 = "+[CKDataVault createDataVaultDirectoryAtPath:withStorageClass:error:]";
        v40 = 2112;
        v41 = v7;
        v42 = 1024;
        LODWORD(v43[0]) = v35;
        WORD2(v43[0]) = 2080;
        *(v43 + 6) = v37;
        _os_log_error_impl(&dword_1C8683000, v34, OS_LOG_TYPE_ERROR, "%s Failed to convert to data vault: %@: [%i] %s", &v38, 0x26u);

        if (!a5)
        {
          goto LABEL_5;
        }
      }

      else if (!a5)
      {
        goto LABEL_5;
      }

      v17 = @"Failed to convert to data vault";
      goto LABEL_17;
    }

    v16 = CKLogContextFramework;
    if (os_log_type_enabled(CKLogContextFramework, OS_LOG_TYPE_ERROR))
    {
      v30 = v16;
      v31 = *__error();
      v32 = __error();
      v33 = strerror(*v32);
      v38 = 136315906;
      v39 = "+[CKDataVault createDataVaultDirectoryAtPath:withStorageClass:error:]";
      v40 = 2112;
      v41 = v7;
      v42 = 1024;
      LODWORD(v43[0]) = v31;
      WORD2(v43[0]) = 2080;
      *(v43 + 6) = v33;
      _os_log_error_impl(&dword_1C8683000, v30, OS_LOG_TYPE_ERROR, "%s Failed to set mode on directory %@: [%i] %s", &v38, 0x26u);

      if (!a5)
      {
        goto LABEL_5;
      }
    }

    else if (!a5)
    {
      goto LABEL_5;
    }

    v17 = @"failed to set mode on directory";
LABEL_17:
    [CKDataVault errorWithDescription:v17];
    *a5 = v12 = 0;
    goto LABEL_18;
  }

  if (!v14)
  {
    v15 = CKLogContextFramework;
    if (!os_log_type_enabled(CKLogContextFramework, OS_LOG_TYPE_DEBUG))
    {
LABEL_9:
      v12 = 1;
      goto LABEL_18;
    }

    v38 = 136315138;
    v39 = "+[CKDataVault createDataVaultDirectoryAtPath:withStorageClass:error:]";
    v22 = "%s data vault already exists";
    v23 = v15;
LABEL_26:
    _os_log_debug_impl(&dword_1C8683000, v23, OS_LOG_TYPE_DEBUG, v22, &v38, 0xCu);
    goto LABEL_9;
  }

  v18 = CKLogContextFramework;
  if (os_log_type_enabled(CKLogContextFramework, OS_LOG_TYPE_ERROR))
  {
    v26 = v18;
    v27 = *__error();
    v28 = __error();
    v29 = strerror(*v28);
    v38 = 136315906;
    v39 = "+[CKDataVault createDataVaultDirectoryAtPath:withStorageClass:error:]";
    v40 = 2112;
    v41 = v7;
    v42 = 1024;
    LODWORD(v43[0]) = v27;
    WORD2(v43[0]) = 2080;
    *(v43 + 6) = v29;
    _os_log_error_impl(&dword_1C8683000, v26, OS_LOG_TYPE_ERROR, "%s data vault status check failed at path %@: [%i] %s", &v38, 0x26u);

    if (a5)
    {
      goto LABEL_16;
    }
  }

  else if (a5)
  {
LABEL_16:
    v17 = @"data vault status check failed";
    goto LABEL_17;
  }

LABEL_5:
  v12 = 0;
LABEL_18:

  return v12;
}

+ (id)errorWithDescription:(uint64_t)a1
{
  v12[3] = *MEMORY[0x1E69E9840];
  v2 = a2;
  objc_opt_self();
  v3 = MEMORY[0x1E696ABC0];
  v12[0] = v2;
  v11[0] = @"description";
  v11[1] = @"errno";
  v4 = [MEMORY[0x1E696AD98] numberWithInt:*__error()];
  v12[1] = v4;
  v11[2] = @"strerror";
  v5 = MEMORY[0x1E696AEC0];
  v6 = __error();
  v7 = [v5 stringWithCString:strerror(*v6) encoding:4];
  v12[2] = v7;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:v11 count:3];
  v9 = [v3 errorWithDomain:@"com.apple.internal.ck" code:102 userInfo:v8];

  return v9;
}

@end