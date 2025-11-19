@interface VCPImageHumanPoseAnalyzerHolistic
- (VCPImageHumanPoseAnalyzerHolistic)initWithMaxNumRegionsPersons:(int)a3 forceCPU:(BOOL)a4 sharedModel:(BOOL)a5 inputConfig:(id)a6;
- (int)analyzePixelBuffer:(__CVBuffer *)a3 flags:(unint64_t *)a4 results:(id *)a5 cancel:(id)a6;
- (int)convertSingleResultToDict:(CGPoint)a3[21] keypointConfidence:(float *)a4 box:(id)a5 leftHandsResults:(id)a6 RightHandsResults:(id)a7;
- (int)preferredInputFormat:(int *)a3 height:(int *)a4 format:(unsigned int *)a5;
- (int)updateInputWidth:(int)a3 Height:(int)a4;
- (int)updateMaxNumPersons:(id)a3;
@end

@implementation VCPImageHumanPoseAnalyzerHolistic

- (VCPImageHumanPoseAnalyzerHolistic)initWithMaxNumRegionsPersons:(int)a3 forceCPU:(BOOL)a4 sharedModel:(BOOL)a5 inputConfig:(id)a6
{
  v6 = a5;
  v7 = a4;
  v26.receiver = self;
  v26.super_class = VCPImageHumanPoseAnalyzerHolistic;
  v9 = [(VCPImageHumanPoseAnalyzerHolistic *)&v26 init:*&a3];
  v10 = v9;
  if (v9)
  {
    v11 = fmax(a3, 1.0);
    v9->_maxNumRegionsPerson = v11;
    v9->_maxNumRegionsHands = 2 * v11;
    v12 = [VCPANSTHandsBodyDetector alloc];
    LODWORD(v13) = 1068149419;
    LODWORD(v14) = 0.25;
    v15 = [(VCPANSTHandsBodyDetector *)v12 initWithHandExtendRatio:v10->_maxNumRegionsPerson inputRatio:v14 maxNumPersonRegions:v13];
    ANSTPersonDetector = v10->_ANSTPersonDetector;
    v10->_ANSTPersonDetector = v15;

    v17 = [[VCPCNNPersonKeypointsDetector alloc] initWithForceCPU:v7 sharedModel:v6];
    personKeypointsDetector = v10->_personKeypointsDetector;
    v10->_personKeypointsDetector = v17;

    v19 = [VCPCNNHandKeypointsDetector detector:v7 sharedModel:v6 modelName:@"hand_keypoint_detector_lite.espresso.net" enableHandObject:1 options:0];
    handsKeypointsDetector = v10->_handsKeypointsDetector;
    v10->_handsKeypointsDetector = v19;

    v21 = [MEMORY[0x1E695DF70] array];
    results = v10->_results;
    v10->_results = v21;

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

- (int)updateInputWidth:(int)a3 Height:(int)a4
{
  self->_inputWidth = a3;
  self->_inputHeight = a4;
  return 0;
}

- (int)convertSingleResultToDict:(CGPoint)a3[21] keypointConfidence:(float *)a4 box:(id)a5 leftHandsResults:(id)a6 RightHandsResults:(id)a7
{
  v76[6] = *MEMORY[0x1E69E9840];
  v10 = a5;
  v69 = a6;
  v68 = a7;
  v73 = [MEMORY[0x1E695DF70] array];
  v70 = [MEMORY[0x1E695DF70] array];
  v71 = [MEMORY[0x1E695DF90] dictionary];
  v11 = MEMORY[0x1E696AD98];
  [v10 minX];
  v12 = [v11 numberWithFloat:?];
  v76[0] = v12;
  v13 = MEMORY[0x1E696AD98];
  [v10 minY];
  v14 = [v13 numberWithFloat:?];
  v76[1] = v14;
  v15 = MEMORY[0x1E696AD98];
  [v10 maxX];
  v16 = [v15 numberWithFloat:?];
  v76[2] = v16;
  v17 = MEMORY[0x1E696AD98];
  [v10 maxY];
  v18 = [v17 numberWithFloat:?];
  v76[3] = v18;
  v19 = MEMORY[0x1E696AD98];
  [v10 confidence];
  v20 = [v19 numberWithFloat:?];
  v76[4] = v20;
  v21 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v10, "classIndex")}];
  v76[5] = v21;
  v22 = [MEMORY[0x1E695DEC8] arrayWithObjects:v76 count:6];
  [v70 addObject:v22];

  [v10 minX];
  v24 = v23;
  [v10 minY];
  v26 = v25;
  [v10 maxX];
  v28 = v27;
  [v10 minX];
  v30 = v29;
  [v10 maxY];
  v32 = v31;
  [v10 minY];
  v33 = 0;
  v66 = (v28 - v30);
  v67 = v24;
  v64 = v26;
  v65 = (v32 - v34);
  p_y = &a3->y;
  do
  {
    [v10 maxX];
    v37 = v36;
    [v10 minX];
    v39 = v38;
    [v10 maxY];
    v41 = v40;
    [v10 minY];
    v43 = v42;
    if (*(p_y - 1) == 0.0 && (v44 = *p_y, *p_y == 0.0))
    {
      v74[0] = &unk_1F49BB128;
      v74[1] = &unk_1F49BB128;
      *&v44 = a4[v33];
      v52 = [MEMORY[0x1E696AD98] numberWithFloat:v44];
      v74[2] = v52;
      v54 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v10, "classIndex")}];
      v74[3] = v54;
      v56 = [MEMORY[0x1E695DEC8] arrayWithObjects:v74 count:4];
      [v73 addObject:v56];
    }

    else
    {
      [v10 minX];
      v46 = v45;
      v47 = *(p_y - 1);
      [v10 minY];
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
      *&v55 = a4[v33];
      v56 = [MEMORY[0x1E696AD98] numberWithFloat:v55];
      v75[2] = v56;
      v57 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v10, "classIndex")}];
      v75[3] = v57;
      v58 = [MEMORY[0x1E695DEC8] arrayWithObjects:v75 count:4];
      [v73 addObject:v58];
    }

    ++v33;
    p_y += 2;
  }

  while (v33 != 21);
  [v71 setObject:v73 forKeyedSubscript:@"handsKeypoints"];
  v59 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v10, "trackID")}];
  [v71 setObject:v59 forKeyedSubscript:@"handsTrackingID"];

  v60 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v10, "groupID")}];
  [v71 setObject:v60 forKeyedSubscript:@"handsGroupID"];

  v77.size.height = v65;
  v77.origin.y = 1.0 - v64 - v65;
  v77.size.width = v66;
  v77.origin.x = v67;
  v61 = NSStringFromRect(v77);
  [v71 setObject:v61 forKeyedSubscript:@"handsBounds"];

  if ([v10 classIndex] == -1)
  {
    v62 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v10, "groupID")}];
    [v69 setObject:v71 forKeyedSubscript:v62];
    goto LABEL_12;
  }

  if ([v10 classIndex] == 1)
  {
    v62 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v10, "groupID")}];
    [v68 setObject:v71 forKeyedSubscript:v62];
