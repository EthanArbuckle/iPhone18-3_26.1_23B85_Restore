@interface MADPersonalizedEmbeddingTask
+ (BOOL)prewarmRequest:(id)a3 error:(id *)a4;
+ (id)embeddingFromMultiArray:(id)a3 normalize:(BOOL)a4 version:(unint64_t)a5;
- (CGRect)expandNormalizedRect:(CGRect)a3;
- (id)gallery;
- (int)processGenerativePlaygroundsOutput:(id)a3 resource:(id)a4 imageSegment:(id)a5 personalizationIndex:(unint64_t)a6 embeddingResult:(id *)a7 hiddenLayerResult:(id *)a8 pooledEmbeddingResult:(id *)a9;
- (int)processInput:(id)a3 resource:(id)a4 result:(id *)a5;
- (int)processPixelBuffer:(__CVBuffer *)a3 imageEmbedding:(id *)a4;
- (int)processSegments:(id)a3 resource:(id)a4 keyImageSegment:(id *)a5 personalizationIndex:(unint64_t *)a6 textEncoderInputs:(id)a7;
- (int)processSystemSearchOutput:(id)a3 resource:(id)a4 embeddingResult:(id *)a5;
- (int)run;
- (int64_t)revision;
- (unint64_t)imageEmbeddingVersion;
@end

@implementation MADPersonalizedEmbeddingTask

+ (BOOL)prewarmRequest:(id)a3 error:(id *)a4
{
  v37 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if ([v5 isMemberOfClass:objc_opt_class()])
  {
    v6 = v5;
    v7 = +[MADTextEncoderResource sharedResource:](MADTextEncoderResource, "sharedResource:", [v6 revision]);
    if (v7)
    {
      v8 = +[VCPMADResourceManager sharedManager];
      v9 = [v8 activateResource:v7];

      v10 = VCPSignPostLog();
      v11 = os_signpost_id_generate(v10);

      v12 = VCPSignPostLog();
      v13 = v12;
      if (v11 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v12))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_1C9B70000, v13, OS_SIGNPOST_INTERVAL_BEGIN, v11, "CSUTextEncoder_loadResources", "", buf, 2u);
      }

      v14 = [v7 textEncoder];
      v28 = 0;
      v15 = [v14 loadResources:&v28];
      v16 = v28;

      if (v15)
      {
        v17 = VCPSignPostLog();
        v18 = v17;
        if (v11 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v17))
        {
          *buf = 0;
          _os_signpost_emit_with_name_impl(&dword_1C9B70000, v18, OS_SIGNPOST_INTERVAL_END, v11, "CSUTextEncoder_loadResources", "", buf, 2u);
        }

        [v9 reset];
      }

      else
      {
        if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          v23 = [v16 description];
          *buf = 138412290;
          v36 = v23;
          _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Failed to pre-warm text encoder (%@)", buf, 0xCu);
        }

        if (a4)
        {
          v24 = MEMORY[0x1E696ABC0];
          v29 = *MEMORY[0x1E696A578];
          v25 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to pre-warm text encoder"];
          v30 = v25;
          v26 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v30 forKeys:&v29 count:1];
          *a4 = [v24 errorWithDomain:*MEMORY[0x1E696A768] code:-18 userInfo:v26];
        }
      }
    }

    else
    {
      if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *buf = 67109120;
        LODWORD(v36) = [v6 revision];
        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Invalid personalized embedding revision specified (%d)", buf, 8u);
      }

      if (!a4)
      {
        v15 = 0;
        goto LABEL_28;
      }

      v22 = MEMORY[0x1E696ABC0];
      v31 = *MEMORY[0x1E696A578];
      v16 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid personalized embedding revision specified"];
      v32 = v16;
      v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v32 forKeys:&v31 count:1];
      [v22 errorWithDomain:*MEMORY[0x1E696A768] code:-50 userInfo:v9];
      *a4 = v15 = 0;
    }

