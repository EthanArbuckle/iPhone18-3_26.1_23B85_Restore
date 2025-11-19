@interface MADUserSafetyQRCodeDetector
+ (BOOL)enabled;
- (MADUserSafetyQRCodeDetector)init;
- (void)processPixelBuffer:(__CVBuffer *)a3 orientation:(unsigned int)a4 signpostPayload:(id)a5;
@end

@implementation MADUserSafetyQRCodeDetector

+ (BOOL)enabled
{
  v2 = [objc_alloc(MEMORY[0x1E695E000]) initWithSuiteName:@"com.apple.sensitivecontentanalysis.testing"];
  v3 = [v2 objectForKey:@"SensitiveContentAnalysisTestMode"];

  if (v3)
  {
    v4 = [v3 BOOLValue];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (MADUserSafetyQRCodeDetector)init
{
  v3.receiver = self;
  v3.super_class = MADUserSafetyQRCodeDetector;
  return [(MADUserSafetyQRCodeDetector *)&v3 init];
}

- (void)processPixelBuffer:(__CVBuffer *)a3 orientation:(unsigned int)a4 signpostPayload:(id)a5
{
  v5 = *&a4;
  v84[1] = *MEMORY[0x1E69E9840];
  v68 = a5;
  if (MediaAnalysisLogLevel() >= 6 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v80 = objc_opt_class();
    v7 = v80;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "[%@] start barcode detection", buf, 0xCu);
  }

  context = objc_autoreleasePoolPush();
  v70 = [MEMORY[0x1E69844A0] mad_defaultRequest];
  if (v70)
  {
    v71 = *MEMORY[0x1E69848C0];
    v84[0] = *MEMORY[0x1E69848C0];
    v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v84 count:1];
    [v70 setSymbologies:v8];

    v9 = VCPSignPostLog();
    v10 = os_signpost_id_generate(v9);

    v11 = VCPSignPostLog();
    v12 = v11;
    if (v10 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v11))
    {
      *buf = 138412290;
      v80 = v68;
      _os_signpost_emit_with_name_impl(&dword_1C9B70000, v12, OS_SIGNPOST_INTERVAL_BEGIN, v10, "VNImageRequestHandler_init", "%@", buf, 0xCu);
    }

    v13 = objc_alloc(MEMORY[0x1E69845B8]);
    v67 = [v13 initWithCVPixelBuffer:a3 orientation:v5 options:MEMORY[0x1E695E0F8]];
    v14 = VCPSignPostLog();
    v15 = v14;
    if (v10 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v14))
    {
      *buf = 138412290;
      v80 = v68;
      _os_signpost_emit_with_name_impl(&dword_1C9B70000, v15, OS_SIGNPOST_INTERVAL_END, v10, "VNImageRequestHandler_init", "%@", buf, 0xCu);
    }

    if (v67)
    {
      v16 = VCPSignPostLog();
      v17 = os_signpost_id_generate(v16);

      v18 = VCPSignPostLog();
      v19 = v18;
      if (v17 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v18))
      {
        *buf = 138412290;
        v80 = v68;
        _os_signpost_emit_with_name_impl(&dword_1C9B70000, v19, OS_SIGNPOST_INTERVAL_BEGIN, v17, "VNImageRequestHandler_performRequests", "%@", buf, 0xCu);
      }

      v83 = v70;
      v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v83 count:1];
      v77 = 0;
      v21 = [v67 performRequests:v20 error:&v77];
      v66 = v77;

      v22 = VCPSignPostLog();
      v23 = v22;
      if (v17 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v22))
      {
        *buf = 138412290;
        v80 = v68;
        _os_signpost_emit_with_name_impl(&dword_1C9B70000, v23, OS_SIGNPOST_INTERVAL_END, v17, "VNImageRequestHandler_performRequests", "%@", buf, 0xCu);
      }

      if (v21)
      {
        v64 = [v70 results];
        v24 = [(NSNumber *)self->_sensitivity unsignedIntegerValue];
        v25 = v24;
        if (v64 && v24 != 3)
        {
          v75 = 0u;
          v76 = 0u;
          v73 = 0u;
          v74 = 0u;
          obj = v64;
          v26 = [obj countByEnumeratingWithState:&v73 objects:v78 count:16];
          if (!v26)
          {
            goto LABEL_46;
          }

          v28 = *v74;
          *&v27 = 138412290;
          v63 = v27;
          while (1)
          {
            for (i = 0; i != v26; ++i)
            {
              if (*v74 != v28)
              {
                objc_enumerationMutation(obj);
              }

              v30 = *(*(&v73 + 1) + 8 * i);
              v31 = [v30 symbology];
              v32 = v31 == v71;

              if (!v32)
              {
                continue;
              }

              v33 = [v30 payloadStringValue];
              v34 = [objc_opt_class() nudityAndGoreViolenceURLString];
              v35 = [v33 isEqualToString:v34];

              if (v35)
              {
                v25 |= 3uLL;
                if (MediaAnalysisLogLevel() >= 6 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
                {
                  v36 = objc_opt_class();
                  *buf = v63;
                  v80 = v36;
                  v37 = v36;
                  _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "[%@] Successfully detected the nudity + gore and violence sensitive barcode!", buf, 0xCu);
                }

                goto LABEL_43;
              }

              v38 = [v30 payloadStringValue];
              v39 = [objc_opt_class() nudityURLStringLegacy];
              if ([v38 isEqualToString:v39])
              {

LABEL_34:
                v25 |= 1uLL;
                if (MediaAnalysisLogLevel() >= 6 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
                {
                  v43 = objc_opt_class();
                  *buf = v63;
                  v80 = v43;
                  v44 = v43;
                  _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "[%@] Successfully detected the nudity sensitive barcode!", buf, 0xCu);
                }

                goto LABEL_43;
              }

              v40 = [v30 payloadStringValue];
              v41 = [objc_opt_class() nudityURLString];
              v42 = [v40 isEqualToString:v41];

              if (v42)
              {
                goto LABEL_34;
              }

              v45 = [v30 payloadStringValue];
              v46 = [objc_opt_class() goreViolenceURLStringLegacy];
              if ([v45 isEqualToString:v46])
              {
              }

              else
              {
                v47 = [v30 payloadStringValue];
                v48 = [objc_opt_class() goreViolenceURLString];
                v49 = [v47 isEqualToString:v48];

                if (!v49)
                {
                  goto LABEL_43;
                }
              }

              v25 |= 2uLL;
              if (MediaAnalysisLogLevel() >= 6 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
              {
                v50 = objc_opt_class();
                *buf = v63;
                v80 = v50;
                v51 = v50;
                _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "[%@] Successfully detected the gore and violence sensitive barcode!", buf, 0xCu);
              }

LABEL_43:
              if (v25 == 3)
              {
                goto LABEL_46;
              }
            }

            v26 = [obj countByEnumeratingWithState:&v73 objects:v78 count:16];
            if (!v26)
            {
LABEL_46:

              break;
            }
          }
        }

        v52 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v25];
        sensitivity = self->_sensitivity;
        self->_sensitivity = v52;

        v54 = 1;
      }

      else
      {
        if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          v59 = objc_opt_class();
          *buf = 138412546;
          v80 = v59;
          v81 = 2112;
          v82 = v66;
          v60 = v59;
          _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[%@] Failed to perform vision requests, err %@", buf, 0x16u);
        }

        v54 = 0;
      }
    }

    else
    {
      if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v57 = objc_opt_class();
        *buf = 138412290;
        v80 = v57;
        v58 = v57;
        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[%@] Failed to create VNImageRequestHandler", buf, 0xCu);
      }

      v54 = 0;
      v66 = 0;
    }
  }

  else
  {
    if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v55 = objc_opt_class();
      *buf = 138412290;
      v80 = v55;
      v56 = v55;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[%@] Failed to configure VNDetectBarcodesRequest", buf, 0xCu);
    }

    v54 = 0;
    v66 = 0;
  }

  objc_autoreleasePoolPop(context);
  if (v54 && MediaAnalysisLogLevel() >= 6 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
  {
    v61 = objc_opt_class();
    *buf = 138412290;
    v80 = v61;
    v62 = v61;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "[%@] complete barcode detection", buf, 0xCu);
  }
}

@end