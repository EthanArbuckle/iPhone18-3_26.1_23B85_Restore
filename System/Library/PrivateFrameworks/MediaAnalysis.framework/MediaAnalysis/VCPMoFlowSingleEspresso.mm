@interface VCPMoFlowSingleEspresso
+ (id)sharedModel:(id)a3 inputNames:(id)a4;
- (float)getFlowWithHeight:(int *)a3 andWidth:(int *)a4;
- (id).cxx_construct;
- (int)analyzeImages:(__CVBuffer *)a3 secondImage:(__CVBuffer *)a4 cancel:(id)a5;
- (int)configForAspectRatio:(id)a3;
- (int)copyImage:(__CVBuffer *)a3 toData:(float *)a4 withChannels:(int)a5;
- (int)createInput:(float *)a3 withBuffer:(__CVBuffer *)a4 cnnInputHeight:(int)a5 cnnInputWidth:(int)a6;
- (int)flowScalingTo:(__CVBuffer *)a3 flowBufferY:(__CVBuffer *)a4 scalerX:(float)a5 scalerY:(float)a6;
- (int)flowScalingTo:(__CVBuffer *)a3 scalerX:(float)a4 scalerY:(float)a5;
- (int)getFlowToBuffer:(__CVBuffer *)a3;
- (int)prepareModel;
- (int)prepareWithLightweightOption:(BOOL)a3 aspectRatio:(id)a4 forceCPU:(BOOL)a5 sharedModel:(BOOL)a6 flushModel:(BOOL)a7;
- (int)reInitModel;
- (int)updateModelForAspectRatio:(id)a3 computationAccuracy:(unsigned int)a4;
- (void)dealloc;
@end

@implementation VCPMoFlowSingleEspresso

- (int)prepareWithLightweightOption:(BOOL)a3 aspectRatio:(id)a4 forceCPU:(BOOL)a5 sharedModel:(BOOL)a6 flushModel:(BOOL)a7
{
  v10 = a3;
  v33[2] = *MEMORY[0x1E69E9840];
  v31 = a4;
  v12 = [MEMORY[0x1E696AAE8] vcp_mediaAnalysisBundle];
  v13 = [v12 resourceURL];

  v14 = [MEMORY[0x1E695DFF8] URLWithString:@"cnn_moflow.espresso.net" relativeToURL:v13];
  netFileUrl = self->_netFileUrl;
  self->_netFileUrl = v14;

  resConfig = self->_resConfig;
  self->_resConfig = @"landscape_1024x448";

  self->super._cnnInputWidth = 1024;
  self->super._cnnInputHeight = 448;
  if (v10)
  {
    v17 = self->_resConfig;
    self->_resConfig = @"square_320x320";

    self->super._cnnInputWidth = 320;
    self->super._cnnInputHeight = 320;
  }

  else if (v31)
  {
    v18 = [(VCPMoFlowSingleEspresso *)self configForAspectRatio:v31];
    if (v18)
    {
      goto LABEL_13;
    }
  }

  inputNames = self->_inputNames;
  self->_inputNames = &unk_1F49BEA28;

  std::vector<void *>::resize(&self->_inputsData.__begin_, [(NSArray *)self->_inputNames count]);
  self->_flow = 0;
  self->_forceCPU = a5;
  self->_sharedModel = a6;
  self->_flushModel = a7;
  if (DeviceHasANE() && !self->_forceCPU && self->_sharedModel)
  {
    v20 = [objc_opt_class() sharedModel:self->_netFileUrl inputNames:self->_inputNames];
    modelEspresso = self->_modelEspresso;
    self->_modelEspresso = v20;
  }

  else
  {
    v22 = [VCPCNNModelEspresso alloc];
    v23 = self->_netFileUrl;
    v24 = self->_inputNames;
    v32[0] = @"forceCPU";
    v25 = [MEMORY[0x1E696AD98] numberWithBool:self->_forceCPU];
    v32[1] = @"sharedContext";
    v33[0] = v25;
    v26 = [MEMORY[0x1E696AD98] numberWithBool:self->_sharedModel];
    v33[1] = v26;
    v27 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v33 forKeys:v32 count:2];
    v28 = [(VCPCNNModelEspresso *)v22 initWithParameters:v23 inputNames:v24 outputNames:0 properties:v27];
    v29 = self->_modelEspresso;
    self->_modelEspresso = v28;
  }

  if (self->_modelEspresso)
  {
    v18 = [(VCPMoFlowSingleEspresso *)self prepareModel];
  }

  else
  {
    v18 = -108;
  }