LABEL_28:
    goto LABEL_29;
  }

  if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v19 = objc_opt_class();
    v20 = NSStringFromClass(v19);
    *buf = 138412290;
    v36 = v20;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Pre-warming attempted for invalid request (%@)", buf, 0xCu);
  }

  if (a4)
  {
    v21 = MEMORY[0x1E696ABC0];
    v33 = *MEMORY[0x1E696A578];
    v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Pre-warming attempted for invalid request"];
    v34 = v6;
    v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v34 forKeys:&v33 count:1];
    [v21 errorWithDomain:*MEMORY[0x1E696A768] code:-50 userInfo:v7];
    *a4 = v15 = 0;
    goto LABEL_28;
  }

  v15 = 0;
LABEL_29:

  return v15;
}

- (int64_t)revision
{
  v2 = [(MADMultiModalProcessingSubtask *)self request];
  v3 = [v2 revision];

  return v3;
}

- (id)gallery
{
  v20 = *MEMORY[0x1E69E9840];
  gallery = self->_gallery;
  if (!gallery)
  {
    v4 = [MEMORY[0x1E69789B0] vcp_defaultPhotoLibrary];
    v5 = [v4 vcp_visionCacheStorageDirectoryURL];
    v6 = VCPSignPostLog();
    v7 = os_signpost_id_generate(v6);

    v8 = VCPSignPostLog();
    v9 = v8;
    if (v7 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v8))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1C9B70000, v9, OS_SIGNPOST_INTERVAL_BEGIN, v7, "VUWGallery_initWithPath", "", buf, 2u);
    }

    v17 = 0;
    v10 = [objc_alloc(MEMORY[0x1E69E0678]) initWithClient:0 path:v5 error:&v17];
    v11 = v17;
    v12 = self->_gallery;
    self->_gallery = v10;

    v13 = VCPSignPostLog();
    v14 = v13;
    if (v7 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v13))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1C9B70000, v14, OS_SIGNPOST_INTERVAL_END, v7, "VUWGallery_initWithPath", "", buf, 2u);
    }

    if (!self->_gallery && MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v15 = [v11 description];
      *buf = 138412290;
      v19 = v15;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Failed to load VU Gallery (%@)", buf, 0xCu);
    }

    gallery = self->_gallery;
  }

  return gallery;
}

+ (id)embeddingFromMultiArray:(id)a3 normalize:(BOOL)a4 version:(unint64_t)a5
{
  v6 = a4;
  v25 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = [v7 dataType];
  if (v8 == 65552)
  {
    v9 = 1;
    v10 = 1;
    goto LABEL_5;
  }

  if (v8 == 65568)
  {
    v9 = 0;
    v10 = 2;
LABEL_5:
    *buf = 0;
    v20 = buf;
    v21 = 0x3032000000;
    v22 = __Block_byref_object_copy__58;
    v23 = __Block_byref_object_dispose__58;
    v24 = 0;
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __74__MADPersonalizedEmbeddingTask_embeddingFromMultiArray_normalize_version___block_invoke;
    v18[3] = &unk_1E834CE50;
    v18[4] = buf;
    [v7 getBytesWithHandler:v18];
    if (v6)
    {
      v11 = MediaAnalysisApplyL2Norm(*(v20 + 5), v9);
      v12 = *(v20 + 5);
      *(v20 + 5) = v11;
    }

    v13 = objc_alloc(MEMORY[0x1E69AE300]);
    v14 = *(v20 + 5);
    v15 = [v7 shape];
    v16 = [v13 initWithVersion:a5 data:v14 type:v10 shape:v15];

    _Block_object_dispose(buf, 8);
    goto LABEL_12;
  }

  if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    *buf = 67109120;
    *&buf[4] = [v7 dataType];
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Unsupported embedding data type (%d)", buf, 8u);
  }

  v16 = 0;
LABEL_12:

  return v16;
}

void __74__MADPersonalizedEmbeddingTask_embeddingFromMultiArray_normalize_version___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = [MEMORY[0x1E695DEF0] dataWithBytes:a2 length:a3];
  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;
}

