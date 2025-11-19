@interface ISRNet
- (BOOL)allocateInputBufferObjects;
- (BOOL)getInputPortNames;
- (BOOL)initializeInputPorts;
- (BOOL)processSuperResolutionInputBuffer:(__CVBuffer *)a3 outputBuffer:(__CVBuffer *)a4;
- (ISRNet)initWithModelPath:(id)a3 inputWidth:(unint64_t)a4 inputHeight:(unint64_t)a5;
- (void)allocateInputBufferObjects;
- (void)dealloc;
- (void)getInputPortNames;
- (void)initializeInputPorts;
@end

@implementation ISRNet

- (BOOL)initializeInputPorts
{
  [(ISRNet *)self getInputPortNames];
  [(SRNet *)self operation];
  [(NSString *)self->_inputPortName UTF8String];
  v3 = e5rt_execution_stream_operation_retain_input_port();
  if (v3)
  {
    e5rt_get_last_error_message();
    if ((global_logLevel & 0x10) != 0 && os_log_type_enabled(global_logger, OS_LOG_TYPE_ERROR))
    {
      [ISRNet initializeInputPorts];
    }
  }

  return v3 == 0;
}

- (BOOL)getInputPortNames
{
  [(SRNet *)self operation];
  if (!e5rt_execution_stream_operation_get_num_inputs())
  {
    if ((global_logLevel & 0x10) != 0)
    {
      v2 = os_log_type_enabled(global_logger, OS_LOG_TYPE_ERROR);
      if (!v2)
      {
        return v2;
      }

      [VSRNet getInputPortNames];
    }

    goto LABEL_6;
  }

  e5rt_get_last_error_message();
  if ((global_logLevel & 0x10) == 0)
  {
LABEL_6:
    LOBYTE(v2) = 0;
    return v2;
  }

  v2 = os_log_type_enabled(global_logger, OS_LOG_TYPE_ERROR);
  if (v2)
  {
    [ISRNet getInputPortNames];
    goto LABEL_6;
  }

  return v2;
}

- (BOOL)allocateInputBufferObjects
{
  v15 = *MEMORY[0x277D85DE8];
  if (e5rt_io_port_retain_tensor_desc())
  {
    e5rt_get_last_error_message();
    if ((global_logLevel & 0x10) == 0)
    {
LABEL_14:
      LOBYTE(v3) = 0;
      return v3;
    }

    v3 = os_log_type_enabled(global_logger, OS_LOG_TYPE_ERROR);
    if (v3)
    {
      [ISRNet allocateInputBufferObjects];
      goto LABEL_14;
    }
  }

  else if (e5rt_tensor_desc_alloc_buffer_object())
  {
    e5rt_get_last_error_message();
    if ((global_logLevel & 0x10) == 0)
    {
      goto LABEL_14;
    }

    v3 = os_log_type_enabled(global_logger, OS_LOG_TYPE_ERROR);
    if (v3)
    {
      [ISRNet allocateInputBufferObjects];
      goto LABEL_14;
    }
  }

  else
  {
    e5rt_tensor_desc_release();
    getPortShape();
    if ((global_logLevel & 8) != 0)
    {
      v4 = global_logger;
      if (os_log_type_enabled(global_logger, OS_LOG_TYPE_DEBUG))
      {
        inputPortName = self->_inputPortName;
        *buf = 138413058;
        v8 = inputPortName;
        v9 = 2048;
        v10 = 0;
        v11 = 2048;
        v12 = 0;
        v13 = 2048;
        v14 = 0;
        _os_log_debug_impl(&dword_24874B000, v4, OS_LOG_TYPE_DEBUG, "Input [%@]: %ld x %ld x %ld", buf, 0x2Au);
      }
    }

    if (e5rt_buffer_object_get_iosurface())
    {
      e5rt_get_last_error_message();
      if ((global_logLevel & 0x10) != 0)
      {
        v3 = os_log_type_enabled(global_logger, OS_LOG_TYPE_ERROR);
        if (!v3)
        {
          return v3;
        }

        [ISRNet allocateInputBufferObjects];
      }

      goto LABEL_14;
    }

    LOBYTE(v3) = 1;
  }

  return v3;
}

