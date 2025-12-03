@interface CRKDownloadResourcesOperation
- (CRKDownloadResourcesOperation)initWithResources:(id)resources clientIdentity:(id)identity trustedAnchorCertificates:(id)certificates;
- (CRKDownloadResourcesOperation)initWithResources:(id)resources clientIdentity:(id)identity trustedCertificates:(id)certificates;
- (NSURLCredential)credential;
- (id)moveURLToNonEphemeralLocation:(id)location withFileName:(id)name error:(id *)error;
- (void)URLSession:(id)session didBecomeInvalidWithError:(id)error;
- (void)URLSession:(id)session downloadTask:(id)task didFinishDownloadingToURL:(id)l;
- (void)URLSession:(id)session downloadTask:(id)task didWriteData:(int64_t)data totalBytesWritten:(int64_t)written totalBytesExpectedToWrite:(int64_t)write;
- (void)URLSession:(id)session task:(id)task didCompleteWithError:(id)error;
- (void)URLSession:(id)session task:(id)task didReceiveChallenge:(id)challenge completionHandler:(id)handler;
- (void)cancel;
- (void)cancelIfNeeded;
- (void)finalizeDownloadedItem:(id)item forRequestURL:(id)l;
- (void)operationWillFinish;
- (void)run;
- (void)unzipOperationDidFinish:(id)finish forRequestURL:(id)l;
@end

@implementation CRKDownloadResourcesOperation

- (CRKDownloadResourcesOperation)initWithResources:(id)resources clientIdentity:(id)identity trustedCertificates:(id)certificates
{
  resourcesCopy = resources;
  identityCopy = identity;
  certificatesCopy = certificates;
  v26.receiver = self;
  v26.super_class = CRKDownloadResourcesOperation;
  v11 = [(CRKDownloadResourcesOperation *)&v26 init];
  if (v11)
  {
    v12 = [resourcesCopy copy];
    resources = v11->_resources;
    v11->_resources = v12;

    v14 = [certificatesCopy copy];
    trustedCertificates = v11->_trustedCertificates;
    v11->_trustedCertificates = v14;

    objc_storeStrong(&v11->_clientIdentity, identity);
    v16 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(resourcesCopy, "count")}];
    mFileURLs = v11->mFileURLs;
    v11->mFileURLs = v16;

    v18 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(resourcesCopy, "count")}];
    mCompletedUnitCounts = v11->mCompletedUnitCounts;
    v11->mCompletedUnitCounts = v18;

    ephemeralSessionConfiguration = [MEMORY[0x277CBABC8] ephemeralSessionConfiguration];
    [ephemeralSessionConfiguration setDiscretionary:1];
    [ephemeralSessionConfiguration setHTTPMaximumConnectionsPerHost:1];
    [ephemeralSessionConfiguration setTimeoutIntervalForRequest:60.0];
    v21 = MEMORY[0x277CBABB8];
    mainQueue = [MEMORY[0x277CCABD8] mainQueue];
    v23 = [v21 sessionWithConfiguration:ephemeralSessionConfiguration delegate:v11 delegateQueue:mainQueue];
    mSession = v11->mSession;
    v11->mSession = v23;
  }

  return v11;
}

- (CRKDownloadResourcesOperation)initWithResources:(id)resources clientIdentity:(id)identity trustedAnchorCertificates:(id)certificates
{
  certificatesCopy = certificates;
  identityCopy = identity;
  resourcesCopy = resources;
  v11 = [[CRKConcreteIdentity alloc] initWithIdentity:identityCopy];

  v12 = [certificatesCopy crk_mapUsingBlock:&__block_literal_global_70];

  v13 = [(CRKDownloadResourcesOperation *)self initWithResources:resourcesCopy clientIdentity:v11 trustedCertificates:v12];
  return v13;
}

CRKConcreteCertificate *__92__CRKDownloadResourcesOperation_initWithResources_clientIdentity_trustedAnchorCertificates___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[CRKConcreteCertificate alloc] initWithCertificate:v2];

  return v3;
}

