@interface VCPCNNModelEspressoV2
- (VCPCNNModelEspressoV2)initWithParameters:(id)parameters outputNames:(id)names inputNames:(id)inputNames functionName:(id)name precompiled:(BOOL)precompiled;
- (e5rt_execution_stream_operation)createPrecompiledOp:(id)op isPrecompiled:(BOOL)precompiled functionName:(id)name;
- (id).cxx_construct;
- (id)inputsSize;
- (id)inputsType;
- (id)outputsType;
- (int)espressoForward:(void *)forward;
- (int)espressoForwardInputs:(vector<void *);
- (int)getOutputs;
- (vector<VCPEspressoV2Data)outputs;
- (void)dealloc;
@end

@implementation VCPCNNModelEspressoV2

- (VCPCNNModelEspressoV2)initWithParameters:(id)parameters outputNames:(id)names inputNames:(id)inputNames functionName:(id)name precompiled:(BOOL)precompiled
{
  precompiledCopy = precompiled;
  v62 = *MEMORY[0x1E69E9840];
  parametersCopy = parameters;
  namesCopy = names;
  inputNamesCopy = inputNames;
  nameCopy = name;
  v56.receiver = self;
  v56.super_class = VCPCNNModelEspressoV2;
  v14 = [(VCPCNNModelEspressoV2 *)&v56 init];
  v15 = v14;
  v16 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_netFileUrl, parameters);
    objc_storeStrong(&v15->_inputNames, inputNames);
    objc_storeStrong(&v15->_outputNames, names);
    objc_storeStrong(&v15->_functionName, name);
    v17 = MEMORY[0x1E695DFF8];
    path = [(NSURL *)v15->_netFileUrl path];
    if (precompiledCopy)
    {
      v19 = [path stringByAppendingPathExtension:@"bundle"];
      v20 = [v17 URLWithString:v19];

      v21 = [(VCPCNNModelEspressoV2 *)v15 createPrecompiledOp:v20 isPrecompiled:1 functionName:v15->_functionName];
    }

    else
    {
      v22 = [path stringByAppendingPathExtension:@"mlmodelc"];
      v23 = [v17 URLWithString:v22];
      v20 = [v23 URLByAppendingPathComponent:@"model.mil"];

      v21 = [(VCPCNNModelEspressoV2 *)v15 createPrecompiledOp:v20 isPrecompiled:0 functionName:v15->_functionName];
    }

    v24 = v21;
    v55 = v21;

    array = [MEMORY[0x1E695DF70] array];
    inputIOArray = v15->_inputIOArray;
    v15->_inputIOArray = array;

    v53 = 0u;
    v54 = 0u;
    v51 = 0u;
    v52 = 0u;
    v27 = inputNamesCopy;
    v28 = [v27 countByEnumeratingWithState:&v51 objects:v61 count:16];
    if (v28)
    {
      v29 = *v52;
LABEL_7:
      v30 = 0;
      while (1)
      {
        if (*v52 != v29)
        {
          objc_enumerationMutation(v27);
        }

        v31 = *(*(&v51 + 1) + 8 * v30);
        v32 = objc_alloc_init(VCPEspressoV2IOPort);
        if ([(VCPEspressoV2IOPort *)v32 retainAndBindToPort:v24 name:v31 isInput:1])
        {
          break;
        }

        [(NSMutableArray *)v15->_inputIOArray addObject:v32];

        if (v28 == ++v30)
        {
          v28 = [v27 countByEnumeratingWithState:&v51 objects:v61 count:16];
          if (v28)
          {
            goto LABEL_7;
          }

          goto LABEL_13;
        }
      }
    }

    else
    {
LABEL_13:

      array2 = [MEMORY[0x1E695DF70] array];
      outputIOArray = v15->_outputIOArray;
      v15->_outputIOArray = array2;

      v49 = 0u;
      v50 = 0u;
      v47 = 0u;
      v48 = 0u;
      v27 = namesCopy;
      v35 = [v27 countByEnumeratingWithState:&v47 objects:v60 count:16];
      if (!v35)
      {
LABEL_21:

        std::vector<VCPEspressoV2Data * {__strong}>::vector[abi:ne200100](buf, [v27 count]);
        std::vector<VCPEspressoV2Data * {__strong}>::__vdeallocate(&v15->_outputs.__begin_);
        *&v15->_outputs.__begin_ = *buf;
        v15->_outputs.var1 = v59;
        v59 = 0;
        v57 = buf;
        memset(buf, 0, sizeof(buf));
        std::vector<VCPEspressoV2Data * {__strong}>::__destroy_vector::operator()[abi:ne200100](&v57);
        v39 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v27, "count")}];
        outputsSize = v15->_outputsSize;
        v15->_outputsSize = v39;

        if (e5rt_execution_stream_create())
        {
          if (MediaAnalysisLogLevel() < 3 || !os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            goto LABEL_26;
          }
        }

        else if (e5rt_execution_stream_encode_operation())
        {
          if (MediaAnalysisLogLevel() < 3 || !os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            goto LABEL_26;
          }
        }

        else
        {
          if (!e5rt_execution_stream_operation_release())
          {
            v16 = v15;
            goto LABEL_27;
          }

          if (MediaAnalysisLogLevel() < 3 || !os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            goto LABEL_26;
          }
        }

        last_error_message = e5rt_get_last_error_message();
        *buf = 136315138;
        *&buf[4] = last_error_message;
        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "E5RT op failed: %s", buf, 0xCu);
