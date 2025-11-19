@interface IXPromisedStreamingZipTransfer
- (BOOL)useProgressFromSZExtractor;
- (IXPromisedStreamingZipTransfer)initWithCoder:(id)a3;
- (IXPromisedStreamingZipTransfer)initWithName:(id)a3 client:(unint64_t)a4 streamingZipOptions:(id)a5 archiveSize:(unint64_t)a6 diskSpaceNeeded:(unint64_t)a7;
- (IXPromisedStreamingZipTransfer)initWithName:(id)a3 client:(unint64_t)a4 streamingZipOptions:(id)a5 archiveSize:(unint64_t)a6 diskSpaceNeeded:(unint64_t)a7 location:(id)a8;
- (IXPromisedStreamingZipTransfer)initWithSeed:(id)a3;
- (SZExtractorDelegate)extractorDelegate;
- (unint64_t)archiveBytesConsumed;
- (void)_prepareForExtractionToPath:(id)a3 completionBlock:(id)a4;
- (void)addArchiveBytesConsumed:(unint64_t)a3;
- (void)encodeWithCoder:(id)a3;
- (void)extractionCompleteAtArchivePath:(id)a3;
- (void)extractionEnteredPassThroughMode;
- (void)finishStreamWithCompletionBlock:(id)a3;
- (void)prepareForExtraction:(id)a3;
- (void)prepareForExtractionToPath:(id)a3 completionBlock:(id)a4;
- (void)resetWithCompletion:(id)a3;
- (void)setArchiveBytesConsumed:(unint64_t)a3;
- (void)setExtractionProgress:(double)a3;
- (void)setExtractorDelegate:(id)a3;
- (void)supplyBytes:(id)a3 withCompletionBlock:(id)a4;
- (void)suspendStreamWithCompletionBlock:(id)a3;
- (void)terminateStreamWithError:(id)a3 completionBlock:(id)a4;
@end

@implementation IXPromisedStreamingZipTransfer

- (IXPromisedStreamingZipTransfer)initWithCoder:(id)a3
{
  v22 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v17.receiver = self;
  v17.super_class = IXPromisedStreamingZipTransfer;
  v5 = [(IXOwnedDataPromise *)&v17 initWithCoder:v4];
  if (!v5)
  {
    goto LABEL_4;
  }

  v6 = objc_alloc(MEMORY[0x1E69D4DD8]);
  v7 = [(IXDataPromise *)v5 seed];
  v8 = [v7 szOptions];
  v9 = [v6 initWithOptions:v8];
  [(IXPromisedStreamingZipTransfer *)v5 setExtractor:v9];

  v10 = [(IXPromisedStreamingZipTransfer *)v5 extractor];

  if (v10)
  {
    v5->_needsConsume = [v4 decodeBoolForKey:@"needsConsume"];
LABEL_4:
    v11 = v5;
    goto LABEL_8;
  }

  v12 = IXGetLoggingHandle(kIXLoggingSubsystem);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = [(IXDataPromise *)v5 seed];
    v14 = [v13 szOptions];
    *buf = 136315394;
    v19 = "[IXPromisedStreamingZipTransfer initWithCoder:]";
    v20 = 2112;
    v21 = v14;
    _os_log_impl(&dword_1DA47A000, v12, OS_LOG_TYPE_DEFAULT, "%s: [SZExtractor initWithOptions:] returned nil for options %@", buf, 0x16u);
  }

  v11 = 0;
LABEL_8:

  v15 = *MEMORY[0x1E69E9840];
  return v11;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = IXPromisedStreamingZipTransfer;
  v4 = a3;
  [(IXDataPromise *)&v5 encodeWithCoder:v4];
  [v4 encodeBool:-[IXPromisedStreamingZipTransfer needsConsume](self forKey:{"needsConsume", v5.receiver, v5.super_class), @"needsConsume"}];
}

- (IXPromisedStreamingZipTransfer)initWithName:(id)a3 client:(unint64_t)a4 streamingZipOptions:(id)a5 archiveSize:(unint64_t)a6 diskSpaceNeeded:(unint64_t)a7
{
  v12 = a5;
  v13 = a3;
  v14 = objc_opt_new();
  v15 = [(IXPromisedStreamingZipTransfer *)self initWithName:v13 client:a4 streamingZipOptions:v12 archiveSize:a6 diskSpaceNeeded:a7 location:v14];

  return v15;
}

