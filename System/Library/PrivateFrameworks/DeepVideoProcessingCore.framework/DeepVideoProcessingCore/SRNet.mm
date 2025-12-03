@interface SRNet
- (BOOL)allocateOutputBufferObjects;
- (BOOL)compileModelOnDevice;
- (BOOL)createFunction;
- (BOOL)executeSynchronouslyOperation:(e5rt_execution_stream_operation *)operation onStream:(e5rt_execution_stream *)stream;
- (BOOL)getOutputPortNames;
- (BOOL)initializeModel;
- (BOOL)resetStream:(e5rt_execution_stream *)stream;
- (SRNet)initWithModelPath:(id)path inputWidth:(unint64_t)width inputHeight:(unint64_t)height;
- (void)allocateOutputBufferObjects;
- (void)compileModelOnDevice;
- (void)createFunction;
- (void)dealloc;
@end

@implementation SRNet

- (BOOL)compileModelOnDevice
{
  if (e5rt_e5_compiler_options_create())
  {
    e5rt_get_last_error_message();
    if ((global_logLevel & 0x10) == 0)
    {
LABEL_15:
      LOBYTE(v3) = 0;
      return v3;
    }

    v3 = os_log_type_enabled(global_logger, OS_LOG_TYPE_ERROR);
    if (v3)
    {
      [SRNet compileModelOnDevice];
      goto LABEL_15;
    }
  }

  else if (e5rt_e5_compiler_options_set_compute_device_types_mask())
  {
    e5rt_get_last_error_message();
    if ((global_logLevel & 0x10) == 0)
    {
      goto LABEL_15;
    }

    v3 = os_log_type_enabled(global_logger, OS_LOG_TYPE_ERROR);
    if (v3)
    {
      [SRNet compileModelOnDevice];
      goto LABEL_15;
    }
  }

  else if (e5rt_e5_compiler_create())
  {
    e5rt_get_last_error_message();
    if ((global_logLevel & 0x10) == 0)
    {
      goto LABEL_15;
    }

    v3 = os_log_type_enabled(global_logger, OS_LOG_TYPE_ERROR);
    if (v3)
    {
      [SRNet compileModelOnDevice];
      goto LABEL_15;
    }
  }

  else
  {
    [(NSString *)self->_modelPath UTF8String:0];
    if (e5rt_e5_compiler_compile())
    {
      e5rt_get_last_error_message();
      if ((global_logLevel & 0x10) != 0)
      {
        v3 = os_log_type_enabled(global_logger, OS_LOG_TYPE_ERROR);
        if (!v3)
        {
          return v3;
        }

        [SRNet compileModelOnDevice];
      }

      goto LABEL_15;
    }

    e5rt_e5_compiler_release();
    e5rt_e5_compiler_options_release();
    LOBYTE(v3) = 1;
  }

  return v3;
}

