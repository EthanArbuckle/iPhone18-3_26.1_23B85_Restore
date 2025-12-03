@interface CUTFileCopier
- (CUTFileCopier)initWithInputURL:(id)l outputURL:(id)rL identifier:(id)identifier operation:(unsigned int)operation delegate:(id)delegate;
- (CUTFileCopierDelegate)delegate;
- (id)_temporaryCopierPath;
- (void)_fillOutputURLFromInputURL;
- (void)_main_copierFinishedWithResult:(id)result;
- (void)_worker_doCopy;
- (void)cancel;
- (void)cleanup;
- (void)dealloc;
- (void)start;
@end

@implementation CUTFileCopier

- (CUTFileCopier)initWithInputURL:(id)l outputURL:(id)rL identifier:(id)identifier operation:(unsigned int)operation delegate:(id)delegate
{
  lCopy = l;
  rLCopy = rL;
  identifierCopy = identifier;
  delegateCopy = delegate;
  v22.receiver = self;
  v22.super_class = CUTFileCopier;
  v16 = [(CUTFileCopier *)&v22 init];
  if (v16)
  {
    v17 = [lCopy copy];
    inputURL = v16->_inputURL;
    v16->_inputURL = v17;

    v19 = [rLCopy copy];
    outputURL = v16->_outputURL;
    v16->_outputURL = v19;

    objc_storeStrong(&v16->_identifier, identifier);
    if (!v16->_outputURL)
    {
      [(CUTFileCopier *)v16 _fillOutputURLFromInputURL];
    }

    v16->_operation = operation;
    objc_storeWeak(&v16->_delegate, delegateCopy);
  }

  return v16;
}

- (void)dealloc
{
  if (self->_BOMCopier)
  {
    if (self->_inProgress)
    {
      BOMCopierCancelCopy();
      BOMCopier = self->_BOMCopier;
    }

    BOMCopierFree();
  }

  v4.receiver = self;
  v4.super_class = CUTFileCopier;
  [(CUTFileCopier *)&v4 dealloc];
}

- (id)_temporaryCopierPath
{
  v2 = CUTTemporaryPath();
  v3 = [v2 stringByAppendingPathComponent:@"CUTFileCopier"];

  return v3;
}

- (void)_fillOutputURLFromInputURL
{
  inputURL = [(CUTFileCopier *)self inputURL];
  path = [inputURL path];
  lastPathComponent = [path lastPathComponent];

  if ([(__CFString *)lastPathComponent length])
  {
    v5 = lastPathComponent;
  }

  else
  {

    v5 = @"Archive";
  }

  v16 = v5;
  v6 = [(__CFString *)v5 stringByAppendingPathExtension:@"zip"];
  _temporaryCopierPath = [(CUTFileCopier *)self _temporaryCopierPath];
  cutStringGUID = [MEMORY[0x1E696AEC0] cutStringGUID];
  v9 = [_temporaryCopierPath stringByAppendingPathComponent:cutStringGUID];

  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  LOBYTE(cutStringGUID) = [defaultManager fileExistsAtPath:v9];

  if ((cutStringGUID & 1) == 0)
  {
    defaultManager2 = [MEMORY[0x1E696AC08] defaultManager];
    [defaultManager2 createDirectoryAtPath:v9 withIntermediateDirectories:1 attributes:0 error:0];
  }

  v12 = [v9 stringByAppendingPathComponent:v6];

  v13 = [objc_alloc(MEMORY[0x1E695DFF8]) initFileURLWithPath:v12];
  outputURL = self->_outputURL;
  self->_outputURL = v13;
}

- (void)start
{
  if (!self->_inProgress)
  {
    delegate = [(CUTFileCopier *)self delegate];
    [delegate fileCopierDidStart:self];

    self->_inProgress = 1;
    v5 = MEMORY[0x1E696AF00];

    MEMORY[0x1EEE66B58](v5, sel_detachNewThreadSelector_toTarget_withObject_);
  }
}

