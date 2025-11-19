@interface VCPMotionFlowAnalyzer
- (VCPMotionFlowAnalyzer)init;
- (id).cxx_construct;
- (int)analyzePixelBuffer:(__CVBuffer *)a3 withFrame:(void *)a4 withTimestamp:(id *)a5 andDuration:(id *)a6 cancel:(id)a7;
- (int)convertFlow:(__CVBuffer *)a3;
- (int)convertPixelBuffer:(__CVBuffer *)a3 toPixelBuffer:(__CVBuffer *)a4 withPixelFormat:(int)a5;
- (int)createPixelBufferWithWidth:(unint64_t)a3 height:(unint64_t)a4 pixelFormat:(int)a5 pixelBuffer:(__CVBuffer *)a6;
- (int)generateMotionFlow;
- (int)preProcessing:(__CVBuffer *)a3;
- (int)prepareAnalyzerWithCVPixelBuffer:(__CVBuffer *)a3 cancel:(id)a4;
- (void)dealloc;
@end

@implementation VCPMotionFlowAnalyzer

- (VCPMotionFlowAnalyzer)init
{
  v6.receiver = self;
  v6.super_class = VCPMotionFlowAnalyzer;
  v2 = [(VCPMotionFlowAnalyzer *)&v6 init];
  v3 = v2;
  if (v2)
  {
    v2->_frameArray.__end_ = v2->_frameArray.__begin_;
    v2->_flow = 0;
    v2->_transferSession = 0;
    v2->_scale = 0;
    moflowRequest = v2->_moflowRequest;
    v2->_moflowRequest = 0;

    v3->_frameWidth = 0;
    v3->_frameHeight = 0;
    v3->_downScaleWidth = 0;
    v3->_downScaleHeight = 0;
    v3->_flowWidth = 0;
    v3->_flowHeight = 0;
    v3->_frameNum = 0;
    v3->_initialized = 0;
  }

  return v3;
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

  flow = self->_flow;
  if (flow)
  {
    MEMORY[0x1CCA95C10](flow, 0x1000C8052888210);
  }

  v10.receiver = self;
  v10.super_class = VCPMotionFlowAnalyzer;
  [(VCPMotionFlowAnalyzer *)&v10 dealloc];
}

