@interface CRKShowOpenDialogOperation
+ (id)fakeBundleID;
- (CRKShowOpenDialogOperation)initWithFileURLs:(id)a3 keepOriginalFiles:(BOOL)a4 previewImageData:(id)a5 senderName:(id)a6 autoAccept:(BOOL)a7 sourceBundleIdentifier:(id)a8 filesDescription:(id)a9;
- (CRKShowOpenDialogOperation)initWithFileURLs:(id)a3 keepOriginalFiles:(BOOL)a4 previewImageData:(id)a5 senderName:(id)a6 autoAccept:(BOOL)a7 sourceBundleIdentifier:(id)a8 filesDescription:(id)a9 cleanupDelay:(double)a10 sharingPrimitives:(id)a11 fileSystemPrimitives:(id)a12;
- (void)cancel;
- (void)cleanupHiddenTransferItemsIfNeeded;
- (void)failWithError:(id)a3;
- (void)startTransfer;
- (void)succeedIfNeeded;
- (void)transferDidFinishWithSuccess:(BOOL)a3 destinationPath:(id)a4 error:(id)a5;
- (void)transferDidProgressWithSuccess:(BOOL)a3 destinationPath:(id)a4 error:(id)a5;
- (void)transferDidStartWithSuccess:(BOOL)a3 destinationPath:(id)a4 error:(id)a5;
- (void)transferWithIdentifierWasAccepted:(id)a3;
- (void)transferWithIdentifierWasDeclined:(id)a3 error:(id)a4;
@end

@implementation CRKShowOpenDialogOperation

- (CRKShowOpenDialogOperation)initWithFileURLs:(id)a3 keepOriginalFiles:(BOOL)a4 previewImageData:(id)a5 senderName:(id)a6 autoAccept:(BOOL)a7 sourceBundleIdentifier:(id)a8 filesDescription:(id)a9
{
  v10 = a7;
  v13 = a4;
  v16 = a9;
  v17 = a8;
  v18 = a6;
  v19 = a5;
  v20 = a3;
  v21 = objc_opt_new();
  v22 = objc_opt_new();
  v23 = [(CRKShowOpenDialogOperation *)self initWithFileURLs:v20 keepOriginalFiles:v13 previewImageData:v19 senderName:v18 autoAccept:v10 sourceBundleIdentifier:v17 filesDescription:10.0 cleanupDelay:v16 sharingPrimitives:v21 fileSystemPrimitives:v22];

  return v23;
}

- (CRKShowOpenDialogOperation)initWithFileURLs:(id)a3 keepOriginalFiles:(BOOL)a4 previewImageData:(id)a5 senderName:(id)a6 autoAccept:(BOOL)a7 sourceBundleIdentifier:(id)a8 filesDescription:(id)a9 cleanupDelay:(double)a10 sharingPrimitives:(id)a11 fileSystemPrimitives:(id)a12
{
  v18 = a3;
  v19 = a5;
  v20 = a6;
  v21 = a8;
  v22 = a9;
  v38 = a11;
  v37 = a12;
  if (![v18 count])
  {
    [CRKShowOpenDialogOperation initWithFileURLs:keepOriginalFiles:previewImageData:senderName:autoAccept:sourceBundleIdentifier:filesDescription:cleanupDelay:sharingPrimitives:fileSystemPrimitives:];
  }

  v39.receiver = self;
  v39.super_class = CRKShowOpenDialogOperation;
  v23 = [(CRKShowOpenDialogOperation *)&v39 init];
  v24 = v23;
  if (v23)
  {
    objc_storeStrong(&v23->mURLs, a3);
    v24->mKeepOriginalFiles = a4;
    v25 = [v19 copy];
    mPreviewImageData = v24->mPreviewImageData;
    v24->mPreviewImageData = v25;

    v27 = [v20 copy];
    mSenderName = v24->mSenderName;
    v24->mSenderName = v27;

    v24->mAutoAccept = a7;
    v29 = [v21 copy];
    mSourceBundleIdentifier = v24->mSourceBundleIdentifier;
    v24->mSourceBundleIdentifier = v29;

    v31 = [v22 copy];
    mFilesDescription = v24->mFilesDescription;
    v24->mFilesDescription = v31;

    v24->_cleanupDelay = a10;
    objc_storeStrong(&v24->_sharingPrimitives, a11);
    objc_storeStrong(&v24->_fileSystemPrimitives, a12);
  }

  return v24;
}

