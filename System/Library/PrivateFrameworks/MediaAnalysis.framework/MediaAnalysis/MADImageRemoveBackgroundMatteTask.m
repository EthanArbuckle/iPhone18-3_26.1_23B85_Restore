@interface MADImageRemoveBackgroundMatteTask
+ (id)dependencies;
+ (id)taskWithRequest:(id)a3 imageAsset:(id)a4 andSignpostPayload:(id)a5;
- (MADImageRemoveBackgroundMatteTask)initWithRequest:(id)a3 imageAsset:(id)a4 andSignpostPayload:(id)a5;
- (int)run;
@end

@implementation MADImageRemoveBackgroundMatteTask

- (MADImageRemoveBackgroundMatteTask)initWithRequest:(id)a3 imageAsset:(id)a4 andSignpostPayload:(id)a5
{
  v9 = a3;
  v10 = a4;
  v14.receiver = self;
  v14.super_class = MADImageRemoveBackgroundMatteTask;
  v11 = [(MADImageRemoveBackgroundTask *)&v14 initWithSignpostPayload:a5];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_request, a3);
    objc_storeStrong(&v12->_imageAsset, a4);
  }

  return v12;
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

+ (id)dependencies
{
  v4[1] = *MEMORY[0x1E69E9840];
  v4[0] = objc_opt_class();
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v4 count:1];

  return v2;
}

- (int)run
{
  v113[1] = *MEMORY[0x1E69E9840];
  if (MediaAnalysisLogLevel() >= 6 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
  {
    v3 = [(VCPMADServiceImageAsset *)self->_imageAsset identifier];
    v4 = [(MADRemoveBackgroundMatteRequest *)self->_request cropResult];
    v5 = [(MADRemoveBackgroundMatteRequest *)self->_request inPlace];
    v6 = [(MADRemoveBackgroundMatteRequest *)self->_request instances];
    *buf = 138413058;
    *&buf[4] = v3;
    *&buf[12] = 1024;
    *&buf[14] = v4;
    *&buf[18] = 1024;
    *&buf[20] = v5;
    LOWORD(v110) = 2112;
    *(&v110 + 2) = v6;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "[RemoveBackgroundMatte][%@] running (Crop: %d, In-Place: %d, Instances: %@)...", buf, 0x22u);
  }

  v7 = _os_feature_enabled_impl();
  if (v7)
  {
LABEL_12:
    v11 = [MEMORY[0x1E695DF00] now];
    [v11 timeIntervalSince1970];
    v13 = v12;

    cf = 0;
    v100 = 0;
    if ([(VCPMADServiceImageAsset *)self->_imageAsset loadHighResPixelBuffer:&cf orientation:&v100])
    {
      if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v14 = [(VCPMADServiceImageAsset *)self->_imageAsset identifier];
        *buf = 138412290;
        *&buf[4] = v14;
        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[RemoveBackgroundMatte][%@] image loading failed", buf, 0xCu);
      }

      request = self->_request;
      v16 = MEMORY[0x1E696ABC0];
      v112 = *MEMORY[0x1E696A578];
      v17 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Image loading failed"];
      v113[0] = v17;
      v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v113 forKeys:&v112 count:1];
      v19 = [v16 errorWithDomain:*MEMORY[0x1E696A768] code:-18 userInfo:v18];
      [(MADRemoveBackgroundMatteRequest *)request setError:v19];

      goto LABEL_94;
    }

    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    *&v110 = __Block_byref_object_copy__67;
    *(&v110 + 1) = __Block_byref_object_dispose__67;
    v111 = 0;
    v94 = 0;
    v95 = &v94;
    v96 = 0x3032000000;
    v97 = __Block_byref_object_copy__67;
    v98 = __Block_byref_object_dispose__67;
    v99 = 0;
    v88 = 0;
    v89 = &v88;
    v90 = 0x3032000000;
    v91 = __Block_byref_object_copy__67;
    v92 = __Block_byref_object_dispose__67;
    v93 = 0;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3321888768;
    aBlock[2] = __40__MADImageRemoveBackgroundMatteTask_run__block_invoke;
    aBlock[3] = &unk_1F4968EF8;
    aBlock[4] = self;
    aBlock[5] = buf;
    aBlock[6] = &v94;
    aBlock[7] = &v88;
    v86 = cf;
    if (cf)
    {
      CFRetain(cf);
    }

    v87 = v100;
    v78 = _Block_copy(aBlock);
    v82 = 0.0;
    v83 = 0.0;
    __asm { FMOV            V0.2D, #1.0 }

    v76 = _Q0;
    v84 = _Q0;
    if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
    {
      v25 = [(VCPMADServiceImageAsset *)self->_imageAsset identifier];
      LODWORD(v107) = 138412290;
      *(&v107 + 4) = v25;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "[RemoveBackgroundMatte][%@] Checking for cached mask state...", &v107, 0xCu);
    }

    v26 = +[MADImageRemoveBackgroundResource sharedResource];
    v79 = [v26 cachedMaskState];

    if ([v79 matchesImageAsset:self->_imageAsset])
    {
      if (MediaAnalysisLogLevel() >= 5 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
      {
        v27 = [(VCPMADServiceImageAsset *)self->_imageAsset identifier];
        LODWORD(v107) = 138412290;
        *(&v107 + 4) = v27;
        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "[RemoveBackgroundMatte][%@] Matched cached mask state", &v107, 0xCu);
      }

      v28 = [v79 instanceMaskObservation];
      v78[2]();
      [v79 regionOfInterest];
      v82 = v29;
      v83 = v30;
      v84.width = v31;
      v84.height = v32;
LABEL_52:
      if ([(MADRemoveBackgroundMatteRequest *)self->_request inPlace])
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v44 = 1;
          goto LABEL_59;
        }

        if (MediaAnalysisLogLevel() >= 4 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v107) = 0;
          _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "[RemoveBackgroundMatte] Perform-in-place requested for ineligible input; ignoring", &v107, 2u);
        }
      }

      v44 = 0;