- (BOOL)createFunction
{
  v25 = *MEMORY[0x277D85DE8];
  v22 = 0;
  num_functions = e5rt_program_library_get_num_functions();
  MEMORY[0x28223BE20](num_functions);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v4 >= 0x200)
  {
    v6 = 512;
  }

  else
  {
    v6 = v4;
  }

  bzero(&v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v6);
  e5rt_program_library_get_function_names();
  if ((global_logLevel & 8) != 0 && os_log_type_enabled(global_logger, OS_LOG_TYPE_DEBUG))
  {
    [SRNet createFunction];
  }

  if (!v22)
  {
    goto LABEL_18;
  }

  v20 = &v19;
  v8 = 0;
  v9 = 0;
  *&v7 = 136315138;
  v19 = v7;
  do
  {
    if ((global_logLevel & 8) != 0)
    {
      v10 = global_logger;
      if (os_log_type_enabled(global_logger, OS_LOG_TYPE_DEBUG))
      {
        v15 = *&v5[8 * v8];
        *buf = v19;
        v24 = v15;
        _os_log_debug_impl(&dword_24874B000, v10, OS_LOG_TYPE_DEBUG, "%s", buf, 0xCu);
      }
    }

    inputWidth = self->_inputWidth;
    inputHeight = self->_inputHeight;
    v13 = [MEMORY[0x277CCACA8] stringWithCString:*&v5[8 * v8] encoding:{4, v19}];
    inputHeight = [MEMORY[0x277CCACA8] stringWithFormat:@"%zux%zu", inputWidth, inputHeight];
    LODWORD(inputHeight) = [v13 hasSuffix:inputHeight];

    if (inputHeight)
    {
      v9 = 1;
    }

    ++v8;
  }

  while (v22 > v8);
  if ((v9 & 1) == 0)
  {
LABEL_18:
    LOBYTE(v16) = 0;
    return v16;
  }

  if (e5rt_program_library_retain_program_function())
  {
    e5rt_get_last_error_message();
    if ((global_logLevel & 0x10) != 0)
    {
      v16 = os_log_type_enabled(global_logger, OS_LOG_TYPE_ERROR);
      if (!v16)
      {
        return v16;
      }

      [SRNet createFunction];
    }

    goto LABEL_18;
  }

  v21 = 0;
  e5rt_program_library_get_function_metadata();
  if ((global_logLevel & 8) != 0)
  {
    v17 = global_logger;
    if (os_log_type_enabled(global_logger, OS_LOG_TYPE_DEBUG))
    {
      [(SRNet *)&v21 createFunction];
    }
  }

  if (v21)
  {
    CFRelease(v21);
  }

  LOBYTE(v16) = 1;
  return v16;
}

- (BOOL)getOutputPortNames
{
  if (!e5rt_execution_stream_operation_get_num_outputs())
  {
    if ((global_logLevel & 0x10) != 0)
    {
      v2 = os_log_type_enabled(global_logger, OS_LOG_TYPE_ERROR);
      if (!v2)
      {
        return v2;
      }

      [SRNet getOutputPortNames];
    }

    goto LABEL_6;
  }

  if ((global_logLevel & 0x10) == 0)
  {
LABEL_6:
    LOBYTE(v2) = 0;
    return v2;
  }

  v2 = os_log_type_enabled(global_logger, OS_LOG_TYPE_ERROR);
  if (v2)
  {
    [SRNet getOutputPortNames];
    goto LABEL_6;
  }

  return v2;
}

- (BOOL)allocateOutputBufferObjects
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
      [SRNet allocateOutputBufferObjects];
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
      [SRNet allocateOutputBufferObjects];
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
        outputPortName = self->_outputPortName;
        *buf = 138413058;
        v8 = outputPortName;
        v9 = 2048;
        v10 = 0;
        v11 = 2048;
        v12 = 0;
        v13 = 2048;
        v14 = 0;
        _os_log_debug_impl(&dword_24874B000, v4, OS_LOG_TYPE_DEBUG, "Output [%@]: %ld x %ld x %ld", buf, 0x2Au);
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

        [SRNet allocateOutputBufferObjects];
      }

      goto LABEL_14;
    }

    LOBYTE(v3) = 1;
  }

  return v3;
}

- (void)dealloc
{
  if (self->_library)
  {
    e5rt_program_library_release();
  }

  function = self->_function;
  self->_library = 0;
  if (function)
  {
    e5rt_program_function_release();
  }

  operation = self->_operation;
  self->_function = 0;
  if (operation)
  {
    e5rt_execution_stream_operation_release();
  }

  stream = self->_stream;
  self->_operation = 0;
  if (stream)
  {
    e5rt_execution_stream_release();
  }

  outputBufferObject = self->_outputBufferObject;
  self->_stream = 0;
  if (outputBufferObject)
  {
    e5rt_buffer_object_release();
  }

  output_port = self->_output_port;
  self->_outputBufferObject = 0;
  if (output_port)
  {
    e5rt_io_port_release();
  }

  self->_output_port = 0;
  v8.receiver = self;
  v8.super_class = SRNet;
  [(SRNet *)&v8 dealloc];
}

