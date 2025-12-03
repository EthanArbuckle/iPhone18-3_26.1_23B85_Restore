@interface VCPWatchFaceAnalyzer
- (VCPWatchFaceAnalyzer)initWithOptions:(id)options;
- (int)analyzeAsset:(id)asset cancel:(id)cancel results:(id *)results;
@end

@implementation VCPWatchFaceAnalyzer

- (VCPWatchFaceAnalyzer)initWithOptions:(id)options
{
  optionsCopy = options;
  v10.receiver = self;
  v10.super_class = VCPWatchFaceAnalyzer;
  v6 = [(VCPWatchFaceAnalyzer *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_options, options);
    v8 = v7;
  }

  return v7;
}

- (int)analyzeAsset:(id)asset cancel:(id)cancel results:(id *)results
{
  v75 = *MEMORY[0x1E69E9840];
  assetCopy = asset;
  cancelCopy = cancel;
  v9 = cancelCopy;
  if (!cancelCopy || ((cancelCopy[2])(cancelCopy) & 1) == 0)
  {
    defaultManager = [MEMORY[0x1E696AC08] defaultManager];
    if ([defaultManager fileExistsAtPath:@"/tmp/com.apple.mediaanalysisd/"])
    {
      v41 = 0;
    }

    else
    {
      v56 = 0;
      v11 = [defaultManager createDirectoryAtPath:@"/tmp/com.apple.mediaanalysisd/" withIntermediateDirectories:1 attributes:0 error:&v56];
      v41 = v56;
      if ((v11 & 1) == 0)
      {
        if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          v31 = [v41 description];
          LODWORD(buf) = 138412290;
          *(&buf + 4) = v31;
          _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Failed to create resource file cache directory (%@)", &buf, 0xCu);
        }

        v10 = -18;
        goto LABEL_39;
      }
    }

    v12 = MEMORY[0x1E696AEC0];
    uUID = [MEMORY[0x1E696AFB0] UUID];
    uUIDString = [uUID UUIDString];
    v40 = [v12 stringWithFormat:@"%@wf-%@", @"/tmp/com.apple.mediaanalysisd/", uUIDString];

    v43 = [objc_alloc(MEMORY[0x1E695DFF8]) initFileURLWithPath:v40 isDirectory:1];
    defaultManager2 = [MEMORY[0x1E696AC08] defaultManager];
    v55 = 0;
    [defaultManager2 createDirectoryAtURL:v43 withIntermediateDirectories:1 attributes:0 error:&v55];
    v16 = v55;

    if (v16)
    {
      if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        LODWORD(buf) = 138412290;
        *(&buf + 4) = v16;
        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Failed to create directory for watchface export: %@", &buf, 0xCu);
      }

      v10 = -36;
      goto LABEL_38;
    }

    resultsCopy = results;
    *&buf = 0;
    *(&buf + 1) = &buf;
    v67 = 0x3032000000;
    v68 = __Block_byref_object_copy__68;
    v69 = __Block_byref_object_dispose__68;
    v70 = 0;
    v49 = 0;
    v50 = &v49;
    v51 = 0x3032000000;
    v52 = __Block_byref_object_copy__68;
    v53 = __Block_byref_object_dispose__68;
    v54 = 0;
    v18 = dispatch_semaphore_create(0);
    options = self->_options;
    v45[0] = MEMORY[0x1E69E9820];
    v45[1] = 3221225472;
    v45[2] = __52__VCPWatchFaceAnalyzer_analyzeAsset_cancel_results___block_invoke;
    v45[3] = &unk_1E8351848;
    p_buf = &buf;
    v48 = &v49;
    v20 = v18;
    v46 = v20;
    v21 = assetCopy;
    v22 = v43;
    v23 = options;
    v24 = v45;
    v57 = 0;
    v58 = &v57;
    v59 = 0x2020000000;
    v25 = getPFLGeneratePhotosFaceWithOptionsSymbolLoc(void)::ptr;
    v60 = getPFLGeneratePhotosFaceWithOptionsSymbolLoc(void)::ptr;
    if (!getPFLGeneratePhotosFaceWithOptionsSymbolLoc(void)::ptr)
    {
      *&v71 = MEMORY[0x1E69E9820];
      *(&v71 + 1) = 3221225472;
      v72 = ___ZL44getPFLGeneratePhotosFaceWithOptionsSymbolLocv_block_invoke;
      v73 = &unk_1E834C0F0;
      v74 = &v57;
      v26 = PhotosFaceLayoutLibrary();
      v27 = dlsym(v26, "PFLGeneratePhotosFaceWithOptions");
      *(v74[1] + 24) = v27;
      getPFLGeneratePhotosFaceWithOptionsSymbolLoc(void)::ptr = *(v74[1] + 24);
      v25 = v58[3];
    }

    _Block_object_dispose(&v57, 8);
    if (v25)
    {
      v25(v21, v22, v23, v24);

      v28 = dispatch_time(0, 100000000);
      if (!dispatch_semaphore_wait(v20, v28))
      {
LABEL_19:
        if (*(*(&buf + 1) + 40))
        {
          if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            v30 = [*(*(&buf + 1) + 40) description];
            LODWORD(v71) = 138412290;
            *(&v71 + 4) = v30;
            _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Error running exportWatchFaceForAsset: %@", &v71, 0xCu);
          }
        }

        else
        {
          v32 = v50[5];
          if (v32)
          {
            v64 = @"WatchFaceResults";
            v61[0] = @"watchFacePath";
            v61[1] = @"watchFaceData";
            v62[0] = v40;
            v62[1] = v32;
            v33 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v62 forKeys:v61 count:2];
            v63 = v33;
            v34 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v63 count:1];
            v65 = v34;
            *resultsCopy = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v65 forKeys:&v64 count:1];

            v10 = 0;
