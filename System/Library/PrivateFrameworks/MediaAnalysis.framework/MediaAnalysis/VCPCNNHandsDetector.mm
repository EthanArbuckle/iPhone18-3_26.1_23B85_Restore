@interface VCPCNNHandsDetector
+ (id)detector:(int)detector forceCPU:(BOOL)u sharedModel:(BOOL)model inputConfig:(id)config revision:(int)revision;
- (VCPCNNHandsDetector)initWithMaxNumRegions:(int)regions forceCPU:(BOOL)u sharedModel:(BOOL)model inputConfig:(id)config revision:(int)revision;
- (id).cxx_construct;
- (int)copyImage:(__CVBuffer *)image toData:(float *)data;
- (int)createInput:(float *)input withBuffer:(__CVBuffer *)buffer;
- (int)createModelWithResConfig:(id)config;
- (int)drawLine:(char *)line width:(int)width height:(int)height stride:(int)stride point0:(CGPoint)point0 point1:(CGPoint)point1 drawPoint:(int)point;
- (int)drawRectangle:(char *)rectangle width:(int)width height:(int)height stride:(int)stride keypoints:(CGPoint *)keypoints;
- (int)generateHandsBoxes:(id)boxes;
- (int)generateHandsRegions:(const void *)regions boxes:(id)boxes maxNumRegions:(int)numRegions;
- (int)handsDetection:(__CVBuffer *)detection handsRegions:(id)regions cancel:(id)cancel;
- (int)retrieveBoxes:(float *)boxes outHeight:(int)height outWidth:(int)width boxes:(id)a6 anchorBox:(float)box[3][2];
- (int)updateModelWithResConfig:(id)config;
- (void)dealloc;
- (void)nonMaxSuppression:(id)suppression;
@end

@implementation VCPCNNHandsDetector

+ (id)detector:(int)detector forceCPU:(BOOL)u sharedModel:(BOOL)model inputConfig:(id)config revision:(int)revision
{
  v7 = *&revision;
  modelCopy = model;
  uCopy = u;
  v10 = *&detector;
  configCopy = config;
  if (+[VCPCNNHandsDetector detector:forceCPU:sharedModel:inputConfig:revision:]::once != -1)
  {
    +[VCPCNNHandsDetector detector:forceCPU:sharedModel:inputConfig:revision:];
  }

  v12 = [objc_alloc(+[VCPCNNHandsDetector detector:forceCPU:sharedModel:inputConfig:revision:]::analyzerClass) initWithMaxNumRegions:v10 forceCPU:uCopy sharedModel:modelCopy inputConfig:configCopy revision:v7];

  return v12;
}

uint64_t __74__VCPCNNHandsDetector_detector_forceCPU_sharedModel_inputConfig_revision___block_invoke()
{
  result = objc_opt_class();
  +[VCPCNNHandsDetector detector:forceCPU:sharedModel:inputConfig:revision:]::analyzerClass = result;
  return result;
}

