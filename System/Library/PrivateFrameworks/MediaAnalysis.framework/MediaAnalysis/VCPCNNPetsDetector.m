@interface VCPCNNPetsDetector
+ (id)detector:(int)a3;
- (id).cxx_construct;
- (int)copyImage:(__CVBuffer *)a3 toData:(float *)a4 withChannels:(int)a5;
- (int)createInput:(float *)a3 withBuffer:(__CVBuffer *)a4 cnnInputHeight:(int)a5 cnnInputWidth:(int)a6;
- (int)generatePetsRegions:(float *)a3 outHeight:(int)a4 outWidth:(int)a5 boxes:(id)a6 faceBoxes:(id)a7 maxNumRegions:(int)a8;
- (int)petsDetection:(__CVBuffer *)a3 petsRegions:(id)a4 petsFaceRegions:(id)a5 cancel:(id)a6;
- (int)postProcBoxes:(id)a3 maxNumRegions:(int)a4;
- (void)nonMaxSuppression:(id)a3;
@end

@implementation VCPCNNPetsDetector

+ (id)detector:(int)a3
{
  v3 = *&a3;
  if (+[VCPCNNPetsDetector detector:]::once != -1)
  {
    +[VCPCNNPetsDetector detector:];
  }

  v4 = [objc_alloc(+[VCPCNNPetsDetector detector:]::analyzerClass) initWithMaxNumRegions:v3];

  return v4;
}

uint64_t __31__VCPCNNPetsDetector_detector___block_invoke()
{
  result = objc_opt_class();
  +[VCPCNNPetsDetector detector:]::analyzerClass = result;
  return result;
}

