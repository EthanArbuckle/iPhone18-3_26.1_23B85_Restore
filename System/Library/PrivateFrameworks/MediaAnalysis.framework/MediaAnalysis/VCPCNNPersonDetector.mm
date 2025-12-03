@interface VCPCNNPersonDetector
- (VCPCNNPersonDetector)initWithMaxNumRegions:(int)regions forceCPU:(BOOL)u sharedModel:(BOOL)model inputConfig:(id)config;
- (id).cxx_construct;
- (int)copyImage:(__CVBuffer *)image toData:(float *)data;
- (int)createInput:(float *)input withBuffer:(__CVBuffer *)buffer inputHeight:(int)height inputWidth:(int)width;
- (int)generatePersonBoxes:(id)boxes;
- (int)generatePersonRegions:(const void *)regions boxes:(id)boxes maxNumRegions:(int)numRegions;
- (int)personDetection:(__CVBuffer *)detection personRegions:(id)regions cancel:(id)cancel;
- (int)retrieveBoxes:(float *)boxes outHeight:(int)height outWidth:(int)width boxes:(id)a6 anchorBox:(float)box[3][2];
- (void)nonMaxSuppression:(id)suppression;
@end

@implementation VCPCNNPersonDetector

- (VCPCNNPersonDetector)initWithMaxNumRegions:(int)regions forceCPU:(BOOL)u sharedModel:(BOOL)model inputConfig:(id)config
{
  modelCopy = model;
  uCopy = u;
  v55[2] = *MEMORY[0x1E69E9840];
  configCopy = config;
  self->_maxNumRegions = regions;
  outputNames = self->_outputNames;
  self->_outputNames = &unk_1F49BF1A8;

  std::vector<void *>::resize(&self->_outputsData.__begin_, [(NSArray *)self->_outputNames count]);
  v53.receiver = self;
  v53.super_class = VCPCNNPersonDetector;
  v12 = [(VCPCNNPersonDetector *)&v53 init];
  if (v12)
  {
    vcp_mediaAnalysisBundle = [MEMORY[0x1E696AAE8] vcp_mediaAnalysisBundle];
    resourceURL = [vcp_mediaAnalysisBundle resourceURL];

    v15 = [MEMORY[0x1E695DFF8] URLWithString:@"cnn_person_detector.espresso.net" relativeToURL:resourceURL];
    v16 = [VCPCNNModelEspresso alloc];
    v17 = v12->_outputNames;
    v54[0] = @"forceCPU";
    v18 = [MEMORY[0x1E696AD98] numberWithBool:uCopy];
    v55[0] = v18;
    v54[1] = @"sharedContext";
    v19 = [MEMORY[0x1E696AD98] numberWithBool:modelCopy];
    v55[1] = v19;
    v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v55 forKeys:v54 count:2];
    v21 = [(VCPCNNModelEspresso *)v16 initWithParameters:v15 inputNames:0 outputNames:v17 properties:v20];
    modelEspresso = v12->_modelEspresso;
    v12->_modelEspresso = v21;

    v23 = v12->_modelEspresso;
    if (v23 && ![(VCPCNNModelEspresso *)v23 prepareModelWithConfig:configCopy]&& ((v27 = v12->_modelEspresso) == 0 ? (v28 = 0, v52 = 0u, v51 = 0) : ([(VCPCNNModelEspresso *)v27 inputBlob], v28 = *(&v52 + 1)), (v29 = v12->_modelEspresso) == 0 ? (v30 = 0, v49 = 0) : ([(VCPCNNModelEspresso *)v29 inputBlob], v30 = v50), (v31 = v12->_modelEspresso) == 0 ? (v32 = 0) : ([(VCPCNNModelEspresso *)v31 inputBlob], v32 = v48), (v33 = v30 * v28 * v32, v33 >> 62) ? (v34 = -1) : (v34 = 4 * v33), (v12->_inputData = operator new[](v34, MEMORY[0x1E69E5398]), (v35 = v12->_modelEspresso) == 0) ? (v36 = 0) : ([(VCPCNNModelEspresso *)v35 inputBlob], v36 = v52), (v12->_inputWidth = v36, (v37 = v12->_modelEspresso) == 0) ? (v38 = 0) : ([(VCPCNNModelEspresso *)v37 inputBlob], v38 = DWORD2(v52)), v12->_inputHeight = v38, v12->_inputData))
    {
      v39 = 0;
      v40 = 0;
      v41 = MEMORY[0x1E69E5398];
      while ([(NSArray *)v12->_outputNames count]> v40)
      {
        [(VCPCNNModelEspresso *)v12->_modelEspresso outputBlobs];
        v42 = *&v51[v39 + 88];
        [(VCPCNNModelEspresso *)v12->_modelEspresso outputBlobs];
        v43 = *&v49[v39 + 80];
        [(VCPCNNModelEspresso *)v12->_modelEspresso outputBlobs];
        v44 = v43 * v42 * *&__p[v39 + 96];
        if (v44 >> 62)
        {
          v45 = -1;
        }

        else
        {
          v45 = 4 * v44;
        }

        v12->_outputsData.__begin_[v40] = operator new[](v45, v41);
        if (__p)
        {
          operator delete(__p);
        }

        if (v49)
        {
          operator delete(v49);
        }

        if (v51)
        {
          operator delete(v51);
        }

        v46 = v12->_outputsData.__begin_[v40++];
        v39 += 168;
        if (!v46)
        {
          goto LABEL_4;
        }
      }

      v24 = v12;
    }

    else
    {
LABEL_4:
      v24 = 0;
    }
  }

  else
  {
    v24 = 0;
  }

  v25 = v24;

  return v25;
}

