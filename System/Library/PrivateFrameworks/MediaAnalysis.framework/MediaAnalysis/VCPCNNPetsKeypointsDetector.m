@interface VCPCNNPetsKeypointsDetector
- (VCPCNNPetsKeypointsDetector)initWithForceCPU:(BOOL)a3 sharedModel:(BOOL)a4;
- (id).cxx_construct;
- (int)analyzeFrame:(__CVBuffer *)a3 withBox:(id)a4 keypoints:(id)a5;
- (int)copyImage:(__CVBuffer *)a3 toData:(float *)a4;
- (int)createInput:(float *)a3 withBuffer:(__CVBuffer *)a4 cnnInputHeight:(int)a5 cnnInputWidth:(int)a6 box:(id)a7;
- (int)parseHeatmap2Keypoints:(id)a3;
- (void)dealloc;
@end

@implementation VCPCNNPetsKeypointsDetector

- (VCPCNNPetsKeypointsDetector)initWithForceCPU:(BOOL)a3 sharedModel:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  v36[2] = *MEMORY[0x1E69E9840];
  v34.receiver = self;
  v34.super_class = VCPCNNPetsKeypointsDetector;
  v6 = [(VCPCNNPetsKeypointsDetector *)&v34 init];
  if (v6)
  {
    v7 = [MEMORY[0x1E696AAE8] vcp_mediaAnalysisBundle];
    v8 = [v7 resourceURL];

    v9 = [MEMORY[0x1E695DFF8] URLWithString:@"cnn_pet_pose.espresso.net" relativeToURL:v8];
    v10 = [VCPCNNModelEspresso alloc];
    v35[0] = @"forceCPU";
    v11 = [MEMORY[0x1E696AD98] numberWithBool:v5];
    v36[0] = v11;
    v35[1] = @"sharedContext";
    v12 = [MEMORY[0x1E696AD98] numberWithBool:v4];
    v36[1] = v12;
    v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v36 forKeys:v35 count:2];
    v14 = [(VCPCNNModelEspresso *)v10 initWithParameters:v9 inputNames:0 outputNames:0 properties:v13];
    modelEspresso = v6->_modelEspresso;
    v6->_modelEspresso = v14;

    v16 = v6->_modelEspresso;
    if (!v16 || [(VCPCNNModelEspresso *)v16 prepareModelWithConfig:&stru_1F496CB30])
    {
      v17 = 0;
LABEL_23:

      goto LABEL_24;
    }

    v18 = v6->_modelEspresso;
    if (v18 && ([(VCPCNNModelEspresso *)v18 inputBlob], (v19 = v6->_modelEspresso) != 0))
    {
      [(VCPCNNModelEspresso *)v19 inputBlob];
      v20 = v6->_modelEspresso;
      v21 = v31 * v33;
      if (v20)
      {
        [(VCPCNNModelEspresso *)v20 inputBlob];
        v22 = v30;
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
          v6->_inputWidth = v32;
          if (v26)
          {
            [(VCPCNNModelEspresso *)v26 inputBlob];
            v27 = v33;
          }

          else
          {
            v27 = 0;
          }
        }

        else
        {
          v27 = 0;
          v6->_inputWidth = 0;
        }

        v6->_inputHeight = v27;
        if (v6->_inputData)
        {
          v17 = v6;
        }

        else
        {
          v17 = 0;
        }

        goto LABEL_23;
      }
    }

    else
    {
      v21 = 0;
    }

    v22 = 0;
    goto LABEL_12;
  }

  v17 = 0;
LABEL_24:
  v28 = v17;

  return v28;
}

- (void)dealloc
{
  inputData = self->_inputData;
  if (inputData)
  {
    MEMORY[0x1CCA95C10](inputData, 0x1000C8052888210);
  }

  v4.receiver = self;
  v4.super_class = VCPCNNPetsKeypointsDetector;
  [(VCPCNNPetsKeypointsDetector *)&v4 dealloc];
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
            LOBYTE(v14) = BaseAddress[(v19 * 4)];
            v21 = (*&v14 / 255.0 + -0.485000014) / 0.229000002;
            *&v21 = v21;
            v16[v19] = *&v21;
            LOBYTE(v21) = BaseAddress[(v19 * 4) + 1];
            v22 = (*&v21 / 255.0 + -0.456) / 0.224000007;
            *&v22 = v22;
            v17[v19] = *&v22;
            LOBYTE(v22) = BaseAddress[(v19 * 4) + 2];
            v14 = (*&v22 / 255.0 + -0.405999988) / 0.224999994;
            *&v14 = v14;
            a4[v19++] = *&v14;
            --v20;
          }

          while (v20);
        }

        BaseAddress += BytesPerRow;
        ++v15;
        a4 = (a4 + v18);
        v17 = (v17 + v18);
        v16 = (v16 + v18);
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

- (int)createInput:(float *)a3 withBuffer:(__CVBuffer *)a4 cnnInputHeight:(int)a5 cnnInputWidth:(int)a6 box:(id)a7
{
  v7 = *&a6;
  v8 = *&a5;
  v12 = a7;
  v13 = v12;
  if (a3)
  {
    cf = 0;
    [v12 minX];
    v15 = v14;
    [v13 minY];
    v17 = v16;
    [v13 maxX];
    v19 = v18;
    [v13 minX];
    v21 = v20;
    [v13 maxY];
    v23 = v22;
    [v13 minY];
    v28.origin.y = v17;
    v28.size.width = (v19 - v21);
    v28.size.height = (v23 - v24);
    v28.origin.x = v15;
    v25 = Scaler::ScaleCropped(&self->_scaler, v28, a4, &cf, v7, v8, 1111970369);
    if (!v25)
    {
      v25 = [(VCPCNNPetsKeypointsDetector *)self copyImage:cf toData:a3];
    }

    if (cf)
    {
      CFRelease(cf);
    }
  }

  else
  {
    v25 = -108;
  }

  return v25;
}

