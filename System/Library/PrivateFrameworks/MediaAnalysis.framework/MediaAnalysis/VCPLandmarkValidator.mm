@interface VCPLandmarkValidator
- (VCPLandmarkValidator)initWithModelFile:(id)file paramFile:(__sFILE *)paramFile numTri:(unsigned __int8)tri triList:(char *)list angle:(float *)angle;
- (int)validateOneImage:(__CVBuffer *)image landmarks:(float *)landmarks numofLandmarks:(int)numofLandmarks score:(float *)score;
- (void)dealloc;
@end

@implementation VCPLandmarkValidator

- (VCPLandmarkValidator)initWithModelFile:(id)file paramFile:(__sFILE *)paramFile numTri:(unsigned __int8)tri triList:(char *)list angle:(float *)angle
{
  fileCopy = file;
  v9 = +[VCPCNNMetalContext supportGPU];
  if (+[VCPCNNMetalContext supportVectorForward])
  {
    v10 = 4;
  }

  else
  {
    v10 = 1;
  }

  if (v9)
  {
    v11 = 1;
  }

  else
  {
    v11 = v10;
  }

  v36.receiver = self;
  v36.super_class = VCPLandmarkValidator;
  v12 = [(VCPLandmarkValidator *)&v36 init];
  v13 = v12;
  if (v12)
  {
    v14 = [[VCPCNNModel alloc] initWithParameters:1 useGPU:v9];
    model = v12->_model;
    v12->_model = v14;

    v16 = v12->_model;
    if (v16)
    {
      getGPUContext = [(VCPCNNModel *)v16 getGPUContext];
      v18 = [VCPCNNData cnnDataWithPlane:1 height:66 width:66 context:getGPUContext];
      input = v12->_input;
      v12->_input = v18;

      [(VCPCNNData *)v12->_input allocBuffers:1];
      BYTE4(v32) = 1;
      LODWORD(v32) = 1;
      v20 = [VCPCNNConvBlock convBlockWithFilterSize:7 filterNum:10 chunk:v11 reLU:1 padding:0 groups:1 stride:v32 batchNorm:?];
      if ([(VCPCNNModel *)v12->_model add:v20])
      {
        v13 = 0;
      }

      else
      {
        v21 = [VCPCNNPoolingBlock poolingBlockWithPoolX:2 poolY:2 chunk:v11];
        if ([(VCPCNNModel *)v12->_model add:v21])
        {
          v13 = 0;
        }

        else
        {
          BYTE4(v33) = 1;
          LODWORD(v33) = 1;
          v22 = [VCPCNNConvBlock convBlockWithFilterSize:7 filterNum:10 chunk:v11 reLU:1 padding:0 groups:1 stride:v33 batchNorm:?];
          if ([(VCPCNNModel *)v12->_model add:v22])
          {
            v23 = v22;
            v13 = 0;
          }

          else
          {
            v35 = [VCPCNNPoolingBlock poolingBlockWithPoolX:2 poolY:2 chunk:v11];
            if ([(VCPCNNModel *)v12->_model add:v35]|| !v9 && (v24 = [[VCPCNNFlattenBlock alloc] initWithParameters:v10], v25 = [(VCPCNNModel *)v12->_model add:v24], v24, v25))
            {
              v23 = v22;
              v13 = 0;
            }

            else
            {
              v26 = [VCPCNNFullConnectionBlock fcBlockWithNumNeurons:50 NeuronType:1];
              if ([(VCPCNNModel *)v12->_model add:v26])
              {
                v23 = v22;
                v13 = 0;
              }

              else
              {
                v27 = [VCPCNNFullConnectionBlock fcBlockWithNumNeurons:2 NeuronType:0];
                if ([(VCPCNNModel *)v12->_model add:v27])
                {
                  v23 = v22;
                  v13 = 0;
                }

                else
                {
                  v34 = v26;
                  v28 = v12->_model;
                  v29 = [(VCPCNNData *)v12->_input size];
                  LODWORD(v28) = [(VCPCNNModel *)v28 prepareNetworkFromURL:fileCopy withInputSize:v29];

                  if (!v28)
                  {
                    operator new[]();
                  }

                  v23 = v22;
                  v13 = 0;
                  v26 = v34;
                }
              }
            }
          }
        }
      }
    }

    else
    {
      v13 = 0;
    }
  }

  v30 = v13;

  return v30;
}

- (void)dealloc
{
  transArray = self->_transArray;
  if (transArray)
  {
    MEMORY[0x1CCA95C10](transArray, 0x1000C8052888210);
  }

  meanLandmarkLoc = self->_meanLandmarkLoc;
  if (meanLandmarkLoc)
  {
    MEMORY[0x1CCA95C10](meanLandmarkLoc, 0x1000C8052888210);
  }

  triIndexMap = self->_triIndexMap;
  if (triIndexMap)
  {
    MEMORY[0x1CCA95C10](triIndexMap, 0x1000C8077774924);
  }

  triList = self->_triList;
  if (triList)
  {
    MEMORY[0x1CCA95C10](triList, 0x1000C8077774924);
  }

  orientation = self->_orientation;
  if (orientation)
  {
    MEMORY[0x1CCA95C10](orientation, 0x1000C8052888210);
  }

  v8.receiver = self;
  v8.super_class = VCPLandmarkValidator;
  [(VCPLandmarkValidator *)&v8 dealloc];
}