- (int)copyImage:(__CVBuffer *)image toData:(float *)data
{
  if (CVPixelBufferGetPixelFormatType(image) != 1111970369)
  {
    return -50;
  }

  Width = CVPixelBufferGetWidth(image);
  Height = CVPixelBufferGetHeight(image);
  pixelBuffer = image;
  unlockFlags = 1;
  if (!image)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      [VCPVideoCNNAnalyzer copyImage:withChannels:settling:];
    }

    return -50;
  }

  v8 = Height;
  v9 = CVPixelBufferLockBaseAddress(image, 1uLL);
  v23 = v9;
  if (v9)
  {
    v10 = v9;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      [VCPImageConverter convertImage:yuvFrame:];
    }
  }

  else
  {
    BaseAddress = CVPixelBufferGetBaseAddress(image);
    BytesPerRow = CVPixelBufferGetBytesPerRow(image);
    bzero(data, 3 * 4 * Width * v8);
    if (v8 >= 1)
    {
      v15 = 0;
      v16 = &data[2 * v8 * Width];
      v17 = &data[v8 * Width];
      v18 = 4 * Width;
      do
      {
        if (Width >= 1)
        {
          v19 = 0;
          v20 = Width & 0x7FFFFFFF;
          do
          {
            LOBYTE(v14) = BaseAddress[(v19 * 4)];
            v21 = *&v14 / 255.0;
            *&v21 = v21;
            data[v19] = *&v21;
            LOBYTE(v21) = BaseAddress[(v19 * 4) + 1];
            v22 = *&v21 / 255.0;
            *&v22 = v22;
            v17[v19] = *&v22;
            LOBYTE(v22) = BaseAddress[(v19 * 4) + 2];
            v14 = *&v22 / 255.0;
            *&v14 = v14;
            v16[v19++] = *&v14;
            --v20;
          }

          while (v20);
        }

        BaseAddress += BytesPerRow;
        ++v15;
        v16 = (v16 + v18);
        v17 = (v17 + v18);
        data = (data + v18);
      }

      while (v15 != v8);
    }

    v10 = CVPixelBufferLock::Unlock(&v23);
    if (pixelBuffer && !v23 && CVPixelBufferUnlockBaseAddress(pixelBuffer, unlockFlags) && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      [VCPImageExposurePreAnalyzer analyzePixelBuffer:flags:results:cancel:];
    }
  }

  return v10;
}

- (int)createInput:(float *)input withBuffer:(__CVBuffer *)buffer inputHeight:(int)height inputWidth:(int)width
{
  if (!input)
  {
    return -108;
  }

  cf = 0;
  Scaler::Scale(&self->_scaler, buffer, &cf, *&width, *&height, 1111970369);
  v9 = v8;
  if (!v8)
  {
    v9 = [(VCPCNNPersonDetector *)self copyImage:cf toData:input];
  }

  if (cf)
  {
    CFRelease(cf);
  }

  return v9;
}

- (int)generatePersonBoxes:(id)boxes
{
  boxesCopy = boxes;
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

    v5 = [(VCPCNNPersonDetector *)self generatePersonRegions:&__p boxes:boxesCopy maxNumRegions:self->_maxNumRegions];
    if (__p)
    {
      v9 = __p;
      operator delete(__p);
    }
  }

  return v5;
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