- (void)cancel
{
  v4.receiver = self;
  v4.super_class = CRKShowOpenDialogOperation;
  [(CRKShowOpenDialogOperation *)&v4 cancel];
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __36__CRKShowOpenDialogOperation_cancel__block_invoke;
  v3[3] = &unk_278DC10F0;
  v3[4] = self;
  [MEMORY[0x277CBEB88] cat_performBlockOnMainRunLoop:v3];
}

void __36__CRKShowOpenDialogOperation_cancel__block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) isExecuting])
  {
    v2 = *(a1 + 32);
    v3 = CATErrorWithCodeAndUserInfo();
    [v2 failWithError:v3];
  }
}

- (void)startTransfer
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&dword_243550000, a2, OS_LOG_TYPE_ERROR, "%{public}@: Invalid item", &v2, 0xCu);
}

void __43__CRKShowOpenDialogOperation_startTransfer__block_invoke(uint64_t a1, void *a2, int a3, void *a4)
{
  v10 = a4;
  v7 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v9 = WeakRetained;
  if (a3)
  {
    [WeakRetained transferWithIdentifierWasAccepted:v7];
  }

  else
  {
    [WeakRetained transferWithIdentifierWasDeclined:v7 error:v10];
  }
}

- (void)transferDidStartWithSuccess:(BOOL)a3 destinationPath:(id)a4 error:(id)a5
{
  v7 = a3;
  v57 = *MEMORY[0x277D85DE8];
  v39 = a4;
  v9 = a5;
  if (([MEMORY[0x277CCACC8] isMainThread] & 1) == 0)
  {
    [CRKShowOpenDialogOperation transferDidStartWithSuccess:destinationPath:error:];
  }

  if ([(CRKShowOpenDialogOperation *)self isExecuting])
  {
    v10 = _CRKLogOperation();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138544130;
      v50 = self;
      v51 = 1024;
      v52 = v7;
      v53 = 2114;
      v54 = v39;
      v55 = 2114;
      v56 = v9;
      _os_log_impl(&dword_243550000, v10, OS_LOG_TYPE_DEFAULT, "%{public}@: Transfer did start. success: %d, destination: %{public}@, error: %{public}@", buf, 0x26u);
    }

    if (v7)
    {
      objc_storeStrong(&self->mTransferDirectoryURL, a4);
      v36 = objc_opt_new();
      v44 = 0u;
      v45 = 0u;
      v46 = 0u;
      v47 = 0u;
      v11 = [(CRKShowOpenDialogOperation *)self transfer];
      v12 = [v11 fileURLs];

      obj = v12;
      v13 = [v12 countByEnumeratingWithState:&v44 objects:v48 count:16];
      if (v13)
      {
        v14 = v13;
        v38 = *v45;
        while (2)
        {
          v15 = 0;
          do
          {
            if (*v45 != v38)
            {
              objc_enumerationMutation(obj);
            }

            v16 = *(*(&v44 + 1) + 8 * v15);
            v17 = v39;
            if (CRKIsiOS())
            {
              v18 = [MEMORY[0x277CCAD78] UUID];
              v19 = [v18 UUIDString];
              v20 = [v17 URLByAppendingPathComponent:v19];

              v17 = v20;
            }

            v21 = [(CRKShowOpenDialogOperation *)self fileSystemPrimitives];
            v43 = v9;
            v22 = [v21 makeDirectoryAtURL:v17 error:&v43];
            v23 = v43;

            if (!v22)
            {
              [(CRKShowOpenDialogOperation *)self failWithError:v23];

              v9 = v23;
              v32 = v36;
              goto LABEL_26;
            }

            v24 = [MEMORY[0x277CCAA00] defaultManager];
            v25 = [v16 lastPathComponent];
            v26 = [v17 URLByAppendingPathComponent:v25];
            v27 = [v24 crk_collisionAvoidingURLForURL:v26];

            LODWORD(v24) = self->mKeepOriginalFiles;
            v28 = [(CRKShowOpenDialogOperation *)self fileSystemPrimitives];
            v29 = v28;
            if (v24 == 1)
            {
              v42 = v23;
              v30 = [v28 copyItemAtURL:v16 toURL:v27 error:&v42];
              v31 = v42;
            }

            else
            {
              v41 = v23;
              v30 = [v28 moveItemAtURL:v16 toURL:v27 error:&v41];
              v31 = v41;
            }

            v9 = v31;

            if (v30)
            {
              [v36 addObject:v27];
            }

            else
            {
              [(CRKShowOpenDialogOperation *)self failWithError:v9];
            }

            ++v15;
          }

          while (v14 != v15);
          v14 = [obj countByEnumeratingWithState:&v44 objects:v48 count:16];
          if (v14)
          {
            continue;
          }

          break;
        }
      }

      v32 = v36;
      v33 = [v36 copy];
      v34 = [(CRKShowOpenDialogOperation *)self transfer];
      [v34 setDestFileURLs:v33];

      v35 = [(CRKShowOpenDialogOperation *)self transfer];
      v40[0] = MEMORY[0x277D85DD0];
      v40[1] = 3221225472;
      v40[2] = __80__CRKShowOpenDialogOperation_transferDidStartWithSuccess_destinationPath_error___block_invoke;
      v40[3] = &unk_278DC2600;
      v40[4] = self;
      [v35 updateWithState:2 completion:v40];

LABEL_26:
    }

    else
    {
      [(CRKShowOpenDialogOperation *)self failWithError:v9];
    }
  }
}

