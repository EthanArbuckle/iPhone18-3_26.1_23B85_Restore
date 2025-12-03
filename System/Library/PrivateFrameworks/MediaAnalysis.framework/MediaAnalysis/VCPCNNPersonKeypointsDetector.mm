@interface VCPCNNPersonKeypointsDetector
- (VCPCNNPersonKeypointsDetector)initWithForceCPU:(BOOL)u sharedModel:(BOOL)model;
- (id).cxx_construct;
- (int)analyzeFrame:(__CVBuffer *)frame withBox:(id)box keypoints:(id)keypoints padX:(int *)x padY:(int *)y;
- (int)copyImage:(__CVBuffer *)image toData:(float *)data cnnInputHeight:(int)height cnnInputWidth:(int)width;
- (int)createInput:(float *)input withBuffer:(__CVBuffer *)buffer cnnInputHeight:(int)height cnnInputWidth:(int)width box:(id)box;
- (int)parseKeypoints:(id)keypoints;
- (void)dealloc;
@end

@implementation VCPCNNPersonKeypointsDetector

- (VCPCNNPersonKeypointsDetector)initWithForceCPU:(BOOL)u sharedModel:(BOOL)model
{
  modelCopy = model;
  uCopy = u;
  v38[2] = *MEMORY[0x1E69E9840];
  v36.receiver = self;
  v36.super_class = VCPCNNPersonKeypointsDetector;
  v6 = [(VCPCNNPersonKeypointsDetector *)&v36 init];
  if (v6)
  {
    vcp_mediaAnalysisBundle = [MEMORY[0x1E696AAE8] vcp_mediaAnalysisBundle];
    resourceURL = [vcp_mediaAnalysisBundle resourceURL];

    v9 = [MEMORY[0x1E695DFF8] URLWithString:@"cnn_human_pose_single.espresso.net" relativeToURL:resourceURL];
    v10 = [VCPCNNModelEspresso alloc];
    v37[0] = @"forceCPU";
    v11 = [MEMORY[0x1E696AD98] numberWithBool:uCopy];
    v38[0] = v11;
    v37[1] = @"sharedContext";
    v12 = [MEMORY[0x1E696AD98] numberWithBool:modelCopy];
    v38[1] = v12;
    v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v38 forKeys:v37 count:2];
    v14 = [(VCPCNNModelEspresso *)v10 initWithParameters:v9 inputNames:0 outputNames:0 properties:v13];
    modelEspresso = v6->_modelEspresso;
    v6->_modelEspresso = v14;

    v16 = v6->_modelEspresso;
    if (!v16 || [(VCPCNNModelEspresso *)v16 prepareModelWithConfig:&stru_1F496CB30])
    {
      v17 = 0;
LABEL_26:

      goto LABEL_27;
    }

    v18 = v6->_modelEspresso;
    if (v18 && ([(VCPCNNModelEspresso *)v18 inputBlob], (v19 = v6->_modelEspresso) != 0))
    {
      [(VCPCNNModelEspresso *)v19 inputBlob];
      v20 = v6->_modelEspresso;
      v21 = v33 * v35;
      if (v20)
      {
        [(VCPCNNModelEspresso *)v20 inputBlob];
        v22 = v32;
        goto LABEL_12;
      }
    }

    else
    {
      v21 = 0;
    }

    v22 = 0;
LABEL_12:
    v23 = v21 * v22;
    if (v23 >> 62)
    {
      v24 = -1;
    }

    else
    {
      v24 = 4 * v23;
    }

    v6->_inputData = operator new[](v24, MEMORY[0x1E69E5398]);
    v25 = v6->_modelEspresso;
    if (v25)
    {
      [(VCPCNNModelEspresso *)v25 inputBlob];
      v26 = v6->_modelEspresso;
      v6->_inputWidth = v34;
      if (v26)
      {
        [(VCPCNNModelEspresso *)v26 inputBlob];
        v27 = v6->_modelEspresso;
        v6->_inputHeight = v35;
        if (v27)
        {
          [(VCPCNNModelEspresso *)v27 outputBlob];
          v28 = v6->_modelEspresso;
          v6->_outputWidth = v34;
          if (v28)
          {
            [(VCPCNNModelEspresso *)v28 outputBlob];
            v29 = v35;
          }

          else
          {
            v29 = 0;
          }

          goto LABEL_23;
        }

LABEL_22:
        v29 = 0;
        v6->_outputWidth = 0;
LABEL_23:
        v6->_outputHeight = v29;
        if (v6->_inputData)
        {
          v17 = v6;
        }

        else
        {
          v17 = 0;
        }

        goto LABEL_26;
      }
    }

    else
    {
      v6->_inputWidth = 0;
    }

    v6->_inputHeight = 0;
    goto LABEL_22;
  }

  v17 = 0;
