@interface VCPMotionFlowSubtleMotionAnalyzer
+ (BOOL)enableR2D2;
- (VCPMotionFlowSubtleMotionAnalyzer)init;
- (id).cxx_construct;
- (int)analyzePixelBuffer:(__CVBuffer *)a3 withFrame:(void *)a4 withTimestamp:(id *)a5 andDuration:(id *)a6 hasSubtleScene:(int)a7 cancel:(id)a8;
- (int)convertFlow:(__CVBuffer *)a3;
- (int)convertPixelBuffer:(__CVBuffer *)a3 toPixelBuffer:(__CVBuffer *)a4 withPixelFormat:(int)a5;
- (int)createPixelBufferWithWidth:(unint64_t)a3 height:(unint64_t)a4 pixelFormat:(int)a5 pixelBuffer:(__CVBuffer *)a6;
- (int)generateMotionFlow;
- (int)generateSubleMotionScore:(void *)a3;
- (int)preProcessing:(__CVBuffer *)a3;
- (int)prepareAnalyzerWithCVPixelBuffer:(__CVBuffer *)a3 cancel:(id)a4;
- (void)dealloc;
@end

@implementation VCPMotionFlowSubtleMotionAnalyzer

- (VCPMotionFlowSubtleMotionAnalyzer)init
{
  v7.receiver = self;
  v7.super_class = VCPMotionFlowSubtleMotionAnalyzer;
  v2 = [(VCPMotionFlowSubtleMotionAnalyzer *)&v7 init];
  v3 = v2;
  if (v2)
  {
    v2->_frameArray.__end_ = v2->_frameArray.__begin_;
    v2->_flow = 0;
    v2->_block = 0;
    v2->_transferSession = 0;
    v2->_scale = 0;
    motionFlowAnalyzer = v2->_motionFlowAnalyzer;
    v2->_motionFlowAnalyzer = 0;

    moflowRequest = v3->_moflowRequest;
    v3->_moflowRequest = 0;

    v3->_subtleMotionScore = 0.0;
    v3->_frameWidth = 0;
    v3->_frameHeight = 0;
    v3->_downScaleWidth = 0;
    v3->_downScaleHeight = 0;
    v3->_blockSize = 0;
    v3->_flowWidth = 0;
    v3->_flowHeight = 0;
    v3->_frameNum = 0;
    v3->_sceneType = 0;
    v3->_initialized = 0;
    v3->_useR2D2 = [objc_opt_class() enableR2D2];
  }

  return v3;
}

+ (BOOL)enableR2D2
{
  if ((DeviceHasANE() & 1) == 0)
  {
    return +[VCPMotionFlowSubtleMotionAnalyzer enableR2D2]::enable;
  }

  result = 1;
  +[VCPMotionFlowSubtleMotionAnalyzer enableR2D2]::enable = 1;
  return result;
}

- (void)dealloc
{
  p_frameArray = &self->_frameArray;
  begin = self->_frameArray.__begin_;
  end = self->_frameArray.__end_;
  if (end != begin)
  {
    v6 = 0;
    do
    {
      v7 = begin[v6];
      if (v7)
      {
        CFRelease(v7);
        begin[v6] = 0;
        begin = p_frameArray->__begin_;
        end = p_frameArray->__end_;
      }

      ++v6;
    }

    while (v6 < end - begin);
  }

  transferSession = self->_transferSession;
  if (transferSession)
  {
    CFRelease(transferSession);
  }

  block = self->_block;
  if (block)
  {
    MEMORY[0x1CCA95C10](block, 0x1000C8052888210);
  }

  if (self->_useR2D2)
  {
    flow = self->_flow;
    if (flow)
    {
      MEMORY[0x1CCA95C10](flow, 0x1000C8052888210);
    }
  }

  v11.receiver = self;
  v11.super_class = VCPMotionFlowSubtleMotionAnalyzer;
  [(VCPMotionFlowSubtleMotionAnalyzer *)&v11 dealloc];
}