- (CGRect)expandNormalizedRect:(CGRect)a3
{
  v3.origin.x = a3.origin.x - a3.size.width * 0.5;
  v3.origin.y = a3.origin.y - a3.size.height * 0.5;
  v3.size.width = a3.size.width + a3.size.width;
  v3.size.height = a3.size.height + a3.size.height;
  v5.origin.x = 0.0;
  v5.origin.y = 0.0;
  v5.size.width = 1.0;
  v5.size.height = 1.0;
  return CGRectIntersection(v3, v5);
}

- (int)processSegments:(id)a3 resource:(id)a4 keyImageSegment:(id *)a5 personalizationIndex:(unint64_t *)a6 textEncoderInputs:(id)a7
{
  v80 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v62 = a4;
  v66 = a7;
  v72 = 0u;
  v73 = 0u;
  v74 = 0u;
  v75 = 0u;
  obj = v9;
  v10 = [obj countByEnumeratingWithState:&v72 objects:v79 count:16];
  if (v10)
  {
    v11 = *v73;
LABEL_3:
    v12 = 0;
    while (1)
    {
      if (*v73 != v11)
      {
        objc_enumerationMutation(obj);
      }

      if ([*(*(&v72 + 1) + 8 * v12) type] == 4)
      {
        break;
      }

      if (v10 == ++v12)
      {
        v10 = [obj countByEnumeratingWithState:&v72 objects:v79 count:16];
        if (v10)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  v63 = [(MADPersonalizedEmbeddingTask *)self revision];
  *a6 = 0x7FFFFFFFFFFFFFFFLL;
  v68 = 0u;
  v69 = 0u;
  v70 = 0u;
  v71 = 0u;
  v64 = obj;
  v13 = [v64 countByEnumeratingWithState:&v68 objects:v78 count:16];
  if (!v13)
  {

    v58 = 0;
    v60 = 0;
    v49 = 0;
LABEL_78:
    LODWORD(v15) = -1;
    if (*a6 != 0x7FFFFFFFFFFFFFFFLL)
    {
      goto LABEL_79;
    }

    goto LABEL_82;
  }

  v58 = 0;
  v59 = 0;
  v60 = 0;
  v67 = *v69;
  *&v14 = 67109120;
  v55 = v14;
  v15 = 0x7FFFFFFFFFFFFFFFLL;
  while (2)
  {
    for (i = 0; i != v13; ++i)
    {
      if (*v69 != v67)
      {
        objc_enumerationMutation(v64);
      }

      v17 = *(*(&v68 + 1) + 8 * i);
      v18 = objc_autoreleasePoolPush();
      if ([v17 type] == 1)
      {
        v19 = v17;
        if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
        {
          v20 = [v19 text];
          *buf = 138412290;
          *v77 = v20;
          _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "Processing text input (%@)", buf, 0xCu);
        }

        v21 = objc_alloc_init(MEMORY[0x1E6999158]);
        v22 = [v19 text];
        [v21 setString:v22];

        [v66 addObject:v21];
        if (v15 == 0x7FFFFFFFFFFFFFFFLL)
        {
          if ([v62 supportsAgeTypePromptAdjustment])
          {
            v23 = [v19 text];
            v24 = [v23 rangeOfString:@"(^.* |^)person( |$)" options:1025];
            v26 = v25;

            v15 = 0x7FFFFFFFFFFFFFFFLL;
            if (v24 != 0x7FFFFFFFFFFFFFFFLL)
            {
              v27 = [v66 count];
              v28 = [v19 text];
              v29 = [v28 substringToIndex:v26];

              v58 = v29;
              if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
              {
                *buf = 138412290;
                *v77 = v29;
                _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "Splitted string firstHalf (%@)", buf, 0xCu);
              }

              v30 = [v19 text];
              v31 = [v30 substringFromIndex:v24 + v26];

              v15 = v27 - 1;
              if (MediaAnalysisLogLevel() >= 7)
              {
                v32 = MEMORY[0x1E69E9C10];
                if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
                {
                  *buf = 138412290;
                  *v77 = v31;
                  _os_log_impl(&dword_1C9B70000, v32, OS_LOG_TYPE_DEBUG, "Splitted string secondHalf (%@)", buf, 0xCu);
                }
              }

              v60 = v31;
            }
          }

          else
          {
            v15 = 0x7FFFFFFFFFFFFFFFLL;
          }
        }

        goto LABEL_47;
      }

      if ([v17 type] == 3)
      {
        if ((v63 - 5) >= 4 && v63 != 3)
        {
          if (MediaAnalysisLogLevel() < 3)
          {
            goto LABEL_69;
          }

          v43 = MEMORY[0x1E69E9C10];
          if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            goto LABEL_69;
          }

          *buf = 0;
          v34 = v43;
          v35 = "Configuration does not support image inputs";
          goto LABEL_67;
        }

        if (*a5)
        {
          if (MediaAnalysisLogLevel() < 3)
          {
            goto LABEL_69;
          }

          v33 = MEMORY[0x1E69E9C10];
          if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            goto LABEL_69;
          }

          *buf = 0;
          v34 = v33;
          v35 = "Multiple images not supported";
          goto LABEL_67;
        }

        v40 = v17;
        if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
        {
          *buf = 0;
          _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "Processing image input", buf, 2u);
        }

        objc_storeStrong(a5, v17);
        v41 = [(MADMultiModalProcessingSubtask *)self request];
        v42 = [v41 bypassFaceDetection];

        if (v42)
        {

LABEL_47:
          v39 = 1;
          goto LABEL_70;
        }

        if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Face detection not supported", buf, 2u);
        }
      }

      else
      {
        if ([v17 type] != 4)
        {
          if (MediaAnalysisLogLevel() < 3 || !os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            goto LABEL_69;
          }

          v37 = [v17 type];
          *buf = v55;
          *v77 = v37;
          v34 = MEMORY[0x1E69E9C10];
          v35 = "Unsupported input type (%d)";
          v38 = 8;
          goto LABEL_68;
        }

        if ((v63 - 5) >= 4 && v63 != 3)
        {
          if (MediaAnalysisLogLevel() < 3)
          {
            goto LABEL_69;
          }

          v48 = MEMORY[0x1E69E9C10];
          if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            goto LABEL_69;
          }

          *buf = 0;
          v34 = v48;
          v35 = "Configuration does not support person description inputs";
LABEL_67:
          v38 = 2;
LABEL_68:
          _os_log_impl(&dword_1C9B70000, v34, OS_LOG_TYPE_ERROR, v35, buf, v38);
          goto LABEL_69;
        }

        if (!v59)
        {
          v44 = v17;
          if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
          {
            v45 = [v44 text];
            *buf = 138412290;
            *v77 = v45;
            _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "Processing description input (%@)", buf, 0xCu);
          }

          v59 = v44;
          v46 = objc_alloc_init(MEMORY[0x1E6999158]);
          v47 = [v59 text];
          [v46 setString:v47];

          [v66 addObject:v46];
          goto LABEL_47;
        }

        if (MediaAnalysisLogLevel() >= 3)
        {
          v36 = MEMORY[0x1E69E9C10];
          if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            v34 = v36;
            v35 = "Multiple person descriptions not supported";
            goto LABEL_67;
          }
        }
      }

