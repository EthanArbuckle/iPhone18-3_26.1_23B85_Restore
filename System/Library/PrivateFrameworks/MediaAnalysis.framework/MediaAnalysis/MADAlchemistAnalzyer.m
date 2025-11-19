@interface MADAlchemistAnalzyer
+ (id)sharedProcessingQueue;
- (MADAlchemistAnalzyer)initWithOptions:(id)a3;
- (__CVBuffer)loadImageFromURL:(id)a3;
- (float)getFocalLengthPX:(id)a3 width:(int)a4 height:(int)a5;
- (id)convertHeadroom:(id)a3 forImage:(id)a4;
- (int)performAlchemistForPixelBuffer:(__CVBuffer *)a3 options:(id)a4 results:(id *)a5 cancel:(id)a6;
- (int)performAlchemistForURL:(id)a3 options:(id)a4 results:(id *)a5 cancel:(id)a6;
@end

@implementation MADAlchemistAnalzyer

- (MADAlchemistAnalzyer)initWithOptions:(id)a3
{
  v5 = a3;
  v10.receiver = self;
  v10.super_class = MADAlchemistAnalzyer;
  v6 = [(MADAlchemistAnalzyer *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_options, a3);
    v8 = v7;
  }

  return v7;
}

+ (id)sharedProcessingQueue
{
  if (+[MADAlchemistAnalzyer sharedProcessingQueue]::once != -1)
  {
    +[MADAlchemistAnalzyer sharedProcessingQueue];
  }

  v3 = +[MADAlchemistAnalzyer sharedProcessingQueue]::processingQueue;

  return v3;
}

void __45__MADAlchemistAnalzyer_sharedProcessingQueue__block_invoke()
{
  v2 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v0 = dispatch_queue_create("com.apple.mediaanalysis.MADAlchemistAnalyzer", v2);
  v1 = +[MADAlchemistAnalzyer sharedProcessingQueue]::processingQueue;
  +[MADAlchemistAnalzyer sharedProcessingQueue]::processingQueue = v0;
}

- (int)performAlchemistForPixelBuffer:(__CVBuffer *)a3 options:(id)a4 results:(id *)a5 cancel:(id)a6
{
  v73 = *MEMORY[0x1E69E9840];
  v9 = a4;
  v10 = a6;
  v11 = v10;
  v53 = 0;
  v54 = &v53;
  v55 = 0x3032000000;
  v56 = __Block_byref_object_copy__7;
  v57 = __Block_byref_object_dispose__7;
  v58 = 0;
  if (!v10 || ((*(v10 + 2))(v10) & 1) == 0)
  {
    v40 = a5;
    v13 = [MEMORY[0x1E696AC08] defaultManager];
    if (([v13 fileExistsAtPath:@"/tmp/com.apple.mediaanalysisd/"] & 1) == 0)
    {
      v14 = (v54 + 5);
      obj = v54[5];
      v15 = [v13 createDirectoryAtPath:@"/tmp/com.apple.mediaanalysisd/" withIntermediateDirectories:1 attributes:0 error:&obj];
      objc_storeStrong(v14, obj);
      if ((v15 & 1) == 0)
      {
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          [v54[5] description];
          objc_claimAutoreleasedReturnValue();
          [MADAlchemistAnalzyer performAlchemistForPixelBuffer:options:results:cancel:];
        }

        v12 = -36;
        goto LABEL_24;
      }
    }

    v16 = MEMORY[0x1E696AEC0];
    v17 = [MEMORY[0x1E696AFB0] UUID];
    v18 = [v17 UUIDString];
    v42 = [v16 stringWithFormat:@"%@al-%@.mxi", @"/tmp/com.apple.mediaanalysisd/", v18];

    v19 = [objc_alloc(MEMORY[0x1E695DFF8]) initFileURLWithPath:v42];
    v20 = [v9 objectForKeyedSubscript:@"AlchemistFocalLengthPX"];
    v21 = v20;
    if (v20)
    {
      [v20 floatValue];
      Width = v22;
    }

    else
    {
      Width = CVPixelBufferGetWidth(a3);
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "[MADAlchemistAnalyzer] Use default FocalLenghtPX", buf, 2u);
      }
    }

    v39 = [v9 objectForKeyedSubscript:@"AlchemistPreset"];
    v41 = [v9 objectForKeyedSubscript:@"AlchemistResolutionCustomSize"];
    v24 = [v9 objectForKeyedSubscript:@"AlchemistClient"];
    *buf = 0;
    v68 = buf;
    v69 = 0x3032000000;
    v70 = __Block_byref_object_copy__7;
    v71 = __Block_byref_object_dispose__7;
    v72 = 0;
    v25 = [objc_opt_class() sharedProcessingQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __78__MADAlchemistAnalzyer_performAlchemistForPixelBuffer_options_results_cancel___block_invoke;
    block[3] = &unk_1E834CEA0;
    v50 = a3;
    v51 = Width;
    v26 = v39;
    v45 = v26;
    v27 = v41;
    v46 = v27;
    v28 = v24;
    v47 = v28;
    v48 = &v53;
    v49 = buf;
    dispatch_sync(v25, block);

    if (v54[5] || !*(v68 + 5))
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        [v54[5] description];
        objc_claimAutoreleasedReturnValue();
        [MADAlchemistAnalzyer performAlchemistForPixelBuffer:options:results:cancel:];
      }
    }

    else
    {
      v29 = [v9 objectForKeyedSubscript:@"UserInitiated"];
      if (v29)
      {

LABEL_21:
        v65 = @"AlchemistResults";
        v32 = *(v68 + 5);
        v63 = @"alchemistMXIScene";
        v64 = v32;
        v33 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v64 forKeys:&v63 count:1];
        v66 = v33;
        *v40 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v66 forKeys:&v65 count:1];