LABEL_59:
      v45 = [(MADRemoveBackgroundMatteRequest *)self->_request instances];
      if (![v45 count])
      {
        if (MediaAnalysisLogLevel() >= 4 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v107) = 0;
          _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "[RemoveBackgroundMatte] No instances specified, using all", &v107, 2u);
        }

        v46 = [v28 allInstances];

        v45 = v46;
      }

      v107 = 0uLL;
      v108 = v76;
      v47 = v89[5];
      v48 = [(MADRemoveBackgroundMatteRequest *)self->_request cropResult];
      v80 = 0;
      v49 = [v28 generateMaskedImageOfInstances:v45 fromRequestHandler:v47 inPlace:v44 croppedToInstancesExtent:v48 returnCropRect:&v107 error:&v80];
      v50 = v80;
      v81 = v49;
      if (v50)
      {
        if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          *v105 = 138412290;
          v106 = v50;
          _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[RemoveBackgroundMatte] Matting failed: %@", v105, 0xCu);
        }

        [(MADRemoveBackgroundMatteRequest *)self->_request setError:v50];
LABEL_92:
        CF<__CVBuffer *>::~CF(&v81);

        goto LABEL_93;
      }

      v77 = CVPixelBufferGetIOSurface(v49);
      if (!v77)
      {
        v64 = self->_request;
        v65 = MEMORY[0x1E696ABC0];
        v102 = *MEMORY[0x1E696A578];
        v66 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to obtain image from Vision"];
        v103 = v66;
        v67 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v103 forKeys:&v102 count:1];
        v68 = [v65 errorWithDomain:*MEMORY[0x1E696A768] code:-18 userInfo:v67];
        [(MADRemoveBackgroundMatteRequest *)v64 setError:v68];

        goto LABEL_88;
      }

      v51 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:CVPixelBufferGetWidth(cf)];
      v52 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:CVPixelBufferGetHeight(cf)];
      v53 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{v100, v52, v51}];
      v54 = v51;
      v55 = v52;
      v56 = v53;
      if (![v54 intValue] || !objc_msgSend(v55, "intValue"))
      {
        v63 = *MEMORY[0x1E695F060];
        v62 = *(MEMORY[0x1E695F060] + 8);
LABEL_87:

        *&v107 = *&v107 + v82 * v63;
        v114.origin.x = *&v107;
        *(&v107 + 1) = *(&v107 + 1) + v83 * v62;
        v114.origin.y = *(&v107 + 1);
        v114.size = v108;
        v116.origin.x = 0.0;
        v116.origin.y = 0.0;
        v116.size.width = v63;
        v116.size.height = v62;
        v115 = CGRectIntersection(v114, v116);
        *&v107 = v115.origin.x;
        *(&v107 + 1) = *&v115.origin.y;
        v108.width = v115.size.width;
        v108.height = v115.size.height;
        [VCPGeometryUtils normalizedRectForRect:"normalizedRectForRect:inBounds:" inBounds:?];
        v69 = self->_request;
        v66 = [objc_alloc(MEMORY[0x1E69AE3B0]) initWithSurface:v77 cropRect:{v70, v71, v72, v73}];
        v104 = v66;
        v67 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v104 count:1];
        [(MADRemoveBackgroundMatteRequest *)v69 setResults:v67];
