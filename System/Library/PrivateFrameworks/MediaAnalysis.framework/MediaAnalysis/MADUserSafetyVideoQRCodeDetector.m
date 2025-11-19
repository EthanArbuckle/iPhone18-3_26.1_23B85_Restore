@interface MADUserSafetyVideoQRCodeDetector
+ (int)generateDecoderSettings:(id)a3 decoderConfig:(id)a4 withRequest:(id)a5 videoDuration:(double)a6;
- (id)sensitivityFromQRCodeForVideoURL:(id)a3 request:(id)a4 signpostPayload:(id)a5 progressHandler:(id)a6;
@end

@implementation MADUserSafetyVideoQRCodeDetector

+ (int)generateDecoderSettings:(id)a3 decoderConfig:(id)a4 withRequest:(id)a5 videoDuration:(double)a6
{
  v38 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a4;
  v11 = a5;
  if (v9 && v10)
  {
    [v9 setObject:&unk_1F49BC310 forKeyedSubscript:*MEMORY[0x1E6966130]];
    [v9 setObject:&unk_1F49BC328 forKeyedSubscript:*MEMORY[0x1E6966208]];
    [v9 setObject:&unk_1F49BC328 forKeyedSubscript:*MEMORY[0x1E69660B8]];
    v12 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v11, "appliesPreferredTrackTransform")}];
    [v9 setObject:v12 forKeyedSubscript:@"AppliesPreferredTrackTransform"];

    v13 = [v11 sampling];
    if (v13)
    {
      v14 = [v11 sampling];
      v15 = [v14 framesPerSync];
    }

    else
    {
      v15 = 1;
    }

    v17 = [v11 sampling];
    if (v17)
    {
      v18 = [v11 sampling];
      v19 = [v18 uniformSampling];
    }

    else
    {
      v19 = 1;
    }

    v20 = [objc_alloc(MEMORY[0x1E69AE500]) initWithFramesPerSync:v15 frameLimit:30 uniformSampling:v19];
    if ([v11 requiresBlastdoor])
    {
      v21 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v20, "framesPerSync")}];
      [v9 setObject:v21 forKeyedSubscript:*MEMORY[0x1E6987D38]];

      v22 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v20, "frameLimit")}];
      [v9 setObject:v22 forKeyedSubscript:@"FrameLimit"];

      v23 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v20, "uniformSampling")}];
      [v9 setObject:v23 forKeyedSubscript:@"UniformSampling"];
    }

    else
    {
      if (![v20 frameLimit] && objc_msgSend(v20, "uniformSampling") && MediaAnalysisLogLevel() >= 4 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
      {
        LODWORD(buf.value) = 138412290;
        *(&buf.value + 4) = objc_opt_class();
        v25 = *(&buf.value + 4);
        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "[%@] Unexpected uniformSampling specified when frameLimit is 0,ignoring uniformSampling", &buf, 0xCu);
      }

      if ([v20 framesPerSync])
      {
        v26 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v20, "framesPerSync")}];
        [v9 setObject:v26 forKeyedSubscript:*MEMORY[0x1E6987D38]];

        if ([v20 frameLimit])
        {
          v27 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v20, "frameLimit")}];
          [v10 setObject:v27 forKeyedSubscript:@"FrameLimit"];

          if ([v20 uniformSampling])
          {
            v28 = a6 / (([v20 frameLimit] - 1) + 0.1);
            if (v28 <= 0.0)
            {
              if (MediaAnalysisLogLevel() >= 4 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
              {
                v32 = objc_opt_class();
                v33 = *MEMORY[0x1E6987C68];
                LODWORD(buf.value) = 138412802;
                *(&buf.value + 4) = v32;
                LOWORD(buf.flags) = 2112;
                *(&buf.flags + 2) = v33;
                HIWORD(buf.epoch) = 2048;
                v37 = v28;
                v34 = v32;
                _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "[%@] Invalid decoder configuration value (%@ = %f), ignoring", &buf, 0x20u);
              }
            }

            else
            {
              memset(&buf, 0, sizeof(buf));
              CMTimeMakeWithSeconds(&buf, v28, 1000);
              v35 = buf;
              v29 = CMTimeCopyAsDictionary(&v35, *MEMORY[0x1E695E480]);
              [v9 setObject:v29 forKeyedSubscript:*MEMORY[0x1E6987C68]];
            }
          }
        }
      }

      else if ([v20 frameLimit])
      {
        v30 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v20, "frameLimit")}];
        [v10 setObject:v30 forKeyedSubscript:@"FrameLimit"];

        if ([v20 uniformSampling])
        {
          v31 = [MEMORY[0x1E696AD98] numberWithDouble:{objc_msgSend(v20, "frameLimit") / a6}];
          [v10 setObject:v31 forKeyedSubscript:@"FramesPerSecond"];
        }
      }
    }

    v16 = 0;
  }

  else
  {
    if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      LOWORD(buf.value) = 0;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "generateDecoderSettings:decoderConfig:withRequest:videoDuration: failed, nil inputs", &buf, 2u);
    }

    v16 = -50;
  }

  return v16;
}

