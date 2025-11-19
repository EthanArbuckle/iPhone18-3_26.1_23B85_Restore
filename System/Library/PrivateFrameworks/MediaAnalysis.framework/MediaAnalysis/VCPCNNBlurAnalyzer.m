@interface VCPCNNBlurAnalyzer
+ (VCPCNNBlurAnalyzer)analyzerWithRevision:(unint64_t)a3;
- (VCPCNNBlurAnalyzer)initWithRevision:(unint64_t)a3;
- (float)calculateScoreFromNetworkOutput:(float *)a3 outChannel:(int)a4 outHeight:(int)a5 outWidth:(int)a6 textureness:(char *)a7 contrast:(float)a8 imgWidth:(int)a9;
- (id).cxx_construct;
- (int)computeCNNBasedSharpness:(__CVBuffer *)a3 sharpnessScore:(float *)a4 textureScore:(float *)a5 contrast:(float)a6 cancel:(id)a7;
- (int)scaleRegion:(CGRect *)a3 ofImage:(__CVBuffer *)a4 toData:(float *)a5 withWidth:(int)a6 andHeight:(int)a7;
- (void)copyBufferFrom:(char *)a3 fromStride:(int64_t)a4 toPtr:(float *)a5 toStride:(int64_t)a6 toWidth:(int)a7 toHeight:(int)a8;
@end

@implementation VCPCNNBlurAnalyzer

+ (VCPCNNBlurAnalyzer)analyzerWithRevision:(unint64_t)a3
{
  p_cache = VCPDatabaseBatchIterator.cache;
  {
    p_cache = (VCPDatabaseBatchIterator + 16);
    if (v7)
    {
      +[VCPCNNBlurAnalyzer analyzerWithRevision:]::analyzerClass = objc_opt_class();
      p_cache = VCPDatabaseBatchIterator.cache;
    }
  }

  v5 = [objc_alloc(p_cache[360]) initWithRevision:a3];

  return v5;
}

- (VCPCNNBlurAnalyzer)initWithRevision:(unint64_t)a3
{
  v5.receiver = self;
  v5.super_class = VCPCNNBlurAnalyzer;
  result = [(VCPCNNBlurAnalyzer *)&v5 init];
  if (result)
  {
    result->_revision = a3;
  }

  return result;
}

- (void)copyBufferFrom:(char *)a3 fromStride:(int64_t)a4 toPtr:(float *)a5 toStride:(int64_t)a6 toWidth:(int)a7 toHeight:(int)a8
{
  if (a8 >= 1)
  {
    for (i = 0; i != a8; ++i)
    {
      if (a7 >= 1)
      {
        for (j = 0; j != a7; a5[j++] = v8)
        {
          LOBYTE(v8) = a3[j];
          v8 = LODWORD(v8) / 255.0;
        }
      }

      a3 += a4;
      a5 += a6;
    }
  }
}

