@interface VCPImageCaptionAnalyzer
+ (id)sharedCSUCaptionerWithConfig:(id)a3 identifier:(id)a4;
+ (id)sharedCVNLPCaptionHandlerWithOptions:(id)a3 identifier:(id)a4;
- (BOOL)containPotentialUnsafeContent:(__CVBuffer *)a3;
- (VCPImageCaptionAnalyzer)initWithCaptionModelType:(int64_t)a3 captionSafetyType:(int64_t)a4 useSharedModel:(BOOL)a5;
- (int)analyzeEmbedding:(id)a3 flags:(unint64_t *)a4 results:(id *)a5 cancel:(id)a6;
- (int)analyzePixelBuffer:(__CVBuffer *)a3 flags:(unint64_t *)a4 results:(id *)a5 cancel:(id)a6;
- (void)dealloc;
@end

@implementation VCPImageCaptionAnalyzer

- (VCPImageCaptionAnalyzer)initWithCaptionModelType:(int64_t)a3 captionSafetyType:(int64_t)a4 useSharedModel:(BOOL)a5
{
  v66[5] = *MEMORY[0x1E69E9840];
  v62.receiver = self;
  v62.super_class = VCPImageCaptionAnalyzer;
  v8 = [(VCPImageCaptionAnalyzer *)&v62 init];
  v9 = v8;
  if (!v8)
  {
    v14 = 0;
LABEL_61:
    v29 = v14;
    goto LABEL_62;
  }

  v8->_modelType = a3;
  v8->_safetyType = a4;
  v8->_rescaledImageBuffer = 0;
  v8->_useSharedModel = a5;
  v10 = +[VCPVideoTransformerBackbone revision];
  v9->_backboneRevision = v10;
  modelType = v9->_modelType;
  if (modelType <= 2)
  {
    if (modelType != 1)
    {
      if (modelType != 2)
      {
        goto LABEL_19;
      }

      v15 = +[VCPMobileAssetManager sharedManager];
      v16 = [v15 retrieveAssetOnce:1 petWatchDog:0 cancelBlock:0];

      if (!v16)
      {
        if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[ImageCaption] VCPMobileAsset_ImageCaption_AX_CSU model download failed", buf, 2u);
        }

        v21 = 0;
LABEL_57:

        goto LABEL_58;
      }

      v17 = [v16 URLByAppendingPathComponent:@"ImageCaptioning.config.json"];
      v18 = MEMORY[0x1E6999118];
      v19 = [v17 path];
      v55 = 0;
      v20 = [v18 createCSUImageCaptionerConfigurationWithConfigPath:v19 error:&v55];
      v21 = v55;
      captionerConfig = v9->_captionerConfig;
      v9->_captionerConfig = v20;

      v23 = @"CSUImageCaptioner_AX_CSU";
LABEL_32:

LABEL_33:
      if (v9->_captionerConfig)
      {
        v33 = v21 == 0;
      }

      else
      {
        v33 = 0;
      }

      if (v33)
      {
        if (v9->_useSharedModel)
        {
          v34 = [objc_opt_class() sharedCSUCaptionerWithConfig:v9->_captionerConfig identifier:v23];
        }

        else
        {
          v34 = [objc_alloc(MEMORY[0x1E6999110]) initWithConfiguration:v9->_captionerConfig];
        }

        imageCaptioner = v9->_imageCaptioner;
        v9->_imageCaptioner = v34;
      }

      if (v9->_imageCaptioner)
      {
        goto LABEL_43;
      }

      if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v36 = [v21 description];
        v37 = v36;
        v38 = [v36 UTF8String];
        *buf = 136315138;
        v64 = v38;
        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[ImageCaption] Failed to create CSUImageCaptioner: (%s)", buf, 0xCu);
      }

      goto LABEL_57;
    }

    if ([objc_opt_class() useVCPMobileAssetAXCaptionModel])
    {
      v28 = +[VCPMobileAssetManager sharedManager];
      v21 = [v28 retrieveAssetOnce:0 petWatchDog:0 cancelBlock:0];
    }

    else
    {
      v39 = [MEMORY[0x1E6988C48] sharedInstance];
      v28 = [v39 modelURLForType:0 timeout:0.5];

      if (!v28)
      {
        if (MediaAnalysisLogLevel() < 3 || !os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          goto LABEL_58;
        }

        *buf = 0;
        v53 = MEMORY[0x1E69E9C10];
        v54 = "[ImageCaption] Accessibility image caption model mobile asset not available";
        goto LABEL_75;
      }

      v40 = +[VCPMobileAssetManager sharedManager];
      v21 = [v40 cloneAsset:v28 to:@"ClonedImageCaptionModel"];
    }

    if (v21)
    {
      v41 = [MEMORY[0x1E696AC08] defaultManager];
      v42 = [v21 path];
      v43 = [v41 fileExistsAtPath:v42];

      if (v43)
      {
        v44 = *MEMORY[0x1E6991F70];
        v65[0] = *MEMORY[0x1E6991F78];
        v65[1] = v44;
        v66[0] = v21;
        v66[1] = @"en-US";
        v45 = *MEMORY[0x1E6991F88];
        v65[2] = *MEMORY[0x1E6991F60];
        v65[3] = v45;
        v46 = *MEMORY[0x1E6991F80];
        v66[2] = &unk_1F49BE650;
        v66[3] = v46;
        v65[4] = *MEMORY[0x1E6991F68];
        v66[4] = MEMORY[0x1E695E110];
        v47 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v66 forKeys:v65 count:5];
        v48 = MEMORY[0x1E696AEC0];
        v49 = [v21 absoluteString];
        v50 = [v48 stringWithFormat:@"%@_%@", @"CVNLPImageCaptionHandler", v49];

        if (v9->_useSharedModel)
        {
          v51 = [objc_opt_class() sharedCVNLPCaptionHandlerWithOptions:v47 identifier:v50];
        }

        else
        {
          v51 = CVNLPCaptionHandlerCreate();
        }

        v9->_captionHandlerRef = v51;
        if (v51)
        {

LABEL_43:
          v14 = v9;
LABEL_60:

          goto LABEL_61;
        }

        if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[ImageCaption] Failed to create CVNLPCaptionHandlerRef", buf, 2u);
        }
      }

      else if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Local image caption model not exists", buf, 2u);
      }