- (int)validateOneImage:(__CVBuffer *)image landmarks:(float *)landmarks numofLandmarks:(int)numofLandmarks score:(float *)score
{
  v72 = *MEMORY[0x1E69E9840];
  WidthOfPlane = CVPixelBufferGetWidthOfPlane(image, 0);
  HeightOfPlane = CVPixelBufferGetHeightOfPlane(image, 0);
  BytesPerRowOfPlane = CVPixelBufferGetBytesPerRowOfPlane(image, 0);
  if (self->_numTri)
  {
    v12 = 0;
    meanLandmarkLoc = self->_meanLandmarkLoc;
    triList = self->_triList;
    do
    {
      v15 = *triList++;
      v16 = 2 * v15;
      v17 = &v69[v12];
      *v17 = landmarks[v16];
      v18 = (2 * v15) | 1;
      v17[3] = landmarks[v18];
      v17[6] = 1.0;
      v19 = meanLandmarkLoc[v16] * 66.0;
      v20 = &buf[v12 * 4];
      *v20 = v19;
      *(v20 + 3) = meanLandmarkLoc[v18] * 66.0;
      *(v20 + 6) = 1065353216;
      ++v12;
    }

    while (v12 != 3);
    vcp_matrix_invert(buf);
  }

  v69[0] = 0.0;
  imageCopy = image;
  unlockFlags = 1;
  if (image)
  {
    v21 = CVPixelBufferLockBaseAddress(image, 1uLL);
    LODWORD(v69[0]) = v21;
    if (!v21 || (v22 = v21, os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR)) && (*buf = 3.8521e-34, v66 = imageCopy, v67 = 1024, v68 = v22, _os_log_error_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Failed to lock CVPixelBuffer (%p, %d)", buf, 0x12u), (v22 = LODWORD(v69[0])) == 0))
    {
      BaseAddressOfPlane = CVPixelBufferGetBaseAddressOfPlane(image, 0);
      data = [(VCPCNNData *)self->_input data];
      v25 = 0;
      v26 = 0.0;
      v27 = 255.0;
      v28 = 0;
      do
      {
        v29 = 0;
        v61 = v28;
        v62 = v25;
        v30 = v28;
        do
        {
          v31 = self->_triIndexMap[v25];
          if (v31)
          {
            *buf = v29;
            v66 = LODWORD(v30) | 0x3F80000000000000;
            matrix_multiplication(&self->_transArray[9 * (v31 - 1)], buf, &__C, 3, 3, 1);
            v35 = vcvtms_s32_f32(__C);
            v36 = vcvtms_s32_f32(v64);
            if (WidthOfPlane >= v35)
            {
              v37 = v35;
            }

            else
            {
              v37 = WidthOfPlane;
            }

            v38 = v37 & ~(v37 >> 31);
            if (v35 + 1 < WidthOfPlane)
            {
              v39 = v35 + 1;
            }

            else
            {
              v39 = WidthOfPlane;
            }

            v40 = v39 & ~(v39 >> 31);
            if (HeightOfPlane >= v36)
            {
              v41 = v36;
            }

            else
            {
              v41 = HeightOfPlane;
            }

            v42 = v41 & ~(v41 >> 31);
            if (v36 + 1 < HeightOfPlane)
            {
              v43 = v36 + 1;
            }

            else
            {
              v43 = HeightOfPlane;
            }

            v44 = __C - v38;
            v45 = v64 - v42;
            v46 = &BaseAddressOfPlane[BytesPerRowOfPlane * v42];
            v47 = &BaseAddressOfPlane[BytesPerRowOfPlane * (v43 & ~(v43 >> 31))];
            LOBYTE(v32) = v46[v38];
            LOBYTE(v33) = v46[v40];
            *&v48 = v44 * v33;
            v49 = *&v48 + (v32 * (1.0 - v44));
            LOBYTE(v48) = v47[v38];
            LOBYTE(v34) = v47[v40];
            v50 = (v45 * ((v44 * v34) + (v48 * (1.0 - v44)))) + (v49 * (1.0 - v45));
            v27 = fminf(v27, v50);
            v26 = fmaxf(v26, v50);
            data[v25] = v50;
          }

          else
          {
            data[v25] = 0.0;
          }

          ++v29;
          ++v25;
        }

        while (v29 != 66);
        v28 = v61 + 1;
        v25 = v62 + 66;
      }

      while (v61 != 65);
      v22 = CVPixelBufferLock::Unlock(v69);
      if (!v22)
      {
        v51 = 0;
        v52 = fmax((v26 - v27), 1.0);
        triIndexMap = self->_triIndexMap;
        do
        {
          for (i = 0; i != 66; ++i)
          {
            if (triIndexMap[i])
            {
              v55 = (data[i] - v27) / v52;
            }

            else
            {
              v55 = 0.0;
            }

            data[i] = v55;
          }

          ++v51;
          triIndexMap += 66;
          data += 66;
        }

        while (v51 != 66);
        v22 = [(VCPCNNModel *)self->_model forward:self->_input];
        if (!v22)
        {
          output = [(VCPCNNModel *)self->_model output];
          softmax = [output softmax];

          v22 = softmax;
          if (!softmax)
          {
            output2 = [(VCPCNNModel *)self->_model output];
            *score = *([output2 data] + 4);

            v22 = 0;
          }
        }
      }
    }
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      [VCPVideoCNNAnalyzer copyImage:withChannels:settling:];
    }

    v22 = -50;
    v69[0] = NAN;
  }

  if (imageCopy && !LODWORD(v69[0]) && CVPixelBufferUnlockBaseAddress(imageCopy, unlockFlags) && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    [VCPImageExposurePreAnalyzer analyzePixelBuffer:flags:results:cancel:];
  }

  return v22;
}

@end