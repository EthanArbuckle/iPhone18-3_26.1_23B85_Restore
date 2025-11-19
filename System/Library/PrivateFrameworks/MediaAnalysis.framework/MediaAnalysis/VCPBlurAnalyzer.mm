@interface VCPBlurAnalyzer
- (float)computeRegionSharpness:(char *)a3 width:(int)a4 height:(int)a5 stride:(int64_t)a6;
- (int)computeSharpnessScore:(float *)a3 forObjects:(id)a4 inImage:(__CVBuffer *)a5;
@end

@implementation VCPBlurAnalyzer

- (float)computeRegionSharpness:(char *)a3 width:(int)a4 height:(int)a5 stride:(int64_t)a6
{
  if (a5 < 3)
  {
    v11 = 0;
    v10 = 0;
    v27 = 1.0;
    v26 = 1.0;
  }

  else
  {
    v6 = 0;
    v7 = 0;
    v8 = 0;
    v9 = 0;
    v10 = 0;
    v11 = 0;
    v12 = &a3[a6];
    v13 = a5 - 2;
    v14 = 1;
    v15 = &a3[2 * a6];
    do
    {
      if (a4 >= 3)
      {
        v16 = 1;
        do
        {
          v17 = v12[v16 + 1];
          v18 = v12[v16 - 1];
          v19 = v17 - v18;
          if (v17 - v18 < 0)
          {
            v19 = v18 - v17;
          }

          if (v19 >= 0x15)
          {
            v20 = 2 * v12[v16] - (v18 + v17);
            if (v20 < 0)
            {
              v20 = -v20;
            }

            v6 += v20 >> 2;
            if (v20 > 0x13)
            {
              ++v8;
            }

            ++v10;
          }

          v21 = a3[v16];
          v22 = v15[v16];
          v23 = v21 - v22;
          if (v21 - v22 < 0)
          {
            v23 = v22 - v21;
          }

          if (v23 >= 0x15)
          {
            v24 = 2 * v12[v16] - (v22 + v21);
            if (v24 < 0)
            {
              v24 = -v24;
            }

            v7 += v24 >> 2;
            if (v24 > 0x13)
            {
              ++v9;
            }

            ++v11;
          }

          ++v16;
        }

        while (a4 - 1 != v16);
      }

      v12 += a6;
      a3 += a6;
      v15 += a6;
    }

    while (v14++ != v13);
    v26 = 1.0;
    v27 = 1.0;
    if (v10 > 50)
    {
      v28 = ((v6 / v10) * -0.125) + 1.0;
      if (v28 < 0.0)
      {
        v28 = 0.0;
      }

      v27 = (1.0 - (v8 / v10)) * v28;
    }

    if (v11 >= 51)
    {
      v29 = ((v7 / v11) * -0.125) + 1.0;
      if (v29 < 0.0)
      {
        v29 = 0.0;
      }

      v26 = (1.0 - (v9 / v11)) * v29;
    }
  }

  v30 = v10 + 1.0;
  v31 = v11 + 1.0;
  if (v27 <= v26)
  {
    v31 = v31 * 20.0;
  }

  else
  {
    v30 = v30 * 20.0;
  }

  return 1.0 - (((v26 * v31) + (v27 * v30)) / (v30 + v31));
}

