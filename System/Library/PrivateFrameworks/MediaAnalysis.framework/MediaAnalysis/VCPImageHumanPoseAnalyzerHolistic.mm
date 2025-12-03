@interface VCPImageHumanPoseAnalyzerHolistic
- (VCPImageHumanPoseAnalyzerHolistic)initWithMaxNumRegionsPersons:(int)persons forceCPU:(BOOL)u sharedModel:(BOOL)model inputConfig:(id)config;
- (int)analyzePixelBuffer:(__CVBuffer *)buffer flags:(unint64_t *)flags results:(id *)results cancel:(id)cancel;
- (int)convertSingleResultToDict:(CGPoint)dict[21] keypointConfidence:(float *)confidence box:(id)box leftHandsResults:(id)results RightHandsResults:(id)handsResults;
- (int)preferredInputFormat:(int *)format height:(int *)height format:(unsigned int *)a5;
- (int)updateInputWidth:(int)width Height:(int)height;
- (int)updateMaxNumPersons:(id)persons;
@end

@implementation VCPImageHumanPoseAnalyzerHolistic

- (VCPImageHumanPoseAnalyzerHolistic)initWithMaxNumRegionsPersons:(int)persons forceCPU:(BOOL)u sharedModel:(BOOL)model inputConfig:(id)config
{
  modelCopy = model;
  uCopy = u;
  v26.receiver = self;
  v26.super_class = VCPImageHumanPoseAnalyzerHolistic;
  v9 = [(VCPImageHumanPoseAnalyzerHolistic *)&v26 init:*&persons];
  v10 = v9;
  if (v9)
  {
    v11 = fmax(persons, 1.0);
    v9->_maxNumRegionsPerson = v11;
    v9->_maxNumRegionsHands = 2 * v11;
    v12 = [VCPANSTHandsBodyDetector alloc];
    LODWORD(v13) = 1068149419;
    LODWORD(v14) = 0.25;
    v15 = [(VCPANSTHandsBodyDetector *)v12 initWithHandExtendRatio:v10->_maxNumRegionsPerson inputRatio:v14 maxNumPersonRegions:v13];
    ANSTPersonDetector = v10->_ANSTPersonDetector;
    v10->_ANSTPersonDetector = v15;

    v17 = [[VCPCNNPersonKeypointsDetector alloc] initWithForceCPU:uCopy sharedModel:modelCopy];
    personKeypointsDetector = v10->_personKeypointsDetector;
    v10->_personKeypointsDetector = v17;

    v19 = [VCPCNNHandKeypointsDetector detector:uCopy sharedModel:modelCopy modelName:@"hand_keypoint_detector_lite.espresso.net" enableHandObject:1 options:0];
    handsKeypointsDetector = v10->_handsKeypointsDetector;
    v10->_handsKeypointsDetector = v19;

    array = [MEMORY[0x1E695DF70] array];
    results = v10->_results;
    v10->_results = array;

    v10->_inputWidth = 640;
    v10->_inputHeight = 640;
    v23 = v10->_ANSTPersonDetector;
    if (v23)
    {
      v23 = v10->_personKeypointsDetector;
      if (v23)
      {
        if (v10->_handsKeypointsDetector)
        {
          v23 = v10;
        }

        else
        {
          v23 = 0;
        }
      }
    }

    v24 = v23;
  }

  else
  {
    v24 = 0;
  }

  return v24;
}

- (int)updateInputWidth:(int)width Height:(int)height
{
  self->_inputWidth = width;
  self->_inputHeight = height;
  return 0;
}