LABEL_26:
        v16 = 0;
        goto LABEL_27;
      }

      v36 = *v48;
LABEL_15:
      v37 = 0;
      while (1)
      {
        if (*v48 != v36)
        {
          objc_enumerationMutation(v27);
        }

        v38 = *(*(&v47 + 1) + 8 * v37);
        v32 = objc_alloc_init(VCPEspressoV2IOPort);
        if ([(VCPEspressoV2IOPort *)v32 retainAndBindToPort:v24 name:v38 isInput:0])
        {
          break;
        }

        [(NSMutableArray *)v15->_outputIOArray addObject:v32];

        if (v35 == ++v37)
        {
          v35 = [v27 countByEnumeratingWithState:&v47 objects:v60 count:16];
          if (v35)
          {
            goto LABEL_15;
          }

          goto LABEL_21;
        }
      }
    }

    goto LABEL_26;
  }

LABEL_27:
  v41 = v16;

  return v41;
}

- (e5rt_execution_stream_operation)createPrecompiledOp:(id)op isPrecompiled:(BOOL)precompiled functionName:(id)name
{
  precompiledCopy = precompiled;
  v30 = *MEMORY[0x1E69E9840];
  opCopy = op;
  nameCopy = name;
  if (precompiledCopy)
  {
    path = [opCopy path];
    [path UTF8String];
    v10 = e5rt_program_library_create() == 0;

    if (!v10)
    {
      if (MediaAnalysisLogLevel() < 3 || !os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_35;
      }

      goto LABEL_33;
    }

    if (e5rt_program_library_release())
    {
      if (MediaAnalysisLogLevel() < 3 || !os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_35;
      }

      goto LABEL_33;
    }

    path2 = [opCopy path];
    v12 = path2;
    [path2 UTF8String];
    v13 = nameCopy;
    [nameCopy UTF8String];
    v14 = e5rt_execution_stream_operation_create_precompiled_compute_operation() == 0;

    if (!v14)
    {
      if (MediaAnalysisLogLevel() < 3 || !os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_35;
      }

      goto LABEL_33;
    }

LABEL_79:
    free(0);
    goto LABEL_36;
  }

  if (e5rt_e5_compiler_create())
  {
    if (MediaAnalysisLogLevel() < 3 || !os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_35;
    }

    goto LABEL_33;
  }

  if (e5rt_e5_compiler_options_create())
  {
    if (MediaAnalysisLogLevel() < 3 || !os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_35;
    }

    goto LABEL_33;
  }

  if (e5rt_e5_compiler_options_get_compute_device_types_mask())
  {
    if (MediaAnalysisLogLevel() < 3 || !os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_35;
    }

    goto LABEL_33;
  }

  if (e5rt_e5_compiler_options_set_mil_entry_points())
  {
    if (MediaAnalysisLogLevel() < 3 || !os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_35;
    }

    *buf = 136315138;
    last_error_message = e5rt_get_last_error_message();
    v15 = MEMORY[0x1E69E9C10];
    v16 = "E5RT op failed %s";
    goto LABEL_34;
  }

  if (e5rt_e5_compiler_options_retain_mil_entry_points())
  {
    if (MediaAnalysisLogLevel() < 3 || !os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_35;
    }

    goto LABEL_33;
  }

  path3 = [opCopy path];
  v19 = [path3 containsString:@"mubb_md"];

  if (v19)
  {
    v20 = +[MADStateHandler sharedStateHandler];
    [v20 enterKnownTimeoutRisk:6];

    path4 = [opCopy path];
    v22 = path4;
    [path4 UTF8String];
    LOBYTE(v20) = e5rt_e5_compiler_compile() == 0;

    if ((v20 & 1) == 0)
    {
      if (MediaAnalysisLogLevel() < 3 || !os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_35;
      }

      goto LABEL_33;
    }

    v26 = +[MADStateHandler sharedStateHandler];
    [v26 exitKnownTimeoutRisk];
  }

  else
  {
    path5 = [opCopy path];
    v24 = path5;
    [path5 UTF8String];
    v25 = e5rt_e5_compiler_compile() == 0;

    if (!v25)
    {
      if (MediaAnalysisLogLevel() < 3 || !os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_35;
      }

      goto LABEL_33;
    }
  }

  v27 = nameCopy;
  [nameCopy UTF8String];
  if (e5rt_program_library_retain_program_function())
  {
    if (MediaAnalysisLogLevel() < 3 || !os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_35;
    }
  }

  else if (e5rt_precompiled_compute_op_create_options_create_with_program_function())
  {
    if (MediaAnalysisLogLevel() < 3 || !os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_35;
    }
  }

  else if (e5rt_execution_stream_operation_create_precompiled_compute_operation_with_options())
  {
    if (MediaAnalysisLogLevel() < 3 || !os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_35;
    }
  }

  else if (e5rt_e5_compiler_release())
  {
    if (MediaAnalysisLogLevel() < 3 || !os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_35;
    }
  }

  else if (e5rt_e5_compiler_options_release())
  {
    if (MediaAnalysisLogLevel() < 3 || !os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_35;
    }
  }

  else if (e5rt_program_function_release())
  {
    if (MediaAnalysisLogLevel() < 3 || !os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_35;
    }
  }

  else if (e5rt_precompiled_compute_op_create_options_release())
  {
    if (MediaAnalysisLogLevel() < 3 || !os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_35;
    }
  }

  else
  {
    if (!e5rt_program_library_release())
    {
      goto LABEL_79;
    }

    if (MediaAnalysisLogLevel() < 3 || !os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_35;
    }
  }

LABEL_33:
  *buf = 136315138;
  last_error_message = e5rt_get_last_error_message();
  v15 = MEMORY[0x1E69E9C10];
  v16 = "E5RT op failed: %s";
LABEL_34:
  _os_log_impl(&dword_1C9B70000, v15, OS_LOG_TYPE_ERROR, v16, buf, 0xCu);
LABEL_35:
  free(0);
LABEL_36:

  return 0;
}

