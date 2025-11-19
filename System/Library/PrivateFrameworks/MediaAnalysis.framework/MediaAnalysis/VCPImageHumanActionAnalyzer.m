@interface VCPImageHumanActionAnalyzer
+ (id)sharedModel:(id)a3 outputNames:(id)a4 properties:(id)a5;
- (CGRect)rectFromPHFace:(id)a3;
- (VCPImageHumanActionAnalyzer)initWithPHFaces:(id)a3 existingResults:(id)a4;
- (id).cxx_construct;
- (int)aggregateWith:(id)a3;
- (int)analyzePixelBuffer:(__CVBuffer *)a3 flags:(unint64_t *)a4 results:(id *)a5 cancel:(id)a6;
- (int)copyImage:(__CVBuffer *)a3 toData:(float *)a4;
- (int)createInput:(float *)a3 withBuffer:(__CVBuffer *)a4 cnnInputHeight:(int)a5 cnnInputWidth:(int)a6 crop:(CGRect)a7;
- (void)dealloc;
@end

@implementation VCPImageHumanActionAnalyzer

+ (id)sharedModel:(id)a3 outputNames:(id)a4 properties:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = +[VCPSharedInstanceManager sharedManager];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __66__VCPImageHumanActionAnalyzer_sharedModel_outputNames_properties___block_invoke;
  v16[3] = &unk_1E834E480;
  v11 = v7;
  v17 = v11;
  v12 = v8;
  v18 = v12;
  v13 = v9;
  v19 = v13;
  v14 = [v10 sharedInstanceWithIdentifier:@"VCPImageHumanActionEspresso" andCreationBlock:v16];

  return v14;
}

VCPCNNModelEspresso *__66__VCPImageHumanActionAnalyzer_sharedModel_outputNames_properties___block_invoke(void *a1)
{
  v1 = [[VCPCNNModelEspresso alloc] initWithParameters:a1[4] inputNames:0 outputNames:a1[5] properties:a1[6]];

  return v1;
}

- (VCPImageHumanActionAnalyzer)initWithPHFaces:(id)a3 existingResults:(id)a4
{
  v7 = a3;
  v8 = a4;
  v21.receiver = self;
  v21.super_class = VCPImageHumanActionAnalyzer;
  v9 = [(VCPImageHumanActionAnalyzer *)&v21 init];
  v10 = [MEMORY[0x1E696AAE8] vcp_mediaAnalysisBundle];
  v11 = [v10 resourceURL];

  v12 = [MEMORY[0x1E695DFF8] URLWithString:@"cnn_image_human_action.espresso.net" relativeToURL:v11];
  if (!v9)
  {
    goto LABEL_6;
  }

  objc_storeStrong(&v9->_phFaces, a3);
  v13 = [MEMORY[0x1E695DF70] array];
  results = v9->_results;
  v9->_results = v13;

  v15 = [objc_opt_class() sharedModel:v12 outputNames:0 properties:0];
  model = v9->_model;
  v9->_model = v15;

  v9->_inputData = operator new[](0xC0000uLL, MEMORY[0x1E69E5398]);
  objc_storeStrong(&v9->_existingResults, a4);
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

- (int)copyImage:(__CVBuffer *)a3 toData:(float *)a4
{
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

  v8 = Height;
  v9 = CVPixelBufferLockBaseAddress(a3, 1uLL);
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
    BaseAddress = CVPixelBufferGetBaseAddress(a3);
    BytesPerRow = CVPixelBufferGetBytesPerRow(a3);
    bzero(a4, 3 * 4 * Width * v8);
    if (v8 >= 1)
    {
      v15 = 0;
      v16 = &a4[2 * v8 * Width];
      v17 = &a4[v8 * Width];
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
            a4[v19] = *&v21;
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
        a4 = (a4 + v18);
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

- (int)aggregateWith:(id)a3
{
  v63 = *MEMORY[0x1E69E9840];
  v38 = a3;
  v42 = self;
  if ([(NSMutableArray *)self->_results count])
  {
    v45 = [MEMORY[0x1E695DF90] dictionary];
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
            [v45 setObject:v7 forKeyedSubscript:v9];
          }
        }

        v4 = [(NSMutableArray *)obj countByEnumeratingWithState:&v54 objects:v62 count:16];
      }

      while (v4);
    }

    [(NSMutableArray *)v42->_results removeAllObjects];
    v40 = [MEMORY[0x1E695DF70] array];
    v52 = 0u;
    v53 = 0u;
    v50 = 0u;
    v51 = 0u;
    v39 = v38;
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
            [v40 addObject:v15];
          }

          else
          {
            v21 = [v45 objectForKeyedSubscript:v17];
            v22 = v21 == 0;

            if (!v22)
            {
              v23 = [v15 mutableCopy];
              v24 = [v19 mutableCopy];
              v25 = [v45 objectForKeyedSubscript:v17];
              v26 = [v25 objectForKeyedSubscript:@"attributes"];
              v27 = [v26 objectForKeyedSubscript:@"humanActions"];
              [v24 addEntriesFromDictionary:v27];

              [v45 removeObjectForKey:v17];
              v28 = [v15 objectForKeyedSubscript:@"attributes"];
              v29 = [v28 mutableCopy];
              [v23 setObject:v29 forKeyedSubscript:@"attributes"];

              v30 = [v23 objectForKeyedSubscript:@"attributes"];
              [v30 setObject:v24 forKeyedSubscript:@"humanActions"];

              [v40 addObject:v23];
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

    [(NSMutableArray *)v42->_results addObjectsFromArray:v40];
    v48 = 0u;
    v49 = 0u;
    v46 = 0u;
    v47 = 0u;
    v31 = v45;
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

          results = v42->_results;
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
    [(NSMutableArray *)self->_results addObjectsFromArray:v38];
  }

  return 0;
}