- (int)computeSharpnessScore:(float *)a3 forObjects:(id)a4 inImage:(__CVBuffer *)a5
{
  v56 = *MEMORY[0x1E69E9840];
  v8 = a4;
  pixelBuffer = a5;
  unlockFlags = 1;
  if (a5)
  {
    v9 = CVPixelBufferLockBaseAddress(a5, 1uLL);
    v51 = v9;
    if (!v9 || os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR) && (LODWORD(buf.a) = 134218240, *(&buf.a + 4) = pixelBuffer, WORD2(buf.b) = 1024, *(&buf.b + 6) = v9, _os_log_error_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Failed to lock CVPixelBuffer (%p, %d)", &buf, 0x12u), (v9 = v51) == 0))
    {
      Width = CVPixelBufferGetWidth(a5);
      Height = CVPixelBufferGetHeight(a5);
      BytesPerRowOfPlane = CVPixelBufferGetBytesPerRowOfPlane(a5, 0);
      v42 = a3;
      BaseAddressOfPlane = CVPixelBufferGetBaseAddressOfPlane(a5, 0);
      v49 = 0u;
      v50 = 0u;
      v47 = 0u;
      v48 = 0u;
      v43 = v8;
      obj = v8;
      v13 = [obj countByEnumeratingWithState:&v47 objects:v55 count:16];
      if (v13)
      {
        v45 = *v48;
        v14 = Width;
        v15 = Height;
        v16 = 0.0;
        v17 = 0.0;
        do
        {
          for (i = 0; i != v13; ++i)
          {
            if (*v48 != v45)
            {
              objc_enumerationMutation(obj);
            }

            v57 = NSRectFromString(*(*(&v47 + 1) + 8 * i));
            buf.a = 1.0;
            *&buf.b = 0uLL;
            *&buf.d = xmmword_1C9F60600;
            buf.ty = 1.0;
            v58 = CGRectApplyAffineTransform(v57, &buf);
            v19 = 0;
            v20 = (v58.origin.x * v14);
            if (v20 >= Width)
            {
              v21 = Width;
            }

            else
            {
              v21 = (v58.origin.x * v14);
            }

            if (v20 <= 0)
            {
              v22 = 0;
            }

            else
            {
              v22 = v21;
            }

            v23 = (v58.origin.y * v15);
            if (v23 >= Height)
            {
              v24 = Height;
            }

            else
            {
              v24 = (v58.origin.y * v15);
            }

            if (v23 <= 0)
            {
              v25 = 0;
            }

            else
            {
              v25 = v24;
            }

            v26 = Width - v22;
            v27 = (v58.size.width * v14);
            if (v27 < Width - v22)
            {
              v26 = (v58.size.width * v14);
            }

            v28 = v26 / 2;
            v29 = &BaseAddressOfPlane[BytesPerRowOfPlane * v25 + v22];
            v30 = (v58.size.height * v15);
            if (v30 >= Height - v25)
            {
              v31 = Height - v25;
            }

            else
            {
              v31 = (v58.size.height * v15);
            }

            v32 = v31 / 2;
            v33 = v58.size.width * v58.size.height;
            if (v27 <= 0)
            {
              v28 = 0;
            }

            if (v30 <= 0)
            {
              v34 = 0;
            }

            else
            {
              v34 = v32;
            }

            v35 = v28;
            v36 = 1.0;
            v37 = 0.0;
            v38 = 0.0;
            do
            {
              if (v19)
              {
                v39 = v35;
              }

              else
              {
                v39 = 0;
              }

              [(VCPBlurAnalyzer *)self computeRegionSharpness:&v29[BytesPerRowOfPlane * ((v19 >> 1) * v34) + v39] width:v35 height:v34 stride:BytesPerRowOfPlane];
              if (v36 > v40)
              {
                v36 = v40;
              }

              if (v37 < v40)
              {
                v37 = v40;
              }

              v38 = v38 + v40;
              ++v19;
            }

            while (v19 != 4);
            v17 = v17 + (v33 * (((v38 - v36) - v37) * 0.5));
            v16 = v16 + v33;
          }

          v13 = [obj countByEnumeratingWithState:&v47 objects:v55 count:16];
        }

        while (v13);
      }

      else
      {
        v16 = 0.0;
        v17 = 0.0;
      }

      v8 = v43;
      v9 = CVPixelBufferLock::Unlock(&v51);
      if (!v9)
      {
        *v42 = roundf((v17 / v16) * 100.0) / 100.0;
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
    v51 = -50;
  }

  if (pixelBuffer && !v51 && CVPixelBufferUnlockBaseAddress(pixelBuffer, unlockFlags) && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    [VCPImageExposurePreAnalyzer analyzePixelBuffer:flags:results:cancel:];
  }

  return v9;
}

@end