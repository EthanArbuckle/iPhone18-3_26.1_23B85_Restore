@interface CRKDownloadResourcesOperation
- (CRKDownloadResourcesOperation)initWithResources:(id)a3 clientIdentity:(id)a4 trustedAnchorCertificates:(id)a5;
- (CRKDownloadResourcesOperation)initWithResources:(id)a3 clientIdentity:(id)a4 trustedCertificates:(id)a5;
- (NSURLCredential)credential;
- (id)moveURLToNonEphemeralLocation:(id)a3 withFileName:(id)a4 error:(id *)a5;
- (void)URLSession:(id)a3 didBecomeInvalidWithError:(id)a4;
- (void)URLSession:(id)a3 downloadTask:(id)a4 didFinishDownloadingToURL:(id)a5;
- (void)URLSession:(id)a3 downloadTask:(id)a4 didWriteData:(int64_t)a5 totalBytesWritten:(int64_t)a6 totalBytesExpectedToWrite:(int64_t)a7;
- (void)URLSession:(id)a3 task:(id)a4 didCompleteWithError:(id)a5;
- (void)URLSession:(id)a3 task:(id)a4 didReceiveChallenge:(id)a5 completionHandler:(id)a6;
- (void)cancel;
- (void)cancelIfNeeded;
- (void)finalizeDownloadedItem:(id)a3 forRequestURL:(id)a4;
- (void)operationWillFinish;
- (void)run;
- (void)unzipOperationDidFinish:(id)a3 forRequestURL:(id)a4;
@end

@implementation CRKDownloadResourcesOperation

- (CRKDownloadResourcesOperation)initWithResources:(id)a3 clientIdentity:(id)a4 trustedCertificates:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v26.receiver = self;
  v26.super_class = CRKDownloadResourcesOperation;
  v11 = [(CRKDownloadResourcesOperation *)&v26 init];
  if (v11)
  {
    v12 = [v8 copy];
    resources = v11->_resources;
    v11->_resources = v12;

    v14 = [v10 copy];
    trustedCertificates = v11->_trustedCertificates;
    v11->_trustedCertificates = v14;

    objc_storeStrong(&v11->_clientIdentity, a4);
    v16 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v8, "count")}];
    mFileURLs = v11->mFileURLs;
    v11->mFileURLs = v16;

    v18 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v8, "count")}];
    mCompletedUnitCounts = v11->mCompletedUnitCounts;
    v11->mCompletedUnitCounts = v18;

    v20 = [MEMORY[0x277CBABC8] ephemeralSessionConfiguration];
    [v20 setDiscretionary:1];
    [v20 setHTTPMaximumConnectionsPerHost:1];
    [v20 setTimeoutIntervalForRequest:60.0];
    v21 = MEMORY[0x277CBABB8];
    v22 = [MEMORY[0x277CCABD8] mainQueue];
    v23 = [v21 sessionWithConfiguration:v20 delegate:v11 delegateQueue:v22];
    mSession = v11->mSession;
    v11->mSession = v23;
  }

  return v11;
}

- (CRKDownloadResourcesOperation)initWithResources:(id)a3 clientIdentity:(id)a4 trustedAnchorCertificates:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [[CRKConcreteIdentity alloc] initWithIdentity:v9];

  v12 = [v8 crk_mapUsingBlock:&__block_literal_global_70];

  v13 = [(CRKDownloadResourcesOperation *)self initWithResources:v10 clientIdentity:v11 trustedCertificates:v12];
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
  v3 = [(CRKDownloadResourcesOperation *)self resources];
  v4 = [v3 count];

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
          v13 = [v11 hostedURL];
          v14 = [(NSURLSession *)mSession downloadTaskWithURL:v13];

          v15 = [v11 hostedURL];
          v16 = [v15 absoluteString];
          [v14 setTaskDescription:v16];

          [v14 resume];
          [(NSMutableArray *)self->mCompletedUnitCounts addObject:&unk_2856727F0];
          [(NSArray *)v5 addObject:v14];
          v17 = _CRKLogOperation_0();
          if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
          {
            *buf = v21;
            v28 = self;
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

    v19 = [(CRKDownloadResourcesOperation *)self resources];
    -[CRKDownloadResourcesOperation setTotalUnitCount:](self, "setTotalUnitCount:", 1000 * [v19 count]);
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
  v5 = [MEMORY[0x277CCA890] currentHandler];
  v4 = NSStringFromSelector(a1);
  [v5 handleFailureInMethod:a1 object:a2 file:@"CRKDownloadResourcesOperation.m" lineNumber:110 description:{@"%@ must be called from the main thread", v4}];
}

