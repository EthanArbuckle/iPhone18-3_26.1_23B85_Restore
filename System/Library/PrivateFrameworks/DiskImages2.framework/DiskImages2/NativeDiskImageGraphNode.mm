@interface NativeDiskImageGraphNode
+ (BOOL)validateWithDictionary:(id)dictionary error:(id *)error;
- (BOOL)deleteImage;
- (BOOL)validateAppendedImageWithInfo:(id)info error:(id *)error;
- (NativeDiskImageGraphNode)initWithDictionary:(id)dictionary workDir:(id)dir error:(id *)error;
- (id)toDIShadowNode;
- (id)toDictionary;
- (void)setFilePath:(id)path;
@end

@implementation NativeDiskImageGraphNode

+ (BOOL)validateWithDictionary:(id)dictionary error:(id *)error
{
  v6 = [MEMORY[0x277CBEB38] dictionaryWithDictionary:dictionary];
  v10.receiver = self;
  v10.super_class = &OBJC_METACLASS___NativeDiskImageGraphNode;
  if (objc_msgSendSuper2(&v10, sel_validateWithDictionary_error_, v6, error) && [v6 validateAndPopObjectForKey:@"FilePath" className:objc_opt_class() isOptional:0 error:error])
  {
    if ([v6 count])
    {
      v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"Validation failed, input contains unexpected data."];
      v8 = [DIError failWithPOSIXCode:22 verboseInfo:v7 error:error];
    }

    else
    {
      v8 = 1;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (NativeDiskImageGraphNode)initWithDictionary:(id)dictionary workDir:(id)dir error:(id *)error
{
  dictionaryCopy = dictionary;
  dirCopy = dir;
  if ([NativeDiskImageGraphNode validateWithDictionary:dictionaryCopy error:error])
  {
    v18.receiver = self;
    v18.super_class = NativeDiskImageGraphNode;
    self = [(DiskImageGraphNode *)&v18 initWithDictionary:dictionaryCopy workDir:dirCopy error:error];
    if (!self)
    {
      goto LABEL_4;
    }

    v10 = MEMORY[0x277CBEBC0];
    v11 = [dictionaryCopy objectForKey:@"FilePath"];
    v12 = [v10 fileURLWithPath:v11 relativeToURL:dirCopy];
    filePath = self->_filePath;
    self->_filePath = v12;

    filePath = [(NativeDiskImageGraphNode *)self filePath];
    LOBYTE(v11) = [filePath checkResourceIsReachableAndReturnError:error];

    if ((v11 & 1) == 0)
    {
      selfCopy = [DIError nilWithPOSIXCode:2 verboseInfo:@"Image referenced in the pstack is unreachable." error:error];
    }

    else
    {
LABEL_4:
      selfCopy = self;
      self = selfCopy;
    }

    v16 = selfCopy;
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

- (void)setFilePath:(id)path
{
  pathCopy = path;
  objc_storeStrong(&self->_filePath, path);
  pstackDict = [(DiskImageGraphNode *)self pstackDict];

  if (pstackDict)
  {
    pstackDict2 = [(DiskImageGraphNode *)self pstackDict];
    relativeString = [pathCopy relativeString];
    [pstackDict2 setObject:relativeString forKey:@"FilePath"];
  }
}

- (BOOL)deleteImage
{
  v26 = *MEMORY[0x277D85DE8];
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  filePath = [(NativeDiskImageGraphNode *)self filePath];
  v17 = 0;
  v5 = [defaultManager removeItemAtURL:filePath error:&v17];
  v6 = v17;

  if ((v5 & 1) == 0)
  {
    v7 = *__error();
    if (DIForwardLogs())
    {
      v8 = getDIOSLog();
      os_log_type_enabled(v8, OS_LOG_TYPE_ERROR);
      filePath2 = [(NativeDiskImageGraphNode *)self filePath];
      v10 = [v6 description];
      *buf = 68158466;
      v19 = 39;
      v20 = 2080;
      v21 = "[NativeDiskImageGraphNode deleteImage]";
      v22 = 2112;
      v23 = filePath2;
      v24 = 2112;
      v25 = v10;
      v11 = _os_log_send_and_compose_impl();

      if (v11)
      {
        fprintf(*MEMORY[0x277D85DF8], "%s\n", v11);
        free(v11);
      }
    }

    else
    {
      v12 = getDIOSLog();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        filePath3 = [(NativeDiskImageGraphNode *)self filePath];
        v14 = [v6 description];
        *buf = 68158466;
        v19 = 39;
        v20 = 2080;
        v21 = "[NativeDiskImageGraphNode deleteImage]";
        v22 = 2112;
        v23 = filePath3;
        v24 = 2112;
        v25 = v14;
        _os_log_impl(&dword_248DE0000, v12, OS_LOG_TYPE_ERROR, "%.*s: Failed to delete %@: %@", buf, 0x26u);
      }
    }

    *__error() = v7;
  }

  v15 = *MEMORY[0x277D85DE8];
  return v5;
}

- (id)toDictionary
{
  v8.receiver = self;
  v8.super_class = NativeDiskImageGraphNode;
  toDictionary = [(DiskImageGraphNode *)&v8 toDictionary];
  v4 = [toDictionary mutableCopy];

  filePath = [(NativeDiskImageGraphNode *)self filePath];
  relativePath = [filePath relativePath];
  [v4 setObject:relativePath forKeyedSubscript:@"FilePath"];

  return v4;
}

- (id)toDIShadowNode
{
  v3 = [DIShadowNode alloc];
  filePath = [(NativeDiskImageGraphNode *)self filePath];
  v5 = [(DIShadowNode *)v3 initWithURL:filePath isCache:[(DiskImageGraphNode *)self isCache]];

  return v5;
}

- (BOOL)validateAppendedImageWithInfo:(id)info error:(id *)error
{
  v27 = *MEMORY[0x277D85DE8];
  infoCopy = info;
  filePath = [(NativeDiskImageGraphNode *)self filePath];
  v8 = [DiskImageGraph getImageInfoDictWithURL:filePath error:error];

  if (v8)
  {
    v9 = [v8 objectForKeyedSubscript:@"Image Format"];
    v10 = [v9 isEqualToString:@"RAW"];

    if (v10)
    {
      v11 = *__error();
      if (DIForwardLogs())
      {
        v12 = getDIOSLog();
        os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);
        *buf = 68157954;
        v24 = 72;
        v25 = 2080;
        v26 = "[NativeDiskImageGraphNode(Append) validateAppendedImageWithInfo:error:]";
        v13 = _os_log_send_and_compose_impl();

        if (v13)
        {
          fprintf(*MEMORY[0x277D85DF8], "%s\n", v13);
          free(v13);
        }
      }

      else
      {
        v20 = getDIOSLog();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 68157954;
          v24 = 72;
          v25 = 2080;
          v26 = "[NativeDiskImageGraphNode(Append) validateAppendedImageWithInfo:error:]";
          _os_log_impl(&dword_248DE0000, v20, OS_LOG_TYPE_DEFAULT, "%.*s: Parent image is RAW, skipping shadow UUID validation on append.", buf, 0x12u);
        }
      }

      *__error() = v11;
      goto LABEL_13;
    }

    v15 = [infoCopy objectForKeyedSubscript:@"Identity Info"];
    v16 = [v15 objectForKeyedSubscript:@"Parent UUID"];
    v17 = [v8 objectForKeyedSubscript:@"Identity Info"];
    v18 = [v17 objectForKeyedSubscript:@"UUID"];
    v19 = [v16 isEqualToString:v18];

    if (v19)
    {
LABEL_13:
      v14 = 1;
      goto LABEL_14;
    }

    v14 = [DIError failWithPOSIXCode:22 verboseInfo:@"UUID validation failed for appended image." error:error];
  }

  else
  {
    v14 = 0;
  }

LABEL_14:

  v21 = *MEMORY[0x277D85DE8];
  return v14;
}

@end