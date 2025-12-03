@interface BackwardDmShader
- (id)getRenderPipelineStateForDevice:(id)device Library:(id)library;
- (id)getRenderPipelineStateForDevice:(id)device Library:(id)library Constants:(BOOL *)constants ConstantNumber:(unsigned int)number;
- (id)initShaderWithVertexName:(id)name fragmentName:(id)fragmentName colorFormat:(unint64_t)format useCustomMatrix:(BOOL)matrix p3CSC:(BOOL)c applyYGamma:(BOOL)gamma;
@end

@implementation BackwardDmShader

- (id)initShaderWithVertexName:(id)name fragmentName:(id)fragmentName colorFormat:(unint64_t)format useCustomMatrix:(BOOL)matrix p3CSC:(BOOL)c applyYGamma:(BOOL)gamma
{
  nameCopy = name;
  fragmentNameCopy = fragmentName;
  v21.receiver = self;
  v21.super_class = BackwardDmShader;
  v17 = [(BackwardDmShader *)&v21 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_vertexKernelName, name);
    objc_storeStrong(&v18->_fragmentKernelName, fragmentName);
    renderPipeline = v18->_renderPipeline;
    v18->_renderPipeline = 0;

    v18->_colorFormat = format;
    v18->_useCustomMatrix = matrix;
    v18->_p3CSC = c;
    v18->_applyYGamma = gamma;
  }

  return v18;
}

- (id)getRenderPipelineStateForDevice:(id)device Library:(id)library
{
  v25 = *MEMORY[0x277D85DE8];
  useCustomMatrix = self->_useCustomMatrix;
  v16 = *&self->_p3CSC;
  v5 = [(BackwardDmShader *)self getRenderPipelineStateForDevice:device Library:library Constants:&useCustomMatrix ConstantNumber:3];
  if (!v5)
  {
    if (enableLogInstance)
    {
      if (logInstanceID)
      {
        v6 = logInstanceID;
      }

      else
      {
        v6 = prevLogInstanceID;
      }

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        v7 = self->_useCustomMatrix;
        p3CSC = self->_p3CSC;
        applyYGamma = self->_applyYGamma;
        *buf = 134219010;
        v18 = WORD1(v6);
        v19 = 2080;
        *v20 = "[BackwardDmShader getRenderPipelineStateForDevice:Library:]";
        *&v20[8] = 1024;
        *v21 = v7;
        *&v21[4] = 1024;
        v22 = p3CSC;
        v23 = 1024;
        v24 = applyYGamma;
        _os_log_impl(&dword_250836000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.450.54] #%04llx %s : ERROR: Failed creating a new function with _useCustomMatrix=%d, _p3CSC=%d, _applyYGamma=%d", buf, 0x28u);
      }

      prevLogInstanceID = v6;
    }

    else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v10 = self->_useCustomMatrix;
      v11 = self->_p3CSC;
      v12 = self->_applyYGamma;
      *buf = 136315906;
      v18 = "[BackwardDmShader getRenderPipelineStateForDevice:Library:]";
      v19 = 1024;
      *v20 = v10;
      *&v20[4] = 1024;
      *&v20[6] = v11;
      *v21 = 1024;
      *&v21[2] = v12;
      _os_log_impl(&dword_250836000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.450.54] %s : ERROR: Failed creating a new function with _useCustomMatrix=%d, _p3CSC=%d, _applyYGamma=%d", buf, 0x1Eu);
    }
  }

  v13 = *MEMORY[0x277D85DE8];

  return v5;
}

