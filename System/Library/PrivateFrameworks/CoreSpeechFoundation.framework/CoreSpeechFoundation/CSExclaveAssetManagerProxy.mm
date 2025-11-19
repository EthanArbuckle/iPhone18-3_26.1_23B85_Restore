@interface CSExclaveAssetManagerProxy
+ (id)sharedManager;
- (CSExclaveAssetManagerProxy)init;
- (void)startSecureMobileAssetLoaderService:(BOOL)a3 completion:(id)a4;
- (void)stopSecureMobileAssetLoaderService:(id)a3;
@end

@implementation CSExclaveAssetManagerProxy

uint64_t __43__CSExclaveAssetManagerProxy_sharedManager__block_invoke()
{
  sharedManager_assetManager = objc_alloc_init(CSExclaveAssetManagerProxy);

  return MEMORY[0x1EEE66BB8]();
}

- (CSExclaveAssetManagerProxy)init
{
  v10.receiver = self;
  v10.super_class = CSExclaveAssetManagerProxy;
  v2 = [(CSExclaveAssetManagerProxy *)&v10 init];
  if (v2)
  {
    v3 = dispatch_queue_create("com.apple.corespeech.csexclave.assetmanager", 0);
    queue = v2->_queue;
    v2->_queue = v3;

    v5 = +[CSExclaveMessageHandlingFactory exclaveAssetsController];
    exclaveRecordClient = v2->_exclaveRecordClient;
    v2->_exclaveRecordClient = v5;

    v7 = +[CSExclaveMessageHandlingFactory exclaveAdblockerAnalyzer];
    exclaveAdblockerAnalyzer = v2->_exclaveAdblockerAnalyzer;
    v2->_exclaveAdblockerAnalyzer = v7;
  }

  return v2;
}

+ (id)sharedManager
{
  if (sharedManager_onceToken_3323 != -1)
  {
    dispatch_once(&sharedManager_onceToken_3323, &__block_literal_global_3324);
  }

  v3 = sharedManager_assetManager;

  return v3;
}

- (void)startSecureMobileAssetLoaderService:(BOOL)a3 completion:(id)a4
{
  v6 = a4;
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __77__CSExclaveAssetManagerProxy_startSecureMobileAssetLoaderService_completion___block_invoke;
  block[3] = &unk_1E865C260;
  v11 = a3;
  block[4] = self;
  v10 = v6;
  v8 = v6;
  dispatch_async(queue, block);
}

void __77__CSExclaveAssetManagerProxy_startSecureMobileAssetLoaderService_completion___block_invoke(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 8);
  v2 = *(a1 + 48);
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __77__CSExclaveAssetManagerProxy_startSecureMobileAssetLoaderService_completion___block_invoke_2;
  v3[3] = &unk_1E865AA20;
  v4 = *(a1 + 40);
  [v1 startSecureMobileAssetLoaderService:v2 completion:v3];
}

uint64_t __77__CSExclaveAssetManagerProxy_startSecureMobileAssetLoaderService_completion___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v11 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v3 = a2;
    v4 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
    {
      v7 = 136315394;
      v8 = "[CSExclaveAssetManagerProxy startSecureMobileAssetLoaderService:completion:]_block_invoke_2";
      v9 = 1024;
      v10 = v3;
      _os_log_error_impl(&dword_1DDA4B000, v4, OS_LOG_TYPE_ERROR, "%s Starting Secure Mobile Asset failed with error %u", &v7, 0x12u);
    }
  }

  result = *(a1 + 32);
  if (result)
  {
    result = (*(result + 16))();
  }

  v6 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)stopSecureMobileAssetLoaderService:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __65__CSExclaveAssetManagerProxy_stopSecureMobileAssetLoaderService___block_invoke;
  v7[3] = &unk_1E865CB90;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(queue, v7);
}

void __65__CSExclaveAssetManagerProxy_stopSecureMobileAssetLoaderService___block_invoke(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 8);
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __65__CSExclaveAssetManagerProxy_stopSecureMobileAssetLoaderService___block_invoke_2;
  v2[3] = &unk_1E865AA20;
  v3 = *(a1 + 40);
  [v1 stopSecureMobileAssetLoaderService:v2];
}

uint64_t __65__CSExclaveAssetManagerProxy_stopSecureMobileAssetLoaderService___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v11 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v3 = a2;
    v4 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
    {
      v7 = 136315394;
      v8 = "[CSExclaveAssetManagerProxy stopSecureMobileAssetLoaderService:]_block_invoke_2";
      v9 = 1024;
      v10 = v3;
      _os_log_error_impl(&dword_1DDA4B000, v4, OS_LOG_TYPE_ERROR, "%s Stopping Secure Mobile Asset failed with error %u", &v7, 0x12u);
    }
  }

  result = *(a1 + 32);
  if (result)
  {
    result = (*(result + 16))();
  }

  v6 = *MEMORY[0x1E69E9840];
  return result;
}

@end