LABEL_22:
        v12 = 0;
        goto LABEL_23;
      }

      v30 = [v9 objectForKeyedSubscript:@"InProcess"];
      v31 = v30 == 0;

      if (!v31)
      {
        goto LABEL_21;
      }

      v35 = *(v68 + 5);
      v36 = (v54 + 5);
      v43 = v54[5];
      v38 = [v35 writeToURL:v19 error:&v43];
      objc_storeStrong(v36, v43);
      if (v38)
      {
        v61 = @"AlchemistResults";
        v59 = @"alchemistPath";
        v60 = v42;
        v37 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v60 forKeys:&v59 count:1];
        v62 = v37;
        *v40 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v62 forKeys:&v61 count:1];

        goto LABEL_22;
      }

      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        [v54[5] description];
        objc_claimAutoreleasedReturnValue();
        [MADAlchemistAnalzyer performAlchemistForPixelBuffer:options:results:cancel:];
      }
    }

    v12 = -18;
LABEL_23:

    _Block_object_dispose(buf, 8);
LABEL_24:

    goto LABEL_25;
  }

  v12 = -128;
LABEL_25:
  _Block_object_dispose(&v53, 8);

  return v12;
}

void __78__MADAlchemistAnalzyer_performAlchemistForPixelBuffer_options_results_cancel___block_invoke(uint64_t a1)
{
  v2 = objc_alloc_init(_MADObjCAlchemistService);
  v3 = dispatch_semaphore_create(0);
  v4 = *(a1 + 72);
  v5 = *(a1 + 80);
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  v8 = *(a1 + 48);
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __78__MADAlchemistAnalzyer_performAlchemistForPixelBuffer_options_results_cancel___block_invoke_2;
  v11[3] = &unk_1E834CE78;
  v13 = *(a1 + 56);
  v12 = v3;
  v9 = v3;
  LODWORD(v10) = v5;
  [(_MADObjCAlchemistService *)v2 convertAlchemist:v4 focalLengthPX:v6 preset:v7 resolution:v8 client:v11 completion:v10];
  dispatch_semaphore_wait(v9, 0xFFFFFFFFFFFFFFFFLL);
}

void __78__MADAlchemistAnalzyer_performAlchemistForPixelBuffer_options_results_cancel___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v9 = *MEMORY[0x1E69E9840];
  v6 = a2;
  v7 = a3;
  if (v7)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      [v7 localizedDescription];
      objc_claimAutoreleasedReturnValue();
      __78__MADAlchemistAnalzyer_performAlchemistForPixelBuffer_options_results_cancel___block_invoke_2_cold_1();
    }

    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a3);
  }

  else
  {
    objc_storeStrong((*(*(a1 + 48) + 8) + 40), a2);
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "[MADAlchemistAnalyzer] Generated alchemist asset", v8, 2u);
    }
  }

  dispatch_semaphore_signal(*(a1 + 32));
}

