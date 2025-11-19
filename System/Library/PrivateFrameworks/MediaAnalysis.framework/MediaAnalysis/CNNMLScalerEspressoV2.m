@interface CNNMLScalerEspressoV2
- (CNNMLScalerEspressoV2)initWithConfig:(id)a3 modelIndex:(int64_t)a4 inputSize:(CGSize)a5 scalingFactor:(int)a6;
- (int)configInput:(int)a3;
- (int)copyOutput:(id)a3 pixelbuffer:(__CVBuffer *)a4;
- (int)inferenceWithPixelBuffer:(__CVBuffer *)a3 toDestinationPixelBuffer:(__CVBuffer *)a4;
- (int)prepareInput:(__CVBuffer *)a3 withChannels:(int)a4;
- (void)dealloc;
@end

@implementation CNNMLScalerEspressoV2

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = CNNMLScalerEspressoV2;
  [(CNNMLScalerEspressoV2 *)&v2 dealloc];
}

- (CNNMLScalerEspressoV2)initWithConfig:(id)a3 modelIndex:(int64_t)a4 inputSize:(CGSize)a5 scalingFactor:(int)a6
{
  height = a5.height;
  width = a5.width;
  v11 = a3;
  v26.receiver = self;
  v26.super_class = CNNMLScalerEspressoV2;
  v12 = [(CNNMLScalerEspressoV2 *)&v26 init];
  v13 = v12;
  if (v12)
  {
    v14 = [MEMORY[0x1E696AAE8] vcp_mediaAnalysisBundle];
    v15 = [v14 resourceURL];

    v12->_inputWidth = width;
    v12->_inputHeight = height;
    v12->_outputWidth = width * a6;
    v12->_outputHeight = height * a6;
    if (a4 != 1 || a6 != 4 && a6 != 2)
    {
      if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *v25 = 0;
        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "CNNMLScalerEspressoV2 model not supported!", v25, 2u);
      }

      goto LABEL_21;
    }

    v16 = objc_alloc_init(_MADObjCModelCatalogModel);
    v17 = [(_MADObjCModelCatalogModel *)v16 getModelURL:0];

    if (v17)
    {
      if (a6 == 2)
      {
        v18 = @"cnn_gp_mlscaler";
      }

      else
      {
        v18 = @"cnn_gp_mlscaler4x";
      }

      v19 = [MEMORY[0x1E695DFF8] URLWithString:v18 relativeToURL:v17];
      v20 = [[VCPCNNModelEspressoV2 alloc] initWithParameters:v19 outputNames:&unk_1F49BE848 inputNames:&unk_1F49BE860 functionName:v11 precompiled:0];
      modelEspressoV2 = v12->_modelEspressoV2;
      v12->_modelEspressoV2 = v20;

      if (v12->_modelEspressoV2)
      {
        v22 = [(CNNMLScalerEspressoV2 *)v12 configInput:4];

        if (!v22)
        {
          v13 = v12;
          goto LABEL_22;
        }

LABEL_21:
        v13 = 0;
        goto LABEL_22;
      }
    }

    else
    {
      if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *v25 = 0;
        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Cannot find MLScaler model from ModelCatalog", v25, 2u);
      }

      v19 = 0;
    }

    goto LABEL_21;
  }

LABEL_22:
  v23 = v13;

  return v23;
}

