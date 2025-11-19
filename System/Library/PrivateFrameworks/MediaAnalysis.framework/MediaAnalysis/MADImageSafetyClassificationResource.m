@interface MADImageSafetyClassificationResource
+ (id)sharedResource;
- (MADImageSafetyClassificationResource)init;
- (SCMLHandler)safetyHandlerTypeGV;
- (SCMLHandler)safetyHandlerTypeN;
- (int64_t)activeCost;
- (int64_t)inactiveCost;
- (void)purge;
@end

@implementation MADImageSafetyClassificationResource

- (MADImageSafetyClassificationResource)init
{
  v6.receiver = self;
  v6.super_class = MADImageSafetyClassificationResource;
  v2 = [(MADImageSafetyClassificationResource *)&v6 init];
  if (v2)
  {
    v3 = dispatch_queue_create("MADImageSafetyClassificationResource", 0);
    queue = v2->_queue;
    v2->_queue = v3;
  }

  return v2;
}

+ (id)sharedResource
{
  v2 = +[VCPSharedInstanceManager sharedManager];
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = [v2 sharedInstanceWithIdentifier:v4 andCreationBlock:&__block_literal_global_73];

  return v5;
}

MADImageSafetyClassificationResource *__54__MADImageSafetyClassificationResource_sharedResource__block_invoke()
{
  v0 = objc_alloc_init(MADImageSafetyClassificationResource);

  return v0;
}

- (int64_t)activeCost
{
  if (DeviceHasANE())
  {
    return 10;
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
    return 2;
  }

  else
  {
    return 100;
  }
}

- (SCMLHandler)safetyHandlerTypeN
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__54;
  v10 = __Block_byref_object_dispose__54;
  v11 = 0;
  queue = self->_queue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __58__MADImageSafetyClassificationResource_safetyHandlerTypeN__block_invoke;
  v5[3] = &unk_1E834BFE8;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

void __58__MADImageSafetyClassificationResource_safetyHandlerTypeN__block_invoke(uint64_t a1)
{
  v23[2] = *MEMORY[0x1E69E9840];
  v2 = *(*(a1 + 32) + 16);
  if (!v2)
  {
    v3 = *MEMORY[0x1E69CA820];
    v22[0] = *MEMORY[0x1E69CA830];
    v22[1] = v3;
    v23[0] = &unk_1F49BE170;
    v23[1] = MEMORY[0x1E695E118];
    v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v23 forKeys:v22 count:2];
    v5 = VCPSignPostLog();
    v6 = os_signpost_id_generate(v5);

    v7 = VCPSignPostLog();
    v8 = v7;
    if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1C9B70000, v8, OS_SIGNPOST_INTERVAL_BEGIN, v6, "CommSafetyHandlerTypeN_init", "", buf, 2u);
    }

    v17 = 0;
    v9 = [objc_alloc(MEMORY[0x1E69CA710]) initWithOptions:v4 error:&v17];
    v10 = v17;
    v11 = *(a1 + 32);
    v12 = *(v11 + 16);
    *(v11 + 16) = v9;

    v13 = VCPSignPostLog();
    v14 = v13;
    if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v13))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1C9B70000, v14, OS_SIGNPOST_INTERVAL_END, v6, "CommSafetyHandlerTypeN_init", "", buf, 2u);
    }

    if (v10 && MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v15 = objc_opt_class();
      v16 = [v10 description];
      *buf = 138412546;
      v19 = v15;
      v20 = 2112;
      v21 = v16;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Failed to create safetyHandlerTypeN %@: %@", buf, 0x16u);
    }

    v2 = *(*(a1 + 32) + 16);
  }

  objc_storeStrong((*(*(a1 + 40) + 8) + 40), v2);
}

- (SCMLHandler)safetyHandlerTypeGV
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__54;
  v10 = __Block_byref_object_dispose__54;
  v11 = 0;
  queue = self->_queue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __59__MADImageSafetyClassificationResource_safetyHandlerTypeGV__block_invoke;
  v5[3] = &unk_1E834BFE8;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

void __59__MADImageSafetyClassificationResource_safetyHandlerTypeGV__block_invoke(uint64_t a1)
{
  v23[2] = *MEMORY[0x1E69E9840];
  v2 = *(*(a1 + 32) + 24);
  if (!v2)
  {
    v3 = *MEMORY[0x1E69CA820];
    v22[0] = *MEMORY[0x1E69CA830];
    v22[1] = v3;
    v23[0] = &unk_1F49BE188;
    v23[1] = MEMORY[0x1E695E118];
    v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v23 forKeys:v22 count:2];
    v5 = VCPSignPostLog();
    v6 = os_signpost_id_generate(v5);

    v7 = VCPSignPostLog();
    v8 = v7;
    if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1C9B70000, v8, OS_SIGNPOST_INTERVAL_BEGIN, v6, "CommSafetyHandlerTypeGV_init", "", buf, 2u);
    }

    v17 = 0;
    v9 = [objc_alloc(MEMORY[0x1E69CA710]) initWithOptions:v4 error:&v17];
    v10 = v17;
    v11 = *(a1 + 32);
    v12 = *(v11 + 24);
    *(v11 + 24) = v9;

    v13 = VCPSignPostLog();
    v14 = v13;
    if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v13))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1C9B70000, v14, OS_SIGNPOST_INTERVAL_END, v6, "CommSafetyHandlerTypeGV_init", "", buf, 2u);
    }

    if (v10 && MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v15 = objc_opt_class();
      v16 = [v10 description];
      *buf = 138412546;
      v19 = v15;
      v20 = 2112;
      v21 = v16;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Failed to create safetyHandlerTypeGV %@: %@", buf, 0x16u);
    }

    v2 = *(*(a1 + 32) + 24);
  }

  objc_storeStrong((*(*(a1 + 40) + 8) + 40), v2);
}

- (void)purge
{
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __45__MADImageSafetyClassificationResource_purge__block_invoke;
  block[3] = &unk_1E834C010;
  block[4] = self;
  dispatch_sync(queue, block);
}

void __45__MADImageSafetyClassificationResource_purge__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 16);
  *(v2 + 16) = 0;

  v4 = *(a1 + 32);
  v5 = *(v4 + 24);
  *(v4 + 24) = 0;
}

@end