@interface VCPCNNPetsDetectorV2
+ (id)detector:(int)a3 forceCPU:(BOOL)a4 sharedModel:(BOOL)a5 revision:(int)a6;
- (VCPCNNPetsDetectorV2)initWithMaxNumRegions:(int)a3 forceCPU:(BOOL)a4 sharedModel:(BOOL)a5 revision:(int)a6;
- (float)getInputBuffer:(int)a3 srcWidth:(int)a4 cnnInputHeight:(int *)a5 cnnInputWidth:(int *)a6;
- (id).cxx_construct;
- (int)configForAspectRatio:(id)a3;
- (int)copyImage:(__CVBuffer *)a3 toData:(float *)a4;
- (int)createInput:(float *)a3 withBuffer:(__CVBuffer *)a4 cnnInputHeight:(int)a5 cnnInputWidth:(int)a6;
- (int)createModel:(int)a3 srcWidth:(int)a4;
- (int)generatePetsBoxes:(id)a3;
- (int)generatePetsRegions:(const void *)a3 boxes:(id)a4 maxNumRegions:(int)a5;
- (int)petsDetection:(__CVBuffer *)a3 petsRegions:(id)a4 petsFaceRegions:(id)a5 cancel:(id)a6;
- (int)retrieveBoxes:(float *)a3 outHeight:(int)a4 outWidth:(int)a5 boxes:(id)a6 anchorBox:(float)a7[3][2];
- (int64_t)getClosestAspectRatio:(id)a3;
- (void)dealloc;
- (void)nonMaxSuppression:(id)a3;
@end

@implementation VCPCNNPetsDetectorV2

+ (id)detector:(int)a3 forceCPU:(BOOL)a4 sharedModel:(BOOL)a5 revision:(int)a6
{
  v6 = *&a6;
  v7 = a5;
  v8 = a4;
  v9 = *&a3;
  if (+[VCPCNNPetsDetectorV2 detector:forceCPU:sharedModel:revision:]::once != -1)
  {
    +[VCPCNNPetsDetectorV2 detector:forceCPU:sharedModel:revision:];
  }

  v10 = [objc_alloc(+[VCPCNNPetsDetectorV2 detector:forceCPU:sharedModel:revision:]::analyzerClass) initWithMaxNumRegions:v9 forceCPU:v8 sharedModel:v7 revision:v6];

  return v10;
}

uint64_t __63__VCPCNNPetsDetectorV2_detector_forceCPU_sharedModel_revision___block_invoke()
{
  result = objc_opt_class();
  +[VCPCNNPetsDetectorV2 detector:forceCPU:sharedModel:revision:]::analyzerClass = result;
  return result;
}

- (VCPCNNPetsDetectorV2)initWithMaxNumRegions:(int)a3 forceCPU:(BOOL)a4 sharedModel:(BOOL)a5 revision:(int)a6
{
  v6 = a5;
  v7 = a4;
  v29 = *MEMORY[0x1E69E9840];
  self->_maxNumRegions = a3;
  self->_numClass = 4;
  self->_revision = a6;
  outputNames = self->_outputNames;
  self->_outputNames = &unk_1F49BF100;

  v24.receiver = self;
  v24.super_class = VCPCNNPetsDetectorV2;
  v10 = [(VCPCNNPetsDetectorV2 *)&v24 init];
  if (!v10)
  {
    goto LABEL_6;
  }

  v11 = [MEMORY[0x1E696AAE8] vcp_mediaAnalysisBundle];
  v12 = [v11 resourceURL];

  if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v28 = @"cnn_pets_detector_v2.espresso.net";
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "CNNPetsDetectorV2: Loading model %@", buf, 0xCu);
  }

  v13 = [MEMORY[0x1E695DFF8] URLWithString:@"cnn_pets_detector_v2.espresso.net" relativeToURL:v12];
  v14 = [VCPCNNModelEspresso alloc];
  v15 = v10->_outputNames;
  v25[0] = @"forceCPU";
  v16 = [MEMORY[0x1E696AD98] numberWithBool:v7];
  v26[0] = v16;
  v25[1] = @"sharedContext";
  v17 = [MEMORY[0x1E696AD98] numberWithBool:v6];
  v26[1] = v17;
  v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v26 forKeys:v25 count:2];
  v19 = [(VCPCNNModelEspresso *)v14 initWithParameters:v13 inputNames:0 outputNames:v15 properties:v18];
  modelEspresso = v10->_modelEspresso;
  v10->_modelEspresso = v19;

  LOBYTE(v18) = v10->_modelEspresso == 0;
  if (v18)
  {
    v21 = 0;
  }

  else
  {
LABEL_6:
    v21 = v10;
  }

  v22 = v21;

  return v22;
}