- (void)transferDidProgressWithSuccess:(BOOL)a3 destinationPath:(id)a4 error:(id)a5
{
  v6 = a3;
  v22 = *MEMORY[0x277D85DE8];
  v8 = a4;
  v9 = a5;
  if (([MEMORY[0x277CCACC8] isMainThread] & 1) == 0)
  {
    [CRKShowOpenDialogOperation transferDidProgressWithSuccess:destinationPath:error:];
  }

  if ([(CRKShowOpenDialogOperation *)self isExecuting])
  {
    v10 = _CRKLogOperation();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138544130;
      v19 = self;
      v20 = 1024;
      *v21 = v6;
      *&v21[4] = 2114;
      *&v21[6] = v8;
      *&v21[14] = 2114;
      *&v21[16] = v9;
      _os_log_impl(&dword_243550000, v10, OS_LOG_TYPE_DEFAULT, "%{public}@: Transfer did progress: success: %d, destination: %{public}@, error: %{public}@", buf, 0x26u);
    }

    if (v6)
    {
      v11 = _CRKLogOperation();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v12 = [(CRKShowOpenDialogOperation *)self transfer];
        v13 = [v12 identifier];
        v14 = [(CRKShowOpenDialogOperation *)self transfer];
        *buf = 138543874;
        v19 = self;
        v20 = 2114;
        *v21 = v13;
        *&v21[8] = 2114;
        *&v21[10] = v14;
        _os_log_impl(&dword_243550000, v11, OS_LOG_TYPE_DEFAULT, "%{public}@: Finishing transfer. Identifier: %{public}@. Info: %{public}@", buf, 0x20u);
      }

      v15 = [(CRKShowOpenDialogOperation *)self transfer];
      v16[0] = MEMORY[0x277D85DD0];
      v16[1] = 3221225472;
      v16[2] = __83__CRKShowOpenDialogOperation_transferDidProgressWithSuccess_destinationPath_error___block_invoke;
      v16[3] = &unk_278DC2628;
      v16[4] = self;
      v17 = v8;
      [v15 updateWithState:5 completion:v16];
    }

    else
    {
      [(CRKShowOpenDialogOperation *)self failWithError:v9];
    }
  }
}