- (IXPromisedStreamingZipTransfer)initWithName:(id)a3 client:(unint64_t)a4 streamingZipOptions:(id)a5 archiveSize:(unint64_t)a6 diskSpaceNeeded:(unint64_t)a7 location:(id)a8
{
  v38 = *MEMORY[0x1E69E9840];
  v14 = a3;
  v15 = a5;
  v16 = a8;
  v35.receiver = self;
  v35.super_class = IXPromisedStreamingZipTransfer;
  v17 = [(IXOwnedDataPromise *)&v35 initWithName:v14 client:a4 diskSpaceNeeded:a7 location:v16];
  v18 = v17;
  if (!v17)
  {
LABEL_11:
    v24 = v18;
    goto LABEL_13;
  }

  v19 = [(IXDataPromise *)v17 seed];
  [v19 setArchiveSizeBytes:a6];

  v20 = [(IXDataPromise *)v18 seed];
  [v20 setSzOptions:v15];

  v21 = [objc_alloc(MEMORY[0x1E69D4DD8]) initWithOptions:v15];
  [(IXPromisedStreamingZipTransfer *)v18 setExtractor:v21];

  v22 = [(IXPromisedStreamingZipTransfer *)v18 extractor];
  LODWORD(v21) = v22 == 0;

  if (v21)
  {
    v27 = IXGetLoggingHandle(kIXLoggingSubsystem);
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      *&buf[4] = "[IXPromisedStreamingZipTransfer initWithName:client:streamingZipOptions:archiveSize:diskSpaceNeeded:location:]";
      *&buf[12] = 2112;
      *&buf[14] = v15;
      _os_log_impl(&dword_1DA47A000, v27, OS_LOG_TYPE_DEFAULT, "%s: [SZExtractor initWithOptions:] returned nil for options %@", buf, 0x16u);
    }

    goto LABEL_12;
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x2020000000;
  v37 = 0;
  v23 = +[IXServerConnection sharedConnection];
  v34[0] = MEMORY[0x1E69E9820];
  v34[1] = 3221225472;
  v34[2] = __111__IXPromisedStreamingZipTransfer_initWithName_client_streamingZipOptions_archiveSize_diskSpaceNeeded_location___block_invoke;
  v34[3] = &unk_1E85C5560;
  v34[4] = buf;
  v24 = [v23 synchronousRemoteObjectProxyWithErrorHandler:v34];

  if (v24)
  {
    v25 = [(IXDataPromise *)v18 seed];
    v31[0] = MEMORY[0x1E69E9820];
    v31[1] = 3221225472;
    v31[2] = __111__IXPromisedStreamingZipTransfer_initWithName_client_streamingZipOptions_archiveSize_diskSpaceNeeded_location___block_invoke_8;
    v31[3] = &unk_1E85C65E8;
    v33 = buf;
    v26 = v18;
    v32 = v26;
    [(IXPromisedStreamingZipTransfer *)v24 _remote_createStreamingZipTransferDataPromiseWithSeed:v25 completion:v31];

    if (*(*&buf[8] + 24))
    {

      _Block_object_dispose(buf, 8);
LABEL_12:
      v24 = 0;
      goto LABEL_13;
    }

    v28 = [(IXOwnedDataPromise *)v26 consumeSandboxExtensionWithError:0];

    _Block_object_dispose(buf, 8);
    if (!v28)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  _Block_object_dispose(buf, 8);
LABEL_13:

  v29 = *MEMORY[0x1E69E9840];
  return v24;
}

void __111__IXPromisedStreamingZipTransfer_initWithName_client_streamingZipOptions_archiveSize_diskSpaceNeeded_location___block_invoke(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = IXGetLoggingHandle(kIXLoggingSubsystem);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315394;
    v7 = "[IXPromisedStreamingZipTransfer initWithName:client:streamingZipOptions:archiveSize:diskSpaceNeeded:location:]_block_invoke";
    v8 = 2112;
    v9 = v3;
    _os_log_impl(&dword_1DA47A000, v4, OS_LOG_TYPE_DEFAULT, "%s: Failed to contact daemon: %@", &v6, 0x16u);
  }

  *(*(*(a1 + 32) + 8) + 24) = 1;
  v5 = *MEMORY[0x1E69E9840];
}

void __111__IXPromisedStreamingZipTransfer_initWithName_client_streamingZipOptions_archiveSize_diskSpaceNeeded_location___block_invoke_8(uint64_t a1, uint64_t a2, void *a3)
{
  v12 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (v5)
  {
    v6 = IXGetLoggingHandle(kIXLoggingSubsystem);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 136315394;
      v9 = "[IXPromisedStreamingZipTransfer initWithName:client:streamingZipOptions:archiveSize:diskSpaceNeeded:location:]_block_invoke";
      v10 = 2112;
      v11 = v5;
      _os_log_impl(&dword_1DA47A000, v6, OS_LOG_TYPE_DEFAULT, "%s: Failed tell daemon to set up StreamingZip transfer promise: %@", &v8, 0x16u);
    }

    *(*(*(a1 + 40) + 8) + 24) = 1;
  }

  else
  {
    [*(a1 + 32) _updateInitWithSeed:a2 notifyDaemon:0];
  }

  v7 = *MEMORY[0x1E69E9840];
}