LABEL_88:

        [v95[5] reset];
        MADPLLogStaticStickerCreation(v13);
        if (MediaAnalysisLogLevel() >= 6 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
        {
          v74 = [(VCPMADServiceImageAsset *)self->_imageAsset identifier];
          *v105 = 138412290;
          v106 = v74;
          _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "[RemoveBackgroundMatte][%@] complete", v105, 0xCu);
        }

        goto LABEL_92;
      }

      if (v56)
      {
        v57 = [v56 unsignedIntValue];
        v58 = v57;
        if (v57 - 9 > 0xFFFFFFF7)
        {
          if (v57 > 4)
          {
            v59 = [v55 intValue];
            v60 = [v54 intValue];
            goto LABEL_86;
          }
        }

        else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
        {
          *v105 = 67109120;
          LODWORD(v106) = v58;
          _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "Orientation value %u invalid, assuming kCGImagePropertyOrientationUp", v105, 8u);
        }
      }

      v59 = [v54 intValue];
      v60 = [v55 intValue];
LABEL_86:
      v62 = v60;
      v63 = v59;
      goto LABEL_87;
    }

    if (MediaAnalysisLogLevel() >= 6)
    {
      v26 = 1;
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
      {
        v33 = [(VCPMADServiceImageAsset *)self->_imageAsset identifier];
        LODWORD(v107) = 138412290;
        *(&v107 + 4) = v33;
        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "[RemoveBackgroundMatte][%@] No matching cached mask state", &v107, 0xCu);
      }
    }

    if ((v7 & 1) == 0)
    {
      v34 = [(VCPMADServiceImageAsset *)self->_imageAsset isSensitive];
      v35 = v34 == 0;

      if (v35)
      {
        v36 = [(MADImageRemoveBackgroundTask *)self computeSensitivityOfPixelBuffer:cf];
        if ([v36 BOOLValue])
        {
          if (MediaAnalysisLogLevel() >= 5 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
          {
            v37 = [(VCPMADServiceImageAsset *)self->_imageAsset identifier];
            LODWORD(v107) = 138412290;
            *(&v107 + 4) = v37;
            _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "[RemoveBackgroundMask][%@] Skipping for ineligible image", &v107, 0xCu);
          }

          [(MADRemoveBackgroundMatteRequest *)self->_request setResults:MEMORY[0x1E695E0F0]];

          goto LABEL_93;
        }
      }
    }

    *&v107 = 0;
    v38 = [(MADRemoveBackgroundMatteRequest *)self->_request imageType];
    if (v38)
    {
      v26 = [(MADRemoveBackgroundMatteRequest *)self->_request imageType];
      if ([v26 integerValue] == 1)
      {

        goto LABEL_45;
      }
    }

    v39 = [(VCPMADServiceImageAsset *)self->_imageAsset isScreenshot];
    v40 = v39;
    if (v38)
    {

      if (!v40)
      {
        goto LABEL_50;
      }
    }

    else if (!v39)
    {
LABEL_50:
      v78[2]();
      v28 = [(MADImageRemoveBackgroundTask *)self generateMaskWithRequestHandler:v89[5] regionOfInterest:&v107 error:v82, v83, v84];
      if (v28)
      {

        goto LABEL_52;
      }

      v61 = self->_request;
      if (v107)
      {
        [(MADRemoveBackgroundMatteRequest *)v61 setError:?];
      }

      else
      {
        [(MADRemoveBackgroundMatteRequest *)v61 setResults:MEMORY[0x1E695E0F0]];
      }

LABEL_82:

LABEL_93:
      CF<__CVBuffer *>::~CF(&v86);
      _Block_object_dispose(&v88, 8);

      _Block_object_dispose(&v94, 8);
      _Block_object_dispose(buf, 8);

LABEL_94:
      CF<__CVBuffer *>::~CF(&cf);
      return 0;
    }

