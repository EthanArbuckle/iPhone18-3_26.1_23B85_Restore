@interface VCPMADVIMachineReadableCodeDetectionTask
+ (id)taskWithRequest:(id)request imageAsset:(id)asset andSignpostPayload:(id)payload;
- (BOOL)canReuseResultsForRequest;
- (VCPMADVIMachineReadableCodeDetectionTask)initWithRequest:(id)request imageAsset:(id)asset andSignpostPayload:(id)payload;
- (int)run;
- (void)cancel;
@end

@implementation VCPMADVIMachineReadableCodeDetectionTask

- (VCPMADVIMachineReadableCodeDetectionTask)initWithRequest:(id)request imageAsset:(id)asset andSignpostPayload:(id)payload
{
  requestCopy = request;
  assetCopy = asset;
  payloadCopy = payload;
  v17.receiver = self;
  v17.super_class = VCPMADVIMachineReadableCodeDetectionTask;
  v12 = [(VCPMADVIMachineReadableCodeDetectionTask *)&v17 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_request, request);
    objc_storeStrong(&v13->_imageAsset, asset);
    objc_storeStrong(&v13->_signpostPayload, payload);
    v14 = dispatch_queue_create("VCPMADVIMachineReadableCodeDetectionTask", 0);
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
  block[2] = __50__VCPMADVIMachineReadableCodeDetectionTask_cancel__block_invoke;
  block[3] = &unk_1E834BDC0;
  block[4] = self;
  dispatch_sync(cancelQueue, block);
}

void __50__VCPMADVIMachineReadableCodeDetectionTask_cancel__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 48));
  if (WeakRetained)
  {
    [WeakRetained cancel];
  }

  atomic_store(1u, (*(a1 + 32) + 40));
}