- (BOOL)useProgressFromSZExtractor
{
  v2 = [(IXDataPromise *)self seed];
  v3 = [v2 archiveSizeBytes] == 0;

  return v3;
}

- (void)prepareForExtraction:(id)a3
{
  v4 = a3;
  [(IXPromisedStreamingZipTransfer *)self setNeedsConsume:0];
  v5 = [(IXOwnedDataPromise *)self stagedPath];
  v6 = [v5 path];

  if (v6)
  {
    [(IXPromisedStreamingZipTransfer *)self _prepareForExtractionToPath:v6 completionBlock:v4];
  }

  else
  {
    v7 = IXGetLoggingHandle(kIXLoggingSubsystem);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [IXPromisedStreamingZipTransfer prepareForExtraction:];
    }

    v9 = _CreateError("[IXPromisedStreamingZipTransfer prepareForExtraction:]", 134, @"IXErrorDomain", 1uLL, 0, 0, @"self.stagedPath.path was unexpectedly nil!", v8, v10);
    [(IXDataPromise *)self cancelForReason:v9 client:15 error:0];
    v4[2](v4, 0, v9);
  }
}

- (void)prepareForExtractionToPath:(id)a3 completionBlock:(id)a4
{
  v6 = a4;
  v7 = a3;
  [(IXPromisedStreamingZipTransfer *)self setNeedsConsume:1];
  [(IXPromisedStreamingZipTransfer *)self _prepareForExtractionToPath:v7 completionBlock:v6];
}

- (void)_prepareForExtractionToPath:(id)a3 completionBlock:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(IXPromisedStreamingZipTransfer *)self extractor];

  if (v8)
  {
    v9 = [(IXPromisedStreamingZipTransfer *)self extractor];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __78__IXPromisedStreamingZipTransfer__prepareForExtractionToPath_completionBlock___block_invoke;
    v13[3] = &unk_1E85C5650;
    v13[4] = self;
    v14 = v7;
    [v9 prepareForExtractionToPath:v6 completionBlock:v13];
  }

  else
  {
    v10 = IXGetLoggingHandle(kIXLoggingSubsystem);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [IXPromisedStreamingZipTransfer _prepareForExtractionToPath:completionBlock:];
    }

    v12 = _CreateError("[IXPromisedStreamingZipTransfer _prepareForExtractionToPath:completionBlock:]", 152, @"IXErrorDomain", 1uLL, 0, 0, @"self.extractor was unexpectedly nil!", v11, v13[0]);
    [(IXDataPromise *)self cancelForReason:v12 client:15 error:0];
    (*(v7 + 2))(v7, 0, v12);
  }
}

void __78__IXPromisedStreamingZipTransfer__prepareForExtractionToPath_completionBlock___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = *(a1 + 32);
  if (v4)
  {
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __78__IXPromisedStreamingZipTransfer__prepareForExtractionToPath_completionBlock___block_invoke_2;
    v9[3] = &unk_1E85C56A0;
    v11 = *(a1 + 40);
    v10 = v4;
    [v5 cancelForReason:v10 client:15 completion:v9];
  }

  else
  {
    v6 = [*(a1 + 32) extractor];
    [v6 setExtractorDelegate:v5];

    v7 = [*(a1 + 32) useProgressFromSZExtractor];
    v8 = [*(a1 + 32) extractor];
    [v8 setActiveExtractorDelegateMethods:v7];

    (*(*(a1 + 40) + 16))();
  }
}

void __78__IXPromisedStreamingZipTransfer__prepareForExtractionToPath_completionBlock___block_invoke_2(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (v3)
  {
    v4 = IXGetLoggingHandle(kIXLoggingSubsystem);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 136315394;
      v8 = "[IXPromisedStreamingZipTransfer _prepareForExtractionToPath:completionBlock:]_block_invoke_2";
      v9 = 2112;
      v10 = v3;
      _os_log_impl(&dword_1DA47A000, v4, OS_LOG_TYPE_DEFAULT, "%s: Failed to cancel for reason: %@", &v7, 0x16u);
    }
  }

  else
  {
    v5 = *(a1 + 32);
  }

  (*(*(a1 + 40) + 16))();

  v6 = *MEMORY[0x1E69E9840];
}