- (int)createInput:(float *)a3 withBuffer:(__CVBuffer *)a4 cnnInputHeight:(int)a5 cnnInputWidth:(int)a6 crop:(CGRect)a7
{
  if (!a3)
  {
    return -108;
  }

  cf = 0;
  v9 = Scaler::ScaleCropped(&self->_scaler, a7, a4, &cf, *&a6, *&a5, 1111970369);
  if (!v9)
  {
    v9 = [(VCPImageHumanActionAnalyzer *)self copyImage:cf toData:a3];
  }

  if (cf)
  {
    CFRelease(cf);
  }

  return v9;
}

- (CGRect)rectFromPHFace:(id)a3
{
  v57 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = *MEMORY[0x1E695F058];
  v5 = *(MEMORY[0x1E695F058] + 8);
  v6 = *(MEMORY[0x1E695F058] + 16);
  v7 = *(MEMORY[0x1E695F058] + 24);
  [v3 bodyWidth];
  v9 = v8;
  [v3 bodyHeight];
  if (v9 * v10 < 0.00499999989 || ([v3 size], v11 == 0.0))
  {
    if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
    {
      v12 = [v3 localIdentifier];
      *buf = 138412290;
      v56 = v12;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "Image Action classifier - torso or face not detected %@", buf, 0xCu);
    }
  }

  else
  {
    [v3 centerX];
    v14 = v13;
    [v3 size];
    v16 = v15;
    [v3 bodyCenterX];
    v18 = v17;
    [v3 bodyWidth];
    v20 = v19;
    [v3 centerX];
    v22 = v21;
    [v3 size];
    v24 = v23;
    [v3 bodyCenterX];
    v26 = v25;
    [v3 bodyWidth];
    v54 = v27;
    v50 = v26;
    v51 = v24;
    v52 = v22;
    v53 = v20;
    [v3 centerY];
    v49 = v28;
    [v3 size];
    v48 = v29;
    [v3 bodyCenterY];
    v31 = v30;
    [v3 bodyHeight];
    v33 = v32;
    [v3 centerY];
    v35 = v34;
    [v3 size];
    v37 = v36;
    [v3 bodyCenterY];
    v39 = v38;
    [v3 bodyHeight];
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

- (int)analyzePixelBuffer:(__CVBuffer *)a3 flags:(unint64_t *)a4 results:(id *)a5 cancel:(id)a6
{
  v70 = *MEMORY[0x1E69E9840];
  v55 = a6;
  [(NSMutableArray *)self->_results removeAllObjects];
  Width = CVPixelBufferGetWidth(a3);
  Height = CVPixelBufferGetHeight(a3);
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
    if (v55 && (v55[2]() & 1) != 0)
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
                  v21 = [v16 localIdentifier];
                  v22 = v21 == 0;

                  if (!v22)
                  {
                    v52 = [MEMORY[0x1E695DF90] dictionary];
                    v11 = [(VCPImageHumanActionAnalyzer *)self createInput:self->_inputData withBuffer:a3 cnnInputHeight:256 cnnInputWidth:256 crop:x, 1.0 - y - v20, v19, v20];
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
                      v36 = [MEMORY[0x1E696AD98] numberWithInt:v31 + 10000];
                      v37 = [v36 stringValue];
                      [v52 setObject:v35 forKeyedSubscript:v37];

                      v38 = MEMORY[0x1E695DF90];
                      v65[0] = @"faceIdentifier";
                      v39 = [v16 localIdentifier];
                      v66[0] = v39;
                      v66[1] = v52;
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
          *a5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v62 forKeys:&v61 count:1];
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