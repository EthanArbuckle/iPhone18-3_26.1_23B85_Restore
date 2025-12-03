@interface IXPromisedOutOfBandStreamingZipTransfer
- (BOOL)useProgressFromSZExtractor;
- (IXPromisedOutOfBandStreamingZipTransfer)initWithCoder:(id)coder;
- (IXPromisedOutOfBandStreamingZipTransfer)initWithName:(id)name client:(unint64_t)client streamingZipOptions:(id)options archiveSize:(unint64_t)size diskSpaceNeeded:(unint64_t)needed;
- (IXPromisedOutOfBandStreamingZipTransfer)initWithSeed:(id)seed;
- (NSURL)extractionPath;
- (SZExtractorDelegate)extractorDelegate;
- (unint64_t)archiveBytesConsumed;
- (void)addBytesTransferred:(unint64_t)transferred;
- (void)encodeWithCoder:(id)coder;
- (void)extractionCompleteAtArchivePath:(id)path;
- (void)extractionEnteredPassThroughMode;
- (void)finishStreamWithCompletionBlock:(id)block;
- (void)prepareForExtraction:(id)extraction;
- (void)prepareForExtractionToPath:(id)path completionBlock:(id)block;
- (void)resetWithCompletion:(id)completion;
- (void)setArchiveBytesConsumed:(unint64_t)consumed;
- (void)setExtractionProgress:(double)progress;
- (void)setExtractorDelegate:(id)delegate;
- (void)supplyBytes:(id)bytes withCompletionBlock:(id)block;
- (void)suspendStreamWithCompletionBlock:(id)block;
- (void)terminateStreamWithError:(id)error completionBlock:(id)block;
@end

@implementation IXPromisedOutOfBandStreamingZipTransfer

