@interface VCPCoreMLRequest
- (VCPCoreMLRequest)initWithModelName:(id)name;
@end

@implementation VCPCoreMLRequest

- (VCPCoreMLRequest)initWithModelName:(id)name
{
  v22 = *MEMORY[0x1E69E9840];
  nameCopy = name;
  v17.receiver = self;
  v17.super_class = VCPCoreMLRequest;
  v5 = [(VCPCoreMLRequest *)&v17 init];
  if (v5)
  {
    vcp_mediaAnalysisBundle = [MEMORY[0x1E696AAE8] vcp_mediaAnalysisBundle];
    v7 = [vcp_mediaAnalysisBundle URLForResource:nameCopy withExtension:@"mlmodelc"];

    if (v7)
    {
      v8 = objc_alloc_init(MEMORY[0x1E695FEB0]);
      v9 = v8;
      if (v8)
      {
        [v8 setExperimentalMLE5EngineUsage:1];
        v16 = 0;
        v10 = [MEMORY[0x1E695FE90] modelWithContentsOfURL:v7 configuration:v9 error:&v16];
        v11 = v16;
        model = v5->_model;
        v5->_model = v10;
      }

      else
      {
        if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "VCPCoreMLRequest Failed to create MLModelConfiguration", buf, 2u);
        }

        v11 = 0;
      }
    }

    else if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v19 = nameCopy;
      v20 = 2112;
      v21 = 0;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[%@] VCPCoreMLRequest Failed to open model file at url %@", buf, 0x16u);
    }
  }

  if (v5->_model)
  {
    v13 = v5;
  }

  else
  {
    v13 = 0;
  }

  v14 = v13;

  return v14;
}

@end