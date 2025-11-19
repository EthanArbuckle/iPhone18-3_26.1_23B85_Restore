@interface VCPImageSaliencyAnalyzer
+ (VCPImageSaliencyAnalyzer)analyzerWith:(int)a3 prune:(BOOL)a4;
- (VCPImageSaliencyAnalyzer)initWithMaxNumRegions:(int)a3 prune:(BOOL)a4;
- (float)computeScore:(float *)a3 width:(int)a4 height:(int)a5 posX:(int)a6 posY:(int)a7;
- (id).cxx_construct;
- (id)pruneRegions:(id)a3;
- (int)aggregateTileResults:(id)a3 tileRect:(CGRect)a4 imageSize:(CGSize)a5 landscape:(BOOL)a6 results:(id)a7;
- (int)analyzePixelBuffer:(__CVBuffer *)a3 flags:(unint64_t *)a4 results:(id *)a5 cancel:(id)a6;
- (int)copyImage:(__CVBuffer *)a3 toData:(float *)a4 withChunk:(int)a5;
- (int)generateSalientRegion:(float *)a3 outHeight:(int)a4 outWidth:(int)a5;
- (int)saliencyDetection:(__CVBuffer *)a3 salientRegions:(id)a4 cancel:(id)a5;
- (int)scaleImage:(__CVBuffer *)a3 toData:(float *)a4 withWidth:(int)a5 andHeight:(int)a6;
@end

@implementation VCPImageSaliencyAnalyzer

+ (VCPImageSaliencyAnalyzer)analyzerWith:(int)a3 prune:(BOOL)a4
{
  v4 = a4;
  v5 = *&a3;
  {
    +[VCPImageSaliencyAnalyzer analyzerWith:prune:]::analyzerClass = objc_opt_class();
  }

  if (+[VCPImageSaliencyAnalyzer analyzerWith:prune:]::once != -1)
  {
    +[VCPImageSaliencyAnalyzer analyzerWith:prune:];
  }

  v6 = [objc_alloc(+[VCPImageSaliencyAnalyzer analyzerWith:prune:]::analyzerClass) initWithMaxNumRegions:v5 prune:v4];

  return v6;
}

uint64_t __47__VCPImageSaliencyAnalyzer_analyzerWith_prune___block_invoke()
{
  result = +[VCPCNNMetalContext supportGPU];
  if (result)
  {
    +[VCPImageSaliencyAnalyzer analyzerWith:prune:]::analyzerClass = objc_opt_class();
    result = DeviceHasANE();
    if (result)
    {
      result = objc_opt_class();
      +[VCPImageSaliencyAnalyzer analyzerWith:prune:]::analyzerClass = result;
    }
  }

  return result;
}

- (VCPImageSaliencyAnalyzer)initWithMaxNumRegions:(int)a3 prune:(BOOL)a4
{
  v12.receiver = self;
  v12.super_class = VCPImageSaliencyAnalyzer;
  v6 = [(VCPImageSaliencyAnalyzer *)&v12 init];
  if (v6)
  {
    v7 = +[VCPCNNMetalContext supportGPU];
    if (+[VCPCNNMetalContext supportVectorForward])
    {
      v8 = 4;
    }

    else
    {
      v8 = 1;
    }

    if (v7)
    {
      v8 = 1;
    }

    v6->_chunk = v8;
    if (a3 >= 5)
    {
      v9 = 5;
    }

    else
    {
      v9 = a3;
    }

    if (a3 <= 1)
    {
      v9 = 1;
    }

    v6->_maxNumRegions = v9;
    v6->_prune = a4;
    v10 = v6;
  }

  return v6;
}

