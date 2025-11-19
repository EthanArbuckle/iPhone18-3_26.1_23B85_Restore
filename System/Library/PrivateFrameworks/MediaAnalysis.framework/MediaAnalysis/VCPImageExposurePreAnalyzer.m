@interface VCPImageExposurePreAnalyzer
- (float)computeNoiseLevel:(char *)a3 width:(int)a4 height:(int)a5 stride:(int64_t)a6 textureness:(char *)a7;
- (float)computeRegionNoise:(char *)a3 blockTextureness:(char *)a4 average:(char *)a5 width:(int)a6 height:(int)a7 stride:(int64_t)a8;
- (int)analyzePixelBuffer:(__CVBuffer *)a3 flags:(unint64_t *)a4 results:(id *)a5 cancel:(id)a6;
@end

@implementation VCPImageExposurePreAnalyzer

- (float)computeRegionNoise:(char *)a3 blockTextureness:(char *)a4 average:(char *)a5 width:(int)a6 height:(int)a7 stride:(int64_t)a8
{
  v8 = a7 * a6;
  v9 = 0.0;
  if (a7 < 1)
  {
    v17 = 0;
    v10 = 0;
    v16 = 0.0;
    if (v8)
    {
LABEL_10:
      v18 = v8;
      v19 = v16 / v8;
      v8 = v10 / v8;
      v9 = v10 / v18;
      goto LABEL_13;
    }
  }

  else
  {
    v10 = 0;
    v11 = 0;
    v12 = 0;
    v13 = 0;
    do
    {
      if (a6 >= 1)
      {
        for (i = 0; i != a6; ++i)
        {
          v15 = a3[i];
          v10 += v15;
          v12 += (v15 * v15);
          if (a4[i])
          {
            ++v13;
          }
        }
      }

      a3 += a8;
      a4 += a6;
      ++v11;
    }

    while (v11 != a7);
    v16 = v12;
    v17 = v13 > 0;
    if (v8)
    {
      goto LABEL_10;
    }
  }

  v19 = 0.0;
LABEL_13:
  result = v19 - (v9 * v9);
  *a5 = v8;
  if (v17)
  {
    return -1.0;
  }

  return result;
}

- (float)computeNoiseLevel:(char *)a3 width:(int)a4 height:(int)a5 stride:(int64_t)a6 textureness:(char *)a7
{
  v11 = 0;
  v12 = (a4 / 20);
  v13 = (a5 / 20);
  v14 = v13 * a6;
  v15 = v13 * a4;
  result = -1.0;
  do
  {
    v17 = result;
    v19 = 0;
    [(VCPImageExposurePreAnalyzer *)self computeRegionNoise:&a3[v14 * (v11 / 0x14u) + (v12 * (v11 % 0x14u))] blockTextureness:&a7[v15 * (v11 / 0x14u) + (v12 * (v11 % 0x14u))] average:&v19 width:v12 height:v13 stride:a6];
    if (result < 0.0 || v19 > 0x1Du)
    {
      result = v17;
    }

    else if (v17 >= 0.0 && v17 < result)
    {
      result = v17;
    }

    ++v11;
  }

  while (v11 != 400);
  return result;
}

