@interface ForwardDmShader
- (id)getComputePipeLineStateForDevice:(id)a3 Library:(id)a4;
- (id)getComputePipeLineStateForDevice:(id)a3 Library:(id)a4 Constants:(BOOL *)a5 ConstantNumber:(unsigned int)a6 input:(char)a7 output:(char)a8;
- (id)initShaderWithName:(id)a3;
@end

@implementation ForwardDmShader

- (id)initShaderWithName:(id)a3
{
  v5 = a3;
  v10.receiver = self;
  v10.super_class = ForwardDmShader;
  v6 = [(ForwardDmShader *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_computeKernelName, a3);
    computePipeline = v7->_computePipeline;
    v7->_computePipeline = 0;

    *&v7->_inputFormat = 1574;
  }

  return v7;
}

- (id)getComputePipeLineStateForDevice:(id)a3 Library:(id)a4
{
  v4 = [(ForwardDmShader *)self getComputePipeLineStateForDevice:a3 Library:a4 Constants:0 ConstantNumber:0];

  return v4;
}

- (id)getComputePipeLineStateForDevice:(id)a3 Library:(id)a4 Constants:(BOOL *)a5 ConstantNumber:(unsigned int)a6 input:(char)a7 output:(char)a8
{
  v53 = *MEMORY[0x277D85DE8];
  v14 = a3;
  v15 = a4;
  v44 = a7;
  v43 = a8;
  computePipeline = self->_computePipeline;
  if (computePipeline)
  {
    if (self->_inputFormat == a7 && self->_outputFormat == a8 || (self->_computePipeline = 0, computePipeline, self->_inputFormat = a7, self->_outputFormat = a8, (computePipeline = self->_computePipeline) != 0))
    {
      v17 = computePipeline;
      goto LABEL_47;
    }
  }

  if (a6)
  {
    v18 = objc_opt_new();
    v19 = 0;
    do
    {
      [v18 setConstantValue:&a5[v19] type:53 atIndex:v19];
      ++v19;
    }

    while (a6 != v19);
    if (v44 != 38 || v43 != 6)
    {
      [v18 setConstantValue:&v44 type:45 atIndex:a6];
      [v18 setConstantValue:&v43 type:45 atIndex:a6 + 1];
    }

    computeKernelName = self->_computeKernelName;
    v42 = 0;
    v22 = [v15 newFunctionWithName:computeKernelName constantValues:v18 error:&v42];
    v23 = v42;
    v24 = v23;
    if (!v22 || v23)
    {
      if (enableLogInstance)
      {
        if (logInstanceID)
        {
          v27 = logInstanceID;
        }

        else
        {
          v27 = prevLogInstanceID;
        }

        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          v28 = self->_computeKernelName;
          v29 = [v24 localizedDescription];
          *buf = 134218754;
          v46 = WORD1(v27);
          v47 = 2080;
          v48 = "[ForwardDmShader getComputePipeLineStateForDevice:Library:Constants:ConstantNumber:input:output:]";
          v49 = 2112;
          v50 = v28;
          v51 = 2112;
          v52 = v29;
          _os_log_impl(&dword_250836000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.450.54] #%04llx %s : ERROR: Failed creating a new function: %@ with error: %@", buf, 0x2Au);
        }

        prevLogInstanceID = v27;
      }

      else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        v34 = self->_computeKernelName;
        v35 = [v24 localizedDescription];
        *buf = 136315650;
        v46 = "[ForwardDmShader getComputePipeLineStateForDevice:Library:Constants:ConstantNumber:input:output:]";
        v47 = 2112;
        v48 = v34;
        v49 = 2112;
        v50 = v35;
        _os_log_impl(&dword_250836000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.450.54] %s : ERROR: Failed creating a new function: %@ with error: %@", buf, 0x20u);
      }

      v17 = 0;
      v25 = 0;
      goto LABEL_46;
    }
  }

  else
  {
    v22 = [v15 newFunctionWithName:self->_computeKernelName];
    if (!v22)
    {
      if (!enableLogInstance)
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          v40 = self->_computeKernelName;
          *buf = 136315394;
          v46 = "[ForwardDmShader getComputePipeLineStateForDevice:Library:Constants:ConstantNumber:input:output:]";
          v47 = 2112;
          v48 = v40;
          _os_log_impl(&dword_250836000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.450.54] %s : ERROR: Failed creating a new function: %@", buf, 0x16u);
        }

        v17 = 0;
        v22 = 0;
        v25 = 0;
        goto LABEL_21;
      }

      if (logInstanceID)
      {
        v30 = logInstanceID;
      }

      else
      {
        v30 = prevLogInstanceID;
      }

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        v33 = self->_computeKernelName;
        *buf = 134218498;
        v46 = WORD1(v30);
        v47 = 2080;
        v48 = "[ForwardDmShader getComputePipeLineStateForDevice:Library:Constants:ConstantNumber:input:output:]";
        v49 = 2112;
        v50 = v33;
        _os_log_impl(&dword_250836000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.450.54] #%04llx %s : ERROR: Failed creating a new function: %@", buf, 0x20u);
      }

      v17 = 0;
      v22 = 0;
      v25 = 0;
      v24 = 0;
LABEL_42:
      prevLogInstanceID = v30;
      goto LABEL_46;
    }
  }

  v25 = objc_alloc_init(MEMORY[0x277CD6D30]);
  [v25 setThreadGroupSizeIsMultipleOfThreadExecutionWidth:1];
  [v25 setComputeFunction:v22];
  v41 = 0;
  v17 = [v14 newComputePipelineStateWithDescriptor:v25 error:&v41];
  v26 = v41;
  v24 = v26;
  if (!v17 || v26)
  {
    if (!enableLogInstance)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        v38 = self->_computeKernelName;
        v39 = [v24 localizedDescription];
        *buf = 136315650;
        v46 = "[ForwardDmShader getComputePipeLineStateForDevice:Library:Constants:ConstantNumber:input:output:]";
        v47 = 2112;
        v48 = v38;
        v49 = 2112;
        v50 = v39;
        _os_log_impl(&dword_250836000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.450.54] %s : ERROR: Failed to create forward DM Kernel: %@ with error: %@", buf, 0x20u);
      }

      goto LABEL_46;
    }

    if (logInstanceID)
    {
      v30 = logInstanceID;
    }

    else
    {
      v30 = prevLogInstanceID;
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v31 = self->_computeKernelName;
      v32 = [v24 localizedDescription];
      *buf = 134218754;
      v46 = WORD1(v30);
      v47 = 2080;
      v48 = "[ForwardDmShader getComputePipeLineStateForDevice:Library:Constants:ConstantNumber:input:output:]";
      v49 = 2112;
      v50 = v31;
      v51 = 2112;
      v52 = v32;
      _os_log_impl(&dword_250836000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.450.54] #%04llx %s : ERROR: Failed to create forward DM Kernel: %@ with error: %@", buf, 0x2Au);
    }

    goto LABEL_42;
  }

  objc_storeStrong(&self->_computePipeline, v17);
LABEL_21:
  v24 = 0;
LABEL_46:

LABEL_47:
  v36 = *MEMORY[0x277D85DE8];

  return v17;
}

@end