- (void)transferDidFinishWithSuccess:(BOOL)a3 destinationPath:(id)a4 error:(id)a5
{
  v6 = a3;
  v19 = *MEMORY[0x277D85DE8];
  v8 = a4;
  v9 = a5;
  if (([MEMORY[0x277CCACC8] isMainThread] & 1) == 0)
  {
    [CRKShowOpenDialogOperation transferDidFinishWithSuccess:destinationPath:error:];
  }

  if ([(CRKShowOpenDialogOperation *)self isExecuting])
  {
    v10 = _CRKLogOperation();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 138544130;
      v12 = self;
      v13 = 1024;
      v14 = v6;
      v15 = 2114;
      v16 = v8;
      v17 = 2114;
      v18 = v9;
      _os_log_impl(&dword_243550000, v10, OS_LOG_TYPE_DEFAULT, "%{public}@: Transfer did finish. success: %d, destination: %{public}@, error: %{public}@", &v11, 0x26u);
    }

    if (v6)
    {
      self->mTransferFinished = 1;
      [(CRKShowOpenDialogOperation *)self succeedIfNeeded];
    }

    else
    {
      [(CRKShowOpenDialogOperation *)self failWithError:v9];
    }
  }
}

- (void)transferWithIdentifierWasAccepted:(id)a3
{
  v41 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (([MEMORY[0x277CCACC8] isMainThread] & 1) == 0)
  {
    [CRKShowOpenDialogOperation transferWithIdentifierWasAccepted:];
  }

  if ([(CRKShowOpenDialogOperation *)self isExecuting])
  {
    v5 = _CRKLogOperation();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      v38 = self;
      v39 = 2114;
      v40 = v4;
      _os_log_impl(&dword_243550000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@: Transfer with identifier %{public}@ ACCEPTED", buf, 0x16u);
    }

    if (CRKIsOSX())
    {
      v26 = v4;
      v6 = MEMORY[0x277CBEB58];
      v7 = [(CRKShowOpenDialogOperation *)self transfer];
      v8 = [v7 destFileURLs];
      v28 = [v6 setWithCapacity:{objc_msgSend(v8, "count")}];

      v34 = 0u;
      v35 = 0u;
      v32 = 0u;
      v33 = 0u;
      v29 = self;
      v9 = [(CRKShowOpenDialogOperation *)self transfer];
      v10 = [v9 destFileURLs];

      obj = v10;
      v11 = [v10 countByEnumeratingWithState:&v32 objects:v36 count:16];
      if (v11)
      {
        v12 = v11;
        v13 = *v33;
        while (2)
        {
          for (i = 0; i != v12; ++i)
          {
            if (*v33 != v13)
            {
              objc_enumerationMutation(obj);
            }

            v15 = *(*(&v32 + 1) + 8 * i);
            v16 = [v15 URLByDeletingLastPathComponent];
            [v28 addObject:v16];
            v17 = [v15 lastPathComponent];
            v18 = [v16 URLByDeletingLastPathComponent];
            v19 = [MEMORY[0x277CCAA00] defaultManager];
            v20 = [v18 URLByAppendingPathComponent:v17];
            v21 = [v19 crk_collisionAvoidingURLForURL:v20];

            v22 = [(CRKShowOpenDialogOperation *)v29 fileSystemPrimitives];
            v31 = 0;
            LOBYTE(v20) = [v22 copyItemAtURL:v15 toURL:v21 error:&v31];
            v23 = v31;

            if ((v20 & 1) == 0)
            {
              [(CRKShowOpenDialogOperation *)v29 failWithError:v23];

              v4 = v26;
              goto LABEL_18;
            }
          }

          v12 = [obj countByEnumeratingWithState:&v32 objects:v36 count:16];
          if (v12)
          {
            continue;
          }

          break;
        }
      }

      self = v29;
      [(CRKShowOpenDialogOperation *)v29 cleanupDelay];
      v25 = dispatch_time(0, (v24 * 1000000000.0));
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __64__CRKShowOpenDialogOperation_transferWithIdentifierWasAccepted___block_invoke;
      block[3] = &unk_278DC10F0;
      block[4] = v29;
      dispatch_after(v25, MEMORY[0x277D85CD0], block);

      v4 = v26;
    }

    self->mTransferAccepted = 1;
    [(CRKShowOpenDialogOperation *)self succeedIfNeeded];
  }

LABEL_18:
}

