@interface HDSFileTransferService
+ (id)productionCacheDirectory;
- (HDSFileTransferService)init;
- (void)cleanupDiagnostics;
- (void)handleSysDropEnablementProfileRequest:(id)a3 responseHandler:(id)a4;
- (void)handleSysDropStartFileTransferRequest:(id)a3 responseHandler:(id)a4;
- (void)invalidate;
- (void)markCacheDeletable:(id)a3;
- (void)writeFileToCache:(id)a3;
@end

@implementation HDSFileTransferService

+ (id)productionCacheDirectory
{
  v2 = [MEMORY[0x277CCAA00] defaultManager];
  v3 = +[HDSFileTransferService appGroupIdentifier];
  v4 = [v2 containerURLForSecurityApplicationGroupIdentifier:v3];
  v5 = [v4 path];

  v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@%@", v5, @"/Library/Caches"];

  return v6;
}

- (HDSFileTransferService)init
{
  v8.receiver = self;
  v8.super_class = HDSFileTransferService;
  v2 = [(HDSFileTransferService *)&v8 init];
  if (v2)
  {
    _invalidateCalled = 0;
    v3 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_BACKGROUND, 0);
    v4 = dispatch_queue_create("com.apple.soundboard.hdsfiletransfer", v3);
    dispatchQueue = v2->_dispatchQueue;
    v2->_dispatchQueue = v4;

    v6 = v2;
  }

  return v2;
}

- (void)handleSysDropEnablementProfileRequest:(id)a3 responseHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (gLogCategory_HDSFileTransfer <= 30 && (gLogCategory_HDSFileTransfer != -1 || _LogCategory_Initialize()))
  {
    [HDSFileTransferService handleSysDropEnablementProfileRequest:responseHandler:];
  }

  v19 = 0;
  CFStringGetTypeID();
  v8 = CFDictionaryGetTypedValue();
  v9 = objc_autoreleasePoolPush();
  v10 = objc_opt_new();
  v11 = _fileTransferSession;
  _fileTransferSession = v10;

  [_fileTransferSession setTargetID:v8];
  v12 = [MEMORY[0x277CBEA90] mb_dataFromHexadecimalString:@"e905dc700dfc2c3f26692d20346463a2adf3c4c340d4ea661696a0ae736800ec"];
  [_fileTransferSession setPeerPublicKey:v12];

  [_fileTransferSession setFlags:{objc_msgSend(_fileTransferSession, "flags") | 1}];
  [_fileTransferSession setFlags:{objc_msgSend(_fileTransferSession, "flags") | 0x40}];
  [_fileTransferSession setFlags:{objc_msgSend(_fileTransferSession, "flags") | 0x20}];
  [_fileTransferSession setProgressHandlerTimeInterval:1.0];
  if (gLogCategory_HDSFileTransfer <= 30 && (gLogCategory_HDSFileTransfer != -1 || _LogCategory_Initialize()))
  {
    [HDSFileTransferService handleSysDropEnablementProfileRequest:responseHandler:];
  }

  v18 = 0;
  v13 = [_fileTransferSession prepareTemplateAndReturnError:&v18];
  v14 = v18;
  v15 = v14;
  if ((v13 & 1) != 0 || !v14)
  {
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __80__HDSFileTransferService_handleSysDropEnablementProfileRequest_responseHandler___block_invoke;
    v17[3] = &unk_279714238;
    v17[4] = self;
    [_fileTransferSession setProgressHandler:v17];
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __80__HDSFileTransferService_handleSysDropEnablementProfileRequest_responseHandler___block_invoke_2;
    v16[3] = &unk_279714260;
    v16[4] = self;
    [_fileTransferSession setReceivedItemHandler:v16];
    [_fileTransferSession activate];
    objc_autoreleasePoolPop(v9);
    v7[2](v7, 0);
  }

  else
  {
    if (gLogCategory_HDSFileTransfer <= 30 && (gLogCategory_HDSFileTransfer != -1 || _LogCategory_Initialize()))
    {
      [HDSFileTransferService handleSysDropEnablementProfileRequest:responseHandler:];
    }

    (v7)[2](v7, v15);
    objc_autoreleasePoolPop(v9);
  }
}

