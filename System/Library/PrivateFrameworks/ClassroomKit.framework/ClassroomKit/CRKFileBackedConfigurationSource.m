@interface CRKFileBackedConfigurationSource
- (BOOL)deleteConfigurationAtURL:(id)a3 inDirectory:(id)a4 error:(id *)a5;
- (BOOL)isReadErrorBenign:(id)a3;
- (CRKFileBackedConfigurationSource)init;
- (CRKFileBackedConfigurationSource)initWithFileURL:(id)a3 callbackQueue:(id)a4;
- (CRKFileBackedConfigurationSourceDelegate)delegate;
- (void)delegateDidDeleteConfigurationAtURL:(id)a3 inDirectory:(id)a4;
- (void)executeIntents:(id)a3 accessBlock:(id)a4;
- (void)fetchConfiguration:(id)a3;
- (void)invokeCompletionBlock:(id)a3 withConfiguration:(id)a4 error:(id)a5;
- (void)invokeCompletionBlock:(id)a3 withError:(id)a4;
- (void)setConfiguration:(id)a3 completion:(id)a4;
@end

@implementation CRKFileBackedConfigurationSource

- (CRKFileBackedConfigurationSource)init
{
  v3 = [MEMORY[0x277CBEBC0] crk_uniqueTemporaryFileURL];
  v4 = [(CRKFileBackedConfigurationSource *)self initWithFileURL:v3];

  return v4;
}

- (CRKFileBackedConfigurationSource)initWithFileURL:(id)a3 callbackQueue:(id)a4
{
  v7 = a3;
  v8 = a4;
  v14.receiver = self;
  v14.super_class = CRKFileBackedConfigurationSource;
  v9 = [(CRKFileBackedConfigurationSource *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->mFileURL, a3);
    objc_storeStrong(&v10->mCallbackQueue, a4);
    v11 = objc_opt_new();
    mFileOperationQueue = v10->mFileOperationQueue;
    v10->mFileOperationQueue = v11;
  }

  return v10;
}

- (void)executeIntents:(id)a3 accessBlock:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = objc_opt_new();
  [v8 coordinateAccessWithIntents:v7 queue:self->mFileOperationQueue byAccessor:v6];
}

- (void)invokeCompletionBlock:(id)a3 withError:(id)a4
{
  v6 = a3;
  v7 = a4;
  mCallbackQueue = self->mCallbackQueue;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __68__CRKFileBackedConfigurationSource_invokeCompletionBlock_withError___block_invoke;
  v11[3] = &unk_278DC0FB8;
  v12 = v7;
  v13 = v6;
  v9 = v7;
  v10 = v6;
  dispatch_async(mCallbackQueue, v11);
}

- (void)invokeCompletionBlock:(id)a3 withConfiguration:(id)a4 error:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  mCallbackQueue = self->mCallbackQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __82__CRKFileBackedConfigurationSource_invokeCompletionBlock_withConfiguration_error___block_invoke;
  block[3] = &unk_278DC1630;
  v17 = v10;
  v18 = v8;
  v16 = v9;
  v12 = v10;
  v13 = v9;
  v14 = v8;
  dispatch_async(mCallbackQueue, block);
}

- (void)delegateDidDeleteConfigurationAtURL:(id)a3 inDirectory:(id)a4
{
  v8 = a3;
  v6 = a4;
  v7 = [(CRKFileBackedConfigurationSource *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [v7 fileBackedConfigurationSource:self didDeleteConfigurationAtURL:v8 inDirectory:v6];
  }
}

- (void)setConfiguration:(id)a3 completion:(id)a4
{
  v23[2] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (v6)
  {
    v8 = 8;
  }

  else
  {
    v8 = 1;
  }

  v9 = [MEMORY[0x277CCA9E0] writingIntentWithURL:self->mFileURL options:v8];
  v10 = MEMORY[0x277CCA9E0];
  v11 = [(CRKFileBackedConfigurationSource *)self directoryURL];
  v12 = [v10 writingIntentWithURL:v11 options:v8];

  v23[0] = v9;
  v23[1] = v12;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v23 count:2];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __64__CRKFileBackedConfigurationSource_setConfiguration_completion___block_invoke;
  v18[3] = &unk_278DC31D0;
  v21 = v12;
  v22 = v7;
  v18[4] = self;
  v19 = v6;
  v20 = v9;
  v14 = v12;
  v15 = v9;
  v16 = v6;
  v17 = v7;
  [(CRKFileBackedConfigurationSource *)self executeIntents:v13 accessBlock:v18];
}