LABEL_69:
      v39 = 0;
LABEL_70:
      objc_autoreleasePoolPop(v18);
      if (!v39)
      {

        v50 = -50;
LABEL_76:
        v49 = v59;
        goto LABEL_83;
      }
    }

    v13 = [v64 countByEnumeratingWithState:&v68 objects:v78 count:16];
    if (v13)
    {
      continue;
    }

    break;
  }

  if (v15 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v49 = v59;
    goto LABEL_78;
  }

  v49 = v59;
  if (*a6 != 0x7FFFFFFFFFFFFFFFLL)
  {
    [v66 removeObjectAtIndex:v15];
    v53 = objc_alloc_init(MEMORY[0x1E6999158]);
    [v53 setString:v58];
    [v66 insertObject:v53 atIndex:v15];
    *a6 = v15;
    v54 = objc_alloc_init(MEMORY[0x1E6999158]);
    [v54 setString:v60];
    [v66 insertObject:v54 atIndex:v15 + 1];

    v50 = 0;
    goto LABEL_76;
  }

LABEL_79:
  if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v51 = *a6;
    *buf = 67109376;
    *v77 = v15;
    *&v77[4] = 1024;
    *&v77[6] = v51;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Invalid personalization due to unpaired text input with entity/image input (personStringIndex %d, personalizationIndex %d)", buf, 0xEu);
  }