- (void)supplyBytes:(id)a3 withCompletionBlock:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([(IXDataPromise *)self localIsComplete])
  {
    v8 = IXGetLoggingHandle(kIXLoggingSubsystem);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [IXPromisedStreamingZipTransfer supplyBytes:withCompletionBlock:];
    }

    v10 = _CreateError("[IXPromisedStreamingZipTransfer supplyBytes:withCompletionBlock:]", 187, @"IXErrorDomain", 4uLL, 0, 0, @"-supplyBytes:withCompletionBlock: called after promise was complete", v9, v16);
    goto LABEL_6;
  }

  v10 = [(IXDataPromise *)self localError];
  if (v10)
  {
LABEL_6:
    v7[2](v7, v10, 1);
    goto LABEL_7;
  }

  v11 = [(IXPromisedStreamingZipTransfer *)self extractor];

  if (v11)
  {
    v12 = [(IXPromisedStreamingZipTransfer *)self extractor];
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __66__IXPromisedStreamingZipTransfer_supplyBytes_withCompletionBlock___block_invoke;
    v17[3] = &unk_1E85C6610;
    v17[4] = self;
    v19 = v7;
    v18 = v6;
    [v12 supplyBytes:v18 withCompletionBlock:v17];
  }

  else
  {
    v13 = IXGetLoggingHandle(kIXLoggingSubsystem);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [IXPromisedStreamingZipTransfer supplyBytes:withCompletionBlock:];
    }

    v15 = _CreateError("[IXPromisedStreamingZipTransfer supplyBytes:withCompletionBlock:]", 199, @"IXErrorDomain", 1uLL, 0, 0, @"self.extractor was unexpectedly nil!", v14, v16);
    [(IXDataPromise *)self cancelForReason:v15 client:15 error:0];
    v7[2](v7, v15, 1);
  }

LABEL_7:
}

void __66__IXPromisedStreamingZipTransfer_supplyBytes_withCompletionBlock___block_invoke(id *a1, void *a2)
{
  v3 = a2;
  v4 = a1[4];
  if (v3)
  {
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __66__IXPromisedStreamingZipTransfer_supplyBytes_withCompletionBlock___block_invoke_2;
    v5[3] = &unk_1E85C56A0;
    v7 = a1[6];
    v6 = v3;
    [v4 cancelForReason:v6 client:15 completion:v5];
  }

  else
  {
    if (([a1[4] useProgressFromSZExtractor] & 1) == 0)
    {
      [a1[4] addArchiveBytesConsumed:{objc_msgSend(a1[5], "length")}];
    }

    (*(a1[6] + 2))();
  }
}

void __66__IXPromisedStreamingZipTransfer_supplyBytes_withCompletionBlock___block_invoke_2(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (v3)
  {
    v4 = IXGetLoggingHandle(kIXLoggingSubsystem);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 136315394;
      v8 = "[IXPromisedStreamingZipTransfer supplyBytes:withCompletionBlock:]_block_invoke_2";
      v9 = 2112;
      v10 = v3;
      _os_log_impl(&dword_1DA47A000, v4, OS_LOG_TYPE_DEFAULT, "%s: Failed to cancel for reason: %@", &v7, 0x16u);
    }
  }

  else
  {
    v5 = *(a1 + 32);
  }

  (*(*(a1 + 40) + 16))();

  v6 = *MEMORY[0x1E69E9840];
}

- (void)suspendStreamWithCompletionBlock:(id)a3
{
  v4 = a3;
  v5 = [(IXPromisedStreamingZipTransfer *)self extractor];

  if (v5)
  {
    v6 = [(IXPromisedStreamingZipTransfer *)self extractor];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __67__IXPromisedStreamingZipTransfer_suspendStreamWithCompletionBlock___block_invoke;
    v10[3] = &unk_1E85C5650;
    v10[4] = self;
    v11 = v4;
    [v6 suspendStreamWithCompletionBlock:v10];
  }

  else
  {
    v7 = IXGetLoggingHandle(kIXLoggingSubsystem);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [IXPromisedStreamingZipTransfer suspendStreamWithCompletionBlock:];
    }

    v9 = _CreateError("[IXPromisedStreamingZipTransfer suspendStreamWithCompletionBlock:]", 227, @"IXErrorDomain", 1uLL, 0, 0, @"self.extractor was unexpectedly nil!", v8, v10[0]);
    [(IXDataPromise *)self cancelForReason:v9 client:15 error:0];
    (*(v4 + 2))(v4, 0, v9);
  }
}

void __67__IXPromisedStreamingZipTransfer_suspendStreamWithCompletionBlock___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  if (v4)
  {
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __67__IXPromisedStreamingZipTransfer_suspendStreamWithCompletionBlock___block_invoke_2;
    v6[3] = &unk_1E85C56A0;
    v5 = *(a1 + 32);
    v8 = *(a1 + 40);
    v7 = v4;
    [v5 cancelForReason:v7 client:15 completion:v6];
  }

  else
  {
    (*(*(a1 + 40) + 16))();
  }
}

