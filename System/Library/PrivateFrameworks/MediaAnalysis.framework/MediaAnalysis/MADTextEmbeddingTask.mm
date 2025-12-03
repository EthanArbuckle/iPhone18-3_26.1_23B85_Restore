@interface MADTextEmbeddingTask
+ (BOOL)prewarmRequest:(id)request error:(id *)error;
- (BOOL)processInput:(id)input resource:(id)resource result:(id *)result error:(id *)error;
- (id)embeddingFromMultiArray:(id)array version:(unint64_t)version;
- (int)run;
@end

@implementation MADTextEmbeddingTask

+ (BOOL)prewarmRequest:(id)request error:(id *)error
{
  v77[1] = *MEMORY[0x1E69E9840];
  requestCopy = request;
  v6 = +[MADTextEmbeddingResource sharedResource:extendedContextLength:](MADTextEmbeddingResource, "sharedResource:extendedContextLength:", [requestCopy version], objc_msgSend(requestCopy, "extendedContextLength"));
  v7 = +[VCPMADResourceManager sharedManager];
  v8 = [v7 activateResource:v6];

  if (MediaAnalysisLogLevel() >= 6 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
  {
    [requestCopy version];
    v9 = MADUnifiedEmbeddingVersionToString();
    *buf = 138412290;
    v73 = v9;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "Prewarming text encoder (%@)", buf, 0xCu);
  }

  v10 = VCPSignPostLog();
  v11 = os_signpost_id_generate(v10);

  v12 = VCPSignPostLog();
  v13 = v12;
  if (v11 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v12))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1C9B70000, v13, OS_SIGNPOST_INTERVAL_BEGIN, v11, "MADSharedTextEncoder_loadResources", "", buf, 2u);
  }

  v14 = mach_continuous_time();
  textEncoder = [v6 textEncoder];
  if (!textEncoder)
  {
    v27 = 0;
LABEL_27:
    if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v34 = [v27 description];
      *buf = 138412290;
      v73 = v34;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Failed to prewarm text encoder (%@)", buf, 0xCu);
    }

    if (error)
    {
      v28 = MEMORY[0x1E696ABC0];
      v29 = *MEMORY[0x1E696A768];
      v76 = *MEMORY[0x1E696A578];
      v30 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to prewarm text encoder"];
      v77[0] = v30;
      v31 = MEMORY[0x1E695DF20];
      v32 = v77;
      v33 = &v76;
      goto LABEL_32;
    }