- (int)inferenceWithPixelBuffer:(__CVBuffer *)a3 toDestinationPixelBuffer:(__CVBuffer *)a4
{
  v7 = VCPSignPostLog();
  v8 = os_signpost_id_generate(v7);

  v9 = VCPSignPostLog();
  v10 = v9;
  if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v9))
  {
    LOWORD(v23) = 0;
    _os_signpost_emit_with_name_impl(&dword_1C9B70000, v10, OS_SIGNPOST_INTERVAL_BEGIN, v8, "VCPMADMLScalingInference", "", &v23, 2u);
  }

  v11 = [(CNNMLScalerEspressoV2 *)self prepareInput:a3 withChannels:4];
  if (!v11)
  {
    v12 = [(VCPCNNModelEspressoV2 *)self->_modelEspressoV2 inputsType];
    v13 = [v12 objectAtIndexedSubscript:0];
    v14 = [v13 unsignedIntValue];

    v11 = [(VCPCNNModelEspressoV2 *)self->_modelEspressoV2 espressoForward:[(VCPEspressoV2Data *)self->_inputData getData:v14]];
    if (!v11)
    {
      v17 = [(VCPCNNModelEspressoV2 *)self->_modelEspressoV2 outputsSize];
      if ([v17 count])
      {
        modelEspressoV2 = self->_modelEspressoV2;
        if (modelEspressoV2)
        {
          [(VCPCNNModelEspressoV2 *)modelEspressoV2 outputs];
          v20 = v23;
          v19 = v24;
          v26 = &v23;
          std::vector<VCPEspressoV2Data * {__strong}>::__destroy_vector::operator()[abi:ne200100](&v26);
          if (v19 != v20)
          {
            [(VCPCNNModelEspressoV2 *)self->_modelEspressoV2 outputs];
            v15 = [(CNNMLScalerEspressoV2 *)self copyOutput:*v23 pixelbuffer:a4];
            v26 = &v23;
            std::vector<VCPEspressoV2Data * {__strong}>::__destroy_vector::operator()[abi:ne200100](&v26);
            if (!v15)
            {
              v21 = VCPSignPostLog();
              v22 = v21;
              if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v21))
              {
                LOWORD(v23) = 0;
                _os_signpost_emit_with_name_impl(&dword_1C9B70000, v22, OS_SIGNPOST_INTERVAL_END, v8, "VCPMADMLScalingInference", "", &v23, 2u);
              }

              v15 = 0;
            }

            goto LABEL_18;
          }
        }

        else
        {
          v23 = 0;
          v24 = 0;
          v25 = 0;
          v26 = &v23;
          std::vector<VCPEspressoV2Data * {__strong}>::__destroy_vector::operator()[abi:ne200100](&v26);
        }
      }

      v15 = 1;
LABEL_18:

      return v15;
    }
  }

  return v11;
}

- (int)configInput:(int)a3
{
  v5 = [(VCPCNNModelEspressoV2 *)self->_modelEspressoV2 inputsSize];
  v6 = [v5 objectAtIndexedSubscript:0];
  v7 = [v6 unsignedIntValue];

  if (v7 != self->_inputHeight * a3 * self->_inputWidth)
  {
    return -50;
  }

  v8 = [(VCPCNNModelEspressoV2 *)self->_modelEspressoV2 inputsType];
  v9 = [v8 objectAtIndexedSubscript:0];
  v10 = [v9 unsignedIntValue];

  v11 = [[VCPEspressoV2Data alloc] initWithTensorType:v10 size:v7];
  inputData = self->_inputData;
  self->_inputData = v11;

  if (self->_inputData)
  {
    return 0;
  }

  else
  {
    return -108;
  }
}

- (int)prepareInput:(__CVBuffer *)a3 withChannels:(int)a4
{
  v50 = *MEMORY[0x1E69E9840];
  v7 = VCPSignPostLog();
  v8 = os_signpost_id_generate(v7);

  v9 = VCPSignPostLog();
  v10 = v9;
  if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v9))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1C9B70000, v10, OS_SIGNPOST_INTERVAL_BEGIN, v8, "VCPMADMLScalingPrepareInput", "", buf, 2u);
  }

  Width = CVPixelBufferGetWidth(a3);
  Height = CVPixelBufferGetHeight(a3);
  if (a4 != 4)
  {
    return -50;
  }

  inputWidth = self->_inputWidth;
  inputHeight = self->_inputHeight;
  pixelBuffer = a3;
  unlockFlags = 1;
  if (a3)
  {
    v14 = Height;
    v15 = CVPixelBufferLockBaseAddress(a3, 1uLL);
    *buf = v15;
    if (!v15 || os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR) && (*v46 = 134218240, v47 = pixelBuffer, v48 = 1024, v49 = v15, _os_log_error_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Failed to lock CVPixelBuffer (%p, %d)", v46, 0x12u), (v15 = *buf) == 0))
    {
      v34 = v8 - 1;
      v35 = v8;
      BaseAddress = CVPixelBufferGetBaseAddress(a3);
      BytesPerRow = CVPixelBufferGetBytesPerRow(a3);
      if (v14 >= 1)
      {
        v19 = 0;
        v41 = inputWidth * inputHeight;
        v42 = 0;
        v40 = 2 * inputWidth * inputHeight;
        v20 = 3 * inputWidth * inputHeight;
        v36 = v14 & 0x7FFFFFFF;
        v37 = BytesPerRow;
        do
        {
          v39 = v19;
          if (Width >= 1)
          {
            v21 = 0;
            v23 = v41;
            v22 = v42;
            v24 = v40;
            v25 = v20;
            do
            {
              LOBYTE(v18) = BaseAddress[v21 + 2];
              *&v18 = LODWORD(v18) / 255.0;
              [(VCPEspressoV2Data *)self->_inputData setValueFP:v22 atIndex:v18, v34, v35];
              LOBYTE(v26) = BaseAddress[v21 + 1];
              *&v27 = v26 / 255.0;
              [(VCPEspressoV2Data *)self->_inputData setValueFP:v23 atIndex:v27];
              LOBYTE(v28) = BaseAddress[v21];
              *&v29 = v28 / 255.0;
              [(VCPEspressoV2Data *)self->_inputData setValueFP:v24 atIndex:v29];
              LODWORD(v30) = 1.0;
              [(VCPEspressoV2Data *)self->_inputData setValueFP:v25 atIndex:v30];
              v21 += 4;
              ++v25;
              ++v24;
              ++v23;
              ++v22;
            }

            while (4 * Width != v21);
          }

          BaseAddress += v37;
          v19 = v39 + 1;
          v20 += Width;
          v40 += Width;
          v41 += Width;
          v42 += Width;
        }

        while (v39 + 1 != v36);
      }

      v15 = CVPixelBufferLock::Unlock(buf);
      if (!v15)
      {
        v31 = VCPSignPostLog();
        v32 = v31;
        if (v34 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v31))
        {
          *v46 = 0;
          _os_signpost_emit_with_name_impl(&dword_1C9B70000, v32, OS_SIGNPOST_INTERVAL_END, v35, "VCPMADMLScalingPrepareInput", "", v46, 2u);
        }

        v15 = 0;
      }
    }
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      [VCPVideoCNNAnalyzer copyImage:withChannels:settling:];
    }

    v15 = -50;
    *buf = -50;
  }

  if (pixelBuffer && !*buf && CVPixelBufferUnlockBaseAddress(pixelBuffer, unlockFlags) && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    [VCPVideoCNNAnalyzer copyImage:withChannels:settling:];
  }

  return v15;
}