LABEL_13:

  return v18;
}

- (int)prepareModel
{
  if ([(NSArray *)self->_inputNames count])
  {
    v3 = 0;
    do
    {
      v4 = self->_inputsData.__begin_[v3];
      if (v4)
      {
        MEMORY[0x1CCA95C10](v4, 0x1000C8052888210);
      }

      ++v3;
    }

    while ([(NSArray *)self->_inputNames count]> v3);
  }

  flow = self->_flow;
  if (flow)
  {
    MEMORY[0x1CCA95C10](flow, 0x1000C8052888210);
    self->_flow = 0;
  }

  LODWORD(v6) = [(VCPCNNModelEspresso *)self->_modelEspresso prepareModelWithConfig:self->_resConfig];
  if (!v6)
  {
    v6 = [(NSArray *)self->_inputNames count];
    if (v6)
    {
      v7 = 0;
      v8 = 0;
      v9 = MEMORY[0x1E69E5398];
      while (1)
      {
        [(VCPCNNModelEspresso *)self->_modelEspresso inputBlobs];
        v10 = *&v17[v7 + 88];
        [(VCPCNNModelEspresso *)self->_modelEspresso inputBlobs];
        v11 = *&v16[v7 + 80];
        [(VCPCNNModelEspresso *)self->_modelEspresso inputBlobs];
        v12 = v11 * v10 * *&__p[v7 + 96];
        if (v12 >> 62)
        {
          v13 = -1;
        }

        else
        {
          v13 = 4 * v12;
        }

        self->_inputsData.__begin_[v8] = operator new[](v13, v9);
        if (__p)
        {
          operator delete(__p);
        }

        if (v16)
        {
          operator delete(v16);
        }

        if (v17)
        {
          operator delete(v17);
        }

        if (!self->_inputsData.__begin_[v8])
        {
          break;
        }

        ++v8;
        v7 += 168;
        if ([(NSArray *)self->_inputNames count]<= v8)
        {
          LODWORD(v6) = 0;
          return v6;
        }
      }

      LODWORD(v6) = -108;
    }
  }

  return v6;
}

- (int)reInitModel
{
  v13[2] = *MEMORY[0x1E69E9840];
  v3 = [VCPCNNModelEspresso alloc];
  netFileUrl = self->_netFileUrl;
  inputNames = self->_inputNames;
  v12[0] = @"forceCPU";
  v6 = [MEMORY[0x1E696AD98] numberWithBool:self->_forceCPU];
  v13[0] = v6;
  v12[1] = @"sharedContext";
  v7 = [MEMORY[0x1E696AD98] numberWithBool:self->_sharedModel];
  v13[1] = v7;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:v12 count:2];
  v9 = [(VCPCNNModelEspresso *)v3 initWithParameters:netFileUrl inputNames:inputNames outputNames:0 properties:v8];
  modelEspresso = self->_modelEspresso;
  self->_modelEspresso = v9;

  if (self->_modelEspresso)
  {
    return [(VCPMoFlowSingleEspresso *)self prepareModel];
  }

  else
  {
    return -108;
  }
}

- (void)dealloc
{
  for (i = 0; ; ++i)
  {
    v4 = [(NSArray *)self->_inputNames count];
    begin = self->_inputsData.__begin_;
    if (v4 <= i)
    {
      break;
    }

    v6 = begin[i];
    if (v6)
    {
      MEMORY[0x1CCA95C10](v6, 0x1000C8052888210);
    }
  }

  self->_inputsData.__begin_ = 0;
  self->_inputsData.__end_ = 0;
  self->_inputsData.__cap_ = 0;
  if (begin)
  {
    operator delete(begin);
  }

  flow = self->_flow;
  if (flow)
  {
    MEMORY[0x1CCA95C10](flow, 0x1000C8052888210);
  }

  v8.receiver = self;
  v8.super_class = VCPMoFlowSingleEspresso;
  [(VCPMoFlowSingleEspresso *)&v8 dealloc];
}

