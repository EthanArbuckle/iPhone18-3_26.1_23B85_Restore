@interface VCPMADVIRectangleDetectionTask
+ (id)taskWithRequest:(id)request imageAsset:(id)asset andSignpostPayload:(id)payload;
- (VCPMADVIRectangleDetectionTask)initWithRequest:(id)request imageAsset:(id)asset andSignpostPayload:(id)payload;
- (int)run;
- (void)cancel;
@end

@implementation VCPMADVIRectangleDetectionTask

- (VCPMADVIRectangleDetectionTask)initWithRequest:(id)request imageAsset:(id)asset andSignpostPayload:(id)payload
{
  requestCopy = request;
  assetCopy = asset;
  payloadCopy = payload;
  v17.receiver = self;
  v17.super_class = VCPMADVIRectangleDetectionTask;
  v12 = [(VCPMADVIRectangleDetectionTask *)&v17 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_request, request);
    objc_storeStrong(&v13->_imageAsset, asset);
    objc_storeStrong(&v13->_signpostPayload, payload);
    v14 = dispatch_queue_create("VCPMADVIRectangleDetectionTask", 0);
    cancelQueue = v13->_cancelQueue;
    v13->_cancelQueue = v14;
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
    v11 = [[self alloc] initWithRequest:requestCopy imageAsset:assetCopy andSignpostPayload:payloadCopy];
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

- (void)cancel
{
  cancelQueue = self->_cancelQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __40__VCPMADVIRectangleDetectionTask_cancel__block_invoke;
  block[3] = &unk_1E834BDC0;
  block[4] = self;
  dispatch_sync(cancelQueue, block);
}

void __40__VCPMADVIRectangleDetectionTask_cancel__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 56));
  if (WeakRetained)
  {
    [WeakRetained cancel];
  }

  atomic_store(1u, (*(a1 + 32) + 48));
}

