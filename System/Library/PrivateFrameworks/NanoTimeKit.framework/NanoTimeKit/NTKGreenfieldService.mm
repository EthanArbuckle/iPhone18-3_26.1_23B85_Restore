@interface NTKGreenfieldService
+ (id)_unzipWatchfaceFromURL:(id)a3;
- (void)removeFileAtPath:(id)a3 withSandboxExtension:(char *)a4 completionBlock:(id)a5;
- (void)unzipWatchfaceFromURL:(id)a3 withSandboxExtension:(char *)a4 writeSandboxExtension:(char *)a5 completionBlock:(id)a6;
@end

@implementation NTKGreenfieldService

- (void)unzipWatchfaceFromURL:(id)a3 withSandboxExtension:(char *)a4 writeSandboxExtension:(char *)a5 completionBlock:(id)a6
{
  v21 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a6;
  v9 = _NTKLoggingObjectForDomain(43, "NTKLoggingDomainGreenfield");
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v20 = v7;
    _os_log_impl(&dword_22D9C5000, v9, OS_LOG_TYPE_DEFAULT, "decodeWatchFaceFromUrl XPC service started with url: %@", buf, 0xCu);
  }

  v10 = sandbox_extension_consume();
  v11 = sandbox_extension_consume();
  if (v10 == -1 || v11 == -1)
  {
    v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"Could not consume sandboxExtension. Extension is %lld", v10];
    v13 = [MEMORY[0x277CCA9B8] greenfield_decodeWatchFaceErrorWithCode:2 message:v12];
    v8[2](v8, 0, v13);
LABEL_13:

    goto LABEL_14;
  }

  v12 = [objc_opt_class() _unzipWatchfaceFromURL:v7];
  if (!v12)
  {
    v16 = MEMORY[0x277CCACA8];
    v17 = [v7 absoluteURL];
    v13 = [v16 stringWithFormat:@"GreenfieldService failed to extract from url: %@", v17];

    v14 = MEMORY[0x277CCA9B8];
    v15 = 4;
    goto LABEL_12;
  }

  if (sandbox_extension_release() == -1 || sandbox_extension_release() == -1)
  {
    v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"Could not release extension Extension is %lld", v10];
    v14 = MEMORY[0x277CCA9B8];
    v15 = 3;
LABEL_12:
    v18 = [v14 greenfield_decodeWatchFaceErrorWithCode:v15 message:v13];
    v8[2](v8, 0, v18);

    goto LABEL_13;
  }

  (v8)[2](v8, v12, 0);
LABEL_14:
}

+ (id)_unzipWatchfaceFromURL:(id)a3
{
  v3 = a3;
  v17 = 0;
  v18[0] = &v17;
  v18[1] = 0x3032000000;
  v18[2] = __Block_byref_object_copy__36;
  v18[3] = __Block_byref_object_dispose__36;
  v19 = 0;
  v4 = [objc_alloc(MEMORY[0x277CCA9E8]) initWithFilePresenter:0];
  v5 = dispatch_semaphore_create(0);
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __47__NTKGreenfieldService__unzipWatchfaceFromURL___block_invoke;
  v13[3] = &unk_278783E88;
  v15 = &v17;
  v16 = 0;
  v6 = v5;
  v14 = v6;
  [v4 coordinateReadingItemAtURL:v3 options:1 error:&v16 byAccessor:v13];
  v7 = v16;
  v8 = dispatch_time(0, 10000000000);
  dispatch_semaphore_wait(v6, v8);
  if (v7 || (v11 = *(v18[0] + 40)) == 0)
  {
    v9 = _NTKLoggingObjectForDomain(43, "NTKLoggingDomainGreenfield");
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [(NTKGreenfieldService *)v7 _unzipWatchfaceFromURL:v18, v9];
    }

    v10 = 0;
  }

  else
  {
    v10 = v11;
  }

  _Block_object_dispose(&v17, 8);

  return v10;
}

void __47__NTKGreenfieldService__unzipWatchfaceFromURL___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 startAccessingSecurityScopedResource];
  v5 = [objc_opt_class() unzipWatchFaceFileAtUrl:v3];
  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;

  if (*(*(*(a1 + 40) + 8) + 40))
  {
    if (v4)
    {
LABEL_3:
      [v3 stopAccessingSecurityScopedResource];
    }
  }

  else
  {
    v8 = _NTKLoggingObjectForDomain(43, "NTKLoggingDomainGreenfield");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __47__NTKGreenfieldService__unzipWatchfaceFromURL___block_invoke_cold_1(v3, v8);
    }

    if (v4)
    {
      goto LABEL_3;
    }
  }

  dispatch_semaphore_signal(*(a1 + 32));
}

- (void)removeFileAtPath:(id)a3 withSandboxExtension:(char *)a4 completionBlock:(id)a5
{
  v20 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a5;
  v9 = sandbox_extension_consume();
  v10 = _NTKLoggingObjectForDomain(43, "NTKLoggingDomainGreenfield");
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v17 = v7;
    v18 = 2080;
    v19 = a4;
    _os_log_impl(&dword_22D9C5000, v10, OS_LOG_TYPE_DEFAULT, "NTKGreenfieldService did start to remove files at path:%@  with sandbox extension:%s.", buf, 0x16u);
  }

  if (v9 == -1)
  {
    v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"NTKGreenfieldService remove files at path failed to consume sandbox extension:%s, handle is:%lld.", a4, -1];
    v13 = [MEMORY[0x277CCA9B8] greenfield_decodeWatchFaceErrorWithCode:2 message:v12];
    v8[2](v8, v13);
  }

  else
  {
    v11 = [MEMORY[0x277CCAA00] defaultManager];
    v15 = 0;
    [v11 removeItemAtPath:v7 error:&v15];
    v12 = v15;

    if (v12)
    {
      [MEMORY[0x277CCACA8] stringWithFormat:@"NTKGreenfieldService remove files at path failed to remove item at path:%@.", v7];
    }

    else
    {
      if (sandbox_extension_release() != -1)
      {
        v8[2](v8, 0);
        goto LABEL_9;
      }

      [MEMORY[0x277CCACA8] stringWithFormat:@"NTKGreenfieldService remove files at path failed to release extension handle:%lld.", v9];
    }
    v13 = ;
    v14 = [MEMORY[0x277CCA9B8] greenfield_decodeWatchFaceErrorWithCode:2 message:v13];
    v8[2](v8, v14);
  }

LABEL_9:
}

+ (void)_unzipWatchfaceFromURL:(os_log_t)log .cold.1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = *(*a2 + 40);
  v4 = 138412546;
  v5 = a1;
  v6 = 2112;
  v7 = v3;
  _os_log_error_impl(&dword_22D9C5000, log, OS_LOG_TYPE_ERROR, "Failed to read the file: readingError: %@ unizippedDataPath: %@", &v4, 0x16u);
}

void __47__NTKGreenfieldService__unzipWatchfaceFromURL___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_22D9C5000, a2, OS_LOG_TYPE_ERROR, "Failed to unzip watch face file from url: %@", &v2, 0xCu);
}

@end