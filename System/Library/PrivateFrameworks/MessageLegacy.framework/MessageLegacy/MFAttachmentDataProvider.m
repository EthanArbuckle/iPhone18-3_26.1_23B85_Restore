@interface MFAttachmentDataProvider
+ (id)dataProviderWithPath:(id)a3;
+ (id)dataProviderWithURL:(id)a3;
- (BOOL)exists;
- (BOOL)save:(id)a3;
- (MFAttachmentDataProvider)initWithURL:(id)a3;
- (id)_fileAttributes:(id)a3;
- (id)data;
- (id)errorWithMessage:(id)a3 code:(int64_t)a4;
- (void)dealloc;
@end

@implementation MFAttachmentDataProvider

+ (id)dataProviderWithURL:(id)a3
{
  v3 = [[a1 alloc] initWithURL:a3];

  return v3;
}

+ (id)dataProviderWithPath:(id)a3
{
  if (a3)
  {
    v3 = [[a1 alloc] initWithURL:{objc_msgSend(MEMORY[0x277CBEBC0], "fileURLWithPath:")}];

    return v3;
  }

  else
  {
    v5 = MFLogGeneral();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *v6 = 0;
      _os_log_impl(&dword_258BDA000, v5, OS_LOG_TYPE_INFO, "#Attachments nil path detected in initializer", v6, 2u);
    }

    return 0;
  }
}

- (MFAttachmentDataProvider)initWithURL:(id)a3
{
  v4 = [(MFAttachmentDataProvider *)self init];
  if (v4)
  {
    v4->_url = a3;
  }

  return v4;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = MFAttachmentDataProvider;
  [(MFAttachmentDataProvider *)&v3 dealloc];
}

- (id)errorWithMessage:(id)a3 code:(int64_t)a4
{
  v7[1] = *MEMORY[0x277D85DE8];
  v6 = *MEMORY[0x277CCA450];
  v7[0] = a3;
  result = [MEMORY[0x277CCA9B8] errorWithDomain:@"MFAttachmentDataProviderErrorDomain" code:0 userInfo:{objc_msgSend(MEMORY[0x277CBEAC0], "dictionaryWithObjects:forKeys:count:", v7, &v6, 1)}];
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

- (BOOL)exists
{
  v3 = [(MFAttachmentDataProvider *)self _isFileURL];
  if (v3)
  {
    v4 = [MEMORY[0x277CCAA00] defaultManager];
    v5 = [(MFAttachmentDataProvider *)self _path];

    LOBYTE(v3) = [v4 fileExistsAtPath:v5];
  }

  return v3;
}

- (id)_fileAttributes:(id)a3
{
  v4 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:1];
  if (a3)
  {
    v5 = strtoul([a3 ef_lossyDefaultCStringBytes], 0, 8) & 0x1FF;
    if (v5)
    {
      v6 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:v5];
      [v4 setObject:v6 forKey:*MEMORY[0x277CCA180]];
    }
  }

  return v4;
}

- (BOOL)save:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v5 = [-[MFAttachmentDataProvider _path](self "_path")];
  v6 = [v5 stringByDeletingLastPathComponent];
  if (v6)
  {
    v7 = v6;
    v8 = [MEMORY[0x277CCAA00] defaultManager];
    v14 = 0;
    if ([v8 createDirectoryAtPath:v7 withIntermediateDirectories:1 attributes:0 error:&v14])
    {
      v9 = [MEMORY[0x277CBEB38] dictionaryWithDictionary:{-[MFAttachmentDataProvider _fileAttributes:](self, "_fileAttributes:", 0)}];
      [v9 setObject:*MEMORY[0x277CCA198] forKey:*MEMORY[0x277CCA1B0]];
      if (([v8 createFileAtPath:v5 contents:a3 attributes:v9] & 1) == 0)
      {
        v10 = MFLogGeneral();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
        {
          *buf = 138412546;
          v16 = v5;
          v17 = 2112;
          v18 = v14;
          v11 = "#Attachments Failed to create file for attachment %@: %@";
LABEL_8:
          _os_log_impl(&dword_258BDA000, v10, OS_LOG_TYPE_INFO, v11, buf, 0x16u);
        }
      }
    }

    else
    {
      v10 = MFLogGeneral();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        *buf = 138412546;
        v16 = v7;
        v17 = 2112;
        v18 = v14;
        v11 = "#Attachments Failed to create directory for attachment %@: %@";
        goto LABEL_8;
      }
    }
  }

  v12 = *MEMORY[0x277D85DE8];
  return 0;
}

- (id)data
{
  v2 = MEMORY[0x277D24F00];
  v3 = [(MFAttachmentDataProvider *)self _path];

  return [v2 dataWithContentsOfFile:v3];
}

@end