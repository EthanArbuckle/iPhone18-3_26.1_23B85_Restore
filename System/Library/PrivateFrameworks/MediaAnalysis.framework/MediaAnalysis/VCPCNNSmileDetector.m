@interface VCPCNNSmileDetector
+ (id)detector;
- (int)detectSmileForFace:(CGRect)a3 inBuffer:(__CVBuffer *)a4 smile:(BOOL *)a5;
@end

@implementation VCPCNNSmileDetector

+ (id)detector
{
  {
    +[VCPCNNSmileDetector detector]::analyzerClass = objc_opt_class();
  }

  if (+[VCPCNNSmileDetector detector]::once != -1)
  {
    +[VCPCNNSmileDetector detector];
  }

  v2 = objc_alloc_init(+[VCPCNNSmileDetector detector]::analyzerClass);

  return v2;
}

uint64_t __31__VCPCNNSmileDetector_detector__block_invoke()
{
  result = DeviceHasANE();
  if (result)
  {
    result = objc_opt_class();
    +[VCPCNNSmileDetector detector]::analyzerClass = result;
  }

  return result;
}

- (int)detectSmileForFace:(CGRect)a3 inBuffer:(__CVBuffer *)a4 smile:(BOOL *)a5
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v38 = 0.0;
  v12 = CVPixelBufferGetWidth(a4);
  v13 = CVPixelBufferGetHeight(a4);
  v14 = (v12 - 1);
  v15 = x;
  if (v15 < v14)
  {
    v14 = x;
  }

  if (v15 <= 0.0)
  {
    v16 = 0.0;
  }

  else
  {
    v16 = v14;
  }

  v17 = (v13 - 1);
  v18 = y;
  if (v18 < v17)
  {
    v17 = y;
  }

  if (v18 <= 0.0)
  {
    v19 = 0.0;
  }

  else
  {
    v19 = v17;
  }

  v20 = width;
  if ((v12 - v16) > v20)
  {
    v21 = v20;
  }

  else
  {
    v21 = v12 - v16;
  }

  v22 = height;
  if ((v13 - v19) > v22)
  {
    v23 = v22;
  }

  else
  {
    v23 = v13 - v19;
  }

  pixelBuffer = a4;
  unlockFlags = 1;
  if (a4)
  {
    v24 = CVPixelBufferLockBaseAddress(a4, 1uLL);
    v35 = v24;
    if (v24)
    {
      v25 = v24;
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        [VCPImageConverter convertImage:yuvFrame:];
      }
    }

    else
    {
      BytesPerRowOfPlane = CVPixelBufferGetBytesPerRowOfPlane(a4, 0);
      BaseAddressOfPlane = CVPixelBufferGetBaseAddressOfPlane(a4, 0);
      v28 = [(VCPCNNSmileDetector *)self getInputBuffer];
      v29 = 0;
      v30 = v21 / 40.0;
      v31 = v23 / 40.0;
      HIDWORD(v32) = 0;
      if (v20 <= 0.0)
      {
        v30 = 0.0;
      }

      if (v22 <= 0.0)
      {
        v31 = 0.0;
      }

      do
      {
        for (i = 0; i != 40; ++i)
        {
          *&v32 = v30 * i;
          LOBYTE(v32) = BaseAddressOfPlane[BytesPerRowOfPlane * v19 + v16 + BytesPerRowOfPlane * (v31 * v29) + *&v32];
          v32 = (*&v32 / 255.0 + -0.574000001) / 0.166999996;
          *&v32 = v32;
          v28[i] = *&v32;
        }

        ++v29;
        v28 += 40;
      }

      while (v29 != 40);
      v25 = CVPixelBufferLock::Unlock(&v35);
      if (!v25)
      {
        v25 = [(VCPCNNSmileDetector *)self computeSmileScore:&v38];
        if (!v25)
        {
          *a5 = v38 > 0.5;
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

    v25 = -50;
    v35 = -50;
  }

  if (pixelBuffer && !v35 && CVPixelBufferUnlockBaseAddress(pixelBuffer, unlockFlags) && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    [VCPImageExposurePreAnalyzer analyzePixelBuffer:flags:results:cancel:];
  }

  return v25;
}

@end