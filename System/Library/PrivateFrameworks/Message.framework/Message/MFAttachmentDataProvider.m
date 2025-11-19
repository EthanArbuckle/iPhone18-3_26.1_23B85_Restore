@interface MFAttachmentDataProvider
+ (id)dataProviderWithPath:(id)a3;
+ (id)dataProviderWithURL:(id)a3;
- (BOOL)exists;
- (BOOL)save:(id)a3;
- (MFAttachmentDataProvider)initWithURL:(id)a3;
- (id)_fileAttributes:(id)a3;
- (id)data;
- (id)errorWithMessage:(id)a3 code:(int64_t)a4;
@end

@implementation MFAttachmentDataProvider

+ (id)dataProviderWithURL:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] initWithURL:v4];

  return v5;
}

+ (id)dataProviderWithPath:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [MEMORY[0x1E695DFF8] fileURLWithPath:v4];
    v6 = [[a1 alloc] initWithURL:v5];
  }

  else
  {
    v7 = MFLogGeneral();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *v9 = 0;
      _os_log_impl(&dword_1B0389000, v7, OS_LOG_TYPE_INFO, "#Attachments nil path detected in initializer", v9, 2u);
    }

    v6 = 0;
  }

  return v6;
}

- (MFAttachmentDataProvider)initWithURL:(id)a3
{
  v5 = a3;
  v6 = [(MFAttachmentDataProvider *)self init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_url, a3);
  }

  return v7;
}

- (id)errorWithMessage:(id)a3 code:(int64_t)a4
{
  v11[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = MEMORY[0x1E696ABC0];
  v10 = *MEMORY[0x1E696A578];
  v11[0] = v4;
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:&v10 count:1];
  v7 = [v5 errorWithDomain:@"MFAttachmentDataProviderErrorDomain" code:0 userInfo:v6];

  v8 = *MEMORY[0x1E69E9840];

  return v7;
}

- (BOOL)exists
{
  if (![(MFAttachmentDataProvider *)self _isFileURL])
  {
    return 0;
  }

  v3 = [MEMORY[0x1E696AC08] defaultManager];
  v4 = [(MFAttachmentDataProvider *)self _path];
  v5 = [v3 fileExistsAtPath:v4];

  return v5;
}

- (id)_fileAttributes:(id)a3
{
  v3 = a3;
  v4 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:1];
  if (v3)
  {
    v5 = strtoul([v3 ef_lossyDefaultCStringBytes], 0, 8) & 0x1FF;
    if (v5)
    {
      v6 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:v5];
      [v4 setObject:v6 forKey:*MEMORY[0x1E696A370]];
    }
  }

  return v4;
}

- (BOOL)save:(id)a3
{
  v25 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(MFAttachmentDataProvider *)self _path];
  v6 = [v5 copy];

  v7 = [v6 stringByDeletingLastPathComponent];
  if (v7)
  {
    v8 = [MEMORY[0x1E696AC08] defaultManager];
    v20 = 0;
    v9 = [v8 createDirectoryAtPath:v7 withIntermediateDirectories:1 attributes:0 error:&v20];
    v10 = v20;
    if (v9)
    {
      v11 = MEMORY[0x1E695DF90];
      v12 = [(MFAttachmentDataProvider *)self _fileAttributes:0];
      v13 = [v11 dictionaryWithDictionary:v12];

      v14 = _os_feature_enabled_impl();
      v15 = MEMORY[0x1E696A388];
      if (!v14)
      {
        v15 = MEMORY[0x1E696A380];
      }

      v16 = *v15;
      [v13 setObject:v16 forKey:*MEMORY[0x1E696A3A0]];
      if (([v8 createFileAtPath:v6 contents:v4 attributes:v13] & 1) == 0)
      {
        v17 = MFLogGeneral();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
        {
          *buf = 138412546;
          v22 = v6;
          v23 = 2112;
          v24 = v10;
          _os_log_impl(&dword_1B0389000, v17, OS_LOG_TYPE_INFO, "#Attachments Failed to create file for attachment %@: %@", buf, 0x16u);
        }
      }
    }

    else
    {
      v13 = MFLogGeneral();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        *buf = 138412546;
        v22 = v7;
        v23 = 2112;
        v24 = v10;
        _os_log_impl(&dword_1B0389000, v13, OS_LOG_TYPE_INFO, "#Attachments Failed to create directory for attachment %@: %@", buf, 0x16u);
      }
    }
  }

  v18 = *MEMORY[0x1E69E9840];
  return 0;
}

- (id)data
{
  v2 = MEMORY[0x1E69AD6B0];
  v3 = [(MFAttachmentDataProvider *)self _path];
  v4 = [v2 dataWithContentsOfFile:v3];

  return v4;
}

@end