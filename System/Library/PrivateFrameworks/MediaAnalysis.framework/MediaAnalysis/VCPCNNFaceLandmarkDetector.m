@interface VCPCNNFaceLandmarkDetector
+ (id)detector;
- (int)analyzeFrame:(__CVBuffer *)a3 withFaceBounds:(CGRect)a4;
@end

@implementation VCPCNNFaceLandmarkDetector

+ (id)detector
{
  {
    +[VCPCNNFaceLandmarkDetector detector]::analyzerClass = objc_opt_class();
  }

  if (+[VCPCNNFaceLandmarkDetector detector]::once != -1)
  {
    +[VCPCNNFaceLandmarkDetector detector];
  }

  v2 = objc_alloc_init(+[VCPCNNFaceLandmarkDetector detector]::analyzerClass);

  return v2;
}

uint64_t __38__VCPCNNFaceLandmarkDetector_detector__block_invoke()
{
  result = DeviceHasANE();
  if (result)
  {
    result = objc_opt_class();
    +[VCPCNNFaceLandmarkDetector detector]::analyzerClass = result;
  }

  return result;
}

- (int)analyzeFrame:(__CVBuffer *)a3 withFaceBounds:(CGRect)a4
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v64 = *MEMORY[0x1E69E9840];
  [(NSMutableArray *)self->_landmarks removeAllObjects];
  v10 = CVPixelBufferGetWidth(a3);
  v11 = CVPixelBufferGetHeight(a3);
  v12 = (v10 - 1);
  v52 = width;
  v53 = x;
  v13 = x;
  if (v13 < v12)
  {
    v12 = x;
  }

  if (v13 <= 0.0)
  {
    v14 = 0.0;
  }

  else
  {
    v14 = v12;
  }

  v15 = (v11 - 1);
  v50 = y;
  v51 = height;
  v16 = y;
  if (v16 < v15)
  {
    v15 = y;
  }

  if (v16 <= 0.0)
  {
    v17 = 0.0;
  }

  else
  {
    v17 = v15;
  }

  v18 = v10;
  v19 = width;
  if ((v10 - v14) > v19)
  {
    v20 = width;
  }

  else
  {
    v20 = v10 - v14;
  }

  v21 = v11;
  v22 = height;
  v59 = 0;
  memset(&v58[1], 0, 32);
  if ((v11 - v17) > v22)
  {
    v23 = height;
  }

  else
  {
    v23 = v11 - v17;
  }

  v58[0] = 0uLL;
  v54 = 0;
  pixelBuffer = a3;
  unlockFlags = 1;
  if (a3)
  {
    v24 = CVPixelBufferLockBaseAddress(a3, 1uLL);
    v54 = v24;
    if (!v24 || (v25 = v24, os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR)) && (*buf = 134218240, v61 = a3, v62 = 1024, v63 = v25, _os_log_error_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Failed to lock CVPixelBuffer (%p, %d)", buf, 0x12u), (v25 = v54) == 0))
    {
      BytesPerRowOfPlane = CVPixelBufferGetBytesPerRowOfPlane(a3, 0);
      BaseAddressOfPlane = CVPixelBufferGetBaseAddressOfPlane(a3, 0);
      v28 = [(VCPCNNFaceLandmarkDetector *)self getInputBuffer];
      v29 = 0;
      v30 = v19 <= 0.0 ? 0.0 : v20 / 40.0;
      v31 = v22 <= 0.0 ? 0.0 : v23 / 40.0;
      do
      {
        for (i = 0; i != 40; ++i)
        {
          *&v33 = v30 * i;
          LOBYTE(v33) = BaseAddressOfPlane[BytesPerRowOfPlane * v17 + v14 + BytesPerRowOfPlane * (v31 * v29) + *&v33];
          v28[i] = v33;
        }

        ++v29;
        v28 += 40;
      }

      while (v29 != 40);
      v25 = CVPixelBufferLock::Unlock(&v54);
      if (!v25)
      {
        v25 = [(VCPCNNFaceLandmarkDetector *)self computeLandmarks:v58];
        if (!v25)
        {
          v34 = [MEMORY[0x1E695DF70] array];
          landmarks = self->_landmarks;
          self->_landmarks = v34;

          v36 = 0;
          v37 = v50 / v21;
          v38 = v51 / v21;
          v39 = v58 + 1;
          do
          {
            v41 = *(v39 - 1);
            v40 = *v39;
            v42 = self->_landmarks;
            v43 = [MEMORY[0x1E696AD98] numberWithInt:{LandmarkIndex[v36], *&v50, *&v51}];
            v44 = v53 / v18 + v41 * (v52 / v18);
            *&v44 = v44;
            v57[0] = v43;
            v45 = [MEMORY[0x1E696AD98] numberWithFloat:v44];
            v46 = v37 + v40 * v38;
            *&v46 = v46;
            v57[1] = v45;
            *&v46 = 1.0 - *&v46;
            v47 = [MEMORY[0x1E696AD98] numberWithFloat:v46];
            v57[2] = v47;
            v48 = [MEMORY[0x1E695DEC8] arrayWithObjects:v57 count:3];
            [(NSMutableArray *)v42 addObject:v48];

            ++v36;
            v39 += 2;
          }

          while (v36 != 7);
          v25 = 0;
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
    v54 = -50;
  }

  if (pixelBuffer && !v54 && CVPixelBufferUnlockBaseAddress(pixelBuffer, unlockFlags) && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    [VCPImageExposurePreAnalyzer analyzePixelBuffer:flags:results:cancel:];
  }

  return v25;
}

@end