LABEL_59:
      v14 = 0;
      goto LABEL_60;
    }

    if (MediaAnalysisLogLevel() < 3 || !os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
LABEL_58:
      v21 = 0;
      goto LABEL_59;
    }

    *buf = 0;
    v53 = MEMORY[0x1E69E9C10];
    v54 = "[ImageCaption] Fail cloning image caption model to local path";
LABEL_75:
    _os_log_impl(&dword_1C9B70000, v53, OS_LOG_TYPE_ERROR, v54, buf, 2u);
    goto LABEL_58;
  }

  switch(modelType)
  {
    case 3:
      if ((v10 - 5) >= 2)
      {
        if (v10 != 7)
        {
          v21 = 0;
          v23 = @"CSUImageCaptioner_MiCa";
          goto LABEL_33;
        }

        v61 = 0;
        v24 = &v61;
        v25 = [MEMORY[0x1E6999118] CSUImageCaptionerConfigurationForRevision:9 error:&v61];
      }

      else
      {
        v60 = 0;
        v24 = &v60;
        v25 = [MEMORY[0x1E6999118] CSUImageCaptionerConfigurationForRevision:6 error:&v60];
      }

      v30 = v25;
      v21 = *v24;
      v16 = v9->_captionerConfig;
      v9->_captionerConfig = v30;
      v23 = @"CSUImageCaptioner_MiCa";
      goto LABEL_32;
    case 4:
      if ((v10 - 5) >= 2)
      {
        if (v10 != 7)
        {
          v21 = 0;
          v23 = @"CSUImageCaptioner_MiCa_SafeCaption";
          goto LABEL_33;
        }

        v59 = 0;
        v26 = &v59;
        v27 = [MEMORY[0x1E6999118] CSUImageCaptionerConfigurationForRevision:10 error:&v59];
      }

      else
      {
        v58 = 0;
        v26 = &v58;
        v27 = [MEMORY[0x1E6999118] CSUImageCaptionerConfigurationForRevision:7 error:&v58];
      }

      v31 = v27;
      v21 = *v26;
      v16 = v9->_captionerConfig;
      v9->_captionerConfig = v31;
      v23 = @"CSUImageCaptioner_MiCa_SafeCaption";
      goto LABEL_32;
    case 5:
      if ((v10 - 5) >= 2)
      {
        if (v10 != 7)
        {
          v21 = 0;
          v23 = @"CSUImageCaptioner_MiCa_GP";
          goto LABEL_33;
        }

        v57 = 0;
        v12 = &v57;
        v13 = [MEMORY[0x1E6999118] CSUImageCaptionerConfigurationForRevision:11 error:&v57];
      }

      else
      {
        v56 = 0;
        v12 = &v56;
        v13 = [MEMORY[0x1E6999118] CSUImageCaptionerConfigurationForRevision:8 error:&v56];
      }

      v32 = v13;
      v21 = *v12;
      v16 = v9->_captionerConfig;
      v9->_captionerConfig = v32;
      v23 = @"CSUImageCaptioner_MiCa_GP";
      goto LABEL_32;
  }

LABEL_19:
  if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    *buf = 134217984;
    v64 = a3;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[ImageCaption] Init fails with unsupported MADImageCaptionModelType: %ld", buf, 0xCu);
  }

  v29 = 0;
LABEL_62:

  return v29;
}

- (void)dealloc
{
  rescaledImageBuffer = self->_rescaledImageBuffer;
  if (rescaledImageBuffer)
  {
    CFRelease(rescaledImageBuffer);
    self->_rescaledImageBuffer = 0;
  }

  v4.receiver = self;
  v4.super_class = VCPImageCaptionAnalyzer;
  [(VCPImageCaptionAnalyzer *)&v4 dealloc];
}

