@interface VCPImageHumanActionAnalyzer
+ (id)sharedModel:(id)model outputNames:(id)names properties:(id)properties;
- (CGRect)rectFromPHFace:(id)face;
- (VCPImageHumanActionAnalyzer)initWithPHFaces:(id)faces existingResults:(id)results;
- (id).cxx_construct;
- (int)aggregateWith:(id)with;
- (int)analyzePixelBuffer:(__CVBuffer *)buffer flags:(unint64_t *)flags results:(id *)results cancel:(id)cancel;
- (int)copyImage:(__CVBuffer *)image toData:(float *)data;
- (int)createInput:(float *)input withBuffer:(__CVBuffer *)buffer cnnInputHeight:(int)height cnnInputWidth:(int)width crop:(CGRect)crop;
- (void)dealloc;
@end

@implementation VCPImageHumanActionAnalyzer

+ (id)sharedModel:(id)model outputNames:(id)names properties:(id)properties
{
  modelCopy = model;
  namesCopy = names;
  propertiesCopy = properties;
  v10 = +[VCPSharedInstanceManager sharedManager];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __66__VCPImageHumanActionAnalyzer_sharedModel_outputNames_properties___block_invoke;
  v16[3] = &unk_1E834E480;
  v11 = modelCopy;
  v17 = v11;
  v12 = namesCopy;
  v18 = v12;
  v13 = propertiesCopy;
  v19 = v13;
  v14 = [v10 sharedInstanceWithIdentifier:@"VCPImageHumanActionEspresso" andCreationBlock:v16];

  return v14;
}

VCPCNNModelEspresso *__66__VCPImageHumanActionAnalyzer_sharedModel_outputNames_properties___block_invoke(void *a1)
{
  v1 = [[VCPCNNModelEspresso alloc] initWithParameters:a1[4] inputNames:0 outputNames:a1[5] properties:a1[6]];

  return v1;
}

- (VCPImageHumanActionAnalyzer)initWithPHFaces:(id)faces existingResults:(id)results
{
  facesCopy = faces;
  resultsCopy = results;
  v21.receiver = self;
  v21.super_class = VCPImageHumanActionAnalyzer;
  v9 = [(VCPImageHumanActionAnalyzer *)&v21 init];
  vcp_mediaAnalysisBundle = [MEMORY[0x1E696AAE8] vcp_mediaAnalysisBundle];
  resourceURL = [vcp_mediaAnalysisBundle resourceURL];

  v12 = [MEMORY[0x1E695DFF8] URLWithString:@"cnn_image_human_action.espresso.net" relativeToURL:resourceURL];
  if (!v9)
  {
    goto LABEL_6;
  }

  objc_storeStrong(&v9->_phFaces, faces);
  array = [MEMORY[0x1E695DF70] array];
  results = v9->_results;
  v9->_results = array;

  v15 = [objc_opt_class() sharedModel:v12 outputNames:0 properties:0];
  model = v9->_model;
  v9->_model = v15;

  v9->_inputData = operator new[](0xC0000uLL, MEMORY[0x1E69E5398]);
  objc_storeStrong(&v9->_existingResults, results);
  v17 = v9->_model;
  if (!v17)
  {
LABEL_5:
    inputData = 0;
    goto LABEL_7;
  }

  inputData = v9->_inputData;
  if (inputData)
  {
    if ([(VCPCNNModelEspresso *)v17 prepareModelWithConfig:&stru_1F496CB30])
    {
      goto LABEL_5;
    }

LABEL_6:
    inputData = v9;
  }

LABEL_7:
  v19 = inputData;

  return v19;
}