- (int)configForAspectRatio:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    [v4 floatValue];
    if (v6 <= 1.16)
    {
      [v5 floatValue];
      v13 = v12;
      computationAccuracy = self->super._computationAccuracy;
      v10 = off_1E834D880;
      if (v13 >= 0.86206899)
      {
        v10 = off_1E834D8A0;
      }

      v9 = &unk_1C9F61050;
      v8 = &unk_1C9F61040;
      if (v13 >= 0.86206899)
      {
        v8 = &unk_1C9F61050;
      }

      if (computationAccuracy <= 3)
      {
        goto LABEL_11;
      }
    }

    else
    {
      computationAccuracy = self->super._computationAccuracy;
      if (computationAccuracy < 4)
      {
        v8 = &unk_1C9F61050;
        v9 = &unk_1C9F61040;
        v10 = off_1E834D860;
LABEL_11:
        v14 = v9[computationAccuracy];
        v15 = v8[computationAccuracy];
        resConfig = self->_resConfig;
        self->_resConfig = &v10[computationAccuracy]->isa;

        v11 = 0;
        self->super._cnnInputWidth = v14;
        self->super._cnnInputHeight = v15;
        goto LABEL_13;
      }
    }

    v11 = -50;
    goto LABEL_13;
  }

  v11 = 0;
LABEL_13:

  return v11;
}

+ (id)sharedModel:(id)a3 inputNames:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = +[VCPSharedInstanceManager sharedManager];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __50__VCPMoFlowSingleEspresso_sharedModel_inputNames___block_invoke;
  v12[3] = &unk_1E834CD98;
  v8 = v5;
  v13 = v8;
  v9 = v6;
  v14 = v9;
  v10 = [v7 sharedInstanceWithIdentifier:@"VCPMoflowEspresso" andCreationBlock:v12];

  return v10;
}

VCPCNNModelEspresso *__50__VCPMoFlowSingleEspresso_sharedModel_inputNames___block_invoke(uint64_t a1)
{
  v1 = [[VCPCNNModelEspresso alloc] initWithParameters:*(a1 + 32) inputNames:*(a1 + 40) outputNames:0 properties:0];

  return v1;
}

- (int)copyImage:(__CVBuffer *)a3 toData:(float *)a4 withChannels:(int)a5
{
  if (a5 != 3 || CVPixelBufferGetPixelFormatType(a3) != 1111970369)
  {
    return -50;
  }

  Width = CVPixelBufferGetWidth(a3);
  Height = CVPixelBufferGetHeight(a3);
  pixelBuffer = a3;
  unlockFlags = 1;
  if (!a3)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      [VCPVideoCNNAnalyzer copyImage:withChannels:settling:];
    }

    return -50;
  }

  v9 = Height;
  v10 = CVPixelBufferLockBaseAddress(a3, 1uLL);
  v24 = v10;
  if (v10)
  {
    v11 = v10;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      [VCPMoFlowSingleEspresso copyImage:toData:withChannels:];
    }
  }

  else
  {
    BaseAddress = CVPixelBufferGetBaseAddress(a3);
    BytesPerRow = CVPixelBufferGetBytesPerRow(a3);
    bzero(a4, 3 * 4 * Width * v9);
    if (v9 >= 1)
    {
      v16 = 0;
      v17 = &a4[2 * v9 * Width];
      v18 = &a4[v9 * Width];
      v19 = 4 * Width;
      do
      {
        if (Width >= 1)
        {
          v20 = 0;
          v21 = Width & 0x7FFFFFFF;
          do
          {
            LOBYTE(v15) = BaseAddress[(v20 * 4) + 2];
            *&v22 = LODWORD(v15) / 255.0;
            a4[v20] = *&v22;
            LOBYTE(v22) = BaseAddress[(v20 * 4) + 1];
            *&v23 = v22 / 255.0;
            v18[v20] = *&v23;
            LOBYTE(v23) = BaseAddress[(v20 * 4)];
            v15 = v23 / 255.0;
            v17[v20++] = v15;
            --v21;
          }

          while (v21);
        }

        BaseAddress += BytesPerRow;
        ++v16;
        v17 = (v17 + v19);
        v18 = (v18 + v19);
        a4 = (a4 + v19);
      }

      while (v16 != v9);
    }

    v11 = CVPixelBufferLock::Unlock(&v24);
    if (pixelBuffer && !v24 && CVPixelBufferUnlockBaseAddress(pixelBuffer, unlockFlags) && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      [VCPMoFlowSingleEspresso copyImage:toData:withChannels:];
    }
  }

  return v11;
}