- (id)sensitivityFromQRCodeForVideoURL:(id)a3 request:(id)a4 signpostPayload:(id)a5 progressHandler:(id)a6
{
  v71 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  if (MediaAnalysisLogLevel() >= 6 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v64 = objc_opt_class();
    v14 = v64;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "[%@] running...", buf, 0xCu);
  }

  v15 = [(MADUserSafetyQRCodeDetector *)self sensitivity];
  v16 = v15 == 0;

  if (v16)
  {
    context = objc_autoreleasePoolPush();
    v17 = [v11 sensitiveFrameCountThreshold];
    if (v17)
    {
      v18 = [v11 sensitiveFrameCountThreshold];
      v19 = [v18 unsignedIntegerValue] == 0;

      if (v19)
      {
        if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          v31 = objc_opt_class();
          *buf = 138412290;
          v64 = v31;
          v32 = v31;
          _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[%@] Invalid configuration, sensitiveFrameCountThreshold must be > 0", buf, 0xCu);
        }

        v25 = [(MADUserSafetyQRCodeDetector *)self sensitivity];
        v26 = 0;
LABEL_53:
        objc_autoreleasePoolPop(context);
        if ((v26 & 1) == 0)
        {
          goto LABEL_58;
        }

        goto LABEL_54;
      }
    }

    if ([v11 requiresBlastdoor])
    {
      v20 = [[VCPBlastdoorVideoProcessor alloc] initWithURL:v10];
      v21 = 0.0;
      if (v20)
      {
        goto LABEL_9;
      }
    }

    else
    {
      v20 = [[VCPVideoProcessor alloc] initWithURL:v10];
      [(VCPBlastdoorVideoProcessor *)v20 videoDuration];
      v21 = v27;
      if (v20)
      {
LABEL_9:
        if (v13)
        {
          [(VCPBlastdoorVideoProcessor *)v20 setProgressHandler:v13];
        }

        v22 = [MEMORY[0x1E695DF90] dictionary];
        v56 = v22;
        v57 = [MEMORY[0x1E695DF90] dictionary];
        if ([objc_opt_class() generateDecoderSettings:v22 decoderConfig:v57 withRequest:v11 videoDuration:v21])
        {
          if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            v23 = objc_opt_class();
            *buf = 138412290;
            v64 = v23;
            v24 = v23;
            _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[%@] Failed to generate settings and config for videoProcessor", buf, 0xCu);
          }

          v25 = [(MADUserSafetyQRCodeDetector *)self sensitivity];
          v26 = 0;
          goto LABEL_51;
        }

        if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
        {
          v33 = objc_opt_class();
          v34 = [v11 requiresBlastdoor];
          v35 = @"NO";
          *buf = 138413058;
          v64 = v33;
          v65 = 2112;
          if (v34)
          {
            v35 = @"YES";
          }

          v66 = v35;
          v67 = 2112;
          v68 = v22;
          v69 = 2112;
          v70 = v57;
          _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "[%@] requiresBlastdoor: %@, decoder settings: %@, decoder configuration: %@", buf, 0x2Au);
        }

        [(VCPBlastdoorVideoProcessor *)v20 setDecoderSettings:v22];
        aBlock[0] = MEMORY[0x1E69E9820];
        aBlock[1] = 3221225472;
        aBlock[2] = __109__MADUserSafetyVideoQRCodeDetector_sensitivityFromQRCodeForVideoURL_request_signpostPayload_progressHandler___block_invoke;
        aBlock[3] = &unk_1E834E6F0;
        aBlock[4] = self;
        v25 = v12;
        v62 = v25;
        v55 = _Block_copy(aBlock);
        v60 = 0;
        v36 = [(VCPBlastdoorVideoProcessor *)v20 addFrameProcessingRequest:v55 withConfiguration:v57 error:&v60];
        v37 = v60;
        if (v36)
        {
          v38 = VCPSignPostLog();
          spid = os_signpost_id_generate(v38);

          v39 = VCPSignPostLog();
          v40 = v39;
          if (spid - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v39))
          {
            *buf = 138412290;
            v64 = v25;
            _os_signpost_emit_with_name_impl(&dword_1C9B70000, v40, OS_SIGNPOST_INTERVAL_BEGIN, spid, "VCPVideoProcessor_Analyze", "%@", buf, 0xCu);
          }

          v59 = v37;
          v41 = [(VCPBlastdoorVideoProcessor *)v20 analyzeWithError:&v59];
          v42 = v59;
          v43 = v37;
          v37 = v42;

          if (v41)
          {
            v44 = VCPSignPostLog();
            v45 = v44;
            if (spid - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v44))
            {
              *buf = 138412290;
              v64 = v25;
              _os_signpost_emit_with_name_impl(&dword_1C9B70000, v45, OS_SIGNPOST_INTERVAL_END, spid, "VCPVideoProcessor_Analyze", "%@", buf, 0xCu);
            }

            v26 = 1;
            goto LABEL_50;
          }

          if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            v49 = objc_opt_class();
            v50 = [v37 description];
            *buf = 138412546;
            v64 = v49;
            v65 = 2112;
            v66 = v50;
            _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[%@] Failed to process video (%@)", buf, 0x16u);
          }

          v48 = [(MADUserSafetyQRCodeDetector *)self sensitivity];
        }

        else
        {
          if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            v46 = objc_opt_class();
            v47 = [v37 description];
            *buf = 138412546;
            v64 = v46;
            v65 = 2112;
            v66 = v47;
            _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[%@] Failed to add request to video processor (%@)", buf, 0x16u);
          }

          v48 = [(MADUserSafetyQRCodeDetector *)self sensitivity];
        }

        v25 = v48;
        v26 = 0;