- (int)prepareAnalyzerWithCVPixelBuffer:(__CVBuffer *)a3 cancel:(id)a4
{
  v33[3] = *MEMORY[0x1E69E9840];
  v6 = a4;
  Width = CVPixelBufferGetWidth(a3);
  Height = CVPixelBufferGetHeight(a3);
  self->_frameWidth = Width;
  self->_frameHeight = Height;
  if (Width <= Height)
  {
    v10 = Height;
  }

  else
  {
    v10 = Width;
  }

  if (v10 != 576)
  {
    self->_scale = 1;
    v11 = (vcvtps_s32_f32((Width * 576.0) / Height) + 1) & 0xFFFFFFFE;
    if (Width <= Height)
    {
      v12 = v11;
    }

    else
    {
      v12 = 576;
    }

    self->_downScaleWidth = v12;
    v13 = (vcvtps_s32_f32((Height * 576.0) / Width) + 1) & 0xFFFFFFFE;
    if (Width >= Height)
    {
      v14 = v13;
    }

    else
    {
      v14 = 576;
    }

    self->_downScaleHeight = v14;
  }

  if (self->_useR2D2)
  {
    frameWidth = self->_frameWidth;
    if (((frameWidth * self->_frameHeight) & 0x40000000) != 0)
    {
      v16 = -1;
    }

    else
    {
      v16 = 8 * frameWidth * self->_frameHeight;
    }

    v17 = operator new[](v16, MEMORY[0x1E69E5398]);
    self->_flow = v17;
    if (!v17)
    {
      goto LABEL_24;
    }

    v32[0] = @"frameWidth";
    v18 = [MEMORY[0x1E696AD98] numberWithInt:frameWidth];
    v33[0] = v18;
    v32[1] = @"frameHeight";
    v19 = [MEMORY[0x1E696AD98] numberWithInt:self->_frameHeight];
    v32[2] = @"motionFlowComputationAccuracy";
    v33[1] = v19;
    v33[2] = &unk_1F49BDEA0;
    v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v33 forKeys:v32 count:3];

    v21 = [[VCPMotionFlowRequest alloc] initWithOptions:v20 cancel:v6];
    moflowRequest = self->_moflowRequest;
    self->_moflowRequest = v21;

    self->_blockSize = 40;
    blockSize = self->_blockSize;
  }

  else
  {
    *&v9 = self->_frameWidth / self->_frameHeight;
    v24 = [MEMORY[0x1E696AD98] numberWithFloat:v9];
    v25 = [VCPImageMotionFlowAnalyzer analyzeWithLightweightOption:0 aspectRatio:v24 computationAccuracy:1 forceCPU:0 sharedModel:1 flushModel:1 cancel:v6];
    motionFlowAnalyzer = self->_motionFlowAnalyzer;
    self->_motionFlowAnalyzer = v25;

    blockSize = 8;
    self->_blockSize = 8;
  }

  v27 = 2 * blockSize * blockSize;
  if (v27 < 0)
  {
    v28 = -1;
  }

  else
  {
    v28 = 4 * v27;
  }

  v29 = operator new[](v28, MEMORY[0x1E69E5398]);
  self->_block = v29;
  if (!v29)
  {
LABEL_24:
    v30 = -108;
    goto LABEL_25;
  }

  v30 = 0;
  self->_initialized = 1;
LABEL_25:

  return v30;
}

