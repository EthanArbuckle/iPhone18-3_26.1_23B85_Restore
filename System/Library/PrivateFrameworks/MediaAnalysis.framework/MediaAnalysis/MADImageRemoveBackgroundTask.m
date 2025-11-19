@interface MADImageRemoveBackgroundTask
- (BOOL)computeRegionOfInterest:(CGRect *)a3 pixelBuffer:(__CVBuffer *)a4 orientation:(unsigned int)a5 error:(id *)a6;
- (MADImageRemoveBackgroundTask)initWithSignpostPayload:(id)a3;
- (id)computeSensitivityOfPixelBuffer:(__CVBuffer *)a3;
- (id)generateMaskWithRequestHandler:(id)a3 regionOfInterest:(CGRect)a4 error:(id *)a5;
@end

@implementation MADImageRemoveBackgroundTask

- (MADImageRemoveBackgroundTask)initWithSignpostPayload:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = MADImageRemoveBackgroundTask;
  v6 = [(MADImageRemoveBackgroundTask *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_signpostPayload, a3);
  }

  return v7;
}

- (id)computeSensitivityOfPixelBuffer:(__CVBuffer *)a3
{
  v25 = *MEMORY[0x1E69E9840];
  if (MediaAnalysisLogLevel() >= 5 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "[RemoveBackground|IVS] Checking image eligibility", buf, 2u);
  }

  v5 = +[MADImageSafetyClassificationResource sharedResource];
  v6 = +[VCPMADResourceManager sharedManager];
  v7 = [v6 activateResource:v5];

  v8 = VCPSignPostLog();
  v9 = os_signpost_id_generate(v8);

  v10 = VCPSignPostLog();
  v11 = v10;
  if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
  {
    v12 = [(MADImageRemoveBackgroundTask *)self signpostPayload];
    *buf = 138412290;
    v24 = v12;
    _os_signpost_emit_with_name_impl(&dword_1C9B70000, v11, OS_SIGNPOST_INTERVAL_BEGIN, v9, "SCMLHandler_analyzePixelBuffer", "%@", buf, 0xCu);
  }

  v13 = [v5 safetyHandlerTypeN];
  v22 = 0;
  v14 = [v13 analyzePixelBuffer:a3 error:&v22];
  v15 = v22;

  v16 = VCPSignPostLog();
  v17 = v16;
  if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v16))
  {
    v18 = [(MADImageRemoveBackgroundTask *)self signpostPayload];
    *buf = 138412290;
    v24 = v18;
    _os_signpost_emit_with_name_impl(&dword_1C9B70000, v17, OS_SIGNPOST_INTERVAL_END, v9, "SCMLHandler_analyzePixelBuffer", "%@", buf, 0xCu);
  }

  [v7 reset];
  if (v14)
  {
    v19 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v14, "sensitive")}];
  }

  else
  {
    if (MediaAnalysisLogLevel() >= 4 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      v20 = [v15 description];
      *buf = 138412290;
      v24 = v20;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "[RemoveBackground|IVS] Failed to check eligibility (%@)", buf, 0xCu);
    }

    v19 = 0;
  }

  return v19;
}

- (BOOL)computeRegionOfInterest:(CGRect *)a3 pixelBuffer:(__CVBuffer *)a4 orientation:(unsigned int)a5 error:(id *)a6
{
  v7 = *&a5;
  v55 = *MEMORY[0x1E69E9840];
  a3->origin.x = 0.0;
  a3->origin.y = 0.0;
  __asm { FMOV            V0.2D, #1.0 }

  a3->size = _Q0;
  if (MediaAnalysisLogLevel() >= 6 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "[RemoveBackground|ROI] Image is screenshot - detecting ROI", buf, 2u);
  }

  v16 = [MEMORY[0x1E69E0450] imageWithPixelBuffer:a4 orientation:v7];
  v17 = objc_alloc(MEMORY[0x1E69E0488]);
  v18 = [(MADImageRemoveBackgroundTask *)self preferredMetalDevice];
  v19 = [v17 initWithImage:v16 regionOfInterest:1 imageType:v18 preferredMetalDevice:{0.0, 0.0, 1.0, 1.0}];

  v20 = +[VCPMADVIVisualSearchResource sharedResource];
  v21 = +[VCPMADResourceManager sharedManager];
  v22 = [v21 activateResource:v20];

  v23 = [v20 service];
  v42 = 0;
  v24 = [v23 refineRegionsWithRequest:v19 error:&v42];
  v25 = v42;

  [v22 reset];
  if (v25)
  {
    if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v44 = *&v25;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[RemoveBackground|ROI] Failed to detect screenshot ROI (%@)", buf, 0xCu);
    }

    if (a6)
    {
      v26 = [v25 copy];
      v27 = *a6;
      *a6 = v26;
    }

LABEL_10:
    v28 = 0;
    goto LABEL_16;
  }

  v29 = [v24 refinedRegions];
  v30 = [v29 count] == 0;

  if (v30)
  {
    if (MediaAnalysisLogLevel() >= 5 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "[RemoveBackground|ROI] Screenshot has no ROI", buf, 2u);
    }

    goto LABEL_10;
  }

  v31 = [v24 refinedRegions];
  v32 = [v31 firstObject];

  [v32 regionOfInterest];
  v57.origin.x = 0.0;
  v57.origin.y = 0.0;
  v57.size.width = 1.0;
  v57.size.height = 1.0;
  *a3 = CGRectIntersection(v56, v57);
  if (MediaAnalysisLogLevel() >= 6 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
  {
    x = a3->origin.x;
    y = a3->origin.y;
    width = a3->size.width;
    height = a3->size.height;
    [v32 confidence];
    v35 = v34;
    v36 = [v24 refinedRegions];
    v37 = [v36 count];
    *buf = 134219264;
    v44 = x;
    v45 = 2048;
    v46 = y;
    v47 = 2048;
    v48 = width;
    v49 = 2048;
    v50 = height;
    v51 = 2048;
    v52 = v35;
    v53 = 1024;
    v54 = v37;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "[RemoveBackground|ROI] Screenshot ROI: (%0.2f, %0.2f) %0.2fx%0.2f Confidence: %0.2f [1 of %d]", buf, 0x3Au);
  }

  v28 = 1;