LABEL_82:
  v50 = 0;
LABEL_83:

  return v50;
}

- (unint64_t)imageEmbeddingVersion
{
  v2 = [(MADMultiModalProcessingSubtask *)self request];
  v3 = [v2 revision];

  if ((v3 - 3) >= 6)
  {
    return 0;
  }

  else
  {
    return qword_1C9F63468[v3 - 3];
  }
}

- (int)processPixelBuffer:(__CVBuffer *)a3 imageEmbedding:(id *)a4
{
  v38 = *MEMORY[0x1E69E9840];
  v7 = [(MADPersonalizedEmbeddingTask *)self imageEmbeddingVersion];
  if (v7)
  {
    v8 = v7;
    v9 = [VCPMADImageEmbeddingResource sharedResourceForRevision:v7];
    v10 = +[VCPMADResourceManager sharedManager];
    v33 = [v10 activateResource:v9];

    v11 = [v9 imageBackbone];

    if (v11)
    {
      v12 = VCPSignPostLog();
      v13 = os_signpost_id_generate(v12);

      v14 = VCPSignPostLog();
      v15 = v14;
      if (v13 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v14))
      {
        v16 = [(MADMultiModalProcessingSubtask *)self signpostPayload];
        *buf = 138412290;
        v37 = v16;
        _os_signpost_emit_with_name_impl(&dword_1C9B70000, v15, OS_SIGNPOST_INTERVAL_BEGIN, v13, "VCPMADImageEmbeddingTask_requestEmbedding", "%@", buf, 0xCu);
      }

      v17 = [v9 imageBackbone];
      v34 = 0;
      v18 = [v17 analyzePixelBuffer:a3 flags:0 results:&v34 cancel:&__block_literal_global_76];
      v19 = v34;

      if (v18)
      {
        if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Image encoding failed", buf, 2u);
        }
      }

      else
      {
        v20 = VCPSignPostLog();
        v21 = v20;
        if (v13 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v20))
        {
          v22 = [(MADMultiModalProcessingSubtask *)self signpostPayload];
          *buf = 138412290;
          v37 = v22;
          _os_signpost_emit_with_name_impl(&dword_1C9B70000, v21, OS_SIGNPOST_INTERVAL_END, v13, "VCPMADImageEmbeddingTask_requestEmbedding", "%@", buf, 0xCu);
        }

        v23 = [v19 objectForKeyedSubscript:@"ImageEmbeddingResults"];
        if ([v23 count])
        {
          v24 = [v23 objectAtIndexedSubscript:0];
          v25 = [v24 objectForKeyedSubscript:@"attributes"];
          v26 = [v25 objectForKeyedSubscript:@"embeddings"];

          if (v26)
          {
            v27 = objc_alloc(MEMORY[0x1E69AE300]);
            v35[0] = &unk_1F49BE320;
            v28 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v26, "length") >> 1}];
            v35[1] = v28;
            v29 = [MEMORY[0x1E695DEC8] arrayWithObjects:v35 count:2];
            v30 = [v27 initWithVersion:v8 data:v26 type:1 shape:v29];
            v31 = *a4;
            *a4 = v30;

            [v33 reset];
            v18 = 0;
          }

          else
          {
            if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
            {
              *buf = 0;
              _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Image encoding produced no embedding", buf, 2u);
            }

            v18 = -18;
          }
        }

        else
        {
          if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Image encoding produced no embedding", buf, 2u);
          }

          v18 = -18;
        }
      }
    }

    else
    {
      if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Failed to load image encoder", buf, 2u);
      }

      v18 = -18;
    }
  }

  else
  {
    if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Image encoding not supported in current configiuration", buf, 2u);
    }

    return -18;
  }

  return v18;
}