- (int)createInput:(float *)a3 withBuffer:(__CVBuffer *)a4 cnnInputHeight:(int)a5 cnnInputWidth:(int)a6
{
  if (a3)
  {
    v6 = *&a6;
    v7 = *&a5;
    cf = 0;
    Width = CVPixelBufferGetWidth(a4);
    Height = CVPixelBufferGetHeight(a4);
    if (CVPixelBufferGetPixelFormatType(a4) == 1111970369 && Width == v6 && Height == v7)
    {
      v16 = 0;
      cf = CFRetain(a4);
      CF<__CVBuffer *>::~CF(&v16);
    }

    else
    {
      Scaler::Scale(&self->_scaler, a4, &cf, v6, v7, 1111970369);
      v13 = v14;
      if (v14)
      {
LABEL_9:
        CF<__CVBuffer *>::~CF(&cf);
        return v13;
      }
    }

    v13 = [(VCPMoFlowSingleEspresso *)self copyImage:cf toData:a3 withChannels:3];
    goto LABEL_9;
  }

  return -108;
}

- (int)analyzeImages:(__CVBuffer *)a3 secondImage:(__CVBuffer *)a4 cancel:(id)a5
{
  Width = CVPixelBufferGetWidth(a3);
  Height = CVPixelBufferGetHeight(a3);
  v10 = CVPixelBufferGetWidth(a4);
  v11 = CVPixelBufferGetHeight(a4);
  v12 = -50;
  if (Width != v10 || Height != v11)
  {
    return v12;
  }

  v13 = objc_autoreleasePoolPush();
  v39 = 162;
  if (self->_flushModel && !self->_modelEspresso)
  {
    v19 = [(VCPMoFlowSingleEspresso *)self reInitModel];
    if (v19)
    {
      v12 = v19;
LABEL_15:
      v18 = 0;
      goto LABEL_16;
    }
  }

  [(VCPCNNModelEspresso *)self->_modelEspresso inputBlobs];
  v14 = __p[106];
  operator delete(__p);
  [(VCPCNNModelEspresso *)self->_modelEspresso inputBlobs];
  v15 = __p[104];
  operator delete(__p);
  p_inputsData = &self->_inputsData;
  v17 = [(VCPMoFlowSingleEspresso *)self createInput:*self->_inputsData.__begin_ withBuffer:a3 cnnInputHeight:self->super._cnnInputHeight cnnInputWidth:self->super._cnnInputWidth];
  if (v17 || (v17 = [(VCPMoFlowSingleEspresso *)self createInput:*(p_inputsData->__begin_ + 1) withBuffer:a4 cnnInputHeight:self->super._cnnInputHeight cnnInputWidth:self->super._cnnInputWidth]) != 0)
  {
    v12 = v17;
    v18 = 0;
    goto LABEL_16;
  }

  begin = p_inputsData->__begin_;
  if (2 * v14 * v15 >= 1)
  {
    bzero(*(begin + 16), 4 * (2 * v14 * v15));
  }

  modelEspresso = self->_modelEspresso;
  v47 = 0;
  v48 = 0;
  v46 = 0;
  std::vector<float *>::__init_with_size[abi:ne200100]<float **,float **>(&v46, begin, self->_inputsData.__end_, (self->_inputsData.__end_ - begin) >> 3);
  v12 = [(VCPCNNModelEspresso *)modelEspresso espressoForwardInputs:&v46];
  if (v46)
  {
    v47 = v46;
    operator delete(v46);
  }

  if (v12)
  {
    goto LABEL_15;
  }

  v32 = self->_modelEspresso;
  if (v32)
  {
    [(VCPCNNModelEspresso *)v32 outputBlob];
    v33 = v44;
  }

  else
  {
    v33 = 0;
  }

  self->super._cnnOutputWidth = v33;
  v34 = self->_modelEspresso;
  if (v34)
  {
    [(VCPCNNModelEspresso *)v34 outputBlob];
    v35 = v45;
  }

  else
  {
    v35 = 0;
  }

  self->super._cnnOutputHeight = v35;
  if (self->_flow || ((v36 = 2 * self->super._cnnOutputWidth * v35, v36 < 0) ? (v37 = -1) : (v37 = 4 * v36), v38 = operator new[](v37, MEMORY[0x1E69E5398]), (self->_flow = v38) != 0))
  {
    v12 = 0;
    v18 = 1;
  }

  else
  {
    v18 = 0;
    v12 = -108;
  }

LABEL_16:
  objc_autoreleasePoolPop(v13);
  if (!v18)
  {
    return v12;
  }

  flow = self->_flow;
  v23 = self->_modelEspresso;
  if (!v23)
  {
    v25 = 0;
LABEL_23:
    v28 = 0;
    goto LABEL_24;
  }

  [(VCPCNNModelEspresso *)v23 outputBlob];
  v24 = self->_modelEspresso;
  v25 = __p;
  if (!v24)
  {
    goto LABEL_23;
  }

  [(VCPCNNModelEspresso *)v24 outputBlob];
  v26 = self->_modelEspresso;
  if (!v26)
  {
    goto LABEL_23;
  }

  [(VCPCNNModelEspresso *)v26 outputBlob];
  v27 = self->_modelEspresso;
  v28 = v41 * 4 * v42;
  if (!v27)
  {
LABEL_24:
    v29 = 0;
    goto LABEL_25;
  }

  [(VCPCNNModelEspresso *)v27 outputBlob];
  v29 = v40;
LABEL_25:
  memcpy(flow, v25, v29 * v28);
  if (*(&self->super.super.super.isa + v39) == 1)
  {
    v30 = self->_modelEspresso;
    if (v30)
    {
      self->_modelEspresso = 0;
    }
  }

  return v12;
}

