@interface VCPEspressoV2IOPort
- (int)prepareInput:(void *)a3;
- (int)retainAndBindToPort:(e5rt_execution_stream_operation *)a3 name:(id)a4 isInput:(BOOL)a5;
- (int64_t)getTensorType:(e5rt_tensor_desc *)a3;
- (unint64_t)getOutput:(void *)a3;
- (unint64_t)getTensorShape;
- (void)dealloc;
@end

@implementation VCPEspressoV2IOPort

- (int)retainAndBindToPort:(e5rt_execution_stream_operation *)a3 name:(id)a4 isInput:(BOOL)a5
{
  v5 = a5;
  v17 = *MEMORY[0x1E69E9840];
  v7 = a4;
  v8 = v7;
  if (v5)
  {
    [v7 UTF8String];
    if (e5rt_execution_stream_operation_retain_input_port())
    {
      if (MediaAnalysisLogLevel() < 3 || !os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_19;
      }

      goto LABEL_17;
    }
  }

  else
  {
    [v7 UTF8String];
    if (e5rt_execution_stream_operation_retain_output_port())
    {
      if (MediaAnalysisLogLevel() < 3 || !os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_19;
      }

      goto LABEL_17;
    }
  }

  if (e5rt_io_port_retain_tensor_desc())
  {
    if (MediaAnalysisLogLevel() < 3 || !os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_19;
    }

    goto LABEL_17;
  }

  if (e5rt_tensor_desc_alloc_buffer_object())
  {
    if (MediaAnalysisLogLevel() < 3 || !os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_19;
    }

    goto LABEL_17;
  }

  v14 = [(VCPEspressoV2IOPort *)self getTensorType:0];
  self->_tensorType = v14;
  if (v14 == 3)
  {
    if (MediaAnalysisLogLevel() < 3 || !os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_19;
    }

    *buf = 0;
    v9 = MEMORY[0x1E69E9C10];
    v10 = "UnSupported Tensor Type - (only Int32, FP16, FP32 are supported)";
    v11 = 2;
    goto LABEL_18;
  }

  if (e5rt_io_port_bind_buffer_object())
  {
    if (MediaAnalysisLogLevel() < 3 || !os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_19;
    }

    goto LABEL_17;
  }

  if (!e5rt_tensor_desc_release())
  {
    v12 = 0;
    goto LABEL_20;
  }

  if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
LABEL_17:
    *buf = 136315138;
    last_error_message = e5rt_get_last_error_message();
    v9 = MEMORY[0x1E69E9C10];
    v10 = "E5RT op failed: %s";
    v11 = 12;
LABEL_18:
    _os_log_impl(&dword_1C9B70000, v9, OS_LOG_TYPE_ERROR, v10, buf, v11);
  }

LABEL_19:
  v12 = -18;
LABEL_20:

  return v12;
}

- (int64_t)getTensorType:(e5rt_tensor_desc *)a3
{
  v6 = *MEMORY[0x1E69E9840];
  e5rt_tensor_desc_retain_dtype();
  if (e5rt_tensor_desc_dtype_get_component_dtype())
  {
    if (MediaAnalysisLogLevel() < 3 || !os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      return 3;
    }

    goto LABEL_12;
  }

  if (e5rt_tensor_desc_dtype_get_element_size())
  {
    if (MediaAnalysisLogLevel() < 3 || !os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      return 3;
    }

    goto LABEL_12;
  }

  if (e5rt_tensor_desc_dtype_release())
  {
    if (MediaAnalysisLogLevel() < 3 || !os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      return 3;
    }

LABEL_12:
    *buf = 136315138;
    last_error_message = e5rt_get_last_error_message();
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "E5RT op failed: %s", buf, 0xCu);
    return 3;
  }

  return 3;
}

- (int)prepareInput:(void *)a3
{
  v15 = *MEMORY[0x1E69E9840];
  v5 = [(VCPEspressoV2IOPort *)self getTensorShape];
  if (!v5)
  {
    if (MediaAnalysisLogLevel() < 3 || !os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      return -18;
    }

    *buf = 0;
    v7 = MEMORY[0x1E69E9C10];
    v8 = "Invalid input size";
    v9 = 2;
    goto LABEL_9;
  }

  v6 = v5;
  if (e5rt_buffer_object_get_data_ptr())
  {
    if (MediaAnalysisLogLevel() < 3 || !os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      return -18;
    }

    *buf = 136315138;
    last_error_message = e5rt_get_last_error_message();
    v7 = MEMORY[0x1E69E9C10];
    v8 = "E5RT op failed: %s";
    v9 = 12;
LABEL_9:
    _os_log_impl(&dword_1C9B70000, v7, OS_LOG_TYPE_ERROR, v8, buf, v9);
    return -18;
  }

  tensorType = self->_tensorType;
  switch(tensorType)
  {
    case 2:
      goto LABEL_14;
    case 1:
      v12 = 2 * v6;
      goto LABEL_16;
    case 0:
LABEL_14:
      v12 = 4 * v6;
LABEL_16:
      memcpy(0, a3, v12);
      break;
  }

  return 0;
}

- (unint64_t)getOutput:(void *)a3
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = [(VCPEspressoV2IOPort *)self getTensorShape];
  if (!v3)
  {
    if (MediaAnalysisLogLevel() < 3 || !os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      return 0;
    }

    LOWORD(v9) = 0;
    v5 = MEMORY[0x1E69E9C10];
    v6 = "Invalid output size";
    v7 = 2;
    goto LABEL_9;
  }

  v4 = v3;
  if (e5rt_buffer_object_get_data_ptr())
  {
    if (MediaAnalysisLogLevel() < 3 || !os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      return 0;
    }

    v9 = 136315138;
    last_error_message = e5rt_get_last_error_message();
    v5 = MEMORY[0x1E69E9C10];
    v6 = "E5RT op failed: %s";
    v7 = 12;
LABEL_9:
    _os_log_impl(&dword_1C9B70000, v5, OS_LOG_TYPE_ERROR, v6, &v9, v7);
    return 0;
  }

  return v4;
}

- (unint64_t)getTensorShape
{
  v6 = *MEMORY[0x1E69E9840];
  if (e5rt_io_port_retain_tensor_desc())
  {
    if (MediaAnalysisLogLevel() < 3 || !os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      return 0;
    }

    goto LABEL_12;
  }

  if (e5rt_tensor_desc_get_shape())
  {
    if (MediaAnalysisLogLevel() < 3 || !os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      return 0;
    }

    goto LABEL_12;
  }

  v2 = 1;
  if (e5rt_tensor_desc_release())
  {
    if (MediaAnalysisLogLevel() < 3 || !os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      return 0;
    }

LABEL_12:
    *buf = 136315138;
    last_error_message = e5rt_get_last_error_message();
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "E5RT op failed: %s", buf, 0xCu);
    return 0;
  }

  return v2;
}

- (void)dealloc
{
  e5rt_io_port_release();
  e5rt_buffer_object_release();
  v3.receiver = self;
  v3.super_class = VCPEspressoV2IOPort;
  [(VCPEspressoV2IOPort *)&v3 dealloc];
}

@end