- (int)convertFlow:(__CVBuffer *)a3
{
  Width = CVPixelBufferGetWidth(a3);
  Height = CVPixelBufferGetHeight(a3);
  BytesPerRow = CVPixelBufferGetBytesPerRow(a3);
  flow = self->_flow;
  pixelBuffer = a3;
  unlockFlags = 1;
  if (a3)
  {
    v9 = BytesPerRow;
    v10 = CVPixelBufferLockBaseAddress(a3, 1uLL);
    v26 = v10;
    if (v10)
    {
      v11 = v10;
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        [VCPImageConverter convertImage:yuvFrame:];
      }
    }

    else
    {
      BaseAddress = CVPixelBufferGetBaseAddress(a3);
      if (Height >= 1)
      {
        v14 = 0;
        v15 = 0;
        v16 = &flow[Width * Height];
        do
        {
          if (Width >= 1)
          {
            v17 = 0;
            v18 = &BaseAddress[(v14 & 0xFFFFFFFFFFFFFFFELL) + 2];
            do
            {
              _H1 = *(v18 - 1);
              __asm { FCVT            S1, H1 }

              *flow++ = _S1 / 1.3;
              LOWORD(_S1) = *v18;
              __asm { FCVT            S1, H1 }

              *v16++ = _S1 / 1.3;
              v17 += 2;
              v18 += 4;
            }

            while (v17 < 2 * Width);
          }

          ++v15;
          v14 += v9;
        }

        while (v15 != (Height & 0x7FFFFFFF));
      }

      v11 = CVPixelBufferLock::Unlock(&v26);
      if (pixelBuffer && !v26 && CVPixelBufferUnlockBaseAddress(pixelBuffer, unlockFlags) && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        [VCPImageExposurePreAnalyzer analyzePixelBuffer:flags:results:cancel:];
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

  return v11;
}

- (int)createPixelBufferWithWidth:(unint64_t)a3 height:(unint64_t)a4 pixelFormat:(int)a5 pixelBuffer:(__CVBuffer *)a6
{
  v14[1] = *MEMORY[0x1E69E9840];
  v13 = *MEMORY[0x1E69660D8];
  v14[0] = MEMORY[0x1E695E0F8];
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:&v13 count:1];
  v11 = CVPixelBufferCreate(0, a3, a4, a5, v10, a6);
  if (v11 && *a6)
  {
    CFRelease(*a6);
    *a6 = 0;
  }

  return v11;
}

- (int)convertPixelBuffer:(__CVBuffer *)a3 toPixelBuffer:(__CVBuffer *)a4 withPixelFormat:(int)a5
{
  v5 = *&a5;
  if (self->_transferSession || (result = VTPixelTransferSessionCreate(0, &self->_transferSession)) == 0)
  {
    Width = CVPixelBufferGetWidth(a3);
    result = [(VCPMotionFlowSubtleMotionAnalyzer *)self createPixelBufferWithWidth:Width height:CVPixelBufferGetHeight(a3) pixelFormat:v5 pixelBuffer:a4];
    if (!result)
    {
      transferSession = self->_transferSession;
      v12 = *a4;

      return VTPixelTransferSessionTransferImage(transferSession, a3, v12);
    }
  }

  return result;
}

- (int)preProcessing:(__CVBuffer *)a3
{
  v11 = 0;
  Width = CVPixelBufferGetWidth(a3);
  if (*&self->_frameWidth != __PAIR64__(CVPixelBufferGetHeight(a3), Width))
  {
    return -50;
  }

  if (self->_scale)
  {
    Scaler::Scale(&self->_scaler, a3, &v11, self->_downScaleWidth, self->_downScaleHeight, 875704438);
    if (result)
    {
      return result;
    }
  }

  else
  {
    result = [(VCPMotionFlowSubtleMotionAnalyzer *)self convertPixelBuffer:a3 toPixelBuffer:&v11 withPixelFormat:875704438];
    if (result)
    {
      return result;
    }
  }

  p_frameArray = &self->_frameArray;
  begin = p_frameArray->__begin_;
  end = p_frameArray->__end_;
  if ((end - p_frameArray->__begin_) >= 9)
  {
    if (*begin)
    {
      CFRelease(*begin);
      *begin = 0;
      begin = p_frameArray->__begin_;
      end = p_frameArray->__end_;
    }

    v10 = end - (begin + 1);
    if (end != (begin + 1))
    {
      memmove(begin, begin + 1, end - (begin + 1));
    }

    p_frameArray->__end_ = (begin + v10);
  }

  std::vector<__CVBuffer *>::push_back[abi:ne200100](p_frameArray, &v11);
  return 0;
}

- (int)generateMotionFlow
{
  v23 = *MEMORY[0x1E69E9840];
  begin = self->_frameArray.__begin_;
  v4 = (self->_frameArray.__end_ - begin) >> 3;
  if (v4 <= 1)
  {
    LODWORD(v4) = 1;
  }

  v5 = begin[v4 - 1];
  v6 = *begin;
  if (self->_useR2D2)
  {
    moflowRequest = self->_moflowRequest;
    v20 = 0;
    v8 = [(VCPMotionFlowRequest *)moflowRequest estimateMotionBetweenFirstImage:v6 andSecondImage:v5 withUpsample:1 withGuidedImage:0 error:&v20];
    v9 = v20;
    self->_flowWidth = self->_frameWidth;
    self->_flowHeight = self->_frameHeight;
    if (v9)
    {
      if (MediaAnalysisLogLevel() < 3 || !os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_25;
      }

      *buf = 138412290;
      v22 = v9;
      v10 = MEMORY[0x1E69E9C10];
      v11 = "[MotionFlowSubtleMotionAnalyzer] Failed to request flow from VCPMotionFlowRequest: %@";
      v12 = 12;
LABEL_8:
      _os_log_impl(&dword_1C9B70000, v10, OS_LOG_TYPE_ERROR, v11, buf, v12);
LABEL_25:

      return -18;
    }

    if (![v8 pixelBuffer])
    {
      if (MediaAnalysisLogLevel() < 3 || !os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_25;
      }

      *buf = 0;
      v10 = MEMORY[0x1E69E9C10];
      v11 = "Motion flow is null";
      v12 = 2;
      goto LABEL_8;
    }

    -[VCPMotionFlowSubtleMotionAnalyzer convertFlow:](self, "convertFlow:", [v8 pixelBuffer]);

    return 0;
  }

  motionFlowAnalyzer = self->_motionFlowAnalyzer;
  if (!motionFlowAnalyzer)
  {
    if (MediaAnalysisLogLevel() < 3 || !os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      return -18;
    }

    *buf = 0;
    v16 = MEMORY[0x1E69E9C10];
    v17 = "Fail to initialize motionFlowAnalyzer";
    goto LABEL_17;
  }

  v14 = [(VCPImageMotionFlowAnalyzer *)motionFlowAnalyzer analyzeImages:v5 secondImage:v6 cancel:&__block_literal_global_67];
  if (!v14)
  {
    v18 = [(VCPImageMotionFlowAnalyzer *)self->_motionFlowAnalyzer getFlowWithHeight:&self->_flowHeight andWidth:&self->_flowWidth];
    self->_flow = v18;
    if (v18)
    {
      return 0;
    }

    if (MediaAnalysisLogLevel() < 3 || !os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      return -18;
    }

    *buf = 0;
    v16 = MEMORY[0x1E69E9C10];
    v17 = "Motion flow is null";
LABEL_17:
    _os_log_impl(&dword_1C9B70000, v16, OS_LOG_TYPE_ERROR, v17, buf, 2u);
    return -18;
  }

  v15 = v14;
  if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Fail in generating motion flow", buf, 2u);
  }

  return v15;
}