- (int)prepareAnalyzerWithCVPixelBuffer:(__CVBuffer *)a3 cancel:(id)a4
{
  v22[3] = *MEMORY[0x1E69E9840];
  v6 = a4;
  Width = CVPixelBufferGetWidth(a3);
  Height = CVPixelBufferGetHeight(a3);
  self->_frameWidth = Width;
  self->_frameHeight = Height;
  if (Width <= Height)
  {
    v9 = Height;
  }

  else
  {
    v9 = Width;
  }

  if (v9 != 576)
  {
    self->_scale = 1;
    if (Width <= Height)
    {
      v10 = (vcvtps_s32_f32((Width * 576.0) / Height) + 1) & 0xFFFFFFFE;
    }

    else
    {
      v10 = 576;
    }

    self->_downScaleWidth = v10;
    if (Width >= Height)
    {
      v11 = (vcvtps_s32_f32((Height * 576.0) / Width) + 1) & 0xFFFFFFFE;
    }

    else
    {
      v11 = 576;
    }

    self->_downScaleHeight = v11;
    Height = self->_frameHeight;
  }

  if (((self->_frameWidth * Height) & 0x40000000) != 0)
  {
    v12 = -1;
  }

  else
  {
    v12 = 8 * self->_frameWidth * Height;
  }

  v13 = operator new[](v12, MEMORY[0x1E69E5398]);
  self->_flow = v13;
  if (v13)
  {
    v21[0] = @"frameWidth";
    v14 = [MEMORY[0x1E696AD98] numberWithInt:self->_downScaleWidth];
    v22[0] = v14;
    v21[1] = @"frameHeight";
    v15 = [MEMORY[0x1E696AD98] numberWithInt:self->_downScaleHeight];
    v21[2] = @"motionFlowComputationAccuracy";
    v22[1] = v15;
    v22[2] = &unk_1F49BE638;
    v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v22 forKeys:v21 count:3];

    v17 = [[VCPMotionFlowRequest alloc] initWithOptions:v16 cancel:v6];
    moflowRequest = self->_moflowRequest;
    self->_moflowRequest = v17;

    self->_initialized = 1;
    v19 = 0;
  }

  else
  {
    v19 = -108;
  }

  return v19;
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
              _H0 = *(v18 - 1);
              __asm { FCVT            S0, H0 }

              *flow++ = _S0;
              LOWORD(_S0) = *v18;
              __asm { FCVT            S0, H0 }

              *v16++ = _S0;
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
    result = [(VCPMotionFlowAnalyzer *)self createPixelBufferWithWidth:Width height:CVPixelBufferGetHeight(a3) pixelFormat:v5 pixelBuffer:a4];
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
    result = [(VCPMotionFlowAnalyzer *)self convertPixelBuffer:a3 toPixelBuffer:&v11 withPixelFormat:875704438];
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
  v18 = *MEMORY[0x1E69E9840];
  begin = self->_frameArray.__begin_;
  v4 = (self->_frameArray.__end_ - begin) >> 3;
  if (v4 <= 1)
  {
    LODWORD(v4) = 1;
  }

  v5 = begin[v4 - 1];
  v6 = *begin;
  moflowRequest = self->_moflowRequest;
  v15 = 0;
  v8 = [(VCPMotionFlowRequest *)moflowRequest estimateMotionBetweenFirstImage:v5 andSecondImage:v6 withUpsample:1 withGuidedImage:0 error:&v15];
  v9 = v15;
  self->_flowWidth = self->_frameWidth;
  self->_flowHeight = self->_frameHeight;
  if (v9)
  {
    if (MediaAnalysisLogLevel() < 3 || !os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_13;
    }

    *buf = 138412290;
    v17 = v9;
    v10 = MEMORY[0x1E69E9C10];
    v11 = "[MotionFlowAnalyzer] Failed to request flow from VCPMotionFlowRequest: %@";
    v12 = 12;
LABEL_7:
    _os_log_impl(&dword_1C9B70000, v10, OS_LOG_TYPE_ERROR, v11, buf, v12);
LABEL_13:
    v13 = -18;
    goto LABEL_14;
  }

  if (![v8 pixelBuffer])
  {
    if (MediaAnalysisLogLevel() < 3 || !os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_13;
    }

    *buf = 0;
    v10 = MEMORY[0x1E69E9C10];
    v11 = "Motion flow is null";
    v12 = 2;
    goto LABEL_7;
  }

  -[VCPMotionFlowAnalyzer convertFlow:](self, "convertFlow:", [v8 pixelBuffer]);
  v13 = 0;
LABEL_14:

  return v13;
}

- (int)analyzePixelBuffer:(__CVBuffer *)a3 withFrame:(void *)a4 withTimestamp:(id *)a5 andDuration:(id *)a6 cancel:(id)a7
{
  v10 = a7;
  if (self->_initialized || (v11 = [(VCPMotionFlowAnalyzer *)self prepareAnalyzerWithCVPixelBuffer:a3 cancel:v10]) == 0)
  {
    v11 = [(VCPMotionFlowAnalyzer *)self preProcessing:a3];
    if (!v11)
    {
      v11 = [(VCPMotionFlowAnalyzer *)self generateMotionFlow];
      if (!v11)
      {
        *(a4 + 42) = self->_flow;
        ++self->_frameNum;
      }
    }
  }

  return v11;
}

- (id).cxx_construct
{
  *(self + 4) = 0;
  *(self + 10) = 0;
  *(self + 9) = 0;
  *(self + 10) = 0;
  *(self + 8) = 0;
  return self;
}

@end