- (void)dealloc
{
  inputData = self->_inputData;
  if (inputData)
  {
    MEMORY[0x1CCA95C10](inputData, 0x1000C8052888210);
  }

  v4.receiver = self;
  v4.super_class = VCPImageHumanActionAnalyzer;
  [(VCPImageHumanActionAnalyzer *)&v4 dealloc];
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
            LOBYTE(v14) = BaseAddress[(v19 * 4) + 2];
            v21 = *&v14 / 255.0;
            *&v21 = v21;
            data[v19] = *&v21;
            LOBYTE(v21) = BaseAddress[(v19 * 4) + 1];
            v22 = *&v21 / 255.0;
            *&v22 = v22;
            v17[v19] = *&v22;
            LOBYTE(v22) = BaseAddress[(v19 * 4)];
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

- (int)aggregateWith:(id)with
{
  v63 = *MEMORY[0x1E69E9840];
  withCopy = with;
  selfCopy = self;
  if ([(NSMutableArray *)self->_results count])
  {
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    v56 = 0u;
    v57 = 0u;
    v54 = 0u;
    v55 = 0u;
    obj = self->_results;
    v4 = [(NSMutableArray *)obj countByEnumeratingWithState:&v54 objects:v62 count:16];
    if (v4)
    {
      v5 = *v55;
      do
      {
        for (i = 0; i != v4; ++i)
        {
          if (*v55 != v5)
          {
            objc_enumerationMutation(obj);
          }

          v7 = *(*(&v54 + 1) + 8 * i);
          v8 = [v7 objectForKeyedSubscript:@"attributes"];
          v9 = [v8 objectForKeyedSubscript:@"faceIdentifier"];

          v10 = [v7 objectForKeyedSubscript:@"attributes"];
          v11 = [v10 objectForKeyedSubscript:@"humanActions"];

          if (v9)
          {
            v12 = v11 == 0;
          }

          else
          {
            v12 = 1;
          }

          if (!v12)
          {
            [dictionary setObject:v7 forKeyedSubscript:v9];
          }
        }

        v4 = [(NSMutableArray *)obj countByEnumeratingWithState:&v54 objects:v62 count:16];
      }

      while (v4);
    }

    [(NSMutableArray *)selfCopy->_results removeAllObjects];
    array = [MEMORY[0x1E695DF70] array];
    v52 = 0u;
    v53 = 0u;
    v50 = 0u;
    v51 = 0u;
    v39 = withCopy;
    v13 = [v39 countByEnumeratingWithState:&v50 objects:v61 count:16];
    if (v13)
    {
      v41 = *v51;
      do
      {
        v43 = v13;
        for (j = 0; j != v43; ++j)
        {
          if (*v51 != v41)
          {
            objc_enumerationMutation(v39);
          }

          v15 = *(*(&v50 + 1) + 8 * j);
          v16 = [v15 objectForKeyedSubscript:@"attributes"];
          v17 = [v16 objectForKeyedSubscript:@"faceIdentifier"];

          v18 = [v15 objectForKeyedSubscript:@"attributes"];
          v19 = [v18 objectForKeyedSubscript:@"humanActions"];

          if (v17)
          {
            v20 = v19 == 0;
          }

          else
          {
            v20 = 1;
          }

          if (v20)
          {
            [array addObject:v15];
          }

          else
          {
            v21 = [dictionary objectForKeyedSubscript:v17];
            v22 = v21 == 0;

            if (!v22)
            {
              v23 = [v15 mutableCopy];
              v24 = [v19 mutableCopy];
              v25 = [dictionary objectForKeyedSubscript:v17];
              v26 = [v25 objectForKeyedSubscript:@"attributes"];
              v27 = [v26 objectForKeyedSubscript:@"humanActions"];
              [v24 addEntriesFromDictionary:v27];

              [dictionary removeObjectForKey:v17];
              v28 = [v15 objectForKeyedSubscript:@"attributes"];
              v29 = [v28 mutableCopy];
              [v23 setObject:v29 forKeyedSubscript:@"attributes"];

              v30 = [v23 objectForKeyedSubscript:@"attributes"];
              [v30 setObject:v24 forKeyedSubscript:@"humanActions"];

              [array addObject:v23];
              if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
              {
                *buf = 138412290;
                v60 = v17;
                _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "Image Action classifier - merged actions for face  %@", buf, 0xCu);
              }
            }
          }
        }

        v13 = [v39 countByEnumeratingWithState:&v50 objects:v61 count:16];
      }

      while (v13);
    }

    [(NSMutableArray *)selfCopy->_results addObjectsFromArray:array];
    v48 = 0u;
    v49 = 0u;
    v46 = 0u;
    v47 = 0u;
    v31 = dictionary;
    v32 = [v31 countByEnumeratingWithState:&v46 objects:v58 count:16];
    if (v32)
    {
      v33 = *v47;
      do
      {
        for (k = 0; k != v32; ++k)
        {
          if (*v47 != v33)
          {
            objc_enumerationMutation(v31);
          }

          results = selfCopy->_results;
          v36 = [v31 objectForKeyedSubscript:*(*(&v46 + 1) + 8 * k)];
          [(NSMutableArray *)results addObject:v36];
        }

        v32 = [v31 countByEnumeratingWithState:&v46 objects:v58 count:16];
      }

      while (v32);
    }
  }

  else
  {
    [(NSMutableArray *)self->_results addObjectsFromArray:withCopy];
  }

  return 0;
}

- (int)createInput:(float *)input withBuffer:(__CVBuffer *)buffer cnnInputHeight:(int)height cnnInputWidth:(int)width crop:(CGRect)crop
{
  if (!input)
  {
    return -108;
  }

  cf = 0;
  v9 = Scaler::ScaleCropped(&self->_scaler, crop, buffer, &cf, *&width, *&height, 1111970369);
  if (!v9)
  {
    v9 = [(VCPImageHumanActionAnalyzer *)self copyImage:cf toData:input];
  }

  if (cf)
  {
    CFRelease(cf);
  }

  return v9;
}