- (int)generateSubleMotionScore:(void *)a3
{
  v4 = a3;
  __p = 0;
  v62 = 0;
  v63 = 0;
  flowHeight = self->_flowHeight;
  if (flowHeight < 1)
  {
    v7 = 0;
    v36 = 0;
  }

  else
  {
    v7 = 0;
    v8 = 0;
    flow = self->_flow;
    flowWidth = self->_flowWidth;
    v11 = &flow[flowHeight * flowWidth];
    blockSize = self->_blockSize;
    do
    {
      if (blockSize >= flowHeight - v8)
      {
        v13 = flowHeight - v8;
      }

      else
      {
        v13 = blockSize;
      }

      if (flowWidth >= 1)
      {
        v14 = 0;
        v53 = v11;
        v54 = flow;
        __src = flow;
        v55 = v13;
        v56 = v8;
        do
        {
          block = self->_block;
          __Mean = 0;
          __StandardDeviation = 0;
          v16 = flowWidth - v14;
          if (blockSize < v16)
          {
            v16 = blockSize;
          }

          v57 = v16;
          if (v13 >= 1)
          {
            v17 = 4 * v16;
            v18 = v13;
            v19 = v11;
            v20 = __src;
            do
            {
              memcpy(block, v20, v17);
              memcpy(&block[self->_blockSize * self->_blockSize], v19, v17);
              v21 = self->_flowWidth;
              v20 += v21;
              v19 += v21;
              block = (block + v17);
              --v18;
            }

            while (v18);
            v16 = v57;
            block = self->_block;
            v13 = v55;
            v8 = v56;
          }

          v22 = v16 * v13;
          vDSP_normalize(block, 1, 0, 1, &__StandardDeviation, &__StandardDeviation + 1, v22);
          vDSP_normalize(&self->_block[self->_blockSize * self->_blockSize], 1, 0, 1, &__Mean, &__Mean + 1, v22);
          v23 = self->_blockSize;
          v24 = 0.0;
          if (v8 >= v23 && v14 >= v23 && v8 < self->_flowHeight - v23 && v14 < self->_flowWidth - v23)
          {
            *&v3 = (*(&__Mean + 1) * *(&__Mean + 1)) + (*(&__StandardDeviation + 1) * *(&__StandardDeviation + 1));
            v24 = sqrtf(*&v3);
          }

          v25 = v62;
          if (v62 >= v63)
          {
            v26 = __p;
            v27 = v62 - __p;
            v28 = (v62 - __p) >> 2;
            v29 = v28 + 1;
            if ((v28 + 1) >> 62)
            {
              std::vector<std::unique_ptr<VCPProtoKeypoint>>::__throw_length_error[abi:ne200100]();
            }

            v30 = v63 - __p;
            if ((v63 - __p) >> 1 > v29)
            {
              v29 = v30 >> 1;
            }

            v31 = v30 >= 0x7FFFFFFFFFFFFFFCLL;
            v32 = 0x3FFFFFFFFFFFFFFFLL;
            if (!v31)
            {
              v32 = v29;
            }

            if (v32)
            {
              std::__allocate_at_least[abi:ne200100]<std::allocator<float>>(&__p, v32);
            }

            v33 = (4 * v28);
            v34 = &v33[-((v62 - __p) >> 2)];
            *v33 = v24;
            v7 = v33 + 1;
            memcpy(v34, v26, v27);
            v35 = __p;
            __p = v34;
            v62 = v7;
            v63 = 0;
            if (v35)
            {
              operator delete(v35);
            }
          }

          else
          {
            *v62 = v24;
            v7 = v25 + 1;
          }

          v62 = v7;
          __src += v57;
          v11 += v57;
          blockSize = self->_blockSize;
          v14 += blockSize;
          flowWidth = self->_flowWidth;
        }

        while (v14 < flowWidth);
        flow = v54;
        flowHeight = self->_flowHeight;
        v11 = v53;
      }

      flow += flowWidth * v13;
      v11 += flowWidth * v13;
      v8 += blockSize;
    }

    while (v8 < flowHeight);
    v36 = __p;
    v4 = a3;
  }

  v37 = 126 - 2 * __clz(v7 - v36);
  if (v7 == v36)
  {
    v38 = 0;
  }

  else
  {
    v38 = v37;
  }

  std::__introsort<std::_ClassicAlgPolicy,std::greater<float> &,float *,true>(v36, v7, &__StandardDeviation + 4, v38, 1, v3);
  v39 = __p;
  if ((self->_sceneType & 0xFFFFFFFE) == 2)
  {
    v40 = 0;
    v41 = 0.0;
    do
    {
      v42 = *(__p + v40);
      if (v42 > 0.1)
      {
        v41 = v41 + v42;
      }

      v40 += 4;
    }

    while (v40 != 12);
    v43 = 3.0;
  }

  else
  {
    v44 = 0;
    v41 = 0.0;
    do
    {
      v45 = *(__p + v44);
      if (v45 > 0.1)
      {
        v41 = v41 + v45;
      }

      v44 += 4;
    }

    while (v44 != 48);
    v43 = 12.0;
  }

  v46 = v41 / v43;
  if (v4[196] == 1)
  {
    v47 = 0.333;
    if (v46 < 0.333)
    {
      v47 = v46;
    }

    v48 = ((v47 + -0.042) / 0.291) * 10.0;
    v49 = v46 > 0.042;
    v50 = 0.0;
    if (v49)
    {
      v50 = v48;
    }

    self->_subtleMotionScore = v50;
  }

  v62 = v39;
  operator delete(v39);
  return 0;
}

