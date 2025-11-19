@interface MADTextEmbeddingResource
+ (id)sharedResource:(unint64_t)a3 extendedContextLength:(BOOL)a4;
- (BOOL)isTextEncoderWarm;
- (MADSharedTextEncoder)textEncoder;
- (MADTextEmbeddingResource)init;
- (MADTextEmbeddingSafety)safety;
- (MADTextEmbeddingThreshold)calibration;
- (VUWGallery)entityGallery;
- (int64_t)activeCost;
- (int64_t)inactiveCost;
- (void)purge;
@end

@implementation MADTextEmbeddingResource

- (MADTextEmbeddingResource)init
{
  v7.receiver = self;
  v7.super_class = MADTextEmbeddingResource;
  v2 = [(MADTextEmbeddingResource *)&v7 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_create("MADTextEmbeddingResource", v3);
    queue = v2->_queue;
    v2->_queue = v4;
  }

  return v2;
}

+ (id)sharedResource:(unint64_t)a3 extendedContextLength:(BOOL)a4
{
  v4 = a3;
  v10 = *MEMORY[0x1E69E9840];
  if (a3 > 4)
  {
    if (a3 > 7)
    {
      if (a3 == 8)
      {
        if (MediaAnalysisLogLevel() >= 4 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v9[0]) = 0;
          _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "Client requested MD7 4.9-bit which is no longer available; using MD7 6-bit", v9, 2u);
        }
      }

      else if (a3 != 9)
      {
        goto LABEL_15;
      }

      if (a4)
      {
        v5 = MADTextEmbeddingMD7v2ExtendedResource;
      }

      else
      {
        v5 = MADTextEmbeddingMD7v2DefaultResource;
      }

      goto LABEL_31;
    }

    if (a3 == 5)
    {
      if (a4)
      {
        v5 = MADTextEmbeddingMD5ExtendedResource;
      }

      else
      {
        v5 = MADTextEmbeddingMD5DefaultResource;
      }

      goto LABEL_31;
    }

    if (a3 == 7)
    {
      if (a4)
      {
        v5 = MADTextEmbeddingMD6ExtendedResource;
      }

      else
      {
        v5 = MADTextEmbeddingMD6DefaultResource;
      }

      goto LABEL_31;
    }
  }

  else
  {
    if (a3 > 2)
    {
      if (a3 == 3)
      {
        v5 = MADTextEmbeddingMD3Resource;
      }

      else
      {
        v5 = MADTextEmbeddingMD4Resource;
      }

      goto LABEL_31;
    }

    if (a3 == 1)
    {
      v5 = MADTextEmbeddingMD1Resource;
      goto LABEL_31;
    }

    if (a3 == 2)
    {
      v5 = MADTextEmbeddingMD2Resource;
LABEL_31:
      v7 = [(__objc2_class *)v5 sharedResource];
      goto LABEL_32;
    }
  }

LABEL_15:
  if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v9[0] = 67109120;
    v9[1] = v4;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Unsupported text encoder version (%d) requested", v9, 8u);
  }

  v7 = 0;
LABEL_32:

  return v7;
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
    return 5;
  }

  else
  {
    return 100;
  }
}

- (MADSharedTextEncoder)textEncoder
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__0;
  v10 = __Block_byref_object_dispose__0;
  v11 = 0;
  queue = self->_queue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __39__MADTextEmbeddingResource_textEncoder__block_invoke;
  v5[3] = &unk_1E834BFE8;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

void __39__MADTextEmbeddingResource_textEncoder__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = v2[2];
  if (!v3)
  {
    v4 = +[MADSharedTextEncoder textEncoderWithVersion:extendedContextLength:](MADSharedTextEncoder, "textEncoderWithVersion:extendedContextLength:", [v2 version], objc_msgSend(objc_opt_class(), "extendedContextLength"));
    v5 = *(a1 + 32);
    v6 = *(v5 + 16);
    *(v5 + 16) = v4;

    v3 = *(*(a1 + 32) + 16);
  }

  v7 = (*(*(a1 + 40) + 8) + 40);

  objc_storeStrong(v7, v3);
}

- (VUWGallery)entityGallery
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__0;
  v10 = __Block_byref_object_dispose__0;
  v11 = 0;
  queue = self->_queue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __41__MADTextEmbeddingResource_entityGallery__block_invoke;
  v5[3] = &unk_1E834BFE8;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

void __41__MADTextEmbeddingResource_entityGallery__block_invoke(uint64_t a1)
{
  v23 = *MEMORY[0x1E69E9840];
  v2 = *(*(a1 + 32) + 24);
  if (!v2)
  {
    v3 = [MEMORY[0x1E69789B0] vcp_defaultPhotoLibrary];
    v4 = [v3 vcp_visionCacheStorageDirectoryURL];
    v5 = VCPSignPostLog();
    v6 = os_signpost_id_generate(v5);

    v7 = VCPSignPostLog();
    v8 = v7;
    if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1C9B70000, v8, OS_SIGNPOST_INTERVAL_BEGIN, v6, "VUWGallery_initWithPath", "", buf, 2u);
    }

    v18 = 0;
    v9 = [objc_alloc(MEMORY[0x1E69E0678]) initWithClient:0 path:v4 error:&v18];
    v10 = v18;
    v11 = *(a1 + 32);
    v12 = *(v11 + 24);
    *(v11 + 24) = v9;

    v13 = VCPSignPostLog();
    v14 = v13;
    if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v13))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1C9B70000, v14, OS_SIGNPOST_INTERVAL_END, v6, "VUWGallery_initWithPath", "", buf, 2u);
    }

    if (!*(*(a1 + 32) + 24) && MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v15 = objc_opt_class();
      v16 = NSStringFromClass(v15);
      v17 = [v10 description];
      *buf = 138412546;
      v20 = v16;
      v21 = 2112;
      v22 = v17;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Failed to create %@ (%@)", buf, 0x16u);
    }

    v2 = *(*(a1 + 32) + 24);
  }

  objc_storeStrong((*(*(a1 + 40) + 8) + 40), v2);
}