LABEL_16:

  return v28;
}

- (id)generateMaskWithRequestHandler:(id)a3 regionOfInterest:(CGRect)a4 error:(id *)a5
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v45 = *MEMORY[0x1E69E9840];
  v11 = a3;
  v12 = objc_alloc_init(MEMORY[0x1E6984560]);
  [v12 setRevision:1];
  if (DeviceHasANE())
  {
    v13 = [MEMORY[0x1E6984608] defaultANEDevice];
    [v12 setProcessingDevice:v13];
  }

  v14 = [(MADImageRemoveBackgroundTask *)self preferredMetalDevice];

  if (v14)
  {
    v15 = MEMORY[0x1E6984608];
    v16 = [(MADImageRemoveBackgroundTask *)self preferredMetalDevice];
    v17 = [v15 deviceForMetalDevice:v16];
    [v12 setProcessingDevice:v17];

    if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
    {
      v18 = [v12 processingDevice];
      v19 = [(MADImageRemoveBackgroundTask *)self preferredMetalDevice];
      *buf = 138412546;
      v42 = v18;
      v43 = 2112;
      v44 = v19;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "[RemoveBackground|Mask] Set VNProcessingDevice: %@ (%@)", buf, 0x16u);
    }
  }

  [v12 setRegionOfInterest:{x, y, width, height}];
  v20 = VCPSignPostLog();
  v21 = os_signpost_id_generate(v20);

  v22 = VCPSignPostLog();
  v23 = v22;
  if (v21 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v22))
  {
    signpostPayload = self->_signpostPayload;
    *buf = 138412290;
    v42 = signpostPayload;
    _os_signpost_emit_with_name_impl(&dword_1C9B70000, v23, OS_SIGNPOST_INTERVAL_BEGIN, v21, "VNImageRequestHandler_performRequests", "%@", buf, 0xCu);
  }

  v40 = v12;
  v25 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v40 count:1];
  v39 = 0;
  v26 = [v11 performRequests:v25 error:&v39];
  v27 = v39;

  v28 = VCPSignPostLog();
  v29 = v28;
  if (v21 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v28))
  {
    v30 = self->_signpostPayload;
    *buf = 138412290;
    v42 = v30;
    _os_signpost_emit_with_name_impl(&dword_1C9B70000, v29, OS_SIGNPOST_INTERVAL_END, v21, "VNImageRequestHandler_performRequests", "%@", buf, 0xCu);
  }

  if (v26)
  {
    v31 = [v12 results];
    v32 = [v31 count] == 0;

    if (!v32)
    {
      v33 = [v12 results];
      v34 = [v33 firstObject];

      goto LABEL_21;
    }

    if (MediaAnalysisLogLevel() >= 5 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "[RemoveBackground|Mask] No observations produced for image", buf, 2u);
    }
  }

  else
  {
    if (MediaAnalysisLogLevel() >= 5 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      v35 = [v27 description];
      *buf = 138412290;
      v42 = v35;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "[RemoveBackground|Mask] Mask generation failed (%@)", buf, 0xCu);
    }

    v36 = [v27 copy];
    v37 = *a5;
    *a5 = v36;
  }

  v34 = 0;
LABEL_21:

  return v34;
}

@end