- (BOOL)executeSynchronouslyOperation:(e5rt_execution_stream_operation *)operation onStream:(e5rt_execution_stream *)stream
{
  v15 = *MEMORY[0x277D85DE8];
  if (e5rt_async_event_create())
  {
    e5rt_get_last_error_message();
    if ((global_logLevel & 0x10) == 0)
    {
LABEL_35:
      LOBYTE(v4) = 0;
      return v4;
    }

    v4 = os_log_type_enabled(global_logger, OS_LOG_TYPE_ERROR);
    if (v4)
    {
      [SRNet executeSynchronouslyOperation:onStream:];
      goto LABEL_35;
    }
  }

  else if (e5rt_async_event_create())
  {
    e5rt_get_last_error_message();
    if ((global_logLevel & 0x10) == 0)
    {
      goto LABEL_35;
    }

    v4 = os_log_type_enabled(global_logger, OS_LOG_TYPE_ERROR);
    if (v4)
    {
      [SRNet executeSynchronouslyOperation:onStream:];
      goto LABEL_35;
    }
  }

  else if (e5rt_execution_stream_operation_bind_dependent_events())
  {
    e5rt_get_last_error_message();
    if ((global_logLevel & 0x10) == 0)
    {
      goto LABEL_35;
    }

    v4 = os_log_type_enabled(global_logger, OS_LOG_TYPE_ERROR);
    if (v4)
    {
      [SRNet executeSynchronouslyOperation:onStream:];
      goto LABEL_35;
    }
  }

  else if (e5rt_execution_stream_operation_bind_completion_event())
  {
    e5rt_get_last_error_message();
    if ((global_logLevel & 0x10) == 0)
    {
      goto LABEL_35;
    }

    v4 = os_log_type_enabled(global_logger, OS_LOG_TYPE_ERROR);
    if (v4)
    {
      [SRNet executeSynchronouslyOperation:onStream:];
      goto LABEL_35;
    }
  }

  else
  {
    if ((global_logLevel & 8) != 0 && os_log_type_enabled(global_logger, OS_LOG_TYPE_DEBUG))
    {
      [SRNet executeSynchronouslyOperation:onStream:];
    }

    if (e5rt_execution_stream_operation_prepare_op_for_encode())
    {
      e5rt_get_last_error_message();
      if ((global_logLevel & 0x10) == 0)
      {
        goto LABEL_35;
      }

      v4 = os_log_type_enabled(global_logger, OS_LOG_TYPE_ERROR);
      if (v4)
      {
        [SRNet executeSynchronouslyOperation:onStream:];
        goto LABEL_35;
      }
    }

    else if (e5rt_execution_stream_encode_operation())
    {
      e5rt_get_last_error_message();
      if ((global_logLevel & 0x10) == 0)
      {
        goto LABEL_35;
      }

      v4 = os_log_type_enabled(global_logger, OS_LOG_TYPE_ERROR);
      if (v4)
      {
        [SRNet executeSynchronouslyOperation:onStream:];
        goto LABEL_35;
      }
    }

    else
    {
      if ((global_logLevel & 8) != 0 && os_log_type_enabled(global_logger, OS_LOG_TYPE_DEBUG))
      {
        [SRNet executeSynchronouslyOperation:onStream:];
      }

      v5 = e5rt_execution_stream_execute_sync();
      if (v5)
      {
        v6 = v5;
        last_error_message = e5rt_get_last_error_message();
        if ((global_logLevel & 4) == 0)
        {
          goto LABEL_35;
        }

        v8 = last_error_message;
        v9 = global_logger;
        v4 = os_log_type_enabled(global_logger, OS_LOG_TYPE_INFO);
        if (v4)
        {
          *buf = 67109378;
          v12 = v6;
          v13 = 2080;
          v14 = v8;
          _os_log_impl(&dword_24874B000, v9, OS_LOG_TYPE_INFO, "Excecution failed. returned error = %u. msg = %s\n", buf, 0x12u);
          goto LABEL_35;
        }
      }

      else
      {
        e5rt_async_event_release();
        e5rt_async_event_release();
        LOBYTE(v4) = 1;
      }
    }
  }

  return v4;
}

