@interface VCPContentAnalysis
+ (id)contentAnalysis;
- (VCPContentAnalysis)init;
- (int)blockContentDetection:(unint64_t *)a3;
- (int)detectPixelBuffer:(__CVBuffer *)a3 contentType:(unint64_t *)a4;
- (void)copyBlock:(char *)a3 withStride:(unint64_t)a4 toBlock:(float *)a5;
- (void)dealloc;
@end

@implementation VCPContentAnalysis

- (VCPContentAnalysis)init
{
  v3 = +[VCPCNNMetalContext supportGPU];
  if (v3)
  {
    v4 = 1;
  }

  else if (+[VCPCNNMetalContext supportVectorForward])
  {
    v4 = 4;
  }

  else
  {
    v4 = 1;
  }

  v32.receiver = self;
  v32.super_class = VCPContentAnalysis;
  v5 = [(VCPContentAnalysis *)&v32 init];
  if (!v5)
  {
    goto LABEL_34;
  }

  v6 = [[VCPCNNModel alloc] initWithParameters:1 useGPU:v3];
  model = v5->_model;
  v5->_model = v6;

  v8 = v5->_model;
  if (!v8)
  {
LABEL_35:
    v9 = v8;
    goto LABEL_36;
  }

  v9 = [VCPCNNConvBlock convBlockWithFilterSize:5 filterNum:16 chunk:v4 reLU:1 padding:0];
  if ([(VCPCNNModel *)v5->_model add:v9])
  {
    goto LABEL_19;
  }

  v10 = [VCPCNNPoolingBlock poolingBlockWithPoolX:2 poolY:2 chunk:v4];
  if ([(VCPCNNModel *)v5->_model add:v10])
  {
LABEL_18:

LABEL_19:
LABEL_20:
    v8 = 0;
    goto LABEL_35;
  }

  v11 = [VCPCNNConvBlock convBlockWithFilterSize:5 filterNum:32 chunk:v4 reLU:1 padding:0];
  if ([(VCPCNNModel *)v5->_model add:v11])
  {
LABEL_17:

    goto LABEL_18;
  }

  v12 = [VCPCNNPoolingBlock poolingBlockWithPoolX:2 poolY:2 chunk:v4];
  if ([(VCPCNNModel *)v5->_model add:v12])
  {
LABEL_16:

    goto LABEL_17;
  }

  v13 = [VCPCNNConvBlock convBlockWithFilterSize:5 filterNum:16 chunk:v4 reLU:1 padding:0];
  if ([(VCPCNNModel *)v5->_model add:v13])
  {
LABEL_15:

    goto LABEL_16;
  }

  v14 = [VCPCNNPoolingBlock poolingBlockWithPoolX:2 poolY:2 chunk:v4];
  if ([(VCPCNNModel *)v5->_model add:v14]|| !v3 && (v15 = [[VCPCNNFlattenBlock alloc] initWithParameters:v4], v16 = [(VCPCNNModel *)v5->_model add:v15], v15, v16))
  {

    goto LABEL_15;
  }

  v17 = [VCPCNNFullConnectionBlock fcBlockWithNumNeurons:64 NeuronType:1];
  if ([(VCPCNNModel *)v5->_model add:v17])
  {
    v18 = 0;
    v19 = 4;
  }

  else
  {
    v31 = [VCPCNNFullConnectionBlock fcBlockWithNumNeurons:2 NeuronType:1];
    if ([(VCPCNNModel *)v5->_model add:v31])
    {
      v18 = 0;
      v19 = 4;
    }

    else
    {
      v20 = [(VCPCNNModel *)v5->_model getGPUContext];
      v21 = [VCPCNNData cnnDataWithPlane:4 height:64 width:64 context:v20];
      input = v5->_input;
      v5->_input = v21;

      [(VCPCNNData *)v5->_input allocBuffers:1];
      v23 = [MEMORY[0x1E696AAE8] vcp_mediaAnalysisBundle];
      v24 = [v23 resourceURL];

      v29 = v24;
      v30 = [MEMORY[0x1E695DFF8] URLWithString:@"cnn_content.dat" relativeToURL:v24];
      v25 = v5->_model;
      v26 = [(VCPCNNData *)v5->_input size];
      LODWORD(v25) = [(VCPCNNModel *)v25 prepareNetworkFromURL:v30 withInputSize:v26];

      if (v25)
      {
        v18 = 0;
        v19 = 4;
      }

      else
      {
        v5->_previousContentType = 2;
        v5->_argbPixelBuffer = 0;
        v27 = VTPixelTransferSessionCreate(0, &v5->_argbTransferSession);
        v18 = v27 == 0;
        v19 = 4 * (v27 != 0);
      }
    }
  }

  if ((v19 | 4) == 4)
  {
    if (v18)
    {
LABEL_34:
      v8 = v5;
      goto LABEL_35;
    }

    goto LABEL_20;
  }

LABEL_36:

  return v9;
}