- (int)copyImage:(__CVBuffer *)a3 toData:(float *)a4 withChunk:(int)a5
{
  v43 = *MEMORY[0x1E69E9840];
  if (CVPixelBufferGetPixelFormatType(a3) != 1111970369)
  {
    return -50;
  }

  Width = CVPixelBufferGetWidth(a3);
  Height = CVPixelBufferGetHeight(a3);
  pixelBuffer = a3;
  unlockFlags = 1;
  if (!a3)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      [VCPVideoCNNAnalyzer copyImage:withChannels:settling:];
    }

    return -50;
  }

  v10 = Height;
  v11 = CVPixelBufferLockBaseAddress(a3, 1uLL);
  v36 = v11;
  if (!v11 || (v12 = v11, os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR)) && (*buf = 134218240, v40 = a3, v41 = 1024, v42 = v12, _os_log_error_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Failed to lock CVPixelBuffer (%p, %d)", buf, 0x12u), (v12 = v36) == 0))
  {
    BaseAddress = CVPixelBufferGetBaseAddress(a3);
    BytesPerRow = CVPixelBufferGetBytesPerRow(a3);
    if (a5 == 4)
    {
      bzero(a4, 16 * Width * v10);
      if (v10 >= 1)
      {
        v16 = 0;
        v17 = a4 + 3;
        v18 = a4 + 2;
        v19 = a4 + 1;
        v20 = 4 * Width;
        do
        {
          if (Width >= 1)
          {
            v21 = 0;
            v22 = Width & 0x7FFFFFFF;
            do
            {
              LOBYTE(v15) = BaseAddress[v21 + 2];
              *&v23 = LODWORD(v15) / 255.0;
              a4[v21] = *&v23;
              LOBYTE(v23) = BaseAddress[v21 + 1];
              *&v24 = v23 / 255.0;
              v19[v21] = *&v24;
              LOBYTE(v24) = BaseAddress[v21];
              v15 = v24 / 255.0;
              v18[v21] = v15;
              v17[v21] = 0.0;
              v21 += 4;
              --v22;
            }

            while (v22);
          }

          a4 += v20;
          v19 += v20;
          v18 += v20;
          BaseAddress += BytesPerRow;
          ++v16;
          v17 += v20;
        }

        while (v16 != v10);
      }
    }

    else
    {
      bzero(a4, 16 * Width * v10);
      if (v10 >= 1)
      {
        v27 = 0;
        v28 = &a4[3 * v10 * Width];
        v29 = &a4[2 * v10 * Width];
        v30 = &a4[v10 * Width];
        v31 = 4 * Width;
        do
        {
          if (Width >= 1)
          {
            v32 = 0;
            v33 = Width & 0x7FFFFFFF;
            do
            {
              LOBYTE(v26) = BaseAddress[(v32 * 4) + 2];
              *&v34 = LODWORD(v26) / 255.0;
              a4[v32] = *&v34;
              LOBYTE(v34) = BaseAddress[(v32 * 4) + 1];
              *&v35 = v34 / 255.0;
              v30[v32] = *&v35;
              LOBYTE(v35) = BaseAddress[(v32 * 4)];
              v26 = v35 / 255.0;
              v29[v32] = v26;
              v28[v32++] = 0.0;
              --v33;
            }

            while (v33);
          }

          BaseAddress += BytesPerRow;
          ++v27;
          v28 = (v28 + v31);
          v29 = (v29 + v31);
          v30 = (v30 + v31);
          a4 = (a4 + v31);
        }

        while (v27 != v10);
      }
    }

    v12 = CVPixelBufferLock::Unlock(&v36);
    if (pixelBuffer && !v36 && CVPixelBufferUnlockBaseAddress(pixelBuffer, unlockFlags) && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      [VCPImageExposurePreAnalyzer analyzePixelBuffer:flags:results:cancel:];
    }
  }

  return v12;
}

- (int)scaleImage:(__CVBuffer *)a3 toData:(float *)a4 withWidth:(int)a5 andHeight:(int)a6
{
  if (!a4)
  {
    return -50;
  }

  cf = 0;
  Scaler::Scale(&self->_scaler, a3, &cf, *&a5, *&a6, 1111970369);
  v9 = v8;
  if (!v8)
  {
    v9 = [(VCPImageSaliencyAnalyzer *)self copyImage:cf toData:a4 withChunk:self->_chunk];
  }

  if (cf)
  {
    CFRelease(cf);
  }

  return v9;
}

