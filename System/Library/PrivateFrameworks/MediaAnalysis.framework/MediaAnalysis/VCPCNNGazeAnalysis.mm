@interface VCPCNNGazeAnalysis
+ (id)sharedModel:(id)model;
- (VCPCNNGazeAnalysis)init;
- (id).cxx_construct;
- (int)copyImage:(__CVBuffer *)image toData:(float *)data;
- (int)createInput:(float *)input withBuffer:(__CVBuffer *)buffer cnnInputHeight:(int)height cnnInputWidth:(int)width faceBounds:(CGRect)bounds;
- (int)detectEyeOpennessForFace:(CGRect)face inBuffer:(__CVBuffer *)buffer eyeOpenness:(BOOL *)openness;
- (void)dealloc;
@end

@implementation VCPCNNGazeAnalysis

- (VCPCNNGazeAnalysis)init
{
  vcp_mediaAnalysisBundle = [MEMORY[0x1E696AAE8] vcp_mediaAnalysisBundle];
  resourceURL = [vcp_mediaAnalysisBundle resourceURL];

  v5 = [MEMORY[0x1E695DFF8] URLWithString:@"cnn_blink.espresso.net" relativeToURL:resourceURL];
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

+ (id)sharedModel:(id)model
{
  modelCopy = model;
  v4 = +[VCPSharedInstanceManager sharedManager];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __34__VCPCNNGazeAnalysis_sharedModel___block_invoke;
  v8[3] = &unk_1E834CF10;
  v5 = modelCopy;
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

- (int)copyImage:(__CVBuffer *)image toData:(float *)data
{
  if (CVPixelBufferGetPixelFormatType(image) != 1111970369)
  {
    return -50;
  }

  Width = CVPixelBufferGetWidth(image);
  Height = CVPixelBufferGetHeight(image);
  pixelBuffer = image;
  unlockFlags = 1;
  if (!image)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      [VCPVideoCNNAnalyzer copyImage:withChannels:settling:];
    }

    return -50;
  }

  v8 = Height;
  v9 = CVPixelBufferLockBaseAddress(image, 1uLL);
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
    BaseAddress = CVPixelBufferGetBaseAddress(image);
    BytesPerRow = CVPixelBufferGetBytesPerRow(image);
    bzero(data, 3 * 4 * Width * v8);
    if (v8 >= 1)
    {
      v15 = 0;
      v16 = &data[2 * v8 * Width];
      v17 = &data[v8 * Width];
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
            data[v19] = *&v21;
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
        data = (data + v18);
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

- (int)createInput:(float *)input withBuffer:(__CVBuffer *)buffer cnnInputHeight:(int)height cnnInputWidth:(int)width faceBounds:(CGRect)bounds
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  v11 = *&width;
  v12 = *&height;
  cf = 0;
  v16 = CVPixelBufferGetWidth(buffer);
  v17 = CVPixelBufferGetHeight(buffer);
  if (!input)
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
  v27 = Scaler::ScaleCropped(&self->_scaler, v32, buffer, &cf, v11, v12, 1111970369);
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

  v29 = [(VCPCNNGazeAnalysis *)self copyImage:cf toData:input];
  v28 = cf;
  if (cf)
  {
LABEL_17:
    CFRelease(v28);
  }

  return v29;
}

- (int)detectEyeOpennessForFace:(CGRect)face inBuffer:(__CVBuffer *)buffer eyeOpenness:(BOOL *)openness
{
  if (face.size.width < 40.0 || face.size.height < 40.0)
  {
    v7 = 1;
LABEL_7:
    result = 0;
    *openness = v7;
    return result;
  }

  result = [(VCPCNNGazeAnalysis *)self createInput:self->_inputData withBuffer:buffer cnnInputHeight:64 cnnInputWidth:64 faceBounds:face.origin.x, face.origin.y];
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