+ (id)sharedCSUCaptionerWithConfig:(id)a3 identifier:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = v6;
  if (v5 && v6)
  {
    v8 = +[VCPSharedInstanceManager sharedManager];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __67__VCPImageCaptionAnalyzer_sharedCSUCaptionerWithConfig_identifier___block_invoke;
    v11[3] = &unk_1E83522D8;
    v12 = v7;
    v13 = v5;
    v9 = [v8 sharedInstanceWithIdentifier:v12 andCreationBlock:v11];
  }

  else
  {
    if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[ImageCaption] Initiating captioner with nil config or identifier", buf, 2u);
    }

    v9 = 0;
  }

  return v9;
}

id __67__VCPImageCaptionAnalyzer_sharedCSUCaptionerWithConfig_identifier___block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  if (MediaAnalysisLogLevel() >= 6 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
  {
    v2 = *(a1 + 32);
    v3 = *(a1 + 40);
    v6 = 138412546;
    v7 = v2;
    v8 = 2112;
    v9 = v3;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "[ImageCaption] Initiating captioner:%@ with config:%@", &v6, 0x16u);
  }

  v4 = [objc_alloc(MEMORY[0x1E6999110]) initWithConfiguration:*(a1 + 40)];

  return v4;
}

+ (id)sharedCVNLPCaptionHandlerWithOptions:(id)a3 identifier:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = v6;
  if (v5 && v6)
  {
    v8 = +[VCPSharedInstanceManager sharedManager];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __75__VCPImageCaptionAnalyzer_sharedCVNLPCaptionHandlerWithOptions_identifier___block_invoke;
    v11[3] = &unk_1E8350188;
    v12 = v5;
    v9 = [v8 sharedInstanceWithIdentifier:v7 andCreationBlock:v11];
  }

  else
  {
    if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[ImageCaption] Initiating CVNLPCaptionHandler with nil options or identifier", buf, 2u);
    }

    v9 = 0;
  }

  return v9;
}

id __75__VCPImageCaptionAnalyzer_sharedCVNLPCaptionHandlerWithOptions_identifier___block_invoke()
{
  if (MediaAnalysisLogLevel() >= 6 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
  {
    *v2 = 0;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "[ImageCaption] Initiating CVNLPCaptionHandler", v2, 2u);
  }

  v0 = CVNLPCaptionHandlerCreate();

  return v0;
}