- (float)computeScore:(float *)a3 width:(int)a4 height:(int)a5 posX:(int)a6 posY:(int)a7
{
  v49 = *MEMORY[0x1E69E9840];
  memset(v48, 0, sizeof(v48));
  v44 = a5 - 1;
  if (a5 < 1)
  {
    v13 = 0.0;
    v11 = 0.0;
  }

  else
  {
    v8 = 0;
    v9 = (a4 * a4 + a5 * a5);
    v46 = a4;
    v10 = a5;
    v45 = -a6;
    v11 = 0.0;
    v12 = a3;
    v13 = 0.0;
    do
    {
      if (a4 >= 1)
      {
        if (v8 - a7 >= 0)
        {
          v14 = v8 - a7;
        }

        else
        {
          v14 = a7 - v8;
        }

        v15 = v46;
        v16 = v45;
        v17 = v12;
        do
        {
          v18 = *v17;
          if (v16 >= 0)
          {
            v19 = v16;
          }

          else
          {
            v19 = -v16;
          }

          if (v14 > 2 || v19 >= 3)
          {
            v20 = sqrtf(((v8 - a7) * (v8 - a7) + v16 * v16));
            v11 = v11 + (((1.0 - expf((((v20 + -2.0) * (v20 + -2.0)) * -5.0) / v9)) * v18) * v18);
          }

          else
          {
            v13 = v13 + (v18 * v18);
          }

          ++v17;
          ++v16;
          --v15;
        }

        while (v15);
      }

      ++v8;
      v12 += a4;
    }

    while (v8 != v10);
  }

  if (a7 <= 2)
  {
    v21 = 2;
  }

  else
  {
    v21 = a7;
  }

  v22 = a7 + 2;
  if (v44 < a7 + 2)
  {
    v22 = v44;
  }

  if (v21 - 2 <= v22)
  {
    if (a6 <= 2)
    {
      v23 = 2;
    }

    else
    {
      v23 = a6;
    }

    v24 = v23 - 2;
    v25 = a6 + 2;
    if (a4 - 1 < a6 + 2)
    {
      v25 = a4 - 1;
    }

    v26 = v21 - 2;
    v27 = v22 + 1;
    v28 = &a3[v26 * a4 - 2 + v23];
    v29 = v25 - v23 + 3;
    do
    {
      v30 = v29;
      v31 = v28;
      if (v24 <= v25)
      {
        do
        {
          v32 = *v31++;
          v33 = (v32 * 255.0);
          if (v33 >= 255)
          {
            v33 = 255;
          }

          ++*(v48 + (v33 & ~(v33 >> 31)));
          --v30;
        }

        while (v30);
      }

      ++v26;
      v28 += a4;
    }

    while (v27 != v26);
  }

  v34 = 0;
  v35 = 0.0;
  v36 = 255;
  do
  {
    v37 = 12 - v34;
    if (12 - v34 >= *(v48 + v36))
    {
      v37 = *(v48 + v36);
    }

    v35 = v35 + (v36 * v36 * v37);
    v34 += v37;
    if (!v36)
    {
      break;
    }

    --v36;
  }

  while (v34 < 0xC);
  if (v34)
  {
    v35 = sqrtf(v35 / v34) / 255.0;
  }

  v38 = ((v13 / ((v13 + v11) + 0.001)) + 0.2) * (v35 * 2.5);
  v39 = 1.0;
  if (v38 < 1.0)
  {
    v39 = v38;
  }

  v40 = v38 > 0.0;
  result = 0.0;
  if (v40)
  {
    return v39;
  }

  return result;
}

