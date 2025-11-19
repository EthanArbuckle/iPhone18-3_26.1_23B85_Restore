@interface VCPVideoProcessorNode
+ (BOOL)validateConfiguration:(id)a3 withError:(id *)a4;
+ (id)nodeWithFrameProcessor:(id)a3 andConfiguration:(id)a4;
+ (id)nodeWithRequest:(id)a3 andConfiguration:(id)a4;
- (BOOL)finished;
- (NSString)typeDescription;
- (VCPVideoProcessorNode)initWithFrameProcessor:(id)a3 andConfiguration:(id)a4;
- (VCPVideoProcessorNode)initWithRequest:(id)a3 andConfiguration:(id)a4;
- (void)_processConfiguration:(id)a3;
@end

@implementation VCPVideoProcessorNode

- (NSString)typeDescription
{
  if (self->_request)
  {
    v3 = objc_opt_class();
    v4 = NSStringFromClass(v3);
  }

  else
  {
    v4 = @"FrameProcessingRequest";
  }

  return v4;
}

+ (BOOL)validateConfiguration:(id)a3 withError:(id *)a4
{
  v21 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v17[0] = 0;
  v17[1] = v17;
  v17[2] = 0x2020000000;
  v18 = 0;
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__4;
  v15 = __Block_byref_object_dispose__4;
  v16 = 0;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __57__VCPVideoProcessorNode_validateConfiguration_withError___block_invoke;
  v10[3] = &unk_1E834C3F8;
  v10[4] = v17;
  v10[5] = &v11;
  [v5 enumerateKeysAndObjectsUsingBlock:v10];
  v6 = v12;
  if (v12[5])
  {
    if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v7 = [v12[5] localizedDescription];
      *buf = 138412290;
      v20 = v7;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Invalid request configuration (%@)", buf, 0xCu);
    }

    v6 = v12;
    if (a4)
    {
      *a4 = v12[5];
      v6 = v12;
    }
  }

  v8 = v6[5] == 0;
  _Block_object_dispose(&v11, 8);

  _Block_object_dispose(v17, 8);
  return v8;
}

void __57__VCPVideoProcessorNode_validateConfiguration_withError___block_invoke(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v52[1] = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a3;
  v9 = [v7 isEqualToString:@"FramesPerSecond"];
  if (([v7 isEqualToString:*MEMORY[0x1E6984A00]] & 1) != 0 || (v9 | objc_msgSend(v7, "isEqualToString:", *MEMORY[0x1E6984A08])) == 1)
  {
    v10 = *(*(a1 + 32) + 8);
    if (*(v10 + 24) == 1)
    {
      v11 = MEMORY[0x1E696ABC0];
      v51 = *MEMORY[0x1E696A578];
      v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Multiple cadence options specified"];
      v52[0] = v12;
      v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v52 forKeys:&v51 count:1];
      v14 = [v11 errorWithDomain:*MEMORY[0x1E696A768] code:-50 userInfo:v13];
      v15 = *(*(a1 + 40) + 8);
      v16 = *(v15 + 40);
      *(v15 + 40) = v14;

LABEL_13:
      *a4 = 1;
      goto LABEL_14;
    }

    *(v10 + 24) = 1;
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v25 = MEMORY[0x1E696ABC0];
      v49 = *MEMORY[0x1E696A578];
      v26 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ value must be NSNumber", v7];
      v50 = v26;
      v27 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v50 forKeys:&v49 count:1];
      v28 = [v25 errorWithDomain:*MEMORY[0x1E696A768] code:-50 userInfo:v27];
      v29 = *(*(a1 + 40) + 8);
      v30 = *(v29 + 40);
      *(v29 + 40) = v28;

      goto LABEL_13;
    }

    v17 = v8;
    [v17 floatValue];
    if (v18 <= 0.0)
    {
      v37 = MEMORY[0x1E696ABC0];
      v47 = *MEMORY[0x1E696A578];
      v38 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ value must be positive", v7];
      v48 = v38;
      v39 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v48 forKeys:&v47 count:1];
      v40 = [v37 errorWithDomain:*MEMORY[0x1E696A768] code:-50 userInfo:v39];
      v41 = *(*(a1 + 40) + 8);
      v42 = *(v41 + 40);
      *(v41 + 40) = v40;

      *a4 = 1;
    }

    else
    {
    }
  }

  else
  {
    if (![v7 isEqualToString:@"FrameLimit"])
    {
      v31 = MEMORY[0x1E696ABC0];
      v32 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ is not supported", v7, *MEMORY[0x1E696A578]];
      v44 = v32;
      v33 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v44 forKeys:&v43 count:1];
      v34 = [v31 errorWithDomain:*MEMORY[0x1E696A768] code:-50 userInfo:v33];
      v35 = *(*(a1 + 40) + 8);
      v36 = *(v35 + 40);
      *(v35 + 40) = v34;

      goto LABEL_13;
    }

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v19 = MEMORY[0x1E696ABC0];
      v45 = *MEMORY[0x1E696A578];
      v20 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ value must be NSNumber", v7];
      v46 = v20;
      v21 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v46 forKeys:&v45 count:1];
      v22 = [v19 errorWithDomain:*MEMORY[0x1E696A768] code:-50 userInfo:v21];
      v23 = *(*(a1 + 40) + 8);
      v24 = *(v23 + 40);
      *(v23 + 40) = v22;

      goto LABEL_13;
    }
  }