- (VCPCNNHandsDetector)initWithMaxNumRegions:(int)regions forceCPU:(BOOL)u sharedModel:(BOOL)model inputConfig:(id)config revision:(int)revision
{
  modelCopy = model;
  uCopy = u;
  v48[2] = *MEMORY[0x1E69E9840];
  configCopy = config;
  self->_maxNumRegions = regions;
  self->_numClass = 2;
  self->_revision = revision;
  outputNames = self->_outputNames;
  self->_outputNames = &unk_1F49BF010;

  v42.receiver = self;
  v42.super_class = VCPCNNHandsDetector;
  v14 = [(VCPCNNHandsDetector *)&v42 init];
  v15 = v14;
  if (v14)
  {
    vcp_mediaAnalysisBundle = [MEMORY[0x1E696AAE8] vcp_mediaAnalysisBundle];
    resourceURL = [vcp_mediaAnalysisBundle resourceURL];

    if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v44 = @"cnn_hand_detector_v2.espresso.net";
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "CNNHandsDetector: Loading model %@", buf, 0xCu);
    }

    v18 = [MEMORY[0x1E695DFF8] URLWithString:@"cnn_hand_detector_v2.espresso.net" relativeToURL:resourceURL];
    v19 = [VCPCNNModelEspresso alloc];
    v20 = v14->_outputNames;
    v47[0] = @"forceCPU";
    v21 = [MEMORY[0x1E696AD98] numberWithBool:uCopy];
    v48[0] = v21;
    v47[1] = @"sharedContext";
    v22 = [MEMORY[0x1E696AD98] numberWithBool:modelCopy];
    v48[1] = v22;
    v23 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v48 forKeys:v47 count:2];
    v24 = [(VCPCNNModelEspresso *)v19 initWithParameters:v18 inputNames:0 outputNames:v20 properties:v23];
    modelEspresso = v14->_modelEspresso;
    v14->_modelEspresso = v24;

    if (!v14->_modelEspresso)
    {
      goto LABEL_10;
    }

    if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v44 = configCopy;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "CNNHandsDetector: adopting model config: %@", buf, 0xCu);
    }

    if ([(VCPCNNModelEspresso *)v14->_modelEspresso prepareModelWithConfig:configCopy])
    {
LABEL_10:

LABEL_11:
      v15 = 0;
      goto LABEL_12;
    }

    v28 = v14->_modelEspresso;
    if (v28 && ([(VCPCNNModelEspresso *)v28 inputBlob], (v29 = v14->_modelEspresso) != 0))
    {
      v30 = v46;
      [(VCPCNNModelEspresso *)v29 inputBlob];
      v31 = v14->_modelEspresso;
      v32 = v41 * v30;
      if (v31)
      {
        [(VCPCNNModelEspresso *)v31 inputBlob];
        v33 = v40;
        goto LABEL_19;
      }
    }

    else
    {
      v32 = 0;
    }

    v33 = 0;
LABEL_19:
    v34 = v32 * v33;
    if (v34 >> 62)
    {
      v35 = -1;
    }

    else
    {
      v35 = 4 * v34;
    }

    v14->_inputData = operator new[](v35, MEMORY[0x1E69E5398]);
    v36 = v14->_modelEspresso;
    if (v36)
    {
      [(VCPCNNModelEspresso *)v36 inputBlob];
      v37 = v14->_modelEspresso;
      v14->_cnnInputHeight = v46;
      if (v37)
      {
        [(VCPCNNModelEspresso *)v37 inputBlob];
        v38 = v45;
      }

      else
      {
        v38 = 0;
      }
    }

    else
    {
      v38 = 0;
      v14->_cnnInputHeight = 0;
    }

    v14->_cnnInputWidth = v38;
    v39 = v14->_inputData == 0;

    if (!v39)
    {
      v15 = v14;
      goto LABEL_12;
    }

    goto LABEL_11;
  }

LABEL_12:
  v26 = v15;

  return v26;
}

- (int)updateModelWithResConfig:(id)config
{
  v9 = *MEMORY[0x1E69E9840];
  configCopy = config;
  if (self->_modelEspresso)
  {
    if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
    {
      v7 = 138412290;
      v8 = configCopy;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "CNNHandsDetectorEspresso: updating model config to %@", &v7, 0xCu);
    }

    v5 = [(VCPCNNHandsDetector *)self createModelWithResConfig:configCopy];
  }

  else
  {
    v5 = -108;
  }

  return v5;
}

- (void)dealloc
{
  inputData = self->_inputData;
  if (inputData)
  {
    MEMORY[0x1CCA95C10](inputData, 0x1000C8052888210);
  }

  self->_inputData = 0;
  v4.receiver = self;
  v4.super_class = VCPCNNHandsDetector;
  [(VCPCNNHandsDetector *)&v4 dealloc];
}

