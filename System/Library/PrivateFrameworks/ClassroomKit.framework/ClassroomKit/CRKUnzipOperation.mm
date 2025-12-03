@interface CRKUnzipOperation
+ (id)errorFromBOMCopierStatus:(int)status message:(id)message;
- (CRKUnzipOperation)initWithZipFileURL:(id)l;
- (CRKUnzipOperation)initWithZipFileURL:(id)l destinationDirectoryURL:(id)rL;
- (void)cancel;
- (void)main;
- (void)operationWillFinish;
- (void)setStashedError:(id)error;
@end

@implementation CRKUnzipOperation

- (CRKUnzipOperation)initWithZipFileURL:(id)l
{
  v4 = MEMORY[0x277CBEBC0];
  lCopy = l;
  crk_uniqueTemporaryDirectoryURL = [v4 crk_uniqueTemporaryDirectoryURL];
  v7 = [(CRKUnzipOperation *)self initWithZipFileURL:lCopy destinationDirectoryURL:crk_uniqueTemporaryDirectoryURL];

  return v7;
}

- (CRKUnzipOperation)initWithZipFileURL:(id)l destinationDirectoryURL:(id)rL
{
  lCopy = l;
  rLCopy = rL;
  v10 = rLCopy;
  if (lCopy)
  {
    if (rLCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    [CRKUnzipOperation initWithZipFileURL:a2 destinationDirectoryURL:self];
    if (v10)
    {
      goto LABEL_3;
    }
  }

  [CRKUnzipOperation initWithZipFileURL:a2 destinationDirectoryURL:self];
LABEL_3:
  v14.receiver = self;
  v14.super_class = CRKUnzipOperation;
  v11 = [(CRKUnzipOperation *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_zipFileURL, l);
    objc_storeStrong(&v12->_destinationDirectoryURL, rL);
  }

  return v12;
}

- (void)cancel
{
  v3.receiver = self;
  v3.super_class = CRKUnzipOperation;
  [(CRKUnzipOperation *)&v3 cancel];
  [(CRKUnzipOperation *)self copier];
  BOMCopierCancelCopy();
}

- (void)operationWillFinish
{
  v3.receiver = self;
  v3.super_class = CRKUnzipOperation;
  [(CRKUnzipOperation *)&v3 operationWillFinish];
  [(CRKUnzipOperation *)self copier];
  BOMCopierFree();
  [(CRKUnzipOperation *)self setCopier:0];
}

- (void)main
{
  v17[1] = *MEMORY[0x277D85DE8];
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  destinationDirectoryURL = [(CRKUnzipOperation *)self destinationDirectoryURL];
  v15 = 0;
  v5 = [defaultManager createDirectoryAtURL:destinationDirectoryURL withIntermediateDirectories:1 attributes:0 error:&v15];
  v6 = v15;

  if (v5)
  {
    [(CRKUnzipOperation *)self setCopier:BOMCopierNew()];
    if ([(CRKUnzipOperation *)self isCanceled])
    {
      destinationDirectoryURL3 = CATErrorWithCodeAndUserInfo();
      [(CRKUnzipOperation *)self endOperationWithError:destinationDirectoryURL3];
LABEL_9:

      goto LABEL_12;
    }

    [(CRKUnzipOperation *)self copier];
    BOMCopierSetUserData();
    [(CRKUnzipOperation *)self copier];
    BOMCopierSetFatalErrorHandler();
    [(CRKUnzipOperation *)self copier];
    BOMCopierSetFatalFileErrorHandler();
    [(CRKUnzipOperation *)self copier];
    BOMCopierSetFileErrorHandler();
    [(CRKUnzipOperation *)self copier];
    BOMCopierSetFileConflictErrorHandler();
    [(CRKUnzipOperation *)self copier];
    zipFileURL = [(CRKUnzipOperation *)self zipFileURL];
    [zipFileURL fileSystemRepresentation];
    destinationDirectoryURL2 = [(CRKUnzipOperation *)self destinationDirectoryURL];
    [destinationDirectoryURL2 fileSystemRepresentation];
    v16 = @"extractPKZip";
    v17[0] = MEMORY[0x277CBEC38];
    [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:&v16 count:1];
    v10 = BOMCopierCopyWithOptions();

    if (!v10)
    {
      destinationDirectoryURL3 = [(CRKUnzipOperation *)self destinationDirectoryURL];
      [(CRKUnzipOperation *)self endOperationWithResultObject:destinationDirectoryURL3];
      goto LABEL_9;
    }

    stashedError = [(CRKUnzipOperation *)self stashedError];
    v12 = stashedError;
    if (stashedError)
    {
      v13 = stashedError;
    }

    else
    {
      v13 = [objc_opt_class() errorFromBOMCopierStatus:v10 message:0];
    }

    v14 = v13;

    [(CRKUnzipOperation *)self endOperationWithError:v14];
  }

  else
  {
    [(CRKUnzipOperation *)self endOperationWithError:v6];
  }

LABEL_12:
}

- (void)setStashedError:(id)error
{
  errorCopy = error;
  if (!self->_stashedError)
  {
    v6 = errorCopy;
    objc_storeStrong(&self->_stashedError, error);
    errorCopy = v6;
  }
}

+ (id)errorFromBOMCopierStatus:(int)status message:(id)message
{
  v35[1] = *MEMORY[0x277D85DE8];
  messageCopy = message;
  v6 = messageCopy;
  if (status <= 1)
  {
    if (status != -1)
    {
      if (!status)
      {
        v16 = 0;
        goto LABEL_32;
      }

      if (status == 1)
      {
        v11 = MEMORY[0x277CCA9B8];
        if (messageCopy)
        {
          v30 = *MEMORY[0x277CCA450];
          v31 = messageCopy;
          v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v31 forKeys:&v30 count:1];
          v9 = v11;
          v10 = 1;
          goto LABEL_22;
        }

        v21 = @"BOMCopierErrorDomain";
        v20 = MEMORY[0x277CCA9B8];
        v22 = 1;
        goto LABEL_30;
      }

      goto LABEL_17;
    }

    v13 = MEMORY[0x277CCA9B8];
    v14 = *MEMORY[0x277CCA5B8];
    if (messageCopy)
    {
      v32 = *MEMORY[0x277CCA450];
      v33 = messageCopy;
      v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v33 forKeys:&v32 count:1];
      v16 = [v13 errorWithDomain:v14 code:-1 userInfo:v15];

      goto LABEL_32;
    }

    v20 = MEMORY[0x277CCA9B8];
    v21 = *MEMORY[0x277CCA5B8];
    v22 = -1;
LABEL_30:
    v17 = [v20 errorWithDomain:v21 code:v22 userInfo:0];
    goto LABEL_31;
  }

  if (status <= 3)
  {
    if (status == 2)
    {
      v18 = MEMORY[0x277CCA9B8];
      if (messageCopy)
      {
        v28 = *MEMORY[0x277CCA450];
        v29 = messageCopy;
        v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v29 forKeys:&v28 count:1];
        v9 = v18;
        v10 = 2;
        goto LABEL_22;
      }

      v21 = @"BOMCopierErrorDomain";
      v20 = MEMORY[0x277CCA9B8];
      v22 = 2;
    }

    else
    {
      v7 = MEMORY[0x277CCA9B8];
      if (messageCopy)
      {
        v26 = *MEMORY[0x277CCA450];
        v27 = messageCopy;
        v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v27 forKeys:&v26 count:1];
        v9 = v7;
        v10 = 3;
LABEL_22:
        v16 = [v9 errorWithDomain:@"BOMCopierErrorDomain" code:v10 userInfo:v8];

        goto LABEL_32;
      }

      v21 = @"BOMCopierErrorDomain";
      v20 = MEMORY[0x277CCA9B8];
      v22 = 3;
    }

    goto LABEL_30;
  }

  if (status == 4)
  {
    v19 = MEMORY[0x277CCA9B8];
    if (messageCopy)
    {
      v24 = *MEMORY[0x277CCA450];
      v25 = messageCopy;
      v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v25 forKeys:&v24 count:1];
      v9 = v19;
      v10 = 4;
      goto LABEL_22;
    }

    v21 = @"BOMCopierErrorDomain";
    v20 = MEMORY[0x277CCA9B8];
    v22 = 4;
    goto LABEL_30;
  }

  if (status == 22)
  {
    v12 = MEMORY[0x277CCA9B8];
    if (messageCopy)
    {
      v34 = *MEMORY[0x277CCA450];
      v35[0] = messageCopy;
      v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v35 forKeys:&v34 count:1];
      v9 = v12;
      v10 = 0;
      goto LABEL_22;
    }

    v21 = @"BOMCopierErrorDomain";
    v20 = MEMORY[0x277CCA9B8];
    v22 = 0;
    goto LABEL_30;
  }

LABEL_17:
  v17 = CRKErrorWithCodeAndUserInfo(1, 0);
LABEL_31:
  v16 = v17;
LABEL_32:

  return v16;
}

- (void)initWithZipFileURL:(uint64_t)a1 destinationDirectoryURL:(uint64_t)a2 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"CRKUnzipOperation.m" lineNumber:35 description:{@"Invalid parameter not satisfying: %@", @"zipFileURL"}];
}

- (void)initWithZipFileURL:(uint64_t)a1 destinationDirectoryURL:(uint64_t)a2 .cold.2(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"CRKUnzipOperation.m" lineNumber:36 description:{@"Invalid parameter not satisfying: %@", @"destinationDirectoryURL"}];
}

@end