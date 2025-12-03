@interface MADAlphaSequenceWriter
+ (id)transcodeSequenceData:(id)data maxDimension:(unint64_t)dimension outputWidth:(unint64_t *)width outputHeight:(unint64_t *)height;
+ (id)writerWithUniformTypeIdentifier:(id)identifier frameCount:(unint64_t)count crop:(CGRect *)crop;
@end

@implementation MADAlphaSequenceWriter

+ (id)writerWithUniformTypeIdentifier:(id)identifier frameCount:(unint64_t)count crop:(CGRect *)crop
{
  v16 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  identifier = [identifierCopy identifier];
  v9 = [identifier isEqual:@"public.heics"];

  if (v9)
  {
    v10 = [[MADHEICSAlphaSequenceWriter alloc] initWithFrameCount:count crop:crop];
LABEL_8:
    v12 = v10;
    goto LABEL_9;
  }

  if ([identifierCopy isEqual:*MEMORY[0x1E6982F80]])
  {
    v11 = MADHEVCAlphaSequenceWriter;
LABEL_7:
    v10 = [[v11 alloc] initWithFrameCount:count];
    goto LABEL_8;
  }

  if ([identifierCopy isEqual:*MEMORY[0x1E6982F28]])
  {
    v11 = MADPNGAlphaSequenceWriter;
    goto LABEL_7;
  }

  if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v14 = 138412290;
    v15 = identifierCopy;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Output type %@ not supported", &v14, 0xCu);
  }

  v12 = 0;
LABEL_9:

  return v12;
}

+ (id)transcodeSequenceData:(id)data maxDimension:(unint64_t)dimension outputWidth:(unint64_t *)width outputHeight:(unint64_t *)height
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