- (int)createModelWithResConfig:(id)config
{
  configCopy = config;
  inputData = self->_inputData;
  if (inputData)
  {
    MEMORY[0x1CCA95C10](inputData, 0x1000C8052888210);
    self->_inputData = 0;
  }

  v6 = [(VCPCNNModelEspresso *)self->_modelEspresso prepareModelWithConfig:configCopy];
  if (!v6)
  {
    modelEspresso = self->_modelEspresso;
    if (modelEspresso && ([(VCPCNNModelEspresso *)modelEspresso inputBlob], (v8 = self->_modelEspresso) != 0))
    {
      [(VCPCNNModelEspresso *)v8 inputBlob];
      v9 = self->_modelEspresso;
      v10 = v19 * v21;
      if (v9)
      {
        [(VCPCNNModelEspresso *)v9 inputBlob];
        v11 = v18;
LABEL_10:
        v12 = v10 * v11;
        if (v12 >> 62)
        {
          v13 = -1;
        }

        else
        {
          v13 = 4 * v12;
        }

        self->_inputData = operator new[](v13, MEMORY[0x1E69E5398]);
        v14 = self->_modelEspresso;
        if (v14)
        {
          [(VCPCNNModelEspresso *)v14 inputBlob];
          v15 = self->_modelEspresso;
          self->_cnnInputWidth = v20;
          if (v15)
          {
            [(VCPCNNModelEspresso *)v15 inputBlob];
            v16 = v21;
          }

          else
          {
            v16 = 0;
          }
        }

        else
        {
          v16 = 0;
          self->_cnnInputWidth = 0;
        }

        self->_cnnInputHeight = v16;
        if (self->_inputData)
        {
          v6 = 0;
        }

        else
        {
          v6 = -108;
        }

        goto LABEL_21;
      }
    }

    else
    {
      v10 = 0;
    }

    v11 = 0;
    goto LABEL_10;
  }

LABEL_21:

  return v6;
}

- (int)copyImage:(__CVBuffer *)image toData:(float *)data
{
  v6 = VCPSignPostLog();
  v7 = os_signpost_id_generate(v6);

  v8 = VCPSignPostLog();
  v9 = v8;
  if (v7 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v8))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1C9B70000, v9, OS_SIGNPOST_INTERVAL_BEGIN, v7, "copyImageToBGRHandDetectorCallFromSPI", "", buf, 2u);
  }

  if (CVPixelBufferGetPixelFormatType(image) != 1111970369)
  {
    return -50;
  }

  Width = CVPixelBufferGetWidth(image);
  Height = CVPixelBufferGetHeight(image);
  pixelBuffer = image;
  unlockFlags = 1;
  if (image)
  {
    v12 = Height;
    v13 = CVPixelBufferLockBaseAddress(image, 1uLL);
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
      BaseAddress = CVPixelBufferGetBaseAddress(image);
      BytesPerRow = CVPixelBufferGetBytesPerRow(image);
      bzero(data, 3 * 4 * Width * v12);
      if (v12 >= 1)
      {
        v18 = 0;
        v19 = &data[2 * v12 * Width];
        v20 = &data[v12 * Width];
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
              v24 = LODWORD(v17);
              data[v22] = v24;
              LOBYTE(v24) = BaseAddress[(v22 * 4) + 1];
              v25 = LODWORD(v24);
              v20[v22] = v25;
              LOBYTE(v25) = BaseAddress[(v22 * 4)];
              v17 = LODWORD(v25);
              v19[v22++] = v17;
              --v23;
            }

            while (v23);
          }

          BaseAddress += BytesPerRow;
          ++v18;
          v19 = (v19 + v21);
          v20 = (v20 + v21);
          data = (data + v21);
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
          _os_signpost_emit_with_name_impl(&dword_1C9B70000, v27, OS_SIGNPOST_INTERVAL_END, v7, "copyImageToBGRHandDetectorCallFromSPI", "", v29, 2u);
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

- (int)createInput:(float *)input withBuffer:(__CVBuffer *)buffer
{
  if (!input)
  {
    return -108;
  }

  cf = 0;
  v7 = VCPSignPostLog();
  v8 = os_signpost_id_generate(v7);

  v9 = VCPSignPostLog();
  v10 = v9;
  if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v9))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1C9B70000, v10, OS_SIGNPOST_INTERVAL_BEGIN, v8, "scalerHandDetectorCallFromSPI", "", buf, 2u);
  }

  Scaler::Scale(&self->_scaler, buffer, &cf, self->_cnnInputWidth, self->_cnnInputHeight, 1111970369);
  v12 = v11;
  if (!v11)
  {
    v13 = VCPSignPostLog();
    v14 = v13;
    if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v13))
    {
      *v16 = 0;
      _os_signpost_emit_with_name_impl(&dword_1C9B70000, v14, OS_SIGNPOST_INTERVAL_END, v8, "scalerHandDetectorCallFromSPI", "", v16, 2u);
    }

    v12 = [(VCPCNNHandsDetector *)self copyImage:cf toData:input];
  }

  if (cf)
  {
    CFRelease(cf);
  }

  return v12;
}

