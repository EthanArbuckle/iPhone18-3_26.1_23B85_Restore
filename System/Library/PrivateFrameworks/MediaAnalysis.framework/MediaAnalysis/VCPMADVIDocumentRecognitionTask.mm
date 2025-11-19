@interface VCPMADVIDocumentRecognitionTask
+ (id)taskWithRequest:(id)a3 imageAsset:(id)a4 andSignpostPayload:(id)a5;
- (BOOL)canReuseResultsForRequest;
- (VCPMADVIDocumentRecognitionTask)initWithRequest:(id)a3 imageAsset:(id)a4 andSignpostPayload:(id)a5;
- (int)run;
- (void)cancel;
@end

@implementation VCPMADVIDocumentRecognitionTask

- (VCPMADVIDocumentRecognitionTask)initWithRequest:(id)a3 imageAsset:(id)a4 andSignpostPayload:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v17.receiver = self;
  v17.super_class = VCPMADVIDocumentRecognitionTask;
  v12 = [(VCPMADVIDocumentRecognitionTask *)&v17 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_request, a3);
    objc_storeStrong(&v13->_imageAsset, a4);
    objc_storeStrong(&v13->_signpostPayload, a5);
    v14 = dispatch_queue_create("VCPMADVIDocumentRecognitionTask", 0);
    cancelQueue = v13->_cancelQueue;
    v13->_cancelQueue = v14;
  }

  return v13;
}

+ (id)taskWithRequest:(id)a3 imageAsset:(id)a4 andSignpostPayload:(id)a5
{
  v21 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if ([v8 isMemberOfClass:objc_opt_class()])
  {
    v11 = [[a1 alloc] initWithRequest:v8 imageAsset:v9 andSignpostPayload:v10];
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
  block[2] = __41__VCPMADVIDocumentRecognitionTask_cancel__block_invoke;
  block[3] = &unk_1E834BDC0;
  block[4] = self;
  dispatch_sync(cancelQueue, block);
}

void __41__VCPMADVIDocumentRecognitionTask_cancel__block_invoke(uint64_t a1)
{
  atomic_store(1u, (*(a1 + 32) + 48));
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 56));
  if (WeakRetained)
  {
    [WeakRetained cancel];
  }
}

- (BOOL)canReuseResultsForRequest
{
  if ([(MADVIDocumentRecognitionRequest *)self->_request maximumCandidateCount]!= 3)
  {
    goto LABEL_6;
  }

  v3 = [(MADVIDocumentRecognitionRequest *)self->_request usesLanguageDetection];
  if (v3)
  {
    v3 = [(MADVIDocumentRecognitionRequest *)self->_request usesLanguageCorrection];
    if (v3)
    {
      if (([(MADVIDocumentRecognitionRequest *)self->_request usesFormFieldDetection]& 1) != 0 || [(MADVIDocumentRecognitionRequest *)self->_request recognitionLevel])
      {
LABEL_6:
        LOBYTE(v3) = 0;
        return v3;
      }

      [(MADVIDocumentRecognitionRequest *)self->_request minimumTextHeight];
      LOBYTE(v3) = v4 == 0.0;
    }
  }

  return v3;
}