- (void)run
{
  v32 = *MEMORY[0x277D85DE8];
  resources = [(CRKDownloadResourcesOperation *)self resources];
  v4 = [resources count];

  if (v4)
  {
    v5 = objc_opt_new();
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    obj = [(CRKDownloadResourcesOperation *)self resources];
    v6 = [obj countByEnumeratingWithState:&v23 objects:v31 count:16];
    if (v6)
    {
      v8 = v6;
      v9 = *v24;
      *&v7 = 138543618;
      v21 = v7;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v24 != v9)
          {
            objc_enumerationMutation(obj);
          }

          v11 = *(*(&v23 + 1) + 8 * i);
          mSession = self->mSession;
          hostedURL = [v11 hostedURL];
          v14 = [(NSURLSession *)mSession downloadTaskWithURL:hostedURL];

          hostedURL2 = [v11 hostedURL];
          absoluteString = [hostedURL2 absoluteString];
          [v14 setTaskDescription:absoluteString];

          [v14 resume];
          [(NSMutableArray *)self->mCompletedUnitCounts addObject:&unk_2856727F0];
          [(NSArray *)v5 addObject:v14];
          v17 = _CRKLogOperation_0();
          if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
          {
            *buf = v21;
            selfCopy = self;
            v29 = 2114;
            v30 = v11;
            _os_log_impl(&dword_243550000, v17, OS_LOG_TYPE_DEFAULT, "%{public}@: Downloading %{public}@", buf, 0x16u);
          }
        }

        v8 = [obj countByEnumeratingWithState:&v23 objects:v31 count:16];
      }

      while (v8);
    }

    mDownloadTasks = self->mDownloadTasks;
    self->mDownloadTasks = v5;

    resources2 = [(CRKDownloadResourcesOperation *)self resources];
    -[CRKDownloadResourcesOperation setTotalUnitCount:](self, "setTotalUnitCount:", 1000 * [resources2 count]);
  }

  else
  {
    v20 = MEMORY[0x277CBEBF8];

    [(CRKDownloadResourcesOperation *)self endOperationWithResultObject:v20];
  }
}

- (void)cancel
{
  v3.receiver = self;
  v3.super_class = CRKDownloadResourcesOperation;
  [(CRKDownloadResourcesOperation *)&v3 cancel];
  [(CRKDownloadResourcesOperation *)self performSelectorOnMainThread:sel_cancelIfNeeded withObject:0 waitUntilDone:0];
}

- (void)cancelIfNeeded
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  v4 = NSStringFromSelector(self);
  [currentHandler handleFailureInMethod:self object:a2 file:@"CRKDownloadResourcesOperation.m" lineNumber:110 description:{@"%@ must be called from the main thread", v4}];
}

- (void)operationWillFinish
{
  v3.receiver = self;
  v3.super_class = CRKDownloadResourcesOperation;
  [(CRKDownloadResourcesOperation *)&v3 operationWillFinish];
  [(NSURLSession *)self->mSession invalidateAndCancel];
}

- (void)URLSession:(id)session task:(id)task didReceiveChallenge:(id)challenge completionHandler:(id)handler
{
  v14 = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  if (([MEMORY[0x277CCACC8] isMainThread] & 1) == 0)
  {
    [CRKDownloadResourcesOperation URLSession:a2 task:self didReceiveChallenge:? completionHandler:?];
  }

  v9 = _CRKLogOperation_0();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 138543362;
    selfCopy = self;
    _os_log_impl(&dword_243550000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@: Did receive authentication challenge", &v12, 0xCu);
  }

  if ([(CRKDownloadResourcesOperation *)self isExecuting]&& ([(CRKDownloadResourcesOperation *)self credential], v10 = objc_claimAutoreleasedReturnValue(), v10, v10))
  {
    credential = [(CRKDownloadResourcesOperation *)self credential];
    handlerCopy[2](handlerCopy, 0, credential);
  }

  else
  {
    handlerCopy[2](handlerCopy, 2, 0);
  }
}

- (void)URLSession:(id)session downloadTask:(id)task didWriteData:(int64_t)data totalBytesWritten:(int64_t)written totalBytesExpectedToWrite:(int64_t)write
{
  v34 = *MEMORY[0x277D85DE8];
  taskCopy = task;
  v11 = _CRKLogOperation_0();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    taskDescription = [taskCopy taskDescription];
    write = [MEMORY[0x277CCABB0] numberWithDouble:written / write];
    *buf = 138543874;
    selfCopy = self;
    v30 = 2114;
    v31 = taskDescription;
    v32 = 2114;
    v33 = write;
    _os_log_impl(&dword_243550000, v11, OS_LOG_TYPE_DEFAULT, "%{public}@: Download of %{public}@ did progress %{public}@", buf, 0x20u);
  }

  v14 = [(NSArray *)self->mDownloadTasks indexOfObject:taskCopy];
  if (v14 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v15 = v14;
    write2 = [MEMORY[0x277CCABB0] numberWithLongLong:1000 * written / write];
    [(NSMutableArray *)self->mCompletedUnitCounts setObject:write2 atIndexedSubscript:v15];
  }

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v17 = self->mCompletedUnitCounts;
  v18 = [(NSMutableArray *)v17 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = 0;
    v21 = *v24;
    do
    {
      for (i = 0; i != v19; ++i)
      {
        if (*v24 != v21)
        {
          objc_enumerationMutation(v17);
        }

        v20 += [*(*(&v23 + 1) + 8 * i) unsignedIntegerValue];
      }

      v19 = [(NSMutableArray *)v17 countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v19);
  }

  else
  {
    v20 = 0;
  }

  [(CRKDownloadResourcesOperation *)self setCompletedUnitCount:v20];
}