+ (id)contentAnalysis
{
  v2 = objc_alloc_init(objc_opt_class());

  return v2;
}

- (void)dealloc
{
  argbPixelBuffer = self->_argbPixelBuffer;
  if (argbPixelBuffer)
  {
    CFRelease(argbPixelBuffer);
  }

  argbTransferSession = self->_argbTransferSession;
  if (argbTransferSession)
  {
    CFRelease(argbTransferSession);
  }

  v5.receiver = self;
  v5.super_class = VCPContentAnalysis;
  [(VCPContentAnalysis *)&v5 dealloc];
}

- (void)copyBlock:(char *)a3 withStride:(unint64_t)a4 toBlock:(float *)a5
{
  for (i = 0; i != 64; ++i)
  {
    for (j = 0; j != 256; ++j)
    {
      LOBYTE(v5) = a3[j];
      v5 = (*&v5 / 255.0 + -0.444431007) / 0.339706987;
      *&v5 = v5;
      a5[j] = *&v5;
    }

    a3 += a4;
    a5 += 256;
  }
}

- (int)blockContentDetection:(unint64_t *)a3
{
  v45 = *MEMORY[0x1E69E9840];
  Width = CVPixelBufferGetWidth(self->_argbPixelBuffer);
  Height = CVPixelBufferGetHeight(self->_argbPixelBuffer);
  v40[0] = 0;
  v40[1] = ((2 * Width) & 0xFFFFFFFFFFFFFFFCLL) - 132;
  v40[2] = 4 * Width - 260;
  v39[0] = 0;
  v39[1] = (Height >> 1) - 33;
  v39[2] = Height - 65;
  unlockFlags = 0;
  v38 = 0;
  argbPixelBuffer = self->_argbPixelBuffer;
  v35 = 0;
  pixelBuffer = argbPixelBuffer;
  if (argbPixelBuffer)
  {
    v34 = a3;
    v8 = CVPixelBufferLockBaseAddress(argbPixelBuffer, 0);
    v35 = v8;
    if (!v8 || (v9 = v8, os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR)) && (*buf = 134218240, v42 = argbPixelBuffer, v43 = 1024, v44 = v9, _os_log_error_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Failed to lock CVPixelBuffer (%p, %d)", buf, 0x12u), (v9 = v35) == 0))
    {
      BaseAddress = CVPixelBufferGetBaseAddress(self->_argbPixelBuffer);
      BytesPerRow = CVPixelBufferGetBytesPerRow(self->_argbPixelBuffer);
      v12 = 0;
      v13 = 0;
      v14 = 0.0;
      v15 = 0.0;
      v33 = BaseAddress;
LABEL_6:
      v16 = 0;
      v17 = &BaseAddress[v39[v12] * BytesPerRow];
      while (1)
      {
        [(VCPContentAnalysis *)self copyBlock:&v17[v40[v16]] withStride:BytesPerRow toBlock:[(VCPCNNData *)self->_input data]];
        v9 = [(VCPCNNModel *)self->_model forward:self->_input];
        if (v9)
        {
          break;
        }

        v18 = [(VCPCNNModel *)self->_model output];
        v9 = [v18 softmax];

        if (v9)
        {
          break;
        }

        v19 = [(VCPCNNModel *)self->_model output];
        v20 = *[v19 data];
        v21 = [(VCPCNNModel *)self->_model output];
        v22 = *([v21 data] + 4);
        ++*(&v38 | (4 * (v20 <= v22)));

        v23 = [(VCPCNNModel *)self->_model output];
        v24 = *[v23 data];

        v25 = [(VCPCNNModel *)self->_model output];
        v26 = *([v25 data] + 4);

        v27 = [(VCPCNNModel *)self->_model output];
        [v27 data];

        v28 = [(VCPCNNModel *)self->_model output];
        if (*([v28 data] + 4) > 0.95)
        {
          ++v13;
        }

        ++v16;
        v14 = v14 + v24;
        v15 = v15 + v26;
        if (v16 == 3)
        {
          ++v12;
          BaseAddress = v33;
          if (v12 != 3)
          {
            goto LABEL_6;
          }

          v9 = CVPixelBufferLock::Unlock(&v35);
          if (!v9)
          {
            if (vabds_f32(v14, v15) <= 2.0)
            {
              goto LABEL_33;
            }

            v29 = v38 - HIDWORD(v38);
            if (v38 - HIDWORD(v38) < 0)
            {
              v29 = HIDWORD(v38) - v38;
            }

            if (v29 < 2)
            {
LABEL_33:
              previousContentType = self->_previousContentType;
            }

            else
            {
              v30 = v13 >= 4 || v14 <= v15;
              previousContentType = 1;
              if (v30)
              {
                previousContentType = 2;
              }
            }

            v9 = 0;
            *v34 = previousContentType;
            self->_previousContentType = previousContentType;
          }

          break;
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

    v9 = -50;
    v35 = -50;
  }

  if (pixelBuffer && !v35 && CVPixelBufferUnlockBaseAddress(pixelBuffer, unlockFlags) && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    [VCPImageExposurePreAnalyzer analyzePixelBuffer:flags:results:cancel:];
  }

  return v9;
}

- (int)detectPixelBuffer:(__CVBuffer *)a3 contentType:(unint64_t *)a4
{
  result = -50;
  if (!a3 || !a4)
  {
    return result;
  }

  Width = CVPixelBufferGetWidth(a3);
  Height = CVPixelBufferGetHeight(a3);
  if (Width >= Height)
  {
    v10 = Height;
  }

  else
  {
    v10 = Width;
  }

  if (v10 < 0xC0)
  {
    return -50;
  }

  v11 = fminf(v10 / 192.0, 4.0);
  v12 = (vcvtps_s32_f32(Width / v11) + 1) & 0xFFFFFFFE;
  v13 = (vcvtps_s32_f32(Height / v11) + 1) & 0xFFFFFFFE;
  p_argbPixelBuffer = &self->_argbPixelBuffer;
  argbPixelBuffer = self->_argbPixelBuffer;
  v16 = v12;
  if (!argbPixelBuffer)
  {
    goto LABEL_13;
  }

  if (CVPixelBufferGetWidth(argbPixelBuffer) != v12 || CVPixelBufferGetHeight(*p_argbPixelBuffer) != v13)
  {
    if (*p_argbPixelBuffer)
    {
      CFRelease(*p_argbPixelBuffer);
      *p_argbPixelBuffer = 0;
    }

LABEL_13:
    result = CVPixelBufferCreate(0, v16, v13, 0x20u, 0, &self->_argbPixelBuffer);
    if (result)
    {
      return result;
    }
  }

  result = VTPixelTransferSessionTransferImage(self->_argbTransferSession, a3, self->_argbPixelBuffer);
  if (!result)
  {

    return [(VCPContentAnalysis *)self blockContentDetection:a4];
  }

  return result;
}

@end