- (BOOL)containPotentialUnsafeContent:(__CVBuffer *)a3
{
  v77[2] = *MEMORY[0x1E69E9840];
  if (self->_safetyType != 1)
  {
    return 0;
  }

  v4 = *MEMORY[0x1E69CA830];
  v76[0] = *MEMORY[0x1E69CA820];
  v76[1] = v4;
  v77[0] = MEMORY[0x1E695E118];
  v77[1] = &unk_1F49BE668;
  v55 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v77 forKeys:v76 count:2];
  v66 = 0;
  v53 = [objc_alloc(MEMORY[0x1E69CA710]) initWithOptions:v55 error:0];
  v5 = [v53 classifyPixelBuffer:a3 error:&v66];
  v56 = COERCE_DOUBLE(v66);
  if (v56 != 0.0 && MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    *buf = 138412290;
    v69 = v56;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[ImageCaption] Error calling into SCML: %@", buf, 0xCu);
  }

  if (v5 != 1)
  {
    v52 = objc_alloc_init(MEMORY[0x1E69843F0]);
    [v52 setRevision:2];
    v51 = objc_alloc_init(MEMORY[0x1E69846B0]);
    v6 = objc_alloc_init(MEMORY[0x1E6984440]);
    v65 = 0;
    v7 = [v6 setRevision:3737841669 error:&v65];
    v49 = v65;
    if ((v7 & 1) == 0)
    {
      if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[ImageCaption] Failed to set revision for meme identification", buf, 2u);
      }

      v6 = 0;
    }

    v47 = v6;
    v8 = objc_alloc(MEMORY[0x1E69845B8]);
    v48 = [v8 initWithCVPixelBuffer:a3 orientation:1 options:MEMORY[0x1E695E0F8]];
    v75[0] = v52;
    v75[1] = v51;
    v75[2] = v6;
    v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v75 count:3];
    [v48 performRequests:v9 error:0];

    v54 = [MEMORY[0x1E695DF70] array];
    v10 = [v52 results];
    [v54 addObjectsFromArray:v10];

    v11 = [v51 results];
    [v54 addObjectsFromArray:v11];

    v12 = *MEMORY[0x1E69849F8];
    v73[0] = *MEMORY[0x1E6984750];
    v73[1] = v12;
    v74[0] = &unk_1F49BB2A8;
    v74[1] = &unk_1F49BB2B8;
    v13 = *MEMORY[0x1E6984848];
    v73[2] = *MEMORY[0x1E6984780];
    v73[3] = v13;
    v74[2] = &unk_1F49BB2C8;
    v74[3] = &unk_1F49BB2D8;
    v14 = *MEMORY[0x1E6984730];
    v73[4] = *MEMORY[0x1E6984A18];
    v73[5] = v14;
    v74[4] = &unk_1F49BB2E8;
    v74[5] = &unk_1F49BB2E8;
    v15 = *MEMORY[0x1E6984748];
    v73[6] = *MEMORY[0x1E6984A38];
    v73[7] = v15;
    v74[6] = &unk_1F49BB2F8;
    v74[7] = &unk_1F49BB2F8;
    v73[8] = *MEMORY[0x1E6984868];
    v74[8] = &unk_1F49BB2D8;
    v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v74 forKeys:v73 count:9];
    v17 = [v16 allKeys];
    v63 = 0u;
    v64 = 0u;
    v61 = 0u;
    v62 = 0u;
    v18 = v54;
    v19 = [v18 countByEnumeratingWithState:&v61 objects:v72 count:16];
    if (v19)
    {
      v20 = *v62;
      while (2)
      {
        for (i = 0; i != v19; ++i)
        {
          if (*v62 != v20)
          {
            objc_enumerationMutation(v18);
          }

          v22 = *(*(&v61 + 1) + 8 * i);
          v23 = [v22 identifier];
          [v22 confidence];
          v25 = v24;
          v26 = [v16 objectForKeyedSubscript:v23];
          [v26 floatValue];
          v28 = v27;

          v29 = [v17 containsObject:v23];
          if (v25 > v28)
          {
            v30 = v29;
          }

          else
          {
            v30 = 0;
          }

          if (v30)
          {
            if (MediaAnalysisLogLevel() >= 6 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
            {
              *buf = 134218240;
              v69 = v25;
              v70 = 2048;
              v71 = v28;
              _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "[ImageCaption] This image looks unsafe with confidence %f/%f. Don't caption this image.", buf, 0x16u);
            }

            obj = v18;
            goto LABEL_47;
          }
        }

        v19 = [v18 countByEnumeratingWithState:&v61 objects:v72 count:16];
        if (v19)
        {
          continue;
        }

        break;
      }
    }

    v59 = 0u;
    v60 = 0u;
    v57 = 0u;
    v58 = 0u;
    v31 = [v47 results];
    v32 = [v31 countByEnumeratingWithState:&v57 objects:v67 count:16];
    if (v32)
    {
      obj = v31;
      v33 = *v58;
LABEL_29:
      v34 = 0;
      while (1)
      {
        if (*v58 != v33)
        {
          objc_enumerationMutation(obj);
        }

        v35 = *(*(&v57 + 1) + 8 * v34);
        v23 = [v35 identifier];
        [v35 confidence];
        v37 = v36;
        v38 = [&unk_1F49BF238 containsObject:v23];
        v39 = v37 > 0.2 ? v38 : 0;
        if (v39 == 1)
        {
          break;
        }

        v40 = [&unk_1F49BF250 containsObject:v23];
        if (v37 > 0.15)
        {
          v41 = v40;
        }

        else
        {
          v41 = 0;
        }

        if (v41 == 1)
        {
          if (MediaAnalysisLogLevel() >= 6 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
          {
            *buf = 0;
            v44 = MEMORY[0x1E69E9C10];
            v45 = "[ImageCaption] The junk filter has determined that this image might be sensitive. Don't caption this image.";
            v46 = 2;
            goto LABEL_59;
          }

          goto LABEL_47;
        }

        if (v32 == ++v34)
        {
          v32 = [obj countByEnumeratingWithState:&v57 objects:v67 count:16];
          v42 = 1;
          if (v32)
          {
            goto LABEL_29;
          }

          goto LABEL_48;
        }
      }

      if (MediaAnalysisLogLevel() >= 6 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
      {
        *buf = 134217984;
        v69 = v37;
        v44 = MEMORY[0x1E69E9C10];
        v45 = "[ImageCaption] This image looks to be of low quality (confidence: %f). Don't caption this image.";
        v46 = 12;
LABEL_59:
        _os_log_impl(&dword_1C9B70000, v44, OS_LOG_TYPE_INFO, v45, buf, v46);
      }

LABEL_47:

      v42 = 0;
LABEL_48:
      v31 = obj;
    }

    else
    {
      v42 = 1;
    }

    return (v42 & 1) == 0;
  }

  if (MediaAnalysisLogLevel() >= 6 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "[ImageCaption] This image is sensitive per SCML. Don't caption this image.", buf, 2u);
  }

  return 1;
}