uint64_t __80__HDSFileTransferService_handleSysDropEnablementProfileRequest_responseHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  v13 = v3;
  if (gLogCategory_HDSFileTransfer <= 30)
  {
    if (gLogCategory_HDSFileTransfer != -1 || (v3 = _LogCategory_Initialize(), v4 = v13, v3))
    {
      v3 = __80__HDSFileTransferService_handleSysDropEnablementProfileRequest_responseHandler___block_invoke_cold_1(v4);
      v4 = v13;
    }
  }

  v5 = *(a1 + 32);
  if (!*(v5 + 8))
  {
    v3 = [v4 type];
    if (v3 == 11)
    {
      v6 = NSErrorF();
      v7 = *(a1 + 32);
      v8 = *(v7 + 16);
      *(v7 + 16) = v6;

      v9 = *(a1 + 32);
      v10 = *(v9 + 48);
      if (v10)
      {
        (*(v10 + 16))(v10, *(v9 + 16), 0);
      }

      [_fileTransferSession invalidate];
      v11 = _fileTransferSession;
      _fileTransferSession = 0;

LABEL_17:
      v4 = v13;
      goto LABEL_18;
    }

    v5 = *(a1 + 32);
    v4 = v13;
  }

  if (*(v5 + 40) && (*(v5 + 24) & 1) == 0 && !*(v5 + 16))
  {
    if (gLogCategory_HDSFileTransfer <= 30 && (gLogCategory_HDSFileTransfer != -1 || _LogCategory_Initialize()))
    {
      __80__HDSFileTransferService_handleSysDropEnablementProfileRequest_responseHandler___block_invoke_cold_2();
    }

    v3 = (*(*(*(a1 + 32) + 40) + 16))();
    goto LABEL_17;
  }

LABEL_18:

  return MEMORY[0x2821F96F8](v3, v4);
}

void __80__HDSFileTransferService_handleSysDropEnablementProfileRequest_responseHandler___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v9 = a2;
  v6 = a3;
  if (gLogCategory_HDSFileTransfer <= 30 && (gLogCategory_HDSFileTransfer != -1 || _LogCategory_Initialize()))
  {
    __80__HDSFileTransferService_handleSysDropEnablementProfileRequest_responseHandler___block_invoke_2_cold_1(v9);
  }

  objc_storeStrong((*(a1 + 32) + 8), a2);
  *(*(a1 + 32) + 24) = 1;
  v7 = *(*(a1 + 32) + 48);
  if (v7)
  {
    (*(v7 + 16))(v7, 0, v9);
  }

  [_fileTransferSession invalidate];
  v8 = _fileTransferSession;
  _fileTransferSession = 0;

  v6[2](v6, 0);
}

- (void)handleSysDropStartFileTransferRequest:(id)a3 responseHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (gLogCategory_HDSFileTransfer <= 30 && (gLogCategory_HDSFileTransfer != -1 || _LogCategory_Initialize()))
  {
    [HDSFileTransferService handleSysDropStartFileTransferRequest:responseHandler:];
  }

  v19 = 0;
  CFStringGetTypeID();
  v8 = CFDictionaryGetTypedValue();
  v9 = objc_autoreleasePoolPush();
  v10 = objc_opt_new();
  v11 = _fileTransferSession;
  _fileTransferSession = v10;

  [_fileTransferSession setTargetID:v8];
  v12 = [MEMORY[0x277CBEA90] mb_dataFromHexadecimalString:@"e905dc700dfc2c3f26692d20346463a2adf3c4c340d4ea661696a0ae736800ec"];
  [_fileTransferSession setPeerPublicKey:v12];

  [_fileTransferSession setFlags:{objc_msgSend(_fileTransferSession, "flags") | 1}];
  [_fileTransferSession setFlags:{objc_msgSend(_fileTransferSession, "flags") | 0x40}];
  [_fileTransferSession setFlags:{objc_msgSend(_fileTransferSession, "flags") | 0x20}];
  [_fileTransferSession setProgressHandlerTimeInterval:1.0];
  if (gLogCategory_HDSFileTransfer <= 30 && (gLogCategory_HDSFileTransfer != -1 || _LogCategory_Initialize()))
  {
    [HDSFileTransferService handleSysDropStartFileTransferRequest:responseHandler:];
  }

  v18 = 0;
  v13 = [_fileTransferSession prepareTemplateAndReturnError:&v18];
  v14 = v18;
  v15 = v14;
  if ((v13 & 1) != 0 || !v14)
  {
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __80__HDSFileTransferService_handleSysDropStartFileTransferRequest_responseHandler___block_invoke;
    v17[3] = &unk_279714238;
    v17[4] = self;
    [_fileTransferSession setProgressHandler:v17];
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __80__HDSFileTransferService_handleSysDropStartFileTransferRequest_responseHandler___block_invoke_2;
    v16[3] = &unk_279714260;
    v16[4] = self;
    [_fileTransferSession setReceivedItemHandler:v16];
    [_fileTransferSession activate];
    objc_autoreleasePoolPop(v9);
    v7[2](v7, 0);
  }

  else
  {
    if (gLogCategory_HDSFileTransfer <= 30 && (gLogCategory_HDSFileTransfer != -1 || _LogCategory_Initialize()))
    {
      [HDSFileTransferService handleSysDropStartFileTransferRequest:responseHandler:];
    }

    (v7)[2](v7, v15);
    objc_autoreleasePoolPop(v9);
  }
}