LABEL_44:
    v36 = 0;
    goto LABEL_65;
  }

  v16 = textEncoder;
  v17 = v8;
  textEncoder2 = [v6 textEncoder];
  v65 = 0;
  v19 = [textEncoder2 loadResources:&v65];
  v64 = v65;

  if ((v19 & 1) == 0)
  {
    v8 = v17;
    v27 = v64;
    goto LABEL_27;
  }

  v20 = VCPSignPostLog();
  v21 = v20;
  if (v11 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v20))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1C9B70000, v21, OS_SIGNPOST_INTERVAL_END, v11, "MADSharedTextEncoder_loadResources", "", buf, 2u);
  }

  v22 = VCPSignPostPersistentLog();
  v23 = VCPSignPostPersistentLog();
  v24 = os_signpost_id_generate(v23);

  v8 = v17;
  if (v24 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v22))
  {
    *buf = 134349314;
    v73 = v14;
    v74 = 2082;
    v75 = "LoadTextEncoder";
    _os_signpost_emit_with_name_impl(&dword_1C9B70000, v22, OS_SIGNPOST_EVENT, v24, "TextEmbeddingGeneration", "%{public, signpost.description:begin_time}llu Component=%{public, signpost.telemetry:string1}s  enableTelemetry=YES ", buf, 0x16u);
  }

  if (![requestCopy computeThreshold])
  {
    goto LABEL_75;
  }

  if (MediaAnalysisLogLevel() >= 6 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "Prewarming text embedding calibration", buf, 2u);
  }

  calibration = [v6 calibration];
  loadResources = [calibration loadResources];

  if (!loadResources)
  {
LABEL_75:
    if ([requestCopy computeSafety])
    {
      if (MediaAnalysisLogLevel() >= 6 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "Prewarming text embedding safety", buf, 2u);
      }

      v37 = mach_continuous_time();
      safety = [v6 safety];
      loadResources2 = [safety loadResources];

      if (loadResources2)
      {
        if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Failed to prewarm text embedding safety", buf, 2u);
        }

        v27 = v64;
        if (error)
        {
          v28 = MEMORY[0x1E696ABC0];
          v29 = *MEMORY[0x1E696A768];
          v68 = *MEMORY[0x1E696A578];
          v30 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to prewarm text embedding safety"];
          v69 = v30;
          v31 = MEMORY[0x1E695DF20];
          v32 = &v69;
          v33 = &v68;
          goto LABEL_32;
        }

        goto LABEL_44;
      }

      v40 = VCPSignPostPersistentLog();
      v41 = VCPSignPostPersistentLog();
      v42 = os_signpost_id_generate(v41);

      if (v42 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v40))
      {
        *buf = 134349314;
        v73 = v37;
        v74 = 2082;
        v75 = "LoadSafety";
        _os_signpost_emit_with_name_impl(&dword_1C9B70000, v40, OS_SIGNPOST_EVENT, v42, "TextEmbeddingGeneration", "%{public, signpost.description:begin_time}llu Component=%{public, signpost.telemetry:string1}s  enableTelemetry=YES ", buf, 0x16u);
      }
    }

    [v17 reset];
    if (![requestCopy calibrate] || objc_msgSend(requestCopy, "version") != 3)
    {
      v36 = 1;
      v27 = v64;
      goto LABEL_65;
    }

    if (MediaAnalysisLogLevel() >= 6 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "Prewarming legacy text embedding calibration (MD3)", buf, 2u);
    }

    v30 = +[MADTextEmbeddingCalibrationResource sharedResource];
    v43 = +[VCPMADResourceManager sharedManager];
    v35 = [v43 activateResource:v30];

    v44 = VCPSignPostLog();
    v45 = os_signpost_id_generate(v44);

    v46 = VCPSignPostLog();
    v47 = v46;
    v48 = v45 - 1;
    if (v45 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v46))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1C9B70000, v47, OS_SIGNPOST_INTERVAL_BEGIN, v45, "MADTextEmbeddingCalibration_loadResources", "", buf, 2u);
    }

    spid = v45;

    v49 = mach_continuous_time();
    instance = [v30 instance];
    loadResources3 = [instance loadResources];

    if (loadResources3)
    {
      if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Failed to prewarm legacy text embedding calibration", buf, 2u);
      }

      if (error)
      {
        v52 = MEMORY[0x1E696ABC0];
        v53 = *MEMORY[0x1E696A768];
        v66 = *MEMORY[0x1E696A578];
        v54 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to prewarm legacy text embedding calibration"];
        v67 = v54;
        v55 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v67 forKeys:&v66 count:1];
        *error = [v52 errorWithDomain:v53 code:-50 userInfo:v55];
      }

      v36 = 0;
      v8 = v17;
      v27 = v64;
    }

    else
    {
      v62 = v49;
      v57 = VCPSignPostLog();
      v58 = v57;
      v8 = v17;
      if (v48 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v57))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_1C9B70000, v58, OS_SIGNPOST_INTERVAL_END, spid, "MADTextEmbeddingCalibration_loadResources", "", buf, 2u);
      }

      v59 = VCPSignPostPersistentLog();
      v60 = VCPSignPostPersistentLog();
      v61 = os_signpost_id_generate(v60);

      v27 = v64;
      if (v61 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v59))
      {
        *buf = 134349314;
        v73 = v62;
        v74 = 2082;
        v75 = "LoadCalibration";
        _os_signpost_emit_with_name_impl(&dword_1C9B70000, v59, OS_SIGNPOST_EVENT, v61, "TextEmbeddingGeneration", "%{public, signpost.description:begin_time}llu Component=%{public, signpost.telemetry:string1}s  enableTelemetry=YES ", buf, 0x16u);
      }

      [v35 reset];
      v36 = 1;
    }

    goto LABEL_33;
  }

  if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Failed to prewarm text embedding calibration", buf, 2u);
  }

  v27 = v64;
  if (!error)
  {
    goto LABEL_44;
  }

  v28 = MEMORY[0x1E696ABC0];
  v29 = *MEMORY[0x1E696A768];
  v70 = *MEMORY[0x1E696A578];
  v30 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to prewarm text embedding calibration"];
  v71 = v30;
  v31 = MEMORY[0x1E695DF20];
  v32 = &v71;
  v33 = &v70;
