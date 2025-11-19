@interface MFAttachmentBundle
+ (BOOL)isFileBundleURL:(id)a3;
+ (id)_stripBundlePath:(id)a3 entryPath:(id)a4;
+ (id)dataForFileBundleURL:(id)a3;
@end

@implementation MFAttachmentBundle

+ (BOOL)isFileBundleURL:(id)a3
{
  v3 = a3;
  v7 = 0;
  v4 = [MEMORY[0x1E696AC08] defaultManager];
  v5 = [v3 path];
  [v4 fileExistsAtPath:v5 isDirectory:&v7];

  LOBYTE(v4) = v7;
  return v4;
}

+ (id)_stripBundlePath:(id)a3 entryPath:(id)a4
{
  v5 = a4;
  v6 = [a3 path];
  v7 = [v6 length];
  v8 = [v6 hasSuffix:@"/"];
  v9 = [v5 path];
  v10 = [v9 substringFromIndex:v7 + (v8 ^ 1u)];

  return v10;
}

+ (id)dataForFileBundleURL:(id)a3
{
  v45[1] = *MEMORY[0x1E69E9840];
  v31 = a3;
  v32 = [MFAttachmentSecurityScope securityScopedURL:?];
  if (![v32 isBundle])
  {
    v21 = MFLogGeneral();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      +[MFAttachmentBundle dataForFileBundleURL:];
    }

    goto LABEL_23;
  }

  if ([a1 isFileBundleURL:v31])
  {
    v30 = +[MFFileArchiveDirectory archiveDirectory];
    v4 = [MEMORY[0x1E696AC08] defaultManager];
    v5 = *MEMORY[0x1E695DB78];
    v45[0] = *MEMORY[0x1E695DB78];
    v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v45 count:1];
    v7 = [v4 enumeratorAtURL:v31 includingPropertiesForKeys:v6 options:0 errorHandler:&__block_literal_global_110];

    v40 = 0u;
    v41 = 0u;
    v38 = 0u;
    v39 = 0u;
    v8 = v7;
    v9 = [v8 countByEnumeratingWithState:&v38 objects:v44 count:16];
    if (v9)
    {
      v11 = *v39;
      *&v10 = 138412290;
      v29 = v10;
      do
      {
        v12 = 0;
        do
        {
          if (*v39 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v38 + 1) + 8 * v12);
          v37 = 0;
          [v13 getResourceValue:&v37 forKey:v5 error:{0, v29}];
          v14 = v37;
          if (([v14 BOOLValue] & 1) == 0)
          {
            v15 = [v32 data];
            if (v15)
            {
              v16 = [a1 _stripBundlePath:v31 entryPath:v13];
              v17 = [[MFFileArchiveEntry alloc] initWithContents:v15 path:v16];
              [v30 setArchiveEntry:v17];
            }

            else
            {
              v16 = MFLogGeneral();
              if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
              {
                *buf = v29;
                v43 = v13;
                _os_log_error_impl(&dword_1B0389000, v16, OS_LOG_TYPE_ERROR, "#Attachments Failed to read bundle URL [%@]", buf, 0xCu);
              }
            }
          }

          ++v12;
        }

        while (v9 != v12);
        v9 = [v8 countByEnumeratingWithState:&v38 objects:v44 count:16];
      }

      while (v9);
    }

    v18 = [MEMORY[0x1E699B868] promise];
    v19 = +[MFFileArchive archive];
    v34[0] = MEMORY[0x1E69E9820];
    v34[1] = 3221225472;
    v34[2] = __43__MFAttachmentBundle_dataForFileBundleURL___block_invoke_113;
    v34[3] = &unk_1E7AA5028;
    v20 = v18;
    v35 = v20;
    v21 = v30;
    v36 = v21;
    [v19 compressContents:v21 completion:v34];

    v22 = [v20 future];
    v33 = 0;
    v23 = [v22 resultWithTimeout:&v33 error:300.0];
    v24 = v33;

    if (!v23)
    {
      v25 = MFLogGeneral();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        v26 = [v24 ef_publicDescription];
        [(MFAttachmentBundle *)v31 dataForFileBundleURL:v26, buf];
      }
    }

    goto LABEL_24;
  }

  if (![v32 isReadable])
  {
    v21 = MFLogGeneral();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      +[MFAttachmentBundle dataForFileBundleURL:];
    }

    goto LABEL_23;
  }

  v23 = [v32 data];
  if (!v23)
  {
    v21 = MFLogGeneral();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      +[MFAttachmentBundle dataForFileBundleURL:];
    }

LABEL_23:
    v23 = 0;
LABEL_24:
  }

  v27 = *MEMORY[0x1E69E9840];

  return v23;
}

uint64_t __43__MFAttachmentBundle_dataForFileBundleURL___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v10[3] = *MEMORY[0x1E69E9840];
  v4 = a2;
  v5 = a3;
  v6 = MFLogGeneral();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    v7 = [v5 ef_publicDescription];
    __43__MFAttachmentBundle_dataForFileBundleURL___block_invoke_cold_1(v4, v7, v10);
  }

  v8 = *MEMORY[0x1E69E9840];
  return 1;
}

uint64_t __43__MFAttachmentBundle_dataForFileBundleURL___block_invoke_113(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  if (v3)
  {
    [*(a1 + 32) finishWithError:v3];
  }

  else
  {
    v5 = [*(a1 + 40) contents];
    [v4 finishWithResult:v5];
  }

  return 1;
}

+ (void)dataForFileBundleURL:.cold.1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_1_2(&dword_1B0389000, v0, v1, "#Attachments URL is not a bundle: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

+ (void)dataForFileBundleURL:.cold.2()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_1_2(&dword_1B0389000, v0, v1, "#Attachments Failed to access attachment URL: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

+ (void)dataForFileBundleURL:.cold.3()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_1_2(&dword_1B0389000, v0, v1, "#Attachments Failed to read attachment URL: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

+ (void)dataForFileBundleURL:(uint64_t)a3 .cold.4(uint64_t a1, void *a2, uint64_t a3)
{
  OUTLINED_FUNCTION_1_1(a1, a2, a3, 5.778e-34);
  OUTLINED_FUNCTION_4_0(&dword_1B0389000, "#Attachments Failed to archive bundle attachment URL: %@ due to error: %{public}@", v4, v5);
}

void __43__MFAttachmentBundle_dataForFileBundleURL___block_invoke_cold_1(uint64_t a1, void *a2, uint64_t a3)
{
  OUTLINED_FUNCTION_1_1(a1, a2, a3, 5.778e-34);
  OUTLINED_FUNCTION_4_0(&dword_1B0389000, "#Attachments Failed to enumerate URL [%@] due to error [%{public}@]", v4, v5);
}

@end