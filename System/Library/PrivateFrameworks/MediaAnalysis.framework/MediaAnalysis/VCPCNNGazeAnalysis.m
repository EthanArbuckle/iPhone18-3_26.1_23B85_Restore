@interface VCPCNNGazeAnalysis
+ (id)sharedModel:(id)a3;
- (VCPCNNGazeAnalysis)init;
- (id).cxx_construct;
- (int)copyImage:(__CVBuffer *)a3 toData:(float *)a4;
- (int)createInput:(float *)a3 withBuffer:(__CVBuffer *)a4 cnnInputHeight:(int)a5 cnnInputWidth:(int)a6 faceBounds:(CGRect)a7;
- (int)detectEyeOpennessForFace:(CGRect)a3 inBuffer:(__CVBuffer *)a4 eyeOpenness:(BOOL *)a5;
- (void)dealloc;
@end

@implementation VCPCNNGazeAnalysis

- (VCPCNNGazeAnalysis)init
{
  v3 = [MEMORY[0x1E696AAE8] vcp_mediaAnalysisBundle];
  v4 = [v3 resourceURL];

  v5 = [MEMORY[0x1E695DFF8] URLWithString:@"cnn_blink.espresso.net" relativeToURL:v4];
  v24.receiver = self;
  v24.super_class = VCPCNNGazeAnalysis;
  v6 = [(VCPCNNGazeAnalysis *)&v24 init];
  if (!v6)
  {
    goto LABEL_7;
  }

  if (DeviceHasANE())
  {
    v7 = [objc_opt_class() sharedModel:v5];
  }

  else
  {
    v7 = [[VCPCNNModelEspresso alloc] initWithParameters:v5 inputNames:0 outputNames:0 properties:0];
  }

  modelEspresso = v6->_modelEspresso;
  v6->_modelEspresso = v7;

  v9 = v6->_modelEspresso;
  if (!v9 || [(VCPCNNModelEspresso *)v9 prepareModelWithConfig:&stru_1F496CB30])
  {
    goto LABEL_7;
  }

  v13 = v6->_modelEspresso;
  if (v13 && ([(VCPCNNModelEspresso *)v13 inputBlob], (v14 = v6->_modelEspresso) != 0))
  {
    [(VCPCNNModelEspresso *)v14 inputBlob];
    v15 = v6->_modelEspresso;
    v16 = v22 * v23;
    if (v15)
    {
      [(VCPCNNModelEspresso *)v15 inputBlob];
      v17 = v21;
      goto LABEL_15;
    }
  }

  else
  {
    v16 = 0;
  }

  v17 = 0;
LABEL_15:
  v18 = v16 * v17;
  if (v18 >> 62)
  {
    v19 = -1;
  }

  else
  {
    v19 = 4 * v18;
  }

  v20 = operator new[](v19, MEMORY[0x1E69E5398]);
  v6->_inputData = v20;
  v10 = v6;
  if (!v20)
  {
LABEL_7:
    v10 = 0;
  }

  v11 = v10;

  return v11;
}

+ (id)sharedModel:(id)a3
{
  v3 = a3;
  v4 = +[VCPSharedInstanceManager sharedManager];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __34__VCPCNNGazeAnalysis_sharedModel___block_invoke;
  v8[3] = &unk_1E834CF10;
  v5 = v3;
  v9 = v5;
  v6 = [v4 sharedInstanceWithIdentifier:@"VCPGazeEspresso" andCreationBlock:v8];

  return v6;
}

VCPCNNModelEspresso *__34__VCPCNNGazeAnalysis_sharedModel___block_invoke(uint64_t a1)
{
  v1 = [[VCPCNNModelEspresso alloc] initWithParameters:*(a1 + 32) inputNames:0 outputNames:0 properties:0];

  return v1;
}

- (void)dealloc
{
  inputData = self->_inputData;
  if (inputData)
  {
    MEMORY[0x1CCA95C10](inputData, 0x1000C8052888210);
  }

  v4.receiver = self;
  v4.super_class = VCPCNNGazeAnalysis;
  [(VCPCNNGazeAnalysis *)&v4 dealloc];
}

