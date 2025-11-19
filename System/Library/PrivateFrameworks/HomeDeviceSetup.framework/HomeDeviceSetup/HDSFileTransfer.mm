@interface HDSFileTransfer
+ (id)destDirectoryForTargetId:(id)a3;
+ (id)tmpRapportDir;
- (HDSFileTransfer)init;
- (void)_invalidate;
- (void)beginSysDropFileTransfer:(id)a3 pathToFile:(id)a4 withCompletion:(id)a5;
- (void)invalidate:(id)a3;
- (void)sideloadFilesForTargetId:(id)a3 pathToDirectory:(id)a4 withCompletion:(id)a5;
- (void)waitForFilesWithTargetId:(id)a3 withCompletion:(id)a4;
@end

@implementation HDSFileTransfer

+ (id)tmpRapportDir
{
  v2 = NSSearchPathForDirectoriesInDomains(NSCachesDirectory, 1uLL, 1);
  v3 = [v2 objectAtIndex:0];

  return v3;
}

+ (id)destDirectoryForTargetId:(id)a3
{
  v3 = MEMORY[0x277CCACA8];
  v4 = a3;
  v5 = +[HDSFileTransfer tmpRapportDir];
  v6 = [v3 stringWithFormat:@"%@/com.apple.rapport/FileTransfer/%@.rpftd", v5, v4];

  return v6;
}

- (HDSFileTransfer)init
{
  v8.receiver = self;
  v8.super_class = HDSFileTransfer;
  v2 = [(HDSFileTransfer *)&v8 init];
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

- (void)waitForFilesWithTargetId:(id)a3 withCompletion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = objc_autoreleasePoolPush();
  v9 = objc_opt_new();
  v10 = _fileTransferSession;
  _fileTransferSession = v9;

  [_fileTransferSession setTargetID:v6];
  v11 = [MEMORY[0x277CBEA90] mb_dataFromHexadecimalString:@"e905dc700dfc2c3f26692d20346463a2adf3c4c340d4ea661696a0ae736800ec"];
  [_fileTransferSession setPeerPublicKey:v11];

  [_fileTransferSession setFlags:{objc_msgSend(_fileTransferSession, "flags") | 1}];
  [_fileTransferSession setFlags:{objc_msgSend(_fileTransferSession, "flags") | 0x40}];
  [_fileTransferSession setFlags:{objc_msgSend(_fileTransferSession, "flags") | 0x20}];
  if (gLogCategory_HDSFileTransfer <= 30 && (gLogCategory_HDSFileTransfer != -1 || _LogCategory_Initialize()))
  {
    [HDSFileTransfer waitForFilesWithTargetId:withCompletion:];
  }

  v21 = 0;
  v12 = [_fileTransferSession prepareTemplateAndReturnError:&v21];
  v13 = v21;
  if (v12)
  {
    v14 = MEMORY[0x277D85DD0];
    v15 = 3221225472;
    v16 = __59__HDSFileTransfer_waitForFilesWithTargetId_withCompletion___block_invoke;
    v17 = &unk_279714108;
    v18 = self;
    v20 = v7;
    v19 = v13;
    [_fileTransferSession setProgressHandler:&v14];
    [_fileTransferSession setReceivedItemHandler:{&__block_literal_global_0, v14, v15, v16, v17, v18}];
    [_fileTransferSession activate];
  }

  else
  {
    (*(v7 + 2))(v7, v13);
  }

  objc_autoreleasePoolPop(v8);
}

void __59__HDSFileTransfer_waitForFilesWithTargetId_withCompletion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (gLogCategory_HDSFileTransfer <= 30 && (gLogCategory_HDSFileTransfer != -1 || _LogCategory_Initialize()))
  {
    __59__HDSFileTransfer_waitForFilesWithTargetId_withCompletion___block_invoke_cold_1(v3);
  }

  if ([v3 type] >= 11)
  {
    v4 = *(a1 + 32);
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __59__HDSFileTransfer_waitForFilesWithTargetId_withCompletion___block_invoke_2;
    v5[3] = &unk_2797140E0;
    v7 = *(a1 + 48);
    v6 = *(a1 + 40);
    [v4 invalidate:v5];
  }
}