- (int)analyzePixelBuffer:(__CVBuffer *)a3 flags:(unint64_t *)a4 results:(id *)a5 cancel:(id)a6
{
  v155[1] = *MEMORY[0x1E69E9840];
  v9 = a6;
  if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "[ImageCaption] Computing image caption with pixelBuffer", buf, 2u);
  }

  if (!v9 || !v9[2](v9))
  {
    if ([(VCPImageCaptionAnalyzer *)self containPotentialUnsafeContent:a3])
    {
      v154 = @"ImageCaptionResults";
      v151 = @"attributes";
      v149 = @"imageCaptionUnsafeContent";
      v11 = [MEMORY[0x1E696AD98] numberWithBool:1];
      v150 = v11;
      v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v150 forKeys:&v149 count:1];
      v152 = v12;
      v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v152 forKeys:&v151 count:1];
      v153 = v13;
      v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v153 count:1];
      v155[0] = v14;
      *a5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v155 forKeys:&v154 count:1];

      v10 = 0;
      goto LABEL_117;
    }

    modelType = self->_modelType;
    if ((modelType - 3) >= 3)
    {
      if (modelType != 2)
      {
        if (modelType == 1)
        {
          v116 = a5;
          *buf = 0;
          v22 = VCPSignPostLog();
          v23 = os_signpost_id_generate(v22);

          v24 = VCPSignPostLog();
          v25 = v24;
          v26 = v23 - 1;
          if (v23 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v24))
          {
            *v124 = 0;
            _os_signpost_emit_with_name_impl(&dword_1C9B70000, v25, OS_SIGNPOST_INTERVAL_BEGIN, v23, "VCPImageCaptionAnalyzer_AX_CVNLP_Inference", "", v124, 2u);
          }

          v27 = CVNLPCaptionCopyForCVPixelBuffer();
          v28 = [v27 objectForKeyedSubscript:*MEMORY[0x1E6991F90]];
          v29 = [v28 firstObject];

          if (!v29)
          {
            if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
            {
              *v124 = 0;
              _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[ImageCaption] No image caption result generated", v124, 2u);
            }

            v33 = 0;
            v31 = 0;
            goto LABEL_81;
          }

          spid = v23;
          v30 = [v29 objectForKeyedSubscript:*MEMORY[0x1E6991F98]];
          v31 = [v29 objectForKeyedSubscript:*MEMORY[0x1E6991FA8]];
          v32 = [v29 objectForKeyedSubscript:*MEMORY[0x1E6991FA0]];
          v114 = [v32 BOOLValue];

          v33 = [v27 objectForKeyedSubscript:*MEMORY[0x1E6991FB0]];
          v34 = VCPSignPostLog();
          v35 = v34;
          if (v26 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v34))
          {
            *v124 = 0;
            _os_signpost_emit_with_name_impl(&dword_1C9B70000, v35, OS_SIGNPOST_INTERVAL_END, spid, "VCPImageCaptionAnalyzer_AX_CVNLP_Inference", "", v124, 2u);
          }

LABEL_28:
          if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
          {
            v36 = self->_modelType;
            *buf = 134218498;
            *&buf[4] = v36;
            v143 = 2112;
            v144 = v30;
            v145 = 2112;
            v146 = v31;
            _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "[ImageCaption] image caption modelType:%lu, text:%@, score:%@", buf, 0x20u);
          }

          if (v30)
          {
            if (v31)
            {
              v140[0] = @"imageCaptionText";
              v140[1] = @"imageCaptionConfidence";
              v141[0] = v30;
              v141[1] = v31;
              v140[2] = @"imageCaptionUnsafeContent";
              v37 = [MEMORY[0x1E696AD98] numberWithBool:0];
              v141[2] = v37;
              v38 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v141 forKeys:v140 count:3];
              v39 = [v38 mutableCopy];

              v40 = self->_modelType;
              if ((v40 - 3) >= 3)
              {
                if (v40 == 2)
                {
                  v133 = @"ImageCaptionResults";
                  v130 = @"attributes";
                  v131 = v39;
                  v41 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v131 forKeys:&v130 count:1];
                  v132 = v41;
                  v42 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v132 count:1];
                  v134 = v42;
                  v43 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v134 forKeys:&v133 count:1];
                }

                else
                {
                  if (v40 != 1)
                  {
LABEL_138:

                    v10 = 0;
                    goto LABEL_116;
                  }

                  v86 = [MEMORY[0x1E696AD98] numberWithBool:v114];
                  [v39 setObject:v86 forKeyedSubscript:@"imageCaptionLowConfidence"];

                  [v39 setObject:v33 forKeyedSubscript:@"classificationIdentifiers"];
                  v138 = @"ImageCaptionResults";
                  v135 = @"attributes";
                  v136 = v39;
                  v41 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v136 forKeys:&v135 count:1];
                  v137 = v41;
                  v42 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v137 count:1];
                  v139 = v42;
                  v43 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v139 forKeys:&v138 count:1];
                }
              }

              else
              {
                v128 = @"MiCaImageCaptionResults";
                v125 = @"attributes";
                v126 = v39;
                v41 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v126 forKeys:&v125 count:1];
                v127 = v41;
                v42 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v127 count:1];
                v129 = v42;
                v43 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v129 forKeys:&v128 count:1];
              }

              *v116 = v43;

              goto LABEL_138;
            }

            if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
            {
              *buf = 0;
              _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[ImageCaption] No caption confidence score text generated", buf, 2u);
            }

            v31 = 0;
LABEL_90:
            v10 = -18;
LABEL_116:

            goto LABEL_117;
          }

          if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[ImageCaption] No caption text generated", buf, 2u);
          }