- (BOOL)resetStream:(e5rt_execution_stream *)stream
{
  v3 = e5rt_execution_stream_reset();
  if (v3)
  {
    e5rt_get_last_error_message();
    if ((global_logLevel & 0x10) != 0 && os_log_type_enabled(global_logger, OS_LOG_TYPE_ERROR))
    {
      [SRNet resetStream:];
    }
  }

  return v3 == 0;
}

- (SRNet)initWithModelPath:(id)path inputWidth:(unint64_t)width inputHeight:(unint64_t)height
{
  pathCopy = path;
  v15.receiver = self;
  v15.super_class = SRNet;
  v10 = [(SRNet *)&v15 init];
  if (!v10 || (v11 = objc_alloc_init(OFNormalization), normalization = v10->_normalization, v10->_normalization = v11, normalization, objc_storeStrong(&v10->_modelPath, path), v10->_inputWidth = width, v10->_inputHeight = height, [(SRNet *)v10 initializeModel]) && [(SRNet *)v10 allocateOutputBufferObjects])
  {
    v13 = v10;
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (BOOL)initializeModel
{
  v11 = *MEMORY[0x277D85DE8];
  compileModelOnDevice = [(SRNet *)self compileModelOnDevice];
  if (!compileModelOnDevice)
  {
    return compileModelOnDevice;
  }

  compileModelOnDevice = [(SRNet *)self createFunction];
  if (!compileModelOnDevice)
  {
    return compileModelOnDevice;
  }

  if (e5rt_precompiled_compute_op_create_options_create_with_program_function())
  {
    e5rt_get_last_error_message();
    OUTLINED_FUNCTION_3_9();
    if ((v4 & 0x10) != 0)
    {
      v5 = global_logger;
      compileModelOnDevice = OUTLINED_FUNCTION_7_5();
      if (compileModelOnDevice)
      {
        goto LABEL_19;
      }

      return compileModelOnDevice;
    }

LABEL_20:
    LOBYTE(compileModelOnDevice) = 0;
    return compileModelOnDevice;
  }

  if (e5rt_execution_stream_operation_create_precompiled_compute_operation_with_options())
  {
    e5rt_get_last_error_message();
    OUTLINED_FUNCTION_3_9();
    if ((v6 & 0x10) != 0)
    {
      v5 = global_logger;
      compileModelOnDevice = OUTLINED_FUNCTION_7_5();
      if (compileModelOnDevice)
      {
        goto LABEL_19;
      }

      return compileModelOnDevice;
    }

    goto LABEL_20;
  }

  e5rt_precompiled_compute_op_create_options_release();
  compileModelOnDevice = [(SRNet *)self getOutputPortNames];
  if (!compileModelOnDevice)
  {
    return compileModelOnDevice;
  }

  [(NSString *)self->_outputPortName UTF8String];
  if (e5rt_execution_stream_operation_retain_output_port())
  {
    e5rt_get_last_error_message();
    OUTLINED_FUNCTION_3_9();
    if ((v7 & 0x10) != 0)
    {
      v5 = global_logger;
      compileModelOnDevice = OUTLINED_FUNCTION_7_5();
      if (compileModelOnDevice)
      {
        goto LABEL_19;
      }

      return compileModelOnDevice;
    }

    goto LABEL_20;
  }

  if (!e5rt_execution_stream_create())
  {
    LOBYTE(compileModelOnDevice) = 1;
    return compileModelOnDevice;
  }

  e5rt_get_last_error_message();
  OUTLINED_FUNCTION_3_9();
  if ((v8 & 0x10) == 0)
  {
    goto LABEL_20;
  }

  v5 = global_logger;
  compileModelOnDevice = OUTLINED_FUNCTION_7_5();
  if (compileModelOnDevice)
  {
LABEL_19:
    *buf = 136315650;
    OUTLINED_FUNCTION_2_13();
    _os_log_error_impl(&dword_24874B000, v5, OS_LOG_TYPE_ERROR, "FAILURE: %s returned error = %u. msg = %s\n", buf, 0x1Cu);
    goto LABEL_20;
  }

  return compileModelOnDevice;
}

- (void)compileModelOnDevice
{
  LODWORD(v2) = 136315650;
  OUTLINED_FUNCTION_0_23();
  OUTLINED_FUNCTION_1_24(&dword_24874B000, v0, v1, "FAILURE: %s returned error = %u. msg = %s\n", v2, v3, v4);
}

- (void)createFunction
{
  v5 = *MEMORY[0x277D85DE8];
  v2 = *self;
  v3 = 138412290;
  v4 = v2;
  _os_log_debug_impl(&dword_24874B000, a2, OS_LOG_TYPE_DEBUG, "Library metadata %@", &v3, 0xCu);
}

- (void)allocateOutputBufferObjects
{
  LODWORD(v2) = 136315650;
  OUTLINED_FUNCTION_0_23();
  OUTLINED_FUNCTION_1_24(&dword_24874B000, v0, v1, "FAILURE: %s returned error = %u. msg = %s\n", v2, v3, v4);
}

- (void)executeSynchronouslyOperation:onStream:.cold.1()
{
  LODWORD(v2) = 136315650;
  OUTLINED_FUNCTION_0_23();
  OUTLINED_FUNCTION_1_24(&dword_24874B000, v0, v1, "FAILURE: %s returned error = %u. msg = %s\n", v2, v3, v4);
}

- (void)executeSynchronouslyOperation:onStream:.cold.2()
{
  LODWORD(v2) = 136315650;
  OUTLINED_FUNCTION_0_23();
  OUTLINED_FUNCTION_1_24(&dword_24874B000, v0, v1, "FAILURE: %s returned error = %u. msg = %s\n", v2, v3, v4);
}

- (void)executeSynchronouslyOperation:onStream:.cold.3()
{
  LODWORD(v2) = 136315650;
  OUTLINED_FUNCTION_0_23();
  OUTLINED_FUNCTION_1_24(&dword_24874B000, v0, v1, "FAILURE: %s returned error = %u. msg = %s\n", v2, v3, v4);
}

- (void)executeSynchronouslyOperation:onStream:.cold.4()
{
  LODWORD(v2) = 136315650;
  OUTLINED_FUNCTION_0_23();
  OUTLINED_FUNCTION_1_24(&dword_24874B000, v0, v1, "FAILURE: %s returned error = %u. msg = %s\n", v2, v3, v4);
}

- (void)executeSynchronouslyOperation:onStream:.cold.6()
{
  LODWORD(v2) = 136315650;
  OUTLINED_FUNCTION_0_23();
  OUTLINED_FUNCTION_1_24(&dword_24874B000, v0, v1, "FAILURE: %s returned error = %u. msg = %s\n", v2, v3, v4);
}

- (void)executeSynchronouslyOperation:onStream:.cold.7()
{
  LODWORD(v2) = 136315650;
  OUTLINED_FUNCTION_0_23();
  OUTLINED_FUNCTION_1_24(&dword_24874B000, v0, v1, "FAILURE: %s returned error = %u. msg = %s\n", v2, v3, v4);
}

- (void)resetStream:.cold.1()
{
  LODWORD(v2) = 136315650;
  OUTLINED_FUNCTION_0_23();
  OUTLINED_FUNCTION_1_24(&dword_24874B000, v0, v1, "FAILURE: %s returned error = %u. msg = %s\n", v2, v3, v4);
}

@end