void __67__IXPromisedStreamingZipTransfer_suspendStreamWithCompletionBlock___block_invoke_2(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (v3)
  {
    v4 = IXGetLoggingHandle(kIXLoggingSubsystem);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 136315394;
      v8 = "[IXPromisedStreamingZipTransfer suspendStreamWithCompletionBlock:]_block_invoke_2";
      v9 = 2112;
      v10 = v3;
      _os_log_impl(&dword_1DA47A000, v4, OS_LOG_TYPE_DEFAULT, "%s: Failed to cancel for reason: %@", &v7, 0x16u);
    }
  }

  else
  {
    v5 = *(a1 + 32);
  }

  (*(*(a1 + 40) + 16))();

  v6 = *MEMORY[0x1E69E9840];
}

- (void)finishStreamWithCompletionBlock:(id)a3
{
  v4 = a3;
  if ([(IXDataPromise *)self localIsComplete])
  {
    v5 = IXGetLoggingHandle(kIXLoggingSubsystem);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [IXPromisedStreamingZipTransfer finishStreamWithCompletionBlock:];
    }

    v7 = _CreateError("[IXPromisedStreamingZipTransfer finishStreamWithCompletionBlock:]", 250, @"IXErrorDomain", 4uLL, 0, 0, @"-finishStreamWithCompletionBlock: called after promise was complete", v6, v13[0]);
    v4[2](v4, v7);
  }

  else
  {
    v8 = [(IXPromisedStreamingZipTransfer *)self extractor];

    if (v8)
    {
      v9 = [(IXPromisedStreamingZipTransfer *)self extractor];
      v13[0] = MEMORY[0x1E69E9820];
      v13[1] = 3221225472;
      v13[2] = __66__IXPromisedStreamingZipTransfer_finishStreamWithCompletionBlock___block_invoke;
      v13[3] = &unk_1E85C6638;
      v13[4] = self;
      v14 = v4;
      [v9 finishStreamWithCompletionBlock:v13];
    }

    else
    {
      v10 = IXGetLoggingHandle(kIXLoggingSubsystem);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        [IXPromisedStreamingZipTransfer finishStreamWithCompletionBlock:];
      }

      v12 = _CreateError("[IXPromisedStreamingZipTransfer finishStreamWithCompletionBlock:]", 256, @"IXErrorDomain", 1uLL, 0, 0, @"self.extractor was unexpectedly nil!", v11, v13[0]);
      [(IXDataPromise *)self cancelForReason:v12 client:15 error:0];
      v4[2](v4, v12);
    }
  }
}

void __66__IXPromisedStreamingZipTransfer_finishStreamWithCompletionBlock___block_invoke(uint64_t a1, void *a2)
{
  v30 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = *(a1 + 32);
  if (v3)
  {
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __66__IXPromisedStreamingZipTransfer_finishStreamWithCompletionBlock___block_invoke_2;
    v19[3] = &unk_1E85C56A0;
    v21 = *(a1 + 40);
    v20 = v3;
    [v4 cancelForReason:v20 client:15 completion:v19];
  }

  else if ([*(a1 + 32) needsConsume])
  {
    v5 = MEMORY[0x1E695DFF8];
    v6 = [*(a1 + 32) extractor];
    v7 = [v6 extractionPath];
    v8 = [v5 fileURLWithPath:v7 isDirectory:1 relativeToURL:0];

    v9 = +[IXFileManager defaultManager];
    v10 = [*(a1 + 32) stagedPath];
    v18 = 0;
    v11 = [v9 moveItemAtURL:v8 toURL:v10 error:&v18];
    v12 = v18;

    if (v11)
    {
      [*(a1 + 32) setComplete:1];

      v12 = 0;
    }

    else
    {
      v13 = IXGetLoggingHandle(kIXLoggingSubsystem);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v14 = [v8 path];
        v15 = [*(a1 + 32) stagedPath];
        v16 = [v15 path];
        *buf = 136315906;
        v23 = "[IXPromisedStreamingZipTransfer finishStreamWithCompletionBlock:]_block_invoke";
        v24 = 2112;
        v25 = v14;
        v26 = 2112;
        v27 = v16;
        v28 = 2112;
        v29 = v12;
        _os_log_impl(&dword_1DA47A000, v13, OS_LOG_TYPE_DEFAULT, "%s: Failed to capture extracted bytes at %@ and move to %@ : %@", buf, 0x2Au);
      }

      [*(a1 + 32) cancelForReason:v12 client:15 completion:&__block_literal_global_5];
    }

    (*(*(a1 + 40) + 16))();
  }

  else
  {
    [*(a1 + 32) setComplete:1];
    (*(*(a1 + 40) + 16))();
  }

  [*(a1 + 32) releaseSandboxExtension];

  v17 = *MEMORY[0x1E69E9840];
}