- (int)generateHandsBoxes:(id)boxes
{
  boxesCopy = boxes;
  v5 = VCPSignPostLog();
  v6 = os_signpost_id_generate(v5);

  v7 = VCPSignPostLog();
  v8 = v7;
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
  {
    LOWORD(__p) = 0;
    _os_signpost_emit_with_name_impl(&dword_1C9B70000, v8, OS_SIGNPOST_INTERVAL_BEGIN, v6, "inferenceHandDetectorCallFromSPI", "", &__p, 2u);
  }

  v9 = [(VCPCNNModelEspresso *)self->_modelEspresso espressoForward:self->_inputData];
  if (!v9)
  {
    v10 = VCPSignPostLog();
    v11 = v10;
    if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
    {
      LOWORD(__p) = 0;
      _os_signpost_emit_with_name_impl(&dword_1C9B70000, v11, OS_SIGNPOST_INTERVAL_END, v6, "inferenceHandDetectorCallFromSPI", "", &__p, 2u);
    }

    modelEspresso = self->_modelEspresso;
    if (modelEspresso)
    {
      [(VCPCNNModelEspresso *)modelEspresso outputBlobs];
    }

    else
    {
      __p = 0;
      v15 = 0;
      v16 = 0;
    }

    v9 = [(VCPCNNHandsDetector *)self generateHandsRegions:&__p boxes:boxesCopy maxNumRegions:self->_maxNumRegions];
    if (__p)
    {
      v15 = __p;
      operator delete(__p);
    }
  }

  return v9;
}