- (void)transferWithIdentifierWasDeclined:(id)a3 error:(id)a4
{
  v18 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (([MEMORY[0x277CCACC8] isMainThread] & 1) == 0)
  {
    [CRKShowOpenDialogOperation transferWithIdentifierWasDeclined:error:];
  }

  if ([(CRKShowOpenDialogOperation *)self isExecuting])
  {
    v8 = [v7 domain];
    v9 = @"UNABLE TO OPEN";
    if ([v8 isEqualToString:@"ClassroomKit.error"] && objc_msgSend(v7, "code") == 18)
    {
      v9 = @"DECLINED";
    }

    v10 = v9;

    v11 = _CRKLogOperation();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 138543874;
      v13 = self;
      v14 = 2114;
      v15 = v6;
      v16 = 2114;
      v17 = v10;
      _os_log_impl(&dword_243550000, v11, OS_LOG_TYPE_DEFAULT, "%{public}@: Transfer with identifier %{public}@ %{public}@", &v12, 0x20u);
    }

    [(CRKShowOpenDialogOperation *)self failWithError:v7];
  }
}

- (void)cleanupHiddenTransferItemsIfNeeded
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = *a1;
  v5 = a2;
  v6 = [a3 verboseDescription];
  v7 = 138543618;
  v8 = v4;
  v9 = 2114;
  v10 = v6;
  _os_log_error_impl(&dword_243550000, v5, OS_LOG_TYPE_ERROR, "Unable to cleanup directory: %{public}@: %{public}@", &v7, 0x16u);
}

- (void)succeedIfNeeded
{
  OUTLINED_FUNCTION_1_0();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_1();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)failWithError:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    [CRKShowOpenDialogOperation failWithError:];
  }

  if (([(CRKShowOpenDialogOperation *)self isExecuting]& 1) == 0)
  {
    [CRKShowOpenDialogOperation failWithError:];
  }

  [(CRKShowOpenDialogOperation *)self cleanupHiddenTransferItemsIfNeeded];
  v6 = _CRKLogOperation();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    [(CRKShowOpenDialogOperation *)self failWithError:v5, v6];
  }

  v7 = [(CRKShowOpenDialogOperation *)self transfer];

  if (v7)
  {
    v8 = [(CRKShowOpenDialogOperation *)self transfer];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __44__CRKShowOpenDialogOperation_failWithError___block_invoke;
    v9[3] = &unk_278DC2650;
    v11 = a2;
    v9[4] = self;
    v10 = v5;
    [v8 updateWithState:3 completion:v9];
  }

  else
  {
    [(CRKShowOpenDialogOperation *)self endOperationWithError:v5];
  }
}

void __44__CRKShowOpenDialogOperation_failWithError___block_invoke(uint64_t a1, int a2, void *a3, void *a4)
{
  v20 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  if (([MEMORY[0x277CCACC8] isMainThread] & 1) == 0)
  {
    __44__CRKShowOpenDialogOperation_failWithError___block_invoke_cold_1(a1);
  }

  if ([*(a1 + 32) isExecuting])
  {
    v9 = _CRKLogOperation();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = *(a1 + 32);
      v12 = 138544130;
      v13 = v10;
      v14 = 1024;
      v15 = a2;
      v16 = 2114;
      v17 = v7;
      v18 = 2114;
      v19 = v8;
      _os_log_impl(&dword_243550000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@: Transfer canceled: success: %d, destination: %{public}@, error: %{public}@", &v12, 0x26u);
    }

    v11 = [*(a1 + 32) transfer];
    [v11 invalidate];

    [*(a1 + 32) endOperationWithError:*(a1 + 40)];
  }
}