- (int)copyOutput:(id)a3 pixelbuffer:(__CVBuffer *)a4
{
  v6 = a3;
  v7 = VCPSignPostLog();
  v8 = os_signpost_id_generate(v7);

  v9 = VCPSignPostLog();
  v10 = v9;
  if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v9))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1C9B70000, v10, OS_SIGNPOST_INTERVAL_BEGIN, v8, "VCPMADMLScalingCopyOutput", "", buf, 2u);
  }

  Width = CVPixelBufferGetWidth(a4);
  Height = CVPixelBufferGetHeight(a4);
  outputWidth = self->_outputWidth;
  outputHeight = self->_outputHeight;
  pixelBuffer = a4;
  unlockFlags = 1;
  if (a4)
  {
    v15 = Height;
    v16 = CVPixelBufferLockBaseAddress(a4, 1uLL);
    *buf = v16;
    if (v16)
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        [VCPImageConverter convertImage:yuvFrame:];
      }
    }

    else
    {
      BaseAddress = CVPixelBufferGetBaseAddress(a4);
      BytesPerRow = CVPixelBufferGetBytesPerRow(a4);
      v19 = [v6 getData:2];
      if (v15 >= 1)
      {
        v20 = 0;
        v21 = v19 + 4 * outputWidth * outputHeight;
        v22 = v19 + 8 * outputWidth * outputHeight;
        v23 = v19 + 12 * outputWidth * outputHeight;
        v24 = 4 * Width;
        do
        {
          if (Width >= 1)
          {
            v25 = 0;
            do
            {
              BaseAddress[v25 + 2] = (*(v19 + v25) * 255.0);
              BaseAddress[v25 + 1] = (*(v21 + v25) * 255.0);
              BaseAddress[v25] = (*(v22 + v25) * 255.0);
              BaseAddress[v25 + 3] = (*(v23 + v25) * 255.0);
              v25 += 4;
            }

            while (v24 != v25);
          }

          BaseAddress += BytesPerRow;
          ++v20;
          v19 += v24;
          v21 += v24;
          v22 += v24;
          v23 += v24;
        }

        while (v20 != (v15 & 0x7FFFFFFF));
      }

      v16 = CVPixelBufferLock::Unlock(buf);
      if (!v16)
      {
        v26 = VCPSignPostLog();
        v27 = v26;
        if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v26))
        {
          *v29 = 0;
          _os_signpost_emit_with_name_impl(&dword_1C9B70000, v27, OS_SIGNPOST_INTERVAL_END, v8, "VCPMADMLScalingCopyOutput", "", v29, 2u);
        }

        v16 = 0;
      }
    }
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      [VCPVideoCNNAnalyzer copyImage:withChannels:settling:];
    }

    v16 = -50;
    *buf = -50;
  }

  if (pixelBuffer && !*buf && CVPixelBufferUnlockBaseAddress(pixelBuffer, unlockFlags) && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    [VCPVideoCNNAnalyzer copyImage:withChannels:settling:];
  }

  return v16;
}

@end