- (int)processSystemSearchOutput:(id)a3 resource:(id)a4 embeddingResult:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v10 = [(MADPersonalizedEmbeddingTask *)self revision];
  v11 = objc_opt_class();
  v12 = [v8 CSUTextEmbedding];
  v13 = [v11 embeddingFromMultiArray:v12 normalize:v10 == 1 version:{objc_msgSend(v9, "version")}];
  v14 = *a5;
  *a5 = v13;

  if (*a5)
  {
    v15 = 0;
  }

  else
  {
    if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *v17 = 0;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Failed to create output text embedding", v17, 2u);
    }

    v15 = -18;
  }

  return v15;
}

- (int)processGenerativePlaygroundsOutput:(id)a3 resource:(id)a4 imageSegment:(id)a5 personalizationIndex:(unint64_t)a6 embeddingResult:(id *)a7 hiddenLayerResult:(id *)a8 pooledEmbeddingResult:(id *)a9
{
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = [v14 additionalLayers];
  v18 = [v17 objectForKeyedSubscript:@"spatial_embed"];

  if (v18)
  {
    v19 = [v14 additionalLayers];
    v20 = [v19 objectForKeyedSubscript:@"hidden_embed"];

    if (!v20)
    {
      if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        LOWORD(cf[0]) = 0;
        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Text encoder did not produce pooled embedding", cf, 2u);
      }

      v22 = -18;
      goto LABEL_33;
    }

    cf[0] = 0;
    if (v16)
    {
      v21 = [v16 surface];
      v22 = CVPixelBufferCreateWithIOSurface(0, v21, 0, cf);

      if (v22)
      {
        if (MediaAnalysisLogLevel() < 3 || !os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          goto LABEL_32;
        }

        *v32 = 0;
        v23 = MEMORY[0x1E69E9C10];
        v24 = "Failed to create pixel buffer";
        goto LABEL_20;
      }

      v22 = [(MADPersonalizedEmbeddingTask *)self processPixelBuffer:cf[0] imageEmbedding:a7];
      if (v22)
      {
        if (MediaAnalysisLogLevel() < 3 || !os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          goto LABEL_32;
        }

        *v32 = 0;
        v23 = MEMORY[0x1E69E9C10];
        v24 = "Failed to create image embedding";
LABEL_20:
        _os_log_impl(&dword_1C9B70000, v23, OS_LOG_TYPE_ERROR, v24, v32, 2u);
LABEL_32:
        CF<__CVBuffer *>::~CF(cf);
LABEL_33:

        goto LABEL_34;
      }
    }

    v25 = [objc_opt_class() embeddingFromMultiArray:v18 normalize:0 version:{objc_msgSend(v15, "version")}];
    v26 = *a8;
    *a8 = v25;

    if (*a8)
    {
      v27 = [objc_opt_class() embeddingFromMultiArray:v20 normalize:0 version:{objc_msgSend(v15, "version")}];
      v28 = *a9;
      *a9 = v27;

      if (*a9)
      {
        v22 = 0;
        goto LABEL_32;
      }

      if (MediaAnalysisLogLevel() < 3 || !os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
LABEL_31:
        v22 = -18;
        goto LABEL_32;
      }

      *v32 = 0;
      v29 = MEMORY[0x1E69E9C10];
      v30 = "Failed to create pooled embedding";
    }

    else
    {
      if (MediaAnalysisLogLevel() < 3 || !os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_31;
      }

      *v32 = 0;
      v29 = MEMORY[0x1E69E9C10];
      v30 = "Failed to create output hidden layer embedding";
    }

    _os_log_impl(&dword_1C9B70000, v29, OS_LOG_TYPE_ERROR, v30, v32, 2u);
    goto LABEL_31;
  }

  if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    LOWORD(cf[0]) = 0;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Text encoder did not produce hidden layer", cf, 2u);
  }

  v22 = -18;
