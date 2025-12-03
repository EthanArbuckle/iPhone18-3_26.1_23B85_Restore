@interface VCPCNNBlurAnalyzer
+ (VCPCNNBlurAnalyzer)analyzerWithRevision:(unint64_t)revision;
- (VCPCNNBlurAnalyzer)initWithRevision:(unint64_t)revision;
- (float)calculateScoreFromNetworkOutput:(float *)output outChannel:(int)channel outHeight:(int)height outWidth:(int)width textureness:(char *)textureness contrast:(float)contrast imgWidth:(int)imgWidth;
- (id).cxx_construct;
- (int)computeCNNBasedSharpness:(__CVBuffer *)sharpness sharpnessScore:(float *)score textureScore:(float *)textureScore contrast:(float)contrast cancel:(id)cancel;
- (int)scaleRegion:(CGRect *)region ofImage:(__CVBuffer *)image toData:(float *)data withWidth:(int)width andHeight:(int)height;
- (void)copyBufferFrom:(char *)from fromStride:(int64_t)stride toPtr:(float *)ptr toStride:(int64_t)toStride toWidth:(int)width toHeight:(int)height;
@end

@implementation VCPCNNBlurAnalyzer

+ (VCPCNNBlurAnalyzer)analyzerWithRevision:(unint64_t)revision
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

  v5 = [objc_alloc(p_cache[360]) initWithRevision:revision];

  return v5;
}

- (VCPCNNBlurAnalyzer)initWithRevision:(unint64_t)revision
{
  v5.receiver = self;
  v5.super_class = VCPCNNBlurAnalyzer;
  result = [(VCPCNNBlurAnalyzer *)&v5 init];
  if (result)
  {
    result->_revision = revision;
  }

  return result;
}

- (void)copyBufferFrom:(char *)from fromStride:(int64_t)stride toPtr:(float *)ptr toStride:(int64_t)toStride toWidth:(int)width toHeight:(int)height
{
  if (height >= 1)
  {
    for (i = 0; i != height; ++i)
    {
      if (width >= 1)
      {
        for (j = 0; j != width; ptr[j++] = v8)
        {
          LOBYTE(v8) = from[j];
          v8 = LODWORD(v8) / 255.0;
        }
      }

      from += stride;
      ptr += toStride;
    }
  }
}

- (int)scaleRegion:(CGRect *)region ofImage:(__CVBuffer *)image toData:(float *)data withWidth:(int)width andHeight:(int)height
{
  v7 = *&height;
  v8 = *&width;
  cf = 0;
  Width = CVPixelBufferGetWidth(image);
  Height = CVPixelBufferGetHeight(image);
  PixelFormatType = CVPixelBufferGetPixelFormatType(image);
  if (Width == v8 && Height == v7)
  {
    v16 = v8 == 299 && v8 == v7;
    if (v16 && PixelFormatType == 1278226488)
    {
      cf = CFRetain(image);
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
          [(VCPCNNBlurAnalyzer *)self copyBufferFrom:CVPixelBufferGetBaseAddressOfPlane(cf fromStride:0) toPtr:BytesPerRowOfPlane toStride:data toWidth:v8 toHeight:v8, v7];
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

  regionCopy = MEMORY[0x1E695F058];
  if (region)
  {
    regionCopy = region;
  }

  v19 = Scaler::ScaleCropped(&self->_scaler, *regionCopy, image, &cf, v8, v7, 875704438);
  if (!v19)
  {
    goto LABEL_15;
  }

LABEL_22:
  CF<__CVBuffer *>::~CF(&cf);
  return v19;
}

- (float)calculateScoreFromNetworkOutput:(float *)output outChannel:(int)channel outHeight:(int)height outWidth:(int)width textureness:(char *)textureness contrast:(float)contrast imgWidth:(int)imgWidth
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
  if (height < 1)
  {
    v48 = 0;
    v17 = 0.0;
    v16 = 0.0;
  }

  else
  {
    v48 = 0;
    v14 = 0;
    v44 = 4 * imgWidth;
    v15 = 4 * (width * height);
    v16 = 0.0;
    v17 = 0.0;
    do
    {
      v47 = v14;
      if (width >= 1)
      {
        v18 = 0;
        do
        {
          if (channel >= 1)
          {
            v19 = 0.0;
            v20 = v54;
            channelCopy = channel;
            outputCopy = output;
            do
            {
              v23 = expf(*outputCopy);
              *v20++ = v23;
              v19 = v19 + v23;
              outputCopy = (outputCopy + v15);
              --channelCopy;
            }

            while (channelCopy);
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

            while (channel != v24);
            if (v28 > 0.85 && textureness[4 * v18] != 0)
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

          ++output;
          ++v18;
        }

        while (v18 != width);
      }

      textureness += v44;
      v14 = v47 + 1;
    }

    while (v47 + 1 != height);
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
  result = v39 + ((1.0 - v39) * contrast);
  if (!v41 || !sdof)
  {
    return v39;
  }

  return result;
}

- (int)computeCNNBasedSharpness:(__CVBuffer *)sharpness sharpnessScore:(float *)score textureScore:(float *)textureScore contrast:(float)contrast cancel:(id)cancel
{
  cancelCopy = cancel;
  Width = CVPixelBufferGetWidth(sharpness);
  Height = CVPixelBufferGetHeight(sharpness);
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
    *score = 0.5;
  }

  else
  {
    v17 = [(VCPCNNBlurAnalyzer *)self prepareModelForSourceWidth:Width andSourceHeight:v15];
    if (!v17)
    {
      v18 = [(VCPCNNBlurAnalyzer *)self getInputBuffer:v15 srcWidth:Width cnnInputHeight:&v30 + 4 cnnInputWidth:&v30];
      v17 = [(VCPCNNBlurAnalyzer *)self scaleRegion:0 ofImage:sharpness toData:v18 withWidth:v30 andHeight:HIDWORD(v30)];
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

          *textureScore = *&v23 / (v30 * HIDWORD(v30));
          *&v23 = contrast;
          v17 = [VCPCNNBlurAnalyzer computeSharpnessScore:"computeSharpnessScore:textureness:contrast:imgWidth:cancel:" textureness:score contrast:v22 imgWidth:v23 cancel:?];
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