- (int)generateSalientRegion:(float *)a3 outHeight:(int)a4 outWidth:(int)a5
{
  v5 = *&a5;
  *&v92[28] = *MEMORY[0x1E69E9840];
  [(VCPImageSaliencyAnalyzer *)self outputScaling];
  if (!a3)
  {
    return -18;
  }

  v10 = v9;
  v82 = self;
  v11 = 4 * v5 * a4;
  if (v5 * a4 < 0)
  {
    v12 = -1;
  }

  else
  {
    v12 = 4 * v5 * a4;
  }

  v13 = MEMORY[0x1E69E5398];
  v14 = operator new[](v12, MEMORY[0x1E69E5398]);
  v15 = operator new[](v12, v13);
  v16 = v15;
  if (v14)
  {
    _ZF = v15 == 0;
  }

  else
  {
    _ZF = 1;
  }

  if (_ZF)
  {
    v18 = -108;
  }

  else
  {
    v89 = v5;
    v19 = (a4 * a4 + v5 * v5);
    bzero(v14, v11);
    v20 = 0;
    v21 = v92;
    __asm { FMOV            V0.4S, #0.25 }

    v85 = _Q0;
    do
    {
      v26.i32[0] = v20 * v20;
      v26.i32[1] = v20 * v20 + 1;
      v26.u64[1] = vadd_s32(vdup_n_s32(v20 * v20), 0x900000004);
      v27 = vcvtq_f32_u32(v26);
      v26.i64[0] = 0xC0000000C0000000;
      v26.i64[1] = 0xC0000000C0000000;
      v90 = vmulq_f32(vmulq_f32(v27, v26), v85);
      v28 = expf(v90.f32[2]);
      v87 = expf(v90.f32[0]);
      *(v21 - 1) = __PAIR64__(COERCE_UNSIGNED_INT(expf(v90.f32[1])), LODWORD(v87));
      *v21 = v28;
      v21 += 3;
      ++v20;
    }

    while (v20 != 3);
    if (a4 >= 1)
    {
      v29 = 0;
      v30 = 0;
      v31 = v14;
      do
      {
        if (v89 >= 1)
        {
          chunk = v82->_chunk;
          v33 = &a3[chunk * v30];
          v34 = 4 * chunk;
          v30 += v89;
          v35 = v89;
          v36 = v31;
          do
          {
            *v36++ = *v33 / v10;
            v33 = (v33 + v34);
            --v35;
          }

          while (v35);
        }

        ++v29;
        v31 += v89;
      }

      while (v29 != a4);
    }

    memcpy(v16, v14, v11);
    if (v82->_maxNumRegions >= 1)
    {
      v37 = 0;
      v86 = (a4 - 2);
      v38 = v89;
      v84 = a4 / -2;
      v78 = a4;
      v76 = 5.0 / a4;
      v77 = 5.0 / v89;
      v39 = 4 * v89;
      v79 = v14;
      v80 = v16;
      v81 = a4;
      while (a4 >= 5)
      {
        v83 = v37;
        v40 = 0;
        v41 = 0;
        v42 = 0.0;
        v43 = v16;
        v44 = 2;
        do
        {
          v88 = v43;
          if (v38 >= 5)
          {
            v45 = 2;
            do
            {
              v46 = 0.0;
              v47 = -2;
              v48 = v43;
              do
              {
                v49 = 0;
                if (v47 >= 0)
                {
                  v50 = v47;
                }

                else
                {
                  v50 = -v47;
                }

                v51 = -2;
                v52 = &v91[3 * v50];
                do
                {
                  if (v51 >= 0)
                  {
                    v53 = v51;
                  }

                  else
                  {
                    v53 = -v51;
                  }

                  v46 = v46 + ((*&v48[v49] * *&v52[v53]) * *&v48[v49]);
                  v49 += 4;
                  ++v51;
                }

                while (v49 != 20);
                ++v47;
                v48 += v39;
              }

              while (v47 != 3);
              v54 = expf((((v84 + v44) * (v84 + v44) + (v89 / -2 + v45) * (v89 / -2 + v45)) * -2.0) / v19) * v46;
              if (v42 >= v54)
              {
                v41 = v41;
              }

              else
              {
                v41 = v44;
              }

              if (v42 >= v54)
              {
                v40 = v40;
              }

              else
              {
                v40 = v45;
              }

              if (v42 < v54)
              {
                v42 = v54;
              }

              ++v45;
              v43 += 4;
            }

            while (v45 != v89 - 2);
          }

          ++v44;
          v43 = &v88[v39];
          v38 = v89;
        }

        while (v44 != v86);
        if (v42 == 0.0)
        {
          v18 = 0;
          v14 = v79;
          v16 = v80;
          goto LABEL_77;
        }

        v14 = v79;
        [(VCPImageSaliencyAnalyzer *)v82 computeScore:v79 width:v89 height:v81 posX:v40 posY:v41];
        v82->_score[v83] = v55;
        if (v55 == 0.0)
        {
          v58 = v41 - 2;
          v56 = v40 - 2;
        }

        else
        {
          v56 = v40 - 2;
          v57 = (v40 - 2) / v89;
          v58 = v41 - 2;
          v59 = (v41 - 2) / v78;
          v60 = v57;
          v61 = v59;
          if (v57 < 1.0)
          {
            v62 = v57;
          }

          else
          {
            v62 = 1.0;
          }

          if (v57 <= 0.0)
          {
            v63 = 0.0;
          }

          else
          {
            v63 = v62;
          }

          if (v61 < 1.0)
          {
            v64 = v59;
          }

          else
          {
            v64 = 1.0;
          }

          if (v59 <= 0.0)
          {
            v65 = 0.0;
          }

          else
          {
            v65 = v64;
          }

          v66 = 1.0 - v60;
          if (v66 > v77)
          {
            v66 = v77;
          }

          if (v77 <= 0.0)
          {
            v66 = 0.0;
          }

          v67 = 1.0 - v61;
          if (v67 > v76)
          {
            v67 = v76;
          }

          p_x = &v82->_region[v83].origin.x;
          *p_x = v63;
          p_x[1] = v65;
          if (v76 <= 0.0)
          {
            v69 = 0.0;
          }

          else
          {
            v69 = v67;
          }

          p_x[2] = v66;
          p_x[3] = v69;
        }

        v16 = v80;
        v70 = v41 + 2;
        v71 = v40 + 2;
        if (v56 > v40 + 2)
        {
          v71 = v56;
        }

        v72 = 4 * (v71 - v40 + 2);
        v73 = v56 + v58 * v89;
        v74 = v58 - 1;
        do
        {
          bzero(&v80[4 * v73], v72 + 4);
          v38 = v89;
          v73 += v89;
          ++v74;
        }

        while (v74 < v70);
        v37 = v83 + 1;
        a4 = v81;
        if (v83 + 1 >= v82->_maxNumRegions)
        {
          break;
        }
      }
    }

    v18 = 0;
  }

LABEL_77:
  if (v14)
  {
    MEMORY[0x1CCA95C10](v14, 0x1000C8052888210);
  }

  if (v16)
  {
    MEMORY[0x1CCA95C10](v16, 0x1000C8052888210);
  }

  return v18;
}

- (int)saliencyDetection:(__CVBuffer *)a3 salientRegions:(id)a4 cancel:(id)a5
{
  v32[2] = *MEMORY[0x1E69E9840];
  v8 = a4;
  v9 = a5;
  v10 = 0;
  score = self->_score;
  v12 = MEMORY[0x1E695F058];
  do
  {
    v13 = &self->_region[v10];
    v14 = v12[1];
    v13->origin = *v12;
    v13->size = v14;
    score[v10++] = 0.0;
  }

  while (v10 != 5);
  v15 = objc_autoreleasePoolPush();
  Width = CVPixelBufferGetWidth(a3);
  Height = CVPixelBufferGetHeight(a3);
  v18 = Height;
  if (Width <= Height)
  {
    v19 = Height;
  }

  else
  {
    v19 = Width;
  }

  v30 = 0;
  if (v19 >= 225)
  {
    Width = (224 * Width / v19) & 0xFFFFFFFE;
    v18 = (224 * Height / v19) & 0xFFFFFFFE;
  }

  if (v18 >= Width)
  {
    v20 = Width;
  }

  else
  {
    v20 = v18;
  }

  if (v20 < 112)
  {
    goto LABEL_12;
  }

  v21 = [(VCPImageSaliencyAnalyzer *)self prepareModelForSourceWidth:Width andSourceHeight:v18];
  if (!v21)
  {
    v22 = [(VCPImageSaliencyAnalyzer *)self getInputBuffer:v18 srcWidth:Width cnnInputHeight:&v30 cnnInputWidth:&v30 + 4];
    v21 = [(VCPImageSaliencyAnalyzer *)self scaleImage:a3 toData:v22 withWidth:HIDWORD(v30) andHeight:v30];
    if (!v21)
    {
      v21 = [(VCPImageSaliencyAnalyzer *)self getSalientRegions:v9];
      if (!v21)
      {
        if (self->_maxNumRegions < 1)
        {
LABEL_12:
          v21 = 0;
          goto LABEL_21;
        }

        v23 = 0;
        p_size = &self->_region[0].size;
        do
        {
          if (!CGRectIsEmpty(*&p_size[-1].width))
          {
            v31[0] = @"salientRegion";
            v25 = NSStringFromRect(*&p_size[-1].width);
            v31[1] = @"salientScore";
            v32[0] = v25;
            *&v26 = score[v23];
            v27 = [MEMORY[0x1E696AD98] numberWithFloat:v26];
            v32[1] = v27;
            v28 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v32 forKeys:v31 count:2];
            [v8 addObject:v28];
          }

          v21 = 0;
          ++v23;
          p_size += 2;
        }

        while (v23 < self->_maxNumRegions);
      }
    }
  }

LABEL_21:
  objc_autoreleasePoolPop(v15);

  return v21;
}