- (void)dealloc
{
  if (self->_inputBufferObject)
  {
    e5rt_buffer_object_release();
    self->_inputBufferObject = 0;
  }

  if (self->_input_port)
  {
    e5rt_io_port_release();
  }

  v3.receiver = self;
  v3.super_class = ISRNet;
  [(SRNet *)&v3 dealloc];
}

- (BOOL)processSuperResolutionInputBuffer:(__CVBuffer *)a3 outputBuffer:(__CVBuffer *)a4
{
  v7 = [(SRNet *)self normalization];
  [v7 convertBuffer:a3 toFP16IOSurface:self->_inputSurface];

  if (e5rt_io_port_bind_buffer_object())
  {
    e5rt_get_last_error_message();
    if ((global_logLevel & 0x10) != 0 && os_log_type_enabled(global_logger, OS_LOG_TYPE_ERROR))
    {
      [ISRNet processSuperResolutionInputBuffer:outputBuffer:];
    }

    return 0;
  }

  [(SRNet *)self output_port];
  [(SRNet *)self outputBufferObject];
  if (e5rt_io_port_bind_buffer_object())
  {
    e5rt_get_last_error_message();
    if ((global_logLevel & 0x10) != 0 && os_log_type_enabled(global_logger, OS_LOG_TYPE_ERROR))
    {
      [VSRNet processSuperResolutionInputBuffer:withPrevHighResolutionFrame:outputBuffer:];
    }

    return 0;
  }

  v9 = [(SRNet *)self executeSynchronouslyOperation:[(SRNet *)self operation] onStream:[(SRNet *)self stream]];
  v10 = [(SRNet *)self normalization];
  [v10 convertFP16IOSurface:-[SRNet outputSurface](self toBuffer:{"outputSurface"), a4}];

  [(SRNet *)self resetStream:[(SRNet *)self stream]];
  return v9;
}

- (ISRNet)initWithModelPath:(id)a3 inputWidth:(unint64_t)a4 inputHeight:(unint64_t)a5
{
  v9.receiver = self;
  v9.super_class = ISRNet;
  v5 = [(SRNet *)&v9 initWithModelPath:a3 inputWidth:a4 inputHeight:a5];
  v6 = v5;
  if (!v5 || [(ISRNet *)v5 initializeInputPorts]&& [(ISRNet *)v6 allocateInputBufferObjects])
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)initializeInputPorts
{
  LODWORD(v2) = 136315650;
  OUTLINED_FUNCTION_0_23();
  OUTLINED_FUNCTION_1_24(&dword_24874B000, v0, v1, "FAILURE: %s returned error = %u. msg = %s\n", v2, v3, v4);
}

- (void)getInputPortNames
{
  LODWORD(v2) = 136315650;
  OUTLINED_FUNCTION_0_23();
  OUTLINED_FUNCTION_1_24(&dword_24874B000, v0, v1, "FAILURE: %s returned error = %u. msg = %s\n", v2, v3, v4);
}

- (void)allocateInputBufferObjects
{
  LODWORD(v2) = 136315650;
  OUTLINED_FUNCTION_0_23();
  OUTLINED_FUNCTION_1_24(&dword_24874B000, v0, v1, "FAILURE: %s returned error = %u. msg = %s\n", v2, v3, v4);
}

- (void)processSuperResolutionInputBuffer:outputBuffer:.cold.1()
{
  LODWORD(v2) = 136315650;
  OUTLINED_FUNCTION_0_23();
  OUTLINED_FUNCTION_1_24(&dword_24874B000, v0, v1, "FAILURE: %s returned error = %u. msg = %s\n", v2, v3, v4);
}

@end