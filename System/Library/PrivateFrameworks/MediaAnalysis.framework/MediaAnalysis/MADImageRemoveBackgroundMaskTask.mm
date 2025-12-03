@interface MADImageRemoveBackgroundMaskTask
+ (id)taskWithRequest:(id)request imageAsset:(id)asset andSignpostPayload:(id)payload;
- (MADImageRemoveBackgroundMaskTask)initWithRequest:(id)request imageAsset:(id)asset andSignpostPayload:(id)payload;
- (int)run;
@end

@implementation MADImageRemoveBackgroundMaskTask

- (MADImageRemoveBackgroundMaskTask)initWithRequest:(id)request imageAsset:(id)asset andSignpostPayload:(id)payload
{
  requestCopy = request;
  assetCopy = asset;
  v14.receiver = self;
  v14.super_class = MADImageRemoveBackgroundMaskTask;
  v11 = [(MADImageRemoveBackgroundTask *)&v14 initWithSignpostPayload:payload];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_request, request);
    objc_storeStrong(&v12->_imageAsset, asset);
  }

  return v12;
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
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "[RemoveBackgroundMask] Incompatible request (%@) specified to %@", &v17, 0x16u);
    }

    v11 = 0;
  }

  return v11;
}

- (int)run
{
  v152[1] = *MEMORY[0x1E69E9840];
  if (MediaAnalysisLogLevel() >= 6 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
  {
    identifier = [(VCPMADServiceImageAsset *)self->_imageAsset identifier];
    LODWORD(buf) = 138412290;
    *(&buf + 4) = identifier;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "[RemoveBackgroundMask][%@] running...", &buf, 0xCu);
  }

  v4 = _os_feature_enabled_impl();
  if (v4)
  {
LABEL_12:
    if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
    {
      identifier2 = [(VCPMADServiceImageAsset *)self->_imageAsset identifier];
      LODWORD(buf) = 138412290;
      *(&buf + 4) = identifier2;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "[RemoveBackgroundMask][%@] Resetting cached mask state", &buf, 0xCu);
    }

    v9 = +[MADImageRemoveBackgroundResource sharedResource];
    [v9 setCachedMaskState:0];

    v125 = 0;
    v124 = 0;
    if ([(VCPMADServiceImageAsset *)self->_imageAsset loadPixelBuffer:&v125 orientation:&v124])
    {
      if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        identifier3 = [(VCPMADServiceImageAsset *)self->_imageAsset identifier];
        LODWORD(buf) = 138412290;
        *(&buf + 4) = identifier3;
        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[RemoveBackgroundMask][%@] Image loading failed", &buf, 0xCu);
      }

      request = self->_request;
      v12 = MEMORY[0x1E696ABC0];
      v151 = *MEMORY[0x1E696A578];
      v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Image loading failed"];
      v152[0] = v13;
      v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v152 forKeys:&v151 count:1];
      v15 = [v12 errorWithDomain:*MEMORY[0x1E696A768] code:-18 userInfo:v14];
      [(MADRemoveBackgroundMaskRequest *)request setError:v15];

      goto LABEL_99;
    }

    if ([(MADImageRemoveBackgroundTask *)self canceled])
    {
      if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        identifier4 = [(VCPMADServiceImageAsset *)self->_imageAsset identifier];
        LODWORD(buf) = 138412290;
        *(&buf + 4) = identifier4;
        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[RemoveBackgroundMask][%@] Task request was canceled", &buf, 0xCu);
      }

      v17 = self->_request;
      v18 = MEMORY[0x1E696ABC0];
      v149 = *MEMORY[0x1E696A578];
      v19 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Task request was canceled"];
      v150 = v19;
      v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v150 forKeys:&v149 count:1];
      v21 = [v18 errorWithDomain:*MEMORY[0x1E696A768] code:-128 userInfo:v20];
      [(MADRemoveBackgroundMaskRequest *)v17 setError:v21];

      goto LABEL_99;
    }

    if ((v4 & 1) == 0)
    {
      isSensitive = [(VCPMADServiceImageAsset *)self->_imageAsset isSensitive];
      v23 = isSensitive == 0;

      if (v23)
      {
        v24 = [(MADImageRemoveBackgroundTask *)self computeSensitivityOfPixelBuffer:v125];
        if ([v24 BOOLValue])
        {
          if (MediaAnalysisLogLevel() >= 5 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
          {
            identifier5 = [(VCPMADServiceImageAsset *)self->_imageAsset identifier];
            LODWORD(buf) = 138412290;
            *(&buf + 4) = identifier5;
            _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "[RemoveBackgroundMask][%@] Skipping for ineligible image", &buf, 0xCu);
          }

          [(MADRemoveBackgroundMaskRequest *)self->_request setResults:MEMORY[0x1E695E0F0]];

          goto LABEL_99;
        }
      }
    }

    if ([(MADImageRemoveBackgroundTask *)self canceled])
    {
      if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        identifier6 = [(VCPMADServiceImageAsset *)self->_imageAsset identifier];
        LODWORD(buf) = 138412290;
        *(&buf + 4) = identifier6;
        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[RemoveBackgroundMask][%@] Task request was canceled", &buf, 0xCu);
      }

      v27 = self->_request;
      v28 = MEMORY[0x1E696ABC0];
      v147 = *MEMORY[0x1E696A578];
      v29 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Task request was canceled"];
      v148 = v29;
      v30 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v148 forKeys:&v147 count:1];
      v31 = [v28 errorWithDomain:*MEMORY[0x1E696A768] code:-128 userInfo:v30];
      [(MADRemoveBackgroundMaskRequest *)v27 setError:v31];

      goto LABEL_99;
    }

    location = 0;
    buf = 0uLL;
    __asm { FMOV            V0.2D, #1.0 }

    v146 = _Q0;
    imageType = [(MADRemoveBackgroundMaskRequest *)self->_request imageType];
    if (imageType && (-[MADRemoveBackgroundMaskRequest imageType](self->_request, "imageType"), v9 = objc_claimAutoreleasedReturnValue(), [v9 integerValue] == 1))
    {
    }

    else
    {
      isScreenshot = [(VCPMADServiceImageAsset *)self->_imageAsset isScreenshot];
      v39 = isScreenshot;
      if (imageType)
      {

        if (!v39)
        {
          goto LABEL_50;
        }
      }

      else if (!isScreenshot)
      {
        goto LABEL_50;
      }
    }

    v40 = objc_autoreleasePoolPush();
    v41 = [(MADImageRemoveBackgroundTask *)self computeRegionOfInterest:&buf pixelBuffer:v125 orientation:v124 error:&location];
    if (!v41)
    {
      v42 = self->_request;
      if (location)
      {
        [(MADRemoveBackgroundMaskRequest *)v42 setError:?];
      }

      else
      {
        [(MADRemoveBackgroundMaskRequest *)v42 setResults:MEMORY[0x1E695E0F0]];
      }
    }

    objc_autoreleasePoolPop(v40);
    if (!v41)
    {
LABEL_98:

LABEL_99:
      CF<__CVBuffer *>::~CF(&v125);
      return 0;
    }

LABEL_50:
    v120 = +[MADImageRemoveBackgroundResource sharedResource];
    [v120 setMaskOnly:1];
    v43 = +[VCPMADResourceManager sharedManager];
    v119 = [v43 activateResource:v120];

    v44 = VCPSignPostLog();
    v45 = os_signpost_id_generate(v44);

    v46 = VCPSignPostLog();
    v47 = v46;
    if (v45 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v46))
    {
      signpostPayload = [(MADImageRemoveBackgroundTask *)self signpostPayload];
      *v126 = 138412290;
      v127 = signpostPayload;
      _os_signpost_emit_with_name_impl(&dword_1C9B70000, v47, OS_SIGNPOST_INTERVAL_BEGIN, v45, "VNImageRequestHandler_init", "%@", v126, 0xCu);
    }

    v49 = objc_alloc(MEMORY[0x1E69845B8]);
    v50 = v125;
    v51 = v124;
    session = [v120 session];
    v118 = [v49 initWithCVPixelBuffer:v50 orientation:v51 options:MEMORY[0x1E695E0F8] session:session];

    v53 = VCPSignPostLog();
    v54 = v53;
    if (v45 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v53))
    {
      signpostPayload2 = [(MADImageRemoveBackgroundTask *)self signpostPayload];
      *v126 = 138412290;
      v127 = signpostPayload2;
      _os_signpost_emit_with_name_impl(&dword_1C9B70000, v54, OS_SIGNPOST_INTERVAL_END, v45, "VNImageRequestHandler_init", "%@", v126, 0xCu);
    }

    if ([(MADImageRemoveBackgroundTask *)self canceled])
    {
      if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        identifier7 = [(VCPMADServiceImageAsset *)self->_imageAsset identifier];
        *v126 = 138412290;
        v127 = identifier7;
        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[RemoveBackgroundMask][%@] Task request was canceled", v126, 0xCu);
      }

      v57 = self->_request;
      v58 = MEMORY[0x1E696ABC0];
      v143 = *MEMORY[0x1E696A578];
      v59 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Task request was canceled"];
      v144 = v59;
      v60 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v144 forKeys:&v143 count:1];
      v61 = [v58 errorWithDomain:*MEMORY[0x1E696A768] code:-128 userInfo:v60];
      [(MADRemoveBackgroundMaskRequest *)v57 setError:v61];

      [v119 reset];
    }

    else
    {
      v146 = [(MADImageRemoveBackgroundTask *)self generateMaskWithRequestHandler:v118 regionOfInterest:&location error:buf, v146];
      v63 = v146;
      if (v146)
      {
        v116 = CVPixelBufferGetIOSurface([v146 instanceMask]);
        if (v116)
        {
          dictionary = [MEMORY[0x1E695DF90] dictionary];
          allInstances = [v63 allInstances];
          firstIndex = [allInstances firstIndex];

          if (firstIndex == 0x7FFFFFFFFFFFFFFFLL)
          {
LABEL_64:
            v66 = self->_request;
            v67 = objc_alloc(MEMORY[0x1E69AE3A0]);
            allInstances2 = [v63 allInstances];
            v69 = buf;
            v70 = v146;
            [v63 confidence];
            v72 = v71;
            animatedStickerScore = [(VCPMADServiceImageAsset *)self->_imageAsset animatedStickerScore];
            LODWORD(v74) = v72;
            v75 = [v67 initWithInstances:allInstances2 instanceMaskSurface:v116 perInstanceMaskSurfaces:dictionary sourceRegionOfInterest:animatedStickerScore confidence:v69 animatedStickerScore:{v70, v74}];
            v134 = v75;
            v76 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v134 count:1];
            [(MADRemoveBackgroundMaskRequest *)v66 setResults:v76];

            if (MediaAnalysisLogLevel() >= 5 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
            {
              identifier8 = [(VCPMADServiceImageAsset *)self->_imageAsset identifier];
              [(VCPMADServiceImageAsset *)self->_imageAsset resolution];
              v79 = v78;
              [(VCPMADServiceImageAsset *)self->_imageAsset resolution];
              v81 = v80;
              orientation = [(VCPMADServiceImageAsset *)self->_imageAsset orientation];
              *v126 = 138413058;
              v127 = identifier8;
              v128 = 1024;
              v129 = v79;
              v130 = 1024;
              v131 = v81;
              v132 = 1024;
              v133 = orientation;
              _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "[RemoveBackgroundMask][%@] Caching image handler (resolution %dx%d, orientation %d)", v126, 0x1Eu);
            }

            v83 = [MADRemoveBackgroundCachedMaskState alloc];
            v84 = [(MADRemoveBackgroundCachedMaskState *)v83 initWithImageAsset:self->_imageAsset instanceMaskObservation:v63 regionOfInterest:*&buf, *(&buf + 1), *&v146, *(&v146 + 1)];
            [v120 setCachedMaskState:v84];

            [v119 reset];
            if (MediaAnalysisLogLevel() >= 6 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
            {
              identifier9 = [(VCPMADServiceImageAsset *)self->_imageAsset identifier];
              *v126 = 138412290;
              v127 = identifier9;
              _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "[RemoveBackgroundMask][%@] complete", v126, 0xCu);
            }
          }

          else
          {
            while (![(MADImageRemoveBackgroundTask *)self canceled])
            {
              v92 = [MEMORY[0x1E696AC90] indexSetWithIndex:firstIndex];
              obj = location;
              v93 = [v63 createMaskForInstances:v92 error:&obj];
              objc_storeStrong(&location, obj);
              pixelBuffer = v93;

              if (!pixelBuffer)
              {
                if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
                {
                  identifier10 = [(VCPMADServiceImageAsset *)self->_imageAsset identifier];
                  *v126 = 138412546;
                  v127 = identifier10;
                  v128 = 1024;
                  v129 = firstIndex;
                  _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[RemoveBackgroundMask][%@] Failed to obtain mask %d from Vision", v126, 0x12u);
                }

                v104 = self->_request;
                v105 = MEMORY[0x1E696ABC0];
                v137 = *MEMORY[0x1E696A578];
                v106 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to obtain image from Vision"];
                v138 = v106;
                v107 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v138 forKeys:&v137 count:1];
                v108 = [v105 errorWithDomain:*MEMORY[0x1E696A768] code:-18 userInfo:v107];
                [(MADRemoveBackgroundMaskRequest *)v104 setError:v108];

                goto LABEL_94;
              }

              v94 = CVPixelBufferGetIOSurface(pixelBuffer);
              if (!v94)
              {
                if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
                {
                  identifier11 = [(VCPMADServiceImageAsset *)self->_imageAsset identifier];
                  *v126 = 138412546;
                  v127 = identifier11;
                  v128 = 1024;
                  v129 = firstIndex;
                  _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[RemoveBackgroundMask][%@] Failed to obtain mask %d from Vision", v126, 0x12u);
                }

                v110 = self->_request;
                v111 = MEMORY[0x1E696ABC0];
                v135 = *MEMORY[0x1E696A578];
                v112 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to obtain image from Vision"];
                v136 = v112;
                v113 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v136 forKeys:&v135 count:1];
                v114 = [v111 errorWithDomain:*MEMORY[0x1E696A768] code:-18 userInfo:v113];
                [(MADRemoveBackgroundMaskRequest *)v110 setError:v114];

LABEL_94:
                CF<__CVBuffer *>::~CF(&pixelBuffer);
                goto LABEL_95;
              }

              v95 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:firstIndex];
              [dictionary setObject:v94 forKeyedSubscript:v95];

              allInstances3 = [v63 allInstances];
              firstIndex = [allInstances3 indexGreaterThanIndex:firstIndex];

              CF<__CVBuffer *>::~CF(&pixelBuffer);
              if (firstIndex == 0x7FFFFFFFFFFFFFFFLL)
              {
                goto LABEL_64;
              }
            }

            if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
            {
              identifier12 = [(VCPMADServiceImageAsset *)self->_imageAsset identifier];
              *v126 = 138412290;
              v127 = identifier12;
              _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[RemoveBackgroundMask][%@] Task request was canceled", v126, 0xCu);
            }

            v98 = self->_request;
            v99 = MEMORY[0x1E696ABC0];
            v139 = *MEMORY[0x1E696A578];
            v100 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Task request was canceled"];
            v140 = v100;
            v101 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v140 forKeys:&v139 count:1];
            v102 = [v99 errorWithDomain:*MEMORY[0x1E696A768] code:-128 userInfo:v101];
            [(MADRemoveBackgroundMaskRequest *)v98 setError:v102];

            [v119 reset];
          }
        }

        else
        {
          if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            identifier13 = [(VCPMADServiceImageAsset *)self->_imageAsset identifier];
            *v126 = 138412290;
            v127 = identifier13;
            _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[RemoveBackgroundMask][%@] Failed to obtain instance mask from Vision", v126, 0xCu);
          }

          v88 = self->_request;
          v89 = MEMORY[0x1E696ABC0];
          v141 = *MEMORY[0x1E696A578];
          dictionary = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to obtain image from Vision"];
          v142 = dictionary;
          v90 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v142 forKeys:&v141 count:1];
          v91 = [v89 errorWithDomain:*MEMORY[0x1E696A768] code:-18 userInfo:v90];
          [(MADRemoveBackgroundMaskRequest *)v88 setError:v91];
        }

LABEL_95:
      }

      else
      {
        v86 = self->_request;
        if (location)
        {
          [(MADRemoveBackgroundMaskRequest *)v86 setError:?];
        }

        else
        {
          [(MADRemoveBackgroundMaskRequest *)v86 setResults:MEMORY[0x1E695E0F0]];
        }
      }
    }

    goto LABEL_98;
  }

  isSensitive2 = [(VCPMADServiceImageAsset *)self->_imageAsset isSensitive];
  v6 = isSensitive2;
  if (!isSensitive2 || ![isSensitive2 BOOLValue])
  {

    goto LABEL_12;
  }

  if (MediaAnalysisLogLevel() >= 5 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    identifier14 = [(VCPMADServiceImageAsset *)self->_imageAsset identifier];
    LODWORD(buf) = 138412290;
    *(&buf + 4) = identifier14;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "[RemoveBackgroundMask][%@] Skipping for ineligible image", &buf, 0xCu);
  }

  [(MADRemoveBackgroundMaskRequest *)self->_request setResults:MEMORY[0x1E695E0F0]];

  return 0;
}

@end