- (int)aggregateTileResults:(id)a3 tileRect:(CGRect)a4 imageSize:(CGSize)a5 landscape:(BOOL)a6 results:(id)a7
{
  v8 = a6;
  height = a5.height;
  width = a5.width;
  v11 = a4.size.height;
  v12 = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v47 = *MEMORY[0x1E69E9840];
  v15 = a3;
  v39 = a7;
  if (v8)
  {
    v16 = v12 / width;
    v17 = x / width;
  }

  else
  {
    v16 = v11 / height;
    v17 = y / height;
  }

  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  v18 = v15;
  v19 = [v18 countByEnumeratingWithState:&v40 objects:v46 count:16];
  if (v19)
  {
    v20 = v16;
    v21 = v17;
    v22 = *v41;
    v23 = v20;
    v24 = v21;
    do
    {
      for (i = 0; i != v19; ++i)
      {
        if (*v41 != v22)
        {
          objc_enumerationMutation(v18);
        }

        v26 = *(*(&v40 + 1) + 8 * i);
        v27 = [v26 objectForKeyedSubscript:@"salientRegion"];
        if (v27)
        {
          v28 = [v26 objectForKeyedSubscript:@"salientScore"];
          v29 = v28 == 0;

          if (!v29)
          {
            v30 = [v26 objectForKeyedSubscript:@"salientRegion"];
            v48 = NSRectFromString(v30);
            v31 = v48.origin.x;
            v32 = v48.origin.y;
            v33 = v48.size.width;
            v34 = v48.size.height;

            if (v8)
            {
              v31 = v24 + v31 * v23;
              v33 = v33 * v23;
            }

            else
            {
              v32 = v24 + v32 * v23;
              v34 = v34 * v23;
            }

            v44[0] = @"salientRegion";
            v49.origin.x = v31;
            v49.origin.y = v32;
            v49.size.width = v33;
            v49.size.height = v34;
            v35 = NSStringFromRect(v49);
            v44[1] = @"salientScore";
            v45[0] = v35;
            v36 = [v26 objectForKeyedSubscript:@"salientScore"];
            v45[1] = v36;
            v37 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v45 forKeys:v44 count:2];
            [v39 addObject:v37];
          }
        }
      }

      v19 = [v18 countByEnumeratingWithState:&v40 objects:v46 count:16];
    }

    while (v19);
  }

  return 0;
}

