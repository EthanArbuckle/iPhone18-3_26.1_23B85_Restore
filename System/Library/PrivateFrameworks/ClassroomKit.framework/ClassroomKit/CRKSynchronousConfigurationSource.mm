@interface CRKSynchronousConfigurationSource
- (BOOL)setConfiguration:(id)configuration error:(id *)error;
- (CRKSynchronousConfigurationSource)initWithConfigurationSource:(id)source;
- (id)configurationWithError:(id *)error;
@end

@implementation CRKSynchronousConfigurationSource

- (CRKSynchronousConfigurationSource)initWithConfigurationSource:(id)source
{
  sourceCopy = source;
  v9.receiver = self;
  v9.super_class = CRKSynchronousConfigurationSource;
  v6 = [(CRKSynchronousConfigurationSource *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->mBaseSource, source);
  }

  return v7;
}

- (id)configurationWithError:(id *)error
{
  v5 = dispatch_semaphore_create(0);
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = __Block_byref_object_copy__3;
  v24 = __Block_byref_object_dispose__3;
  v25 = 0;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__3;
  v18 = __Block_byref_object_dispose__3;
  v19 = 0;
  mBaseSource = self->mBaseSource;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __60__CRKSynchronousConfigurationSource_configurationWithError___block_invoke;
  v10[3] = &unk_278DC3160;
  v12 = &v20;
  v13 = &v14;
  v7 = v5;
  v11 = v7;
  [(CRKConfigurationSource *)mBaseSource fetchConfiguration:v10];
  dispatch_semaphore_wait(v7, 0xFFFFFFFFFFFFFFFFLL);
  if (error)
  {
    *error = v15[5];
  }

  v8 = v21[5];

  _Block_object_dispose(&v14, 8);
  _Block_object_dispose(&v20, 8);

  return v8;
}

void __60__CRKSynchronousConfigurationSource_configurationWithError___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 40) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v12 = v5;

  v9 = *(*(a1 + 48) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
  v11 = v6;

  dispatch_semaphore_signal(*(a1 + 32));
}

- (BOOL)setConfiguration:(id)configuration error:(id *)error
{
  configurationCopy = configuration;
  v7 = dispatch_semaphore_create(0);
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy__3;
  v19 = __Block_byref_object_dispose__3;
  v20 = 0;
  mBaseSource = self->mBaseSource;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __60__CRKSynchronousConfigurationSource_setConfiguration_error___block_invoke;
  v12[3] = &unk_278DC3188;
  v14 = &v15;
  v9 = v7;
  v13 = v9;
  [(CRKConfigurationSource *)mBaseSource setConfiguration:configurationCopy completion:v12];
  dispatch_semaphore_wait(v9, 0xFFFFFFFFFFFFFFFFLL);
  if (error)
  {
    *error = v16[5];
  }

  v10 = v16[5] == 0;

  _Block_object_dispose(&v15, 8);
  return v10;
}

void __60__CRKSynchronousConfigurationSource_setConfiguration_error___block_invoke(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_semaphore_signal(*(a1 + 32));
}

@end