uint64_t __59__HDSFileTransfer_waitForFilesWithTargetId_withCompletion___block_invoke_2(uint64_t a1)
{
  if (gLogCategory_HDSFileTransfer <= 30 && (gLogCategory_HDSFileTransfer != -1 || _LogCategory_Initialize()))
  {
    __59__HDSFileTransfer_waitForFilesWithTargetId_withCompletion___block_invoke_2_cold_1();
  }

  v2 = *(a1 + 32);
  v3 = *(*(a1 + 40) + 16);

  return v3();
}

void __59__HDSFileTransfer_waitForFilesWithTargetId_withCompletion___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v4 = a3;
  if (gLogCategory_HDSFileTransfer <= 30 && (gLogCategory_HDSFileTransfer != -1 || _LogCategory_Initialize()))
  {
    __59__HDSFileTransfer_waitForFilesWithTargetId_withCompletion___block_invoke_3_cold_1(v5);
  }

  v4[2](v4, 0);
}

- (void)beginSysDropFileTransfer:(id)a3 pathToFile:(id)a4 withCompletion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = objc_autoreleasePoolPush();
  v12 = objc_opt_new();
  v13 = _fileTransferSession;
  _fileTransferSession = v12;

  [_fileTransferSession setTargetID:v8];
  v14 = [MEMORY[0x277CBEA90] mb_dataFromHexadecimalString:@"4a631f38b46cc4c9a28685d7bbfab4ec1bf5611f43574dc73a3075251164ade8"];
  [_fileTransferSession setPeerPublicKey:v14];

  [_fileTransferSession setFlags:{objc_msgSend(_fileTransferSession, "flags") | 0x40}];
  [_fileTransferSession setFlags:{objc_msgSend(_fileTransferSession, "flags") | 0x20}];
  if (gLogCategory_HDSFileTransfer <= 30 && (gLogCategory_HDSFileTransfer != -1 || _LogCategory_Initialize()))
  {
    [HDSFileTransfer beginSysDropFileTransfer:pathToFile:withCompletion:];
  }

  v34 = 0;
  v15 = [_fileTransferSession prepareTemplateAndReturnError:&v34];
  v16 = v34;
  if (v15)
  {
    v27 = v11;
    [_fileTransferSession setProgressHandler:&__block_literal_global_33];
    v31[0] = MEMORY[0x277D85DD0];
    v31[1] = 3221225472;
    v31[2] = __70__HDSFileTransfer_beginSysDropFileTransfer_pathToFile_withCompletion___block_invoke_2;
    v31[3] = &unk_279714170;
    v31[4] = self;
    v17 = v10;
    v33 = v17;
    v32 = v16;
    [_fileTransferSession setCompletionHandler:v31];
    v28 = v9;
    v18 = [objc_alloc(MEMORY[0x277CBEBC0]) initWithString:v9];
    if (gLogCategory_HDSFileTransfer <= 30 && (gLogCategory_HDSFileTransfer != -1 || _LogCategory_Initialize()))
    {
      [HDSFileTransfer beginSysDropFileTransfer:v18 pathToFile:? withCompletion:?];
    }

    v19 = [MEMORY[0x277CCAA00] defaultManager];
    v20 = [v18 path];
    v21 = [v19 fileExistsAtPath:v20 isDirectory:0];

    if (v21)
    {
      v22 = objc_opt_new();
      v23 = objc_alloc(MEMORY[0x277CBEBC0]);
      v24 = [v18 path];
      v25 = [v23 initFileURLWithPath:v24 isDirectory:0];
      [v22 setItemURL:v25];

      v26 = [v18 lastPathComponent];
      [v22 setFilename:v26];

      v29[0] = MEMORY[0x277D85DD0];
      v29[1] = 3221225472;
      v29[2] = __70__HDSFileTransfer_beginSysDropFileTransfer_pathToFile_withCompletion___block_invoke_4;
      v29[3] = &unk_279714198;
      v30 = v18;
      [v22 setCompletionHandler:v29];
      [_fileTransferSession addItem:v22];
      [_fileTransferSession activate];
    }

    else
    {
      if (gLogCategory_HDSFileTransfer <= 90 && (gLogCategory_HDSFileTransfer != -1 || _LogCategory_Initialize()))
      {
        [HDSFileTransfer beginSysDropFileTransfer:pathToFile:withCompletion:];
      }

      v22 = NSErrorF();
      (*(v17 + 2))(v17, v22);
    }

    v11 = v27;

    v9 = v28;
  }

  else
  {
    (*(v10 + 2))(v10, v16);
  }

  objc_autoreleasePoolPop(v11);
}

