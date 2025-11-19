@interface VCPImageExposureAnalyzer
- (float)computeNoiseLevel:(char *)a3 width:(int)a4 height:(int)a5 stride:(int64_t)a6 textureness:(char *)a7;
- (float)computeRegionNoise:(char *)a3 blockTextureness:(char *)a4 average:(char *)a5 width:(int)a6 height:(int)a7 stride:(int64_t)a8;
- (int)analyzePixelBuffer:(__CVBuffer *)a3 flags:(unint64_t *)a4 results:(id *)a5 cancel:(id)a6;
@end

@implementation VCPImageExposureAnalyzer

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
    [(VCPImageExposureAnalyzer *)self computeRegionNoise:&a3[v14 * (v11 / 0x14u) + (v12 * (v11 % 0x14u))] blockTextureness:&a7[v15 * (v11 / 0x14u) + (v12 * (v11 % 0x14u))] average:&v19 width:v12 height:v13 stride:a6];
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
  v73 = *MEMORY[0x1E69E9840];
  v9 = a6;
  v10 = v9;
  if (v9 && ((*(v9 + 2))(v9) & 1) != 0)
  {
    v11 = -128;
    goto LABEL_40;
  }

  v62 = 0;
  pixelBuffer = a3;
  unlockFlags = 1;
  if (a3)
  {
    v11 = CVPixelBufferLockBaseAddress(a3, 1uLL);
    v62 = v11;
    if (v11)
    {
      if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_40;
      }

      *buf = 134218240;
      *&buf[4] = pixelBuffer;
      *&buf[12] = 1024;
      *&buf[14] = v11;
      _os_log_error_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Failed to lock CVPixelBuffer (%p, %d)", buf, 0x12u);
      v11 = v62;
      if (v62)
      {
        goto LABEL_40;
      }
    }

    Width = CVPixelBufferGetWidth(a3);
    Height = CVPixelBufferGetHeight(a3);
    BytesPerRowOfPlane = CVPixelBufferGetBytesPerRowOfPlane(a3, 0);
    BaseAddressOfPlane = CVPixelBufferGetBaseAddressOfPlane(a3, 0);
    v16 = Height * Width;
    std::vector<float>::vector[abi:ne200100](buf, v16);
    if (Height >= 1)
    {
      v17 = 0;
      v18 = *buf;
      v19 = BaseAddressOfPlane;
      do
      {
        v20 = Width;
        v21 = v19;
        v22 = v18;
        if (Width >= 1)
        {
          do
          {
            v23 = *v21++;
            *v22++ = v23 / 255.0;
            --v20;
          }

          while (v20);
        }

        ++v17;
        v18 += Width;
        v19 += BytesPerRowOfPlane;
      }

      while (v17 != (Height & 0x7FFFFFFF));
    }

    v11 = CVPixelBufferLock::Unlock(&v62);
    if (v11)
    {
      goto LABEL_65;
    }

    std::vector<unsigned char>::vector[abi:ne200100](__p, v16);
    v11 = [(VCPImageAnalyzer *)self calculateTextureness:*buf height:Height width:Width sdof:0 result:__p[0]];
    if (v11)
    {
LABEL_63:
      if (__p[0])
      {
        __p[1] = __p[0];
        operator delete(__p[0]);
      }

LABEL_65:
      if (*buf)
      {
        *&buf[8] = *buf;
        operator delete(*buf);
      }

      if (pixelBuffer && !v62 && CVPixelBufferUnlockBaseAddress(pixelBuffer, unlockFlags) && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        [VCPImageExposurePreAnalyzer analyzePixelBuffer:flags:results:cancel:];
      }

      goto LABEL_40;
    }

    [(VCPImageExposureAnalyzer *)self computeNoiseLevel:BaseAddressOfPlane width:Width height:Height stride:BytesPerRowOfPlane textureness:__p[0]];
    if (Height <= 0)
    {
      v46 = 0.0;
      v44 = 0.0 / v16;
      v35 = 1.0;
      v29 = 0.0;
      v30 = 0.0;
      v33 = 0.0;
      v34 = 0.0;
      v45 = 0.0;
    }

    else
    {
      v25 = 0;
      v26 = 0;
      v27 = *buf;
      v28 = __p[0];
      v29 = 0.0;
      v30 = 0.0;
      v31 = 0.0;
      v32 = 0.0;
      v33 = 0.0;
      v34 = 0.0;
      v35 = 1.0;
      do
      {
        if (Width >= 1)
        {
          v36 = 0;
          v37 = fabsf((v25 / Height) + -0.5);
          do
          {
            v38 = fmaxf(1.0 - sqrtf(v37 + fabsf((v36 / Width) + -0.5)), 0.0);
            v33 = v33 + v38;
            v39 = *(v27 + 4 * v36);
            if (v39 < 0.98039)
            {
              v40 = 0.0;
            }

            else
            {
              v40 = 1.0;
            }

            v29 = v29 + (v40 * v38);
            if (v39 > 0.11765)
            {
              v41 = 0.0;
            }

            else
            {
              v41 = 1.0;
            }

            v31 = v31 + v39;
            v30 = v30 + (v41 * v38);
            v42 = v32 + v39;
            if (v39 >= v34)
            {
              v43 = *(v27 + 4 * v36);
            }

            else
            {
              v43 = v34;
            }

            if (v35 < v39)
            {
              v39 = v35;
            }

            if (v28[v36])
            {
              v35 = v39;
              v34 = v43;
              v32 = v42;
              ++v26;
            }

            ++v36;
          }

          while (Width != v36);
        }

        ++v25;
        v28 += Width;
        v27 += 4 * Width;
      }

      while (v25 != (Height & 0x7FFFFFFF));
      v44 = v31 / v16;
      v45 = 0.0;
      v46 = v26;
      if (v26)
      {
        v45 = v32 / v26;
      }

      else
      {
        v46 = 0.0;
      }
    }

    v48 = v29 / v33;
    if (v33 == 0.0)
    {
      v49 = 0.0;
    }

    else
    {
      v49 = v48;
    }

    if (v33 == 0.0)
    {
      v50 = 0.0;
    }

    else
    {
      v50 = v30 / v33;
    }

    v51 = fabsf(v44 + -0.5);
    v52 = (v35 + -0.3) * 4.0;
    if (v52 < (0.7 - v34))
    {
      v52 = 0.7 - v34;
    }

    if (v51 < v52)
    {
      v51 = v52;
    }

    v53 = fmaxf(((v51 * -4.0) * v51) + 1.0, 0.0);
    if (v49 >= 0.15 || v50 >= 0.4 && (vabds_f32(v44, v45) / v44) >= 0.1)
    {
      v54 = fmaxf(((v49 * -2.6) + 1.0) - v50, 0.0);
      if (v49 >= 0.15)
      {
        goto LABEL_58;
      }

      if ((vcvts_n_f32_s32(Width, 1uLL) * Height) > v46)
      {
        if (v24 <= 0.5 && ((Width * 0.001) * Height) <= v46 && v24 >= 0.0)
        {
          v53 = fmaxf(fmaxf((fabsf(((v35 + v34) * 0.5) + -0.5) * -2.0) + 1.0, 0.0) + (v24 * -0.5), 0.0);
          goto LABEL_62;
        }

LABEL_58:
        if (v54 < v53)
        {
          v53 = v54;
        }

        goto LABEL_62;
      }

      v53 = fmaxf((fabsf(v45 + -0.5) * -2.0) + 1.0, 0.0);
    }

LABEL_62:
    self->_exposureScore = v53;
    self->_exposureScore = roundf(v53 * 100.0) / 100.0;
    v70 = @"ExposureResults";
    v67[0] = @"quality";
    v55 = [MEMORY[0x1E696AD98] numberWithFloat:?];
    v68[0] = v55;
    v67[1] = @"attributes";
    v65 = @"underExpose";
    *&v56 = v50;
    v57 = [MEMORY[0x1E696AD98] numberWithFloat:v56];
    v66 = v57;
    v58 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v66 forKeys:&v65 count:1];
    v68[1] = v58;
    v59 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v68 forKeys:v67 count:2];
    v69 = v59;
    v60 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v69 count:1];
    v71 = v60;
    *a5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v71 forKeys:&v70 count:1];

    v11 = 0;
    goto LABEL_63;
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    [VCPVideoCNNAnalyzer copyImage:withChannels:settling:];
  }

  v11 = -50;
LABEL_40:

  return v11;
}

@end