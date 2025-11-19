@interface VCPFlowDecoder
- (id)initModule:(int)a3 config:(id)a4 cancel:(id)a5;
- (int)bindWithBuffers:(__CVBuffer *)a3 correlation:(__CVBuffer *)a4 flow:(__CVBuffer *)a5 outputFlow:(__CVBuffer *)a6;
- (int)estimateFlow:(__CVBuffer *)a3 correlation:(__CVBuffer *)a4 flow:(__CVBuffer *)a5 outputFlow:(__CVBuffer *)a6 callback:(id)a7;
@end

@implementation VCPFlowDecoder

- (id)initModule:(int)a3 config:(id)a4 cancel:(id)a5
{
  v6 = *&a3;
  v8 = a4;
  v9 = a5;
  v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"flow_estimation_%d", v6];
  if (v9 && (v9[2](v9) & 1) != 0)
  {
    v11 = 0;
  }

  else
  {
    v17.receiver = self;
    v17.super_class = VCPFlowDecoder;
    v12 = [(VCPEspressoModel *)&v17 initModelWithName:v10 andConfig:v8];
    v11 = v12;
    if (v12)
    {
      inputBlobNames = v12->_inputBlobNames;
      v12->_inputBlobNames = &unk_1F49BEB78;

      outpuBlobName = v11->_outpuBlobName;
      v11->_outpuBlobName = @"t_38";

      self = v11;
    }

    else
    {
      self = 0;
    }
  }

  v15 = v11;

  return v15;
}

- (int)bindWithBuffers:(__CVBuffer *)a3 correlation:(__CVBuffer *)a4 flow:(__CVBuffer *)a5 outputFlow:(__CVBuffer *)a6
{
  v7 = [(NSArray *)self->_inputBlobNames objectAtIndexedSubscript:0];
  [v7 UTF8String];
  v8 = espresso_network_bind_direct_cvpixelbuffer();

  if (v8)
  {
    if (MediaAnalysisLogLevel() < 3 || !os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      return -108;
    }

    v20 = 0;
    v9 = MEMORY[0x1E69E9C10];
    v10 = "Flow decoder: fail to bind inputFeature";
    v11 = &v20;
    goto LABEL_17;
  }

  v12 = [(NSArray *)self->_inputBlobNames objectAtIndexedSubscript:1];
  [v12 UTF8String];
  v13 = espresso_network_bind_direct_cvpixelbuffer();

  if (v13)
  {
    if (MediaAnalysisLogLevel() < 3 || !os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      return -108;
    }

    v19 = 0;
    v9 = MEMORY[0x1E69E9C10];
    v10 = "Flow decoder: fail to bind correlation";
    v11 = &v19;
    goto LABEL_17;
  }

  v14 = [(NSArray *)self->_inputBlobNames objectAtIndexedSubscript:2];
  [v14 UTF8String];
  v15 = espresso_network_bind_direct_cvpixelbuffer();

  if (v15)
  {
    if (MediaAnalysisLogLevel() < 3 || !os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      return -108;
    }

    v18 = 0;
    v9 = MEMORY[0x1E69E9C10];
    v10 = "Flow decoder: fail to bind upscaled flow";
    v11 = &v18;
    goto LABEL_17;
  }

  [(NSString *)self->_outpuBlobName UTF8String];
  result = espresso_network_bind_direct_cvpixelbuffer();
  if (!result)
  {
    return result;
  }

  if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v17 = 0;
    v9 = MEMORY[0x1E69E9C10];
    v10 = "Flow decoder: fail to bind output flow";
    v11 = &v17;
LABEL_17:
    _os_log_impl(&dword_1C9B70000, v9, OS_LOG_TYPE_ERROR, v10, v11, 2u);
  }

  return -108;
}

- (int)estimateFlow:(__CVBuffer *)a3 correlation:(__CVBuffer *)a4 flow:(__CVBuffer *)a5 outputFlow:(__CVBuffer *)a6 callback:(id)a7
{
  v12 = a7;
  v13 = [(VCPFlowDecoder *)self bindWithBuffers:a3 correlation:a4 flow:a5 outputFlow:a6];
  if (v13)
  {
    if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Flow decoder: fail to bind buffers", buf, 2u);
    }

    v12[2](v12);
  }

  else
  {
    v15 = v12;
    if (espresso_plan_submit())
    {
      if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Flow decoder: fail to execute", buf, 2u);
      }

      v13 = -18;
    }

    else
    {
      v13 = 0;
    }
  }

  return v13;
}

uint64_t __68__VCPFlowDecoder_estimateFlow_correlation_flow_outputFlow_callback___block_invoke(uint64_t a1)
{
  if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
  {
    *v3 = 0;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "Flow decoder: executing callback", v3, 2u);
  }

  return (*(*(a1 + 32) + 16))();
}

@end