- (void)cancel
{
  if (!self->_shouldCancel)
  {
    self->_shouldCancel = 1;
    if (self->_BOMCopier)
    {
      if (self->_inProgress)
      {
        BOMCopier = self->_BOMCopier;
        BOMCopierCancelCopy();
      }
    }
  }
}

- (void)cleanup
{
  if (self->_inProgress)
  {

    [(CUTFileCopier *)self cancel];
  }

  else
  {
    path = [(NSURL *)self->_outputURL path];
    _temporaryCopierPath = [(CUTFileCopier *)self _temporaryCopierPath];
    v4 = [path hasPrefix:_temporaryCopierPath];

    if (v4)
    {
      defaultManager = [MEMORY[0x1E696AC08] defaultManager];
      [defaultManager removeItemAtPath:path error:0];
    }
  }
}

- (void)_main_copierFinishedWithResult:(id)result
{
  bOOLValue = [result BOOLValue];
  shouldCancel = self->_shouldCancel;
  if (!bOOLValue)
  {
    *&self->_didErrorOccur = !shouldCancel;
    if (!shouldCancel)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  *&self->_didErrorOccur = 0;
  if (shouldCancel)
  {
LABEL_5:
    [(CUTFileCopier *)self cleanup];
  }

LABEL_6:
  delegate = [(CUTFileCopier *)self delegate];
  [delegate fileCopierDidFinish:self];
}

- (void)_worker_doCopy
{
  v3 = objc_autoreleasePoolPush();
  v4 = BOMCopierNew();
  self->_BOMCopier = v4;
  if (!v4)
  {
    v15 = 0;
    goto LABEL_12;
  }

  BOMCopierSetUserData();
  BOMCopier = self->_BOMCopier;
  BOMCopierSetCopyFileStartedHandler();
  v6 = self->_BOMCopier;
  BOMCopierSetFileErrorHandler();
  v7 = self->_BOMCopier;
  BOMCopierSetFileConflictErrorHandler();
  v8 = self->_BOMCopier;
  BOMCopierSetFatalErrorHandler();
  v9 = self->_BOMCopier;
  BOMCopierSetFatalFileErrorHandler();
  v10 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v11 = v10;
  operation = self->_operation;
  switch(operation)
  {
    case 0u:
      v13 = *MEMORY[0x1E695E4D0];
      CFDictionarySetValue(v10, @"createCPIO", *MEMORY[0x1E695E4D0]);
      CFDictionarySetValue(v11, @"sequesterResources", v13);
      CFDictionarySetValue(v11, @"createPKZip", v13);
      CFDictionarySetValue(v11, @"keepParent", v13);
      v14 = @"copyResources";
      goto LABEL_9;
    case 1u:
      v16 = *MEMORY[0x1E695E4D0];
      v14 = @"extractPKZip";
LABEL_10:
      CFDictionarySetValue(v10, v14, v16);
      break;
    case 2u:
      v13 = *MEMORY[0x1E695E4D0];
      CFDictionarySetValue(v10, @"createCPIO", *MEMORY[0x1E695E4D0]);
      CFDictionarySetValue(v11, @"sequesterResources", v13);
      v14 = @"createPKZip";
LABEL_9:
      v10 = v11;
      v16 = v13;
      goto LABEL_10;
  }

  inputURL = [(CUTFileCopier *)self inputURL];
  path = [inputURL path];
  [path fileSystemRepresentation];

  outputURL = [(CUTFileCopier *)self outputURL];
  path2 = [outputURL path];
  [path2 fileSystemRepresentation];

  v21 = self->_BOMCopier;
  v15 = BOMCopierCopyWithOptions() == 0;
  v22 = self->_BOMCopier;
  BOMCopierSetUserData();

LABEL_12:
  v23 = [objc_alloc(MEMORY[0x1E696AD98]) initWithBool:v15];
  [(CUTFileCopier *)self performSelectorOnMainThread:sel__main_copierFinishedWithResult_ withObject:v23 waitUntilDone:0];

  objc_autoreleasePoolPop(v3);
}

- (CUTFileCopierDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end