void __80__HDSFileTransferService_handleSysDropStartFileTransferRequest_responseHandler___block_invoke(uint64_t a1, void *a2)
{
  v10 = a2;
  if (gLogCategory_HDSFileTransfer <= 30)
  {
    if (gLogCategory_HDSFileTransfer != -1 || _LogCategory_Initialize())
    {
      __80__HDSFileTransferService_handleSysDropStartFileTransferRequest_responseHandler___block_invoke_cold_1(v10);
    }

    if (gLogCategory_HDSFileTransfer <= 30)
    {
      if (gLogCategory_HDSFileTransfer != -1 || _LogCategory_Initialize())
      {
        __80__HDSFileTransferService_handleSysDropStartFileTransferRequest_responseHandler___block_invoke_cold_2();
      }

      if (gLogCategory_HDSFileTransfer <= 30 && (gLogCategory_HDSFileTransfer != -1 || _LogCategory_Initialize()))
      {
        __80__HDSFileTransferService_handleSysDropStartFileTransferRequest_responseHandler___block_invoke_cold_3(v10);
      }
    }
  }

  v3 = *(a1 + 32);
  if (!*(v3 + 8))
  {
    if ([v10 type] == 11)
    {
      v4 = NSErrorF();
      v5 = *(a1 + 32);
      v6 = *(v5 + 16);
      *(v5 + 16) = v4;

      v7 = *(a1 + 32);
      v8 = *(v7 + 48);
      if (v8)
      {
        (*(v8 + 16))(v8, *(v7 + 16), 0);
      }

      [_fileTransferSession invalidate];
      v9 = _fileTransferSession;
      _fileTransferSession = 0;

      goto LABEL_23;
    }

    v3 = *(a1 + 32);
  }

  if (*(v3 + 40) && (*(v3 + 24) & 1) == 0 && !*(v3 + 16))
  {
    if (gLogCategory_HDSFileTransfer <= 30 && (gLogCategory_HDSFileTransfer != -1 || _LogCategory_Initialize()))
    {
      __80__HDSFileTransferService_handleSysDropStartFileTransferRequest_responseHandler___block_invoke_cold_4();
    }

    (*(*(*(a1 + 32) + 40) + 16))();
  }

LABEL_23:
}

void __80__HDSFileTransferService_handleSysDropStartFileTransferRequest_responseHandler___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v9 = a2;
  v6 = a3;
  if (gLogCategory_HDSFileTransfer <= 30 && (gLogCategory_HDSFileTransfer != -1 || _LogCategory_Initialize()))
  {
    __80__HDSFileTransferService_handleSysDropStartFileTransferRequest_responseHandler___block_invoke_2_cold_1(v9);
  }

  objc_storeStrong((*(a1 + 32) + 8), a2);
  *(*(a1 + 32) + 24) = 1;
  if (+[HDSDefaults sysDropBuildMode]== 3)
  {
    [*(a1 + 32) cleanupDiagnostics];
    [*(a1 + 32) writeFileToCache:*(*(a1 + 32) + 8)];
  }

  v7 = *(*(a1 + 32) + 48);
  if (v7)
  {
    (*(v7 + 16))(v7, 0, v9);
  }

  [_fileTransferSession invalidate];
  v8 = _fileTransferSession;
  _fileTransferSession = 0;

  v6[2](v6, 0);
}