void __66__IXPromisedStreamingZipTransfer_finishStreamWithCompletionBlock___block_invoke_2(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (v3)
  {
    v4 = IXGetLoggingHandle(kIXLoggingSubsystem);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 136315394;
      v8 = "[IXPromisedStreamingZipTransfer finishStreamWithCompletionBlock:]_block_invoke_2";
      v9 = 2112;
      v10 = v3;
      _os_log_impl(&dword_1DA47A000, v4, OS_LOG_TYPE_DEFAULT, "%s: Failed to cancel for reason: %@", &v7, 0x16u);
    }
  }

  else
  {
    v5 = *(a1 + 32);
  }

  (*(*(a1 + 40) + 16))();

  v6 = *MEMORY[0x1E69E9840];
}

- (void)terminateStreamWithError:(id)a3 completionBlock:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([(IXDataPromise *)self localIsComplete])
  {
    v8 = IXGetLoggingHandle(kIXLoggingSubsystem);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [IXPromisedStreamingZipTransfer terminateStreamWithError:completionBlock:];
    }

    v10 = _CreateError("[IXPromisedStreamingZipTransfer terminateStreamWithError:completionBlock:]", 297, @"IXErrorDomain", 4uLL, 0, 0, @"-terminateStreamWithError:completionBlock: called after promise was complete", v9, v16);
    v7[2](v7, v10);
  }

  else
  {
    v11 = [(IXPromisedStreamingZipTransfer *)self extractor];

    if (v11)
    {
      v12 = [(IXPromisedStreamingZipTransfer *)self extractor];
      v17[0] = MEMORY[0x1E69E9820];
      v17[1] = 3221225472;
      v17[2] = __75__IXPromisedStreamingZipTransfer_terminateStreamWithError_completionBlock___block_invoke;
      v17[3] = &unk_1E85C6660;
      v17[4] = self;
      v18 = v6;
      v19 = v7;
      [v12 terminateStreamWithError:v18 completionBlock:v17];
    }

    else
    {
      v13 = IXGetLoggingHandle(kIXLoggingSubsystem);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        [IXPromisedStreamingZipTransfer terminateStreamWithError:completionBlock:];
      }

      v15 = _CreateError("[IXPromisedStreamingZipTransfer terminateStreamWithError:completionBlock:]", 303, @"IXErrorDomain", 1uLL, 0, 0, @"self.extractor was unexpectedly nil!", v14, v16);
      [(IXDataPromise *)self cancelForReason:v15 client:15 error:0];
      v7[2](v7, v15);
    }
  }
}

void __75__IXPromisedStreamingZipTransfer_terminateStreamWithError_completionBlock___block_invoke(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (v3)
  {
    v4 = IXGetLoggingHandle(kIXLoggingSubsystem);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v11 = "[IXPromisedStreamingZipTransfer terminateStreamWithError:completionBlock:]_block_invoke";
      v12 = 2112;
      v13 = v3;
      _os_log_impl(&dword_1DA47A000, v4, OS_LOG_TYPE_DEFAULT, "%s: Terminating stream failed with error: %@", buf, 0x16u);
    }
  }

  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __75__IXPromisedStreamingZipTransfer_terminateStreamWithError_completionBlock___block_invoke_30;
  v8[3] = &unk_1E85C5470;
  v9 = *(a1 + 48);
  [v5 cancelForReason:v6 client:15 completion:v8];
  [*(a1 + 32) releaseSandboxExtension];

  v7 = *MEMORY[0x1E69E9840];
}

void __75__IXPromisedStreamingZipTransfer_terminateStreamWithError_completionBlock___block_invoke_30(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (v3)
  {
    v4 = IXGetLoggingHandle(kIXLoggingSubsystem);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v6 = 136315394;
      v7 = "[IXPromisedStreamingZipTransfer terminateStreamWithError:completionBlock:]_block_invoke";
      v8 = 2112;
      v9 = v3;
      _os_log_impl(&dword_1DA47A000, v4, OS_LOG_TYPE_DEFAULT, "%s: Failed to cancel for reason: %@", &v6, 0x16u);
    }
  }

  (*(*(a1 + 32) + 16))();

  v5 = *MEMORY[0x1E69E9840];
}

