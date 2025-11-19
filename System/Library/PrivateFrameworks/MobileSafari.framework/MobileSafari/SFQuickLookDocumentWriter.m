@interface SFQuickLookDocumentWriter
- (SFQuickLookDocumentWriter)initWithFileName:(id)a3 uti:(id)a4;
- (void)setFilePathAccessedOnDispatchQueue:(id)a3;
- (void)writeDataAndClose:(id)a3 completionHandler:(id)a4;
@end

@implementation SFQuickLookDocumentWriter

- (void)setFilePathAccessedOnDispatchQueue:(id)a3
{
  v4 = [a3 copy];
  filePathAccessedOnDispatchQueue = self->_filePathAccessedOnDispatchQueue;
  self->_filePathAccessedOnDispatchQueue = v4;
}

- (SFQuickLookDocumentWriter)initWithFileName:(id)a3 uti:(id)a4
{
  v6 = a3;
  v7 = a4;
  v33.receiver = self;
  v33.super_class = SFQuickLookDocumentWriter;
  v8 = [(SFQuickLookDocumentWriter *)&v33 init];
  if (v8)
  {
    v9 = [v6 safari_lastPathComponentWithoutZipExtension];
    v10 = [v9 pathExtension];
    v11 = v7;
    v12 = v10;
    v13 = *MEMORY[0x1E6963798];
    if (UTTypeConformsTo(v11, *MEMORY[0x1E6963798]))
    {
      v7 = v11;
      v14 = v12;
    }

    else
    {
      v15 = [(__CFString *)v12 length];
      v16 = MEMORY[0x1E6963710];
      v14 = v12;
      if (!v15)
      {
        v14 = UTTypeCopyPreferredTagWithClass(v11, *MEMORY[0x1E6963710]);
      }

      if ([(__CFString *)v14 length])
      {
        PreferredIdentifierForTag = UTTypeCreatePreferredIdentifierForTag(*v16, v14, v13);
        v18 = PreferredIdentifierForTag;
        v19 = v11;
        if (PreferredIdentifierForTag)
        {
          if (UTTypeIsDynamic(PreferredIdentifierForTag))
          {
            v19 = v11;
          }

          else
          {
            v19 = v18;
          }
        }

        v7 = v19;
      }

      else
      {
        v7 = v11;
      }
    }

    v8->_hasFinishedWriting = 0;
    v20 = [SFQuickLookDocument alloc];
    v21 = [v6 safari_lastPathComponentWithoutZipExtension];
    v22 = [(SFQuickLookDocument *)v20 initWithFileName:v21 mimeType:0 uti:v7 needsQuickLookDocumentView:0];
    quickLookDocument = v8->_quickLookDocument;
    v8->_quickLookDocument = v22;

    v24 = dispatch_queue_create("com.apple.mobilesafari.QuickLookDocumentWriterQueue", 0);
    dispatchQueue = v8->_dispatchQueue;
    v8->_dispatchQueue = v24;

    v26 = v8->_dispatchQueue;
    v30[0] = MEMORY[0x1E69E9820];
    v30[1] = 3221225472;
    v30[2] = __50__SFQuickLookDocumentWriter_initWithFileName_uti___block_invoke;
    v30[3] = &unk_1E721B400;
    v27 = v8;
    v31 = v27;
    v32 = v6;
    dispatch_async(v26, v30);
    v28 = v27;
  }

  return v8;
}

void __50__SFQuickLookDocumentWriter_initWithFileName_uti___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x1E696AC08] _web_createTemporaryFileForQuickLook:*(a1 + 40)];
  [v1 setFilePathAccessedOnDispatchQueue:v2];
}

- (void)writeDataAndClose:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __65__SFQuickLookDocumentWriter_writeDataAndClose_completionHandler___block_invoke;
  block[3] = &unk_1E721B5D8;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(dispatchQueue, block);
}

void __65__SFQuickLookDocumentWriter_writeDataAndClose_completionHandler___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) filePathAccessedOnDispatchQueue];
  v3 = [MEMORY[0x1E696AC00] fileHandleForWritingAtPath:v2];
  [v3 writeData:*(a1 + 40)];
  [v3 closeFile];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __65__SFQuickLookDocumentWriter_writeDataAndClose_completionHandler___block_invoke_2;
  block[3] = &unk_1E721B5D8;
  block[4] = *(a1 + 32);
  v6 = v2;
  v7 = *(a1 + 48);
  v4 = v2;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

uint64_t __65__SFQuickLookDocumentWriter_writeDataAndClose_completionHandler___block_invoke_2(void *a1)
{
  *(a1[4] + 24) = 1;
  [*(a1[4] + 32) setSavedPath:a1[5] shouldDelete:0];
  result = a1[6];
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

@end