LABEL_45:
    v41 = objc_autoreleasePoolPush();
    v42 = [(MADImageRemoveBackgroundTask *)self computeRegionOfInterest:&v82 pixelBuffer:cf orientation:v100 error:&v107];
    if (!v42)
    {
      v43 = self->_request;
      if (v107)
      {
        [(MADRemoveBackgroundMatteRequest *)v43 setError:?];
      }

      else
      {
        [(MADRemoveBackgroundMatteRequest *)v43 setResults:MEMORY[0x1E695E0F0]];
      }
    }

    objc_autoreleasePoolPop(v41);
    if (!v42)
    {
      goto LABEL_82;
    }

    goto LABEL_50;
  }

  v8 = [(VCPMADServiceImageAsset *)self->_imageAsset isSensitive];
  v9 = v8;
  if (!v8 || ![v8 BOOLValue])
  {

    goto LABEL_12;
  }

  if (MediaAnalysisLogLevel() >= 5 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    v10 = [(VCPMADServiceImageAsset *)self->_imageAsset identifier];
    *buf = 138412290;
    *&buf[4] = v10;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "[RemoveBackgroundMatte][%@] Skipping for ineligible image", buf, 0xCu);
  }

  [(MADRemoveBackgroundMatteRequest *)self->_request setResults:MEMORY[0x1E695E0F0]];

  return 0;
}

void __40__MADImageRemoveBackgroundMatteTask_run__block_invoke(uint64_t a1)
{
  v26 = *MEMORY[0x1E69E9840];
  v2 = +[MADImageRemoveBackgroundResource sharedResource];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  [*(*(*(a1 + 40) + 8) + 40) setMaskOnly:0];
  v5 = +[VCPMADResourceManager sharedManager];
  v6 = [v5 activateResource:*(*(*(a1 + 40) + 8) + 40)];
  v7 = *(*(a1 + 48) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;

  v9 = VCPSignPostLog();
  v10 = os_signpost_id_generate(v9);

  v11 = VCPSignPostLog();
  v12 = v11;
  if (v10 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v11))
  {
    v13 = [*(a1 + 32) signpostPayload];
    v24 = 138412290;
    v25 = v13;
    _os_signpost_emit_with_name_impl(&dword_1C9B70000, v12, OS_SIGNPOST_INTERVAL_BEGIN, v10, "VNImageRequestHandler_init", "%@", &v24, 0xCu);
  }

  v14 = objc_alloc(MEMORY[0x1E69845B8]);
  v15 = *(a1 + 64);
  v16 = *(a1 + 72);
  v17 = [*(*(*(a1 + 40) + 8) + 40) session];
  v18 = [v14 initWithCVPixelBuffer:v15 orientation:v16 options:MEMORY[0x1E695E0F8] session:v17];
  v19 = *(*(a1 + 56) + 8);
  v20 = *(v19 + 40);
  *(v19 + 40) = v18;

  v21 = VCPSignPostLog();
  v22 = v21;
  if (v10 - 1 < 0xFFFFFFFFFFFFFFFELL && os_signpost_enabled(v21))
  {
    v23 = [*(a1 + 32) signpostPayload];
    v24 = 138412290;
    v25 = v23;
    _os_signpost_emit_with_name_impl(&dword_1C9B70000, v22, OS_SIGNPOST_INTERVAL_END, v10, "VNImageRequestHandler_init", "%@", &v24, 0xCu);
  }
}

@end