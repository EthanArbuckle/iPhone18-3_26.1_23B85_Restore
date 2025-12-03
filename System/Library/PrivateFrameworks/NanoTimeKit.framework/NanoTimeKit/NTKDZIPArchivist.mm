@interface NTKDZIPArchivist
+ (id)sharedArchivist;
- (BOOL)zippedDataForPath:(id)path toZipFile:(id)file;
- (NTKDZIPArchivist)init;
- (id)zippedDataForPath:(id)path;
- (void)unzipFile:(id)file toPath:(id)path completionHandler:(id)handler;
@end

@implementation NTKDZIPArchivist

+ (id)sharedArchivist
{
  if (sharedArchivist_onceToken != -1)
  {
    +[NTKDZIPArchivist sharedArchivist];
  }

  v3 = sharedArchivist_archivist;

  return v3;
}

void __35__NTKDZIPArchivist_sharedArchivist__block_invoke()
{
  v0 = objc_opt_new();
  v1 = sharedArchivist_archivist;
  sharedArchivist_archivist = v0;
}

- (NTKDZIPArchivist)init
{
  v6.receiver = self;
  v6.super_class = NTKDZIPArchivist;
  v2 = [(NTKDZIPArchivist *)&v6 init];
  if (v2)
  {
    v3 = dispatch_queue_create("com.apple.ntkd.zip-archivist", 0);
    unzipQueue = v2->_unzipQueue;
    v2->_unzipQueue = v3;
  }

  return v2;
}

- (void)unzipFile:(id)file toPath:(id)path completionHandler:(id)handler
{
  fileCopy = file;
  pathCopy = path;
  handlerCopy = handler;
  unzipQueue = self->_unzipQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __55__NTKDZIPArchivist_unzipFile_toPath_completionHandler___block_invoke;
  block[3] = &unk_27877DC88;
  v16 = fileCopy;
  v17 = pathCopy;
  v18 = handlerCopy;
  v12 = handlerCopy;
  v13 = pathCopy;
  v14 = fileCopy;
  dispatch_async(unzipQueue, block);
}

uint64_t __55__NTKDZIPArchivist_unzipFile_toPath_completionHandler___block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 40);
  v3 = *(a1 + 32);
  v4 = v2;
  v5 = [MEMORY[0x277CCAA00] defaultManager];
  v12 = 0;
  [v5 createDirectoryAtPath:v4 withIntermediateDirectories:1 attributes:0 error:&v12];
  v6 = v12;
  if (v6)
  {
    v7 = _NTKLoggingObjectForDomain(1, "NTKLoggingDomainDaemon");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __55__NTKDZIPArchivist_unzipFile_toPath_completionHandler___block_invoke_cold_1();
    }
  }

  else
  {
    v9 = [v3 cStringUsingEncoding:4];
    if (v9)
    {
      v10 = v9;
      v11 = [v4 cStringUsingEncoding:4];
      if (v11)
      {
        __s1[1024] = 0;
        if (realpath_DARWIN_EXTSN(v11, __s1) == __s1)
        {
          extract_zip(v10, __s1);
          goto LABEL_5;
        }

        v7 = _NTKLoggingObjectForDomain(1, "NTKLoggingDomainDaemon");
        if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
        {
          __55__NTKDZIPArchivist_unzipFile_toPath_completionHandler___block_invoke_cold_2();
        }
      }

      else
      {
        v7 = _NTKLoggingObjectForDomain(1, "NTKLoggingDomainDaemon");
        if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
        {
          __55__NTKDZIPArchivist_unzipFile_toPath_completionHandler___block_invoke_cold_3();
        }
      }
    }

    else
    {
      v7 = _NTKLoggingObjectForDomain(1, "NTKLoggingDomainDaemon");
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        __55__NTKDZIPArchivist_unzipFile_toPath_completionHandler___block_invoke_cold_4();
      }
    }
  }

LABEL_5:
  return (*(*(a1 + 48) + 16))();
}

- (id)zippedDataForPath:(id)path
{
  pathCopy = path;
  v5 = NSTemporaryDirectory();
  uUID = [MEMORY[0x277CCAD78] UUID];
  uUIDString = [uUID UUIDString];
  v8 = [v5 stringByAppendingPathComponent:uUIDString];

  LODWORD(self) = [(NTKDZIPArchivist *)self zippedDataForPath:pathCopy toZipFile:v8];
  if (self)
  {
    v14 = 0;
    v9 = [MEMORY[0x277CBEA90] dataWithContentsOfFile:v8 options:1 error:&v14];
    v10 = v14;
    if (v10)
    {
      v11 = _NTKLoggingObjectForDomain(1, "NTKLoggingDomainDaemon");
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        [NTKDZIPArchivist zippedDataForPath:];
      }

      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  [defaultManager removeItemAtPath:v8 error:0];

  return v9;
}

- (BOOL)zippedDataForPath:(id)path toZipFile:(id)file
{
  if (path)
  {

    return _createArchive(path, file);
  }

  else
  {
    v6 = _NTKLoggingObjectForDomain(1, "NTKLoggingDomainDaemon");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [NTKDZIPArchivist zippedDataForPath:toZipFile:];
    }

    return 0;
  }
}

void __55__NTKDZIPArchivist_unzipFile_toPath_completionHandler___block_invoke_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  v3[0] = 136315650;
  OUTLINED_FUNCTION_0_4();
  v4 = v0;
  v5 = v1;
  _os_log_error_impl(&dword_22D9C5000, v2, OS_LOG_TYPE_ERROR, "%s: cannot create new directory %@ for unzipping archive %@", v3, 0x20u);
}

- (void)zippedDataForPath:.cold.1()
{
  OUTLINED_FUNCTION_0_4();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

@end