- (void)nonMaxSuppression:(id)suppression
{
  suppressionCopy = suppression;
  v3 = [suppressionCopy count];
  if (v3)
  {
    for (i = 0; i != v3; ++i)
    {
      v5 = [suppressionCopy objectAtIndexedSubscript:i];
      LODWORD(v6) = 1.0;
      [v5 setFlag:v6];
    }

    v7 = 0;
    v8 = 1;
    do
    {
      v9 = [suppressionCopy objectAtIndexedSubscript:v7];
      [v9 flag];
      v11 = v10 == 1.0 && v3 > ++v7;
      v12 = v8;
      if (v11)
      {
        do
        {
          v13 = [suppressionCopy objectAtIndexedSubscript:v12];
          [v13 flag];
          if (v14 == 1.0)
          {
            [v9 computeIntersectionOverUnion:v13];
            if (v15 > 0.6)
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

- (int)retrieveBoxes:(float *)boxes outHeight:(int)height outWidth:(int)width boxes:(id)a6 anchorBox:(float)box[3][2]
{
  v62 = a6;
  if ((atomic_load_explicit(&qword_1ED942850, memory_order_acquire) & 1) == 0)
  {
    [VCPCNNHandsDetector retrieveBoxes:? outHeight:? outWidth:? boxes:? anchorBox:?];
  }

  if (height >= 1)
  {
    v56 = 0;
    v59 = width * height;
    heightCopy = height;
    widthCopy = width;
    widthCopy2 = width;
    v66 = width * height;
    v54 = &boxes[4 * width * height];
    v55 = 0;
    v51 = 4 * width;
    heightCopy2 = height;
    v10 = 0.5;
    widthCopy3 = width;
    do
    {
      if (width >= 1)
      {
        v11 = 0;
        v12 = v54;
        v13 = _MergedGlobals_4;
        v14 = v56;
        do
        {
          v15 = 0;
          v16 = -1;
          v17 = 0.0;
          v18 = v12;
          do
          {
            v19 = 1.0 / (expf(-*v18) + 1.0);
            if (v19 > v17)
            {
              v16 = v15;
              v17 = v19;
            }

            ++v15;
            v18 += v13 * v66;
          }

          while (v15 != 3);
          if (v17 > v10)
          {
            v20 = v16 * v66 * v13;
            v21 = &boxes[v20 + v11 + v55 * widthCopy2];
            v22 = expf(-*v21);
            cnnInputWidth = self->_cnnInputWidth;
            v23 = &v21[v59];
            v24 = expf(-*v23);
            cnnInputHeight = self->_cnnInputHeight;
            v26 = &v23[v59];
            v27 = expf(-*v26);
            v28 = &(*box)[2 * v16];
            v63 = *v28;
            v29 = expf(-v26[v59]);
            v30 = v28[1];
            numClass = self->_numClass;
            if (numClass < 1)
            {
              v38 = 1;
              v36 = -1.0;
            }

            else
            {
              selfCopy = self;
              v33 = 0;
              v34 = 0;
              v35 = &boxes[4 * v59 + v14 + v20];
              v36 = -1.0;
              do
              {
                v37 = v17 * (1.0 / (expf(-*v35) + 1.0));
                if (v37 > v36)
                {
                  v36 = v37;
                  v34 = v33;
                }

                ++v33;
                v35 += v59;
              }

              while (numClass != v33);
              if (v34)
              {
                v38 = -1;
              }

              else
              {
                v38 = 1;
              }

              self = selfCopy;
            }

            v39 = [VCPBoundingBox alloc];
            v40 = (v11 + (1.0 / (v22 + 1.0)) * 2.0 + -0.5) * cnnInputWidth / widthCopy;
            *&v40 = v40;
            v41 = (v55 + (1.0 / (v24 + 1.0)) * 2.0 + -0.5) * cnnInputHeight / heightCopy;
            *&v41 = v41;
            v42 = ((1.0 / (v27 + 1.0)) + (1.0 / (v27 + 1.0)));
            v43 = v42 * v42 * v63;
            *&v43 = v43;
            v44 = ((1.0 / (v29 + 1.0)) + (1.0 / (v29 + 1.0)));
            v45 = v30;
            v46 = v44 * v44 * v30;
            *&v46 = v46;
            if (numClass >= 2)
            {
              *&v45 = v36;
            }

            else
            {
              *&v45 = 1.0;
            }

            *&v45 = v17 * *&v45;
            v47 = [(VCPBoundingBox *)v39 initWithCenterAndSize:v40 y:v41 width:v43 height:v46 confidence:v45];
            v48 = v47;
            if (self->_numClass >= 2)
            {
              v49 = v38;
            }

            else
            {
              v49 = 0;
            }

            [(VCPBoundingBox *)v47 setClassIndex:v49];
            [v62 addObject:v48];

            v13 = _MergedGlobals_4;
            v10 = 0.5;
          }

          ++v11;
          ++v12;
          ++v14;
        }

        while (v11 != widthCopy2);
      }

      v54 = (v54 + v51);
      ++v55;
      width = widthCopy3;
      v56 += widthCopy3;
    }

    while (v55 != heightCopy2);
  }

  return 0;
}

- (int)generateHandsRegions:(const void *)regions boxes:(id)boxes maxNumRegions:(int)numRegions
{
  boxesCopy = boxes;
  v9 = VCPSignPostLog();
  v10 = os_signpost_id_generate(v9);

  v11 = VCPSignPostLog();
  v12 = v11;
  if (v10 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v11))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1C9B70000, v12, OS_SIGNPOST_INTERVAL_BEGIN, v10, "postProcessingHandDetectorCallFromSPI", "", buf, 2u);
  }

  v13 = *regions;
  if (*regions != *(regions + 1))
  {
    v14 = &kAnchorBoxes;
    do
    {
      [(VCPCNNHandsDetector *)self retrieveBoxes:*v13 outHeight:*(v13 + 88) outWidth:*(v13 + 80) boxes:boxesCopy anchorBox:v14];
      v13 += 168;
      v14 += 24;
    }

    while (v13 != *(regions + 1));
  }

  [boxesCopy sortUsingComparator:&__block_literal_global_24];
  [(VCPCNNHandsDetector *)self nonMaxSuppression:boxesCopy];
  [boxesCopy sortUsingComparator:&__block_literal_global_26];
  while ([boxesCopy count] > numRegions)
  {
    [boxesCopy removeLastObject];
  }

  lastObject = [boxesCopy lastObject];
  if (lastObject)
  {
    do
    {
      [lastObject flag];
      if (v16 != 0.0)
      {
        break;
      }

      [boxesCopy removeLastObject];
      lastObject2 = [boxesCopy lastObject];

      lastObject = lastObject2;
    }

    while (lastObject2);
  }

  v18 = VCPSignPostLog();
  v19 = v18;
  if (v10 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v18))
  {
    v21[0] = 0;
    _os_signpost_emit_with_name_impl(&dword_1C9B70000, v19, OS_SIGNPOST_INTERVAL_END, v10, "postProcessingHandDetectorCallFromSPI", "", v21, 2u);
  }

  return 0;
}

uint64_t __64__VCPCNNHandsDetector_generateHandsRegions_boxes_maxNumRegions___block_invoke(uint64_t a1, void *a2, void *a3)
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

uint64_t __64__VCPCNNHandsDetector_generateHandsRegions_boxes_maxNumRegions___block_invoke_2(uint64_t a1, void *a2, void *a3)
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

- (int)drawLine:(char *)line width:(int)width height:(int)height stride:(int)stride point0:(CGPoint)point0 point1:(CGPoint)point1 drawPoint:(int)point
{
  x = point0.x;
  v10 = point1.x;
  y = point0.y;
  v12 = point1.y;
  v13 = point1.x - point0.x;
  v14 = point1.y - point0.y;
  if (v13 >= 0)
  {
    v15 = point1.x - point0.x;
  }

  else
  {
    v15 = point0.x - point1.x;
  }

  if (v14 >= 0)
  {
    v16 = point1.y - point0.y;
  }

  else
  {
    v16 = point0.y - point1.y;
  }

  if (v15 <= v16)
  {
    v15 = v16;
  }

  if (point)
  {
    if (y <= 5)
    {
      v17 = 5;
    }

    else
    {
      v17 = y;
    }

    v18 = height - 1;
    LODWORD(v19) = y + 5;
    if (y + 5 >= height - 1)
    {
      v19 = v18;
    }

    else
    {
      v19 = v19;
    }

    if (v17 - 5 < v19)
    {
      if (x <= 5)
      {
        v20 = 5;
      }

      else
      {
        v20 = x;
      }

      v21 = v20 - 5;
      LODWORD(v22) = width - 1;
      if (x + 5 >= width - 1)
      {
        v22 = v22;
      }

      else
      {
        v22 = (x + 5);
      }

      v23 = v17 - 5;
      v24 = &line[4 * v20 - 19 + v23 * stride];
      v25 = v22 - v20 + 5;
      do
      {
        v26 = v25;
        v27 = v24;
        if (v21 < v22)
        {
          do
          {
            *v27 = -1;
            v27 += 4;
            --v26;
          }

          while (v26);
        }

        ++v23;
        v24 += stride;
      }

      while (v23 != v19);
    }

    if (v12 <= 5)
    {
      v28 = 5;
    }

    else
    {
      v28 = v12;
    }

    LODWORD(v29) = v12 + 5;
    if (v29 >= v18)
    {
      v29 = v18;
    }

    else
    {
      v29 = v29;
    }

    if (v28 - 5 < v29)
    {
      if (v10 <= 5)
      {
        v30 = 5;
      }

      else
      {
        v30 = v10;
      }

      v31 = v30 - 5;
      LODWORD(v32) = v10 + 5;
      if (v32 >= width - 1)
      {
        v32 = (width - 1);
      }

      else
      {
        v32 = v32;
      }

      v33 = v28 - 5;
      v34 = &line[4 * v30 - 19 + v33 * stride];
      v35 = v32 - v30 + 5;
      do
      {
        v36 = v35;
        v37 = v34;
        if (v31 < v32)
        {
          do
          {
            *v37 = -1;
            v37 += 4;
            --v36;
          }

          while (v36);
        }

        ++v33;
        v34 += stride;
      }

      while (v33 != v29);
    }
  }

  if (v15)
  {
    v38 = 0;
    v39 = x;
    v40 = v13;
    v41 = v15;
    v42 = y;
    v43 = v14;
    if (v14 < 0)
    {
      v14 = -v14;
    }

    if (v13 < 0)
    {
      v13 = -v13;
    }

    if (v14 > v13)
    {
      v13 = v14;
    }

    do
    {
      v44 = (((v40 * v38) / v41) + v39);
      if (v44 >= width - 1)
      {
        v45 = width - 1;
      }

      else
      {
        v45 = (((v40 * v38) / v41) + v39);
      }

      v46 = (((v43 * v38) / v41) + v42);
      v47 = 4 * v45;
      if (v46 >= height - 1)
      {
        v48 = height - 1;
      }

      else
      {
        v48 = (((v43 * v38) / v41) + v42);
      }

      if (v46 <= 0)
      {
        v49 = 0;
      }

      else
      {
        v49 = v48;
      }

      if (v44 <= 0)
      {
        v50 = 0;
      }

      else
      {
        v50 = v47;
      }

      v51 = &line[v50 + v49 * stride];
      v51[2] = -1;
      *v51 = 0;
      ++v38;
    }

    while (v13 != v38);
  }

  return 0;
}

- (int)drawRectangle:(char *)rectangle width:(int)width height:(int)height stride:(int)stride keypoints:(CGPoint *)keypoints
{
  v8 = *&stride;
  v9 = *&height;
  v10 = *&width;
  for (i = 0; i != 3; ++i)
  {
    [(VCPCNNHandsDetector *)self drawLine:rectangle width:v10 height:v9 stride:v8 point0:0 point1:keypoints[i].x drawPoint:keypoints[i].y, keypoints[i + 1].x, keypoints[i + 1].y];
  }

  [(VCPCNNHandsDetector *)self drawLine:rectangle width:v10 height:v9 stride:v8 point0:0 point1:keypoints[3].x drawPoint:keypoints[3].y, keypoints->x, keypoints->y];
  return 0;
}

- (int)handsDetection:(__CVBuffer *)detection handsRegions:(id)regions cancel:(id)cancel
{
  v27 = *MEMORY[0x1E69E9840];
  regionsCopy = regions;
  cancelCopy = cancel;
  v11 = cancelCopy;
  if (cancelCopy && ((*(cancelCopy + 2))(cancelCopy) & 1) != 0)
  {
    v12 = -128;
LABEL_19:
    v5 = v12;
    goto LABEL_20;
  }

  v13 = objc_autoreleasePoolPush();
  CVPixelBufferGetBaseAddress(detection);
  CVPixelBufferGetBytesPerRow(detection);
  CVPixelBufferGetWidthOfPlane(detection, 0);
  CVPixelBufferGetHeightOfPlane(detection, 0);
  v12 = [(VCPCNNHandsDetector *)self createInput:self->_inputData withBuffer:detection];
  if (v12)
  {
    v14 = 4;
  }

  else
  {
    array = [MEMORY[0x1E695DF70] array];
    v5 = [(VCPCNNHandsDetector *)self generateHandsBoxes:array];
    if (v5)
    {
      v12 = 0;
      v14 = 1;
    }

    else
    {
      v17 = 0;
      *&v16 = 67109120;
      v24 = v16;
      while (1)
      {
        if ([array count] <= v17)
        {
          v14 = 0;
          v12 = 0;
          goto LABEL_17;
        }

        v18 = [array objectAtIndexedSubscript:v17];
        if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
        {
          classIndex = [v18 classIndex];
          *buf = v24;
          v26 = classIndex;
          _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "CNNHandsDetector: hand class index: %d", buf, 8u);
        }

        *&v20 = self->_cnnInputWidth;
        *&v21 = self->_cnnInputHeight;
        LODWORD(v19) = 1028443341;
        v12 = [v18 extendBoxBy:v19 scaleX:v20 scaleY:v21];
        if (v12)
        {
          break;
        }

        [regionsCopy addObject:v18];

        ++v17;
      }

      v14 = 4;
    }

LABEL_17:
  }

  objc_autoreleasePoolPop(v13);
  if ((v14 | 4) == 4)
  {
    goto LABEL_19;
  }

LABEL_20:

  return v5;
}

- (id).cxx_construct
{
  *(self + 8) = 0;
  *(self + 18) = 0;
  return self;
}

- (void)retrieveBoxes:(uint64_t)a1 outHeight:outWidth:boxes:anchorBox:.cold.1(uint64_t a1)
{
  if (__cxa_guard_acquire(&qword_1ED942850))
  {
    _MergedGlobals_4 = *(a1 + 20) + 5;

    __cxa_guard_release(&qword_1ED942850);
  }
}

@end