- (float)getFlowWithHeight:(int *)a3 andWidth:(int *)a4
{
  *a3 = self->super._cnnOutputHeight;
  cnnOutputWidth = self->super._cnnOutputWidth;
  *a4 = cnnOutputWidth;
  MEMORY[0x1CCA973D0](self->_flow, 1, &kMotionFlowGlobalMultiplier, self->_flow, 1, 2 * self->super._cnnOutputHeight * cnnOutputWidth);
  return self->_flow;
}

- (int)getFlowToBuffer:(__CVBuffer *)a3
{
  BytesPerRow = CVPixelBufferGetBytesPerRow(a3);
  MEMORY[0x1CCA973D0](self->_flow, 1, &kMotionFlowLocalMultiplier, self->_flow, 1, 2 * self->super._cnnOutputHeight * self->super._cnnOutputWidth);
  flow = self->_flow;
  cnnOutputWidth = self->super._cnnOutputWidth;
  cnnOutputHeight = self->super._cnnOutputHeight;
  pixelBuffer = a3;
  unlockFlags = 0;
  if (a3)
  {
    v9 = CVPixelBufferLockBaseAddress(a3, 0);
    v27 = v9;
    if (v9)
    {
      v10 = v9;
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        [VCPMoFlowSingleEspresso copyImage:toData:withChannels:];
      }
    }

    else
    {
      BaseAddress = CVPixelBufferGetBaseAddress(a3);
      v13 = self->super._cnnOutputHeight;
      if (v13 >= 1)
      {
        v14 = 0;
        v15 = self->super._cnnOutputWidth;
        v16 = &flow[cnnOutputHeight * cnnOutputWidth];
        v17 = 4 * v15;
        do
        {
          if (v15 >= 1)
          {
            v18 = 0;
            v19 = 0;
            v20 = 1;
            do
            {
              _S0 = flow[v18];
              __asm { FCVT            H0, S0 }

              *&BaseAddress[v19 >> 31] = LOWORD(_S0);
              _S0 = v16[v18];
              __asm { FCVT            H0, S0 }

              *&BaseAddress[2 * v20] = LOWORD(_S0);
              v20 += 2;
              v19 += 0x200000000;
              ++v18;
            }

            while (v15 != v18);
          }

          BaseAddress += 2 * (BytesPerRow >> 1);
          ++v14;
          v16 = (v16 + v17);
          flow = (flow + v17);
        }

        while (v14 != v13);
      }

      v10 = CVPixelBufferLock::Unlock(&v27);
      if (pixelBuffer && !v27 && CVPixelBufferUnlockBaseAddress(pixelBuffer, unlockFlags) && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        [VCPMoFlowSingleEspresso copyImage:toData:withChannels:];
      }
    }
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      [VCPVideoCNNAnalyzer copyImage:withChannels:settling:];
    }

    return -50;
  }

  return v10;
}

