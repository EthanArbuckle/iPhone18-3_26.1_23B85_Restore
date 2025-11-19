@interface MADTextEncoderResource
+ (id)sharedResource;
+ (id)sharedResource:(int64_t)a3;
- (CSUTextEncoder)textEncoder;
- (MADTextEncoderResource)init;
- (int64_t)activeCost;
- (int64_t)inactiveCost;
- (int64_t)revision;
- (int64_t)tokenEmbeddingType;
- (unint64_t)version;
- (void)purge;
@end

@implementation MADTextEncoderResource

+ (id)sharedResource
{
  v3 = +[VCPSharedInstanceManager sharedManager];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __40__MADTextEncoderResource_sharedResource__block_invoke;
  v8[3] = &__block_descriptor_40_e5__8__0l;
  v8[4] = a1;
  v6 = [v3 sharedInstanceWithIdentifier:v5 andCreationBlock:v8];

  return v6;
}

id __40__MADTextEncoderResource_sharedResource__block_invoke()
{
  v0 = objc_alloc_init(objc_opt_class());

  return v0;
}

+ (id)sharedResource:(int64_t)a3
{
  v3 = a3;
  v8 = *MEMORY[0x1E69E9840];
  if (a3 > 4)
  {
    if (a3 <= 6)
    {
      if (a3 != 5)
      {
        goto LABEL_14;
      }
    }

    else if (a3 != 7)
    {
      if (a3 != 8)
      {
        if (a3 == 9)
        {
          v4 = MADSystemSearchMD5TextEncoderResource;
LABEL_17:
          v5 = [(__objc2_class *)v4 sharedResource];
          goto LABEL_18;
        }

        goto LABEL_21;
      }

LABEL_14:
      v4 = MADGenerativePlaygroundsMD4TextEncoderResource;
      goto LABEL_17;
    }

LABEL_15:
    v4 = MADGenerativePlaygroundsMD1TextEncoderResource;
    goto LABEL_17;
  }

  if (a3 > 2)
  {
    if (a3 != 3)
    {
      v4 = MADSystemSearchMD4TextEncoderResource;
      goto LABEL_17;
    }

    goto LABEL_15;
  }

  if (a3 == 1)
  {
    v4 = MADSystemSearchMD2TextEncoderResource;
    goto LABEL_17;
  }

  if (a3 == 2)
  {
    v4 = MADSystemSearchMD3TextEncoderResource;
    goto LABEL_17;
  }

LABEL_21:
  if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v7[0] = 67109120;
    v7[1] = v3;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "MADTextEncoderResource requested for unsupported revision (%d)", v7, 8u);
  }

  v5 = 0;
LABEL_18:

  return v5;
}

- (MADTextEncoderResource)init
{
  v7.receiver = self;
  v7.super_class = MADTextEncoderResource;
  v2 = [(MADTextEncoderResource *)&v7 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_create("MADTextEmbeddingResource", v3);
    queue = v2->_queue;
    v2->_queue = v4;
  }

  return v2;
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

- (int64_t)revision
{
  v7 = *MEMORY[0x1E69E9840];
  if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v2 = objc_opt_class();
    v3 = NSStringFromClass(v2);
    v5 = 138412290;
    v6 = v3;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%@ needs to implement revision", &v5, 0xCu);
  }

  return 0;
}

- (int64_t)tokenEmbeddingType
{
  v7 = *MEMORY[0x1E69E9840];
  if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v2 = objc_opt_class();
    v3 = NSStringFromClass(v2);
    v5 = 138412290;
    v6 = v3;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%@ needs to implement tokenEmbeddingType", &v5, 0xCu);
  }

  return 0;
}

- (unint64_t)version
{
  v7 = *MEMORY[0x1E69E9840];
  if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v2 = objc_opt_class();
    v3 = NSStringFromClass(v2);
    v5 = 138412290;
    v6 = v3;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%@ needs to implement version", &v5, 0xCu);
  }

  return 0;
}

- (CSUTextEncoder)textEncoder
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__58;
  v10 = __Block_byref_object_dispose__58;
  v11 = 0;
  queue = self->_queue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __37__MADTextEncoderResource_textEncoder__block_invoke;
  v5[3] = &unk_1E834D538;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

void __37__MADTextEncoderResource_textEncoder__block_invoke(uint64_t a1)
{
  v21 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v3 = v2[2];
  if (v3)
  {
    goto LABEL_2;
  }

  v4 = [v2 revision];
  if (v4)
  {
    v18 = 0;
    v5 = [MEMORY[0x1E6999168] createForRevision:v4 error:&v18];
    v6 = v18;
    if (v5)
    {
      v7 = [*(a1 + 32) additionalLayerNames];
      [v5 setAdditionalLayerNames:v7];

      v8 = VCPSignPostLog();
      v9 = os_signpost_id_generate(v8);

      v10 = VCPSignPostLog();
      v11 = v10;
      if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_1C9B70000, v11, OS_SIGNPOST_INTERVAL_BEGIN, v9, "CSUTextEncoder_init", "", buf, 2u);
      }

      v12 = [objc_alloc(MEMORY[0x1E6999160]) initWithConfiguration:v5];
      v13 = *(a1 + 32);
      v14 = *(v13 + 16);
      *(v13 + 16) = v12;

      v15 = VCPSignPostLog();
      v16 = v15;
      if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v15))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_1C9B70000, v16, OS_SIGNPOST_INTERVAL_END, v9, "CSUTextEncoder_init", "", buf, 2u);
      }

      if (*(*(a1 + 32) + 16))
      {

        v3 = *(*(a1 + 32) + 16);
LABEL_2:
        objc_storeStrong((*(*(a1 + 40) + 8) + 40), v3);
        return;
      }

      if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Failed to create text encoder", buf, 2u);
      }
    }

    else if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v17 = [v6 description];
      *buf = 138412290;
      v20 = v17;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Failed to create text encoder configuration (%@)", buf, 0xCu);
    }

    return;
  }

  if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Invalid text encoder configuration", buf, 2u);
  }
}

- (void)purge
{
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __31__MADTextEncoderResource_purge__block_invoke;
  block[3] = &unk_1E834BDC0;
  block[4] = self;
  dispatch_sync(queue, block);
}

void __31__MADTextEncoderResource_purge__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 16);
  *(v1 + 16) = 0;
}

@end