- (IXPromisedOutOfBandStreamingZipTransfer)initWithCoder:(id)coder
{
  v20 = *MEMORY[0x1E69E9840];
  v15.receiver = self;
  v15.super_class = IXPromisedOutOfBandStreamingZipTransfer;
  v3 = [(IXOpaqueDataPromise *)&v15 initWithCoder:coder];
  if (!v3)
  {
    goto LABEL_3;
  }

  v4 = objc_alloc(MEMORY[0x1E69D4DD8]);
  seed = [(IXDataPromise *)v3 seed];
  szOptions = [seed szOptions];
  v7 = [v4 initWithOptions:szOptions];
  [(IXPromisedOutOfBandStreamingZipTransfer *)v3 setExtractor:v7];

  extractor = [(IXPromisedOutOfBandStreamingZipTransfer *)v3 extractor];

  if (!extractor)
  {
    v10 = IXGetLoggingHandle(kIXLoggingSubsystem);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      seed2 = [(IXDataPromise *)v3 seed];
      szOptions2 = [seed2 szOptions];
      *buf = 136315394;
      v17 = "[IXPromisedOutOfBandStreamingZipTransfer initWithCoder:]";
      v18 = 2112;
      v19 = szOptions2;
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

- (void)encodeWithCoder:(id)coder
{
  v3.receiver = self;
  v3.super_class = IXPromisedOutOfBandStreamingZipTransfer;
  [(IXOpaqueDataPromise *)&v3 encodeWithCoder:coder];
}

- (IXPromisedOutOfBandStreamingZipTransfer)initWithName:(id)name client:(unint64_t)client streamingZipOptions:(id)options archiveSize:(unint64_t)size diskSpaceNeeded:(unint64_t)needed
{
  v33 = *MEMORY[0x1E69E9840];
  nameCopy = name;
  optionsCopy = options;
  v30.receiver = self;
  v30.super_class = IXPromisedOutOfBandStreamingZipTransfer;
  v14 = [(IXDataPromise *)&v30 initWithName:nameCopy client:client diskSpaceNeeded:needed];
  v15 = v14;
  if (v14)
  {
    seed = [(IXDataPromise *)v14 seed];
    [seed setArchiveSizeBytes:size];

    seed2 = [(IXDataPromise *)v15 seed];
    [seed2 setSzOptions:optionsCopy];

    v18 = [objc_alloc(MEMORY[0x1E69D4DD8]) initWithOptions:optionsCopy];
    [(IXPromisedOutOfBandStreamingZipTransfer *)v15 setExtractor:v18];

    extractor = [(IXPromisedOutOfBandStreamingZipTransfer *)v15 extractor];
    LODWORD(v18) = extractor == 0;

    if (v18)
    {
      v23 = IXGetLoggingHandle(kIXLoggingSubsystem);
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        *&buf[4] = "[IXPromisedOutOfBandStreamingZipTransfer initWithName:client:streamingZipOptions:archiveSize:diskSpaceNeeded:]";
        *&buf[12] = 2112;
        *&buf[14] = optionsCopy;
        _os_log_impl(&dword_1DA47A000, v23, OS_LOG_TYPE_DEFAULT, "%s: [SZExtractor initWithOptions:] returned nil for options %@", buf, 0x16u);
      }
    }

    else
    {
      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x2020000000;
      v32 = 0;
      v20 = +[IXServerConnection sharedConnection];
      v29[0] = MEMORY[0x1E69E9820];
      v29[1] = 3221225472;
      v29[2] = __111__IXPromisedOutOfBandStreamingZipTransfer_initWithName_client_streamingZipOptions_archiveSize_diskSpaceNeeded___block_invoke;
      v29[3] = &unk_1E85C5560;
      v29[4] = buf;
      v21 = [v20 synchronousRemoteObjectProxyWithErrorHandler:v29];

      if (!v21)
      {
        _Block_object_dispose(buf, 8);
        goto LABEL_11;
      }

      seed3 = [(IXDataPromise *)v15 seed];
      v26[0] = MEMORY[0x1E69E9820];
      v26[1] = 3221225472;
      v26[2] = __111__IXPromisedOutOfBandStreamingZipTransfer_initWithName_client_streamingZipOptions_archiveSize_diskSpaceNeeded___block_invoke_6;
      v26[3] = &unk_1E85C66C8;
      v28 = buf;
      v27 = v15;
      [(IXPromisedOutOfBandStreamingZipTransfer *)v21 _remote_createOutOfBandStreamingZipTransferDataPromiseWithSeed:seed3 completion:v26];

      LOBYTE(seed3) = *(*&buf[8] + 24);
      _Block_object_dispose(buf, 8);
      if ((seed3 & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    v21 = 0;
    goto LABEL_11;
  }

LABEL_5:
  v21 = v15;
LABEL_11:

  v24 = *MEMORY[0x1E69E9840];
  return v21;
}

void __111__IXPromisedOutOfBandStreamingZipTransfer_initWithName_client_streamingZipOptions_archiveSize_diskSpaceNeeded___block_invoke(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = IXGetLoggingHandle(kIXLoggingSubsystem);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315394;
    v7 = "[IXPromisedOutOfBandStreamingZipTransfer initWithName:client:streamingZipOptions:archiveSize:diskSpaceNeeded:]_block_invoke";
    v8 = 2112;
    v9 = v3;
    _os_log_impl(&dword_1DA47A000, v4, OS_LOG_TYPE_DEFAULT, "%s: Failed to contact daemon: %@", &v6, 0x16u);
  }

  *(*(*(a1 + 32) + 8) + 24) = 1;
  v5 = *MEMORY[0x1E69E9840];
}

void __111__IXPromisedOutOfBandStreamingZipTransfer_initWithName_client_streamingZipOptions_archiveSize_diskSpaceNeeded___block_invoke_6(uint64_t a1, uint64_t a2, void *a3)
{
  v12 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (v5)
  {
    v6 = IXGetLoggingHandle(kIXLoggingSubsystem);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 136315394;
      v9 = "[IXPromisedOutOfBandStreamingZipTransfer initWithName:client:streamingZipOptions:archiveSize:diskSpaceNeeded:]_block_invoke";
      v10 = 2112;
      v11 = v5;
      _os_log_impl(&dword_1DA47A000, v6, OS_LOG_TYPE_DEFAULT, "%s: Failed tell daemon to set up out of band StreamingZip transfer promise: %@", &v8, 0x16u);
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
  seed = [(IXDataPromise *)self seed];
  v3 = [seed archiveSizeBytes] == 0;

  return v3;
}

- (void)prepareForExtraction:(id)extraction
{
  v3 = kIXLoggingSubsystem;
  extractionCopy = extraction;
  v5 = IXGetLoggingHandle(v3);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    [IXPromisedOutOfBandStreamingZipTransfer prepareForExtraction:];
  }

  v7 = _CreateError("[IXPromisedOutOfBandStreamingZipTransfer prepareForExtraction:]", 111, @"IXErrorDomain", 4uLL, 0, 0, @"You must call -prepareForExtractionToPath: instead -prepareForExtraction: is not valid on this type of promise.", v6, v8);;
  extractionCopy[2](extractionCopy, 0, v7);
}

- (void)prepareForExtractionToPath:(id)path completionBlock:(id)block
{
  pathCopy = path;
  blockCopy = block;
  extractor = [(IXPromisedOutOfBandStreamingZipTransfer *)self extractor];

  if (extractor)
  {
    extractor2 = [(IXPromisedOutOfBandStreamingZipTransfer *)self extractor];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __86__IXPromisedOutOfBandStreamingZipTransfer_prepareForExtractionToPath_completionBlock___block_invoke;
    v13[3] = &unk_1E85C5650;
    v13[4] = self;
    v14 = blockCopy;
    [extractor2 prepareForExtractionToPath:pathCopy completionBlock:v13];
  }

  else
  {
    v10 = IXGetLoggingHandle(kIXLoggingSubsystem);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [IXPromisedOutOfBandStreamingZipTransfer prepareForExtractionToPath:completionBlock:];
    }

    v12 = _CreateError("[IXPromisedOutOfBandStreamingZipTransfer prepareForExtractionToPath:completionBlock:]", 118, @"IXErrorDomain", 1uLL, 0, 0, @"self.extractor was unexpectedly nil!", v11, v13[0]);
    [(IXDataPromise *)self cancelForReason:v12 client:15 error:0];
    (*(blockCopy + 2))(blockCopy, 0, v12);
  }
}

void __86__IXPromisedOutOfBandStreamingZipTransfer_prepareForExtractionToPath_completionBlock___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = *(a1 + 32);
  if (v4)
  {
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __86__IXPromisedOutOfBandStreamingZipTransfer_prepareForExtractionToPath_completionBlock___block_invoke_2;
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

void __86__IXPromisedOutOfBandStreamingZipTransfer_prepareForExtractionToPath_completionBlock___block_invoke_2(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (v3)
  {
    v4 = IXGetLoggingHandle(kIXLoggingSubsystem);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 136315394;
      v8 = "[IXPromisedOutOfBandStreamingZipTransfer prepareForExtractionToPath:completionBlock:]_block_invoke_2";
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

- (void)supplyBytes:(id)bytes withCompletionBlock:(id)block
{
  bytesCopy = bytes;
  blockCopy = block;
  if ([(IXDataPromise *)self localIsComplete])
  {
    v8 = IXGetLoggingHandle(kIXLoggingSubsystem);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [IXPromisedOutOfBandStreamingZipTransfer supplyBytes:withCompletionBlock:];
    }

    localError = _CreateError("[IXPromisedOutOfBandStreamingZipTransfer supplyBytes:withCompletionBlock:]", 153, @"IXErrorDomain", 4uLL, 0, 0, @"-supplyBytes:withCompletionBlock: called after promise was complete", v9, v17);
    goto LABEL_6;
  }

  localError = [(IXDataPromise *)self localError];
  if (localError)
  {
LABEL_6:
    blockCopy[2](blockCopy, localError, 1);
    goto LABEL_7;
  }

  extractor = [(IXPromisedOutOfBandStreamingZipTransfer *)self extractor];

  if (extractor)
  {
    v12 = [bytesCopy length];
    extractor2 = [(IXPromisedOutOfBandStreamingZipTransfer *)self extractor];
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __75__IXPromisedOutOfBandStreamingZipTransfer_supplyBytes_withCompletionBlock___block_invoke;
    v18[3] = &unk_1E85C66F0;
    v18[4] = self;
    v19 = blockCopy;
    v20 = v12;
    [extractor2 supplyBytes:bytesCopy withCompletionBlock:v18];
  }

  else
  {
    v14 = IXGetLoggingHandle(kIXLoggingSubsystem);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      [IXPromisedOutOfBandStreamingZipTransfer supplyBytes:withCompletionBlock:];
    }

    v16 = _CreateError("[IXPromisedOutOfBandStreamingZipTransfer supplyBytes:withCompletionBlock:]", 165, @"IXErrorDomain", 1uLL, 0, 0, @"self.extractor was unexpectedly nil!", v15, v17);
    [(IXDataPromise *)self cancelForReason:v16 client:15 error:0];
    blockCopy[2](blockCopy, v16, 1);
  }

LABEL_7:
}

void __75__IXPromisedOutOfBandStreamingZipTransfer_supplyBytes_withCompletionBlock___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  if (v3)
  {
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __75__IXPromisedOutOfBandStreamingZipTransfer_supplyBytes_withCompletionBlock___block_invoke_2;
    v5[3] = &unk_1E85C56A0;
    v7 = *(a1 + 40);
    v6 = v3;
    [v4 cancelForReason:v6 client:15 completion:v5];
  }

  else
  {
    if (([*(a1 + 32) useProgressFromSZExtractor] & 1) == 0)
    {
      [*(a1 + 32) addBytesTransferred:*(a1 + 48)];
    }

    (*(*(a1 + 40) + 16))();
  }
}

void __75__IXPromisedOutOfBandStreamingZipTransfer_supplyBytes_withCompletionBlock___block_invoke_2(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (v3)
  {
    v4 = IXGetLoggingHandle(kIXLoggingSubsystem);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 136315394;
      v8 = "[IXPromisedOutOfBandStreamingZipTransfer supplyBytes:withCompletionBlock:]_block_invoke_2";
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

- (void)suspendStreamWithCompletionBlock:(id)block
{
  blockCopy = block;
  extractor = [(IXPromisedOutOfBandStreamingZipTransfer *)self extractor];

  if (extractor)
  {
    extractor2 = [(IXPromisedOutOfBandStreamingZipTransfer *)self extractor];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __76__IXPromisedOutOfBandStreamingZipTransfer_suspendStreamWithCompletionBlock___block_invoke;
    v10[3] = &unk_1E85C5650;
    v10[4] = self;
    v11 = blockCopy;
    [extractor2 suspendStreamWithCompletionBlock:v10];
  }

  else
  {
    v7 = IXGetLoggingHandle(kIXLoggingSubsystem);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [IXPromisedOutOfBandStreamingZipTransfer suspendStreamWithCompletionBlock:];
    }

    v9 = _CreateError("[IXPromisedOutOfBandStreamingZipTransfer suspendStreamWithCompletionBlock:]", 196, @"IXErrorDomain", 1uLL, 0, 0, @"self.extractor was unexpectedly nil!", v8, v10[0]);
    [(IXDataPromise *)self cancelForReason:v9 client:15 error:0];
    (*(blockCopy + 2))(blockCopy, 0, v9);
  }
}

void __76__IXPromisedOutOfBandStreamingZipTransfer_suspendStreamWithCompletionBlock___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  if (v4)
  {
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __76__IXPromisedOutOfBandStreamingZipTransfer_suspendStreamWithCompletionBlock___block_invoke_2;
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

void __76__IXPromisedOutOfBandStreamingZipTransfer_suspendStreamWithCompletionBlock___block_invoke_2(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (v3)
  {
    v4 = IXGetLoggingHandle(kIXLoggingSubsystem);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 136315394;
      v8 = "[IXPromisedOutOfBandStreamingZipTransfer suspendStreamWithCompletionBlock:]_block_invoke_2";
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

- (void)finishStreamWithCompletionBlock:(id)block
{
  blockCopy = block;
  extractor = [(IXPromisedOutOfBandStreamingZipTransfer *)self extractor];

  if (extractor)
  {
    extractor2 = [(IXPromisedOutOfBandStreamingZipTransfer *)self extractor];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __75__IXPromisedOutOfBandStreamingZipTransfer_finishStreamWithCompletionBlock___block_invoke;
    v10[3] = &unk_1E85C6638;
    v10[4] = self;
    v11 = blockCopy;
    [extractor2 finishStreamWithCompletionBlock:v10];
  }

  else
  {
    v7 = IXGetLoggingHandle(kIXLoggingSubsystem);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [IXPromisedOutOfBandStreamingZipTransfer finishStreamWithCompletionBlock:];
    }

    v9 = _CreateError("[IXPromisedOutOfBandStreamingZipTransfer finishStreamWithCompletionBlock:]", 219, @"IXErrorDomain", 1uLL, 0, 0, @"self.extractor was unexpectedly nil!", v8, v10[0]);
    [(IXDataPromise *)self cancelForReason:v9 client:15 error:0];
    (*(blockCopy + 2))(blockCopy, v9);
  }
}

void __75__IXPromisedOutOfBandStreamingZipTransfer_finishStreamWithCompletionBlock___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  if (v3)
  {
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __75__IXPromisedOutOfBandStreamingZipTransfer_finishStreamWithCompletionBlock___block_invoke_2;
    v5[3] = &unk_1E85C56A0;
    v7 = *(a1 + 40);
    v6 = v3;
    [v4 cancelForReason:v6 client:15 completion:v5];
  }

  else
  {
    [*(a1 + 32) setComplete:1];
    (*(*(a1 + 40) + 16))();
  }
}

void __75__IXPromisedOutOfBandStreamingZipTransfer_finishStreamWithCompletionBlock___block_invoke_2(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (v3)
  {
    v4 = IXGetLoggingHandle(kIXLoggingSubsystem);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 136315394;
      v8 = "[IXPromisedOutOfBandStreamingZipTransfer finishStreamWithCompletionBlock:]_block_invoke_2";
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

- (void)terminateStreamWithError:(id)error completionBlock:(id)block
{
  errorCopy = error;
  blockCopy = block;
  if ([(IXDataPromise *)self localIsComplete])
  {
    v8 = IXGetLoggingHandle(kIXLoggingSubsystem);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [IXPromisedOutOfBandStreamingZipTransfer terminateStreamWithError:completionBlock:];
    }

    v10 = _CreateError("[IXPromisedOutOfBandStreamingZipTransfer terminateStreamWithError:completionBlock:]", 244, @"IXErrorDomain", 4uLL, 0, 0, @"-terminateStreamWithError:completionBlock: called after promise was complete", v9, v16);
    blockCopy[2](blockCopy, v10);
  }

  else
  {
    extractor = [(IXPromisedOutOfBandStreamingZipTransfer *)self extractor];

    if (extractor)
    {
      extractor2 = [(IXPromisedOutOfBandStreamingZipTransfer *)self extractor];
      v17[0] = MEMORY[0x1E69E9820];
      v17[1] = 3221225472;
      v17[2] = __84__IXPromisedOutOfBandStreamingZipTransfer_terminateStreamWithError_completionBlock___block_invoke;
      v17[3] = &unk_1E85C6660;
      v17[4] = self;
      v18 = errorCopy;
      v19 = blockCopy;
      [extractor2 terminateStreamWithError:v18 completionBlock:v17];
    }

    else
    {
      v13 = IXGetLoggingHandle(kIXLoggingSubsystem);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        [IXPromisedOutOfBandStreamingZipTransfer terminateStreamWithError:completionBlock:];
      }

      v15 = _CreateError("[IXPromisedOutOfBandStreamingZipTransfer terminateStreamWithError:completionBlock:]", 250, @"IXErrorDomain", 1uLL, 0, 0, @"self.extractor was unexpectedly nil!", v14, v16);
      [(IXDataPromise *)self cancelForReason:v15 client:15 error:0];
      blockCopy[2](blockCopy, v15);
    }
  }
}

void __84__IXPromisedOutOfBandStreamingZipTransfer_terminateStreamWithError_completionBlock___block_invoke(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (v3)
  {
    v4 = IXGetLoggingHandle(kIXLoggingSubsystem);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v11 = "[IXPromisedOutOfBandStreamingZipTransfer terminateStreamWithError:completionBlock:]_block_invoke";
      v12 = 2112;
      v13 = v3;
      _os_log_impl(&dword_1DA47A000, v4, OS_LOG_TYPE_DEFAULT, "%s: Terminating stream failed with error: %@", buf, 0x16u);
    }
  }

  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __84__IXPromisedOutOfBandStreamingZipTransfer_terminateStreamWithError_completionBlock___block_invoke_20;
  v8[3] = &unk_1E85C5470;
  v9 = *(a1 + 48);
  [v5 cancelForReason:v6 client:15 completion:v8];

  v7 = *MEMORY[0x1E69E9840];
}

void __84__IXPromisedOutOfBandStreamingZipTransfer_terminateStreamWithError_completionBlock___block_invoke_20(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (v3)
  {
    v4 = IXGetLoggingHandle(kIXLoggingSubsystem);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v6 = 136315394;
      v7 = "[IXPromisedOutOfBandStreamingZipTransfer terminateStreamWithError:completionBlock:]_block_invoke";
      v8 = 2112;
      v9 = v3;
      _os_log_impl(&dword_1DA47A000, v4, OS_LOG_TYPE_DEFAULT, "%s: Failed to cancel for reason: %@", &v6, 0x16u);
    }
  }

  (*(*(a1 + 32) + 16))();

  v5 = *MEMORY[0x1E69E9840];
}

- (void)resetWithCompletion:(id)completion
{
  completionCopy = completion;
  seed = [(IXDataPromise *)self seed];
  [seed setArchiveBytesConsumed:0];

  v6 = objc_alloc(MEMORY[0x1E69D4DD8]);
  seed2 = [(IXDataPromise *)self seed];
  szOptions = [seed2 szOptions];
  v9 = [v6 initWithOptions:szOptions];
  [(IXPromisedOutOfBandStreamingZipTransfer *)self setExtractor:v9];

  extractor = [(IXPromisedOutOfBandStreamingZipTransfer *)self extractor];

  if (extractor)
  {
    v16.receiver = self;
    v16.super_class = IXPromisedOutOfBandStreamingZipTransfer;
    [(IXDataPromise *)&v16 resetWithCompletion:completionCopy];
  }

  else
  {
    v11 = IXGetLoggingHandle(kIXLoggingSubsystem);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [(IXPromisedOutOfBandStreamingZipTransfer *)self resetWithCompletion:v11];
    }

    seed3 = [(IXDataPromise *)self seed];
    szOptions2 = [seed3 szOptions];
    v15 = _CreateError("[IXPromisedOutOfBandStreamingZipTransfer resetWithCompletion:]", 276, @"IXErrorDomain", 1uLL, 0, 0, @"[SZExtractor initWithOptions:] returned nil for options %@", v14, szOptions2);

    completionCopy[2](completionCopy, v15);
  }
}

- (unint64_t)archiveBytesConsumed
{
  seed = [(IXDataPromise *)self seed];
  archiveBytesConsumed = [seed archiveBytesConsumed];

  return archiveBytesConsumed;
}

- (void)setArchiveBytesConsumed:(unint64_t)consumed
{
  seed = [(IXDataPromise *)self seed];
  [seed setArchiveBytesConsumed:consumed];

  v9 = +[IXServerConnection sharedConnection];
  v6 = [v9 synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_6];
  uniqueIdentifier = [(IXDataPromise *)self uniqueIdentifier];
  seed2 = [(IXDataPromise *)self seed];
  [v6 _remote_IXSPromisedOutOfBandStreamingZipTransfer:uniqueIdentifier setArchiveBytesConsumed:{objc_msgSend(seed2, "archiveBytesConsumed")}];
}

void __67__IXPromisedOutOfBandStreamingZipTransfer_setArchiveBytesConsumed___block_invoke(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = IXGetLoggingHandle(kIXLoggingSubsystem);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315394;
    v6 = "[IXPromisedOutOfBandStreamingZipTransfer setArchiveBytesConsumed:]_block_invoke";
    v7 = 2112;
    v8 = v2;
    _os_log_impl(&dword_1DA47A000, v3, OS_LOG_TYPE_DEFAULT, "%s: Failed to set bytes completed: %@", &v5, 0x16u);
  }

  v4 = *MEMORY[0x1E69E9840];
}