- (void)URLSession:(id)session downloadTask:(id)task didFinishDownloadingToURL:(id)l
{
  v32 = *MEMORY[0x277D85DE8];
  lCopy = l;
  v8 = MEMORY[0x277CBEBC0];
  taskCopy = task;
  taskDescription = [taskCopy taskDescription];
  v11 = [v8 URLWithString:taskDescription];

  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  path = [lCopy path];
  v14 = [defaultManager attributesOfItemAtPath:path error:0];
  fileSize = [v14 fileSize];

  v16 = _CRKLogOperation_0();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543874;
    selfCopy = self;
    v28 = 2114;
    v29 = v11;
    v30 = 2048;
    v31 = fileSize;
    _os_log_impl(&dword_243550000, v16, OS_LOG_TYPE_DEFAULT, "%{public}@: Download task did finish downloading url %{public}@. File size: %lu bytes", buf, 0x20u);
  }

  resources = [(CRKDownloadResourcesOperation *)self resources];
  v18 = [(NSArray *)self->mDownloadTasks indexOfObject:taskCopy];

  v19 = [resources objectAtIndexedSubscript:v18];

  if ([v19 isZippedBundle])
  {
    v25 = 0;
    v20 = [(CRKDownloadResourcesOperation *)self moveURLToNonEphemeralLocation:lCopy withFileName:0 error:&v25];
    v21 = v25;
    if (v20)
    {
      v22 = _CRKLogGeneral_8();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        selfCopy = v11;
        _os_log_impl(&dword_243550000, v22, OS_LOG_TYPE_DEFAULT, "Unzipping %{public}@", buf, 0xCu);
      }

      v23 = [[CRKUnzipOperation alloc] initWithZipFileURL:v20];
      [(CRKUnzipOperation *)v23 addTarget:self selector:sel_unzipOperationDidFinish_forRequestURL_ forOperationEvents:6 userInfo:v11];
      crk_backgroundQueue = [MEMORY[0x277CF9540] crk_backgroundQueue];
      [crk_backgroundQueue addOperation:v23];
    }

    else
    {
      [(CRKDownloadResourcesOperation *)self endOperationWithError:v21];
    }
  }

  else
  {
    [(CRKDownloadResourcesOperation *)self finalizeDownloadedItem:lCopy forRequestURL:v11];
  }
}

- (id)moveURLToNonEphemeralLocation:(id)location withFileName:(id)name error:(id *)error
{
  locationCopy = location;
  nameCopy = name;
  crk_uniqueTemporaryDirectoryURL = [MEMORY[0x277CBEBC0] crk_uniqueTemporaryDirectoryURL];
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v11 = [defaultManager createDirectoryAtURL:crk_uniqueTemporaryDirectoryURL withIntermediateDirectories:1 attributes:0 error:error];

  v12 = 0;
  if (v11)
  {
    if (nameCopy)
    {
      v13 = [crk_uniqueTemporaryDirectoryURL URLByAppendingPathComponent:nameCopy];
    }

    else
    {
      lastPathComponent = [locationCopy lastPathComponent];
      v13 = [crk_uniqueTemporaryDirectoryURL URLByAppendingPathComponent:lastPathComponent];
    }

    defaultManager2 = [MEMORY[0x277CCAA00] defaultManager];
    v16 = [defaultManager2 moveItemAtURL:locationCopy toURL:v13 error:error];

    if (v16)
    {
      v12 = v13;
    }

    else
    {
      v12 = 0;
    }
  }

  return v12;
}

- (void)unzipOperationDidFinish:(id)finish forRequestURL:(id)l
{
  lCopy = l;
  finishCopy = finish;
  error = [finishCopy error];

  if (error)
  {
    error2 = [finishCopy error];

    [(CRKDownloadResourcesOperation *)self endOperationWithError:error2];
  }

  else
  {
    error2 = [finishCopy resultObject];

    defaultManager = [MEMORY[0x277CCAA00] defaultManager];
    v14 = 0;
    v11 = [defaultManager contentsOfDirectoryAtURL:error2 includingPropertiesForKeys:0 options:4 error:&v14];
    v12 = v14;

    if (v11)
    {
      if ([v11 count] == 1)
      {
        firstObject = [v11 firstObject];
        [(CRKDownloadResourcesOperation *)self finalizeDownloadedItem:firstObject forRequestURL:lCopy];
      }

      else
      {
        firstObject = CRKErrorWithCodeAndUserInfo(22, 0);
        [(CRKDownloadResourcesOperation *)self endOperationWithError:firstObject];
      }
    }

    else
    {
      [(CRKDownloadResourcesOperation *)self endOperationWithError:v12];
    }
  }
}