- (id)pruneRegions:(id)a3
{
  v38 = *MEMORY[0x1E69E9840];
  v25 = a3;
  v26 = [MEMORY[0x1E695DF70] array];
  v28 = [MEMORY[0x1E695DF70] arrayWithArray:v25];
  if (self->_maxNumRegions >= 1)
  {
    v29 = 0;
    do
    {
      if (![v28 count])
      {
        break;
      }

      v31 = minConfidences[v29];
      v3 = *(MEMORY[0x1E695F058] + 8);
      rect[0] = *MEMORY[0x1E695F058];
      v4 = *(MEMORY[0x1E695F058] + 16);
      v5 = *(MEMORY[0x1E695F058] + 24);
      v6 = [MEMORY[0x1E695DF70] array];
      v33 = 0u;
      v34 = 0u;
      memset(&rect[1], 0, 32);
      v7 = v28;
      v8 = [v7 countByEnumeratingWithState:&rect[1] objects:v37 count:16];
      if (v8)
      {
        v9 = *rect[3];
        v30 = 0.0;
        do
        {
          for (i = 0; i != v8; ++i)
          {
            if (*rect[3] != v9)
            {
              objc_enumerationMutation(v7);
            }

            v11 = *(rect[2] + 8 * i);
            v12 = [v11 objectForKeyedSubscript:@"salientRegion"];
            v40 = NSRectFromString(v12);
            x = v40.origin.x;
            y = v40.origin.y;
            width = v40.size.width;
            height = v40.size.height;

            v17 = [v11 objectForKeyedSubscript:@"salientScore"];
            [v17 floatValue];
            v19 = v18;

            *&v41.origin.x = rect[0];
            v41.origin.y = v3;
            v41.size.width = v4;
            v41.size.height = v5;
            if (CGRectIsEmpty(v41))
            {
              if (v19 > v31)
              {
                [v6 addObject:v11];
                v30 = v19;
                *rect = x;
                v3 = y;
                v4 = width;
                v5 = height;
              }
            }

            else if (v19 > 0.3)
            {
              *&v42.origin.x = rect[0];
              v42.origin.y = v3;
              v42.size.width = v4;
              v42.size.height = v5;
              v47.origin.x = x;
              v47.origin.y = y;
              v47.size.width = width;
              v47.size.height = height;
              if (CGRectIntersectsRect(v42, v47))
              {
                *&v43.origin.x = rect[0];
                v43.origin.y = v3;
                v43.size.width = v4;
                v43.size.height = v5;
                v48.origin.x = x;
                v48.origin.y = y;
                v48.size.width = width;
                v48.size.height = height;
                v44 = CGRectUnion(v43, v48);
                rect[0] = *&v44.origin.x;
                v3 = v44.origin.y;
                v4 = v44.size.width;
                v5 = v44.size.height;
                [v6 addObject:v11];
              }
            }
          }

          v8 = [v7 countByEnumeratingWithState:&rect[1] objects:v37 count:16];
        }

        while (v8);
      }

      else
      {
        v30 = 0.0;
      }

      *&v45.origin.x = rect[0];
      v45.origin.y = v3;
      v45.size.width = v4;
      v45.size.height = v5;
      if (!CGRectIsEmpty(v45))
      {
        v35[0] = @"salientScore";
        *&v20 = v30;
        v21 = [MEMORY[0x1E696AD98] numberWithFloat:v20];
        v35[1] = @"salientRegion";
        v36[0] = v21;
        *&v46.origin.x = rect[0];
        v46.origin.y = v3;
        v46.size.width = v4;
        v46.size.height = v5;
        v22 = NSStringFromRect(v46);
        v36[1] = v22;
        v23 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v36 forKeys:v35 count:2];
        [v26 addObject:v23];
      }

      [v7 removeObjectsInArray:v6];

      ++v29;
    }

    while (v29 < self->_maxNumRegions);
  }

  return v26;
}