- (void)addBytesTransferred:(unint64_t)transferred
{
  seed = [(IXDataPromise *)self seed];
  archiveBytesConsumed = [seed archiveBytesConsumed];
  [seed setArchiveBytesConsumed:archiveBytesConsumed + transferred];

  [(IXPromisedOutOfBandStreamingZipTransfer *)self setArchiveBytesConsumed:archiveBytesConsumed + transferred];
}

- (NSURL)extractionPath
{
  seed = [(IXDataPromise *)self seed];
  extractionPath = [seed extractionPath];

  return extractionPath;
}

- (void)setExtractorDelegate:(id)delegate
{
  obj = delegate;
  if ([(IXPromisedOutOfBandStreamingZipTransfer *)self useProgressFromSZExtractor])
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
  extractor = [(IXPromisedOutOfBandStreamingZipTransfer *)self extractor];
  [extractor setActiveExtractorDelegateMethods:v4];
}

- (void)setExtractionProgress:(double)progress
{
  extractorDelegate = [(IXPromisedOutOfBandStreamingZipTransfer *)self extractorDelegate];
  if ([(IXPromisedOutOfBandStreamingZipTransfer *)self useProgressFromSZExtractor])
  {
    [(IXDataPromise *)self setPercentComplete:progress];
  }

  v5 = extractorDelegate;
  if (extractorDelegate)
  {
    v6 = objc_opt_respondsToSelector();
    v5 = extractorDelegate;
    if (v6)
    {
      [extractorDelegate setExtractionProgress:progress];
      v5 = extractorDelegate;
    }
  }
}