- (int)copyImage:(__CVBuffer *)a3 toData:(float *)a4
{
  if (CVPixelBufferGetPixelFormatType(a3) != 1111970369)
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

  v8 = Height;
  v9 = CVPixelBufferLockBaseAddress(a3, 1uLL);
  v23 = v9;
  if (v9)
  {
    v10 = v9;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      [VCPImageConverter convertImage:yuvFrame:];
    }
  }

  else
  {
    BaseAddress = CVPixelBufferGetBaseAddress(a3);
    BytesPerRow = CVPixelBufferGetBytesPerRow(a3);
    bzero(a4, 3 * 4 * Width * v8);
    if (v8 >= 1)
    {
      v15 = 0;
      v16 = &a4[2 * v8 * Width];
      v17 = &a4[v8 * Width];
      v18 = 4 * Width;
      do
      {
        if (Width >= 1)
        {
          v19 = 0;
          v20 = Width & 0x7FFFFFFF;
          do
          {
            LOBYTE(v14) = BaseAddress[(v19 * 4) + 2];
            *&v21 = ((LODWORD(v14) / 255.0) + -0.485) / 0.229;
            a4[v19] = *&v21;
            LOBYTE(v21) = BaseAddress[(v19 * 4) + 1];
            *&v22 = ((v21 / 255.0) + -0.456) / 0.224;
            v17[v19] = *&v22;
            LOBYTE(v22) = BaseAddress[(v19 * 4)];
            v14 = ((v22 / 255.0) + -0.406) / 0.225;
            v16[v19++] = v14;
            --v20;
          }

          while (v20);
        }

        BaseAddress += BytesPerRow;
        ++v15;
        v16 = (v16 + v18);
        v17 = (v17 + v18);
        a4 = (a4 + v18);
      }

      while (v15 != v8);
    }

    v10 = CVPixelBufferLock::Unlock(&v23);
    if (pixelBuffer && !v23 && CVPixelBufferUnlockBaseAddress(pixelBuffer, unlockFlags) && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      [VCPImageExposurePreAnalyzer analyzePixelBuffer:flags:results:cancel:];
    }
  }

  return v10;
}

- (int)createInput:(float *)a3 withBuffer:(__CVBuffer *)a4 cnnInputHeight:(int)a5 cnnInputWidth:(int)a6 faceBounds:(CGRect)a7
{
  height = a7.size.height;
  width = a7.size.width;
  y = a7.origin.y;
  x = a7.origin.x;
  v11 = *&a6;
  v12 = *&a5;
  cf = 0;
  v16 = CVPixelBufferGetWidth(a4);
  v17 = CVPixelBufferGetHeight(a4);
  if (!a3)
  {
    return -108;
  }

  v18 = (v16 - 1);
  if (x <= v18)
  {
    v19 = x;
  }

  else
  {
    v19 = (v16 - 1);
  }

  v20 = fmax(v19, 0.0);
  v21 = v17 - 1;
  if (y <= (v17 - 1))
  {
    v22 = y;
  }

  else
  {
    v22 = v21;
  }

  v23 = fmax(v22, 0.0);
  if (x + width <= v18)
  {
    v18 = x + width;
  }

  v24 = fmax(v18, 0.0);
  v25 = y + height;
  if (y + height > (v17 - 1))
  {
    v25 = v21;
  }

  v26 = fmax(v25, 0.0);
  v32.origin.x = (v20 / v16);
  v32.origin.y = (v23 / v17);
  v32.size.width = ((v24 - v20) / v16);
  v32.size.height = ((v26 - v23) / v17);
  v27 = Scaler::ScaleCropped(&self->_scaler, v32, a4, &cf, v11, v12, 1111970369);
  v28 = cf;
  if (v27)
  {
    v29 = v27;
    if (!cf)
    {
      return v29;
    }

    goto LABEL_17;
  }

  v29 = [(VCPCNNGazeAnalysis *)self copyImage:cf toData:a3];
  v28 = cf;
  if (cf)
  {
LABEL_17:
    CFRelease(v28);
  }

  return v29;
}

- (int)detectEyeOpennessForFace:(CGRect)a3 inBuffer:(__CVBuffer *)a4 eyeOpenness:(BOOL *)a5
{
  if (a3.size.width < 40.0 || a3.size.height < 40.0)
  {
    v7 = 1;
LABEL_7:
    result = 0;
    *a5 = v7;
    return result;
  }

  result = [(VCPCNNGazeAnalysis *)self createInput:self->_inputData withBuffer:a4 cnnInputHeight:64 cnnInputWidth:64 faceBounds:a3.origin.x, a3.origin.y];
  if (!result)
  {
    result = [(VCPCNNModelEspresso *)self->_modelEspresso espressoForward:self->_inputData];
    if (!result)
    {
      result = [(VCPCNNModelEspresso *)self->_modelEspresso softmax];
      if (!result)
      {
        [(VCPCNNModelEspresso *)self->_modelEspresso outputBlob];
        v7 = *(v10 + 4) <= 0.6;
        goto LABEL_7;
      }
    }
  }

  return result;
}

- (id).cxx_construct
{
  *(self + 4) = 0;
  *(self + 10) = 0;
  return self;
}

@end