+ (id)fakeBundleID
{
  v2 = [MEMORY[0x277CCA8D8] mainBundle];
  v3 = [v2 bundleIdentifier];
  v4 = [v3 stringByAppendingString:@".fake"];

  return v4;
}

- (void)initWithFileURLs:keepOriginalFiles:previewImageData:senderName:autoAccept:sourceBundleIdentifier:filesDescription:cleanupDelay:sharingPrimitives:fileSystemPrimitives:.cold.1()
{
  OUTLINED_FUNCTION_1_0();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_1();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)transferDidStartWithSuccess:destinationPath:error:.cold.1()
{
  OUTLINED_FUNCTION_1_0();
  [MEMORY[0x277CCA890] currentHandler];
  objc_claimAutoreleasedReturnValue();
  v1 = OUTLINED_FUNCTION_2_2();
  NSStringFromSelector(v1);
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_3_0();
  [OUTLINED_FUNCTION_0_0(v2 v3];
}

- (void)transferDidProgressWithSuccess:destinationPath:error:.cold.1()
{
  OUTLINED_FUNCTION_1_0();
  [MEMORY[0x277CCA890] currentHandler];
  objc_claimAutoreleasedReturnValue();
  v1 = OUTLINED_FUNCTION_2_2();
  NSStringFromSelector(v1);
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_3_0();
  [OUTLINED_FUNCTION_0_0(v2 v3];
}

- (void)transferDidFinishWithSuccess:destinationPath:error:.cold.1()
{
  OUTLINED_FUNCTION_1_0();
  [MEMORY[0x277CCA890] currentHandler];
  objc_claimAutoreleasedReturnValue();
  v1 = OUTLINED_FUNCTION_2_2();
  NSStringFromSelector(v1);
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_3_0();
  [OUTLINED_FUNCTION_0_0(v2 v3];
}

- (void)transferWithIdentifierWasAccepted:.cold.1()
{
  OUTLINED_FUNCTION_1_0();
  [MEMORY[0x277CCA890] currentHandler];
  objc_claimAutoreleasedReturnValue();
  v1 = OUTLINED_FUNCTION_2_2();
  NSStringFromSelector(v1);
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_3_0();
  [OUTLINED_FUNCTION_0_0(v2 v3];
}

- (void)transferWithIdentifierWasDeclined:error:.cold.1()
{
  OUTLINED_FUNCTION_1_0();
  [MEMORY[0x277CCA890] currentHandler];
  objc_claimAutoreleasedReturnValue();
  v1 = OUTLINED_FUNCTION_2_2();
  NSStringFromSelector(v1);
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_3_0();
  [OUTLINED_FUNCTION_0_0(v2 v3];
}

- (void)failWithError:.cold.1()
{
  OUTLINED_FUNCTION_1_0();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_1();
  [v0 handleFailureInMethod:@"failureError" object:? file:? lineNumber:? description:?];
}

- (void)failWithError:.cold.2()
{
  OUTLINED_FUNCTION_1_0();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_1();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)failWithError:(os_log_t)log .cold.3(uint64_t a1, uint64_t a2, os_log_t log)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = 138543618;
  v4 = a1;
  v5 = 2114;
  v6 = a2;
  _os_log_error_impl(&dword_243550000, log, OS_LOG_TYPE_ERROR, "%{public}@: Failed. Error: %{public}@", &v3, 0x16u);
}

void __44__CRKShowOpenDialogOperation_failWithError___block_invoke_cold_1(uint64_t a1)
{
  v10 = [MEMORY[0x277CCA890] currentHandler];
  NSStringFromSelector(*(a1 + 48));
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_3_0();
  [OUTLINED_FUNCTION_0_0(v3 v4];
}

@end