LABEL_32:
  v35 = [v31 dictionaryWithObjects:v32 forKeys:v33 count:1];
  [v28 errorWithDomain:v29 code:-50 userInfo:v35];
  *error = v36 = 0;
LABEL_33:

LABEL_65:
  return v36;
}

- (id)embeddingFromMultiArray:(id)array version:(unint64_t)version
{
  v21 = *MEMORY[0x1E69E9840];
  arrayCopy = array;
  dataType = [arrayCopy dataType];
  if (dataType == 65552)
  {
    v7 = 1;
    v8 = 1;
    goto LABEL_5;
  }

  if (dataType == 65568)
  {
    v7 = 0;
    v8 = 2;
LABEL_5:
    *buf = 0;
    v16 = buf;
    v17 = 0x3032000000;
    v18 = __Block_byref_object_copy__34;
    v19 = __Block_byref_object_dispose__34;
    v20 = 0;
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __56__MADTextEmbeddingTask_embeddingFromMultiArray_version___block_invoke;
    v14[3] = &unk_1E834D378;
    v14[4] = buf;
    [arrayCopy getBytesWithHandler:v14];
    if (version - 1 <= 1)
    {
      v9 = MediaAnalysisApplyL2Norm(*(v16 + 5), v7);
      v10 = *(v16 + 5);
      *(v16 + 5) = v9;
    }

    v11 = objc_alloc(MEMORY[0x1E69AE300]);
    v12 = [v11 initWithVersion:version data:*(v16 + 5) type:v8];
    _Block_object_dispose(buf, 8);

    goto LABEL_12;
  }

  if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    *buf = 67109120;
    *&buf[4] = [arrayCopy dataType];
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Unsupported embedding data type (%d)", buf, 8u);
  }

  v12 = 0;
LABEL_12:

  return v12;
}

void __56__MADTextEmbeddingTask_embeddingFromMultiArray_version___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = [MEMORY[0x1E695DEF0] dataWithBytes:a2 length:a3];
  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;
}

