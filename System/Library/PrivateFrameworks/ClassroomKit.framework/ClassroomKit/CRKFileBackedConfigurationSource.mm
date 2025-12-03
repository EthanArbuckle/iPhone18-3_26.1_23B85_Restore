@interface CRKFileBackedConfigurationSource
- (BOOL)deleteConfigurationAtURL:(id)l inDirectory:(id)directory error:(id *)error;
- (BOOL)isReadErrorBenign:(id)benign;
- (CRKFileBackedConfigurationSource)init;
- (CRKFileBackedConfigurationSource)initWithFileURL:(id)l callbackQueue:(id)queue;
- (CRKFileBackedConfigurationSourceDelegate)delegate;
- (void)delegateDidDeleteConfigurationAtURL:(id)l inDirectory:(id)directory;
- (void)executeIntents:(id)intents accessBlock:(id)block;
- (void)fetchConfiguration:(id)configuration;
- (void)invokeCompletionBlock:(id)block withConfiguration:(id)configuration error:(id)error;
- (void)invokeCompletionBlock:(id)block withError:(id)error;
- (void)setConfiguration:(id)configuration completion:(id)completion;
@end

@implementation CRKFileBackedConfigurationSource

- (CRKFileBackedConfigurationSource)init
{
  crk_uniqueTemporaryFileURL = [MEMORY[0x277CBEBC0] crk_uniqueTemporaryFileURL];
  v4 = [(CRKFileBackedConfigurationSource *)self initWithFileURL:crk_uniqueTemporaryFileURL];

  return v4;
}

- (CRKFileBackedConfigurationSource)initWithFileURL:(id)l callbackQueue:(id)queue
{
  lCopy = l;
  queueCopy = queue;
  v14.receiver = self;
  v14.super_class = CRKFileBackedConfigurationSource;
  v9 = [(CRKFileBackedConfigurationSource *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->mFileURL, l);
    objc_storeStrong(&v10->mCallbackQueue, queue);
    v11 = objc_opt_new();
    mFileOperationQueue = v10->mFileOperationQueue;
    v10->mFileOperationQueue = v11;
  }

  return v10;
}

- (void)executeIntents:(id)intents accessBlock:(id)block
{
  blockCopy = block;
  intentsCopy = intents;
  v8 = objc_opt_new();
  [v8 coordinateAccessWithIntents:intentsCopy queue:self->mFileOperationQueue byAccessor:blockCopy];
}

- (void)invokeCompletionBlock:(id)block withError:(id)error
{
  blockCopy = block;
  errorCopy = error;
  mCallbackQueue = self->mCallbackQueue;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __68__CRKFileBackedConfigurationSource_invokeCompletionBlock_withError___block_invoke;
  v11[3] = &unk_278DC0FB8;
  v12 = errorCopy;
  v13 = blockCopy;
  v9 = errorCopy;
  v10 = blockCopy;
  dispatch_async(mCallbackQueue, v11);
}

- (void)invokeCompletionBlock:(id)block withConfiguration:(id)configuration error:(id)error
{
  blockCopy = block;
  configurationCopy = configuration;
  errorCopy = error;
  mCallbackQueue = self->mCallbackQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __82__CRKFileBackedConfigurationSource_invokeCompletionBlock_withConfiguration_error___block_invoke;
  block[3] = &unk_278DC1630;
  v17 = errorCopy;
  v18 = blockCopy;
  v16 = configurationCopy;
  v12 = errorCopy;
  v13 = configurationCopy;
  v14 = blockCopy;
  dispatch_async(mCallbackQueue, block);
}

- (void)delegateDidDeleteConfigurationAtURL:(id)l inDirectory:(id)directory
{
  lCopy = l;
  directoryCopy = directory;
  delegate = [(CRKFileBackedConfigurationSource *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate fileBackedConfigurationSource:self didDeleteConfigurationAtURL:lCopy inDirectory:directoryCopy];
  }
}

- (void)setConfiguration:(id)configuration completion:(id)completion
{
  v23[2] = *MEMORY[0x277D85DE8];
  configurationCopy = configuration;
  completionCopy = completion;
  if (configurationCopy)
  {
    v8 = 8;
  }

  else
  {
    v8 = 1;
  }

  v9 = [MEMORY[0x277CCA9E0] writingIntentWithURL:self->mFileURL options:v8];
  v10 = MEMORY[0x277CCA9E0];
  directoryURL = [(CRKFileBackedConfigurationSource *)self directoryURL];
  v12 = [v10 writingIntentWithURL:directoryURL options:v8];

  v23[0] = v9;
  v23[1] = v12;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v23 count:2];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __64__CRKFileBackedConfigurationSource_setConfiguration_completion___block_invoke;
  v18[3] = &unk_278DC31D0;
  v21 = v12;
  v22 = completionCopy;
  v18[4] = self;
  v19 = configurationCopy;
  v20 = v9;
  v14 = v12;
  v15 = v9;
  v16 = configurationCopy;
  v17 = completionCopy;
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

- (BOOL)deleteConfigurationAtURL:(id)l inDirectory:(id)directory error:(id *)error
{
  lCopy = l;
  directoryCopy = directory;
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v18 = 0;
  v11 = [defaultManager removeItemAtURL:lCopy error:&v18];
  v12 = v18;

  domain = [v12 domain];
  if ([domain isEqualToString:*MEMORY[0x277CCA050]])
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
    [(CRKFileBackedConfigurationSource *)self delegateDidDeleteConfigurationAtURL:lCopy inDirectory:directoryCopy];
  }

  else if (error)
  {
    v16 = v12;
    *error = v12;
  }

  return v15 & 1;
}

- (void)fetchConfiguration:(id)configuration
{
  v15[2] = *MEMORY[0x277D85DE8];
  configurationCopy = configuration;
  v5 = [MEMORY[0x277CCA9E0] readingIntentWithURL:self->mFileURL options:3];
  v6 = MEMORY[0x277CCA9E0];
  directoryURL = [(CRKFileBackedConfigurationSource *)self directoryURL];
  v8 = [v6 readingIntentWithURL:directoryURL options:3];

  v15[0] = v5;
  v15[1] = v8;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:2];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __55__CRKFileBackedConfigurationSource_fetchConfiguration___block_invoke;
  v12[3] = &unk_278DC31F8;
  v13 = v5;
  v14 = configurationCopy;
  v12[4] = self;
  v10 = v5;
  v11 = configurationCopy;
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

- (BOOL)isReadErrorBenign:(id)benign
{
  benignCopy = benign;
  domain = [benignCopy domain];
  if ([domain isEqualToString:*MEMORY[0x277CCA050]])
  {
    v5 = [benignCopy code] == 260;
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