uint64_t __70__HDSFileTransfer_beginSysDropFileTransfer_pathToFile_withCompletion___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = v2;
  if (gLogCategory_HDSFileTransfer <= 30)
  {
    v5 = v2;
    if (gLogCategory_HDSFileTransfer != -1 || (v2 = _LogCategory_Initialize(), v3 = v5, v2))
    {
      v2 = __70__HDSFileTransfer_beginSysDropFileTransfer_pathToFile_withCompletion___block_invoke_cold_1(v3);
      v3 = v5;
    }

    if (gLogCategory_HDSFileTransfer <= 30)
    {
      if (gLogCategory_HDSFileTransfer != -1 || (v2 = _LogCategory_Initialize(), v3 = v5, v2))
      {
        v2 = __70__HDSFileTransfer_beginSysDropFileTransfer_pathToFile_withCompletion___block_invoke_cold_2();
        v3 = v5;
      }
    }
  }

  return MEMORY[0x2821F96F8](v2, v3);
}

void __70__HDSFileTransfer_beginSysDropFileTransfer_pathToFile_withCompletion___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __70__HDSFileTransfer_beginSysDropFileTransfer_pathToFile_withCompletion___block_invoke_3;
  v3[3] = &unk_2797140E0;
  v5 = *(a1 + 48);
  v4 = *(a1 + 40);
  [v2 invalidate:v3];
}

uint64_t __70__HDSFileTransfer_beginSysDropFileTransfer_pathToFile_withCompletion___block_invoke_3(uint64_t a1)
{
  if (gLogCategory_HDSFileTransfer <= 30 && (gLogCategory_HDSFileTransfer != -1 || _LogCategory_Initialize()))
  {
    __70__HDSFileTransfer_beginSysDropFileTransfer_pathToFile_withCompletion___block_invoke_3_cold_1();
  }

  v2 = *(a1 + 32);
  v3 = *(*(a1 + 40) + 16);

  return v3();
}

void __70__HDSFileTransfer_beginSysDropFileTransfer_pathToFile_withCompletion___block_invoke_4(uint64_t a1, void *a2)
{
  v6 = a2;
  if (v6)
  {
    if (gLogCategory_HDSFileTransfer > 90 || gLogCategory_HDSFileTransfer == -1 && !_LogCategory_Initialize())
    {
      goto LABEL_11;
    }

    v3 = [*(a1 + 32) path];
    v4 = v3;
    v5 = v6;
    LogPrintF();
LABEL_5:

    goto LABEL_11;
  }

  if (gLogCategory_HDSFileTransfer <= 30 && (gLogCategory_HDSFileTransfer != -1 || _LogCategory_Initialize()))
  {
    __70__HDSFileTransfer_beginSysDropFileTransfer_pathToFile_withCompletion___block_invoke_4_cold_1(a1, &v7);
    v3 = v7;
    goto LABEL_5;
  }

LABEL_11:
  [_fileTransferSession finish];
}