- (int)analyzePixelBuffer:(__CVBuffer *)a3 flags:(unint64_t *)a4 results:(id *)a5 cancel:(id)a6
{
  v51 = *MEMORY[0x1E69E9840];
  v33 = a6;
  v8 = 0;
  *a5 = 0;
  v9 = MEMORY[0x1E695F058];
  do
  {
    v10 = &self->_region[v8];
    v11 = v9[1];
    v10->origin = *v9;
    v10->size = v11;
    self->_score[v8++] = 0.0;
  }

  while (v8 != 5);
  Width = CVPixelBufferGetWidth(a3);
  Height = CVPixelBufferGetHeight(a3);
  v34 = [MEMORY[0x1E695DF70] array];
  if (Height >= Width)
  {
    v14 = Width;
  }

  else
  {
    v14 = Height;
  }

  if (Width <= Height)
  {
    v15 = Height;
  }

  else
  {
    v15 = Width;
  }

  if ((v15 / v14) <= 2.0)
  {
    v16 = [(VCPImageSaliencyAnalyzer *)self saliencyDetection:a3 salientRegions:v34 cancel:v33];
  }

  else
  {
    v16 = [(VCPImageAnalyzer *)self analyzePixelBufferInTiles:a3 results:v34 cancel:v33];
  }

  v17 = v16;
  if (!v16)
  {
    [v34 sortUsingComparator:&__block_literal_global_202];
    v18 = v34;
    v19 = v18;
    if (self->_prune)
    {
      v20 = [(VCPImageSaliencyAnalyzer *)self pruneRegions:v18];

      obj = v20;
    }

    else
    {
      obj = v18;
    }

    v38 = [MEMORY[0x1E695DF70] array];
    v42 = 0u;
    v43 = 0u;
    v40 = 0u;
    v41 = 0u;
    obja = obj;
    v21 = [obja countByEnumeratingWithState:&v40 objects:v50 count:16];
    if (v21)
    {
      v31 = 0;
      v37 = *v41;
LABEL_18:
      v22 = 0;
      v23 = v31;
      v31 += v21;
      while (1)
      {
        if (*v41 != v37)
        {
          objc_enumerationMutation(obja);
        }

        if (v23 >= self->_maxNumRegions)
        {
          break;
        }

        v24 = *(*(&v40 + 1) + 8 * v22);
        v25 = [v24 objectForKeyedSubscript:@"salientRegion"];
        v52 = NSRectFromString(v25);
        v39.a = 1.0;
        v39.b = 0.0;
        v39.c = 0.0;
        *&v39.d = xmmword_1C9F60600;
        v39.ty = 1.0;
        v53 = CGRectApplyAffineTransform(v52, &v39);
        v48 = @"attributes";
        v46[0] = @"saliencyBounds";
        v26 = NSStringFromRect(v53);
        v46[1] = @"saliencyConfidence";
        v47[0] = v26;
        v27 = [v24 objectForKeyedSubscript:@"salientScore"];
        v47[1] = v27;
        v28 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v47 forKeys:v46 count:2];
        v49 = v28;
        v29 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v49 forKeys:&v48 count:1];
        [v38 addObject:v29];

        ++v23;
        if (v21 == ++v22)
        {
          v21 = [obja countByEnumeratingWithState:&v40 objects:v50 count:16];
          if (v21)
          {
            goto LABEL_18;
          }

          break;
        }
      }
    }

    if ([v38 count])
    {
      v44 = @"SaliencyResults";
      v45 = v38;
      *a5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v45 forKeys:&v44 count:1];
    }

    v17 = 0;
  }

  return v17;
}

uint64_t __68__VCPImageSaliencyAnalyzer_analyzePixelBuffer_flags_results_cancel___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 objectForKeyedSubscript:@"salientScore"];
  [v5 floatValue];
  v7 = v6;

  v8 = [v4 objectForKeyedSubscript:@"salientScore"];
  [v8 floatValue];
  v10 = v9;

  if (v7 > v10)
  {
    v11 = -1;
  }

  else
  {
    v11 = v7 < v10;
  }

  return v11;
}

- (id).cxx_construct
{
  *(self + 31) = 0;
  *(self + 64) = 0;
  return self;
}

@end