LABEL_14:
}

- (void)_processConfiguration:(id)a3
{
  v4 = a3;
  v5 = *MEMORY[0x1E6984A00];
  v6 = [v4 objectForKeyedSubscript:*MEMORY[0x1E6984A00]];

  if (v6)
  {
    v7 = [v4 objectForKeyedSubscript:v5];
    self->_frameInterval = [v7 unsignedIntegerValue];
  }

  else
  {
    self->_frameInterval = 0;
  }

  v8 = [v4 objectForKeyedSubscript:@"FramesPerSecond"];

  if (v8)
  {
    v9 = [v4 objectForKeyedSubscript:@"FramesPerSecond"];
    [v9 doubleValue];
    v11 = v10;

    CMTimeMakeWithSeconds(&v22, 1.0 / v11, 1000);
LABEL_8:
    *&self->_timeInterval.value = *&v22.value;
    epoch = v22.epoch;
    goto LABEL_9;
  }

  v12 = *MEMORY[0x1E6984A08];
  v13 = [v4 objectForKeyedSubscript:*MEMORY[0x1E6984A08]];

  if (v13)
  {
    v14 = [v4 objectForKeyedSubscript:v12];
    [v14 floatValue];
    v16 = v15;

    CMTimeMakeWithSeconds(&v22, v16, 1000);
    goto LABEL_8;
  }

  v21 = MEMORY[0x1E6960CC0];
  *&self->_timeInterval.value = *MEMORY[0x1E6960CC0];
  epoch = *(v21 + 16);
LABEL_9:
  self->_timeInterval.epoch = epoch;
  v18 = [v4 objectForKeyedSubscript:@"FrameLimit"];

  if (v18)
  {
    v19 = [v4 objectForKeyedSubscript:@"FrameLimit"];
    frameLimit = self->_frameLimit;
    self->_frameLimit = v19;
  }
}

- (VCPVideoProcessorNode)initWithRequest:(id)a3 andConfiguration:(id)a4
{
  v7 = a3;
  v8 = a4;
  if (v7)
  {
    v13.receiver = self;
    v13.super_class = VCPVideoProcessorNode;
    v9 = [(VCPVideoProcessorNode *)&v13 init];
    v10 = v9;
    if (v9)
    {
      objc_storeStrong(&v9->_request, a3);
      [(VCPVideoProcessorNode *)v10 _processConfiguration:v8];
    }

    self = v10;
    v11 = self;
  }

  else
  {
    if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "VNRequest must be non-nil", buf, 2u);
    }

    v11 = 0;
  }

  return v11;
}

+ (id)nodeWithRequest:(id)a3 andConfiguration:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [objc_alloc(objc_opt_class()) initWithRequest:v5 andConfiguration:v6];

  return v7;
}

- (VCPVideoProcessorNode)initWithFrameProcessor:(id)a3 andConfiguration:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v6)
  {
    v13.receiver = self;
    v13.super_class = VCPVideoProcessorNode;
    v8 = [(VCPVideoProcessorNode *)&v13 init];
    if (v8)
    {
      v9 = _Block_copy(v6);
      frameProcessor = v8->_frameProcessor;
      v8->_frameProcessor = v9;

      [(VCPVideoProcessorNode *)v8 _processConfiguration:v7];
    }

    self = v8;
    v11 = self;
  }

  else
  {
    if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Frame processor must be non-nil", buf, 2u);
    }

    v11 = 0;
  }

  return v11;
}

+ (id)nodeWithFrameProcessor:(id)a3 andConfiguration:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [objc_alloc(objc_opt_class()) initWithFrameProcessor:v5 andConfiguration:v6];

  return v7;
}

- (BOOL)finished
{
  frameLimit = self->_frameLimit;
  if (frameLimit)
  {
    processedFrameCount = self->_processedFrameCount;
    LOBYTE(frameLimit) = processedFrameCount >= [(NSNumber *)frameLimit unsignedIntegerValue];
  }

  return frameLimit;
}

@end