- (int)performAlchemistForURL:(id)a3 options:(id)a4 results:(id *)a5 cancel:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a6;
  v13 = [(MADAlchemistAnalzyer *)self loadImageFromURL:v10];
  pixelBuffer = v13;
  if (v13)
  {
    Width = CVPixelBufferGetWidth(v13);
    [(MADAlchemistAnalzyer *)self getFocalLengthPX:v10 width:Width height:CVPixelBufferGetHeight(pixelBuffer)];
    v16 = v15;
    v17 = [v11 mutableCopy];
    LODWORD(v18) = v16;
    v19 = [MEMORY[0x1E696AD98] numberWithFloat:v18];
    [v17 setObject:v19 forKeyedSubscript:@"AlchemistFocalLengthPX"];

    v20 = [v17 copy];
    v21 = [(MADAlchemistAnalzyer *)self performAlchemistForPixelBuffer:pixelBuffer options:v20 results:a5 cancel:v12];
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      [MADAlchemistAnalzyer performAlchemistForURL:options:results:cancel:];
    }

    v21 = -18;
  }

  CF<__CVBuffer *>::~CF(&pixelBuffer);

  return v21;
}

- (__CVBuffer)loadImageFromURL:(id)a3
{
  v3 = a3;
  v4 = +[VCPImageManager sharedImageManager];
  v5 = [v4 pixelBufferWithFormat:875704422 fromImageURL:v3 flushCache:0];

  return v5;
}

- (float)getFocalLengthPX:(id)a3 width:(int)a4 height:(int)a5
{
  v24[1] = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  isrc = CGImageSourceCreateWithURL(v7, 0);
  if (isrc)
  {
    v23 = *MEMORY[0x1E696E0A8];
    v24[0] = MEMORY[0x1E695E110];
    v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v24 forKeys:&v23 count:1];
    v10 = CGImageSourceCopyPropertiesAtIndex(isrc, 0, v9);
    v11 = v10;
    if (v10)
    {
      v12 = [(__CFDictionary *)v10 objectForKeyedSubscript:*MEMORY[0x1E696D9B0]];
      v13 = v12;
      if (v12)
      {
        v14 = *MEMORY[0x1E696DA08];
        v15 = [v12 objectForKeyedSubscript:*MEMORY[0x1E696DA08]];
        v16 = v15 == 0;

        if (!v16)
        {
          v17 = [v13 objectForKeyedSubscript:v14];
          [v17 floatValue];
          v19 = v18;

          v20 = sqrtf((a5 * a5) + (v8 * v8)) / 43.27;
          v8 = v19 * v20;
        }
      }
    }
  }

  CF<__CVBuffer *>::~CF(&isrc);

  return v8;
}

- (id)convertHeadroom:(id)a3 forImage:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = v6;
  if (v5)
  {
    v8 = v5;
  }

  else
  {
    v8 = &unk_1F49BB558;
  }

  [v6 contentHeadroom];
  v10 = v9;
  [v8 floatValue];
  if (vabds_f32(v10, v11) <= 0.00000011921)
  {
    v16 = v7;
  }

  else
  {
    v12 = [MEMORY[0x1E695F648] filterWithName:@"CIToneMapHeadroom"];
    v13 = *MEMORY[0x1E695FAB0];
    [v12 setValue:v7 forKey:*MEMORY[0x1E695FAB0]];
    v14 = MEMORY[0x1E696AD98];
    [v8 floatValue];
    v15 = [v14 numberWithFloat:?];
    [v12 setValue:v15 forKey:@"inputTargetHeadroom"];

    v16 = [v12 outputImage];
    [v12 setValue:0 forKey:v13];
  }

  return v16;
}

- (void)performAlchemistForPixelBuffer:options:results:cancel:.cold.1()
{
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_0(v1, v2, 5.7779e-34);
  OUTLINED_FUNCTION_2_0(&dword_1C9B70000, MEMORY[0x1E69E9C10], v3, "Failed to create resource file cache directory (%@)", v4);
}

- (void)performAlchemistForPixelBuffer:options:results:cancel:.cold.2()
{
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_0(v1, v2, 5.7779e-34);
  OUTLINED_FUNCTION_2_0(&dword_1C9B70000, MEMORY[0x1E69E9C10], v3, "Error writing MXIScene to URL: %@", v4);
}

- (void)performAlchemistForPixelBuffer:options:results:cancel:.cold.3()
{
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_0(v1, v2, 5.7779e-34);
  OUTLINED_FUNCTION_2_0(&dword_1C9B70000, MEMORY[0x1E69E9C10], v3, "Error running Alchemist generation: %@", v4);
}

void __78__MADAlchemistAnalzyer_performAlchemistForPixelBuffer_options_results_cancel___block_invoke_2_cold_1()
{
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_0(v1, v2, 5.7779e-34);
  OUTLINED_FUNCTION_2_0(&dword_1C9B70000, MEMORY[0x1E69E9C10], v3, "[MADAlchemistAnalyzer] Error converting alchemist: %@", v4);
}

@end