- (int)scaleRegion:(CGRect *)a3 ofImage:(__CVBuffer *)a4 toData:(float *)a5 withWidth:(int)a6 andHeight:(int)a7
{
  v7 = *&a7;
  v8 = *&a6;
  cf = 0;
  Width = CVPixelBufferGetWidth(a4);
  Height = CVPixelBufferGetHeight(a4);
  PixelFormatType = CVPixelBufferGetPixelFormatType(a4);
  if (Width == v8 && Height == v7)
  {
    v16 = v8 == 299 && v8 == v7;
    if (v16 && PixelFormatType == 1278226488)
    {
      cf = CFRetain(a4);
      v22 = 0;
      CF<__CVBuffer *>::~CF(&v22);
LABEL_15:
      pixelBuffer = cf;
      unlockFlags = 1;
      if (cf)
      {
        v19 = CVPixelBufferLockBaseAddress(cf, 1uLL);
        LODWORD(v22) = v19;
        if (v19)
        {
          if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            [VCPImageConverter convertImage:yuvFrame:];
          }
        }

        else
        {
          BytesPerRowOfPlane = CVPixelBufferGetBytesPerRowOfPlane(cf, 0);
          [(VCPCNNBlurAnalyzer *)self copyBufferFrom:CVPixelBufferGetBaseAddressOfPlane(cf fromStride:0) toPtr:BytesPerRowOfPlane toStride:a5 toWidth:v8 toHeight:v8, v7];
          v19 = CVPixelBufferLock::Unlock(&v22);
          if (pixelBuffer && !v22 && CVPixelBufferUnlockBaseAddress(pixelBuffer, unlockFlags) && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            [VCPImageExposurePreAnalyzer analyzePixelBuffer:flags:results:cancel:];
          }
        }
      }

      else
      {
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          [VCPVideoCNNAnalyzer copyImage:withChannels:settling:];
        }

        v19 = -50;
      }

      goto LABEL_22;
    }
  }

  v18 = MEMORY[0x1E695F058];
  if (a3)
  {
    v18 = a3;
  }

  v19 = Scaler::ScaleCropped(&self->_scaler, *v18, a4, &cf, v8, v7, 875704438);
  if (!v19)
  {
    goto LABEL_15;
  }

LABEL_22:
  CF<__CVBuffer *>::~CF(&cf);
  return v19;
}

- (float)calculateScoreFromNetworkOutput:(float *)a3 outChannel:(int)a4 outHeight:(int)a5 outWidth:(int)a6 textureness:(char *)a7 contrast:(float)a8 imgWidth:(int)a9
{
  v12 = 0;
  v55 = *MEMORY[0x1E69E9840];
  v51[0] = 0.0;
  do
  {
    if (v12 <= 0x1D)
    {
      v13 = &v51[v12];
      v13[1] = (v12 % 5u + 1);
      v13[2] = ((v12 | 1u) % 5 + 1);
    }

    v12 += 2;
  }

  while (v12 != 30);
  v52 = xmmword_1C9F632B0;
  v53 = 1077936128;
  memset(v50, 0, sizeof(v50));
  if (a5 < 1)
  {
    v48 = 0;
    v17 = 0.0;
    v16 = 0.0;
  }

  else
  {
    v48 = 0;
    v14 = 0;
    v44 = 4 * a9;
    v15 = 4 * (a6 * a5);
    v16 = 0.0;
    v17 = 0.0;
    do
    {
      v47 = v14;
      if (a6 >= 1)
      {
        v18 = 0;
        do
        {
          if (a4 >= 1)
          {
            v19 = 0.0;
            v20 = v54;
            v21 = a4;
            v22 = a3;
            do
            {
              v23 = expf(*v22);
              *v20++ = v23;
              v19 = v19 + v23;
              v22 = (v22 + v15);
              --v21;
            }

            while (v21);
            v24 = 0;
            v25 = 0;
            v26 = 0;
            v27 = 0.0;
            v28 = 0.0;
            do
            {
              v29 = v54[v24] / v19;
              v54[v24] = v29;
              if (v29 > v28)
              {
                v26 |= v24 > 0x1E;
                v28 = v29;
                v25 = v24;
              }

              v27 = v27 + (v51[v24++] * v29);
            }

            while (a4 != v24);
            if (v28 > 0.85 && a7[4 * v18] != 0)
            {
              v16 = v16 + v27;
              ++HIDWORD(v48);
              ++*(v50 + v25);
              if ((v26 & 1) == 0)
              {
                v17 = v17 + v27;
                LODWORD(v48) = v48 + 1;
              }
            }
          }

          ++a3;
          ++v18;
        }

        while (v18 != a6);
      }

      a7 += v44;
      v14 = v47 + 1;
    }

    while (v47 + 1 != a5);
  }

  v31 = v48 / SHIDWORD(v48);
  sdof = self->_sdof;
  if (sdof && v31 > 0.6)
  {
    v33 = 0;
    v34 = 0;
    for (i = 4; i != 124; i += 4)
    {
      v36 = *(v50 + i);
      v33 += v36;
      if (v36 > v34)
      {
        v34 = *(v50 + i);
      }
    }

    if (v33)
    {
      v37 = (v34 / v33) + 0.5;
      if (v37 > 1.0)
      {
        v37 = 1.0;
      }

      v17 = v17 * v37;
    }
  }

  if (v31 >= 0.3)
  {
    v38 = v48;
  }

  else
  {
    v38 = HIDWORD(v48);
  }

  v39 = 0.0;
  if (v38 >= 40)
  {
    v40 = v16 + ((v16 - v17) * 0.5);
    if (v31 >= 0.3)
    {
      v40 = v17;
    }

    v39 = fmax(((1.2 - (v40 / v38)) / 1.2), 0.0);
  }

  v41 = v31 < 0.3;
  result = v39 + ((1.0 - v39) * a8);
  if (!v41 || !sdof)
  {
    return v39;
  }

  return result;
}