- (void)extractionCompleteAtArchivePath:(id)path
{
  pathCopy = path;
  extractorDelegate = [(IXPromisedOutOfBandStreamingZipTransfer *)self extractorDelegate];
  if (extractorDelegate && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [extractorDelegate extractionCompleteAtArchivePath:pathCopy];
  }
}

- (void)extractionEnteredPassThroughMode
{
  extractorDelegate = [(IXPromisedOutOfBandStreamingZipTransfer *)self extractorDelegate];
  v3 = extractorDelegate;
  if (extractorDelegate)
  {
    v5 = extractorDelegate;
    v4 = objc_opt_respondsToSelector();
    v3 = v5;
    if (v4)
    {
      [v5 extractionEnteredPassThroughMode];
      v3 = v5;
    }
  }
}

- (IXPromisedOutOfBandStreamingZipTransfer)initWithSeed:(id)seed
{
  v20 = *MEMORY[0x1E69E9840];
  v15.receiver = self;
  v15.super_class = IXPromisedOutOfBandStreamingZipTransfer;
  v3 = [(IXDataPromise *)&v15 initWithSeed:seed];
  if (!v3)
  {
    goto LABEL_3;
  }

  v4 = objc_alloc(MEMORY[0x1E69D4DD8]);
  seed = [(IXDataPromise *)v3 seed];
  szOptions = [seed szOptions];
  v7 = [v4 initWithOptions:szOptions];
  [(IXPromisedOutOfBandStreamingZipTransfer *)v3 setExtractor:v7];

  extractor = [(IXPromisedOutOfBandStreamingZipTransfer *)v3 extractor];

  if (!extractor)
  {
    v10 = IXGetLoggingHandle(kIXLoggingSubsystem);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      seed2 = [(IXDataPromise *)v3 seed];
      szOptions2 = [seed2 szOptions];
      *buf = 136315394;
      v17 = "[IXPromisedOutOfBandStreamingZipTransfer initWithSeed:]";
      v18 = 2112;
      v19 = szOptions2;
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
  OUTLINED_FUNCTION_1_2(&dword_1DA47A000, v0, v1, "%s: You must call -prepareForExtractionToPath: instead; -prepareForExtraction: is not valid on this type of promise. : %@", v2, v3, v4, v5, 2u);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)prepareForExtractionToPath:completionBlock:.cold.1()
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
  v7 = "[IXPromisedOutOfBandStreamingZipTransfer resetWithCompletion:]";
  v8 = 2112;
  v9 = v4;
  v10 = 2112;
  v11 = 0;
  _os_log_error_impl(&dword_1DA47A000, a2, OS_LOG_TYPE_ERROR, "%s: [SZExtractor initWithOptions:] returned nil for options %@ : %@", &v6, 0x20u);

  v5 = *MEMORY[0x1E69E9840];
}

@end