- (void)finalizeDownloadedItem:(id)item forRequestURL:(id)l
{
  v23 = *MEMORY[0x277D85DE8];
  itemCopy = item;
  lCopy = l;
  if ([(CRKDownloadResourcesOperation *)self isExecuting])
  {
    lastPathComponent = [lCopy lastPathComponent];
    v20 = 0;
    v9 = [(CRKDownloadResourcesOperation *)self moveURLToNonEphemeralLocation:itemCopy withFileName:lastPathComponent error:&v20];
    v10 = v20;

    if (v9)
    {
      [(NSMutableArray *)self->mFileURLs addObject:v9];
      v11 = _CRKLogGeneral_8();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v22 = lCopy;
        _os_log_impl(&dword_243550000, v11, OS_LOG_TYPE_DEFAULT, "Finalized downloaded item for request URL %{public}@", buf, 0xCu);
      }

      v12 = [(NSMutableArray *)self->mFileURLs count];
      resources = [(CRKDownloadResourcesOperation *)self resources];
      v14 = [resources count];

      if (v12 == v14)
      {
        [(CRKDownloadResourcesOperation *)self endOperationWithResultObject:self->mFileURLs];
      }

      else
      {
        resources2 = [(CRKDownloadResourcesOperation *)self resources];
        v16 = [resources2 count];
        v17 = [(NSMutableArray *)self->mFileURLs count];

        v18 = _CRKLogGeneral_8();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          v19 = [MEMORY[0x277CCABB0] numberWithInteger:v16 - v17];
          *buf = 138543362;
          v22 = v19;
          _os_log_impl(&dword_243550000, v18, OS_LOG_TYPE_DEFAULT, "Not ending the operation because there are %{public}@ items yet to be finalized", buf, 0xCu);
        }
      }
    }

    else
    {
      [(CRKDownloadResourcesOperation *)self endOperationWithError:v10];
    }
  }
}

- (void)URLSession:(id)session task:(id)task didCompleteWithError:(id)error
{
  sessionCopy = session;
  taskCopy = task;
  errorCopy = error;
  if (errorCopy && [(CRKDownloadResourcesOperation *)self isExecuting])
  {
    [(CRKDownloadResourcesOperation *)self endOperationWithError:errorCopy];
  }
}

- (void)URLSession:(id)session didBecomeInvalidWithError:(id)error
{
  errorCopy = error;
  if ([(CRKDownloadResourcesOperation *)self isExecuting])
  {
    [(CRKDownloadResourcesOperation *)self endOperationWithError:errorCopy];
  }
}

- (NSURLCredential)credential
{
  credential = self->_credential;
  if (credential)
  {
    v3 = credential;
  }

  else
  {
    trustedCertificates = [(CRKDownloadResourcesOperation *)self trustedCertificates];
    v6 = [trustedCertificates crk_mapUsingBlock:&__block_literal_global_30];

    if ([v6 count])
    {
      v7 = MEMORY[0x277CBAB80];
      clientIdentity = [(CRKDownloadResourcesOperation *)self clientIdentity];
      v9 = [v7 credentialWithIdentity:objc_msgSend(clientIdentity certificates:"underlyingIdentity") persistence:{v6, 0}];

      v10 = self->_credential;
      self->_credential = v9;
      v11 = v9;

      v3 = self->_credential;
    }

    else
    {
      v3 = 0;
    }
  }

  return v3;
}

uint64_t __43__CRKDownloadResourcesOperation_credential__block_invoke(int a1, id a2)
{
  v2 = a2;

  return [v2 underlyingCertificate];
}

- (void)URLSession:(const char *)a1 task:(uint64_t)a2 didReceiveChallenge:completionHandler:.cold.1(const char *a1, uint64_t a2)
{
  v5 = [MEMORY[0x277CCA890] currentHandler];
  v4 = NSStringFromSelector(a1);
  [v5 handleFailureInMethod:a1 object:a2 file:@"CRKDownloadResourcesOperation.m" lineNumber:124 description:{@"%@ must be called from the main thread", v4}];
}

@end