- (void)resetWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(IXDataPromise *)self seed];
  [v5 setArchiveBytesConsumed:0];

  v6 = objc_alloc(MEMORY[0x1E69D4DD8]);
  v7 = [(IXDataPromise *)self seed];
  v8 = [v7 szOptions];
  v9 = [v6 initWithOptions:v8];
  [(IXPromisedStreamingZipTransfer *)self setExtractor:v9];

  v10 = [(IXPromisedStreamingZipTransfer *)self extractor];

  if (v10)
  {
    v16.receiver = self;
    v16.super_class = IXPromisedStreamingZipTransfer;
    [(IXDataPromise *)&v16 resetWithCompletion:v4];
  }

  else
  {
    v11 = IXGetLoggingHandle(kIXLoggingSubsystem);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [(IXPromisedStreamingZipTransfer *)self resetWithCompletion:v11];
    }

    v12 = [(IXDataPromise *)self seed];
    v13 = [v12 szOptions];
    v15 = _CreateError("[IXPromisedStreamingZipTransfer resetWithCompletion:]", 333, @"IXErrorDomain", 1uLL, 0, 0, @"[SZExtractor initWithOptions:] returned nil for options %@", v14, v13);

    v4[2](v4, v15);
  }
}

- (unint64_t)archiveBytesConsumed
{
  v2 = [(IXDataPromise *)self seed];
  v3 = [v2 archiveBytesConsumed];

  return v3;
}

- (void)setArchiveBytesConsumed:(unint64_t)a3
{
  v5 = [(IXDataPromise *)self seed];
  [v5 setArchiveBytesConsumed:a3];

  v9 = +[IXServerConnection sharedConnection];
  v6 = [v9 synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_37];
  v7 = [(IXDataPromise *)self uniqueIdentifier];
  v8 = [(IXDataPromise *)self seed];
  [v6 _remote_IXSPromisedStreamingZipTransfer:v7 setArchiveBytesConsumed:{objc_msgSend(v8, "archiveBytesConsumed")}];
}

void __58__IXPromisedStreamingZipTransfer_setArchiveBytesConsumed___block_invoke(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = IXGetLoggingHandle(kIXLoggingSubsystem);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315394;
    v6 = "[IXPromisedStreamingZipTransfer setArchiveBytesConsumed:]_block_invoke";
    v7 = 2112;
    v8 = v2;
    _os_log_impl(&dword_1DA47A000, v3, OS_LOG_TYPE_DEFAULT, "%s: Failed to set bytes completed: %@", &v5, 0x16u);
  }

  v4 = *MEMORY[0x1E69E9840];
}

- (void)addArchiveBytesConsumed:(unint64_t)a3
{
  v5 = [(IXDataPromise *)self seed];
  v6 = [v5 archiveBytesConsumed];
  [v5 setArchiveBytesConsumed:v6 + a3];

  [(IXPromisedStreamingZipTransfer *)self setArchiveBytesConsumed:v6 + a3];
}

- (void)setExtractorDelegate:(id)a3
{
  obj = a3;
  if ([(IXPromisedStreamingZipTransfer *)self useProgressFromSZExtractor])
  {
    v4 = 1;
    v5 = obj;
    if (!obj)
    {
      goto LABEL_12;
    }
  }

  else
  {
    v5 = obj;
    if (!obj)
    {
      v4 = 0;
      goto LABEL_12;
    }

    LODWORD(v4) = objc_opt_respondsToSelector() & 1;
  }

  if (objc_opt_respondsToSelector())
  {
    LODWORD(v4) = v4 | 2;
  }

  v6 = objc_opt_respondsToSelector();
  v5 = obj;
  if (v6)
  {
    v4 = v4 | 4;
  }

  else
  {
    v4 = v4;
  }

LABEL_12:
  objc_storeWeak(&self->_extractorDelegate, v5);
  v7 = [(IXPromisedStreamingZipTransfer *)self extractor];
  [v7 setActiveExtractorDelegateMethods:v4];
}

- (void)setExtractionProgress:(double)a3
{
  v7 = [(IXPromisedStreamingZipTransfer *)self extractorDelegate];
  if ([(IXPromisedStreamingZipTransfer *)self useProgressFromSZExtractor])
  {
    [(IXDataPromise *)self setPercentComplete:a3];
  }

  v5 = v7;
  if (v7)
  {
    v6 = objc_opt_respondsToSelector();
    v5 = v7;
    if (v6)
    {
      [v7 setExtractionProgress:a3];
      v5 = v7;
    }
  }
}

- (void)extractionCompleteAtArchivePath:(id)a3
{
  v5 = a3;
  v4 = [(IXPromisedStreamingZipTransfer *)self extractorDelegate];
  if (v4 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [v4 extractionCompleteAtArchivePath:v5];
  }
}