- (BOOL)canReuseResultsForRequest
{
  symbologies = [(MADVIMachineReadableCodeDetectionRequest *)self->_request symbologies];
  if ([symbologies count] == 2)
  {
    symbologies2 = [(MADVIMachineReadableCodeDetectionRequest *)self->_request symbologies];
    if ([symbologies2 containsObject:*MEMORY[0x1E69848C0]])
    {
      symbologies3 = [(MADVIMachineReadableCodeDetectionRequest *)self->_request symbologies];
      v6 = [symbologies3 containsObject:*MEMORY[0x1E69848A0]];
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (int)run
{
  v72[1] = *MEMORY[0x1E69E9840];
  if (MediaAnalysisLogLevel() >= 6 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "VCPMADVIMachineReadableCodeDetectionTask running...", buf, 2u);
  }

  if (!VCPPhotosMRCCachingEnabled() || ([(VCPMADServiceImageAsset *)self->_imageAsset barcodeObservations], (v3 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v63 = 0;
    v62 = 0;
    if ([(VCPMADServiceImageAsset *)self->_imageAsset loadPixelBuffer:&v63 orientation:&v62])
    {
      if (MediaAnalysisLogLevel() >= 4 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "VCPMADVIMachineReadableCodeDetectionTask image loading failed", buf, 2u);
      }

      request = self->_request;
      v9 = MEMORY[0x1E696ABC0];
      v70 = *MEMORY[0x1E696A578];
      v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Image loading failed"];
      v71 = v10;
      v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v71 forKeys:&v70 count:1];
      v12 = [v9 errorWithDomain:*MEMORY[0x1E696A768] code:-18 userInfo:v11];
      [(MADVIMachineReadableCodeDetectionRequest *)request setError:v12];
      v7 = 0;
      goto LABEL_51;
    }

    v10 = +[VCPMADMachineReadableCodeResource sharedResource];
    v13 = +[VCPMADResourceManager sharedManager];
    v11 = [v13 activateResource:v10];

    mad_defaultRequest = [MEMORY[0x1E69844A0] mad_defaultRequest];
    if (!mad_defaultRequest)
    {
      if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Failed to configure VNDetectBarcodesRequest", buf, 2u);
      }

      v20 = self->_request;
      v21 = MEMORY[0x1E696ABC0];
      v68 = *MEMORY[0x1E696A578];
      v22 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to configure VNDetectBarcodesRequest"];
      v69 = v22;
      v23 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v69 forKeys:&v68 count:1];
      v24 = [v21 errorWithDomain:*MEMORY[0x1E696A768] code:-18 userInfo:v23];
      [(MADVIMachineReadableCodeDetectionRequest *)v20 setError:v24];

      v12 = 0;
      v7 = 0;
      goto LABEL_50;
    }

    symbologies = [(MADVIMachineReadableCodeDetectionRequest *)self->_request symbologies];
    v15 = [symbologies count] == 0;

    if (!v15)
    {
      symbologies2 = [(MADVIMachineReadableCodeDetectionRequest *)self->_request symbologies];
      [mad_defaultRequest setSymbologies:symbologies2];
    }

    cancelQueue = self->_cancelQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __47__VCPMADVIMachineReadableCodeDetectionTask_run__block_invoke;
    block[3] = &unk_1E834D238;
    block[4] = self;
    v18 = mad_defaultRequest;
    v61 = v18;
    dispatch_sync(cancelQueue, block);
    v19 = atomic_load(&self->_canceled);
    if (v19)
    {
      v12 = 0;
      v7 = -128;
LABEL_49:

LABEL_50:
LABEL_51:

      CF<__CVBuffer *>::~CF(&v63);
      return v7;
    }

    v25 = VCPSignPostLog();
    v26 = os_signpost_id_generate(v25);

    v27 = VCPSignPostLog();
    v28 = v27;
    if (v26 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v27))
    {
      signpostPayload = self->_signpostPayload;
      *buf = 138412290;
      v67 = signpostPayload;
      _os_signpost_emit_with_name_impl(&dword_1C9B70000, v28, OS_SIGNPOST_INTERVAL_BEGIN, v26, "VNImageRequestHandler_init", "%@", buf, 0xCu);
    }

    v30 = objc_alloc(MEMORY[0x1E69845B8]);
    v31 = v63;
    v32 = v62;
    session = [v10 session];
    v57 = [v30 initWithCVPixelBuffer:v31 orientation:v32 options:MEMORY[0x1E695E0F8] session:session];

    v34 = VCPSignPostLog();
    v35 = v34;
    if (v26 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v34))
    {
      v36 = self->_signpostPayload;
      *buf = 138412290;
      v67 = v36;
      _os_signpost_emit_with_name_impl(&dword_1C9B70000, v35, OS_SIGNPOST_INTERVAL_END, v26, "VNImageRequestHandler_init", "%@", buf, 0xCu);
    }

    v37 = VCPSignPostLog();
    v38 = os_signpost_id_generate(v37);

    v39 = VCPSignPostLog();
    v40 = v39;
    if (v38 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v39))
    {
      v41 = self->_signpostPayload;
      *buf = 138412290;
      v67 = v41;
      _os_signpost_emit_with_name_impl(&dword_1C9B70000, v40, OS_SIGNPOST_INTERVAL_BEGIN, v38, "VNImageRequestHandler_performRequests", "%@", buf, 0xCu);
    }

    v65 = v18;
    v42 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v65 count:1];
    v59 = 0;
    v43 = [v57 performRequests:v42 error:&v59];
    v12 = v59;

    v44 = VCPSignPostLog();
    v45 = v44;
    if (v38 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v44))
    {
      v46 = self->_signpostPayload;
      *buf = 138412290;
      v67 = v46;
      _os_signpost_emit_with_name_impl(&dword_1C9B70000, v45, OS_SIGNPOST_INTERVAL_END, v38, "VNImageRequestHandler_performRequests", "%@", buf, 0xCu);
    }

    if (v43)
    {
      v47 = self->_request;
      v48 = objc_alloc(MEMORY[0x1E69AE430]);
      results = [v18 results];
      v50 = [v48 initWithObservations:results];
      v64 = v50;
      v51 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v64 count:1];
      [(MADVIMachineReadableCodeDetectionRequest *)v47 setResults:v51];

      results2 = [(MADVIMachineReadableCodeDetectionRequest *)self->_request results];
      firstObject = [results2 firstObject];
      [firstObject setExecutionNanoseconds:{objc_msgSend(v18, "executionNanoseconds")}];

      if (VCPPhotosMRCCachingEnabled())
      {
        if ([(VCPMADVIMachineReadableCodeDetectionTask *)self canReuseResultsForRequest])
        {
          results3 = [v18 results];
          [(VCPMADServiceImageAsset *)self->_imageAsset setBarcodeObservations:results3];
        }

        else if (MediaAnalysisLogLevel() >= 5 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "[MRC] Custom request configuration; not persisting result", buf, 2u);
        }
      }
    }

    else
    {
      v55 = atomic_load(&self->_canceled);
      if (v55)
      {
        v7 = -128;
LABEL_48:

        goto LABEL_49;
      }

      [(MADVIMachineReadableCodeDetectionRequest *)self->_request setError:v12];
    }

    [v11 reset];
    if (MediaAnalysisLogLevel() >= 6 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "VCPMADVIMachineReadableCodeDetectionTask complete", buf, 2u);
    }

    v7 = 0;
    goto LABEL_48;
  }

  if (![(VCPMADVIMachineReadableCodeDetectionTask *)self canReuseResultsForRequest]&& MediaAnalysisLogLevel() >= 4 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "[MRC] Custom request configuration; overriding to use cached data", buf, 2u);
  }

  v4 = self->_request;
  v5 = [objc_alloc(MEMORY[0x1E69AE430]) initWithObservations:v3];
  v72[0] = v5;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v72 count:1];
  [(MADVIMachineReadableCodeDetectionRequest *)v4 setResults:v6];

  return 0;
}

@end