- (void)operationWillFinish
{
  v3.receiver = self;
  v3.super_class = CRKDownloadResourcesOperation;
  [(CRKDownloadResourcesOperation *)&v3 operationWillFinish];
  [(NSURLSession *)self->mSession invalidateAndCancel];
}

- (void)URLSession:(id)a3 task:(id)a4 didReceiveChallenge:(id)a5 completionHandler:(id)a6
{
  v14 = *MEMORY[0x277D85DE8];
  v8 = a6;
  if (([MEMORY[0x277CCACC8] isMainThread] & 1) == 0)
  {
    [CRKDownloadResourcesOperation URLSession:a2 task:self didReceiveChallenge:? completionHandler:?];
  }

  v9 = _CRKLogOperation_0();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 138543362;
    v13 = self;
    _os_log_impl(&dword_243550000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@: Did receive authentication challenge", &v12, 0xCu);
  }

  if ([(CRKDownloadResourcesOperation *)self isExecuting]&& ([(CRKDownloadResourcesOperation *)self credential], v10 = objc_claimAutoreleasedReturnValue(), v10, v10))
  {
    v11 = [(CRKDownloadResourcesOperation *)self credential];
    v8[2](v8, 0, v11);
  }

  else
  {
    v8[2](v8, 2, 0);
  }
}

- (void)URLSession:(id)a3 downloadTask:(id)a4 didWriteData:(int64_t)a5 totalBytesWritten:(int64_t)a6 totalBytesExpectedToWrite:(int64_t)a7
{
  v34 = *MEMORY[0x277D85DE8];
  v10 = a4;
  v11 = _CRKLogOperation_0();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = [v10 taskDescription];
    v13 = [MEMORY[0x277CCABB0] numberWithDouble:a6 / a7];
    *buf = 138543874;
    v29 = self;
    v30 = 2114;
    v31 = v12;
    v32 = 2114;
    v33 = v13;
    _os_log_impl(&dword_243550000, v11, OS_LOG_TYPE_DEFAULT, "%{public}@: Download of %{public}@ did progress %{public}@", buf, 0x20u);
  }

  v14 = [(NSArray *)self->mDownloadTasks indexOfObject:v10];
  if (v14 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v15 = v14;
    v16 = [MEMORY[0x277CCABB0] numberWithLongLong:1000 * a6 / a7];
    [(NSMutableArray *)self->mCompletedUnitCounts setObject:v16 atIndexedSubscript:v15];
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

- (void)URLSession:(id)a3 downloadTask:(id)a4 didFinishDownloadingToURL:(id)a5
{
  v32 = *MEMORY[0x277D85DE8];
  v7 = a5;
  v8 = MEMORY[0x277CBEBC0];
  v9 = a4;
  v10 = [v9 taskDescription];
  v11 = [v8 URLWithString:v10];

  v12 = [MEMORY[0x277CCAA00] defaultManager];
  v13 = [v7 path];
  v14 = [v12 attributesOfItemAtPath:v13 error:0];
  v15 = [v14 fileSize];

  v16 = _CRKLogOperation_0();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543874;
    v27 = self;
    v28 = 2114;
    v29 = v11;
    v30 = 2048;
    v31 = v15;
    _os_log_impl(&dword_243550000, v16, OS_LOG_TYPE_DEFAULT, "%{public}@: Download task did finish downloading url %{public}@. File size: %lu bytes", buf, 0x20u);
  }

  v17 = [(CRKDownloadResourcesOperation *)self resources];
  v18 = [(NSArray *)self->mDownloadTasks indexOfObject:v9];

  v19 = [v17 objectAtIndexedSubscript:v18];

  if ([v19 isZippedBundle])
  {
    v25 = 0;
    v20 = [(CRKDownloadResourcesOperation *)self moveURLToNonEphemeralLocation:v7 withFileName:0 error:&v25];
    v21 = v25;
    if (v20)
    {
      v22 = _CRKLogGeneral_8();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v27 = v11;
        _os_log_impl(&dword_243550000, v22, OS_LOG_TYPE_DEFAULT, "Unzipping %{public}@", buf, 0xCu);
      }

      v23 = [[CRKUnzipOperation alloc] initWithZipFileURL:v20];
      [(CRKUnzipOperation *)v23 addTarget:self selector:sel_unzipOperationDidFinish_forRequestURL_ forOperationEvents:6 userInfo:v11];
      v24 = [MEMORY[0x277CF9540] crk_backgroundQueue];
      [v24 addOperation:v23];
    }

    else
    {
      [(CRKDownloadResourcesOperation *)self endOperationWithError:v21];
    }
  }

  else
  {
    [(CRKDownloadResourcesOperation *)self finalizeDownloadedItem:v7 forRequestURL:v11];
  }
}