- (int)run
{
  v62[1] = *MEMORY[0x1E69E9840];
  if (MediaAnalysisLogLevel() >= 6 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "VCPMADVIRectangleDetectionTask running...", buf, 2u);
  }

  v54 = 0;
  v53 = 0;
  if (![(VCPMADServiceImageAsset *)self->_imageAsset loadPixelBuffer:&v54 orientation:&v53])
  {
    v5 = +[VCPMADVIRectangleDetectionResource sharedResource];
    v8 = +[VCPMADResourceManager sharedManager];
    v49 = [v8 activateResource:v5];

    v9 = objc_alloc_init(MEMORY[0x1E69844E0]);
    if (DeviceHasANE())
    {
      defaultANEDevice = [MEMORY[0x1E6984608] defaultANEDevice];
      [v9 setProcessingDevice:defaultANEDevice];
    }

    [(MADVIRectangleDetectionRequest *)self->_request minimumAspectRatio];
    [v9 setMinimumAspectRatio:?];
    [(MADVIRectangleDetectionRequest *)self->_request maximumAspectRatio];
    [v9 setMaximumAspectRatio:?];
    [(MADVIRectangleDetectionRequest *)self->_request quadratureTolerance];
    [v9 setQuadratureTolerance:?];
    [(MADVIRectangleDetectionRequest *)self->_request minimumSize];
    [v9 setMinimumSize:?];
    [(MADVIRectangleDetectionRequest *)self->_request minimumConfidence];
    [v9 setMinimumConfidence:?];
    [v9 setMaximumObservations:{-[MADVIRectangleDetectionRequest maximumObservations](self->_request, "maximumObservations")}];
    if (self->_preferredMetalDevice)
    {
      v11 = [MEMORY[0x1E6984608] deviceForMetalDevice:?];
      [v9 setProcessingDevice:v11];

      if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
      {
        processingDevice = [v9 processingDevice];
        preferredMetalDevice = self->_preferredMetalDevice;
        *buf = 138412546;
        v58 = processingDevice;
        v59 = 2112;
        v60 = preferredMetalDevice;
        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "[RectangleDetection] Set VNProcessingDevice: %@ (%@)", buf, 0x16u);
      }
    }

    cancelQueue = self->_cancelQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __37__VCPMADVIRectangleDetectionTask_run__block_invoke;
    block[3] = &unk_1E834D238;
    block[4] = self;
    v15 = v9;
    v52 = v15;
    dispatch_sync(cancelQueue, block);
    v16 = atomic_load(&self->_canceled);
    if (v16)
    {
      v6 = 0;
      v7 = -128;
LABEL_39:

      goto LABEL_40;
    }

    v17 = VCPSignPostLog();
    v18 = os_signpost_id_generate(v17);

    v19 = VCPSignPostLog();
    v20 = v19;
    if (v18 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v19))
    {
      signpostPayload = self->_signpostPayload;
      *buf = 138412290;
      v58 = signpostPayload;
      _os_signpost_emit_with_name_impl(&dword_1C9B70000, v20, OS_SIGNPOST_INTERVAL_BEGIN, v18, "VNImageRequestHandler_init", "%@", buf, 0xCu);
    }

    v22 = objc_alloc(MEMORY[0x1E69845B8]);
    v23 = v54;
    v24 = v53;
    session = [v5 session];
    v48 = [v22 initWithCVPixelBuffer:v23 orientation:v24 options:MEMORY[0x1E695E0F8] session:session];

    v26 = VCPSignPostLog();
    v27 = v26;
    if (v18 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v26))
    {
      v28 = self->_signpostPayload;
      *buf = 138412290;
      v58 = v28;
      _os_signpost_emit_with_name_impl(&dword_1C9B70000, v27, OS_SIGNPOST_INTERVAL_END, v18, "VNImageRequestHandler_init", "%@", buf, 0xCu);
    }

    v29 = VCPSignPostLog();
    v30 = os_signpost_id_generate(v29);

    v31 = VCPSignPostLog();
    v32 = v31;
    if (v30 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v31))
    {
      v33 = self->_signpostPayload;
      *buf = 138412290;
      v58 = v33;
      _os_signpost_emit_with_name_impl(&dword_1C9B70000, v32, OS_SIGNPOST_INTERVAL_BEGIN, v30, "VNImageRequestHandler_performRequests", "%@", buf, 0xCu);
    }

    v56 = v15;
    v34 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v56 count:1];
    v50 = 0;
    v35 = [v48 performRequests:v34 error:&v50];
    v6 = v50;

    v36 = VCPSignPostLog();
    v37 = v36;
    if (v30 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v36))
    {
      v38 = self->_signpostPayload;
      *buf = 138412290;
      v58 = v38;
      _os_signpost_emit_with_name_impl(&dword_1C9B70000, v37, OS_SIGNPOST_INTERVAL_END, v30, "VNImageRequestHandler_performRequests", "%@", buf, 0xCu);
    }

    if (v35)
    {
      request = self->_request;
      v40 = objc_alloc(MEMORY[0x1E69AE440]);
      results = [v15 results];
      v42 = [v40 initWithObservations:results];
      v55 = v42;
      v43 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v55 count:1];
      [(MADVIRectangleDetectionRequest *)request setResults:v43];

      results2 = [(MADVIRectangleDetectionRequest *)self->_request results];
      firstObject = [results2 firstObject];
      [firstObject setExecutionNanoseconds:{objc_msgSend(v15, "executionNanoseconds")}];
    }

    else
    {
      v46 = atomic_load(&self->_canceled);
      if (v46)
      {
        v7 = -128;
LABEL_38:

        goto LABEL_39;
      }

      [(MADVIRectangleDetectionRequest *)self->_request setError:v6];
    }

    [v49 reset];
    if (MediaAnalysisLogLevel() >= 6 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "VCPMADVIRectangleDetectionTask complete", buf, 2u);
    }

    v7 = 0;
    goto LABEL_38;
  }

  if (MediaAnalysisLogLevel() >= 4 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "VCPMADVIRectangleDetectionTask image loading failed", buf, 2u);
  }

  v3 = self->_request;
  v4 = MEMORY[0x1E696ABC0];
  v61 = *MEMORY[0x1E696A578];
  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Image loading failed"];
  v62[0] = v5;
  v49 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v62 forKeys:&v61 count:1];
  v6 = [v4 errorWithDomain:*MEMORY[0x1E696A768] code:-18 userInfo:?];
  [(MADVIRectangleDetectionRequest *)v3 setError:v6];
  v7 = 0;
LABEL_40:

  CF<__CVBuffer *>::~CF(&v54);
  return v7;
}

@end