- (int)run
{
  v70[1] = *MEMORY[0x1E69E9840];
  if (MediaAnalysisLogLevel() >= 6 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "VCPMADVIDocumentRecognitionTask running...", buf, 2u);
  }

  v3 = [(VCPMADServiceImageAsset *)self->_imageAsset documentObservations];
  if (!v3)
  {
    v61 = 0;
    v60 = 0;
    if ([(VCPMADServiceImageAsset *)self->_imageAsset loadPixelBuffer:&v61 orientation:&v60])
    {
      if (MediaAnalysisLogLevel() >= 4 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "VCPMADVIDocumentRecognitionTask image loading failed", buf, 2u);
      }

      request = self->_request;
      v9 = MEMORY[0x1E696ABC0];
      v68 = *MEMORY[0x1E696A578];
      v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Image loading failed"];
      v69 = v10;
      v56 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v69 forKeys:&v68 count:1];
      v11 = [v9 errorWithDomain:*MEMORY[0x1E696A768] code:-18 userInfo:?];
      [(MADVIDocumentRecognitionRequest *)request setError:v11];
      v7 = 0;
      goto LABEL_50;
    }

    v10 = +[VCPMADVIDocumentRecognitionResource sharedResource];
    v12 = +[VCPMADResourceManager sharedManager];
    v56 = [v12 activateResource:v10];

    v13 = [MEMORY[0x1E6984628] mad_defaultRequest];
    v14 = [(MADVIDocumentRecognitionRequest *)self->_request languages];
    v15 = v14 == 0;

    if (!v15)
    {
      v16 = [(MADVIDocumentRecognitionRequest *)self->_request languages];
      [v13 setRecognitionLanguages:v16];
    }

    [v13 setMaximumCandidateCount:{-[MADVIDocumentRecognitionRequest maximumCandidateCount](self->_request, "maximumCandidateCount")}];
    [v13 setUsesLanguageDetection:{-[MADVIDocumentRecognitionRequest usesLanguageDetection](self->_request, "usesLanguageDetection")}];
    [v13 setUsesLanguageCorrection:{-[MADVIDocumentRecognitionRequest usesLanguageCorrection](self->_request, "usesLanguageCorrection")}];
    [v13 setRecognitionLevel:{-[MADVIDocumentRecognitionRequest recognitionLevel](self->_request, "recognitionLevel")}];
    [(MADVIDocumentRecognitionRequest *)self->_request minimumTextHeight];
    [v13 setMinimumTextHeight:?];
    [v13 setUsesFormFieldDetection:{-[MADVIDocumentRecognitionRequest usesFormFieldDetection](self->_request, "usesFormFieldDetection")}];
    if (self->_preferredMetalDevice)
    {
      v17 = [MEMORY[0x1E6984608] deviceForMetalDevice:?];
      [v13 setProcessingDevice:v17];

      if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
      {
        v18 = [v13 processingDevice];
        preferredMetalDevice = self->_preferredMetalDevice;
        *buf = 138412546;
        v65 = v18;
        v66 = 2112;
        v67 = preferredMetalDevice;
        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "[DocumentRecognition] Set VNProcessingDevice: %@ (%@)", buf, 0x16u);
      }
    }

    cancelQueue = self->_cancelQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __38__VCPMADVIDocumentRecognitionTask_run__block_invoke;
    block[3] = &unk_1E834D238;
    block[4] = self;
    v55 = v13;
    v59 = v55;
    dispatch_sync(cancelQueue, block);
    v21 = atomic_load(&self->_canceled);
    if (v21)
    {
      v11 = 0;
      v7 = -128;
LABEL_49:

LABEL_50:
      CF<__CVBuffer *>::~CF(&v61);
      goto LABEL_51;
    }

    v22 = VCPSignPostLog();
    v23 = os_signpost_id_generate(v22);

    v24 = VCPSignPostLog();
    v25 = v24;
    if (v23 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v24))
    {
      signpostPayload = self->_signpostPayload;
      *buf = 138412290;
      v65 = signpostPayload;
      _os_signpost_emit_with_name_impl(&dword_1C9B70000, v25, OS_SIGNPOST_INTERVAL_BEGIN, v23, "VNImageRequestHandler_init", "%@", buf, 0xCu);
    }

    v27 = objc_alloc(MEMORY[0x1E69845B8]);
    v28 = v61;
    v29 = v60;
    v30 = [v10 session];
    v54 = [v27 initWithCVPixelBuffer:v28 orientation:v29 options:MEMORY[0x1E695E0F8] session:v30];

    v31 = VCPSignPostLog();
    v32 = v31;
    if (v23 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v31))
    {
      v33 = self->_signpostPayload;
      *buf = 138412290;
      v65 = v33;
      _os_signpost_emit_with_name_impl(&dword_1C9B70000, v32, OS_SIGNPOST_INTERVAL_END, v23, "VNImageRequestHandler_init", "%@", buf, 0xCu);
    }

    v34 = VCPSignPostLog();
    v35 = os_signpost_id_generate(v34);

    v36 = VCPSignPostLog();
    v37 = v36;
    if (v35 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v36))
    {
      v38 = self->_signpostPayload;
      *buf = 138412290;
      v65 = v38;
      _os_signpost_emit_with_name_impl(&dword_1C9B70000, v37, OS_SIGNPOST_INTERVAL_BEGIN, v35, "VNImageRequestHandler_performRequests", "%@", buf, 0xCu);
    }

    v63 = v55;
    v39 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v63 count:1];
    v57 = 0;
    v40 = [v54 performRequests:v39 error:&v57];
    v11 = v57;

    v41 = VCPSignPostLog();
    v42 = v41;
    if (v35 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v41))
    {
      v43 = self->_signpostPayload;
      *buf = 138412290;
      v65 = v43;
      _os_signpost_emit_with_name_impl(&dword_1C9B70000, v42, OS_SIGNPOST_INTERVAL_END, v35, "VNImageRequestHandler_performRequests", "%@", buf, 0xCu);
    }

    if (v40)
    {
      v44 = self->_request;
      v45 = objc_alloc(MEMORY[0x1E69AE410]);
      v46 = [v55 results];
      v47 = [v45 initWithObservations:v46];
      v62 = v47;
      v48 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v62 count:1];
      [(MADVIDocumentRecognitionRequest *)v44 setResults:v48];

      v49 = [(MADVIDocumentRecognitionRequest *)self->_request results];
      v50 = [v49 firstObject];
      [v50 setExecutionNanoseconds:{objc_msgSend(v55, "executionNanoseconds")}];

      if ([(VCPMADVIDocumentRecognitionTask *)self canReuseResultsForRequest])
      {
        v51 = [v55 results];
        [(VCPMADServiceImageAsset *)self->_imageAsset setDocumentObservations:v51];
      }

      else if (MediaAnalysisLogLevel() >= 5 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "[DocumentRecognition] Custom request configuration; not persisting result", buf, 2u);
      }
    }

    else
    {
      v52 = atomic_load(&self->_canceled);
      if (v52)
      {
        v7 = -128;
LABEL_48:

        goto LABEL_49;
      }

      [(MADVIDocumentRecognitionRequest *)self->_request setError:v11];
    }

    [v56 reset];
    if (MediaAnalysisLogLevel() >= 6 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "VCPMADVIDocumentRecognitionTask complete", buf, 2u);
    }

    v7 = 0;
    goto LABEL_48;
  }

  if (![(VCPMADVIDocumentRecognitionTask *)self canReuseResultsForRequest]&& MediaAnalysisLogLevel() >= 4 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "[DocumentRecognition] Custom request configuration; overriding to use cached data", buf, 2u);
  }

  v4 = self->_request;
  v5 = [objc_alloc(MEMORY[0x1E69AE410]) initWithObservations:v3];
  v70[0] = v5;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v70 count:1];
  [(MADVIDocumentRecognitionRequest *)v4 setResults:v6];

  v7 = 0;
LABEL_51:

  return v7;
}

@end