LABEL_27:
  v30 = v17;

  return v30;
}

- (void)dealloc
{
  inputData = self->_inputData;
  if (inputData)
  {
    MEMORY[0x1CCA95C10](inputData, 0x1000C8052888210);
  }

  v4.receiver = self;
  v4.super_class = VCPCNNPersonKeypointsDetector;
  [(VCPCNNPersonKeypointsDetector *)&v4 dealloc];
}

- (int)copyImage:(__CVBuffer *)image toData:(float *)data cnnInputHeight:(int)height cnnInputWidth:(int)width
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

  v13 = Height;
  v14 = CVPixelBufferLockBaseAddress(image, 1uLL);
  v33 = v14;
  if (v14)
  {
    v15 = v14;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      [VCPImageConverter convertImage:yuvFrame:];
    }
  }

  else
  {
    BaseAddress = CVPixelBufferGetBaseAddress(image);
    BytesPerRow = CVPixelBufferGetBytesPerRow(image);
    bzero(data, 12 * height * width);
    padY = self->_padY;
    if (padY + v13 >= 1)
    {
      v21 = 0;
      v22 = &data[2 * width * height];
      v23 = &data[width * height];
      v24 = 4 * width;
      do
      {
        if (v21 >= padY)
        {
          if (Width >= 1)
          {
            v25 = 0;
            padX = self->_padX;
            v27 = &v22[padX];
            v28 = &v23[padX];
            v29 = &data[padX];
            v30 = Width & 0x7FFFFFFF;
            do
            {
              LOBYTE(v19) = BaseAddress[(v25 * 4)];
              v31 = (*&v19 / 255.0 + -0.405999988) / 0.224999994;
              *&v31 = v31;
              v27[v25] = *&v31;
              LOBYTE(v31) = BaseAddress[(v25 * 4) + 1];
              v32 = (*&v31 / 255.0 + -0.456) / 0.224000007;
              *&v32 = v32;
              v28[v25] = *&v32;
              LOBYTE(v32) = BaseAddress[(v25 * 4) + 2];
              v19 = (*&v32 / 255.0 + -0.485000014) / 0.229000002;
              *&v19 = v19;
              v29[v25++] = *&v19;
              --v30;
            }

            while (v30);
          }

          BaseAddress += BytesPerRow;
        }

        ++v21;
        v22 = (v22 + v24);
        v23 = (v23 + v24);
        data = (data + v24);
      }

      while (v21 != padY + v13);
    }

    v15 = CVPixelBufferLock::Unlock(&v33);
    if (pixelBuffer && !v33 && CVPixelBufferUnlockBaseAddress(pixelBuffer, unlockFlags) && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      [VCPImageExposurePreAnalyzer analyzePixelBuffer:flags:results:cancel:];
    }
  }

  return v15;
}

- (int)createInput:(float *)input withBuffer:(__CVBuffer *)buffer cnnInputHeight:(int)height cnnInputWidth:(int)width box:(id)box
{
  v7 = *&width;
  v8 = *&height;
  v56 = *MEMORY[0x1E69E9840];
  boxCopy = box;
  if (input)
  {
    Width = CVPixelBufferGetWidth(buffer);
    Height = CVPixelBufferGetHeight(buffer);
    cf = 0;
    [boxCopy minX];
    v44 = v15;
    [boxCopy minY];
    v17 = v16;
    [boxCopy maxX];
    v19 = v18;
    [boxCopy minX];
    v21 = v20;
    [boxCopy maxY];
    v23 = v22;
    [boxCopy minY];
    v25 = v24;
    [boxCopy maxX];
    v27 = v26;
    [boxCopy minX];
    v29 = v28;
    [boxCopy maxY];
    v31 = v30;
    [boxCopy minY];
    v33 = (((v27 - v29) / (v31 - v32)) * Width) / Height;
    if (v33 <= (v7 / v8))
    {
      v36 = 0;
      v37 = (v33 * v8);
      v34 = vcvtd_n_f64_s32(self->_inputWidth - v37, 1uLL);
      v35 = v8;
    }

    else
    {
      v34 = 0;
      v35 = (v7 / v33);
      v36 = vcvtd_n_f64_s32(self->_inputHeight - v35, 1uLL);
      v37 = v7;
    }

    self->_padX = v34;
    self->_padY = v36;
    v39 = v17;
    v40 = (v19 - v21);
    if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
    {
      padX = self->_padX;
      padY = self->_padY;
      *buf = 67110144;
      v47 = v37;
      v48 = 1024;
      v49 = v35;
      v50 = 2048;
      v51 = v33;
      v52 = 1024;
      v53 = padX;
      v54 = 1024;
      v55 = padY;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "VCPCNNPersonKeypointsDetector - cropWidth = %d, cropHeight = %d, boxWHRatio = %f, _paxX = %d, _padY = %d", buf, 0x24u);
    }

    v57.origin.x = v44;
    v57.origin.y = v39;
    v57.size.width = v40;
    v57.size.height = (v23 - v25);
    v38 = Scaler::ScaleCropped(&self->_scaler, v57, buffer, &cf, v37, v35, 1111970369);
    if (!v38)
    {
      v38 = [(VCPCNNPersonKeypointsDetector *)self copyImage:cf toData:input cnnInputHeight:v8 cnnInputWidth:v7];
    }

    if (cf)
    {
      CFRelease(cf);
    }
  }

  else
  {
    v38 = -108;
  }

  return v38;
}