- (int)computeCNNBasedSharpness:(__CVBuffer *)a3 sharpnessScore:(float *)a4 textureScore:(float *)a5 contrast:(float)a6 cancel:(id)a7
{
  v12 = a7;
  Width = CVPixelBufferGetWidth(a3);
  Height = CVPixelBufferGetHeight(a3);
  v15 = Height;
  if (Width <= Height)
  {
    v16 = Height;
  }

  else
  {
    v16 = Width;
  }

  v30 = 0;
  if (v16 >= 401)
  {
    Width = (400 * Width / v16) & 0xFFFFFFFE;
    v15 = (400 * Height / v16) & 0xFFFFFFFE;
  }

  if (Width < 60 || v15 <= 59)
  {
    v17 = 0;
    *a4 = 0.5;
  }

  else
  {
    v17 = [(VCPCNNBlurAnalyzer *)self prepareModelForSourceWidth:Width andSourceHeight:v15];
    if (!v17)
    {
      v18 = [(VCPCNNBlurAnalyzer *)self getInputBuffer:v15 srcWidth:Width cnnInputHeight:&v30 + 4 cnnInputWidth:&v30];
      v17 = [(VCPCNNBlurAnalyzer *)self scaleRegion:0 ofImage:a3 toData:v18 withWidth:v30 andHeight:HIDWORD(v30)];
      if (!v17)
      {
        v20 = v30;
        v19 = HIDWORD(v30);
        v21 = operator new[](v30 * HIDWORD(v30), MEMORY[0x1E69E5398]);
        if (v21)
        {
          v22 = v21;
          [(VCPImageAnalyzer *)self calculateTextureness:v18 height:v19 width:v20 sdof:self->_sdof result:v21];
          if (v30 * HIDWORD(v30) < 1)
          {
            v23 = 0.0;
          }

          else
          {
            v24 = 0;
            v25 = (v30 * HIDWORD(v30));
            v26 = v22;
            do
            {
              if (*v26++)
              {
                ++v24;
              }

              --v25;
            }

            while (v25);
            *&v23 = v24;
          }

          *a5 = *&v23 / (v30 * HIDWORD(v30));
          *&v23 = a6;
          v17 = [VCPCNNBlurAnalyzer computeSharpnessScore:"computeSharpnessScore:textureness:contrast:imgWidth:cancel:" textureness:a4 contrast:v22 imgWidth:v23 cancel:?];
          MEMORY[0x1CCA95C10](v22, 0x1000C8077774924);
        }

        else
        {
          if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            v29 = 0;
            _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Failed to allocate memory", &v29, 2u);
          }

          v17 = -108;
        }
      }
    }
  }

  return v17;
}

- (id).cxx_construct
{
  *(self + 7) = 0;
  *(self + 16) = 0;
  return self;
}

@end