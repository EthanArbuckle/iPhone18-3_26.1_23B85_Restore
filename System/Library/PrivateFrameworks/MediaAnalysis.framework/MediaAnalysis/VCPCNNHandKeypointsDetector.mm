@interface VCPCNNHandKeypointsDetector
+ (id)detector:(BOOL)detector sharedModel:(BOOL)model modelName:(id)name enableHandObject:(BOOL)object options:(id)options;
- (id).cxx_construct;
- (int)copyImage:(__CVBuffer *)image toData:(float *)data;
- (int)createInput:(float *)input withBuffer:(__CVBuffer *)buffer cnnInputHeight:(int)height cnnInputWidth:(int)width box:(id)box;
- (int)cvtHeatmaps2Keypoints:(float *)keypoints outHeight:(int)height outWidth:(int)width inHeight:(int)inHeight inWidth:(int)inWidth outChannel:(int)channel keypoints:(CGPoint *)a9 keypointConfidence:(float *)self0 offset:(float)self1;
- (int)handKeypointsDetection:(__CVBuffer *)detection box:(id)box keypoints:(CGPoint)keypoints[21] keypointConfidence:(float)confidence[21] handHoldsObjectConfidence:(float *)objectConfidence;
@end

@implementation VCPCNNHandKeypointsDetector

+ (id)detector:(BOOL)detector sharedModel:(BOOL)model modelName:(id)name enableHandObject:(BOOL)object options:(id)options
{
  objectCopy = object;
  modelCopy = model;
  detectorCopy = detector;
  nameCopy = name;
  optionsCopy = options;
  v13 = [[VCPCNNHandKeypointsDetectorEspresso alloc] init:detectorCopy sharedModel:modelCopy modelName:nameCopy enableHandObject:objectCopy options:optionsCopy];

  return v13;
}

- (int)copyImage:(__CVBuffer *)image toData:(float *)data
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
    v13 = Height;
    v14 = CVPixelBufferLockBaseAddress(image, 1uLL);
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
      BaseAddress = CVPixelBufferGetBaseAddress(image);
      BytesPerRow = CVPixelBufferGetBytesPerRow(image);
      bzero(data, 3 * 4 * Width * v13);
      if (v13 >= 1)
      {
        v19 = 0;
        v20 = &data[2 * v13 * Width];
        v21 = &data[v13 * Width];
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
              data[v23] = *&v25;
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
          data = (data + v22);
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

- (int)createInput:(float *)input withBuffer:(__CVBuffer *)buffer cnnInputHeight:(int)height cnnInputWidth:(int)width box:(id)box
{
  v7 = *&width;
  v8 = *&height;
  boxCopy = box;
  v13 = boxCopy;
  if (input)
  {
    cf = 0;
    [boxCopy minX];
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
    v33 = Scaler::ScaleCropped(&self->_scaler, v40, buffer, &cf, v7, v8, 1111970369);
    if (!v33)
    {
      v34 = VCPSignPostLog();
      v35 = v34;
      if (v27 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v34))
      {
        *v37 = 0;
        _os_signpost_emit_with_name_impl(&dword_1C9B70000, v35, OS_SIGNPOST_INTERVAL_END, v27, "preProcessingHandKeypointCallFromSPI", "", v37, 2u);
      }

      v33 = [(VCPCNNHandKeypointsDetector *)self copyImage:cf toData:input];
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

- (int)cvtHeatmaps2Keypoints:(float *)keypoints outHeight:(int)height outWidth:(int)width inHeight:(int)inHeight inWidth:(int)inWidth outChannel:(int)channel keypoints:(CGPoint *)a9 keypointConfidence:(float *)self0 offset:(float)self1
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
  if (height && width)
  {
    if (channel >= 1)
    {
      v23 = 0;
      v24 = 0;
      do
      {
        if (height < 1)
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
            if (width >= 1)
            {
              v31 = 0;
              do
              {
                v32 = keypoints[v28 + v31];
                if (v32 > 0.1)
                {
                  if (v26 <= v32)
                  {
                    v26 = keypoints[v28 + v31];
                  }

                  v30 = v30 + (v31 * v32);
                  v29 = v29 + (v25 * v32);
                  v27 = v27 + v32;
                }

                ++v31;
              }

              while (width != v31);
            }

            ++v25;
            v28 += width;
          }

          while (v25 != height);
        }

        v33 = &a9[v24];
        v33->x = (((v30 / v27) + offset) * (inHeight / height));
        v33->y = (((v29 / v27) + offset) * (inWidth / width));
        confidence[v24++] = v26;
        v23 += width * height;
      }

      while (v24 != channel);
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

- (int)handKeypointsDetection:(__CVBuffer *)detection box:(id)box keypoints:(CGPoint)keypoints[21] keypointConfidence:(float)confidence[21] handHoldsObjectConfidence:(float *)objectConfidence
{
  boxCopy = box;
  v13 = objc_autoreleasePoolPush();
  *&self->_std = 1065353216;
  Width = CVPixelBufferGetWidth(detection);
  v22 = 0;
  v21 = 0;
  v15 = [(VCPCNNHandKeypointsDetector *)self getInputBuffer:CVPixelBufferGetHeight(detection) srcWidth:Width cnnInputHeight:&v22 cnnInputWidth:&v22 + 4 offset:&v21];
  v16 = [(VCPCNNHandKeypointsDetector *)self createInput:v15 withBuffer:detection cnnInputHeight:v22 cnnInputWidth:HIDWORD(v22) box:boxCopy];
  if (v16)
  {
    v18 = 4;
  }

  else
  {
    LODWORD(v17) = v21;
    LODWORD(objectConfidence) = [(VCPCNNHandKeypointsDetector *)self generateHandKeypoints:keypoints keypointConfidence:confidence offset:objectConfidence handHoldsObjectConfidence:v17];
    v18 = objectConfidence != 0;
  }

  objc_autoreleasePoolPop(v13);
  if ((v18 | 4) == 4)
  {
    objectConfidenceCopy = v16;
  }

  else
  {
    objectConfidenceCopy = objectConfidence;
  }

  return objectConfidenceCopy;
}

- (id).cxx_construct
{
  *(self + 3) = 0;
  *(self + 8) = 0;
  return self;
}

@end