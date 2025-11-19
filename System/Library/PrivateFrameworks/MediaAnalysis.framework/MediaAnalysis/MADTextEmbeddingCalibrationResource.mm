@interface MADTextEmbeddingCalibrationResource
+ (id)sharedResource;
- (MADTextEmbeddingCalibration)instance;
- (MADTextEmbeddingCalibrationResource)init;
- (int64_t)activeCost;
- (int64_t)inactiveCost;
- (void)purge;
@end

@implementation MADTextEmbeddingCalibrationResource

- (MADTextEmbeddingCalibrationResource)init
{
  v10.receiver = self;
  v10.super_class = MADTextEmbeddingCalibrationResource;
  v2 = [(MADTextEmbeddingCalibrationResource *)&v10 init];
  if (v2)
  {
    v3 = objc_opt_class();
    v4 = NSStringFromClass(v3);
    v5 = [v4 UTF8String];
    v6 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v7 = dispatch_queue_create(v5, v6);
    queue = v2->_queue;
    v2->_queue = v7;
  }

  return v2;
}

+ (id)sharedResource
{
  v3 = +[VCPSharedInstanceManager sharedManager];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __53__MADTextEmbeddingCalibrationResource_sharedResource__block_invoke;
  v8[3] = &__block_descriptor_40_e5__8__0l;
  v8[4] = a1;
  v6 = [v3 sharedInstanceWithIdentifier:v5 andCreationBlock:v8];

  return v6;
}

id __53__MADTextEmbeddingCalibrationResource_sharedResource__block_invoke()
{
  v0 = objc_alloc_init(objc_opt_class());

  return v0;
}

- (int64_t)activeCost
{
  if (DeviceHasANE())
  {
    return 4;
  }

  else
  {
    return 100;
  }
}

- (int64_t)inactiveCost
{
  if (DeviceHasANE())
  {
    return 1;
  }

  else
  {
    return 100;
  }
}

- (MADTextEmbeddingCalibration)instance
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__34;
  v10 = __Block_byref_object_dispose__34;
  v11 = 0;
  queue = self->_queue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __47__MADTextEmbeddingCalibrationResource_instance__block_invoke;
  v5[3] = &unk_1E834BFE8;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

void __47__MADTextEmbeddingCalibrationResource_instance__block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  if (!*(*(a1 + 32) + 16))
  {
    v2 = objc_alloc_init(MADTextEmbeddingCalibration);
    v3 = *(a1 + 32);
    v4 = *(v3 + 16);
    *(v3 + 16) = v2;

    if (!*(*(a1 + 32) + 16) && MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v5 = objc_opt_class();
      v6 = NSStringFromClass(v5);
      v7 = 138412290;
      v8 = v6;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[Resource] Failed to init %@", &v7, 0xCu);
    }
  }

  objc_storeStrong((*(*(a1 + 40) + 8) + 40), *(*(a1 + 32) + 16));
}

- (void)purge
{
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __44__MADTextEmbeddingCalibrationResource_purge__block_invoke;
  block[3] = &unk_1E834C010;
  block[4] = self;
  dispatch_sync(queue, block);
}

void __44__MADTextEmbeddingCalibrationResource_purge__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 16);
  *(v1 + 16) = 0;
}

@end