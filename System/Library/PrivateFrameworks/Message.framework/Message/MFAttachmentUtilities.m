@interface MFAttachmentUtilities
+ (BOOL)shouldCreatePlaceholderAttachmentForAttachmentWithSize:(int64_t)a3;
+ (id)_temporaryDirectoryUniqueURL;
+ (id)makeAttachmentPlaceholder:(id)a3 fileSize:(int64_t)a4 mimeType:(id)a5 contentID:(id)a6;
+ (id)mimeTypeForFileName:(id)a3;
+ (id)securityScopeForFileURL:(id)a3;
+ (id)temporaryDirectory;
+ (id)temporaryFileURLWithExtension:(id)a3;
+ (id)writeData:(id)a3 toTemporaryFileURLWithFileName:(id)a4;
+ (void)_temporaryDirectoryUniqueURL;
@end

@implementation MFAttachmentUtilities

+ (id)temporaryDirectory
{
  v2 = NSTemporaryDirectory();
  v3 = [v2 stringByAppendingPathComponent:@"/MobileMailAttachments"];

  return v3;
}

+ (id)_temporaryDirectoryUniqueURL
{
  v28 = *MEMORY[0x1E69E9840];
  v4 = MEMORY[0x1E695DFF8];
  v5 = [a1 temporaryDirectory];
  v6 = [v4 fileURLWithPath:v5 isDirectory:1];

  v7 = [MEMORY[0x1E696AC08] defaultManager];
  v24 = 0;
  v8 = [v7 createDirectoryAtURL:v6 withIntermediateDirectories:1 attributes:0 error:&v24];
  v9 = v24;

  if ((v8 & 1) == 0)
  {
    v10 = MFLogGeneral();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [v9 ef_publicDescription];
      objc_claimAutoreleasedReturnValue();
      +[MFAttachmentUtilities _temporaryDirectoryUniqueURL];
    }
  }

  v11 = [v6 URLByAppendingPathComponent:@"XXXXXXXXXXXXXXXX" isDirectory:1];

  v12 = v11;
  v13 = [v11 fileSystemRepresentation];
  if (strlen(v13) >= 0x401)
  {
    v14 = MFLogGeneral();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
    {
      v15 = v11;
      +[MFAttachmentUtilities _temporaryDirectoryUniqueURL].cold.2([v11 fileSystemRepresentation], v26);
    }

    v16 = [MEMORY[0x1E696AAA8] currentHandler];
    [v16 handleFailureInMethod:a2 object:a1 file:@"MFAttachmentUtilities.m" lineNumber:94 description:@"Path is too long."];
  }

  strncpy(__dst, v13, 0x401uLL);
  if (mkdtemp(__dst))
  {
    v17 = [MEMORY[0x1E695DFF8] fileURLWithFileSystemRepresentation:__dst isDirectory:1 relativeToURL:0];

    v18 = MFLogGeneral();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
    {
      [v17 path];
      objc_claimAutoreleasedReturnValue();
      +[MFAttachmentUtilities _temporaryDirectoryUniqueURL];
    }

    v11 = v17;
    v19 = v11;
  }

  else
  {
    v20 = MFLogGeneral();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      v21 = __error();
      +[(MFAttachmentUtilities *)v21];
    }

    v19 = 0;
  }

  v22 = *MEMORY[0x1E69E9840];

  return v19;
}

+ (id)temporaryFileURLWithExtension:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x1E696AC08] defaultManager];
  v6 = [a1 _temporaryDirectoryUniqueURL];
  v7 = [v6 path];
  v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"XXXXX.%@", v4];
  v9 = [v7 stringByAppendingPathComponent:v8];

  if (v6)
  {
    v10 = strdup([v9 fileSystemRepresentation]);
    if (mkstemps(v10, [v4 length] + 1) == -1)
    {
      v11 = [v6 path];
      v12 = 0;
      [v5 removeItemAtPath:v11 error:0];
    }

    else
    {
      v11 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v10];
      [v5 createFileAtPath:v11 contents:0 attributes:0];
      v12 = [objc_alloc(MEMORY[0x1E695DFF8]) initFileURLWithPath:v11 isDirectory:0];
    }

    if (v10)
    {
      free(v10);
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

+ (id)writeData:(id)a3 toTemporaryFileURLWithFileName:(id)a4
{
  v22[6] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [a1 _temporaryDirectoryUniqueURL];
  v9 = v8;
  if (v8)
  {
    v10 = [v8 URLByAppendingPathComponent:v7 isDirectory:0];
    v22[0] = 0;
    v11 = [v6 writeToURL:v10 options:2 error:v22];
    v12 = v22[0];
    if (v11)
    {
      v13 = v10;
    }

    else
    {
      v14 = MFLogGeneral();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        [v6 length];
        [v12 ef_publicDescription];
        objc_claimAutoreleasedReturnValue();
        +[MFAttachmentUtilities writeData:toTemporaryFileURLWithFileName:];
      }

      v15 = [MEMORY[0x1E696AC08] defaultManager];
      [v15 removeItemAtURL:v10 error:0];
      v21 = v12;
      v16 = [v6 writeToURL:v10 options:2 error:&v21];
      v17 = v21;

      if (v16)
      {
        v13 = v10;
      }

      else
      {
        v18 = MFLogGeneral();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          [v17 ef_publicDescription];
          objc_claimAutoreleasedReturnValue();
          +[MFAttachmentUtilities writeData:toTemporaryFileURLWithFileName:];
        }

        v13 = 0;
      }

      v12 = v17;
    }
  }

  else
  {
    v10 = MFLogGeneral();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [MFAttachmentUtilities writeData:v10 toTemporaryFileURLWithFileName:?];
    }

    v13 = 0;
  }

  v19 = *MEMORY[0x1E69E9840];

  return v13;
}