- (int)espressoForward:(void *)forward
{
  v10 = *MEMORY[0x1E69E9840];
  if ([(NSMutableArray *)self->_inputIOArray count]!= 1)
  {
    if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      LOWORD(v8) = 0;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Use espressoForwardInputs for multiple inputs!", &v8, 2u);
    }

    return -50;
  }

  v5 = [(NSMutableArray *)self->_inputIOArray objectAtIndexedSubscript:0];
  v6 = [v5 prepareInput:forward];

  if (v6)
  {
    return v6;
  }

  if (e5rt_execution_stream_execute_sync())
  {
    if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v8 = 136315138;
      last_error_message = e5rt_get_last_error_message();
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "E5RT op failed: %s", &v8, 0xCu);
    }

    return -18;
  }

  return [(VCPCNNModelEspressoV2 *)self getOutputs];
}

- (int)espressoForwardInputs:(vector<void *)
{
  v11 = *MEMORY[0x1E69E9840];
  if ([(NSMutableArray *)self->_inputIOArray count])
  {
    v5 = 0;
    do
    {
      v6 = [(NSMutableArray *)self->_inputIOArray objectAtIndexedSubscript:v5];
      v7 = [v6 prepareInput:a3->var0[v5]];

      if (v7)
      {
        return v7;
      }
    }

    while ([(NSMutableArray *)self->_inputIOArray count]> ++v5);
  }

  if (e5rt_execution_stream_execute_sync())
  {
    if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v9 = 136315138;
      last_error_message = e5rt_get_last_error_message();
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "E5RT op failed: %s", &v9, 0xCu);
    }

    return -18;
  }

  return [(VCPCNNModelEspressoV2 *)self getOutputs];
}