- (void)sideloadFilesForTargetId:(id)a3 pathToDirectory:(id)a4 withCompletion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = objc_autoreleasePoolPush();
  v12 = objc_opt_new();
  v13 = _fileTransferSession;
  _fileTransferSession = v12;

  [_fileTransferSession setTargetID:v8];
  v14 = [MEMORY[0x277CBEA90] mb_dataFromHexadecimalString:@"4a631f38b46cc4c9a28685d7bbfab4ec1bf5611f43574dc73a3075251164ade8"];
  [_fileTransferSession setPeerPublicKey:v14];

  [_fileTransferSession setFlags:{objc_msgSend(_fileTransferSession, "flags") | 0x40}];
  [_fileTransferSession setFlags:{objc_msgSend(_fileTransferSession, "flags") | 0x20}];
  if (gLogCategory_HDSFileTransfer <= 30 && (gLogCategory_HDSFileTransfer != -1 || _LogCategory_Initialize()))
  {
    [HDSFileTransfer sideloadFilesForTargetId:pathToDirectory:withCompletion:];
  }

  v30 = 0;
  v15 = [_fileTransferSession prepareTemplateAndReturnError:&v30];
  v16 = v30;
  if (v15)
  {
    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = __75__HDSFileTransfer_sideloadFilesForTargetId_pathToDirectory_withCompletion___block_invoke;
    v27[3] = &unk_279714170;
    v27[4] = self;
    v29 = v10;
    v28 = v16;
    [_fileTransferSession setCompletionHandler:v27];
    v17 = [MEMORY[0x277CCAA00] defaultManager];
    v18 = [v17 subpathsAtPath:v9];

    v19 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v20 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __75__HDSFileTransfer_sideloadFilesForTargetId_pathToDirectory_withCompletion___block_invoke_3;
    v23[3] = &unk_2797141E8;
    v24 = v9;
    v25 = v20;
    v21 = v19;
    v26 = v21;
    v22 = v20;
    [v18 enumerateObjectsUsingBlock:v23];
    if (gLogCategory_HDSFileTransfer <= 30 && (gLogCategory_HDSFileTransfer != -1 || _LogCategory_Initialize()))
    {
      [HDSFileTransfer sideloadFilesForTargetId:v21 pathToDirectory:? withCompletion:?];
    }

    [_fileTransferSession addItems:v21];
    [_fileTransferSession activate];
  }

  else
  {
    (*(v10 + 2))(v10, v16);
  }

  objc_autoreleasePoolPop(v11);
}

void __75__HDSFileTransfer_sideloadFilesForTargetId_pathToDirectory_withCompletion___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __75__HDSFileTransfer_sideloadFilesForTargetId_pathToDirectory_withCompletion___block_invoke_2;
  v3[3] = &unk_2797140E0;
  v5 = *(a1 + 48);
  v4 = *(a1 + 40);
  [v2 invalidate:v3];
}

uint64_t __75__HDSFileTransfer_sideloadFilesForTargetId_pathToDirectory_withCompletion___block_invoke_2(uint64_t a1)
{
  if (gLogCategory_HDSFileTransfer <= 30 && (gLogCategory_HDSFileTransfer != -1 || _LogCategory_Initialize()))
  {
    __75__HDSFileTransfer_sideloadFilesForTargetId_pathToDirectory_withCompletion___block_invoke_2_cold_1();
  }

  v2 = *(a1 + 32);
  v3 = *(*(a1 + 40) + 16);

  return v3();
}

void __75__HDSFileTransfer_sideloadFilesForTargetId_pathToDirectory_withCompletion___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@/%@", *(a1 + 32), v3];
  v13 = 1;
  v5 = [MEMORY[0x277CCAA00] defaultManager];
  v6 = [v5 fileExistsAtPath:v4 isDirectory:&v13];
  v7 = v13;

  if (!v6 || (v7 & 1) == 0)
  {
    [*(a1 + 40) setObject:@"PENDING" forKey:v4];
    v8 = objc_opt_new();
    v9 = [objc_alloc(MEMORY[0x277CBEBC0]) initFileURLWithPath:v4 isDirectory:0];
    [v8 setItemURL:v9];

    [v8 setFilename:v3];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __75__HDSFileTransfer_sideloadFilesForTargetId_pathToDirectory_withCompletion___block_invoke_4;
    v10[3] = &unk_2797141C0;
    v11 = v4;
    v12 = *(a1 + 40);
    [v8 setCompletionHandler:v10];
    if (gLogCategory_HDSFileTransfer <= 30 && (gLogCategory_HDSFileTransfer != -1 || _LogCategory_Initialize()))
    {
      __75__HDSFileTransfer_sideloadFilesForTargetId_pathToDirectory_withCompletion___block_invoke_3_cold_1(v8);
    }

    [*(a1 + 48) addObject:v8];
  }
}