- (int)flowScalingTo:(__CVBuffer *)a3 scalerX:(float)a4 scalerY:(float)a5
{
  MEMORY[0x1CCA973D0](self->_flow, 1, &kMotionFlowLocalMultiplier, self->_flow, 1, 2 * self->super._cnnOutputHeight * self->super._cnnOutputWidth);
  flow = self->_flow;
  cnnOutputWidth = self->super._cnnOutputWidth;
  cnnOutputHeight = self->super._cnnOutputHeight;
  BytesPerRow = CVPixelBufferGetBytesPerRow(a3);
  pixelBuffer = a3;
  unlockFlags = 0;
  if (a3)
  {
    v13 = BytesPerRow;
    v14 = CVPixelBufferLockBaseAddress(a3, 0);
    v36 = v14;
    if (v14)
    {
      v15 = v14;
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        [VCPMoFlowSingleEspresso copyImage:toData:withChannels:];
      }
    }

    else
    {
      BaseAddress = CVPixelBufferGetBaseAddress(a3);
      v18 = self->super._cnnOutputHeight;
      if (v18 >= 1)
      {
        v19 = 0;
        v20 = &flow[cnnOutputHeight * cnnOutputWidth];
        v21 = self->super._cnnOutputWidth;
        v22 = 4 * v21;
        do
        {
          if (v21 >= 1)
          {
            v23 = 0;
            v24 = 0;
            v25 = 1;
            do
            {
              _S0 = flow[v23];
              __asm
              {
                FCVT            H0, S0
                FCVT            S0, H0
              }

              _S0 = _S0 * a4;
              __asm { FCVT            H0, S0 }

              *&BaseAddress[v24 >> 31] = LOWORD(_S0);
              _S0 = v20[v23];
              __asm
              {
                FCVT            H0, S0
                FCVT            S0, H0
              }

              _S0 = _S0 * a5;
              __asm { FCVT            H0, S0 }

              *&BaseAddress[2 * v25] = LOWORD(_S0);
              v25 += 2;
              v24 += 0x200000000;
              ++v23;
            }

            while (v21 != v23);
          }

          BaseAddress += 2 * (v13 >> 1);
          ++v19;
          v20 = (v20 + v22);
          flow = (flow + v22);
        }

        while (v19 != v18);
      }

      v15 = CVPixelBufferLock::Unlock(&v36);
      if (pixelBuffer && !v36 && CVPixelBufferUnlockBaseAddress(pixelBuffer, unlockFlags) && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        [VCPMoFlowSingleEspresso copyImage:toData:withChannels:];
      }
    }
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      [VCPVideoCNNAnalyzer copyImage:withChannels:settling:];
    }

    return -50;
  }

  return v15;
}