- (int)convertSingleResultToDict:(CGPoint)dict[21] keypointConfidence:(float *)confidence box:(id)box leftHandsResults:(id)results RightHandsResults:(id)handsResults
{
  v76[6] = *MEMORY[0x1E69E9840];
  boxCopy = box;
  resultsCopy = results;
  handsResultsCopy = handsResults;
  array = [MEMORY[0x1E695DF70] array];
  array2 = [MEMORY[0x1E695DF70] array];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v11 = MEMORY[0x1E696AD98];
  [boxCopy minX];
  v12 = [v11 numberWithFloat:?];
  v76[0] = v12;
  v13 = MEMORY[0x1E696AD98];
  [boxCopy minY];
  v14 = [v13 numberWithFloat:?];
  v76[1] = v14;
  v15 = MEMORY[0x1E696AD98];
  [boxCopy maxX];
  v16 = [v15 numberWithFloat:?];
  v76[2] = v16;
  v17 = MEMORY[0x1E696AD98];
  [boxCopy maxY];
  v18 = [v17 numberWithFloat:?];
  v76[3] = v18;
  v19 = MEMORY[0x1E696AD98];
  [boxCopy confidence];
  v20 = [v19 numberWithFloat:?];
  v76[4] = v20;
  v21 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(boxCopy, "classIndex")}];
  v76[5] = v21;
  v22 = [MEMORY[0x1E695DEC8] arrayWithObjects:v76 count:6];
  [array2 addObject:v22];

  [boxCopy minX];
  v24 = v23;
  [boxCopy minY];
  v26 = v25;
  [boxCopy maxX];
  v28 = v27;
  [boxCopy minX];
  v30 = v29;
  [boxCopy maxY];
  v32 = v31;
  [boxCopy minY];
  v33 = 0;
  v66 = (v28 - v30);
  v67 = v24;
  v64 = v26;
  v65 = (v32 - v34);
  p_y = &dict->y;
  do
  {
    [boxCopy maxX];
    v37 = v36;
    [boxCopy minX];
    v39 = v38;
    [boxCopy maxY];
    v41 = v40;
    [boxCopy minY];
    v43 = v42;
    if (*(p_y - 1) == 0.0 && (v44 = *p_y, *p_y == 0.0))
    {
      v74[0] = &unk_1F49BB128;
      v74[1] = &unk_1F49BB128;
      *&v44 = confidence[v33];
      v52 = [MEMORY[0x1E696AD98] numberWithFloat:v44];
      v74[2] = v52;
      v54 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(boxCopy, "classIndex")}];
      v74[3] = v54;
      v56 = [MEMORY[0x1E695DEC8] arrayWithObjects:v74 count:4];
      [array addObject:v56];
    }

    else
    {
      [boxCopy minX];
      v46 = v45;
      v47 = *(p_y - 1);
      [boxCopy minY];
      v49 = v48;
      v50 = v46 + v47 / 192.0 * (v37 - v39);
      *&v50 = v50;
      v51 = *p_y;
      v52 = [MEMORY[0x1E696AD98] numberWithFloat:v50];
      v53 = v49 + v51 / 192.0 * (v41 - v43);
      *&v53 = v53;
      *&v53 = 1.0 - *&v53;
      v75[0] = v52;
      v54 = [MEMORY[0x1E696AD98] numberWithFloat:v53];
      v75[1] = v54;
      *&v55 = confidence[v33];
      v56 = [MEMORY[0x1E696AD98] numberWithFloat:v55];
      v75[2] = v56;
      v57 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(boxCopy, "classIndex")}];
      v75[3] = v57;
      v58 = [MEMORY[0x1E695DEC8] arrayWithObjects:v75 count:4];
      [array addObject:v58];
    }

    ++v33;
    p_y += 2;
  }

  while (v33 != 21);
  [dictionary setObject:array forKeyedSubscript:@"handsKeypoints"];
  v59 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(boxCopy, "trackID")}];
  [dictionary setObject:v59 forKeyedSubscript:@"handsTrackingID"];

  v60 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(boxCopy, "groupID")}];
  [dictionary setObject:v60 forKeyedSubscript:@"handsGroupID"];

  v77.size.height = v65;
  v77.origin.y = 1.0 - v64 - v65;
  v77.size.width = v66;
  v77.origin.x = v67;
  v61 = NSStringFromRect(v77);
  [dictionary setObject:v61 forKeyedSubscript:@"handsBounds"];

  if ([boxCopy classIndex] == -1)
  {
    v62 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(boxCopy, "groupID")}];
    [resultsCopy setObject:dictionary forKeyedSubscript:v62];
    goto LABEL_12;
  }

  if ([boxCopy classIndex] == 1)
  {
    v62 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(boxCopy, "groupID")}];
    [handsResultsCopy setObject:dictionary forKeyedSubscript:v62];