- (int)copyImage:(__CVBuffer *)a3 toData:(float *)a4 withChannels:(int)a5
{
  v42 = *MEMORY[0x1E69E9840];
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
  v35 = v11;
  if (!v11 || (v12 = v11, os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR)) && (*buf = 134218240, v39 = a3, v40 = 1024, v41 = v12, _os_log_error_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Failed to lock CVPixelBuffer (%p, %d)", buf, 0x12u), (v12 = v35) == 0))
  {
    BaseAddress = CVPixelBufferGetBaseAddress(a3);
    BytesPerRow = CVPixelBufferGetBytesPerRow(a3);
    if (a5 == 3)
    {
      bzero(a4, 3 * 4 * Width * v10);
      if (v10 >= 1)
      {
        v16 = 0;
        v17 = &a4[2 * v10 * Width];
        v18 = &a4[v10 * Width];
        v19 = 4 * Width;
        do
        {
          if (Width >= 1)
          {
            v20 = 0;
            v21 = Width & 0x7FFFFFFF;
            do
            {
              LOBYTE(v15) = BaseAddress[(v20 * 4) + 2];
              *&v22 = ((LODWORD(v15) / 255.0) + -0.485) / 0.229;
              a4[v20] = *&v22;
              LOBYTE(v22) = BaseAddress[(v20 * 4) + 1];
              *&v23 = ((v22 / 255.0) + -0.456) / 0.224;
              v18[v20] = *&v23;
              LOBYTE(v23) = BaseAddress[(v20 * 4)];
              v15 = ((v23 / 255.0) + -0.406) / 0.225;
              v17[v20++] = v15;
              --v21;
            }

            while (v21);
          }

          BaseAddress += BytesPerRow;
          ++v16;
          v17 = (v17 + v19);
          v18 = (v18 + v19);
          a4 = (a4 + v19);
        }

        while (v16 != v10);
      }
    }

    else
    {
      bzero(a4, 16 * Width * v10);
      if (v10 >= 1)
      {
        v26 = 0;
        v27 = &a4[3 * v10 * Width];
        v28 = &a4[2 * v10 * Width];
        v29 = &a4[v10 * Width];
        v30 = 4 * Width;
        do
        {
          if (Width >= 1)
          {
            v31 = 0;
            v32 = Width & 0x7FFFFFFF;
            do
            {
              LOBYTE(v25) = BaseAddress[(v31 * 4) + 2];
              *&v33 = LODWORD(v25) / 255.0;
              a4[v31] = *&v33;
              LOBYTE(v33) = BaseAddress[(v31 * 4) + 1];
              *&v34 = v33 / 255.0;
              v29[v31] = *&v34;
              LOBYTE(v34) = BaseAddress[(v31 * 4)];
              v25 = v34 / 255.0;
              v28[v31] = v25;
              v27[v31++] = 0.0;
              --v32;
            }

            while (v32);
          }

          BaseAddress += BytesPerRow;
          ++v26;
          v27 = (v27 + v30);
          v28 = (v28 + v30);
          v29 = (v29 + v30);
          a4 = (a4 + v30);
        }

        while (v26 != v10);
      }
    }

    v12 = CVPixelBufferLock::Unlock(&v35);
    if (pixelBuffer && !v35 && CVPixelBufferUnlockBaseAddress(pixelBuffer, unlockFlags) && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      [VCPImageExposurePreAnalyzer analyzePixelBuffer:flags:results:cancel:];
    }
  }

  return v12;
}

- (int)createInput:(float *)a3 withBuffer:(__CVBuffer *)a4 cnnInputHeight:(int)a5 cnnInputWidth:(int)a6
{
  if (!a3)
  {
    return -108;
  }

  cf = 0;
  Scaler::Scale(&self->_scaler, a4, &cf, *&a6, *&a5, 1111970369);
  v9 = v8;
  if (!v8)
  {
    v9 = [(VCPCNNPetsDetector *)self copyImage:cf toData:a3 withChannels:3];
  }

  if (cf)
  {
    CFRelease(cf);
  }

  return v9;
}

- (void)nonMaxSuppression:(id)a3
{
  v19 = a3;
  v3 = [v19 count];
  if (v3)
  {
    for (i = 0; i != v3; ++i)
    {
      v5 = [v19 objectAtIndexedSubscript:i];
      LODWORD(v6) = 1.0;
      [v5 setFlag:v6];
    }

    v7 = 0;
    v8 = 1;
    do
    {
      v9 = [v19 objectAtIndexedSubscript:v7];
      [v9 flag];
      v11 = v10 == 1.0 && v3 > ++v7;
      v12 = v8;
      if (v11)
      {
        do
        {
          v13 = [v19 objectAtIndexedSubscript:v12];
          [v13 flag];
          if (v14 == 1.0)
          {
            [v9 computeIntersectionOverUnion:v13];
            if (v15 > 0.4)
            {
              [v9 confidence];
              v17 = v16;
              [v13 confidence];
              if (v17 <= v18)
              {
                [v9 setFlag:0.0];

                break;
              }

              [v13 setFlag:0.0];
            }
          }

          ++v12;
        }

        while (v3 > v12);
      }

      ++v8;
    }

    while (v7 != v3);
  }
}

- (int)generatePetsRegions:(float *)a3 outHeight:(int)a4 outWidth:(int)a5 boxes:(id)a6 faceBoxes:(id)a7 maxNumRegions:(int)a8
{
  v64 = a6;
  v63 = a7;
  if (a4 >= 1)
  {
    v61 = 0;
    v57 = &a3[36 * a5 * a4];
    v65 = 4 * a5 * a4;
    v10 = a5 * a4;
    v59 = a4;
    do
    {
      if (a5 >= 1)
      {
        v11 = 0;
        v66 = ((32 * v61) | 0x10);
        do
        {
          v12 = 0;
          v13 = &v57[v61 * a5 + v11];
          v14 = &a3[v61 * a5 + v11];
          v62 = v11;
          v67 = ((32 * v11) | 0x10);
          v15 = 9;
          v16 = &unk_1C9F606FC;
          do
          {
            v17 = v12;
            v18 = (v13 + 4 * v12);
            v19 = fmaxf(*v18, v18[v10]);
            if (v19 > 0.2)
            {
              v20 = &v14[v12];
              v22 = *(v16 - 1);
              v21 = *v16;
              v23 = v20[v10];
              v24 = *v20;
              v25 = v20[2 * v10];
              v26 = v20[3 * v10];
              v27 = [VCPBoundingBox alloc];
              v28 = expf(v26 * 0.2);
              v29 = v22 * expf(v25 * 0.2);
              *&v30 = 1.0 / (expf(-v19) + 1.0);
              *&v31 = v67 + ((v24 * 0.1) * v22);
              *&v32 = v66 + ((v23 * 0.1) * v21);
              *&v33 = v29;
              *&v34 = v21 * v28;
              v35 = [(VCPBoundingBox *)v27 initWithCenterAndSize:v31 y:v32 width:v33 height:v34 confidence:v30];
              [v64 addObject:v35];
            }

            v36 = fmaxf(v18[2 * v10], v18[3 * v10]);
            if (v36 > 0.2)
            {
              v37 = &v14[v17];
              v39 = *(v16 - 1);
              v38 = *v16;
              v40 = v37[v10];
              v41 = *v37;
              v42 = v37[2 * v10];
              v43 = v37[3 * v10];
              v44 = [VCPBoundingBox alloc];
              v45 = expf(v43 * 0.2);
              v46 = v39 * expf(v42 * 0.2);
              *&v47 = 1.0 / (expf(-v36) + 1.0);
              *&v48 = v67 + ((v41 * 0.1) * v39);
              *&v49 = v66 + ((v40 * 0.1) * v38);
              *&v50 = v46;
              *&v51 = v38 * v45;
              v52 = [(VCPBoundingBox *)v44 initWithCenterAndSize:v48 y:v49 width:v50 height:v51 confidence:v47];
              [v63 addObject:v52];
            }

            v16 += 2;
            v12 = v17 + v65;
            --v15;
          }

          while (v15);
          v11 = v62 + 1;
        }

        while (v62 + 1 != a5);
      }

      ++v61;
    }

    while (v61 != v59);
  }

  v53 = self;
  [(VCPCNNPetsDetector *)self postProcBoxes:v64 maxNumRegions:a8, self];
  [(VCPCNNPetsDetector *)v53 postProcBoxes:v63 maxNumRegions:a8];

  return 0;
}

- (int)postProcBoxes:(id)a3 maxNumRegions:(int)a4
{
  LODWORD(i) = a4;
  v6 = a3;
  [(VCPCNNPetsDetector *)self nonMaxSuppression:v6];
  [v6 sortUsingComparator:&__block_literal_global_191];
  if ([v6 count] > i)
  {
    for (i = i; [v6 count] > i; ++i)
    {
      [v6 removeLastObject];
    }
  }

  v7 = [v6 lastObject];
  if (v7)
  {
    do
    {
      [v7 flag];
      if (v8 != 0.0)
      {
        break;
      }

      [v6 removeLastObject];
      v9 = [v6 lastObject];

      v7 = v9;
    }

    while (v9);
  }

  return 0;
}

uint64_t __50__VCPCNNPetsDetector_postProcBoxes_maxNumRegions___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = v4;
  v7 = v5;
  [v6 flag];
  v9 = v8;
  [v7 flag];
  if (v9 <= v10)
  {
    [v6 flag];
    v13 = v12;
    [v7 flag];
    if (v13 >= v14)
    {
      [v6 confidence];
      v16 = v15;
      [v7 confidence];
      if (v16 <= v17)
      {
        v11 = 1;
      }

      else
      {
        v11 = -1;
      }
    }

    else
    {
      v11 = 1;
    }
  }

  else
  {
    v11 = -1;
  }

  return v11;
}