- (int)copyImage:(__CVBuffer *)a3 toData:(float *)a4
{
  v6 = VCPSignPostLog();
  v7 = os_signpost_id_generate(v6);

  v8 = VCPSignPostLog();
  v9 = v8;
  if (v7 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v8))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1C9B70000, v9, OS_SIGNPOST_INTERVAL_BEGIN, v7, "copyImageToRGBPetsDetectorV2CallFromSPI", "", buf, 2u);
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
    v12 = Height;
    v13 = CVPixelBufferLockBaseAddress(a3, 1uLL);
    *buf = v13;
    if (v13)
    {
      v14 = v13;
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        [VCPImageConverter convertImage:yuvFrame:];
      }
    }

    else
    {
      BaseAddress = CVPixelBufferGetBaseAddress(a3);
      BytesPerRow = CVPixelBufferGetBytesPerRow(a3);
      bzero(a4, 3 * 4 * Width * v12);
      if (v12 >= 1)
      {
        v18 = 0;
        v19 = &a4[2 * v12 * Width];
        v20 = &a4[v12 * Width];
        v21 = 4 * Width;
        do
        {
          if (Width >= 1)
          {
            v22 = 0;
            v23 = Width & 0x7FFFFFFF;
            do
            {
              LOBYTE(v17) = BaseAddress[(v22 * 4) + 2];
              v24 = *&v17 / 255.0;
              *&v24 = v24;
              a4[v22] = *&v24;
              LOBYTE(v24) = BaseAddress[(v22 * 4) + 1];
              v25 = *&v24 / 255.0;
              *&v25 = v25;
              v20[v22] = *&v25;
              LOBYTE(v25) = BaseAddress[(v22 * 4)];
              v17 = *&v25 / 255.0;
              *&v17 = v17;
              v19[v22++] = *&v17;
              --v23;
            }

            while (v23);
          }

          BaseAddress += BytesPerRow;
          ++v18;
          v19 = (v19 + v21);
          v20 = (v20 + v21);
          a4 = (a4 + v21);
        }

        while (v18 != v12);
      }

      v14 = CVPixelBufferLock::Unlock(buf);
      if (!v14)
      {
        v26 = VCPSignPostLog();
        v27 = v26;
        if (v7 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v26))
        {
          *v29 = 0;
          _os_signpost_emit_with_name_impl(&dword_1C9B70000, v27, OS_SIGNPOST_INTERVAL_END, v7, "copyImageToRGBPetsDetectorV2CallFromSPI", "", v29, 2u);
        }

        v14 = 0;
      }
    }
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      [VCPVideoCNNAnalyzer copyImage:withChannels:settling:];
    }

    v14 = -50;
    *buf = -50;
  }

  if (pixelBuffer && !*buf && CVPixelBufferUnlockBaseAddress(pixelBuffer, unlockFlags) && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    [VCPImageExposurePreAnalyzer analyzePixelBuffer:flags:results:cancel:];
  }

  return v14;
}

- (int64_t)getClosestAspectRatio:(id)a3
{
  v3 = a3;
  v4 = [&unk_1F49BF118 indexOfObject:v3 inSortedRange:0 options:objc_msgSend(&unk_1F49BF118 usingComparator:{"count"), 1280, &__block_literal_global_217}];
  v5 = [&unk_1F49BF118 count];
  if (v4 >= (v5 - 1))
  {
    v4 = v5 - 1;
  }

  if (v4 >= 1)
  {
    v6 = [&unk_1F49BF118 objectAtIndexedSubscript:v4];
    [v6 floatValue];
    v8 = v7;
    [v3 floatValue];
    v10 = v9;
    [v3 floatValue];
    v12 = v11;
    v13 = [&unk_1F49BF118 objectAtIndexedSubscript:v4 - 1];
    [v13 floatValue];
    v14 = v8 - v10;
    v16 = v12 - v15;

    if (v14 > v16)
    {
      --v4;
    }
  }

  return v4;
}