+ (id)mimeTypeForFileName:(id)a3
{
  v3 = [MEMORY[0x1E696AEC0] mf_stringForMimeTypeFromFileName:a3];

  return v3;
}

+ (BOOL)shouldCreatePlaceholderAttachmentForAttachmentWithSize:(int64_t)a3
{
  v4 = +[MFAttachmentCapabilities placeholdersAvailable];
  if (v4)
  {
    LOBYTE(v4) = +[MFAttachmentCapabilities currentPlaceholderThreshold]< a3;
  }

  return v4;
}

+ (id)makeAttachmentPlaceholder:(id)a3 fileSize:(int64_t)a4 mimeType:(id)a5 contentID:(id)a6
{
  v9 = a3;
  v10 = a5;
  v11 = a6;
  v12 = [MEMORY[0x1E699B868] promise];
  v13 = MEMORY[0x1E69ADAE8];
  v14 = [v12 completionHandlerAdapter];
  [v13 placeholderAttachmentForFileName:v9 fileSize:a4 mimeType:v10 contentID:v11 completionBlock:v14];

  v15 = [v12 future];
  v16 = [v15 then:&__block_literal_global_26];

  v21 = 0;
  v17 = [v16 result:&v21];
  v18 = v21;
  if (!v17)
  {
    v19 = MFLogGeneral();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      +[MFAttachmentUtilities makeAttachmentPlaceholder:fileSize:mimeType:contentID:];
    }
  }

  return v17;
}

id __79__MFAttachmentUtilities_makeAttachmentPlaceholder_fileSize_mimeType_contentID___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = MEMORY[0x1E699B7C8];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __79__MFAttachmentUtilities_makeAttachmentPlaceholder_fileSize_mimeType_contentID___block_invoke_2;
  v7[3] = &unk_1E7AA4FE0;
  v8 = v2;
  v4 = v2;
  v5 = [v3 lazyFutureWithBlock:v7];

  return v5;
}

id __79__MFAttachmentUtilities_makeAttachmentPlaceholder_fileSize_mimeType_contentID___block_invoke_2(uint64_t a1, void *a2)
{
  v10[1] = *MEMORY[0x1E69E9840];
  v3 = [MFAttachmentPlaceholder placeholderFromSerializedRepresentation:*(a1 + 32)];
  v4 = v3;
  if (a2 && !v3)
  {
    v5 = MEMORY[0x1E696ABC0];
    v9 = *MEMORY[0x1E696A578];
    v10[0] = @"Invalid placeholder";
    v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:&v9 count:1];
    *a2 = [v5 errorWithDomain:@"MFMessageErrorDomain" code:1030 userInfo:v6];
  }

  v7 = *MEMORY[0x1E69E9840];

  return v4;
}

+ (id)securityScopeForFileURL:(id)a3
{
  v3 = a3;
  v4 = [MEMORY[0x1E699B868] promise];
  v5 = MEMORY[0x1E69ADAE8];
  v6 = [v4 completionHandlerAdapter];
  [v5 securityScopeForPlaceholderURL:v3 completionBlock:v6];

  v7 = [v4 future];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __49__MFAttachmentUtilities_securityScopeForFileURL___block_invoke;
  v15[3] = &unk_1E7AA40E0;
  v8 = v3;
  v16 = v8;
  v9 = [v7 map:v15];

  v14 = 0;
  v10 = [v9 result:&v14];
  v11 = v14;
  if (!v10)
  {
    v12 = MFLogGeneral();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      +[MFAttachmentUtilities securityScopeForFileURL:];
    }
  }

  return v10;
}

id __49__MFAttachmentUtilities_securityScopeForFileURL___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = [MFAttachmentSecurityScope securityScopedURL:*(a1 + 32) withToken:a2];

  return v2;
}

+ (void)_temporaryDirectoryUniqueURL
{
  v2 = *a1;
  *a2 = 67109120;
  a2[1] = v2;
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v3, v4, v5, v6, v7, 8u);
}

+ (void)writeData:toTemporaryFileURLWithFileName:.cold.1()
{
  OUTLINED_FUNCTION_0();
  *v1 = 134218242;
  *(v1 + 4) = v2;
  *(v1 + 12) = 2114;
  *(v1 + 14) = v3;
  OUTLINED_FUNCTION_4_0(&dword_1B0389000, "#Attachments Failed to create temporary file (%{bytes}llu): %{public}@", v4, v5);
}

+ (void)writeData:toTemporaryFileURLWithFileName:.cold.2()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2(v1, v2, 5.8381e-34);
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0xCu);
}

+ (void)makeAttachmentPlaceholder:fileSize:mimeType:contentID:.cold.1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x1E69E9840];
}

+ (void)securityScopeForFileURL:.cold.1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x1E69E9840];
}

@end