- (id)moveURLToNonEphemeralLocation:(id)a3 withFileName:(id)a4 error:(id *)a5
{
  v7 = a3;
  v8 = a4;
  v9 = [MEMORY[0x277CBEBC0] crk_uniqueTemporaryDirectoryURL];
  v10 = [MEMORY[0x277CCAA00] defaultManager];
  v11 = [v10 createDirectoryAtURL:v9 withIntermediateDirectories:1 attributes:0 error:a5];

  v12 = 0;
  if (v11)
  {
    if (v8)
    {
      v13 = [v9 URLByAppendingPathComponent:v8];
    }

    else
    {
      v14 = [v7 lastPathComponent];
      v13 = [v9 URLByAppendingPathComponent:v14];
    }

    v15 = [MEMORY[0x277CCAA00] defaultManager];
    v16 = [v15 moveItemAtURL:v7 toURL:v13 error:a5];

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

- (void)unzipOperationDidFinish:(id)a3 forRequestURL:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [v7 error];

  if (v8)
  {
    v9 = [v7 error];

    [(CRKDownloadResourcesOperation *)self endOperationWithError:v9];
  }

  else
  {
    v9 = [v7 resultObject];

    v10 = [MEMORY[0x277CCAA00] defaultManager];
    v14 = 0;
    v11 = [v10 contentsOfDirectoryAtURL:v9 includingPropertiesForKeys:0 options:4 error:&v14];
    v12 = v14;

    if (v11)
    {
      if ([v11 count] == 1)
      {
        v13 = [v11 firstObject];
        [(CRKDownloadResourcesOperation *)self finalizeDownloadedItem:v13 forRequestURL:v6];
      }

      else
      {
        v13 = CRKErrorWithCodeAndUserInfo(22, 0);
        [(CRKDownloadResourcesOperation *)self endOperationWithError:v13];
      }
    }

    else
    {
      [(CRKDownloadResourcesOperation *)self endOperationWithError:v12];
    }
  }
}

- (void)finalizeDownloadedItem:(id)a3 forRequestURL:(id)a4
{
  v23 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if ([(CRKDownloadResourcesOperation *)self isExecuting])
  {
    v8 = [v7 lastPathComponent];
    v20 = 0;
    v9 = [(CRKDownloadResourcesOperation *)self moveURLToNonEphemeralLocation:v6 withFileName:v8 error:&v20];
    v10 = v20;

    if (v9)
    {
      [(NSMutableArray *)self->mFileURLs addObject:v9];
      v11 = _CRKLogGeneral_8();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v22 = v7;
        _os_log_impl(&dword_243550000, v11, OS_LOG_TYPE_DEFAULT, "Finalized downloaded item for request URL %{public}@", buf, 0xCu);
      }

      v12 = [(NSMutableArray *)self->mFileURLs count];
      v13 = [(CRKDownloadResourcesOperation *)self resources];
      v14 = [v13 count];

      if (v12 == v14)
      {
        [(CRKDownloadResourcesOperation *)self endOperationWithResultObject:self->mFileURLs];
      }

      else
      {
        v15 = [(CRKDownloadResourcesOperation *)self resources];
        v16 = [v15 count];
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

- (void)URLSession:(id)a3 task:(id)a4 didCompleteWithError:(id)a5
{
  v10 = a3;
  v8 = a4;
  v9 = a5;
  if (v9 && [(CRKDownloadResourcesOperation *)self isExecuting])
  {
    [(CRKDownloadResourcesOperation *)self endOperationWithError:v9];
  }
}

- (void)URLSession:(id)a3 didBecomeInvalidWithError:(id)a4
{
  v5 = a4;
  if ([(CRKDownloadResourcesOperation *)self isExecuting])
  {
    [(CRKDownloadResourcesOperation *)self endOperationWithError:v5];
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
    v5 = [(CRKDownloadResourcesOperation *)self trustedCertificates];
    v6 = [v5 crk_mapUsingBlock:&__block_literal_global_30];

    if ([v6 count])
    {
      v7 = MEMORY[0x277CBAB80];
      v8 = [(CRKDownloadResourcesOperation *)self clientIdentity];
      v9 = [v7 credentialWithIdentity:objc_msgSend(v8 certificates:"underlyingIdentity") persistence:{v6, 0}];

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