- (int)configForAspectRatio:(id)a3
{
  v23 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v6 = MEMORY[0x1E696AD98];
    [v4 floatValue];
    v8 = v7;
    [v5 floatValue];
    *&v9 = 1.0 / *&v9;
    if (v8 >= *&v9)
    {
      *&v9 = v8;
    }

    v10 = [v6 numberWithFloat:v9];
    if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412546;
      *v21 = v5;
      *&v21[8] = 2112;
      v22 = v10;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "CNNPetsDetectorV2: aspectRatio = %@, queryAspectRatioVal = %@", buf, 0x16u);
    }

    v11 = [(VCPCNNPetsDetectorV2 *)self getClosestAspectRatio:v10];
    if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
    {
      *buf = 67109120;
      *v21 = v11;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "CNNPetsDetectorV2: feasibleShapeIndex = %d", buf, 8u);
    }

    [v5 floatValue];
    v13 = (&kFeasibleInputShape + 8 * v11);
    v14 = (*v13 < v13[1]) ^ (v12 > 1.0);
    if (v14)
    {
      v15 = *v13;
    }

    else
    {
      v15 = v13[1];
    }

    if (v14)
    {
      v16 = v13[1];
    }

    else
    {
      v16 = *v13;
    }

    if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
    {
      *buf = 67109376;
      *v21 = v16;
      *&v21[4] = 1024;
      *&v21[6] = v15;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "CNNPetsDetectorV2: detectorHeight = %d, detectorWidth = %d", buf, 0xEu);
    }

    v17 = [MEMORY[0x1E696AEC0] stringWithFormat:@"res_%dx%d", v15, v16];
    resConfig = self->_resConfig;
    self->_resConfig = v17;
  }

  return 0;
}

- (int)createModel:(int)a3 srcWidth:(int)a4
{
  v31 = *MEMORY[0x1E69E9840];
  if (self->_srcWidth == a4 && self->_srcHeight == a3)
  {
    return 0;
  }

  *&v4 = a4 / a3;
  v9 = [MEMORY[0x1E696AD98] numberWithFloat:v4];
  v8 = [(VCPCNNPetsDetectorV2 *)self configForAspectRatio:v9];

  if (!v8)
  {
    if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
    {
      resConfig = self->_resConfig;
      *buf = 138412290;
      v28 = resConfig;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "CNNPetsDetectorV2: _resConfig = %@", buf, 0xCu);
    }

    v8 = [(VCPCNNModelEspresso *)self->_modelEspresso prepareModelWithConfig:self->_resConfig];
    if (!v8)
    {
      modelEspresso = self->_modelEspresso;
      if (modelEspresso)
      {
        [(VCPCNNModelEspresso *)modelEspresso inputBlob];
        v12 = self->_modelEspresso;
        self->_cnnInputHeight = v30;
        if (v12)
        {
          [(VCPCNNModelEspresso *)v12 inputBlob];
          v13 = v29;
        }

        else
        {
          v13 = 0;
        }
      }

      else
      {
        v13 = 0;
        self->_cnnInputHeight = 0;
      }

      self->_cnnInputWidth = v13;
      self->_srcWidth = 0;
      self->_srcHeight = 0;
      inputData = self->_inputData;
      if (inputData)
      {
        MEMORY[0x1CCA95C10](inputData, 0x1000C8052888210);
      }

      v15 = self->_modelEspresso;
      if (v15 && ([(VCPCNNModelEspresso *)v15 inputBlob], (v16 = self->_modelEspresso) != 0))
      {
        v17 = v30;
        [(VCPCNNModelEspresso *)v16 inputBlob];
        v18 = self->_modelEspresso;
        v19 = v26 * v17;
        if (v18)
        {
          [(VCPCNNModelEspresso *)v18 inputBlob];
          v20 = v25;
LABEL_22:
          v21 = v19 * v20;
          if (v21 >> 62)
          {
            v22 = -1;
          }

          else
          {
            v22 = 4 * v21;
          }

          v23 = operator new[](v22, MEMORY[0x1E69E5398]);
          self->_inputData = v23;
          if (!v23)
          {
            return -108;
          }

          v8 = 0;
          self->_srcWidth = a4;
          self->_srcHeight = a3;
          return v8;
        }
      }

      else
      {
        v19 = 0;
      }

      v20 = 0;
      goto LABEL_22;
    }
  }

  return v8;
}

- (void)dealloc
{
  inputData = self->_inputData;
  if (inputData)
  {
    MEMORY[0x1CCA95C10](inputData, 0x1000C8052888210);
  }

  v4.receiver = self;
  v4.super_class = VCPCNNPetsDetectorV2;
  [(VCPCNNPetsDetectorV2 *)&v4 dealloc];
}