- (MADTextEmbeddingThreshold)calibration
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__0;
  v10 = __Block_byref_object_dispose__0;
  v11 = 0;
  queue = self->_queue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __39__MADTextEmbeddingResource_calibration__block_invoke;
  v5[3] = &unk_1E834BFE8;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

void __39__MADTextEmbeddingResource_calibration__block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  if (!*(*(a1 + 32) + 32))
  {
    if (MediaAnalysisLogLevel() >= 5 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      [*(a1 + 32) version];
      v2 = MADUnifiedEmbeddingVersionToString();
      v12 = 138412290;
      v13 = v2;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "Creating calibration model (%@)", &v12, 0xCu);
    }

    v3 = VCPSignPostLog();
    v4 = os_signpost_id_generate(v3);

    v5 = VCPSignPostLog();
    v6 = v5;
    if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v5))
    {
      LOWORD(v12) = 0;
      _os_signpost_emit_with_name_impl(&dword_1C9B70000, v6, OS_SIGNPOST_INTERVAL_BEGIN, v4, "MADTextEmbeddingThreshold_create", "", &v12, 2u);
    }

    v7 = +[MADTextEmbeddingThreshold createForEmbeddingVersion:](MADTextEmbeddingThreshold, "createForEmbeddingVersion:", [*(a1 + 32) version]);
    v8 = *(a1 + 32);
    v9 = *(v8 + 32);
    *(v8 + 32) = v7;

    v10 = VCPSignPostLog();
    v11 = v10;
    if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
    {
      LOWORD(v12) = 0;
      _os_signpost_emit_with_name_impl(&dword_1C9B70000, v11, OS_SIGNPOST_INTERVAL_END, v4, "MADTextEmbeddingThreshold_create", "", &v12, 2u);
    }

    if (!*(*(a1 + 32) + 32) && MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      LOWORD(v12) = 0;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Failed to create embedding calibration", &v12, 2u);
    }
  }

  objc_storeStrong((*(*(a1 + 40) + 8) + 40), *(*(a1 + 32) + 32));
}

- (MADTextEmbeddingSafety)safety
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__0;
  v10 = __Block_byref_object_dispose__0;
  v11 = 0;
  queue = self->_queue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __34__MADTextEmbeddingResource_safety__block_invoke;
  v5[3] = &unk_1E834BFE8;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

void __34__MADTextEmbeddingResource_safety__block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  if (!*(*(a1 + 32) + 40))
  {
    if (MediaAnalysisLogLevel() >= 5 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      [*(a1 + 32) version];
      v2 = MADUnifiedEmbeddingVersionToString();
      v12 = 138412290;
      v13 = v2;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "Creating safety model (%@)", &v12, 0xCu);
    }

    v3 = VCPSignPostLog();
    v4 = os_signpost_id_generate(v3);

    v5 = VCPSignPostLog();
    v6 = v5;
    if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v5))
    {
      LOWORD(v12) = 0;
      _os_signpost_emit_with_name_impl(&dword_1C9B70000, v6, OS_SIGNPOST_INTERVAL_BEGIN, v4, "MADTextEmbeddingSafety_create", "", &v12, 2u);
    }

    v7 = +[MADTextEmbeddingSafety createForEmbeddingVersion:](MADTextEmbeddingSafety, "createForEmbeddingVersion:", [*(a1 + 32) version]);
    v8 = *(a1 + 32);
    v9 = *(v8 + 40);
    *(v8 + 40) = v7;

    v10 = VCPSignPostLog();
    v11 = v10;
    if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
    {
      LOWORD(v12) = 0;
      _os_signpost_emit_with_name_impl(&dword_1C9B70000, v11, OS_SIGNPOST_INTERVAL_END, v4, "MADTextEmbeddingSafety_create", "", &v12, 2u);
    }

    if (!*(*(a1 + 32) + 40) && MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      LOWORD(v12) = 0;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Failed to create embedding safety", &v12, 2u);
    }
  }

  objc_storeStrong((*(*(a1 + 40) + 8) + 40), *(*(a1 + 32) + 40));
}

- (BOOL)isTextEncoderWarm
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  queue = self->_queue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __45__MADTextEmbeddingResource_isTextEncoderWarm__block_invoke;
  v5[3] = &unk_1E834BFE8;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

void *__45__MADTextEmbeddingResource_isTextEncoderWarm__block_invoke(uint64_t a1)
{
  result = *(*(a1 + 32) + 16);
  if (result)
  {
    result = [result isWarm];
    *(*(*(a1 + 40) + 8) + 24) = result;
  }

  return result;
}

- (void)purge
{
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __33__MADTextEmbeddingResource_purge__block_invoke;
  block[3] = &unk_1E834C010;
  block[4] = self;
  dispatch_sync(queue, block);
}

void __33__MADTextEmbeddingResource_purge__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 16);
  *(v2 + 16) = 0;

  v4 = *(a1 + 32);
  v5 = *(v4 + 24);
  *(v4 + 24) = 0;

  v6 = *(a1 + 32);
  v7 = *(v6 + 32);
  *(v6 + 32) = 0;

  v8 = *(a1 + 32);
  v9 = *(v8 + 40);
  *(v8 + 40) = 0;
}

@end