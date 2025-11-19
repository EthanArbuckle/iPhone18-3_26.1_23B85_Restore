@interface VCPCNNHandKeypointsDetector
+ (id)detector:(BOOL)a3 sharedModel:(BOOL)a4 modelName:(id)a5 enableHandObject:(BOOL)a6 options:(id)a7;
- (id).cxx_construct;
- (int)copyImage:(__CVBuffer *)a3 toData:(float *)a4;
- (int)createInput:(float *)a3 withBuffer:(__CVBuffer *)a4 cnnInputHeight:(int)a5 cnnInputWidth:(int)a6 box:(id)a7;
- (int)cvtHeatmaps2Keypoints:(float *)a3 outHeight:(int)a4 outWidth:(int)a5 inHeight:(int)a6 inWidth:(int)a7 outChannel:(int)a8 keypoints:(CGPoint *)a9 keypointConfidence:(float *)a10 offset:(float)a11;
- (int)handKeypointsDetection:(__CVBuffer *)a3 box:(id)a4 keypoints:(CGPoint)a5[21] keypointConfidence:(float)a6[21] handHoldsObjectConfidence:(float *)a7;
@end

@implementation VCPCNNHandKeypointsDetector

+ (id)detector:(BOOL)a3 sharedModel:(BOOL)a4 modelName:(id)a5 enableHandObject:(BOOL)a6 options:(id)a7
{
  v8 = a6;
  v9 = a4;
  v10 = a3;
  v11 = a5;
  v12 = a7;
  v13 = [[VCPCNNHandKeypointsDetectorEspresso alloc] init:v10 sharedModel:v9 modelName:v11 enableHandObject:v8 options:v12];

  return v13;
}

- (int)copyImage:(__CVBuffer *)a3 toData:(float *)a4
{
  v7 = VCPSignPostLog();
  v8 = os_signpost_id_generate(v7);

  v9 = VCPSignPostLog();
  v10 = v9;
  if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v9))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1C9B70000, v10, OS_SIGNPOST_INTERVAL_BEGIN, v8, "copyImageToBGRHandKeypointCallFromSPI", "", buf, 2u);
  }

  if (CVPixelBufferGetPixelFormatType(a3) != 1111970369)
  {
    return -50;
  }

  Width = CVPixelBufferGetWidth(a3);
  Height = CVPixelBufferGetHeight(a3);
  pixelBuffer = a3;
  unlockFlags = 1;
  if (a3)
  {
    v13 = Height;
    v14 = CVPixelBufferLockBaseAddress(a3, 1uLL);
    *buf = v14;
    if (v14)
    {
      v15 = v14;
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        [VCPImageConverter convertImage:yuvFrame:];
      }
    }

    else
    {
      BaseAddress = CVPixelBufferGetBaseAddress(a3);
      BytesPerRow = CVPixelBufferGetBytesPerRow(a3);
      bzero(a4, 3 * 4 * Width * v13);
      if (v13 >= 1)
      {
        v19 = 0;
        v20 = &a4[2 * v13 * Width];
        v21 = &a4[v13 * Width];
        v22 = 4 * Width;
        do
        {
          if (Width >= 1)
          {
            v23 = 0;
            v24 = Width & 0x7FFFFFFF;
            do
            {
              LOBYTE(v18) = BaseAddress[(v23 * 4)];
              *&v25 = (LODWORD(v18) / self->_std) - self->_mean;
              a4[v23] = *&v25;
              LOBYTE(v25) = BaseAddress[(v23 * 4) + 1];
              *&v26 = (v25 / self->_std) - self->_mean;
              v21[v23] = *&v26;
              LOBYTE(v26) = BaseAddress[(v23 * 4) + 2];
              v18 = (v26 / self->_std) - self->_mean;
              v20[v23++] = v18;
              --v24;
            }

            while (v24);
          }

          BaseAddress += BytesPerRow;
          ++v19;
          v20 = (v20 + v22);
          v21 = (v21 + v22);
          a4 = (a4 + v22);
        }

        while (v19 != v13);
      }

      v15 = CVPixelBufferLock::Unlock(buf);
      if (!v15)
      {
        v27 = VCPSignPostLog();
        v28 = v27;
        if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v27))
        {
          *v30 = 0;
          _os_signpost_emit_with_name_impl(&dword_1C9B70000, v28, OS_SIGNPOST_INTERVAL_END, v8, "copyImageToBGRHandKeypointCallFromSPI", "", v30, 2u);
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
    [VCPImageExposurePreAnalyzer analyzePixelBuffer:flags:results:cancel:];
  }

  return v15;
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
    v25 = v24;
    v26 = VCPSignPostLog();
    v27 = os_signpost_id_generate(v26);

    v28 = VCPSignPostLog();
    v29 = v28;
    v30 = v15;
    v31 = v17;
    v32 = (v19 - v21);
    if (v27 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v28))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1C9B70000, v29, OS_SIGNPOST_INTERVAL_BEGIN, v27, "preProcessingHandKeypointCallFromSPI", "", buf, 2u);
    }

    v40.origin.x = v30;
    v40.origin.y = v31;
    v40.size.width = v32;
    v40.size.height = (v23 - v25);
    v33 = Scaler::ScaleCropped(&self->_scaler, v40, a4, &cf, v7, v8, 1111970369);
    if (!v33)
    {
      v34 = VCPSignPostLog();
      v35 = v34;
      if (v27 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v34))
      {
        *v37 = 0;
        _os_signpost_emit_with_name_impl(&dword_1C9B70000, v35, OS_SIGNPOST_INTERVAL_END, v27, "preProcessingHandKeypointCallFromSPI", "", v37, 2u);
      }

      v33 = [(VCPCNNHandKeypointsDetector *)self copyImage:cf toData:a3];
    }

    if (cf)
    {
      CFRelease(cf);
    }
  }

  else
  {
    v33 = -108;
  }

  return v33;
}

