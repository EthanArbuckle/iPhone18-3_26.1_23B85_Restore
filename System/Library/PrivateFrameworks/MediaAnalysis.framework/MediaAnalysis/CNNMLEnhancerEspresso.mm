@interface CNNMLEnhancerEspresso
- (CNNMLEnhancerEspresso)initWithModelFile:(id)file;
- (int)inferenceWithPixelBuffer:(__CVBuffer *)buffer toDestinationPixelBuffer:(__CVBuffer *)pixelBuffer;
- (void)dealloc;
@end

@implementation CNNMLEnhancerEspresso

- (CNNMLEnhancerEspresso)initWithModelFile:(id)file
{
  v20 = *MEMORY[0x1E69E9840];
  fileCopy = file;
  v17.receiver = self;
  v17.super_class = CNNMLEnhancerEspresso;
  v5 = [(CNNMLEnhancerEspresso *)&v17 init];
  if (!v5)
  {
    goto LABEL_6;
  }

  v16 = 0;
  v6 = [fileCopy checkResourceIsReachableAndReturnError:&v16];
  v7 = v16;
  if ((v6 & 1) == 0)
  {
    if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v19 = fileCopy;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Model URL %@ not reachable", buf, 0xCu);
    }

    goto LABEL_10;
  }

  v5->_ctx = espresso_create_context();
  plan = espresso_create_plan();
  v5->_plan = plan;
  if (!plan || ([fileCopy path], v9 = objc_claimAutoreleasedReturnValue(), v10 = v9, objc_msgSend(v9, "UTF8String"), v11 = espresso_plan_add_network() == 0, v9, !v11))
  {
LABEL_10:

    goto LABEL_11;
  }

  v12 = espresso_plan_build() == 0;

  if (!v12)
  {
LABEL_11:
    v13 = 0;
    goto LABEL_12;
  }

LABEL_6:
  v13 = v5;
LABEL_12:
  v14 = v13;

  return v14;
}

- (void)dealloc
{
  if (self->_plan)
  {
    espresso_plan_destroy();
  }

  if (self->_ctx)
  {
    espresso_context_destroy();
  }

  v3.receiver = self;
  v3.super_class = CNNMLEnhancerEspresso;
  [(CNNMLEnhancerEspresso *)&v3 dealloc];
}

- (int)inferenceWithPixelBuffer:(__CVBuffer *)buffer toDestinationPixelBuffer:(__CVBuffer *)pixelBuffer
{
  v6 = espresso_network_bind_direct_cvpixelbuffer();
  if (v6)
  {
    v7 = v6;
    if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v15 = 0;
      v8 = MEMORY[0x1E69E9C10];
      v9 = "bind rgb_input error";
      v10 = &v15;
LABEL_13:
      _os_log_impl(&dword_1C9B70000, v8, OS_LOG_TYPE_ERROR, v9, v10, 2u);
    }
  }

  else
  {
    v11 = espresso_network_bind_direct_cvpixelbuffer();
    if (v11)
    {
      v7 = v11;
      if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v14 = 0;
        v8 = MEMORY[0x1E69E9C10];
        v9 = "bind rgb_output_final error";
        v10 = &v14;
        goto LABEL_13;
      }
    }

    else
    {
      v7 = espresso_plan_execute_sync();
      if (!v7)
      {
        CVBufferPropagateAttachments(buffer, pixelBuffer);
        return v7;
      }

      if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v13 = 0;
        v8 = MEMORY[0x1E69E9C10];
        v9 = "execute_sync error";
        v10 = &v13;
        goto LABEL_13;
      }
    }
  }

  return v7;
}

@end