LABEL_37:

            _Block_object_dispose(&v49, 8);
            _Block_object_dispose(&buf, 8);

LABEL_38:
LABEL_39:

            goto LABEL_40;
          }

          if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            LOWORD(v71) = 0;
            _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Nil Photo Data for asset", &v71, 2u);
          }
        }

        v10 = -18;
        goto LABEL_37;
      }

      while (!v9 || !v9[2](v9))
      {
        v29 = dispatch_time(0, 100000000);
        if (!dispatch_semaphore_wait(v20, v29))
        {
          goto LABEL_19;
        }
      }

      v35 = v21;
      v57 = 0;
      v58 = &v57;
      v59 = 0x2020000000;
      v36 = getPFLCancelGeneratingPhotosFaceForAssetSymbolLoc(void)::ptr;
      v60 = getPFLCancelGeneratingPhotosFaceForAssetSymbolLoc(void)::ptr;
      if (!getPFLCancelGeneratingPhotosFaceForAssetSymbolLoc(void)::ptr)
      {
        *&v71 = MEMORY[0x1E69E9820];
        *(&v71 + 1) = 3221225472;
        v72 = ___ZL49getPFLCancelGeneratingPhotosFaceForAssetSymbolLocv_block_invoke;
        v73 = &unk_1E834C0F0;
        v74 = &v57;
        v37 = PhotosFaceLayoutLibrary();
        v38 = dlsym(v37, "PFLCancelGeneratingPhotosFaceForAsset");
        *(v74[1] + 24) = v38;
        getPFLCancelGeneratingPhotosFaceForAssetSymbolLoc(void)::ptr = *(v74[1] + 24);
        v36 = v58[3];
      }

      _Block_object_dispose(&v57, 8);
      if (v36)
      {
        v36(v35);

        v10 = -128;
        goto LABEL_37;
      }
    }

    dlerror();
    abort_report_np();
    __break(1u);
  }

  v10 = -128;
LABEL_40:

  return v10;
}

void __52__VCPWatchFaceAnalyzer_analyzeAsset_cancel_results___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a3);
  v9 = a3;
  v6 = *(*(a1 + 48) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
  v8 = v5;

  dispatch_semaphore_signal(*(a1 + 32));
}

@end