- (int)analyzePixelBuffer:(__CVBuffer *)a3 flags:(unint64_t *)a4 results:(id *)a5 cancel:(id)a6
{
  v77 = *MEMORY[0x1E69E9840];
  v9 = a6;
  v64 = 0;
  pixelBuffer = a3;
  unlockFlags = 1;
  if (a3)
  {
    v10 = CVPixelBufferLockBaseAddress(a3, 1uLL);
    v64 = v10;
    if (v10)
    {
      if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_50;
      }

      *buf = 134218240;
      *v75 = pixelBuffer;
      *&v75[8] = 1024;
      v76 = v10;
      _os_log_error_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Failed to lock CVPixelBuffer (%p, %d)", buf, 0x12u);
      v10 = v64;
      if (v64)
      {
        goto LABEL_50;
      }
    }

    Width = CVPixelBufferGetWidth(a3);
    Height = CVPixelBufferGetHeight(a3);
    BytesPerRowOfPlane = CVPixelBufferGetBytesPerRowOfPlane(a3, 0);
    BaseAddressOfPlane = CVPixelBufferGetBaseAddressOfPlane(a3, 0);
    v15 = Height * Width;
    v16 = MEMORY[0x1E69E5398];
    v17 = operator new[](Height * Width, MEMORY[0x1E69E5398]);
    if (Height * Width < 0)
    {
      v18 = -1;
    }

    else
    {
      v18 = 4 * v15;
    }

    v19 = operator new[](v18, v16);
    v20 = v19;
    v63 = v17;
    if (!v17 || !v19)
    {
      if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *buf = 67109376;
        *v75 = Width;
        *&v75[4] = 1024;
        *&v75[6] = Height;
        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Failed to allocate textureness or dst buffer for image resolution %dx%d", buf, 0xEu);
      }

      v10 = -108;
      goto LABEL_46;
    }

    if (Height >= 1)
    {
      v21 = 0;
      v22 = BaseAddressOfPlane;
      v23 = v19;
      do
      {
        v24 = Width;
        v25 = v22;
        v26 = v23;
        if (Width >= 1)
        {
          do
          {
            v27 = *v25++;
            *v26++ = v27 / 255.0;
            --v24;
          }

          while (v24);
        }

        ++v21;
        v23 += Width;
        v22 += BytesPerRowOfPlane;
      }

      while (v21 != (Height & 0x7FFFFFFF));
    }

    v10 = CVPixelBufferLock::Unlock(&v64);
    if (!v10)
    {
      v10 = [(VCPImageAnalyzer *)self calculateTextureness:v20 height:Height width:Width sdof:0 result:v63];
      if (v10)
      {
LABEL_46:
        if (v63)
        {
          MEMORY[0x1CCA95C10](v63, 0x1000C8077774924);
        }

        if (v20)
        {
          MEMORY[0x1CCA95C10](v20, 0x1000C8052888210);
        }

        goto LABEL_50;
      }

      v28 = v63;
      [(VCPImageExposurePreAnalyzer *)self computeNoiseLevel:BaseAddressOfPlane width:Width height:Height stride:BytesPerRowOfPlane textureness:v63];
      if (Height <= 0)
      {
        v31 = 0;
        v32 = 0.0;
        v48 = 0.0 / v15;
        v39 = 1.0;
        v34 = 0.0;
        v37 = 0.0;
        v38 = 0.0;
        v49 = 0.0;
      }

      else
      {
        v30 = 0;
        v31 = 0;
        v32 = 0.0;
        v33 = v20;
        v34 = 0.0;
        v35 = 0.0;
        v36 = 0.0;
        v37 = 0.0;
        v38 = 0.0;
        v39 = 1.0;
        do
        {
          if (Width >= 1)
          {
            v40 = 0;
            v41 = fabsf((v30 / Height) + -0.5);
            do
            {
              v42 = fmaxf(1.0 - sqrtf(v41 + fabsf((v40 / Width) + -0.5)), 0.0);
              v37 = v37 + v42;
              v43 = v33[v40];
              if (v43 < 0.98039)
              {
                v44 = 0.0;
              }

              else
              {
                v44 = 1.0;
              }

              v32 = v32 + (v44 * v42);
              if (v43 > 0.11765)
              {
                v45 = 0.0;
              }

              else
              {
                v45 = 1.0;
              }

              v35 = v35 + v43;
              v34 = v34 + (v45 * v42);
              v46 = v36 + v43;
              if (v43 >= v38)
              {
                v47 = v33[v40];
              }

              else
              {
                v47 = v38;
              }

              if (v39 < v43)
              {
                v43 = v39;
              }

              if (v28[v40])
              {
                v39 = v43;
                v38 = v47;
                v36 = v46;
                ++v31;
              }

              ++v40;
            }

            while (Width != v40);
          }

          ++v30;
          v28 += Width;
          v33 += Width;
        }

        while (v30 != (Height & 0x7FFFFFFF));
        v48 = v35 / v15;
        v49 = 0.0;
        if (v31)
        {
          v49 = v36 / v31;
        }

        else
        {
          v31 = 0;
        }
      }

      v51 = v32 / v37;
      if (v37 == 0.0)
      {
        v52 = 0.0;
      }

      else
      {
        v52 = v51;
      }

      if (v37 == 0.0)
      {
        v53 = 0.0;
      }

      else
      {
        v53 = v34 / v37;
      }

      v54 = fabsf(v48 + -0.5);
      if (v31 >= 1)
      {
        v55 = (v39 + -0.3) + (v39 + -0.3);
        if (v55 < (0.7 - v38))
        {
          v55 = 0.7 - v38;
        }

        if (v54 < v55)
        {
          v54 = v55;
        }
      }

      v56 = ((v54 * -4.0) * v54) + 1.0;
      if (v52 < 0.15 && (v53 < 0.4 || (vabds_f32(v48, v49) / v48) < 0.1))
      {
        self->_exposureScore = v56;
        *&v29 = v56;
LABEL_80:
        self->_exposureScore = roundf(*&v29 * 100.0) / 100.0;
        v72 = @"ExposureResults";
        v69[0] = @"quality";
        *&v29 = v56;
        v57 = [MEMORY[0x1E696AD98] numberWithFloat:v29];
        v70[0] = v57;
        v69[1] = @"attributes";
        v67 = @"underExpose";
        *&v58 = v53;
        v59 = [MEMORY[0x1E696AD98] numberWithFloat:v58];
        v68 = v59;
        v60 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v68 forKeys:&v67 count:1];
        v70[1] = v60;
        v61 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v70 forKeys:v69 count:2];
        v71 = v61;
        v62 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v71 count:1];
        v73 = v62;
        *a5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v73 forKeys:&v72 count:1];

        v10 = 0;
        goto LABEL_46;
      }

      if (v52 < 0.15)
      {
        if ((vcvts_n_f32_s32(Width, 1uLL) * Height) <= v31)
        {
          *&v29 = fmaxf((fabsf(v49 + -0.5) * -2.0) + 1.0, 0.0);
LABEL_79:
          self->_exposureScore = *&v29;
          goto LABEL_80;
        }

        if (*&v29 <= 0.5 && ((Width * 0.001) * Height) <= v31 && *&v29 >= 0.0)
        {
          *&v29 = fmaxf(fmaxf((fabsf(((v39 + v38) * 0.5) + -0.5) * -2.0) + 1.0, 0.0) + (*&v29 * -0.5), 0.0);
          goto LABEL_79;
        }
      }

      if ((((v52 * -2.6) + 1.0) - v53) >= v56)
      {
        *&v29 = v56;
      }

      else
      {
        *&v29 = ((v52 * -2.6) + 1.0) - v53;
      }

      goto LABEL_79;
    }
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      [VCPVideoCNNAnalyzer copyImage:withChannels:settling:];
    }

    v10 = -50;
    v64 = -50;
  }

LABEL_50:
  if (pixelBuffer && !v64 && CVPixelBufferUnlockBaseAddress(pixelBuffer, unlockFlags) && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    [VCPImageExposurePreAnalyzer analyzePixelBuffer:flags:results:cancel:];
  }

  return v10;
}

- (void)analyzePixelBuffer:flags:results:cancel:.cold.2()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

@end