void __64__CRKFileBackedConfigurationSource_setConfiguration_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = v3;
    goto LABEL_3;
  }

  if (!*(a1 + 40))
  {
    v13 = *(a1 + 32);
    v14 = [*(a1 + 48) URL];
    v15 = [*(a1 + 56) URL];
    v18 = 0;
    [v13 deleteConfigurationAtURL:v14 inDirectory:v15 error:&v18];
    v4 = v18;

    goto LABEL_3;
  }

  v5 = [MEMORY[0x277CCAA00] defaultManager];
  v6 = [*(a1 + 56) URL];
  v17 = 0;
  v7 = [v5 createDirectoryAtURL:v6 withIntermediateDirectories:1 attributes:0 error:&v17];
  v4 = v17;

  if ((v7 & 1) == 0)
  {
LABEL_3:
    [*(a1 + 32) invokeCompletionBlock:*(a1 + 64) withError:v4];
    goto LABEL_4;
  }

  v8 = *(a1 + 40);
  v9 = [*(a1 + 48) URL];
  v16 = v4;
  v10 = [v8 writeToURL:v9 error:&v16];
  v11 = v16;

  if (v10)
  {
    v12 = 0;
  }

  else
  {
    v12 = v11;
  }

  [*(a1 + 32) invokeCompletionBlock:*(a1 + 64) withError:v12];
  v4 = v11;
LABEL_4:
}

- (BOOL)deleteConfigurationAtURL:(id)a3 inDirectory:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v10 = [MEMORY[0x277CCAA00] defaultManager];
  v18 = 0;
  v11 = [v10 removeItemAtURL:v8 error:&v18];
  v12 = v18;

  v13 = [v12 domain];
  if ([v13 isEqualToString:*MEMORY[0x277CCA050]])
  {
    v14 = [v12 code] == 4;
  }

  else
  {
    v14 = 0;
  }

  v15 = v11 | v14;
  if (v15)
  {
    [(CRKFileBackedConfigurationSource *)self delegateDidDeleteConfigurationAtURL:v8 inDirectory:v9];
  }

  else if (a5)
  {
    v16 = v12;
    *a5 = v12;
  }

  return v15 & 1;
}

- (void)fetchConfiguration:(id)a3
{
  v15[2] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [MEMORY[0x277CCA9E0] readingIntentWithURL:self->mFileURL options:3];
  v6 = MEMORY[0x277CCA9E0];
  v7 = [(CRKFileBackedConfigurationSource *)self directoryURL];
  v8 = [v6 readingIntentWithURL:v7 options:3];

  v15[0] = v5;
  v15[1] = v8;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:2];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __55__CRKFileBackedConfigurationSource_fetchConfiguration___block_invoke;
  v12[3] = &unk_278DC31F8;
  v13 = v5;
  v14 = v4;
  v12[4] = self;
  v10 = v5;
  v11 = v4;
  [(CRKFileBackedConfigurationSource *)self executeIntents:v9 accessBlock:v12];
}

void __55__CRKFileBackedConfigurationSource_fetchConfiguration___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = v3;
    [*(a1 + 32) invokeCompletionBlock:*(a1 + 48) withConfiguration:0 error:v3];
  }

  else
  {
    v5 = MEMORY[0x277CBEAC0];
    v6 = [*(a1 + 40) URL];
    v12 = 0;
    v7 = [v5 dictionaryWithContentsOfURL:v6 error:&v12];
    v4 = v12;

    v8 = *(a1 + 32);
    if (v7)
    {
      v9 = *(a1 + 48);
      v10 = v7;
      v11 = 0;
    }

    else
    {
      if ([v8 isReadErrorBenign:v4])
      {

        v4 = 0;
      }

      v8 = *(a1 + 32);
      v9 = *(a1 + 48);
      v10 = 0;
      v11 = v4;
    }

    [v8 invokeCompletionBlock:v9 withConfiguration:v10 error:v11];
  }
}

- (BOOL)isReadErrorBenign:(id)a3
{
  v3 = a3;
  v4 = [v3 domain];
  if ([v4 isEqualToString:*MEMORY[0x277CCA050]])
  {
    v5 = [v3 code] == 260;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (CRKFileBackedConfigurationSourceDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end