- (float)getInputBuffer:(int)a3 srcWidth:(int)a4 cnnInputHeight:(int *)a5 cnnInputWidth:(int *)a6
{
  modelEspresso = self->_modelEspresso;
  if (modelEspresso)
  {
    [(VCPCNNModelEspresso *)modelEspresso inputBlob:*&a3];
    v10 = v15;
  }

  else
  {
    v10 = 0;
  }

  *a5 = v10;
  v11 = self->_modelEspresso;
  if (v11)
  {
    [(VCPCNNModelEspresso *)v11 inputBlob];
    v12 = v14;
  }

  else
  {
    v12 = 0;
  }

  *a6 = v12;
  return self->_inputData;
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
    v9 = [(VCPCNNPetsDetectorV2 *)self copyImage:cf toData:a3];
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
            if (v15 > 0.45)
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

- (int)retrieveBoxes:(float *)a3 outHeight:(int)a4 outWidth:(int)a5 boxes:(id)a6 anchorBox:(float)a7[3][2]
{
  v59 = a6;
  if ((atomic_load_explicit(&qword_1ED942860, memory_order_acquire) & 1) == 0)
  {
    [VCPCNNPetsDetectorV2 retrieveBoxes:? outHeight:? outWidth:? boxes:? anchorBox:?];
  }

  if (a4 >= 1)
  {
    v51 = 0;
    v9 = a5 * a4;
    v55 = a5 * a4;
    v53 = a4;
    v54 = a5;
    v62 = a5;
    v49 = &a3[4 * a5 * a4];
    v50 = 0;
    v46 = 4 * a5;
    v47 = a4;
    v48 = a5;
    v52 = a5 * a4;
    do
    {
      if (a5 >= 1)
      {
        v10 = 0;
        v11 = v49;
        v12 = _MergedGlobals_5;
        v13 = v51;
        do
        {
          v14 = 0;
          v15 = -1;
          v16 = 0.0;
          v17 = v11;
          do
          {
            v18 = 1.0 / (expf(-*v17) + 1.0);
            if (v18 > v16)
            {
              v15 = v14;
              v16 = v18;
            }

            ++v14;
            v17 += v12 * v9;
          }

          while (v14 != 3);
          if (v16 > 0.45)
          {
            v19 = v15 * v9 * v12;
            v20 = &a3[v19 + v10 + v50 * v62];
            v21 = expf(-*v20);
            cnnInputWidth = self->_cnnInputWidth;
            v23 = &v20[v55];
            v24 = expf(-*v23);
            cnnInputHeight = self->_cnnInputHeight;
            v25 = &v23[v55];
            v26 = expf(-*v25);
            v27 = &(*a7)[2 * v15];
            v60 = *v27;
            v28 = expf(-v25[v55]);
            v29 = v27[1];
            numClass = self->_numClass;
            if (numClass < 1)
            {
              v32 = 0;
              v34 = -1.0;
            }

            else
            {
              v31 = 0;
              LODWORD(v32) = 0;
              v33 = &a3[4 * v55 + v13 + v19];
              v34 = -1.0;
              do
              {
                v35 = v16 * (1.0 / (expf(-*v33) + 1.0));
                if (v35 <= v34)
                {
                  v32 = v32;
                }

                else
                {
                  v34 = v35;
                  v32 = v31;
                }

                ++v31;
                v33 += v55;
              }

              while (numClass != v31);
            }

            v36 = [VCPBoundingBox alloc];
            v37 = (v10 + (1.0 / (v21 + 1.0)) * 2.0 + -0.5) * cnnInputWidth / v54;
            *&v37 = v37;
            v38 = (v50 + (1.0 / (v24 + 1.0)) * 2.0 + -0.5) * cnnInputHeight / v53;
            *&v38 = v38;
            v39 = ((1.0 / (v26 + 1.0)) + (1.0 / (v26 + 1.0)));
            v40 = v39 * v39 * v60;
            *&v40 = v40;
            v41 = ((1.0 / (v28 + 1.0)) + (1.0 / (v28 + 1.0)));
            v42 = v29;
            v43 = v41 * v41 * v29;
            *&v43 = v43;
            if (numClass >= 2)
            {
              *&v42 = v34;
            }

            else
            {
              *&v42 = 1.0;
            }

            *&v42 = v16 * *&v42;
            v44 = [(VCPBoundingBox *)v36 initWithCenterAndSize:v37 y:v38 width:v40 height:v43 confidence:v42];
            [(VCPBoundingBox *)v44 setClassIndex:v32];
            [v59 addObject:v44];

            v12 = _MergedGlobals_5;
            v9 = v52;
          }

          ++v10;
          ++v11;
          ++v13;
        }

        while (v10 != v62);
      }

      v49 = (v49 + v46);
      ++v50;
      a5 = v48;
      v51 += v48;
    }

    while (v50 != v47);
  }

  return 0;
}

- (int)generatePetsRegions:(const void *)a3 boxes:(id)a4 maxNumRegions:(int)a5
{
  v8 = a4;
  v9 = *a3;
  if (*a3 != *(a3 + 1))
  {
    v10 = &kAnchorBoxes;
    do
    {
      [(VCPCNNPetsDetectorV2 *)self retrieveBoxes:*v9 outHeight:*(v9 + 88) outWidth:*(v9 + 80) boxes:v8 anchorBox:v10];
      v9 += 168;
      v10 += 24;
    }

    while (v9 != *(a3 + 1));
  }

  [v8 sortUsingComparator:&__block_literal_global_227];
  [(VCPCNNPetsDetectorV2 *)self nonMaxSuppression:v8];
  [v8 sortUsingComparator:&__block_literal_global_229];
  while ([v8 count] > a5)
  {
    [v8 removeLastObject];
  }

  v11 = [v8 lastObject];
  if (v11)
  {
    do
    {
      [v11 flag];
      if (v12 != 0.0)
      {
        break;
      }

      [v8 removeLastObject];
      v13 = [v8 lastObject];

      v11 = v13;
    }

    while (v13);
  }

  return 0;
}

uint64_t __64__VCPCNNPetsDetectorV2_generatePetsRegions_boxes_maxNumRegions___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = v4;
  v7 = v5;
  [v6 confidence];
  v9 = v8;
  [v7 confidence];
  if (v9 <= v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = -1;
  }

  return v11;
}