- (int)cvtHeatmaps2Keypoints:(float *)a3 outHeight:(int)a4 outWidth:(int)a5 inHeight:(int)a6 inWidth:(int)a7 outChannel:(int)a8 keypoints:(CGPoint *)a9 keypointConfidence:(float *)a10 offset:(float)a11
{
  v18 = VCPSignPostLog();
  v19 = os_signpost_id_generate(v18);

  v20 = VCPSignPostLog();
  v21 = v20;
  if (v19 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v20))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1C9B70000, v21, OS_SIGNPOST_INTERVAL_BEGIN, v19, "postProcessingHandKeypointCallFromSPI", "", buf, 2u);
  }

  result = -50;
  if (a4 && a5)
  {
    if (a8 >= 1)
    {
      v23 = 0;
      v24 = 0;
      do
      {
        if (a4 < 1)
        {
          v30 = 0.0;
          v27 = 1.1755e-38;
          v29 = 0.0;
          v26 = 0.0;
        }

        else
        {
          v25 = 0;
          v26 = 0.0;
          v27 = 1.1755e-38;
          v28 = v23;
          v29 = 0.0;
          v30 = 0.0;
          do
          {
            if (a5 >= 1)
            {
              v31 = 0;
              do
              {
                v32 = a3[v28 + v31];
                if (v32 > 0.1)
                {
                  if (v26 <= v32)
                  {
                    v26 = a3[v28 + v31];
                  }

                  v30 = v30 + (v31 * v32);
                  v29 = v29 + (v25 * v32);
                  v27 = v27 + v32;
                }

                ++v31;
              }

              while (a5 != v31);
            }

            ++v25;
            v28 += a5;
          }

          while (v25 != a4);
        }

        v33 = &a9[v24];
        v33->x = (((v30 / v27) + a11) * (a6 / a4));
        v33->y = (((v29 / v27) + a11) * (a7 / a5));
        a10[v24++] = v26;
        v23 += a5 * a4;
      }

      while (v24 != a8);
    }

    v34 = VCPSignPostLog();
    v35 = v34;
    if (v19 - 1 < 0xFFFFFFFFFFFFFFFELL && os_signpost_enabled(v34))
    {
      *v36 = 0;
      _os_signpost_emit_with_name_impl(&dword_1C9B70000, v35, OS_SIGNPOST_INTERVAL_END, v19, "postProcessingHandKeypointCallFromSPI", "", v36, 2u);
    }

    return 0;
  }

  return result;
}

- (int)handKeypointsDetection:(__CVBuffer *)a3 box:(id)a4 keypoints:(CGPoint)a5[21] keypointConfidence:(float)a6[21] handHoldsObjectConfidence:(float *)a7
{
  v12 = a4;
  v13 = objc_autoreleasePoolPush();
  *&self->_std = 1065353216;
  Width = CVPixelBufferGetWidth(a3);
  v22 = 0;
  v21 = 0;
  v15 = [(VCPCNNHandKeypointsDetector *)self getInputBuffer:CVPixelBufferGetHeight(a3) srcWidth:Width cnnInputHeight:&v22 cnnInputWidth:&v22 + 4 offset:&v21];
  v16 = [(VCPCNNHandKeypointsDetector *)self createInput:v15 withBuffer:a3 cnnInputHeight:v22 cnnInputWidth:HIDWORD(v22) box:v12];
  if (v16)
  {
    v18 = 4;
  }

  else
  {
    LODWORD(v17) = v21;
    LODWORD(a7) = [(VCPCNNHandKeypointsDetector *)self generateHandKeypoints:a5 keypointConfidence:a6 offset:a7 handHoldsObjectConfidence:v17];
    v18 = a7 != 0;
  }

  objc_autoreleasePoolPop(v13);
  if ((v18 | 4) == 4)
  {
    v19 = v16;
  }

  else
  {
    v19 = a7;
  }

  return v19;
}

- (id).cxx_construct
{
  *(self + 3) = 0;
  *(self + 8) = 0;
  return self;
}

@end