LABEL_12:
  }

  return 0;
}

- (int)analyzePixelBuffer:(__CVBuffer *)buffer flags:(unint64_t *)flags results:(id *)results cancel:(id)cancel
{
  v158 = *MEMORY[0x1E69E9840];
  cancelCopy = cancel;
  array = [MEMORY[0x1E695DF70] array];
  array2 = [MEMORY[0x1E695DF70] array];
  v105 = [MEMORY[0x1E695DFA8] set];
  v157 = 0;
  memset(v156, 0, sizeof(v156));
  v134 = 0;
  Width = CVPixelBufferGetWidth(buffer);
  bufferCopy = buffer;
  Height = CVPixelBufferGetHeight(buffer);
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  dictionary2 = [MEMORY[0x1E695DF90] dictionary];
  dictionary3 = [MEMORY[0x1E695DF90] dictionary];
  resultsCopy = results;
  [(NSMutableArray *)self->_results removeAllObjects];
  v10 = [(VCPANSTHandsBodyDetector *)self->_ANSTPersonDetector anstDetection:bufferCopy rotationInDegrees:0 detectingFullbody:1 detectingHands:1 handsRegions:array2 personRegions:array cancel:cancelCopy];
  if (!v10)
  {
    v132 = 0u;
    v133 = 0u;
    v130 = 0u;
    v131 = 0u;
    v11 = array;
    v97 = [v11 countByEnumeratingWithState:&v130 objects:v155 count:16];
    if (v97)
    {
      v98 = (Height * 0.75) / Width;
      v100 = *v131;
      v99 = v11;
      while (2)
      {
        for (i = 0; i != v97; i = i + 1)
        {
          if (*v131 != v100)
          {
            objc_enumerationMutation(v11);
          }

          v12 = *(*(&v130 + 1) + 8 * i);
          v13 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v12, "groupID")}];
          [v105 addObject:v13];

          array3 = [MEMORY[0x1E695DF70] array];
          v10 = [VCPCNNPersonKeypointsDetector analyzeFrame:"analyzeFrame:withBox:keypoints:padX:padY:" withBox:bufferCopy keypoints:v12 padX:? padY:?];
          if (v10)
          {
            goto LABEL_49;
          }

          array4 = [MEMORY[0x1E695DF70] array];
          dictionary4 = [MEMORY[0x1E695DF90] dictionary];
          [v12 minX];
          v16 = v15;
          [v12 minY];
          v18 = v17;
          [v12 maxX];
          v96 = v19;
          [v12 minX];
          v95 = v20;
          [v12 maxY];
          v94 = v21;
          [v12 minY];
          v93 = v22;
          [v12 maxX];
          v24 = v23;
          [v12 minX];
          v26 = v25;
          [v12 maxY];
          v28 = v27;
          [v12 minY];
          v30 = v29;
          if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
          {
            *buf = 67109376;
            v149 = HIDWORD(v134);
            v150 = 1024;
            v151 = v134;
            _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "VCPImageHumanPoseAnalyzerTopDown - received padX = %d, padY = %d", buf, 0xEu);
          }

          v31 = v24 - v26;
          v32 = v28 - v30;
          if (((v24 - v26) / (v28 - v30)) >= v98)
          {
            v32 = v31 / v98;
          }

          else
          {
            v31 = v98 * v32;
          }

          if ([array3 count] != 17)
          {
LABEL_48:

            v10 = -18;
LABEL_49:

            goto LABEL_51;
          }

          v128 = 0u;
          v129 = 0u;
          v126 = 0u;
          v127 = 0u;
          obj = array3;
          v33 = [obj countByEnumeratingWithState:&v126 objects:v154 count:16];
          v91 = v18;
          v92 = v16;
          if (v33)
          {
            v34 = *v127;
            v35 = 0.0;
            while (2)
            {
              for (j = 0; j != v33; ++j)
              {
                if (*v127 != v34)
                {
                  objc_enumerationMutation(obj);
                }

                v37 = *(*(&v126 + 1) + 8 * j);
                if ([v37 count] != 3)
                {

                  goto LABEL_48;
                }

                v38 = [v37 objectAtIndexedSubscript:0];
                [v38 floatValue];
                v40 = v39;

                v41 = [v37 objectAtIndexedSubscript:1];
                [v41 floatValue];
                v43 = v42;

                v44 = [v37 objectAtIndexedSubscript:2];
                [v44 floatValue];
                v46 = v45;

                [v12 minX];
                v48 = v47;
                LODWORD(v44) = HIDWORD(v134);
                [v12 minY];
                v50 = v49;
                *&v51 = v48 + (((v40 - v44) / 192.0) * v31);
                LODWORD(v44) = v134;
                v52 = [MEMORY[0x1E696AD98] numberWithFloat:v51];
                *&v53 = 1.0 - (v50 + (((v43 - v44) * 0.0039062) * v32));
                v153[0] = v52;
                v54 = [MEMORY[0x1E696AD98] numberWithFloat:v53];
                v153[1] = v54;
                *&v55 = v46;
                v56 = [MEMORY[0x1E696AD98] numberWithFloat:v55];
                v153[2] = v56;
                v57 = [MEMORY[0x1E695DEC8] arrayWithObjects:v153 count:3];
                [array4 addObject:v57];

                v35 = v35 + v46;
              }

              v33 = [obj countByEnumeratingWithState:&v126 objects:v154 count:16];
              if (v33)
              {
                continue;
              }

              break;
            }
          }

          else
          {
            v35 = 0.0;
          }

          [dictionary4 setObject:array4 forKeyedSubscript:@"humanKeypoints"];
          v159.origin.x = v92;
          v159.origin.y = v91;
          v159.size.width = (v96 - v95);
          v159.size.height = (v94 - v93);
          v58 = NSStringFromRect(v159);
          [dictionary4 setObject:v58 forKeyedSubscript:@"humanBounds"];

          *&v59 = v35 / 17.0;
          v60 = [MEMORY[0x1E696AD98] numberWithFloat:v59];
          [dictionary4 setObject:v60 forKeyedSubscript:@"humanConfidence"];

          v61 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v12, "groupID")}];
          [dictionary setObject:dictionary4 forKeyedSubscript:v61];

          v11 = v99;
        }

        v97 = [v99 countByEnumeratingWithState:&v130 objects:v155 count:16];
        if (v97)
        {
          continue;
        }

        break;
      }
    }

    v124 = 0u;
    v125 = 0u;
    v122 = 0u;
    v123 = 0u;
    v62 = array2;
    v63 = [v62 countByEnumeratingWithState:&v122 objects:v152 count:16];
    if (v63)
    {
      v64 = *v123;
      while (2)
      {
        for (k = 0; k != v63; ++k)
        {
          if (*v123 != v64)
          {
            objc_enumerationMutation(v62);
          }

          v66 = *(*(&v122 + 1) + 8 * k);
          v67 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v66, "groupID")}];
          [v105 addObject:v67];

          v121 = 0;
          if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
          {
            [v66 minX];
            v69 = v68;
            [v66 minY];
            v71 = v70;
            [v66 maxX];
            v73 = v72;
            [v66 maxY];
            *v140 = 134218752;
            v141 = v69;
            v142 = 2048;
            v143 = v71;
            v144 = 2048;
            v145 = v73;
            v146 = 2048;
            v147 = v74;
            _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "hand box minX = %f, minY = %f, maxX = %f, maxY = %f", v140, 0x2Au);
          }

          v10 = [(VCPCNNHandKeypointsDetector *)self->_handsKeypointsDetector handKeypointsDetection:bufferCopy box:v66 keypoints:buf keypointConfidence:v156 handHoldsObjectConfidence:&v121];
          if (v10)
          {

            goto LABEL_51;
          }

          [(VCPImageHumanPoseAnalyzerHolistic *)self convertSingleResultToDict:buf keypointConfidence:v156 box:v66 leftHandsResults:dictionary2 RightHandsResults:dictionary3];
        }

        v63 = [v62 countByEnumeratingWithState:&v122 objects:v152 count:16];
        if (v63)
        {
          continue;
        }

        break;
      }
    }

    v119 = 0u;
    v120 = 0u;
    v117 = 0u;
    v118 = 0u;
    v107 = v105;
    v75 = [v107 countByEnumeratingWithState:&v117 objects:v139 count:16];
    if (v75)
    {
      v112 = *v118;
      do
      {
        for (m = 0; m != v75; ++m)
        {
          if (*v118 != v112)
          {
            objc_enumerationMutation(v107);
          }

          v77 = *(*(&v117 + 1) + 8 * m);
          dictionary5 = [MEMORY[0x1E695DF90] dictionary];
          v79 = [dictionary objectForKeyedSubscript:v77];
          v80 = [v79 objectForKeyedSubscript:@"humanKeypoints"];
          [dictionary5 setObject:v80 forKeyedSubscript:@"humanKeypoints"];

          v81 = [dictionary objectForKeyedSubscript:v77];
          v82 = [v81 objectForKeyedSubscript:@"humanBounds"];
          [dictionary5 setObject:v82 forKeyedSubscript:@"humanBounds"];

          v83 = [dictionary objectForKeyedSubscript:v77];
          v84 = [v83 objectForKeyedSubscript:@"humanConfidence"];
          [dictionary5 setObject:v84 forKeyedSubscript:@"humanConfidence"];

          v85 = [dictionary2 objectForKeyedSubscript:v77];
          [dictionary5 setObject:v85 forKeyedSubscript:@"handsLeft"];

          v86 = [dictionary3 objectForKeyedSubscript:v77];
          [dictionary5 setObject:v86 forKeyedSubscript:@"handsRight"];

          [dictionary5 setObject:v77 forKeyedSubscript:@"humanID"];
          results = self->_results;
          v137 = @"attributes";
          v138 = dictionary5;
          v88 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v138 forKeys:&v137 count:1];
          [(NSMutableArray *)results addObject:v88];
        }

        v75 = [v107 countByEnumeratingWithState:&v117 objects:v139 count:16];
      }

      while (v75);
    }

    v89 = self->_results;
    if (v89)
    {
      v135 = @"HumanPoseResults";
      v136 = v89;
      [MEMORY[0x1E695DF20] dictionaryWithObjects:&v136 forKeys:&v135 count:1];
      *resultsCopy = v10 = 0;
    }

    else
    {
      v10 = 0;
    }
  }