LABEL_34:

  return v22;
}

- (int)processInput:(id)a3 resource:(id)a4 result:(id *)a5
{
  v41 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v38 = 0x7FFFFFFFFFFFFFFFLL;
  v39 = 0;
  v10 = [MEMORY[0x1E695DF70] array];
  v11 = [v8 segments];
  v12 = [(MADPersonalizedEmbeddingTask *)self processSegments:v11 resource:v9 keyImageSegment:&v39 personalizationIndex:&v38 textEncoderInputs:v10];

  if (!v12)
  {
    v13 = +[VCPMADResourceManager sharedManager];
    v14 = [v13 activateResource:v9];

    v15 = VCPSignPostLog();
    v16 = os_signpost_id_generate(v15);

    v17 = VCPSignPostLog();
    v18 = v17;
    if (v16 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v17))
    {
      v19 = [(MADMultiModalProcessingSubtask *)self signpostPayload];
      *buf = 138412290;
      *&buf[4] = v19;
      _os_signpost_emit_with_name_impl(&dword_1C9B70000, v18, OS_SIGNPOST_INTERVAL_BEGIN, v16, "CSUTextEncoder_runOnInput", "%@", buf, 0xCu);
    }

    v20 = [v9 textEncoder];
    v37 = 0;
    [v20 runOnInput:v10 error:&v37];
    v21 = v37;

    v22 = VCPSignPostLog();
    v23 = v22;
    if (v16 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v22))
    {
      v24 = [(MADMultiModalProcessingSubtask *)self signpostPayload];
      *buf = 138412290;
      *&buf[4] = v24;
      _os_signpost_emit_with_name_impl(&dword_1C9B70000, v23, OS_SIGNPOST_INTERVAL_END, v16, "CSUTextEncoder_runOnInput", "%@", buf, 0xCu);
    }

    if (v21)
    {
      if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v25 = [v21 description];
        *buf = 138412290;
        *&buf[4] = v25;
        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Failed to generate text embedding (%@)", buf, 0xCu);
      }

      v12 = -18;
    }

    else
    {
      v26 = [v9 textEncoder];
      v27 = [v26 inferenceOutputs];

      [v14 reset];
      if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
      {
        v28 = [v27 processedInput];
        *buf = 138412290;
        *&buf[4] = v28;
        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "processedInput: %@", buf, 0xCu);
      }

      *buf = 0;
      v35 = 0;
      v36 = 0;
      v29 = [(MADPersonalizedEmbeddingTask *)self revision];
      if (v29 <= 9 && ((1 << v29) & 0x216) != 0)
      {
        v30 = [(MADPersonalizedEmbeddingTask *)self processSystemSearchOutput:v27 resource:v9 embeddingResult:buf];
      }

      else
      {
        v30 = [(MADPersonalizedEmbeddingTask *)self processGenerativePlaygroundsOutput:v27 resource:v9 imageSegment:v39 personalizationIndex:v38 embeddingResult:buf hiddenLayerResult:&v36 pooledEmbeddingResult:&v35];
      }

      v12 = v30;
      if (!v30)
      {
        v31 = objc_alloc(MEMORY[0x1E69AE390]);
        v32 = [v31 initWithEmbedding:*buf hiddenLayer:v36 pooledEmbedding:v35 personalized:0];
        v33 = *a5;
        *a5 = v32;

        v12 = 0;
      }
    }
  }

  return v12;
}