- (BOOL)processInput:(id)input resource:(id)resource result:(id *)result error:(id *)error
{
  v186 = *MEMORY[0x1E69E9840];
  inputCopy = input;
  resourceCopy = resource;
  array = [MEMORY[0x1E695DF70] array];
  v166 = 0u;
  v167 = 0u;
  v168 = 0u;
  v169 = 0u;
  v148 = inputCopy;
  segments = [inputCopy segments];
  v10 = [segments countByEnumeratingWithState:&v166 objects:v185 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v167;
    v150 = *v167;
    v152 = segments;
    while (2)
    {
      v13 = 0;
      v154 = v11;
      do
      {
        if (*v167 != v12)
        {
          objc_enumerationMutation(segments);
        }

        v14 = *(*(&v166 + 1) + 8 * v13);
        v15 = objc_autoreleasePoolPush();
        if ([v14 type] == 1)
        {
          v16 = objc_alloc_init(MEMORY[0x1E6999158]);
          text = [v14 text];
          [v16 setString:text];

          [array addObject:v16];
        }

        else
        {
          context = v15;
          if ([v14 type] != 3)
          {
            v54 = MEMORY[0x1E696ABC0];
            v55 = *MEMORY[0x1E696A768];
            v182 = *MEMORY[0x1E696A578];
            v56 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unsupported text input segment type (%d)", objc_msgSend(v14, "type")];
            v183 = v56;
            v57 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v183 forKeys:&v182 count:1];
            v58 = [v54 errorWithDomain:v55 code:-18 userInfo:v57];

            if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
            {
              v59 = [v58 description];
              *buf = 138412290;
              v177 = v59;
              _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
            }

            v29 = resourceCopy;
            if (error)
            {
              objc_storeStrong(error, v58);
            }

            objc_autoreleasePoolPop(context);
            v53 = 0;
            goto LABEL_112;
          }

          v16 = v14;
          v162 = 0u;
          v163 = 0u;
          v164 = 0u;
          v165 = 0u;
          tokenIDs = [v16 tokenIDs];
          v19 = [tokenIDs countByEnumeratingWithState:&v162 objects:v184 count:16];
          if (v19)
          {
            v20 = v19;
            v21 = *v163;
            do
            {
              for (i = 0; i != v20; ++i)
              {
                if (*v163 != v21)
                {
                  objc_enumerationMutation(tokenIDs);
                }

                v23 = *(*(&v162 + 1) + 8 * i);
                v24 = objc_alloc_init(MEMORY[0x1E6999178]);
                [v24 setTokenID:v23];
                [array addObject:v24];
              }

              v20 = [tokenIDs countByEnumeratingWithState:&v162 objects:v184 count:16];
            }

            while (v20);
          }

          v12 = v150;
          segments = v152;
          v11 = v154;
          v15 = context;
        }

        objc_autoreleasePoolPop(v15);
        ++v13;
      }

      while (v13 != v11);
      v11 = [segments countByEnumeratingWithState:&v166 objects:v185 count:16];
      if (v11)
      {
        continue;
      }

      break;
    }
  }

  v25 = MADRemoveBackgroundCachedMaskState;
  v26 = +[VCPMADResourceManager sharedManager];
  v27 = [v26 activateResource:resourceCopy];

  if (MediaAnalysisLogLevel() >= 6 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "Executing text encoder", buf, 2u);
  }

  v161 = 0;
  v28 = mach_continuous_time();
  v29 = resourceCopy;
  textEncoder = [resourceCopy textEncoder];
  v160 = 0;
  v31 = [textEncoder runOnInput:array output:&v161 error:&v160];
  v32 = v160;

  if ((v31 & 1) == 0)
  {
    v60 = MEMORY[0x1E696ABC0];
    v61 = *MEMORY[0x1E696A768];
    v180 = *MEMORY[0x1E696A578];
    v62 = MEMORY[0x1E696AEC0];
    v63 = [v32 description];
    v64 = [v62 stringWithFormat:@"Text encoding failed (%@)", v63];
    v181 = v64;
    v65 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v181 forKeys:&v180 count:1];
    request = [v60 errorWithDomain:v61 code:-18 userInfo:v65];

    if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v66 = [request description];
      *buf = 138412290;
      v177 = v66;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
    }

    if (error)
    {
      objc_storeStrong(error, request);
    }

    v53 = 0;
    segments = v32;
    v29 = resourceCopy;
    goto LABEL_111;
  }

  v153 = v32;
  v33 = VCPSignPostPersistentLog();
  v34 = VCPSignPostPersistentLog();
  v35 = os_signpost_id_generate(v34);

  if (v35 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v33))
  {
    *buf = 134349314;
    v177 = v28;
    v178 = 2082;
    v179 = "ExecuteTextEncoder";
    _os_signpost_emit_with_name_impl(&dword_1C9B70000, v33, OS_SIGNPOST_EVENT, v35, "TextEmbeddingGeneration", "%{public, signpost.description:begin_time}llu Component=%{public, signpost.telemetry:string1}s  enableTelemetry=YES ", buf, 0x16u);
  }

  request = [(MADServiceTextProcessingSubtask *)self request];
  resultCopy4 = result;
  contexta = v27;
  if ([request computeThreshold])
  {
    if (MediaAnalysisLogLevel() >= 6 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "Performing text embedding calibration", buf, 2u);
    }

    v159 = 0;
    v158 = 0;
    v38 = VCPSignPostLog();
    v39 = os_signpost_id_generate(v38);

    v40 = VCPSignPostLog();
    v41 = v40;
    if (v39 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v40))
    {
      signpostPayload = [(MADServiceTextProcessingSubtask *)self signpostPayload];
      *buf = 138412290;
      v177 = signpostPayload;
      _os_signpost_emit_with_name_impl(&dword_1C9B70000, v41, OS_SIGNPOST_INTERVAL_BEGIN, v39, "MADTextEmbeddingThreshold", "%@", buf, 0xCu);
    }

    v43 = mach_continuous_time();
    calibration = [resourceCopy calibration];
    v45 = [calibration processEmbedding:v161 bias:&v159 + 4 scale:&v159 threshold:&v158];

    if (v45)
    {
      v46 = MEMORY[0x1E696ABC0];
      v47 = *MEMORY[0x1E696A768];
      v48 = v45;
      v174 = *MEMORY[0x1E696A578];
      v49 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Text embedding threshold calibration failed"];
      v175 = v49;
      v50 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v175 forKeys:&v174 count:1];
      v51 = [v46 errorWithDomain:v47 code:v48 userInfo:v50];

      if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v52 = [v51 description];
        *buf = 138412290;
        v177 = v52;
        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
      }

      v27 = contexta;
      if (error)
      {
        objc_storeStrong(error, v51);
      }

      v53 = 0;
      goto LABEL_110;
    }

    v70 = VCPSignPostLog();
    v71 = v70;
    if (v39 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v70))
    {
      signpostPayload2 = [(MADServiceTextProcessingSubtask *)self signpostPayload];
      *buf = 138412290;
      v177 = signpostPayload2;
      _os_signpost_emit_with_name_impl(&dword_1C9B70000, v71, OS_SIGNPOST_INTERVAL_END, v39, "MADTextEmbeddingThreshold", "%@", buf, 0xCu);
    }

    v73 = VCPSignPostPersistentLog();
    v74 = VCPSignPostPersistentLog();
    v75 = os_signpost_id_generate(v74);

    v27 = contexta;
    if (v75 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v73))
    {
      *buf = 134349314;
      v177 = v43;
      v178 = 2082;
      v179 = "ExecuteThreshold";
      _os_signpost_emit_with_name_impl(&dword_1C9B70000, v73, OS_SIGNPOST_EVENT, v75, "TextEmbeddingGeneration", "%{public, signpost.description:begin_time}llu Component=%{public, signpost.telemetry:string1}s  enableTelemetry=YES ", buf, 0x16u);
    }

    v69 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(resourceCopy, "calibrationVersion")}];
    LODWORD(v76) = HIDWORD(v159);
    v68 = [MEMORY[0x1E696AD98] numberWithFloat:v76];
    LODWORD(v77) = v159;
    v67 = [MEMORY[0x1E696AD98] numberWithFloat:v77];
    LODWORD(v78) = v158;
    v151 = [MEMORY[0x1E696AD98] numberWithFloat:v78];
    resultCopy4 = result;
    v25 = MADRemoveBackgroundCachedMaskState;
  }

  else
  {
    v151 = 0;
    v67 = 0;
    v68 = 0;
    v69 = 0;
  }

  if ([request computeSafety])
  {
    if (MediaAnalysisLogLevel() >= 6 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "Computing text embedding safety score", buf, 2u);
    }

    v142 = v68;
    HIDWORD(v159) = 0;
    LOBYTE(v159) = 0;
    v79 = VCPSignPostLog();
    v80 = os_signpost_id_generate(v79);

    v81 = VCPSignPostLog();
    v82 = v81;
    if (v80 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v81))
    {
      signpostPayload3 = [(MADServiceTextProcessingSubtask *)self signpostPayload];
      *buf = 138412290;
      v177 = signpostPayload3;
      _os_signpost_emit_with_name_impl(&dword_1C9B70000, v82, OS_SIGNPOST_INTERVAL_BEGIN, v80, "MADTextEmbeddingSafety", "%@", buf, 0xCu);
    }

    v84 = mach_continuous_time();
    safety = [resourceCopy safety];
    v86 = [safety processEmbedding:v161 safetyScore:&v159 + 4 isSafe:&v159];

    if (v86)
    {
      v144 = v69;
      v87 = MEMORY[0x1E696ABC0];
      v88 = *MEMORY[0x1E696A768];
      v89 = v86;
      v172 = *MEMORY[0x1E696A578];
      v90 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Text embedding safety failed"];
      v173 = v90;
      v91 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v173 forKeys:&v172 count:1];
      v92 = [v87 errorWithDomain:v88 code:v89 userInfo:v91];

      if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v93 = [v92 description];
        *buf = 138412290;
        v177 = v93;
        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
      }

      v27 = contexta;
      if (error)
      {
        objc_storeStrong(error, v92);
      }

      v53 = 0;
      v68 = v142;
      goto LABEL_109;
    }

    v95 = VCPSignPostLog();
    v96 = v95;
    if (v80 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v95))
    {
      signpostPayload4 = [(MADServiceTextProcessingSubtask *)self signpostPayload];
      *buf = 138412290;
      v177 = signpostPayload4;
      _os_signpost_emit_with_name_impl(&dword_1C9B70000, v96, OS_SIGNPOST_INTERVAL_END, v80, "MADTextEmbeddingSafety", "%@", buf, 0xCu);
    }

    v98 = VCPSignPostPersistentLog();
    v99 = VCPSignPostPersistentLog();
    v100 = os_signpost_id_generate(v99);

    if (v100 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v98))
    {
      *buf = 134349314;
      v177 = v84;
      v178 = 2082;
      v179 = "ExecuteSafety";
      _os_signpost_emit_with_name_impl(&dword_1C9B70000, v98, OS_SIGNPOST_EVENT, v100, "TextEmbeddingGeneration", "%{public, signpost.description:begin_time}llu Component=%{public, signpost.telemetry:string1}s  enableTelemetry=YES ", buf, 0x16u);
    }

    v155 = request;

    LODWORD(v101) = HIDWORD(v159);
    v140 = [MEMORY[0x1E696AD98] numberWithFloat:v101];
    v94 = [MEMORY[0x1E696AD98] numberWithBool:v159];
    v27 = contexta;
    resultCopy4 = result;
    v68 = v142;
    v25 = MADRemoveBackgroundCachedMaskState;
  }

  else
  {
    v155 = request;
    v94 = 0;
    v140 = 0;
  }

  [v27 reset];
  if ([v155 calibrate])
  {
    v141 = v67;
    if (MediaAnalysisLogLevel() >= 6 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "Performing legacy text embedding calibration", buf, 2u);
    }

    v143 = v68;
    v102 = +[MADTextEmbeddingCalibrationResource sharedResource];
    sharedManager = [&v25[38] sharedManager];
    v104 = [sharedManager activateResource:v102];

    v159 = 0;
    v105 = VCPSignPostLog();
    v106 = os_signpost_id_generate(v105);

    v107 = VCPSignPostLog();
    v108 = v107;
    if (v106 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v107))
    {
      signpostPayload5 = [(MADServiceTextProcessingSubtask *)self signpostPayload];
      *buf = 138412290;
      v177 = signpostPayload5;
      _os_signpost_emit_with_name_impl(&dword_1C9B70000, v108, OS_SIGNPOST_INTERVAL_BEGIN, v106, "MADTextEmbeddingCalibration", "%@", buf, 0xCu);
    }

    v144 = v69;

    v110 = mach_continuous_time();
    v139 = v102;
    instance = [v102 instance];
    v112 = [instance processEmbedding:v161 mean:&v159 + 4 standardDeviation:&v159];

    if (v112)
    {
      v113 = v104;
      v114 = MEMORY[0x1E696ABC0];
      v115 = *MEMORY[0x1E696A768];
      v116 = v112;
      v170 = *MEMORY[0x1E696A578];
      v117 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Text embedding calibration failed"];
      v171 = v117;
      v118 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v171 forKeys:&v170 count:1];
      v119 = [v114 errorWithDomain:v115 code:v116 userInfo:v118];

      if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v120 = [v119 description];
        *buf = 138412290;
        v177 = v120;
        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
      }

      v27 = contexta;
      if (error)
      {
        objc_storeStrong(error, v119);
      }

      v121 = 0;
      v122 = 0;
      v53 = 0;
      v67 = v141;
      v68 = v143;
      goto LABEL_107;
    }

    v123 = VCPSignPostLog();
    v124 = v123;
    if (v106 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v123))
    {
      signpostPayload6 = [(MADServiceTextProcessingSubtask *)self signpostPayload];
      *buf = 138412290;
      v177 = signpostPayload6;
      _os_signpost_emit_with_name_impl(&dword_1C9B70000, v124, OS_SIGNPOST_INTERVAL_END, v106, "MADTextEmbeddingCalibration", "%@", buf, 0xCu);
    }

    v126 = VCPSignPostPersistentLog();
    v127 = VCPSignPostPersistentLog();
    v128 = os_signpost_id_generate(v127);

    if (v128 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v126))
    {
      *buf = 134349314;
      v177 = v110;
      v178 = 2082;
      v179 = "ExecuteCalibration";
      _os_signpost_emit_with_name_impl(&dword_1C9B70000, v126, OS_SIGNPOST_EVENT, v128, "TextEmbeddingGeneration", "%{public, signpost.description:begin_time}llu Component=%{public, signpost.telemetry:string1}s  enableTelemetry=YES ", buf, 0x16u);
    }

    [v104 reset];
    LODWORD(v129) = HIDWORD(v159);
    v122 = [MEMORY[0x1E696AD98] numberWithFloat:v129];
    LODWORD(v130) = v159;
    v131 = [MEMORY[0x1E696AD98] numberWithFloat:v130];
    v132 = v104;
    v121 = v131;

    v69 = &unk_1F49BC250;
    v27 = contexta;
    resultCopy4 = result;
    v68 = v143;
  }

  else
  {
    v121 = 0;
    v122 = 0;
  }

  v133 = objc_alloc(MEMORY[0x1E69AE3F0]);
  v144 = v69;
  v134 = [v133 initWithEmbedding:v161 calibrationVersion:v69 mean:v122 standardDeviation:v121 bias:v68 scale:v67 threshold:v151];
  v135 = *resultCopy4;
  *resultCopy4 = v134;

  if (![v155 computeSafety])
  {
    v53 = 1;
LABEL_107:
    v137 = v140;
    goto LABEL_108;
  }

  v136 = *resultCopy4;
  v137 = v140;
  [v136 setSafetyScore:v140 isSafe:v94];
  v53 = 1;
