@interface MADImagePersonalizationGatingTask
+ (id)taskWithRequest:(id)request imageAsset:(id)asset andSignpostPayload:(id)payload;
- (CGRect)expandNormalizedRect:(CGRect)rect;
- (MADImagePersonalizationGatingTask)initWithRequest:(id)request imageAsset:(id)asset signpostPayload:(id)payload;
- (int)processPixelBuffer:(__CVBuffer *)buffer orientation:(unsigned int)orientation faces:(id)faces;
- (int)run;
@end

@implementation MADImagePersonalizationGatingTask

- (MADImagePersonalizationGatingTask)initWithRequest:(id)request imageAsset:(id)asset signpostPayload:(id)payload
{
  requestCopy = request;
  assetCopy = asset;
  payloadCopy = payload;
  v15.receiver = self;
  v15.super_class = MADImagePersonalizationGatingTask;
  v12 = [(MADImagePersonalizationGatingTask *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_request, request);
    objc_storeStrong(&v13->_imageAsset, asset);
    objc_storeStrong(&v13->_signpostPayload, payload);
  }

  return v13;
}

+ (id)taskWithRequest:(id)request imageAsset:(id)asset andSignpostPayload:(id)payload
{
  v21 = *MEMORY[0x1E69E9840];
  requestCopy = request;
  assetCopy = asset;
  payloadCopy = payload;
  if ([requestCopy isMemberOfClass:objc_opt_class()])
  {
    v11 = [[self alloc] initWithRequest:requestCopy imageAsset:assetCopy signpostPayload:payloadCopy];
  }

  else
  {
    if (MediaAnalysisLogLevel() >= 4 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      v12 = objc_opt_class();
      v13 = NSStringFromClass(v12);
      v14 = objc_opt_class();
      v15 = NSStringFromClass(v14);
      v17 = 138412546;
      v18 = v13;
      v19 = 2112;
      v20 = v15;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "Incompatible request (%@) specified to %@", &v17, 0x16u);
    }

    v11 = 0;
  }

  return v11;
}

- (CGRect)expandNormalizedRect:(CGRect)rect
{
  v3.origin.x = rect.origin.x - rect.size.width * 0.5;
  v3.origin.y = rect.origin.y - rect.size.height * 0.5;
  v3.size.width = rect.size.width + rect.size.width;
  v3.size.height = rect.size.height + rect.size.height;
  v5.origin.x = 0.0;
  v5.origin.y = 0.0;
  v5.size.width = 1.0;
  v5.size.height = 1.0;
  return CGRectIntersection(v3, v5);
}

- (int)processPixelBuffer:(__CVBuffer *)buffer orientation:(unsigned int)orientation faces:(id)faces
{
  v5 = *&orientation;
  v52 = *MEMORY[0x1E69E9840];
  facesCopy = faces;
  v41 = +[MADFaceDetectionResource sharedResource];
  v9 = +[VCPMADResourceManager sharedManager];
  v40 = [v9 activateResource:v41];

  v10 = objc_alloc_init(MEMORY[0x1E69844D0]);
  v47 = 0;
  v11 = [v10 setRevision:3737841670 error:&v47];
  v12 = v47;
  if (v11)
  {
    v13 = objc_alloc(MEMORY[0x1E69845B8]);
    session = [v41 session];
    v39 = [v13 initWithCVPixelBuffer:buffer orientation:v5 options:MEMORY[0x1E695E0F8] session:session];

    v15 = VCPSignPostLog();
    v16 = os_signpost_id_generate(v15);

    v17 = VCPSignPostLog();
    v18 = v17;
    if (v16 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v17))
    {
      signpostPayload = self->_signpostPayload;
      *buf = 138412290;
      v51 = signpostPayload;
      _os_signpost_emit_with_name_impl(&dword_1C9B70000, v18, OS_SIGNPOST_INTERVAL_BEGIN, v16, "VNDetectFaceRectanglesRequest", "%@", buf, 0xCu);
    }

    v49 = v10;
    v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v49 count:1];
    v46 = v12;
    v21 = [v39 performRequests:v20 error:&v46];
    v22 = v46;

    if (v21)
    {
      v23 = VCPSignPostLog();
      v24 = v23;
      if (v16 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v23))
      {
        v25 = self->_signpostPayload;
        *buf = 138412290;
        v51 = v25;
        _os_signpost_emit_with_name_impl(&dword_1C9B70000, v24, OS_SIGNPOST_INTERVAL_END, v16, "VNDetectFaceRectanglesRequest", "%@", buf, 0xCu);
      }

      [v40 reset];
      v44 = 0u;
      v45 = 0u;
      v42 = 0u;
      v43 = 0u;
      results = [v10 results];
      v27 = [results countByEnumeratingWithState:&v42 objects:v48 count:16];
      if (v27)
      {
        v28 = *v43;
        do
        {
          for (i = 0; i != v27; ++i)
          {
            if (*v43 != v28)
            {
              objc_enumerationMutation(results);
            }

            [*(*(&v42 + 1) + 8 * i) boundingBox];
            [(MADImagePersonalizationGatingTask *)self expandNormalizedRect:?];
            v34 = [objc_alloc(MEMORY[0x1E69AE320]) initWithNormalizedCropRect:{v30, v31, v32, v33}];
            [facesCopy addObject:v34];
          }

          v27 = [results countByEnumeratingWithState:&v42 objects:v48 count:16];
        }

        while (v27);
      }

      [facesCopy sortUsingComparator:&__block_literal_global_98];
      if (MediaAnalysisLogLevel() >= 5 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
      {
        v35 = [facesCopy count];
        *buf = 67109120;
        LODWORD(v51) = v35;
        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "Total Faces: %d", buf, 8u);
      }

      v36 = 0;
    }

    else
    {
      if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Failed to perform face detection", buf, 2u);
      }

      v36 = -18;
    }

    v12 = v22;
  }

  else
  {
    if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v37 = [v12 description];
      *buf = 138412290;
      v51 = v37;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Failed to configure face detection (%@)", buf, 0xCu);
    }

    v36 = -18;
  }

  return v36;
}