- (void)extractionEnteredPassThroughMode
{
  v2 = [(IXPromisedStreamingZipTransfer *)self extractorDelegate];
  v3 = v2;
  if (v2)
  {
    v5 = v2;
    v4 = objc_opt_respondsToSelector();
    v3 = v5;
    if (v4)
    {
      [v5 extractionEnteredPassThroughMode];
      v3 = v5;
    }
  }
}

- (IXPromisedStreamingZipTransfer)initWithSeed:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v15.receiver = self;
  v15.super_class = IXPromisedStreamingZipTransfer;
  v3 = [(IXOwnedDataPromise *)&v15 initWithSeed:a3];
  if (!v3)
  {
    goto LABEL_3;
  }

  v4 = objc_alloc(MEMORY[0x1E69D4DD8]);
  v5 = [(IXDataPromise *)v3 seed];
  v6 = [v5 szOptions];
  v7 = [v4 initWithOptions:v6];
  [(IXPromisedStreamingZipTransfer *)v3 setExtractor:v7];

  v8 = [(IXPromisedStreamingZipTransfer *)v3 extractor];

  if (!v8)
  {
    v10 = IXGetLoggingHandle(kIXLoggingSubsystem);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = [(IXDataPromise *)v3 seed];
      v12 = [v11 szOptions];
      *buf = 136315394;
      v17 = "[IXPromisedStreamingZipTransfer initWithSeed:]";
      v18 = 2112;
      v19 = v12;
      _os_log_impl(&dword_1DA47A000, v10, OS_LOG_TYPE_DEFAULT, "%s: [SZExtractor initWithOptions:] returned nil for options %@", buf, 0x16u);
    }

    v9 = 0;
  }

  else
  {
LABEL_3:
    v9 = v3;
  }

  v13 = *MEMORY[0x1E69E9840];
  return v9;
}

- (SZExtractorDelegate)extractorDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_extractorDelegate);

  return WeakRetained;
}

- (void)prepareForExtraction:.cold.1()
{
  v7 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_1_2(&dword_1DA47A000, v0, v1, "%s: self.stagedPath.path was unexpectedly nil! : %@", v2, v3, v4, v5, 2u);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)_prepareForExtractionToPath:completionBlock:.cold.1()
{
  v7 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_1_2(&dword_1DA47A000, v0, v1, "%s: self.extractor was unexpectedly nil! : %@", v2, v3, v4, v5, 2u);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)supplyBytes:withCompletionBlock:.cold.1()
{
  v7 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_1_2(&dword_1DA47A000, v0, v1, "%s: self.extractor was unexpectedly nil! : %@", v2, v3, v4, v5, 2u);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)supplyBytes:withCompletionBlock:.cold.2()
{
  v7 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_1_2(&dword_1DA47A000, v0, v1, "%s: -supplyBytes:withCompletionBlock: called after promise was complete : %@", v2, v3, v4, v5, 2u);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)suspendStreamWithCompletionBlock:.cold.1()
{
  v7 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_1_2(&dword_1DA47A000, v0, v1, "%s: self.extractor was unexpectedly nil! : %@", v2, v3, v4, v5, 2u);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)finishStreamWithCompletionBlock:.cold.1()
{
  v7 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_1_2(&dword_1DA47A000, v0, v1, "%s: self.extractor was unexpectedly nil! : %@", v2, v3, v4, v5, 2u);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)finishStreamWithCompletionBlock:.cold.2()
{
  v7 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_1_2(&dword_1DA47A000, v0, v1, "%s: -finishStreamWithCompletionBlock: called after promise was complete : %@", v2, v3, v4, v5, 2u);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)terminateStreamWithError:completionBlock:.cold.1()
{
  v7 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_1_2(&dword_1DA47A000, v0, v1, "%s: self.extractor was unexpectedly nil! : %@", v2, v3, v4, v5, 2u);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)terminateStreamWithError:completionBlock:.cold.2()
{
  v7 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_1_2(&dword_1DA47A000, v0, v1, "%s: -terminateStreamWithError:completionBlock: called after promise was complete : %@", v2, v3, v4, v5, 2u);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)resetWithCompletion:(void *)a1 .cold.1(void *a1, NSObject *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = [a1 seed];
  v4 = [v3 szOptions];
  v6 = 136315650;
  v7 = "[IXPromisedStreamingZipTransfer resetWithCompletion:]";
  v8 = 2112;
  v9 = v4;
  v10 = 2112;
  v11 = 0;
  _os_log_error_impl(&dword_1DA47A000, a2, OS_LOG_TYPE_ERROR, "%s: [SZExtractor initWithOptions:] returned nil for options %@ : %@", &v6, 0x20u);

  v5 = *MEMORY[0x1E69E9840];
}

@end