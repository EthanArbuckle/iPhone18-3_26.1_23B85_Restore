@interface MADAlphaSequenceWriter
+ (id)transcodeSequenceData:(id)a3 maxDimension:(unint64_t)a4 outputWidth:(unint64_t *)a5 outputHeight:(unint64_t *)a6;
+ (id)writerWithUniformTypeIdentifier:(id)a3 frameCount:(unint64_t)a4 crop:(CGRect *)a5;
@end

@implementation MADAlphaSequenceWriter

+ (id)writerWithUniformTypeIdentifier:(id)a3 frameCount:(unint64_t)a4 crop:(CGRect *)a5
{
  v16 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = [v7 identifier];
  v9 = [v8 isEqual:@"public.heics"];

  if (v9)
  {
    v10 = [[MADHEICSAlphaSequenceWriter alloc] initWithFrameCount:a4 crop:a5];
LABEL_8:
    v12 = v10;
    goto LABEL_9;
  }

  if ([v7 isEqual:*MEMORY[0x1E6982F80]])
  {
    v11 = MADHEVCAlphaSequenceWriter;
LABEL_7:
    v10 = [[v11 alloc] initWithFrameCount:a4];
    goto LABEL_8;
  }

  if ([v7 isEqual:*MEMORY[0x1E6982F28]])
  {
    v11 = MADPNGAlphaSequenceWriter;
    goto LABEL_7;
  }

  if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v14 = 138412290;
    v15 = v7;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Output type %@ not supported", &v14, 0xCu);
  }

  v12 = 0;
LABEL_9:

  return v12;
}

+ (id)transcodeSequenceData:(id)a3 maxDimension:(unint64_t)a4 outputWidth:(unint64_t *)a5 outputHeight:(unint64_t *)a6
{
  v11 = *MEMORY[0x1E69E9840];
  if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    v9 = 138412290;
    v10 = v7;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[%@] Transcode not supported", &v9, 0xCu);
  }

  return 0;
}

@end