- (int)retrieveBoxes:(float *)boxes outHeight:(int)height outWidth:(int)width boxes:(id)a6 anchorBox:(float)box[3][2]
{
  v52 = a6;
  if (height >= 1)
  {
    v9 = width * height;
    heightCopy = height;
    heightCopy2 = height;
    v46 = &boxes[4 * width * height];
    v47 = 0;
    v49 = 6 * width * height;
    v10 = 0.5;
    do
    {
      if (width >= 1)
      {
        v11 = 0;
        v12 = v46;
        do
        {
          v13 = 0;
          v14 = -1;
          v15 = 0.0;
          v16 = v12;
          do
          {
            v17 = 1.0 / (expf(-*v16) + 1.0);
            if (v17 > v15)
            {
              v14 = v13;
              v15 = v17;
            }

            ++v13;
            v16 += v49;
          }

          while (v13 != 3);
          if (v15 > v10)
          {
            v18 = &boxes[v11 + v47 * width + v49 * v14];
            v19 = *v18;
            v20 = &v18[v9];
            v21 = *v20;
            inputWidth = self->_inputWidth;
            inputHeight = self->_inputHeight;
            v24 = &v20[v9];
            v25 = *v24;
            v26 = &(*box)[2 * v14];
            v27 = v24[v9];
            v28 = *v26;
            v29 = v26[1];
            v30 = [VCPBoundingBox alloc];
            v31 = expf(v27);
            v32 = expf(v25);
            v33 = expf(-v21) + 1.0;
            v34 = -v19;
            v35 = 1.0 / v33;
            v36 = expf(v34);
            *&v37 = v31 * v29;
            *&v38 = v32 * v28;
            *&v39 = ((v35 + v47) * inputHeight) / heightCopy;
            *&v40 = (((1.0 / (v36 + 1.0)) + v11) * inputWidth) / width;
            *&v41 = v15;
            v42 = [(VCPBoundingBox *)v30 initWithCenterAndSize:v40 y:v39 width:v38 height:v37 confidence:v41];
            [v52 addObject:v42];

            v10 = 0.5;
          }

          ++v11;
          ++v12;
        }

        while (v11 != width);
      }

      v46 += width;
      ++v47;
    }

    while (v47 != heightCopy2);
  }

  return 0;
}

- (int)generatePersonRegions:(const void *)regions boxes:(id)boxes maxNumRegions:(int)numRegions
{
  boxesCopy = boxes;
  v9 = *regions;
  if (*regions != *(regions + 1))
  {
    v10 = &kAnchorBoxes;
    do
    {
      [(VCPCNNPersonDetector *)self retrieveBoxes:*v9 outHeight:*(v9 + 88) outWidth:*(v9 + 80) boxes:boxesCopy anchorBox:v10];
      v9 += 168;
      v10 += 24;
    }

    while (v9 != *(regions + 1));
  }

  [(VCPCNNPersonDetector *)self nonMaxSuppression:boxesCopy];
  [boxesCopy sortUsingComparator:&__block_literal_global_88];
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
      if (v12 != 0.0)
      {
        break;
      }

      [boxesCopy removeLastObject];
      lastObject2 = [boxesCopy lastObject];

      lastObject = lastObject2;
    }

    while (lastObject2);
  }

  return 0;
}

uint64_t __66__VCPCNNPersonDetector_generatePersonRegions_boxes_maxNumRegions___block_invoke(uint64_t a1, void *a2, void *a3)
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

- (int)personDetection:(__CVBuffer *)detection personRegions:(id)regions cancel:(id)cancel
{
  regionsCopy = regions;
  cancelCopy = cancel;
  v11 = objc_autoreleasePoolPush();
  v12 = [(VCPCNNPersonDetector *)self createInput:self->_inputData withBuffer:detection inputHeight:self->_inputHeight inputWidth:self->_inputWidth];
  if (v12)
  {
    v13 = 4;
  }

  else
  {
    array = [MEMORY[0x1E695DF70] array];
    v5 = [(VCPCNNPersonDetector *)self generatePersonBoxes:array];
    if (v5)
    {
      v13 = 1;
    }

    else
    {
      for (i = 0; [array count] > i; ++i)
      {
        v16 = [array objectAtIndexedSubscript:i];
        [v16 minX];
        *&v17 = *&v17 / self->_inputWidth;
        if (*&v17 < 0.0)
        {
          *&v17 = 0.0;
        }

        [v16 setMinX:v17];
        [v16 maxX];
        *&v18 = *&v18 / self->_inputWidth;
        if (*&v18 > 1.0)
        {
          *&v18 = 1.0;
        }

        [v16 setMaxX:v18];
        [v16 minY];
        *&v19 = *&v19 / self->_inputHeight;
        if (*&v19 < 0.0)
        {
          *&v19 = 0.0;
        }

        [v16 setMinY:v19];
        [v16 maxY];
        *&v20 = *&v20 / self->_inputHeight;
        if (*&v20 > 1.0)
        {
          *&v20 = 1.0;
        }

        [v16 setMaxY:v20];
        [regionsCopy addObject:v16];
      }

      v13 = 0;
    }
  }

  objc_autoreleasePoolPop(v11);
  if ((v13 | 4) == 4)
  {
    v21 = v12;
  }

  else
  {
    v21 = v5;
  }

  return v21;
}

- (id).cxx_construct
{
  *(self + 6) = 0;
  *(self + 2) = 0u;
  *(self + 10) = 0;
  *(self + 22) = 0;
  return self;
}

@end