- (int)run
{
  v46 = *MEMORY[0x1E69E9840];
  if (MediaAnalysisLogLevel() >= 5 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "MADPersonalizedEmbeddingTask running...", buf, 2u);
  }

  v3 = VCPSignPostLog();
  v4 = os_signpost_id_generate(v3);

  v5 = VCPSignPostLog();
  v6 = v5;
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v5))
  {
    v7 = [(MADMultiModalProcessingSubtask *)self signpostPayload];
    *buf = 138412290;
    *&buf[4] = v7;
    _os_signpost_emit_with_name_impl(&dword_1C9B70000, v6, OS_SIGNPOST_INTERVAL_BEGIN, v4, "MADPersonalizedEmbeddingTask_run", "%@", buf, 0xCu);
  }

  v8 = [(MADPersonalizedEmbeddingTask *)self revision];
  if ((v8 - 1) > 2)
  {
    v9 = [MADTextEncoderResource sharedResource:v8];
    if (v9)
    {
      v11 = [MEMORY[0x1E695DF70] array];
      v36 = 0u;
      v37 = 0u;
      v34 = 0u;
      v35 = 0u;
      v14 = [(MADMultiModalProcessingSubtask *)self inputs];
      v15 = [v14 countByEnumeratingWithState:&v34 objects:v40 count:16];
      if (v15)
      {
        v16 = *v35;
        while (2)
        {
          for (i = 0; i != v15; ++i)
          {
            if (*v35 != v16)
            {
              objc_enumerationMutation(v14);
            }

            v18 = *(*(&v34 + 1) + 8 * i);
            *buf = 0;
            if ([(MADPersonalizedEmbeddingTask *)self processInput:v18 resource:v9 result:buf])
            {
              if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
              {
                *v33 = 0;
                _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Embedding generation failed", v33, 2u);
              }

              v23 = [(MADMultiModalProcessingSubtask *)self request];
              v24 = MEMORY[0x1E696ABC0];
              v38 = *MEMORY[0x1E696A578];
              v25 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Embedding generation failed"];
              v39 = v25;
              v26 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v39 forKeys:&v38 count:1];
              v27 = [v24 errorWithDomain:*MEMORY[0x1E696A768] code:-50 userInfo:v26];
              [v23 setError:v27];

              goto LABEL_35;
            }

            [v11 addObject:*buf];
          }

          v15 = [v14 countByEnumeratingWithState:&v34 objects:v40 count:16];
          if (v15)
          {
            continue;
          }

          break;
        }
      }

      v19 = [(MADMultiModalProcessingSubtask *)self request];
      [v19 setResults:v11];

      v20 = VCPSignPostLog();
      v21 = v20;
      if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v20))
      {
        v22 = [(MADMultiModalProcessingSubtask *)self signpostPayload];
        *buf = 138412290;
        *&buf[4] = v22;
        _os_signpost_emit_with_name_impl(&dword_1C9B70000, v21, OS_SIGNPOST_INTERVAL_END, v4, "MADPersonalizedEmbeddingTask_run", "%@", buf, 0xCu);
      }

      if (MediaAnalysisLogLevel() >= 5 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "MADPersonalizedEmbeddingTask Complete", buf, 2u);
      }
    }

    else
    {
      if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *buf = 67109120;
        *&buf[4] = v8;
        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Invalid personalized embedding revision specified (%d)", buf, 8u);
      }

      v11 = [(MADMultiModalProcessingSubtask *)self request];
      v28 = MEMORY[0x1E696ABC0];
      v41 = *MEMORY[0x1E696A578];
      v29 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid personalized embedding type specified"];
      v42 = v29;
      v30 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v42 forKeys:&v41 count:1];
      v31 = [v28 errorWithDomain:*MEMORY[0x1E696A768] code:-50 userInfo:v30];
      [v11 setError:v31];
    }
  }

  else
  {
    if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      *&buf[4] = v8;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Revision is no longer supported (%d)", buf, 8u);
    }

    v9 = [(MADMultiModalProcessingSubtask *)self request];
    v10 = MEMORY[0x1E696ABC0];
    v43 = *MEMORY[0x1E696A578];
    v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Revision is no longer supported (%d)", v8];
    v44 = v11;
    v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v44 forKeys:&v43 count:1];
    v13 = [v10 errorWithDomain:*MEMORY[0x1E696A768] code:-50 userInfo:v12];
    [v9 setError:v13];
  }

LABEL_35:

  return 0;
}

@end