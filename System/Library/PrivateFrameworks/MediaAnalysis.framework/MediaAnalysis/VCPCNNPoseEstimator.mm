@interface VCPCNNPoseEstimator
+ (id)estimator;
- (int)detectPoseForFace:(CGRect)face inBuffer:(__CVBuffer *)buffer yaw:(int64_t *)yaw;
@end

@implementation VCPCNNPoseEstimator

+ (id)estimator
{
  {
    +[VCPCNNPoseEstimator estimator]::analyzerClass = objc_opt_class();
  }

  if (+[VCPCNNPoseEstimator estimator]::once != -1)
  {
    +[VCPCNNPoseEstimator estimator];
  }

  v2 = objc_alloc_init(+[VCPCNNPoseEstimator estimator]::analyzerClass);

  return v2;
}

uint64_t __32__VCPCNNPoseEstimator_estimator__block_invoke()
{
  result = DeviceHasANE();
  if (result)
  {
    result = objc_opt_class();
    +[VCPCNNPoseEstimator estimator]::analyzerClass = result;
  }

  return result;
}

- (int)detectPoseForFace:(CGRect)face inBuffer:(__CVBuffer *)buffer yaw:(int64_t *)yaw
{
  height = face.size.height;
  width = face.size.width;
  y = face.origin.y;
  x = face.origin.x;
  v44 = *MEMORY[0x1E69E9840];
  v12 = CVPixelBufferGetWidth(buffer);
  v13 = CVPixelBufferGetHeight(buffer);
  v14 = (v12 - 1);
  v15 = x;
  if (v15 < v14)
  {
    v14 = x;
  }

  v16 = (v13 - 1);
  if (v15 <= 0.0)
  {
    v17 = 0.0;
  }

  else
  {
    v17 = v14;
  }

  v18 = y;
  if (v18 < v16)
  {
    v16 = y;
  }

  if (v18 <= 0.0)
  {
    v19 = 0.0;
  }

  else
  {
    v19 = v16;
  }

  v20 = width;
  if ((v12 - v17) > v20)
  {
    v21 = v20;
  }

  else
  {
    v21 = v12 - v17;
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

  v42[0] = 0;
  v42[1] = 0;
  v43 = 0;
  pixelBuffer = buffer;
  unlockFlags = 1;
  if (buffer)
  {
    v24 = CVPixelBufferLockBaseAddress(buffer, 1uLL);
    v39 = v24;
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
      BytesPerRowOfPlane = CVPixelBufferGetBytesPerRowOfPlane(buffer, 0);
      BaseAddressOfPlane = CVPixelBufferGetBaseAddressOfPlane(buffer, 0);
      getInputBuffer = [(VCPCNNPoseEstimator *)self getInputBuffer];
      v29 = 0;
      if (v20 <= 0.0)
      {
        v30 = 0.0;
      }

      else
      {
        v30 = v21 / 40.0;
      }

      if (v22 <= 0.0)
      {
        v31 = 0.0;
      }

      else
      {
        v31 = v23 / 40.0;
      }

      do
      {
        for (i = 0; i != 40; ++i)
        {
          *&v33 = v30 * i;
          LOBYTE(v33) = BaseAddressOfPlane[BytesPerRowOfPlane * v19 + v17 + BytesPerRowOfPlane * (v31 * v29) + *&v33];
          getInputBuffer[i] = v33;
        }

        ++v29;
        getInputBuffer += 40;
      }

      while (v29 != 40);
      v25 = CVPixelBufferLock::Unlock(&v39);
      if (!v25)
      {
        v25 = [(VCPCNNPoseEstimator *)self computePoseScore:v42];
        if (!v25)
        {
          v34 = 0;
          v35 = *v42;
          for (j = 1; j != 5; ++j)
          {
            if (*(v42 + j) > v35)
            {
              v34 = j;
              v35 = *(v42 + j);
            }
          }

          v25 = 0;
          *yaw = v34;
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
    v39 = -50;
  }

  if (pixelBuffer)
  {
    v37 = v39 == 0;
  }

  else
  {
    v37 = 0;
  }

  if (v37 && CVPixelBufferUnlockBaseAddress(pixelBuffer, unlockFlags) && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    [VCPImageExposurePreAnalyzer analyzePixelBuffer:flags:results:cancel:];
  }

  return v25;
}

@end