- (id)getRenderPipelineStateForDevice:(id)device Library:(id)library Constants:(BOOL *)constants ConstantNumber:(unsigned int)number
{
  v69 = *MEMORY[0x277D85DE8];
  deviceCopy = device;
  libraryCopy = library;
  renderPipeline = self->_renderPipeline;
  if (renderPipeline)
  {
    v13 = renderPipeline;
    goto LABEL_51;
  }

  if (!number)
  {
    if (enableLogInstance)
    {
      if (logInstanceID)
      {
        v24 = logInstanceID;
      }

      else
      {
        v24 = prevLogInstanceID;
      }

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134217984;
        v56 = WORD1(v24);
        _os_log_impl(&dword_250836000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.450.54] #%04llx Assertion: 0 warned in /Library/Caches/com.apple.xbs/Sources/HDRProcessing/Metal/BackwardDisplayManagement/HDRBackwardDisplayManagement.mm at line 477\n", buf, 0xCu);
      }

      v21 = 0;
      v51 = 0;
      prevLogInstanceID = v24;
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_250836000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.450.54] Assertion: 0 warned in /Library/Caches/com.apple.xbs/Sources/HDRProcessing/Metal/BackwardDisplayManagement/HDRBackwardDisplayManagement.mm at line 477\n", buf, 2u);
      }

      v21 = 0;
      v51 = 0;
    }

    goto LABEL_35;
  }

  v14 = objc_opt_new();
  v15 = 0;
  do
  {
    [v14 setConstantValue:&constants[v15] type:53 atIndex:v15];
    ++v15;
  }

  while (number != v15);
  vertexKernelName = self->_vertexKernelName;
  v54 = 0;
  v17 = [libraryCopy newFunctionWithName:vertexKernelName constantValues:v14 error:&v54];
  v18 = v54;
  v19 = v18;
  v51 = v17;
  if (!v17 || v18)
  {
    if (!enableLogInstance)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        v41 = self->_vertexKernelName;
        localizedDescription = [v19 localizedDescription];
        *buf = 136315650;
        v56 = "[BackwardDmShader getRenderPipelineStateForDevice:Library:Constants:ConstantNumber:]";
        v57 = 2112;
        v58 = v41;
        v59 = 2112;
        v60 = localizedDescription;
        _os_log_impl(&dword_250836000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.450.54] %s : ERROR: Failed creating a new vertex function: %@ with error: %@", buf, 0x20u);
      }

      v21 = 0;
      v23 = 0;
      goto LABEL_48;
    }

    if (logInstanceID)
    {
      v25 = logInstanceID;
    }

    else
    {
      v25 = prevLogInstanceID;
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v26 = self->_vertexKernelName;
      localizedDescription2 = [v19 localizedDescription];
      *buf = 134218754;
      v56 = WORD1(v25);
      v57 = 2080;
      v58 = "[BackwardDmShader getRenderPipelineStateForDevice:Library:Constants:ConstantNumber:]";
      v59 = 2112;
      v60 = v26;
      v61 = 2112;
      v62 = localizedDescription2;
      _os_log_impl(&dword_250836000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.450.54] #%04llx %s : ERROR: Failed creating a new vertex function: %@ with error: %@", buf, 0x2Au);
    }

    v21 = 0;
    v23 = 0;
    goto LABEL_25;
  }

  fragmentKernelName = self->_fragmentKernelName;
  v53 = 0;
  v21 = [libraryCopy newFunctionWithName:fragmentKernelName constantValues:v14 error:&v53];
  v22 = v53;
  v23 = v22;
  if (!v21 || v22)
  {
    if (!enableLogInstance)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        v49 = self->_fragmentKernelName;
        localizedDescription3 = [v23 localizedDescription];
        *buf = 136315650;
        v56 = "[BackwardDmShader getRenderPipelineStateForDevice:Library:Constants:ConstantNumber:]";
        v57 = 2112;
        v58 = v49;
        v59 = 2112;
        v60 = localizedDescription3;
        _os_log_impl(&dword_250836000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.450.54] %s : ERROR: Failed creating a new fragment function: %@ with error: %@", buf, 0x20u);
      }

      goto LABEL_48;
    }

    if (logInstanceID)
    {
      v25 = logInstanceID;
    }

    else
    {
      v25 = prevLogInstanceID;
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v28 = self->_fragmentKernelName;
      localizedDescription4 = [v23 localizedDescription];
      *buf = 134218754;
      v56 = WORD1(v25);
      v57 = 2080;
      v58 = "[BackwardDmShader getRenderPipelineStateForDevice:Library:Constants:ConstantNumber:]";
      v59 = 2112;
      v60 = v28;
      v61 = 2112;
      v62 = localizedDescription4;
      _os_log_impl(&dword_250836000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.450.54] #%04llx %s : ERROR: Failed creating a new fragment function: %@ with error: %@", buf, 0x2Au);
    }

LABEL_25:
    prevLogInstanceID = v25;
LABEL_48:

    v13 = 0;
    v30 = 0;
    goto LABEL_49;
  }

LABEL_35:
  v30 = objc_alloc_init(MEMORY[0x277CD6F78]);
  [v30 setVertexFunction:v51];
  [v30 setFragmentFunction:v21];
  colorFormat = self->_colorFormat;
  colorAttachments = [v30 colorAttachments];
  v33 = [colorAttachments objectAtIndexedSubscript:0];
  [v33 setPixelFormat:colorFormat];

  v52 = 0;
  v13 = [deviceCopy newRenderPipelineStateWithDescriptor:v30 error:&v52];
  v34 = v52;
  v35 = v34;
  if (!v13 || v34)
  {
    if (enableLogInstance)
    {
      if (logInstanceID)
      {
        v36 = logInstanceID;
      }

      else
      {
        v36 = prevLogInstanceID;
      }

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        p_vertexKernelName = &self->_vertexKernelName;
        v37 = self->_vertexKernelName;
        v38 = p_vertexKernelName[1];
        localizedDescription5 = [v35 localizedDescription];
        *buf = 134219522;
        v56 = WORD1(v36);
        v57 = 2080;
        v58 = "[BackwardDmShader getRenderPipelineStateForDevice:Library:Constants:ConstantNumber:]";
        v59 = 2048;
        v60 = v21;
        v61 = 2112;
        v62 = v38;
        v63 = 2048;
        v64 = v51;
        v65 = 2112;
        v66 = v37;
        v67 = 2112;
        v68 = localizedDescription5;
        _os_log_impl(&dword_250836000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.450.54] #%04llx %s : ERROR: Failed to create backward DM Kernel: fragment[%p]=%@, vertex[%p]=%@, with error: %@", buf, 0x48u);
      }

      v23 = 0;
      v19 = 0;
      prevLogInstanceID = v36;
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        v47 = &self->_vertexKernelName;
        v45 = self->_vertexKernelName;
        v46 = v47[1];
        localizedDescription6 = [v35 localizedDescription];
        *buf = 136316418;
        v56 = "[BackwardDmShader getRenderPipelineStateForDevice:Library:Constants:ConstantNumber:]";
        v57 = 2048;
        v58 = v21;
        v59 = 2112;
        v60 = v46;
        v61 = 2048;
        v62 = v51;
        v63 = 2112;
        v64 = v45;
        v65 = 2112;
        v66 = localizedDescription6;
        _os_log_impl(&dword_250836000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.450.54] %s : ERROR: Failed to create backward DM Kernel: fragment[%p]=%@, vertex[%p]=%@, with error: %@", buf, 0x3Eu);
      }

      v23 = 0;
      v19 = 0;
    }

    goto LABEL_50;
  }

  objc_storeStrong(&self->_renderPipeline, v13);
  v23 = 0;
  v19 = 0;
LABEL_49:
  v35 = 0;
LABEL_50:

LABEL_51:
  v43 = *MEMORY[0x277D85DE8];

  return v13;
}

@end