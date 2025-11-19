@interface MADImageRemoveBackgroundMaskTask
+ (id)taskWithRequest:(id)a3 imageAsset:(id)a4 andSignpostPayload:(id)a5;
- (MADImageRemoveBackgroundMaskTask)initWithRequest:(id)a3 imageAsset:(id)a4 andSignpostPayload:(id)a5;
- (int)run;
@end

@implementation MADImageRemoveBackgroundMaskTask

- (MADImageRemoveBackgroundMaskTask)initWithRequest:(id)a3 imageAsset:(id)a4 andSignpostPayload:(id)a5
{
  v9 = a3;
  v10 = a4;
  v14.receiver = self;
  v14.super_class = MADImageRemoveBackgroundMaskTask;
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
    v3 = [(VCPMADServiceImageAsset *)self->_imageAsset identifier];
    LODWORD(buf) = 138412290;
    *(&buf + 4) = v3;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "[RemoveBackgroundMask][%@] running...", &buf, 0xCu);
  }

  v4 = _os_feature_enabled_impl();
  if (v4)
  {
LABEL_12:
    if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
    {
      v8 = [(VCPMADServiceImageAsset *)self->_imageAsset identifier];
      LODWORD(buf) = 138412290;
      *(&buf + 4) = v8;
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
        v10 = [(VCPMADServiceImageAsset *)self->_imageAsset identifier];
        LODWORD(buf) = 138412290;
        *(&buf + 4) = v10;
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
        v16 = [(VCPMADServiceImageAsset *)self->_imageAsset identifier];
        LODWORD(buf) = 138412290;
        *(&buf + 4) = v16;
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
      v22 = [(VCPMADServiceImageAsset *)self->_imageAsset isSensitive];
      v23 = v22 == 0;

      if (v23)
      {
        v24 = [(MADImageRemoveBackgroundTask *)self computeSensitivityOfPixelBuffer:v125];
        if ([v24 BOOLValue])
        {
          if (MediaAnalysisLogLevel() >= 5 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
          {
            v25 = [(VCPMADServiceImageAsset *)self->_imageAsset identifier];
            LODWORD(buf) = 138412290;
            *(&buf + 4) = v25;
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
        v26 = [(VCPMADServiceImageAsset *)self->_imageAsset identifier];
        LODWORD(buf) = 138412290;
        *(&buf + 4) = v26;
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
    v37 = [(MADRemoveBackgroundMaskRequest *)self->_request imageType];
    if (v37 && (-[MADRemoveBackgroundMaskRequest imageType](self->_request, "imageType"), v9 = objc_claimAutoreleasedReturnValue(), [v9 integerValue] == 1))
    {
    }

    else
    {
      v38 = [(VCPMADServiceImageAsset *)self->_imageAsset isScreenshot];
      v39 = v38;
      if (v37)
      {

        if (!v39)
        {
          goto LABEL_50;
        }
      }

      else if (!v38)
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
      v48 = [(MADImageRemoveBackgroundTask *)self signpostPayload];
      *v126 = 138412290;
      v127 = v48;
      _os_signpost_emit_with_name_impl(&dword_1C9B70000, v47, OS_SIGNPOST_INTERVAL_BEGIN, v45, "VNImageRequestHandler_init", "%@", v126, 0xCu);
    }

    v49 = objc_alloc(MEMORY[0x1E69845B8]);
    v50 = v125;
    v51 = v124;
    v52 = [v120 session];
    v118 = [v49 initWithCVPixelBuffer:v50 orientation:v51 options:MEMORY[0x1E695E0F8] session:v52];

    v53 = VCPSignPostLog();
    v54 = v53;
    if (v45 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v53))
    {
      v55 = [(MADImageRemoveBackgroundTask *)self signpostPayload];
      *v126 = 138412290;
      v127 = v55;
      _os_signpost_emit_with_name_impl(&dword_1C9B70000, v54, OS_SIGNPOST_INTERVAL_END, v45, "VNImageRequestHandler_init", "%@", v126, 0xCu);
    }

    if ([(MADImageRemoveBackgroundTask *)self canceled])
    {
      if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v56 = [(VCPMADServiceImageAsset *)self->_imageAsset identifier];
        *v126 = 138412290;
        v127 = v56;
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
      v62 = [(MADImageRemoveBackgroundTask *)self generateMaskWithRequestHandler:v118 regionOfInterest:&location error:buf, v146];
      v63 = v62;
      if (v62)
      {
        v116 = CVPixelBufferGetIOSurface([v62 instanceMask]);
        if (v116)
        {
          v117 = [MEMORY[0x1E695DF90] dictionary];
          v64 = [v63 allInstances];
          v65 = [v64 firstIndex];

          if (v65 == 0x7FFFFFFFFFFFFFFFLL)
          {
LABEL_64:
            v66 = self->_request;
            v67 = objc_alloc(MEMORY[0x1E69AE3A0]);
            v68 = [v63 allInstances];
            v69 = buf;
            v70 = v146;
            [v63 confidence];
            v72 = v71;
            v73 = [(VCPMADServiceImageAsset *)self->_imageAsset animatedStickerScore];
            LODWORD(v74) = v72;
            v75 = [v67 initWithInstances:v68 instanceMaskSurface:v116 perInstanceMaskSurfaces:v117 sourceRegionOfInterest:v73 confidence:v69 animatedStickerScore:{v70, v74}];
            v134 = v75;
            v76 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v134 count:1];
            [(MADRemoveBackgroundMaskRequest *)v66 setResults:v76];

            if (MediaAnalysisLogLevel() >= 5 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
            {
              v77 = [(VCPMADServiceImageAsset *)self->_imageAsset identifier];
              [(VCPMADServiceImageAsset *)self->_imageAsset resolution];
              v79 = v78;
              [(VCPMADServiceImageAsset *)self->_imageAsset resolution];
              v81 = v80;
              v82 = [(VCPMADServiceImageAsset *)self->_imageAsset orientation];
              *v126 = 138413058;
              v127 = v77;
              v128 = 1024;
              v129 = v79;
              v130 = 1024;
              v131 = v81;
              v132 = 1024;
              v133 = v82;
              _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "[RemoveBackgroundMask][%@] Caching image handler (resolution %dx%d, orientation %d)", v126, 0x1Eu);
            }

            v83 = [MADRemoveBackgroundCachedMaskState alloc];
            v84 = [(MADRemoveBackgroundCachedMaskState *)v83 initWithImageAsset:self->_imageAsset instanceMaskObservation:v63 regionOfInterest:*&buf, *(&buf + 1), *&v146, *(&v146 + 1)];
            [v120 setCachedMaskState:v84];

            [v119 reset];
            if (MediaAnalysisLogLevel() >= 6 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
            {
              v85 = [(VCPMADServiceImageAsset *)self->_imageAsset identifier];
              *v126 = 138412290;
              v127 = v85;
              _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "[RemoveBackgroundMask][%@] complete", v126, 0xCu);
            }
          }

          else
          {
            while (![(MADImageRemoveBackgroundTask *)self canceled])
            {
              v92 = [MEMORY[0x1E696AC90] indexSetWithIndex:v65];
              obj = location;
              v93 = [v63 createMaskForInstances:v92 error:&obj];
              objc_storeStrong(&location, obj);
              pixelBuffer = v93;

              if (!pixelBuffer)
              {
                if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
                {
                  v103 = [(VCPMADServiceImageAsset *)self->_imageAsset identifier];
                  *v126 = 138412546;
                  v127 = v103;
                  v128 = 1024;
                  v129 = v65;
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
                  v109 = [(VCPMADServiceImageAsset *)self->_imageAsset identifier];
                  *v126 = 138412546;
                  v127 = v109;
                  v128 = 1024;
                  v129 = v65;
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

              v95 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v65];
              [v117 setObject:v94 forKeyedSubscript:v95];

              v96 = [v63 allInstances];
              v65 = [v96 indexGreaterThanIndex:v65];

              CF<__CVBuffer *>::~CF(&pixelBuffer);
              if (v65 == 0x7FFFFFFFFFFFFFFFLL)
              {
                goto LABEL_64;
              }
            }

            if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
            {
              v97 = [(VCPMADServiceImageAsset *)self->_imageAsset identifier];
              *v126 = 138412290;
              v127 = v97;
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
            v87 = [(VCPMADServiceImageAsset *)self->_imageAsset identifier];
            *v126 = 138412290;
            v127 = v87;
            _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[RemoveBackgroundMask][%@] Failed to obtain instance mask from Vision", v126, 0xCu);
          }

          v88 = self->_request;
          v89 = MEMORY[0x1E696ABC0];
          v141 = *MEMORY[0x1E696A578];
          v117 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to obtain image from Vision"];
          v142 = v117;
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

  v5 = [(VCPMADServiceImageAsset *)self->_imageAsset isSensitive];
  v6 = v5;
  if (!v5 || ![v5 BOOLValue])
  {

    goto LABEL_12;
  }

  if (MediaAnalysisLogLevel() >= 5 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    v7 = [(VCPMADServiceImageAsset *)self->_imageAsset identifier];
    LODWORD(buf) = 138412290;
    *(&buf + 4) = v7;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "[RemoveBackgroundMask][%@] Skipping for ineligible image", &buf, 0xCu);
  }

  [(MADRemoveBackgroundMaskRequest *)self->_request setResults:MEMORY[0x1E695E0F0]];

  return 0;
}

@end