LABEL_12:
  }

  return 0;
}

- (int)analyzePixelBuffer:(__CVBuffer *)a3 flags:(unint64_t *)a4 results:(id *)a5 cancel:(id)a6
{
  v158 = *MEMORY[0x1E69E9840];
  v102 = a6;
  v104 = [MEMORY[0x1E695DF70] array];
  v103 = [MEMORY[0x1E695DF70] array];
  v105 = [MEMORY[0x1E695DFA8] set];
  v157 = 0;
  memset(v156, 0, sizeof(v156));
  v134 = 0;
  Width = CVPixelBufferGetWidth(a3);
  v111 = a3;
  Height = CVPixelBufferGetHeight(a3);
  v116 = [MEMORY[0x1E695DF90] dictionary];
  v114 = [MEMORY[0x1E695DF90] dictionary];
  v113 = [MEMORY[0x1E695DF90] dictionary];
  v101 = a5;
  [(NSMutableArray *)self->_results removeAllObjects];
  v10 = [(VCPANSTHandsBodyDetector *)self->_ANSTPersonDetector anstDetection:v111 rotationInDegrees:0 detectingFullbody:1 detectingHands:1 handsRegions:v103 personRegions:v104 cancel:v102];
  if (!v10)
  {
    v132 = 0u;
    v133 = 0u;
    v130 = 0u;
    v131 = 0u;
    v11 = v104;
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

          v109 = [MEMORY[0x1E695DF70] array];
          v10 = [VCPCNNPersonKeypointsDetector analyzeFrame:"analyzeFrame:withBox:keypoints:padX:padY:" withBox:v111 keypoints:v12 padX:? padY:?];
          if (v10)
          {
            goto LABEL_49;
          }

          v14 = [MEMORY[0x1E695DF70] array];
          v108 = [MEMORY[0x1E695DF90] dictionary];
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

          if ([v109 count] != 17)
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
          obj = v109;
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
                [v14 addObject:v57];

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

          [v108 setObject:v14 forKeyedSubscript:@"humanKeypoints"];
          v159.origin.x = v92;
          v159.origin.y = v91;
          v159.size.width = (v96 - v95);
          v159.size.height = (v94 - v93);
          v58 = NSStringFromRect(v159);
          [v108 setObject:v58 forKeyedSubscript:@"humanBounds"];

          *&v59 = v35 / 17.0;
          v60 = [MEMORY[0x1E696AD98] numberWithFloat:v59];
          [v108 setObject:v60 forKeyedSubscript:@"humanConfidence"];

          v61 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v12, "groupID")}];
          [v116 setObject:v108 forKeyedSubscript:v61];

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
    v62 = v103;
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

          v10 = [(VCPCNNHandKeypointsDetector *)self->_handsKeypointsDetector handKeypointsDetection:v111 box:v66 keypoints:buf keypointConfidence:v156 handHoldsObjectConfidence:&v121];
          if (v10)
          {

            goto LABEL_51;
          }

          [(VCPImageHumanPoseAnalyzerHolistic *)self convertSingleResultToDict:buf keypointConfidence:v156 box:v66 leftHandsResults:v114 RightHandsResults:v113];
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
          v78 = [MEMORY[0x1E695DF90] dictionary];
          v79 = [v116 objectForKeyedSubscript:v77];
          v80 = [v79 objectForKeyedSubscript:@"humanKeypoints"];
          [v78 setObject:v80 forKeyedSubscript:@"humanKeypoints"];

          v81 = [v116 objectForKeyedSubscript:v77];
          v82 = [v81 objectForKeyedSubscript:@"humanBounds"];
          [v78 setObject:v82 forKeyedSubscript:@"humanBounds"];

          v83 = [v116 objectForKeyedSubscript:v77];
          v84 = [v83 objectForKeyedSubscript:@"humanConfidence"];
          [v78 setObject:v84 forKeyedSubscript:@"humanConfidence"];

          v85 = [v114 objectForKeyedSubscript:v77];
          [v78 setObject:v85 forKeyedSubscript:@"handsLeft"];

          v86 = [v113 objectForKeyedSubscript:v77];
          [v78 setObject:v86 forKeyedSubscript:@"handsRight"];

          [v78 setObject:v77 forKeyedSubscript:@"humanID"];
          results = self->_results;
          v137 = @"attributes";
          v138 = v78;
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
      *v101 = v10 = 0;
    }

    else
    {
      v10 = 0;
    }
  }

LABEL_51:

  return v10;
}

- (int)updateMaxNumPersons:(id)a3
{
  v8 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
  {
    v6 = 138412290;
    v7 = v4;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "ImageHumanPoseAnalyzerHolistic: maxNumPersons from options = %@", &v6, 0xCu);
  }

  if (v4)
  {
    self->_maxNumRegionsPerson = fmax([v4 intValue], 1.0);
    [(VCPANSTHandsBodyDetector *)self->_ANSTPersonDetector updateMaxNumPersonRegions:?];
  }

  return 0;
}

- (int)preferredInputFormat:(int *)a3 height:(int *)a4 format:(unsigned int *)a5
{
  v12 = *MEMORY[0x1E69E9840];
  result = -50;
  if (a3 && a4 && a5)
  {
    *a3 = self->_inputWidth;
    *a4 = self->_inputHeight;
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