uint64_t __64__VCPCNNPetsDetectorV2_generatePetsRegions_boxes_maxNumRegions___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = v4;
  v7 = v5;
  [v6 maxX];
  v32 = v8;
  [v6 minX];
  v10 = v9;
  [v6 maxY];
  v12 = v11;
  [v6 minY];
  v14 = v13;
  [v7 maxX];
  v16 = v15;
  [v7 minX];
  v18 = v17;
  [v7 maxY];
  v20 = v19;
  [v7 minY];
  v22 = v21;
  [v6 flag];
  v24 = v23;
  [v7 flag];
  if (v24 <= v25)
  {
    [v6 flag];
    v28 = v27;
    [v7 flag];
    v30 = -1;
    if (((v32 - v10) * (v12 - v14)) <= ((v16 - v18) * (v20 - v22)))
    {
      v30 = 1;
    }

    if (v28 >= v29)
    {
      v26 = v30;
    }

    else
    {
      v26 = 1;
    }
  }

  else
  {
    v26 = -1;
  }

  return v26;
}

- (int)generatePetsBoxes:(id)a3
{
  v4 = a3;
  v5 = [(VCPCNNModelEspresso *)self->_modelEspresso espressoForward:self->_inputData];
  if (!v5)
  {
    modelEspresso = self->_modelEspresso;
    if (modelEspresso)
    {
      [(VCPCNNModelEspresso *)modelEspresso outputBlobs];
    }

    else
    {
      __p = 0;
      v9 = 0;
      v10 = 0;
    }

    v5 = [(VCPCNNPetsDetectorV2 *)self generatePetsRegions:&__p boxes:v4 maxNumRegions:self->_maxNumRegions];
    if (__p)
    {
      v9 = __p;
      operator delete(__p);
    }
  }

  return v5;
}