- (int)analyzePixelBuffer:(__CVBuffer *)a3 withFrame:(void *)a4 withTimestamp:(id *)a5 andDuration:(id *)a6 hasSubtleScene:(int)a7 cancel:(id)a8
{
  v12 = a8;
  self->_sceneType = a7;
  if (!a7)
  {
    goto LABEL_10;
  }

  if ((*(a4 + 196) & 1) == 0)
  {
    goto LABEL_6;
  }

  if (*(a4 + 44) > 5.0)
  {
    subtleMotionScore = self->_subtleMotionScore;
    if (*(a4 + 48) < subtleMotionScore)
    {
      *(a4 + 48) = subtleMotionScore;
    }

LABEL_6:
    a7 = 0;
    frameNum = self->_frameNum;
    if ((frameNum % 6) <= 1)
    {
      v15 = -(frameNum % 6);
    }

    else
    {
      v15 = 1;
    }

    self->_frameNum = v15 + frameNum;
    goto LABEL_10;
  }

  if (!self->_initialized)
  {
    a7 = [(VCPMotionFlowSubtleMotionAnalyzer *)self prepareAnalyzerWithCVPixelBuffer:a3 cancel:v12];
    if (a7)
    {
      goto LABEL_10;
    }
  }

  v17 = self->_frameNum % 6;
  if (!v17)
  {
    v18 = [(VCPMotionFlowSubtleMotionAnalyzer *)self preProcessing:a3];
LABEL_19:
    a7 = v18;
    if (v18)
    {
      goto LABEL_10;
    }

    goto LABEL_20;
  }

  if (v17 == 1)
  {
    a7 = [(VCPMotionFlowSubtleMotionAnalyzer *)self preProcessing:a3];
    if (a7)
    {
      goto LABEL_10;
    }

    a7 = [(VCPMotionFlowSubtleMotionAnalyzer *)self generateMotionFlow];
    if (a7)
    {
      goto LABEL_10;
    }

    v18 = [(VCPMotionFlowSubtleMotionAnalyzer *)self generateSubleMotionScore:a4];
    goto LABEL_19;
  }

LABEL_20:
  v19 = self->_subtleMotionScore;
  if (*(a4 + 48) < v19 && *(a4 + 196) == 1)
  {
    *(a4 + 48) = v19;
  }

  a7 = 0;
  ++self->_frameNum;
LABEL_10:

  return a7;
}

- (id).cxx_construct
{
  *(self + 5) = 0;
  *(self + 12) = 0;
  *(self + 11) = 0;
  *(self + 12) = 0;
  *(self + 10) = 0;
  return self;
}

@end