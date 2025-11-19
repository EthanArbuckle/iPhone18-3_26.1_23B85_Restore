@interface VCPMADImageCaptionResource
+ (id)sharedResourceForModelType:(int64_t)a3 safetyType:(int64_t)a4;
- (VCPImageCaptionAnalyzer)imageCaptionAnalyzer;
- (VCPMADImageCaptionResource)initWithModelType:(int64_t)a3 safetyType:(int64_t)a4;
- (int64_t)activeCost;
- (int64_t)inactiveCost;
- (void)purge;
@end

@implementation VCPMADImageCaptionResource

- (VCPMADImageCaptionResource)initWithModelType:(int64_t)a3 safetyType:(int64_t)a4
{
  v11.receiver = self;
  v11.super_class = VCPMADImageCaptionResource;
  v6 = [(VCPMADImageCaptionResource *)&v11 init];
  if (v6)
  {
    v7 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v8 = dispatch_queue_create("VCPMADImageCaptionResource", v7);
    queue = v6->_queue;
    v6->_queue = v8;

    v6->_modelType = a3;
    v6->_safetyType = a4;
  }

  return v6;
}

+ (id)sharedResourceForModelType:(int64_t)a3 safetyType:(int64_t)a4
{
  v6 = MEMORY[0x1E696AEC0];
  v7 = objc_opt_class();
  v8 = NSStringFromClass(v7);
  v9 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
  v10 = [v9 stringValue];
  v11 = [v6 stringWithFormat:@"%@_%@", v8, v10];

  v12 = +[VCPSharedInstanceManager sharedManager];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __68__VCPMADImageCaptionResource_sharedResourceForModelType_safetyType___block_invoke;
  v15[3] = &__block_descriptor_48_e33___VCPMADImageCaptionResource_8__0l;
  v15[4] = a3;
  v15[5] = a4;
  v13 = [v12 sharedInstanceWithIdentifier:v11 andCreationBlock:v15];

  return v13;
}

VCPMADImageCaptionResource *__68__VCPMADImageCaptionResource_sharedResourceForModelType_safetyType___block_invoke(uint64_t a1)
{
  v1 = [[VCPMADImageCaptionResource alloc] initWithModelType:*(a1 + 32) safetyType:*(a1 + 40)];

  return v1;
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
    return 10;
  }

  else
  {
    return 100;
  }
}

- (VCPImageCaptionAnalyzer)imageCaptionAnalyzer
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__17;
  v10 = __Block_byref_object_dispose__17;
  v11 = 0;
  queue = self->_queue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __50__VCPMADImageCaptionResource_imageCaptionAnalyzer__block_invoke;
  v5[3] = &unk_1E834D538;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

void __50__VCPMADImageCaptionResource_imageCaptionAnalyzer__block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x1E69E9840];
  v2 = *(*(a1 + 32) + 16);
  if (!v2)
  {
    v3 = VCPSignPostLog();
    v4 = os_signpost_id_generate(v3);

    v5 = VCPSignPostLog();
    v6 = v5;
    if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v5))
    {
      LOWORD(v15[0]) = 0;
      _os_signpost_emit_with_name_impl(&dword_1C9B70000, v6, OS_SIGNPOST_INTERVAL_BEGIN, v4, "VCPImageCaptionAnalyzer_init", "", v15, 2u);
    }

    if (MediaAnalysisLogLevel() >= 6 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
    {
      v7 = *(a1 + 32);
      v8 = *(v7 + 24);
      v9 = *(v7 + 32);
      v15[0] = 67109376;
      v15[1] = v8;
      v16 = 1024;
      v17 = v9;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "ImageCaptionTask set VCPImageCaptionAnalyzer model type %d, safety type %d", v15, 0xEu);
    }

    v10 = [[VCPImageCaptionAnalyzer alloc] initWithCaptionModelType:*(*(a1 + 32) + 24) captionSafetyType:*(*(a1 + 32) + 32) useSharedModel:0];
    v11 = *(a1 + 32);
    v12 = *(v11 + 16);
    *(v11 + 16) = v10;

    v13 = VCPSignPostLog();
    v14 = v13;
    if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v13))
    {
      LOWORD(v15[0]) = 0;
      _os_signpost_emit_with_name_impl(&dword_1C9B70000, v14, OS_SIGNPOST_INTERVAL_END, v4, "VCPImageCaptionAnalyzer_init", "", v15, 2u);
    }

    v2 = *(*(a1 + 32) + 16);
  }

  objc_storeStrong((*(*(a1 + 40) + 8) + 40), v2);
}

- (void)purge
{
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __35__VCPMADImageCaptionResource_purge__block_invoke;
  block[3] = &unk_1E834BDC0;
  block[4] = self;
  dispatch_sync(queue, block);
}

void __35__VCPMADImageCaptionResource_purge__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 16);
  *(v1 + 16) = 0;
}

@end