LABEL_81:
          v30 = 0;
          goto LABEL_90;
        }

        v21 = 0;
        v20 = 0;
        goto LABEL_52;
      }

      v116 = a5;
      rescaledImageBuffer = self->_rescaledImageBuffer;
      if (rescaledImageBuffer)
      {
        goto LABEL_46;
      }

      v52 = [(CSUImageCaptionerConfiguration *)self->_captionerConfig captioningEncoderConfiguration];
      v53 = [v52 inputPixelBufferDescriptor];

      v54 = [v53 width];
      v55 = [v53 height];
      LODWORD(v52) = [v53 pixelFormat];
      v56 = [v53 bytesPerRowAlignment];
      [v53 isIOSurfaceBacked];
      v57 = *MEMORY[0x1E6966020];
      v147[0] = *MEMORY[0x1E69660D8];
      v147[1] = v57;
      v148[0] = MEMORY[0x1E695E0F8];
      v58 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:v56];
      v148[1] = v58;
      v59 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v148 forKeys:v147 count:2];

      if (CVPixelBufferCreate(0, v54, v55, v52, v59, &self->_rescaledImageBuffer))
      {
        v60 = self->_rescaledImageBuffer;
        if (v60)
        {
          CFRelease(v60);
          self->_rescaledImageBuffer = 0;
        }
      }

      rescaledImageBuffer = self->_rescaledImageBuffer;
      if (rescaledImageBuffer)
      {
LABEL_46:
        imageCaptioner = self->_imageCaptioner;
        v123 = 0;
        [(CSUImageCaptioner *)imageCaptioner resampleImage:a3 intoInputImage:rescaledImageBuffer error:&v123];
        v62 = v123;
        if (v62)
        {
          v21 = v62;
          if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            v63 = [v21 description];
            v64 = v63;
            v65 = [v63 UTF8String];
            *buf = 136315138;
            *&buf[4] = v65;
            _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[ImageCaption] Failed to resample input pixelBuffer: (%s)", buf, 0xCu);
          }

          v20 = 0;
          goto LABEL_96;
        }

        if (v9 && (v9[2](v9) & 1) != 0)
        {
LABEL_17:
          v20 = 0;
          v21 = 0;
          v10 = -128;
LABEL_115:

          v33 = 0;
          v31 = 0;
          v30 = 0;
          goto LABEL_116;
        }

        v79 = VCPSignPostLog();
        v80 = os_signpost_id_generate(v79);

        v81 = VCPSignPostLog();
        v82 = v81;
        if (v80 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v81))
        {
          *buf = 0;
          _os_signpost_emit_with_name_impl(&dword_1C9B70000, v82, OS_SIGNPOST_INTERVAL_BEGIN, v80, "VCPImageCaptionAnalyzer_AX_CSU_Inference", "", buf, 2u);
        }

        v83 = self->_imageCaptioner;
        v84 = self->_rescaledImageBuffer;
        v122 = 0;
        v20 = [(CSUImageCaptioner *)v83 computeCaptionForImage:v84 withDecodingMethod:1 error:&v122];
        v21 = v122;
        v85 = VCPSignPostLog();
        v50 = v85;
        if (v80 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v85))
        {
          *buf = 0;
          _os_signpost_emit_with_name_impl(&dword_1C9B70000, v50, OS_SIGNPOST_INTERVAL_END, v80, "VCPImageCaptionAnalyzer_AX_CSU_Inference", "", buf, 2u);
        }

LABEL_128:

        if (v20 && !v21)
        {
          v106 = [v20 results];
          if (v106)
          {
            v107 = [v20 results];
            v108 = [v107 count] == 0;

            if (!v108)
            {
              v109 = [v20 results];
              v110 = [v109 objectAtIndexedSubscript:0];
              v30 = [v110 caption];

              v111 = MEMORY[0x1E696AD98];
              v112 = [v20 results];
              v113 = [v112 objectAtIndexedSubscript:0];
              [v113 score];
              v31 = [v111 numberWithFloat:?];

              v33 = 0;
              v114 = 0;
              goto LABEL_28;
            }
          }

          if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[ImageCaption] [ERROR] CSUCaptionResults has no results", buf, 2u);
          }

          goto LABEL_95;
        }