- (CGRect)rectFromPHFace:(id)face
{
  v57 = *MEMORY[0x1E69E9840];
  faceCopy = face;
  v4 = *MEMORY[0x1E695F058];
  v5 = *(MEMORY[0x1E695F058] + 8);
  v6 = *(MEMORY[0x1E695F058] + 16);
  v7 = *(MEMORY[0x1E695F058] + 24);
  [faceCopy bodyWidth];
  v9 = v8;
  [faceCopy bodyHeight];
  if (v9 * v10 < 0.00499999989 || ([faceCopy size], v11 == 0.0))
  {
    if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
    {
      localIdentifier = [faceCopy localIdentifier];
      *buf = 138412290;
      v56 = localIdentifier;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "Image Action classifier - torso or face not detected %@", buf, 0xCu);
    }
  }

  else
  {
    [faceCopy centerX];
    v14 = v13;
    [faceCopy size];
    v16 = v15;
    [faceCopy bodyCenterX];
    v18 = v17;
    [faceCopy bodyWidth];
    v20 = v19;
    [faceCopy centerX];
    v22 = v21;
    [faceCopy size];
    v24 = v23;
    [faceCopy bodyCenterX];
    v26 = v25;
    [faceCopy bodyWidth];
    v54 = v27;
    v50 = v26;
    v51 = v24;
    v52 = v22;
    v53 = v20;
    [faceCopy centerY];
    v49 = v28;
    [faceCopy size];
    v48 = v29;
    [faceCopy bodyCenterY];
    v31 = v30;
    [faceCopy bodyHeight];
    v33 = v32;
    [faceCopy centerY];
    v35 = v34;
    [faceCopy size];
    v37 = v36;
    [faceCopy bodyCenterY];
    v39 = v38;
    [faceCopy bodyHeight];
    v40 = fmax(fmin(v14 + v16 * -0.5, v18 + v53 * -1.5), 0.00999999978);
    v41 = fmin(fmax(v52 + v51 * 0.5, v50 + v54 * 1.5), 0.99000001);
    v42 = fmax(fmin(v49 + v48 * -0.5, v31 + v33 * -1.70000005), 0.00999999978);
    *&v43 = fmin(fmax(v35 + v37 * 0.5, v39 + v43 * 0.5), 0.99000001);
    v4 = v40;
    v5 = v42;
    v6 = (v41 - v40);
    v7 = (*&v43 - v42);
  }

  v44 = v4;
  v45 = v5;
  v46 = v6;
  v47 = v7;
  result.size.height = v47;
  result.size.width = v46;
  result.origin.y = v45;
  result.origin.x = v44;
  return result;
}