- (int)flowScalingTo:(__CVBuffer *)a3 flowBufferY:(__CVBuffer *)a4 scalerX:(float)a5 scalerY:(float)a6
{
  v48 = *MEMORY[0x1E69E9840];
  MEMORY[0x1CCA973D0](self->_flow, 1, &kMotionFlowLocalMultiplier, self->_flow, 1, 2 * self->super._cnnOutputHeight * self->super._cnnOutputWidth);
  flow = self->_flow;
  cnnOutputWidth = self->super._cnnOutputWidth;
  cnnOutputHeight = self->super._cnnOutputHeight;
  BytesPerRow = CVPixelBufferGetBytesPerRow(a3);
  v15 = CVPixelBufferGetBytesPerRow(a4);
  v39 = 0;
  v40 = a3;
  v41 = 0;
  if (a3)
  {
    v16 = v15;
    v38 = cnnOutputWidth;
    v17 = CVPixelBufferLockBaseAddress(a3, 0);
    v39 = v17;
    if (!v17 || (v18 = v17, os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR)) && (*buf = 134218240, pixelBuffer[0] = a3, LOWORD(pixelBuffer[1]) = 1024, *(&pixelBuffer[1] + 2) = v18, _os_log_error_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Failed to lock CVPixelBuffer (%p, %d)", buf, 0x12u), (v18 = v39) == 0))
    {
      *(pixelBuffer + 4) = a4;
      if (a4)
      {
        v18 = CVPixelBufferLockBaseAddress(a4, 0);
        *buf = v18;
        if (!v18 || os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR) && (*v44 = 134218240, v45 = *(pixelBuffer + 4), v46 = 1024, v47 = v18, _os_log_error_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Failed to lock CVPixelBuffer (%p, %d)", v44, 0x12u), (v18 = *buf) == 0))
        {
          BaseAddress = CVPixelBufferGetBaseAddress(a3);
          v20 = CVPixelBufferGetBaseAddress(a4);
          v21 = self->super._cnnOutputHeight;
          if (v21 >= 1)
          {
            v22 = 0;
            v23 = &flow[cnnOutputHeight * v38];
            v24 = self->super._cnnOutputWidth;
            v25 = 4 * v24;
            do
            {
              if (v24 >= 1)
              {
                for (i = 0; i != v24; ++i)
                {
                  _S0 = flow[i];
                  __asm
                  {
                    FCVT            H0, S0
                    FCVT            S0, H0
                  }

                  _S0 = _S0 * a5;
                  __asm { FCVT            H0, S0 }

                  *&BaseAddress[2 * i] = LOWORD(_S0);
                  _S0 = v23[i];
                  __asm
                  {
                    FCVT            H0, S0
                    FCVT            S0, H0
                  }

                  _S0 = _S0 * a6;
                  __asm { FCVT            H0, S0 }

                  *&v20[2 * i] = LOWORD(_S0);
                }
              }

              ++v22;
              v20 += 2 * (v16 >> 1);
              v23 = (v23 + v25);
              BaseAddress += 2 * (BytesPerRow >> 1);
              flow = (flow + v25);
            }

            while (v22 != v21);
          }

          v18 = CVPixelBufferLock::Unlock(buf);
          if (!v18)
          {
            v18 = CVPixelBufferLock::Unlock(&v39);
          }
        }
      }

      else
      {
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          [VCPVideoCNNAnalyzer copyImage:withChannels:settling:];
        }

        v18 = -50;
        *buf = -50;
      }

      if (*(pixelBuffer + 4) && !*buf && CVPixelBufferUnlockBaseAddress(*(pixelBuffer + 4), *(&pixelBuffer[1] + 4)) && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        [VCPMoFlowSingleEspresso copyImage:toData:withChannels:];
      }

      if (v40 && !v39 && CVPixelBufferUnlockBaseAddress(v40, v41) && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        [VCPMoFlowSingleEspresso copyImage:toData:withChannels:];
      }
    }
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      [VCPVideoCNNAnalyzer copyImage:withChannels:settling:];
    }

    return -50;
  }

  return v18;
}

- (int)updateModelForAspectRatio:(id)a3 computationAccuracy:(unsigned int)a4
{
  v7 = self->_resConfig;
  self->super._computationAccuracy = a4;
  v8 = [(VCPMoFlowSingleEspresso *)self configForAspectRatio:a3];
  if (!v8)
  {
    if (v7 == self->_resConfig)
    {
      goto LABEL_5;
    }

    if (!self->_modelEspresso)
    {
      v8 = -108;
      goto LABEL_7;
    }

    v8 = [(VCPMoFlowSingleEspresso *)self prepareModel];
    if (!v8)
    {
LABEL_5:
      v8 = 0;
    }
  }

LABEL_7:

  return v8;
}

- (id).cxx_construct
{
  *(self + 16) = 0;
  *(self + 17) = 0;
  *(self + 15) = 0;
  *(self + 22) = 0;
  *(self + 46) = 0;
  return self;
}

- (void)copyImage:toData:withChannels:.cold.1()
{
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

- (void)copyImage:toData:withChannels:.cold.2()
{
  OUTLINED_FUNCTION_3(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

@end