LABEL_51:

  return v10;
}

- (int)updateMaxNumPersons:(id)persons
{
  v8 = *MEMORY[0x1E69E9840];
  personsCopy = persons;
  if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
  {
    v6 = 138412290;
    v7 = personsCopy;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "ImageHumanPoseAnalyzerHolistic: maxNumPersons from options = %@", &v6, 0xCu);
  }

  if (personsCopy)
  {
    self->_maxNumRegionsPerson = fmax([personsCopy intValue], 1.0);
    [(VCPANSTHandsBodyDetector *)self->_ANSTPersonDetector updateMaxNumPersonRegions:?];
  }

  return 0;
}

- (int)preferredInputFormat:(int *)format height:(int *)height format:(unsigned int *)a5
{
  v12 = *MEMORY[0x1E69E9840];
  result = -50;
  if (format && height && a5)
  {
    *format = self->_inputWidth;
    *height = self->_inputHeight;
    *a5 = 1111970369;
    if (MediaAnalysisLogLevel() >= 7)
    {
      result = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG);
      if (!result)
      {
        return result;
      }

      inputWidth = self->_inputWidth;
      inputHeight = self->_inputHeight;
      v9[0] = 67109376;
      v9[1] = inputWidth;
      v10 = 1024;
      v11 = inputHeight;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "preferredInputFormat:  width = %d,  height = %d", v9, 0xEu);
    }

    return 0;
  }

  return result;
}

@end