- (void)cleanupDiagnostics
{
  v27 = *MEMORY[0x277D85DE8];
  v19 = [MEMORY[0x277CCAA00] defaultManager];
  v2 = MEMORY[0x277CBEBC0];
  v3 = +[HDSFileTransferService productionCacheDirectory];
  v4 = [v2 fileURLWithPath:v3 isDirectory:1 relativeToURL:0];

  if (v4)
  {
    if (gLogCategory_HDSFileTransfer <= 30 && (gLogCategory_HDSFileTransfer != -1 || _LogCategory_Initialize()))
    {
      [HDSFileTransferService cleanupDiagnostics];
    }

    v25 = 0;
    v5 = [v19 contentsOfDirectoryAtURL:v4 includingPropertiesForKeys:MEMORY[0x277CBEBF8] options:0 error:&v25];
    v6 = v25;
    if (v5)
    {
      if ([v5 count])
      {
        v16 = v6;
        v17 = v5;
        v18 = v4;
        v23 = 0u;
        v24 = 0u;
        v21 = 0u;
        v22 = 0u;
        v7 = v5;
        v8 = [v7 countByEnumeratingWithState:&v21 objects:v26 count:16];
        if (v8)
        {
          v9 = v8;
          v10 = *v22;
          do
          {
            v11 = 0;
            do
            {
              if (*v22 != v10)
              {
                objc_enumerationMutation(v7);
              }

              v12 = [*(*(&v21 + 1) + 8 * v11) path];
              if ([v12 containsString:@"HomePod"] && objc_msgSend(v12, "containsString:", @"sysdiagnose") && objc_msgSend(v12, "containsString:", @".tar.gz"))
              {
                if (gLogCategory_HDSFileTransfer <= 30 && (gLogCategory_HDSFileTransfer != -1 || _LogCategory_Initialize()))
                {
                  [HDSFileTransferService cleanupDiagnostics];
                }

                v20 = 0;
                [v19 removeItemAtPath:v12 error:&v20];
                v13 = v20;
                if (v13 && gLogCategory_HDSFileTransfer <= 30 && (gLogCategory_HDSFileTransfer != -1 || _LogCategory_Initialize()))
                {
                  [HDSFileTransferService cleanupDiagnostics];
                }
              }

              ++v11;
            }

            while (v9 != v11);
            v14 = [v7 countByEnumeratingWithState:&v21 objects:v26 count:16];
            v9 = v14;
          }

          while (v14);
        }

        v5 = v17;
        v4 = v18;
        v6 = v16;
      }
    }

    else if (gLogCategory_HDSFileTransfer <= 30 && (gLogCategory_HDSFileTransfer != -1 || _LogCategory_Initialize()))
    {
      [HDSFileTransferService cleanupDiagnostics];
    }
  }

  else if (gLogCategory_HDSFileTransfer <= 30 && (gLogCategory_HDSFileTransfer != -1 || _LogCategory_Initialize()))
  {
    [HDSFileTransferService cleanupDiagnostics];
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)writeFileToCache:(id)a3
{
  v4 = MEMORY[0x277CCAA00];
  v5 = a3;
  v6 = objc_alloc_init(v4);
  v7 = [v5 itemURL];

  v8 = [v7 path];

  if (gLogCategory_HDSFileTransfer <= 30 && (gLogCategory_HDSFileTransfer != -1 || _LogCategory_Initialize()))
  {
    [HDSFileTransferService writeFileToCache:];
  }

  v28 = 0;
  v9 = +[HDSFileTransferService productionCacheDirectory];
  v10 = [v6 fileExistsAtPath:v9 isDirectory:&v28];

  if (v10 && (v28 & 1) != 0)
  {
    goto LABEL_14;
  }

  if (gLogCategory_HDSFileTransfer <= 30 && (gLogCategory_HDSFileTransfer != -1 || _LogCategory_Initialize()))
  {
    [HDSFileTransferService writeFileToCache:];
  }

  v11 = +[HDSFileTransferService productionCacheDirectory];
  v12 = [MEMORY[0x277CCAA00] defaultManager];
  v27 = 0;
  v13 = [v12 createDirectoryAtPath:v11 withIntermediateDirectories:1 attributes:0 error:&v27];
  v14 = v27;

  if (v13)
  {
    if (gLogCategory_HDSFileTransfer <= 30 && (gLogCategory_HDSFileTransfer != -1 || _LogCategory_Initialize()))
    {
      [HDSFileTransferService writeFileToCache:];
    }

LABEL_14:
    v15 = [MEMORY[0x277CCAA00] defaultManager];
    v16 = [v15 isReadableFileAtPath:v8];

    if (v16)
    {
      v17 = [objc_alloc(MEMORY[0x277CBEBC0]) initFileURLWithPath:v8 isDirectory:0];
      v18 = +[HDSFileTransferService productionCacheDirectory];
      v19 = [v8 lastPathComponent];
      v20 = v19;
      v21 = &stru_2864DB950;
      if (v19)
      {
        v21 = v19;
      }

      v22 = [v18 stringByAppendingFormat:@"/%@", v21];

      v23 = [objc_alloc(MEMORY[0x277CBEBC0]) initFileURLWithPath:v22 isDirectory:0];
      v24 = [MEMORY[0x277CCAA00] defaultManager];
      v26 = 0;
      [v24 copyItemAtURL:v17 toURL:v23 error:&v26];
      v25 = v26;

      if (v25)
      {
        if (gLogCategory_HDSFileTransfer <= 90 && (gLogCategory_HDSFileTransfer != -1 || _LogCategory_Initialize()))
        {
          [HDSFileTransferService writeFileToCache:];
        }
      }

      else
      {
        if (gLogCategory_HDSFileTransfer <= 30 && (gLogCategory_HDSFileTransfer != -1 || _LogCategory_Initialize()))
        {
          [HDSFileTransferService writeFileToCache:];
        }

        [(HDSFileTransferService *)self markCacheDeletable:v22];
      }
    }

    else if (gLogCategory_HDSFileTransfer <= 90 && (gLogCategory_HDSFileTransfer != -1 || _LogCategory_Initialize()))
    {
      [HDSFileTransferService writeFileToCache:];
    }

    goto LABEL_35;
  }

  if (gLogCategory_HDSFileTransfer <= 90 && (gLogCategory_HDSFileTransfer != -1 || _LogCategory_Initialize()))
  {
    [HDSFileTransferService writeFileToCache:];
  }

LABEL_35:
}

- (void)markCacheDeletable:(id)a3
{
  v3 = a3;
  v5 = 65541;
  v4 = open([v3 UTF8String], 0);
  if (ffsctl(v4, 0xC0084A44uLL, &v5, 0))
  {
    if (gLogCategory_HDSFileTransfer <= 90 && (gLogCategory_HDSFileTransfer != -1 || _LogCategory_Initialize()))
    {
      [(HDSFileTransferService *)v3 markCacheDeletable:?];
    }
  }

  else if (gLogCategory_HDSFileTransfer <= 30 && (gLogCategory_HDSFileTransfer != -1 || _LogCategory_Initialize()))
  {
    [(HDSFileTransferService *)v3 markCacheDeletable:?];
  }

  close(v4);
}

- (void)invalidate
{
  if (_fileTransferSession)
  {
    [_fileTransferSession invalidate];
    v2 = _fileTransferSession;
    _fileTransferSession = 0;
  }
}

uint64_t __80__HDSFileTransferService_handleSysDropEnablementProfileRequest_responseHandler___block_invoke_cold_1(void *a1)
{
  [a1 transferredByteCount];
  [OUTLINED_FUNCTION_1_0() totalByteCount];
  return LogPrintF();
}

void __80__HDSFileTransferService_handleSysDropEnablementProfileRequest_responseHandler___block_invoke_2_cold_1(void *a1)
{
  v3 = [a1 itemURL];
  [v3 path];
  objc_claimAutoreleasedReturnValue();
  v2 = [OUTLINED_FUNCTION_1_0() metadata];
  LogPrintF();
}

uint64_t __80__HDSFileTransferService_handleSysDropStartFileTransferRequest_responseHandler___block_invoke_cold_3(void *a1)
{
  [a1 transferredByteCount];
  [OUTLINED_FUNCTION_1_0() totalByteCount];
  return LogPrintF();
}

void __80__HDSFileTransferService_handleSysDropStartFileTransferRequest_responseHandler___block_invoke_2_cold_1(void *a1)
{
  v3 = [a1 itemURL];
  [v3 path];
  objc_claimAutoreleasedReturnValue();
  v2 = [OUTLINED_FUNCTION_1_0() metadata];
  LogPrintF();
}

- (void)writeFileToCache:.cold.1()
{
  v0 = +[HDSFileTransferService productionCacheDirectory];
  LogPrintF();
}

- (void)writeFileToCache:.cold.2()
{
  +[HDSFileTransferService productionCacheDirectory];
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_2_0();
  LogPrintF();
}

- (void)writeFileToCache:.cold.4()
{
  +[HDSFileTransferService productionCacheDirectory];
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_2_0();
  LogPrintF();
}

- (uint64_t)markCacheDeletable:(void *)a1 .cold.1(void *a1, uint64_t *a2)
{
  [a1 UTF8String];
  v3 = __error();
  strerror(*v3);
  v5 = *a2;
  return LogPrintF();
}

- (uint64_t)markCacheDeletable:(void *)a1 .cold.2(void *a1, uint64_t *a2)
{
  [a1 UTF8String];
  v3 = *a2;
  v4 = __error();
  strerror(*v4);
  return LogPrintF();
}

@end