- (int)petsDetection:(__CVBuffer *)a3 petsRegions:(id)a4 petsFaceRegions:(id)a5 cancel:(id)a6
{
  v59 = *MEMORY[0x1E69E9840];
  v49 = a4;
  v11 = a5;
  v12 = a6;
  v13 = v12;
  if (v12 && ((*(v12 + 2))(v12) & 1) != 0)
  {
    v14 = -128;
LABEL_13:
    v6 = v14;
    goto LABEL_14;
  }

  context = objc_autoreleasePoolPush();
  Width = CVPixelBufferGetWidth(a3);
  Height = CVPixelBufferGetHeight(a3);
  v17 = Height;
  v50 = 0;
  if (Height >= Width)
  {
    v18 = Width;
  }

  else
  {
    v18 = Height;
  }

  if (v18 < 224)
  {
    v14 = 0;
LABEL_11:
    v20 = 4;
    goto LABEL_12;
  }

  v14 = [(VCPCNNPetsDetectorV2 *)self createModel:Height srcWidth:Width];
  if (v14)
  {
    goto LABEL_11;
  }

  v19 = [(VCPCNNPetsDetectorV2 *)self getInputBuffer:v17 srcWidth:Width cnnInputHeight:&v50 cnnInputWidth:&v50 + 4];
  v14 = [(VCPCNNPetsDetectorV2 *)self createInput:v19 withBuffer:a3 cnnInputHeight:v50 cnnInputWidth:HIDWORD(v50)];
  if (v14)
  {
    goto LABEL_11;
  }

  v22 = [MEMORY[0x1E695DF70] array];
  v6 = [(VCPCNNPetsDetectorV2 *)self generatePetsBoxes:v22];
  if (v6)
  {
    v20 = 1;
  }

  else
  {
    v47 = v22;
    v24 = 0;
    *&v23 = 67109376;
    v46 = v23;
    while ([v47 count] > v24)
    {
      v25 = [v47 objectAtIndexedSubscript:v24];
      if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
      {
        v26 = [v25 classIndex];
        [v25 confidence];
        *buf = v46;
        v56 = v26;
        v57 = 2048;
        v58 = v27;
        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "CNNPetsDetectorV2: pet class index : %d, confidence = %f", buf, 0x12u);
      }

      [v25 confidence];
      if (*&v28 >= 0.3)
      {
        *&v28 = (HIDWORD(v50) - 1);
        *&v29 = (v50 - 1);
        [v25 getCGRectWithClipWidth:v28 height:v29];
        v31 = v30;
        v33 = v32;
        v35 = v34;
        v37 = v36;
        numClass = [v25 classIndex];
        if (!numClass)
        {
          numClass = self->_numClass;
        }

        v39 = (numClass - 1);
        if (v39 > 1)
        {
          v51[0] = @"petsBounds";
          v61.origin.x = v31;
          v61.origin.y = v33;
          v61.size.width = v35;
          v61.size.height = v37;
          v40 = NSStringFromRect(v61);
          v52[0] = v40;
          v51[1] = @"petsConfidence";
          v45 = MEMORY[0x1E696AD98];
          [v25 confidence];
          v42 = [v45 numberWithFloat:?];
          v52[1] = v42;
          v51[2] = @"petsType";
          v43 = [MEMORY[0x1E696AD98] numberWithInt:v39];
          v52[2] = v43;
          v44 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v52 forKeys:v51 count:3];
          [v11 addObject:v44];
        }

        else
        {
          v53[0] = @"petsBounds";
          v60.origin.x = v31;
          v60.origin.y = v33;
          v60.size.width = v35;
          v60.size.height = v37;
          v40 = NSStringFromRect(v60);
          v54[0] = v40;
          v53[1] = @"petsConfidence";
          v41 = MEMORY[0x1E696AD98];
          [v25 confidence];
          v42 = [v41 numberWithFloat:?];
          v54[1] = v42;
          v53[2] = @"petsType";
          v43 = [MEMORY[0x1E696AD98] numberWithInt:v39];
          v54[2] = v43;
          v44 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v54 forKeys:v53 count:3];
          [v49 addObject:v44];
        }
      }

      ++v24;
    }

    v20 = 0;
    v22 = v47;
  }

  v14 = 0;
LABEL_12:
  objc_autoreleasePoolPop(context);
  if ((v20 | 4) == 4)
  {
    goto LABEL_13;
  }

LABEL_14:

  return v6;
}

- (id).cxx_construct
{
  *(self + 10) = 0;
  *(self + 22) = 0;
  return self;
}

- (void)retrieveBoxes:(uint64_t)a1 outHeight:outWidth:boxes:anchorBox:.cold.1(uint64_t a1)
{
  if (__cxa_guard_acquire(&qword_1ED942860))
  {
    _MergedGlobals_5 = *(a1 + 20) + 5;

    __cxa_guard_release(&qword_1ED942860);
  }
}

@end