- (int)analyzePixelBuffer:(__CVBuffer *)buffer flags:(unint64_t *)flags results:(id *)results cancel:(id)cancel
{
  v70 = *MEMORY[0x1E69E9840];
  cancelCopy = cancel;
  [(NSMutableArray *)self->_results removeAllObjects];
  Width = CVPixelBufferGetWidth(buffer);
  Height = CVPixelBufferGetHeight(buffer);
  if (Height >= Width)
  {
    v10 = Width;
  }

  else
  {
    v10 = Height;
  }

  if (v10 >= 64)
  {
    if (cancelCopy && (cancelCopy[2]() & 1) != 0)
    {
      v11 = -128;
    }

    else
    {
      if ([(PHFetchResult *)self->_phFaces count]&& [(PHFetchResult *)self->_phFaces count]<= 2)
      {
        v59 = 0u;
        v60 = 0u;
        v57 = 0u;
        v58 = 0u;
        obj = self->_phFaces;
        v12 = [(PHFetchResult *)obj countByEnumeratingWithState:&v57 objects:v69 count:16];
        if (v12)
        {
          v54 = *v58;
          *&v13 = 67109376;
          v49 = v13;
          v14 = MEMORY[0x1E6960CC0];
          while (2)
          {
            v53 = v12;
            for (i = 0; i != v53; ++i)
            {
              if (*v58 != v54)
              {
                objc_enumerationMutation(obj);
              }

              v16 = *(*(&v57 + 1) + 8 * i);
              if (![v16 ageType] || objc_msgSend(v16, "ageType") == 1 || objc_msgSend(v16, "ageType") == 2)
              {
                [(VCPImageHumanActionAnalyzer *)self rectFromPHFace:v16];
                x = v71.origin.x;
                y = v71.origin.y;
                v19 = v71.size.width;
                v20 = v71.size.height;
                if (!CGRectIsEmpty(v71))
                {
                  localIdentifier = [v16 localIdentifier];
                  v22 = localIdentifier == 0;

                  if (!v22)
                  {
                    dictionary = [MEMORY[0x1E695DF90] dictionary];
                    v11 = [(VCPImageHumanActionAnalyzer *)self createInput:self->_inputData withBuffer:buffer cnnInputHeight:256 cnnInputWidth:256 crop:x, 1.0 - y - v20, v19, v20];
                    if (v11 || (v11 = [(VCPCNNModelEspresso *)self->_model espressoForward:self->_inputData]) != 0)
                    {

                      goto LABEL_55;
                    }

                    model = self->_model;
                    if (!model || ([(VCPCNNModelEspresso *)model outputBlob], (value = buf[0].value) == 0) || ((v25 = self->_model) == 0 ? (v28 = 0, v27 = 0) : ([(VCPCNNModelEspresso *)v25 outputBlob], v26 = self->_model, v27 = v68, !v26) ? (v28 = 0) : ([(VCPCNNModelEspresso *)v26 outputBlob], v28 = v56), v28 * v27 != 5))
                    {

                      v11 = -18;
                      goto LABEL_55;
                    }

                    v30 = 0;
                    v31 = 0;
                    v32 = 0.0;
                    do
                    {
                      if (*(value + 4 * v30) > v32)
                      {
                        v32 = *(value + 4 * v30);
                        v31 = v30;
                      }

                      ++v30;
                    }

                    while (v30 != 5);
                    if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
                    {
                      buf[0].value = __PAIR64__(v31, v49);
                      LOWORD(buf[0].timescale) = 2048;
                      *(&buf[0].timescale + 2) = v32;
                      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "Image Action classifier - action class %d with confidence %f", buf, 0x12u);
                    }

                    if (v32 > 0.2 && v31 != 4)
                    {
                      *&v33 = v32;
                      v35 = [MEMORY[0x1E696AD98] numberWithFloat:v33];
                      10000 = [MEMORY[0x1E696AD98] numberWithInt:v31 + 10000];
                      stringValue = [10000 stringValue];
                      [dictionary setObject:v35 forKeyedSubscript:stringValue];

                      v38 = MEMORY[0x1E695DF90];
                      v65[0] = @"faceIdentifier";
                      localIdentifier2 = [v16 localIdentifier];
                      v66[0] = localIdentifier2;
                      v66[1] = dictionary;
                      v65[1] = @"humanActions";
                      v65[2] = @"humanBounds";
                      v72.origin.x = x;
                      v72.origin.y = y;
                      v72.size.width = v19;
                      v72.size.height = v20;
                      v40 = NSStringFromRect(v72);
                      v66[2] = v40;
                      v41 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v66 forKeys:v65 count:3];
                      v42 = [v38 dictionaryWithDictionary:v41];

                      results = self->_results;
                      v63[0] = @"start";
                      buf[0] = *v14;
                      v44 = CMTimeToNSDictionary(buf);
                      v64[0] = v44;
                      v63[1] = @"duration";
                      buf[0] = *v14;
                      v45 = CMTimeToNSDictionary(buf);
                      v63[2] = @"attributes";
                      v64[1] = v45;
                      v64[2] = v42;
                      v46 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v64 forKeys:v63 count:3];
                      [(NSMutableArray *)results addObject:v46];
                    }
                  }
                }
              }

              else if (MediaAnalysisLogLevel() >= 6)
              {
                v29 = MEMORY[0x1E69E9C10];
                if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
                {
                  LOWORD(buf[0].value) = 0;
                  _os_log_impl(&dword_1C9B70000, v29, OS_LOG_TYPE_INFO, "Image Action classifier - PHFace gated out by age attribute", buf, 2u);
                }
              }
            }

            v12 = [(PHFetchResult *)obj countByEnumeratingWithState:&v57 objects:v69 count:16];
            if (v12)
            {
              continue;
            }

            break;
          }
        }
      }

      if (![(NSArray *)self->_existingResults count]|| (v11 = [(VCPImageHumanActionAnalyzer *)self aggregateWith:self->_existingResults]) == 0)
      {
        v47 = self->_results;
        if (v47)
        {
          v61 = @"HumanActionClassificationResults";
          v62 = v47;
          *results = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v62 forKeys:&v61 count:1];
        }

        v11 = 0;
      }
    }
  }

  else
  {
    v11 = 0;
  }

LABEL_55:

  return v11;
}

- (id).cxx_construct
{
  *(self + 11) = 0;
  *(self + 24) = 0;
  return self;
}

@end