- (int)analyzeFrame:(__CVBuffer *)frame withBox:(id)box keypoints:(id)keypoints padX:(int *)x padY:(int *)y
{
  boxCopy = box;
  keypointsCopy = keypoints;
  CVPixelBufferGetWidth(frame);
  CVPixelBufferGetHeight(frame);
  v14 = objc_autoreleasePoolPush();
  v15 = [(VCPCNNPersonKeypointsDetector *)self createInput:self->_inputData withBuffer:frame cnnInputHeight:self->_inputHeight cnnInputWidth:self->_inputWidth box:boxCopy];
  if (!v15)
  {
    *x = self->_padX;
    *y = self->_padY;
    v15 = [(VCPCNNModelEspresso *)self->_modelEspresso espressoForward:self->_inputData];
    if (!v15)
    {
      v15 = [(VCPCNNPersonKeypointsDetector *)self parseKeypoints:keypointsCopy];
    }
  }

  objc_autoreleasePoolPop(v14);

  return v15;
}

- (int)parseKeypoints:(id)keypoints
{
  v37[3] = *MEMORY[0x1E69E9840];
  keypointsCopy = keypoints;
  modelEspresso = self->_modelEspresso;
  if (!modelEspresso)
  {
    v31 = 0;
    goto LABEL_7;
  }

  [(VCPCNNModelEspresso *)modelEspresso outputBlob];
  v5 = self->_modelEspresso;
  v31 = v36;
  if (!v5)
  {
LABEL_7:
    v6 = 0;
    goto LABEL_8;
  }

  [(VCPCNNModelEspresso *)v5 outputBlob];
  v6 = v35;
  v7 = self->_modelEspresso;
  if (!v7)
  {
LABEL_8:
    v10 = 0;
    v9 = 0;
    goto LABEL_9;
  }

  [(VCPCNNModelEspresso *)v7 outputBlob];
  v8 = self->_modelEspresso;
  v9 = v34;
  if (v8)
  {
    [(VCPCNNModelEspresso *)v8 outputBlob];
    v10 = v33;
  }

  else
  {
    v10 = 0;
  }

LABEL_9:
  v11 = -50;
  if (v6 && v9)
  {
    if (v31 >= 1)
    {
      v12 = 0;
      v13 = 0;
      v14 = (self->_inputWidth / v9);
      v15 = (self->_inputHeight / v6);
      do
      {
        if (v6 < 1)
        {
          v21 = 0.0;
          v18 = 1.1755e-38;
          v20 = 0.0;
          v17 = 0.0;
        }

        else
        {
          v16 = 0;
          v17 = 0.0;
          v18 = 1.1755e-38;
          v19 = v12;
          v20 = 0.0;
          v21 = 0.0;
          do
          {
            if (v9 >= 1)
            {
              for (i = 0; i != v9; ++i)
              {
                v23 = *(v10 + 4 * (v19 + i));
                if (v23 > 0.1)
                {
                  if (v17 <= v23)
                  {
                    v17 = *(v10 + 4 * (v19 + i));
                  }

                  *&v21 = *&v21 + (i * v23);
                  v20 = v20 + (v16 * v23);
                  v18 = v18 + v23;
                }
              }
            }

            ++v16;
            v19 += v9;
          }

          while (v16 != v6);
        }

        *&v21 = (*&v21 / v18) * v14;
        v24 = [MEMORY[0x1E696AD98] numberWithFloat:v21];
        v37[0] = v24;
        *&v25 = (v20 / v18) * v15;
        v26 = [MEMORY[0x1E696AD98] numberWithFloat:v25];
        v37[1] = v26;
        *&v27 = v17;
        v28 = [MEMORY[0x1E696AD98] numberWithFloat:v27];
        v37[2] = v28;
        v29 = [MEMORY[0x1E695DEC8] arrayWithObjects:v37 count:3];
        [keypointsCopy addObject:v29];

        ++v13;
        v12 += v6 * v9;
      }

      while (v13 != v31);
    }

    v11 = 0;
  }

  return v11;
}

- (id).cxx_construct
{
  *(self + 8) = 0;
  *(self + 18) = 0;
  return self;
}

@end