LABEL_52:
        if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          v66 = [v21 description];
          v67 = v66;
          v68 = [v66 UTF8String];
          *buf = 136315138;
          *&buf[4] = v68;
          _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[ImageCaption] Failed to generate CSUCaptionResults: (%s)", buf, 0xCu);
        }

        goto LABEL_96;
      }

      if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        v69 = MEMORY[0x1E69E9C10];
        v70 = "[ImageCaption] Failed to create rescaledImageBuffer";
        goto LABEL_58;
      }
    }

    else
    {
      if (!self->_imageBackboneAnalyzer)
      {
        v16 = [VCPImageBackboneAnalyzer alloc];
        v17 = [MEMORY[0x1E696AD98] numberWithInteger:self->_backboneRevision];
        v18 = [(VCPImageBackboneAnalyzer *)v16 initWithRequestedAnalyses:0x1000000000000 andRevision:v17 useSharedModel:self->_useSharedModel];
        imageBackboneAnalyzer = self->_imageBackboneAnalyzer;
        self->_imageBackboneAnalyzer = v18;
      }

      if (v9 && (v9[2](v9) & 1) != 0)
      {
        goto LABEL_17;
      }

      if (self->_imageBackboneAnalyzer)
      {
        v116 = a5;
        v44 = VCPSignPostLog();
        v45 = os_signpost_id_generate(v44);

        v46 = VCPSignPostLog();
        v47 = v46;
        if (v45 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v46))
        {
          *buf = 0;
          _os_signpost_emit_with_name_impl(&dword_1C9B70000, v47, OS_SIGNPOST_INTERVAL_BEGIN, v45, "VCPImageCaptionAnalyzer_MiCa_EmbeddingInference", "", buf, 2u);
        }

        v48 = self->_imageBackboneAnalyzer;
        v121 = 0;
        v10 = [(VCPImageBackboneAnalyzer *)v48 analyzePixelBuffer:a3 flags:0 results:&v121 cancel:v9];
        v49 = v121;
        v50 = v49;
        if (v10)
        {

LABEL_114:
          v20 = 0;
          v21 = 0;
          goto LABEL_115;
        }

        v71 = [(VCPImageBackboneAnalyzer *)self->_imageBackboneAnalyzer spatialEmbedding];
        v72 = VCPSignPostLog();
        v73 = v72;
        if (v45 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v72))
        {
          *buf = 0;
          _os_signpost_emit_with_name_impl(&dword_1C9B70000, v73, OS_SIGNPOST_INTERVAL_END, v45, "VCPImageCaptionAnalyzer_MiCa_EmbeddingInference", "", buf, 2u);
        }

        if (!v71)
        {
          if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[ImageCaption] Image embedding for caption generation is nil", buf, 2u);
          }

          v10 = -18;
          goto LABEL_113;
        }

        if ([objc_opt_class() writeSpatialEmbeddingToFile])
        {
          v74 = [MEMORY[0x1E696AC08] defaultManager];
          v75 = [MEMORY[0x1E695DFF8] fileURLWithPath:@"/tmp/com.apple.mediaanalysisd/" isDirectory:1];
          v76 = [v75 path];
          v77 = [v74 fileExistsAtPath:v76];

          if (v77)
          {
            v78 = 0;
          }

          else
          {
            v87 = [v75 path];
            v120 = 0;
            v88 = [v74 createDirectoryAtPath:v87 withIntermediateDirectories:1 attributes:0 error:&v120];
            v78 = v120;

            if ((v88 & 1) == 0)
            {
              v89 = [v78 localizedDescription];
              NSLog(&cfstr_ImagecaptionFa.isa, v75, v89);
            }
          }

          v90 = [v75 URLByAppendingPathComponent:@"imageSpatialEmbedding.dat" isDirectory:0];

          v119 = v78;
          v91 = [v71 writeToURL:v90 options:1 error:&v119];
          v92 = v119;

          if (v91)
          {
            if (MediaAnalysisLogLevel() >= 6 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
            {
              *buf = 138412290;
              *&buf[4] = v90;
              _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "[ImageCaption] Image spatial embedding successfully saved to %@", buf, 0xCu);
            }
          }

          else if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            v93 = [v92 localizedDescription];
            *buf = 138412546;
            *&buf[4] = v90;
            v143 = 2112;
            v144 = v93;
            _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[ImageCaption] Failed to save image spatial embedding to %@ with error: %@", buf, 0x16u);
          }
        }

        if (v9 && (v9[2](v9) & 1) != 0)
        {
          v10 = -128;
LABEL_113:

          goto LABEL_114;
        }

        v95 = objc_autoreleasePoolPush();
        v96 = VCPSignPostLog();
        v97 = os_signpost_id_generate(v96);

        v98 = VCPSignPostLog();
        v99 = v98;
        if (v97 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v98))
        {
          *buf = 0;
          _os_signpost_emit_with_name_impl(&dword_1C9B70000, v99, OS_SIGNPOST_INTERVAL_BEGIN, v97, "VCPImageCaptionAnalyzer_MiCa_CaptionInference", "", buf, 2u);
        }

        v100 = [objc_opt_class() greedySearchEnabled];
        v101 = self->_imageCaptioner;
        if (v100)
        {
          v117 = 0;
          v102 = &v117;
          v103 = [(CSUImageCaptioner *)v101 computeCaptionForEmbedding:v71 withDecodingMethod:0 error:&v117];
        }

        else
        {
          v118 = 0;
          v102 = &v118;
          v103 = [(CSUImageCaptioner *)v101 computeCaptionForEmbedding:v71 withDecodingMethod:1 error:&v118];
        }

        v20 = v103;
        v21 = *v102;
        v104 = VCPSignPostLog();
        v105 = v104;
        if (v97 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v104))
        {
          *buf = 0;
          _os_signpost_emit_with_name_impl(&dword_1C9B70000, v105, OS_SIGNPOST_INTERVAL_END, v97, "VCPImageCaptionAnalyzer_MiCa_CaptionInference", "", buf, 2u);
        }

        objc_autoreleasePoolPop(v95);
        goto LABEL_128;
      }

      if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        v69 = MEMORY[0x1E69E9C10];
        v70 = "[ImageCaption] Failed to init VCPImageBackboneAnalyzer";
LABEL_58:
        _os_log_impl(&dword_1C9B70000, v69, OS_LOG_TYPE_ERROR, v70, buf, 2u);
      }
    }

    v20 = 0;
LABEL_95:
    v21 = 0;
LABEL_96:
    v10 = -18;
    goto LABEL_115;
  }

  if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[ImageCaption] Image caption analysis cancelled", buf, 2u);
  }

  v10 = -128;
LABEL_117:

  return v10;
}