- (int)getOutputs
{
  v3 = [(NSMutableArray *)self->_outputIOArray count];
  if (v3)
  {
    v4 = 0;
    while (1)
    {
      v15 = 0;
      v5 = [(NSMutableArray *)self->_outputIOArray objectAtIndexedSubscript:v4];
      v6 = [v5 getOutput:&v15];

      if (!v6)
      {
        break;
      }

      v7 = [VCPEspressoV2Data alloc];
      v8 = [(NSMutableArray *)self->_outputIOArray objectAtIndexedSubscript:v4];
      tensorType = [v8 tensorType];
      v10 = [(VCPEspressoV2Data *)v7 initWithTensorType:tensorType size:v6 dataPtr:v15];
      begin = self->_outputs.__begin_;
      v12 = begin[v4];
      begin[v4] = v10;

      v13 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:v6];
      [(NSMutableArray *)self->_outputsSize setObject:v13 atIndexedSubscript:v4];

      if ([(NSMutableArray *)self->_outputIOArray count]<= ++v4)
      {
        LODWORD(v3) = 0;
        return v3;
      }
    }

    LODWORD(v3) = -18;
  }

  return v3;
}

- (id)inputsSize
{
  v15 = *MEMORY[0x1E69E9840];
  array = [MEMORY[0x1E695DF70] array];
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v4 = self->_inputIOArray;
  v5 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = *v11;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v8 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:{objc_msgSend(*(*(&v10 + 1) + 8 * i), "getTensorShape", v10)}];
        [array addObject:v8];
      }

      v5 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }

  return array;
}

- (id)outputsType
{
  v15 = *MEMORY[0x1E69E9840];
  array = [MEMORY[0x1E695DF70] array];
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v4 = self->_outputIOArray;
  v5 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = *v11;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v8 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(*(*(&v10 + 1) + 8 * i), "tensorType", v10)}];
        [array addObject:v8];
      }

      v5 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }

  return array;
}

- (id)inputsType
{
  v15 = *MEMORY[0x1E69E9840];
  array = [MEMORY[0x1E695DF70] array];
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v4 = self->_inputIOArray;
  v5 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = *v11;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v8 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(*(*(&v10 + 1) + 8 * i), "tensorType", v10)}];
        [array addObject:v8];
      }

      v5 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }

  return array;
}

- (void)dealloc
{
  e5rt_execution_stream_release();
  v3.receiver = self;
  v3.super_class = VCPCNNModelEspressoV2;
  [(VCPCNNModelEspressoV2 *)&v3 dealloc];
}

- (vector<VCPEspressoV2Data)outputs
{
  retstr->__begin_ = 0;
  retstr->var0 = 0;
  retstr->var1 = 0;
  return std::vector<VCPEspressoV2Data * {__strong}>::__init_with_size[abi:ne200100]<VCPEspressoV2Data * {__strong}*,VCPEspressoV2Data * {__strong}*>(retstr, self->_outputs.__begin_, self->_outputs.var0, self->_outputs.var0 - self->_outputs.__begin_);
}

- (id).cxx_construct
{
  *(self + 9) = 0;
  *(self + 10) = 0;
  *(self + 11) = 0;
  return self;
}

@end