uint64_t __74__MADImagePersonalizationGatingTask_processPixelBuffer_orientation_faces___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  [v4 normalizedCropRect];
  v7 = v6;
  [v4 normalizedCropRect];
  v9 = v8;
  [v5 normalizedCropRect];
  v11 = v10;
  [v5 normalizedCropRect];
  if (v7 * v9 < v11 * v12)
  {
    v13 = 1;
  }

  else
  {
    v13 = -1;
  }

  return v13;
}

- (int)run
{
  v24[1] = *MEMORY[0x1E69E9840];
  if (MediaAnalysisLogLevel() >= 5 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "MADImagePersonalizationGatingTask running...", buf, 2u);
  }

  *buf = 0;
  v18 = 0;
  if ([(VCPMADServiceImageAsset *)self->_imageAsset loadPixelBuffer:buf orientation:&v18])
  {
    if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *v17 = 0;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "MADImagePersonalizationGatingTask image loading failed", v17, 2u);
    }

    request = self->_request;
    v4 = MEMORY[0x1E696ABC0];
    v23 = *MEMORY[0x1E696A578];
    array = [MEMORY[0x1E696AEC0] stringWithFormat:@"Image loading failed"];
    v24[0] = array;
    v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v24 forKeys:&v23 count:1];
    v7 = [v4 errorWithDomain:*MEMORY[0x1E696A768] code:-18 userInfo:v6];
    [(MADImagePersonalizationGatingRequest *)request setError:v7];
  }

  else
  {
    array = [MEMORY[0x1E695DF70] array];
    if ([(MADImagePersonalizationGatingTask *)self processPixelBuffer:*buf orientation:v18 faces:array])
    {
      if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *v17 = 0;
        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Face detection failed", v17, 2u);
      }

      v8 = self->_request;
      v9 = MEMORY[0x1E696ABC0];
      v21 = *MEMORY[0x1E696A578];
      v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Face detection failed"];
      v22 = v10;
      v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v22 forKeys:&v21 count:1];
      v12 = [v9 errorWithDomain:*MEMORY[0x1E696A768] code:-18 userInfo:v11];
      [(MADImagePersonalizationGatingRequest *)v8 setError:v12];
    }

    else
    {
      v13 = self->_request;
      v14 = [objc_alloc(MEMORY[0x1E69AE330]) initWithFaces:array];
      v20 = v14;
      v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v20 count:1];
      [(MADImagePersonalizationGatingRequest *)v13 setResults:v15];

      if (MediaAnalysisLogLevel() >= 5 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
      {
        *v17 = 0;
        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "MADImagePersonalizationGatingTask complete", v17, 2u);
      }
    }
  }

  CF<__CVBuffer *>::~CF(buf);
  return 0;
}

@end