LABEL_50:

LABEL_51:
LABEL_52:

        goto LABEL_53;
      }
    }

    if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v28 = objc_opt_class();
      v29 = [v11 requiresBlastdoor];
      v30 = @"NO";
      if (v29)
      {
        v30 = @"YES";
      }

      *buf = 138412546;
      v64 = v28;
      v65 = 2112;
      v66 = v30;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[%@] Failed to create video processor (requiresBlastdoor: %@)", buf, 0x16u);
    }

    v25 = [(MADUserSafetyQRCodeDetector *)self sensitivity];
    v26 = 0;
    goto LABEL_52;
  }

LABEL_54:
  if (MediaAnalysisLogLevel() >= 6 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
  {
    v51 = objc_opt_class();
    *buf = 138412290;
    v64 = v51;
    v52 = v51;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "[%@] complete", buf, 0xCu);
  }

  v25 = [(MADUserSafetyQRCodeDetector *)self sensitivity];
LABEL_58:

  return v25;
}

void __109__MADUserSafetyVideoQRCodeDetector_sensitivityFromQRCodeForVideoURL_request_signpostPayload_progressHandler___block_invoke(uint64_t a1, opaqueCMSampleBuffer *a2, _BYTE *a3)
{
  v16 = *MEMORY[0x1E69E9840];
  v6 = [*(a1 + 32) sensitivity];
  if (v6 && ([*(a1 + 32) sensitivity], v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "unsignedIntegerValue"), v7, v6, v8 == 3))
  {
    *a3 = 1;
  }

  else
  {
    ImageBuffer = CMSampleBufferGetImageBuffer(a2);
    if (ImageBuffer)
    {
      v10 = ImageBuffer;
      v11 = *(a1 + 32);
      v12 = *(a1 + 40);

      [v11 processPixelBuffer:v10 orientation:1 signpostPayload:v12];
    }

    else if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v14 = 138412290;
      v15 = objc_opt_class();
      v13 = v15;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[%@] Failed to acquire pixelBuffer", &v14, 0xCu);
    }
  }
}

@end