LABEL_108:

  request = v155;
LABEL_109:

LABEL_110:
  segments = v153;
LABEL_111:

LABEL_112:
  return v53;
}

- (int)run
{
  v61[1] = *MEMORY[0x1E69E9840];
  if (MediaAnalysisLogLevel() >= 6 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "MADTextEmbeddingTask running...", buf, 2u);
  }

  v3 = mach_continuous_time();
  request = [(MADServiceTextProcessingSubtask *)self request];
  if ([request calibrate] && objc_msgSend(request, "version") != 3)
  {
    request2 = [(MADServiceTextProcessingSubtask *)self request];
    v30 = MEMORY[0x1E696ABC0];
    v31 = *MEMORY[0x1E696A768];
    v60 = *MEMORY[0x1E696A578];
    array = [MEMORY[0x1E696AEC0] stringWithFormat:@"Calibration only supported for MD3"];
    v61[0] = array;
    v32 = MEMORY[0x1E695DF20];
    v33 = v61;
    v34 = &v60;
LABEL_43:
    v35 = [v32 dictionaryWithObjects:v33 forKeys:v34 count:1];
    v36 = [v30 errorWithDomain:v31 code:-18 userInfo:v35];
    [request2 setError:v36];

    goto LABEL_44;
  }

  if ([request computeThreshold] && objc_msgSend(request, "version") != 3 && objc_msgSend(request, "version") != 4 && objc_msgSend(request, "version") != 5 && objc_msgSend(request, "version") != 7 && objc_msgSend(request, "version") != 8 && objc_msgSend(request, "version") != 9)
  {
    request2 = [(MADServiceTextProcessingSubtask *)self request];
    v30 = MEMORY[0x1E696ABC0];
    v31 = *MEMORY[0x1E696A768];
    v58 = *MEMORY[0x1E696A578];
    array = [MEMORY[0x1E696AEC0] stringWithFormat:@"Threshold calibration only supported for MD3-MD7"];
    v59 = array;
    v32 = MEMORY[0x1E695DF20];
    v33 = &v59;
    v34 = &v58;
    goto LABEL_43;
  }

  if ([request computeSafety] && objc_msgSend(request, "version") != 5 && objc_msgSend(request, "version") != 7 && objc_msgSend(request, "version") != 8 && objc_msgSend(request, "version") != 9)
  {
    request2 = [(MADServiceTextProcessingSubtask *)self request];
    v30 = MEMORY[0x1E696ABC0];
    v31 = *MEMORY[0x1E696A768];
    v56 = *MEMORY[0x1E696A578];
    array = [MEMORY[0x1E696AEC0] stringWithFormat:@"Safety only supported for MD5-MD7"];
    v57 = array;
    v32 = MEMORY[0x1E695DF20];
    v33 = &v57;
    v34 = &v56;
    goto LABEL_43;
  }

  v39 = v3;
  v40 = request;
  request2 = +[MADTextEmbeddingResource sharedResource:extendedContextLength:](MADTextEmbeddingResource, "sharedResource:extendedContextLength:", [request version], objc_msgSend(request, "extendedContextLength"));
  isTextEncoderWarm = [request2 isTextEncoderWarm];
  array = [MEMORY[0x1E695DF70] array];
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  asset = [(MADServiceTextProcessingSubtask *)self asset];
  textInputs = [asset textInputs];

  v9 = [textInputs countByEnumeratingWithState:&v42 objects:v55 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v43;
    while (2)
    {
      v12 = 0;
      do
      {
        if (*v43 != v11)
        {
          objc_enumerationMutation(textInputs);
        }

        v13 = *(*(&v42 + 1) + 8 * v12);
        v14 = objc_autoreleasePoolPush();
        *buf = 0;
        v41 = 0;
        v15 = [(MADTextEmbeddingTask *)self processInput:v13 resource:request2 result:&v41 error:buf];
        if (v15)
        {
          [array addObject:v41];
        }

        else
        {
          request3 = [(MADServiceTextProcessingSubtask *)self request];
          [request3 setError:*buf];
        }

        objc_autoreleasePoolPop(v14);
        if (!v15)
        {

          goto LABEL_41;
        }

        ++v12;
      }

      while (v10 != v12);
      v10 = [textInputs countByEnumeratingWithState:&v42 objects:v55 count:16];
      if (v10)
      {
        continue;
      }

      break;
    }
  }

  request4 = [(MADServiceTextProcessingSubtask *)self request];
  [request4 setResults:array];

  v18 = VCPSignPostPersistentLog();
  v19 = VCPSignPostPersistentLog();
  v20 = os_signpost_id_generate(v19);

  if (v20 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v18))
  {
    v21 = qos_class_self();
    v22 = VCPMAQoSDescription(v21);
    uTF8String = [v22 UTF8String];
    if (isTextEncoderWarm)
    {
      v24 = "Yes";
    }

    else
    {
      v24 = "No";
    }

    asset2 = [(MADServiceTextProcessingSubtask *)self asset];
    textInputs2 = [asset2 textInputs];
    v27 = [textInputs2 count];
    extendedContextLength = [v40 extendedContextLength];
    *buf = 134350082;
    v29 = 77;
    *&buf[4] = v39;
    if (extendedContextLength)
    {
      v29 = 512;
    }

    v47 = 2082;
    v48 = uTF8String;
    v49 = 2082;
    v50 = v24;
    v51 = 2050;
    v52 = v27;
    v53 = 2050;
    v54 = v29;
    _os_signpost_emit_with_name_impl(&dword_1C9B70000, v18, OS_SIGNPOST_EVENT, v20, "TextEmbeddingGeneration", "%{public, signpost.description:begin_time}llu QoS=%{public, signpost.telemetry:string1}s TextEncoderIsWarm=%{public, signpost.telemetry:string2}s InputCount=%{public, signpost.telemetry:number1}lld ContextLength=%{public, signpost.telemetry:number2}lld  enableTelemetry=YES ", buf, 0x34u);
  }

  if (MediaAnalysisLogLevel() < 6)
  {
LABEL_41:
    request = v40;
  }

  else
  {
    request = v40;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "MADTextEmbeddingTask complete", buf, 2u);
    }
  }

LABEL_44:

  return 0;
}

@end