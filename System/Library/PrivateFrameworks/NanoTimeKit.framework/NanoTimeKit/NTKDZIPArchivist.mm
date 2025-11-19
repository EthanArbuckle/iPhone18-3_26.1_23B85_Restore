@interface NTKDZIPArchivist
+ (id)sharedArchivist;
- (BOOL)zippedDataForPath:(id)a3 toZipFile:(id)a4;
- (NTKDZIPArchivist)init;
- (id)zippedDataForPath:(id)a3;
- (void)unzipFile:(id)a3 toPath:(id)a4 completionHandler:(id)a5;
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

- (void)unzipFile:(id)a3 toPath:(id)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  unzipQueue = self->_unzipQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __55__NTKDZIPArchivist_unzipFile_toPath_completionHandler___block_invoke;
  block[3] = &unk_27877DC88;
  v16 = v8;
  v17 = v9;
  v18 = v10;
  v12 = v10;
  v13 = v9;
  v14 = v8;
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

- (id)zippedDataForPath:(id)a3
{
  v4 = a3;
  v5 = NSTemporaryDirectory();
  v6 = [MEMORY[0x277CCAD78] UUID];
  v7 = [v6 UUIDString];
  v8 = [v5 stringByAppendingPathComponent:v7];

  LODWORD(self) = [(NTKDZIPArchivist *)self zippedDataForPath:v4 toZipFile:v8];
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

  v12 = [MEMORY[0x277CCAA00] defaultManager];
  [v12 removeItemAtPath:v8 error:0];

  return v9;
}

- (BOOL)zippedDataForPath:(id)a3 toZipFile:(id)a4
{
  if (a3)
  {

    return _createArchive(a3, a4);
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