- (int)petsDetection:(__CVBuffer *)a3 petsRegions:(id)a4 petsFaceRegions:(id)a5 cancel:(id)a6
{
  v47[2] = *MEMORY[0x1E69E9840];
  v42 = a4;
  v10 = a5;
  v41 = a6;
  v11 = objc_autoreleasePoolPush();
  Width = CVPixelBufferGetWidth(a3);
  Height = CVPixelBufferGetHeight(a3);
  v14 = Height;
  if (Width <= Height)
  {
    v15 = Height;
  }

  else
  {
    v15 = Width;
  }

  v43 = 0;
  if (v15 >= 417)
  {
    Width = (416 * Width / v15) & 0xFFFFFFFE;
    v14 = (416 * Height / v15) & 0xFFFFFFFE;
  }

  if (v14 >= Width)
  {
    v16 = Width;
  }

  else
  {
    v16 = v14;
  }

  if (v16 < 224)
  {
    v17 = 0;
LABEL_13:
    v19 = 4;
    goto LABEL_14;
  }

  v17 = [(VCPCNNPetsDetector *)self createModel:v14 srcWidth:Width];
  if (v17)
  {
    goto LABEL_13;
  }

  v18 = [(VCPCNNPetsDetector *)self getInputBuffer:v14 srcWidth:Width cnnInputHeight:&v43 cnnInputWidth:&v43 + 4];
  v17 = [(VCPCNNPetsDetector *)self createInput:v18 withBuffer:a3 cnnInputHeight:v43 cnnInputWidth:HIDWORD(v43)];
  if (v17)
  {
    goto LABEL_13;
  }

  v40 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v22 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v39 = [(VCPCNNPetsDetector *)self generatePetsBoxes:v40 faceBoxes:v22 cancel:v41];
  if (v39)
  {
    v19 = 1;
  }

  else
  {
    for (i = 0; [v40 count] > i; ++i)
    {
      v24 = [v40 objectAtIndexedSubscript:i];
      *&v25 = (HIDWORD(v43) - 1);
      *&v26 = (v43 - 1);
      [v24 getCGRectWithClipWidth:v25 height:v26];
      v46[0] = @"petsBounds";
      v27 = NSStringFromRect(v48);
      v46[1] = @"petsConfidence";
      v47[0] = v27;
      v28 = MEMORY[0x1E696AD98];
      [v24 confidence];
      v29 = [v28 numberWithFloat:?];
      v47[1] = v29;
      v30 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v47 forKeys:v46 count:2];
      [v42 addObject:v30];
    }

    for (j = 0; [v22 count] > j; ++j)
    {
      v32 = [v22 objectAtIndexedSubscript:j];
      *&v33 = (HIDWORD(v43) - 1);
      *&v34 = (v43 - 1);
      [v32 getCGRectWithClipWidth:v33 height:v34];
      v44[0] = @"petsBounds";
      v35 = NSStringFromRect(v49);
      v44[1] = @"petsConfidence";
      v45[0] = v35;
      v36 = MEMORY[0x1E696AD98];
      [v32 confidence];
      v37 = [v36 numberWithFloat:?];
      v45[1] = v37;
      v38 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v45 forKeys:v44 count:2];
      [v10 addObject:v38];
    }

    v19 = 0;
  }

  v17 = 0;
LABEL_14:
  objc_autoreleasePoolPop(v11);
  if ((v19 | 4) == 4)
  {
    v20 = v17;
  }

  else
  {
    v20 = v39;
  }

  return v20;
}

- (id).cxx_construct
{
  *(self + 2) = 0;
  *(self + 6) = 0;
  return self;
}

@end