void __75__HDSFileTransfer_sideloadFilesForTargetId_pathToDirectory_withCompletion___block_invoke_4(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    if (gLogCategory_HDSFileTransfer > 90)
    {
      goto LABEL_9;
    }

    if (gLogCategory_HDSFileTransfer != -1 || _LogCategory_Initialize())
    {
      v12 = *(a1 + 32);
      v13 = v3;
      LogPrintF();
    }
  }

  if (gLogCategory_HDSFileTransfer <= 30 && (gLogCategory_HDSFileTransfer != -1 || _LogCategory_Initialize()))
  {
    __75__HDSFileTransfer_sideloadFilesForTargetId_pathToDirectory_withCompletion___block_invoke_4_cold_1(a1);
  }

LABEL_9:
  [*(a1 + 40) setObject:@"COMPLETED" forKey:{*(a1 + 32), v12, v13}];
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = *(a1 + 40);
  v5 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v15;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [*(a1 + 40) valueForKey:*(*(&v14 + 1) + 8 * i)];
        v10 = [v9 isEqualToString:@"PENDING"];

        if (v10)
        {

          goto LABEL_19;
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  [_fileTransferSession finish];
LABEL_19:

  v11 = *MEMORY[0x277D85DE8];
}

- (void)invalidate:(id)a3
{
  v4 = a3;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __30__HDSFileTransfer_invalidate___block_invoke;
  v7[3] = &unk_279714210;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(dispatchQueue, v7);
}

uint64_t __30__HDSFileTransfer_invalidate___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _invalidate];
  v2 = *(*(a1 + 40) + 16);

  return v2();
}

- (void)_invalidate
{
  if (_invalidateCalled)
  {
    if (gLogCategory_HDSFileTransfer <= 115 && (gLogCategory_HDSFileTransfer != -1 || _LogCategory_Initialize()))
    {
      [HDSFileTransfer _invalidate];
    }
  }

  else
  {
    if (gLogCategory_HDSFileTransfer <= 30 && (gLogCategory_HDSFileTransfer != -1 || _LogCategory_Initialize()))
    {
      [HDSFileTransfer _invalidate];
    }

    _invalidateCalled = 1;
    [_fileTransferSession invalidate];
    v2 = _fileTransferSession;
    _fileTransferSession = 0;
  }
}

void __59__HDSFileTransfer_waitForFilesWithTargetId_withCompletion___block_invoke_3_cold_1(void *a1)
{
  v3 = [a1 itemURL];
  [v3 path];
  objc_claimAutoreleasedReturnValue();
  v2 = [OUTLINED_FUNCTION_1_0() metadata];
  LogPrintF();
}

- (void)beginSysDropFileTransfer:(void *)a1 pathToFile:withCompletion:.cold.2(void *a1)
{
  [a1 path];
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_2_0();
  LogPrintF();
}

uint64_t __70__HDSFileTransfer_beginSysDropFileTransfer_pathToFile_withCompletion___block_invoke_4_cold_1(uint64_t a1, uint64_t *a2)
{
  *a2 = [*(a1 + 32) path];
  return LogPrintF();
}

void __75__HDSFileTransfer_sideloadFilesForTargetId_pathToDirectory_withCompletion___block_invoke_3_cold_1(void *a1)
{
  [a1 itemURL];
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_2_0();
  LogPrintF();
}

@end