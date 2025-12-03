@interface MADUserSafetyQRCodeDetector
+ (BOOL)enabled;
- (MADUserSafetyQRCodeDetector)init;
- (void)processPixelBuffer:(__CVBuffer *)buffer orientation:(unsigned int)orientation signpostPayload:(id)payload;
@end

@implementation MADUserSafetyQRCodeDetector

+ (BOOL)enabled
{
  v2 = [objc_alloc(MEMORY[0x1E695E000]) initWithSuiteName:@"com.apple.sensitivecontentanalysis.testing"];
  v3 = [v2 objectForKey:@"SensitiveContentAnalysisTestMode"];

  if (v3)
  {
    bOOLValue = [v3 BOOLValue];
  }

  else
  {
    bOOLValue = 0;
  }

  return bOOLValue;
}

- (MADUserSafetyQRCodeDetector)init
{
  v3.receiver = self;
  v3.super_class = MADUserSafetyQRCodeDetector;
  return [(MADUserSafetyQRCodeDetector *)&v3 init];
}

- (void)processPixelBuffer:(__CVBuffer *)buffer orientation:(unsigned int)orientation signpostPayload:(id)payload
{
  v5 = *&orientation;
  v84[1] = *MEMORY[0x1E69E9840];
  payloadCopy = payload;
  if (MediaAnalysisLogLevel() >= 6 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v80 = objc_opt_class();
    v7 = v80;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "[%@] start barcode detection", buf, 0xCu);
  }

  context = objc_autoreleasePoolPush();
  mad_defaultRequest = [MEMORY[0x1E69844A0] mad_defaultRequest];
  if (mad_defaultRequest)
  {
    v71 = *MEMORY[0x1E69848C0];
    v84[0] = *MEMORY[0x1E69848C0];
    v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v84 count:1];
    [mad_defaultRequest setSymbologies:v8];

    v9 = VCPSignPostLog();
    v10 = os_signpost_id_generate(v9);

    v11 = VCPSignPostLog();
    v12 = v11;
    if (v10 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v11))
    {
      *buf = 138412290;
      v80 = payloadCopy;
      _os_signpost_emit_with_name_impl(&dword_1C9B70000, v12, OS_SIGNPOST_INTERVAL_BEGIN, v10, "VNImageRequestHandler_init", "%@", buf, 0xCu);
    }

    v13 = objc_alloc(MEMORY[0x1E69845B8]);
    v67 = [v13 initWithCVPixelBuffer:buffer orientation:v5 options:MEMORY[0x1E695E0F8]];
    v14 = VCPSignPostLog();
    v15 = v14;
    if (v10 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v14))
    {
      *buf = 138412290;
      v80 = payloadCopy;
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
        v80 = payloadCopy;
        _os_signpost_emit_with_name_impl(&dword_1C9B70000, v19, OS_SIGNPOST_INTERVAL_BEGIN, v17, "VNImageRequestHandler_performRequests", "%@", buf, 0xCu);
      }

      v83 = mad_defaultRequest;
      v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v83 count:1];
      v77 = 0;
      v21 = [v67 performRequests:v20 error:&v77];
      v66 = v77;

      v22 = VCPSignPostLog();
      v23 = v22;
      if (v17 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v22))
      {
        *buf = 138412290;
        v80 = payloadCopy;
        _os_signpost_emit_with_name_impl(&dword_1C9B70000, v23, OS_SIGNPOST_INTERVAL_END, v17, "VNImageRequestHandler_performRequests", "%@", buf, 0xCu);
      }

      if (v21)
      {
        results = [mad_defaultRequest results];
        unsignedIntegerValue = [(NSNumber *)self->_sensitivity unsignedIntegerValue];
        v25 = unsignedIntegerValue;
        if (results && unsignedIntegerValue != 3)
        {
          v75 = 0u;
          v76 = 0u;
          v73 = 0u;
          v74 = 0u;
          obj = results;
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
              symbology = [v30 symbology];
              v32 = symbology == v71;

              if (!v32)
              {
                continue;
              }

              payloadStringValue = [v30 payloadStringValue];
              nudityAndGoreViolenceURLString = [objc_opt_class() nudityAndGoreViolenceURLString];
              v35 = [payloadStringValue isEqualToString:nudityAndGoreViolenceURLString];

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

              payloadStringValue2 = [v30 payloadStringValue];
              nudityURLStringLegacy = [objc_opt_class() nudityURLStringLegacy];
              if ([payloadStringValue2 isEqualToString:nudityURLStringLegacy])
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

              payloadStringValue3 = [v30 payloadStringValue];
              nudityURLString = [objc_opt_class() nudityURLString];
              v42 = [payloadStringValue3 isEqualToString:nudityURLString];

              if (v42)
              {
                goto LABEL_34;
              }

              payloadStringValue4 = [v30 payloadStringValue];
              goreViolenceURLStringLegacy = [objc_opt_class() goreViolenceURLStringLegacy];
              if ([payloadStringValue4 isEqualToString:goreViolenceURLStringLegacy])
              {
              }

              else
              {
                payloadStringValue5 = [v30 payloadStringValue];
                goreViolenceURLString = [objc_opt_class() goreViolenceURLString];
                v49 = [payloadStringValue5 isEqualToString:goreViolenceURLString];

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