- (int)analyzeEmbedding:(id)a3 flags:(unint64_t *)a4 results:(id *)a5 cancel:(id)a6
{
  v63 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a6;
  if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "[ImageCaption] Computing MiCa image caption with embedding", buf, 2u);
  }

  if (v10 && v10[2](v10))
  {
    if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[ImageCaption] Image caption analysis cancelled", buf, 2u);
    }

    v11 = -128;
    goto LABEL_30;
  }

  if (!v9)
  {
    if (MediaAnalysisLogLevel() < 3 || !os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_29;
    }

    *buf = 0;
    v20 = MEMORY[0x1E69E9C10];
    v21 = "[ImageCaption] Image embedding for caption generation is nil";
LABEL_24:
    v22 = 2;
    goto LABEL_25;
  }

  if (self->_modelType != 3)
  {
    if (MediaAnalysisLogLevel() < 3 || !os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_29;
    }

    *buf = 0;
    v20 = MEMORY[0x1E69E9C10];
    v21 = "analyzeEmbedding only support MADImageCaptionModelType_Mica";
    goto LABEL_24;
  }

  if ([v9 length] != 374784)
  {
    if (MediaAnalysisLogLevel() < 3 || !os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_29;
    }

    v23 = [v9 length];
    *buf = 134218240;
    v58 = v23;
    v59 = 2048;
    v60 = 374784;
    v20 = MEMORY[0x1E69E9C10];
    v21 = "Embedding size mismatch (current embedding size in byte: %lu, expected size in byte with float: %lu) analyzeEmbedding only supports VCPMUBBRevision_V4 and VCPMUBBRevision_V5";
    v22 = 22;
LABEL_25:
    _os_log_impl(&dword_1C9B70000, v20, OS_LOG_TYPE_ERROR, v21, buf, v22);
LABEL_29:
    v11 = -18;
    goto LABEL_30;
  }

  context = objc_autoreleasePoolPush();
  v12 = VCPSignPostLog();
  v13 = os_signpost_id_generate(v12);

  v14 = VCPSignPostLog();
  v15 = v14;
  if (v13 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v14))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1C9B70000, v15, OS_SIGNPOST_INTERVAL_BEGIN, v13, "VCPImageCaptionAnalyzer_MiCa_CaptionInference", "", buf, 2u);
  }

  v16 = [objc_opt_class() greedySearchEnabled];
  imageCaptioner = self->_imageCaptioner;
  if (v16)
  {
    v48 = 0;
    v18 = &v48;
    v19 = [(CSUImageCaptioner *)imageCaptioner computeCaptionForEmbedding:v9 withDecodingMethod:0 error:&v48];
  }

  else
  {
    v49 = 0;
    v18 = &v49;
    v19 = [(CSUImageCaptioner *)imageCaptioner computeCaptionForEmbedding:v9 withDecodingMethod:1 error:&v49];
  }

  v25 = v19;
  v47 = *v18;
  v26 = VCPSignPostLog();
  v27 = v26;
  if (v13 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v26))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1C9B70000, v27, OS_SIGNPOST_INTERVAL_END, v13, "VCPImageCaptionAnalyzer_MiCa_CaptionInference", "", buf, 2u);
  }

  if (!v25 || v47)
  {
    if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v39 = [v47 description];
      v40 = v39;
      v41 = [v39 UTF8String];
      *buf = 136315138;
      v58 = v41;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[ERROR] Failed to generate CSUCaptionResults: (%s)", buf, 0xCu);
    }

    goto LABEL_46;
  }

  v28 = [v25 results];
  if (!v28 || ([v25 results], v29 = objc_claimAutoreleasedReturnValue(), v30 = objc_msgSend(v29, "count") == 0, v29, v28, v30))
  {
    if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[ERROR] CSUCaptionResults has no results", buf, 2u);
    }

LABEL_46:
    v37 = 0;
    v33 = 0;
    v38 = 0;
    goto LABEL_47;
  }

  v31 = [v25 results];
  v32 = [v31 objectAtIndexedSubscript:0];
  v33 = [v32 caption];

  v34 = MEMORY[0x1E696AD98];
  v35 = [v25 results];
  v36 = [v35 objectAtIndexedSubscript:0];
  [v36 score];
  v37 = [v34 numberWithFloat:?];

  v38 = 1;
LABEL_47:

  objc_autoreleasePoolPop(context);
  if (v38)
  {
    if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
    {
      modelType = self->_modelType;
      *buf = 134218498;
      v58 = modelType;
      v59 = 2112;
      v60 = v33;
      v61 = 2112;
      v62 = v37;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "[ImageCaption] image caption modelType:%lu, text:%@, score:%@", buf, 0x20u);
    }

    v55 = @"MiCaImageCaptionResults";
    v52 = @"attributes";
    v50[0] = @"imageCaptionText";
    v50[1] = @"imageCaptionConfidence";
    v51[0] = v33;
    v51[1] = v37;
    v50[2] = @"imageCaptionUnsafeContent";
    v51[2] = MEMORY[0x1E695E110];
    v43 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v51 forKeys:v50 count:3];
    v53 = v43;
    v44 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v53 forKeys:&v52 count:1];
    v54 = v44;
    v45 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v54 count:1];
    v56 = v45;
    *a5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v56 forKeys:&v55 count:1];

    v11 = 0;
  }

  else
  {
    v11 = -18;
  }

LABEL_30:
  return v11;
}

@end