- (int)parseHeatmap2Keypoints:(id)a3
{
  v39[3] = *MEMORY[0x1E69E9840];
  v34 = a3;
  modelEspresso = self->_modelEspresso;
  if (!modelEspresso)
  {
    v33 = 0;
    goto LABEL_8;
  }

  [(VCPCNNModelEspresso *)modelEspresso outputBlob];
  v5 = self->_modelEspresso;
  v33 = v38;
  if (!v5)
  {
LABEL_8:
    v6 = 0;
LABEL_9:
    v10 = 0;
    v9 = 0;
    if (!v6)
    {
      goto LABEL_31;
    }

    goto LABEL_10;
  }

  [(VCPCNNModelEspresso *)v5 outputBlob];
  v6 = v37;
  v7 = self->_modelEspresso;
  if (!v7)
  {
    goto LABEL_9;
  }

  [(VCPCNNModelEspresso *)v7 outputBlob];
  v8 = self->_modelEspresso;
  v9 = v36;
  if (v8)
  {
    [(VCPCNNModelEspresso *)v8 outputBlob];
    v10 = *buf;
    if (!v37)
    {
LABEL_31:
      if (MediaAnalysisLogLevel() < 3 || !os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_35;
      }

      *buf = 0;
      v30 = MEMORY[0x1E69E9C10];
      v31 = "Wrong outHeight in parseHeatmap2Keypoints";
LABEL_34:
      _os_log_impl(&dword_1C9B70000, v30, OS_LOG_TYPE_ERROR, v31, buf, 2u);
LABEL_35:
      v29 = -50;
      goto LABEL_36;
    }
  }

  else
  {
    v10 = 0;
    if (!v37)
    {
      goto LABEL_31;
    }
  }

LABEL_10:
  if (!v9)
  {
    if (MediaAnalysisLogLevel() < 3 || !os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_35;
    }

    *buf = 0;
    v30 = MEMORY[0x1E69E9C10];
    v31 = "Wrong outWidth in parseHeatmap2Keypoints";
    goto LABEL_34;
  }

  if (v33 >= 1)
  {
    v11 = 0;
    v12 = 0;
    v13 = (self->_inputWidth / v9);
    v14 = (self->_inputHeight / v6);
    do
    {
      if (v6 < 1)
      {
        v20 = 0.0;
        v17 = 1.1755e-38;
        v19 = 0.0;
        v16 = 0.0;
      }

      else
      {
        v15 = 0;
        v16 = 0.0;
        v17 = 1.1755e-38;
        v18 = v11;
        v19 = 0.0;
        v20 = 0.0;
        do
        {
          if (v9 >= 1)
          {
            for (i = 0; i != v9; ++i)
            {
              v22 = *(v10 + 4 * (v18 + i));
              if (v22 > 0.1)
              {
                if (v16 <= v22)
                {
                  v16 = *(v10 + 4 * (v18 + i));
                }

                *&v20 = *&v20 + (i * v22);
                v19 = v19 + (v15 * v22);
                v17 = v17 + v22;
              }
            }
          }

          ++v15;
          v18 += v9;
        }

        while (v15 != v6);
      }

      *&v20 = (*&v20 / v17) * v13;
      v23 = [MEMORY[0x1E696AD98] numberWithFloat:v20];
      v39[0] = v23;
      *&v24 = (v19 / v17) * v14;
      v25 = [MEMORY[0x1E696AD98] numberWithFloat:v24];
      v39[1] = v25;
      *&v26 = v16;
      v27 = [MEMORY[0x1E696AD98] numberWithFloat:v26];
      v39[2] = v27;
      v28 = [MEMORY[0x1E695DEC8] arrayWithObjects:v39 count:3];
      [v34 addObject:v28];

      ++v12;
      v11 += v6 * v9;
    }

    while (v12 != v33);
  }

  v29 = 0;
LABEL_36:

  return v29;
}

- (int)analyzeFrame:(__CVBuffer *)a3 withBox:(id)a4 keypoints:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = objc_autoreleasePoolPush();
  Width = CVPixelBufferGetWidth(a3);
  Height = CVPixelBufferGetHeight(a3);
  if (Height >= Width)
  {
    v13 = Width;
  }

  else
  {
    v13 = Height;
  }

  if (v13 >= 64)
  {
    v14 = [(VCPCNNPetsKeypointsDetector *)self createInput:self->_inputData withBuffer:a3 cnnInputHeight:self->_inputHeight cnnInputWidth:self->_inputWidth box:v8];
    if (!v14)
    {
      v14 = [(VCPCNNModelEspresso *)self->_modelEspresso espressoForward:self->_inputData];
      if (!v14)
      {
        v14 = [(VCPCNNPetsKeypointsDetector *)self parseHeatmap2Keypoints:v9];
      }
    }
  }

  else
  {
    v14 = 0;
  }

  objc_autoreleasePoolPop(v10);

  return v14;
}

- (id).cxx_construct
{
  *(self + 6) = 0;
  *(self + 14) = 0;
  return self;
}

@end