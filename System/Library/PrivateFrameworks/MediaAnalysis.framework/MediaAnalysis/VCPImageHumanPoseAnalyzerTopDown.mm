@interface VCPImageHumanPoseAnalyzerTopDown
- (VCPImageHumanPoseAnalyzerTopDown)initWithMaxNumRegions:(int)a3 forceCPU:(BOOL)a4 sharedModel:(BOOL)a5 inputConfig:(id)a6;
- (int)analyzePixelBuffer:(__CVBuffer *)a3 flags:(unint64_t *)a4 results:(id *)a5 cancel:(id)a6;
- (int)preferredInputFormat:(int *)a3 height:(int *)a4 format:(unsigned int *)a5;
- (int)updateInputWidth:(int)a3 Height:(int)a4;
- (int)updateMaxNumPersons:(id)a3;
@end

@implementation VCPImageHumanPoseAnalyzerTopDown

- (VCPImageHumanPoseAnalyzerTopDown)initWithMaxNumRegions:(int)a3 forceCPU:(BOOL)a4 sharedModel:(BOOL)a5 inputConfig:(id)a6
{
  v6 = a5;
  v7 = a4;
  v22.receiver = self;
  v22.super_class = VCPImageHumanPoseAnalyzerTopDown;
  v9 = [(VCPImageHumanPoseAnalyzerTopDown *)&v22 init:*&a3];
  v10 = v9;
  if (v9)
  {
    v9->_maxNumRegions = fmax(a3, 1.0);
    v11 = [VCPANSTHandsBodyDetector alloc];
    LODWORD(v12) = 1068149419;
    v13 = [(VCPANSTHandsBodyDetector *)v11 initWithHandExtendRatio:v10->_maxNumRegions inputRatio:0.0 maxNumPersonRegions:v12];
    ANSTPersonDetector = v10->_ANSTPersonDetector;
    v10->_ANSTPersonDetector = v13;

    v15 = [[VCPCNNPersonKeypointsDetector alloc] initWithForceCPU:v7 sharedModel:v6];
    personKeypointsDetector = v10->_personKeypointsDetector;
    v10->_personKeypointsDetector = v15;

    v17 = [MEMORY[0x1E695DF70] array];
    results = v10->_results;
    v10->_results = v17;

    v10->_inputWidth = 640;
    v10->_inputHeight = 640;
    v19 = v10->_ANSTPersonDetector;
    if (v19)
    {
      if (v10->_personKeypointsDetector)
      {
        v19 = v10;
      }

      else
      {
        v19 = 0;
      }
    }

    v20 = v19;
  }

  else
  {
    v20 = 0;
  }

  return v20;
}

- (int)updateInputWidth:(int)a3 Height:(int)a4
{
  self->_inputWidth = a3;
  self->_inputHeight = a4;
  return 0;
}

- (int)updateMaxNumPersons:(id)a3
{
  v8 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
  {
    v6 = 138412290;
    v7 = v4;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "ImageHumanPoseAnalyzerTopDown: maxNumPersons from options = %@", &v6, 0xCu);
  }

  if (v4)
  {
    self->_maxNumRegions = fmax([v4 intValue], 1.0);
    [(VCPANSTHandsBodyDetector *)self->_ANSTPersonDetector updateMaxNumPersonRegions:?];
  }

  return 0;
}

- (int)analyzePixelBuffer:(__CVBuffer *)a3 flags:(unint64_t *)a4 results:(id *)a5 cancel:(id)a6
{
  v102 = *MEMORY[0x1E69E9840];
  v79 = a6;
  v80 = [MEMORY[0x1E695DF70] array];
  v90 = 0;
  Width = CVPixelBufferGetWidth(a3);
  Height = CVPixelBufferGetHeight(a3);
  [(NSMutableArray *)self->_results removeAllObjects];
  v10 = [(VCPANSTHandsBodyDetector *)self->_ANSTPersonDetector anstDetection:a3 rotationInDegrees:0 detectingFullbody:1 detectingHands:0 handsRegions:0 personRegions:v80 cancel:v79];
  if (!v10)
  {
    v73 = a3;
    v88 = 0u;
    v89 = 0u;
    v86 = 0u;
    v87 = 0u;
    obj = v80;
    v70 = [obj countByEnumeratingWithState:&v86 objects:v101 count:16];
    if (v70)
    {
      v71 = (Height * 0.75) / Width;
      v72 = *v87;
      v69 = self;
      while (2)
      {
        for (i = 0; i != v70; ++i)
        {
          if (*v87 != v72)
          {
            objc_enumerationMutation(obj);
          }

          v11 = *(*(&v86 + 1) + 8 * i);
          v78 = [MEMORY[0x1E695DF70] array];
          v10 = [VCPCNNPersonKeypointsDetector analyzeFrame:"analyzeFrame:withBox:keypoints:padX:padY:" withBox:v73 keypoints:v11 padX:? padY:?];
          if (v10)
          {
            goto LABEL_31;
          }

          v12 = [MEMORY[0x1E695DF70] array];
          v77 = [MEMORY[0x1E695DF90] dictionary];
          [v11 minX];
          v14 = v13;
          [v11 minY];
          v16 = v15;
          [v11 maxX];
          v68 = v17;
          [v11 minX];
          v67 = v18;
          [v11 maxY];
          v66 = v19;
          [v11 minY];
          v65 = v20;
          [v11 maxX];
          v22 = v21;
          [v11 minX];
          v24 = v23;
          [v11 maxY];
          v26 = v25;
          [v11 minY];
          v28 = v27;
          if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
          {
            *buf = 67109376;
            v98 = HIDWORD(v90);
            v99 = 1024;
            v100 = v90;
            _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "VCPImageHumanPoseAnalyzerTopDown - received padX = %d, padY = %d", buf, 0xEu);
          }

          v29 = v22 - v24;
          v30 = v26 - v28;
          if (((v22 - v24) / (v26 - v28)) >= v71)
          {
            v30 = v29 / v71;
          }

          else
          {
            v29 = v71 * v30;
          }

          if ([v78 count] != 17)
          {
LABEL_30:

            v10 = -18;
LABEL_31:

            goto LABEL_32;
          }

          v84 = 0u;
          v85 = 0u;
          v82 = 0u;
          v83 = 0u;
          v81 = v78;
          v31 = [v81 countByEnumeratingWithState:&v82 objects:v96 count:16];
          v63 = v16;
          v64 = v14;
          if (v31)
          {
            v32 = *v83;
            v33 = 0.0;
            while (2)
            {
              for (j = 0; j != v31; ++j)
              {
                if (*v83 != v32)
                {
                  objc_enumerationMutation(v81);
                }

                v35 = *(*(&v82 + 1) + 8 * j);
                if ([v35 count] != 3)
                {

                  goto LABEL_30;
                }

                v36 = [v35 objectAtIndexedSubscript:0];
                [v36 floatValue];
                v38 = v37;

                v39 = [v35 objectAtIndexedSubscript:1];
                [v39 floatValue];
                v41 = v40;

                v42 = [v35 objectAtIndexedSubscript:2];
                [v42 floatValue];
                v44 = v43;

                [v11 minX];
                v46 = v45;
                LODWORD(v42) = HIDWORD(v90);
                [v11 minY];
                v48 = v47;
                *&v49 = v46 + (((v38 - v42) / 192.0) * v29);
                LODWORD(v39) = v90;
                v50 = [MEMORY[0x1E696AD98] numberWithFloat:v49];
                *&v51 = 1.0 - (v48 + (((v41 - v39) * 0.0039062) * v30));
                v95[0] = v50;
                v52 = [MEMORY[0x1E696AD98] numberWithFloat:v51];
                v95[1] = v52;
                *&v53 = v44;
                v54 = [MEMORY[0x1E696AD98] numberWithFloat:v53];
                v95[2] = v54;
                v55 = [MEMORY[0x1E695DEC8] arrayWithObjects:v95 count:3];
                [v12 addObject:v55];

                v33 = v33 + v44;
              }

              v31 = [v81 countByEnumeratingWithState:&v82 objects:v96 count:16];
              if (v31)
              {
                continue;
              }

              break;
            }
          }

          else
          {
            v33 = 0.0;
          }

          [v77 setObject:v12 forKeyedSubscript:@"humanKeypoints"];
          v103.origin.x = v64;
          v103.origin.y = v63;
          v103.size.width = (v68 - v67);
          v103.size.height = (v66 - v65);
          v56 = NSStringFromRect(v103);
          [v77 setObject:v56 forKeyedSubscript:@"humanBounds"];

          *&v57 = v33 / 17.0;
          v58 = [MEMORY[0x1E696AD98] numberWithFloat:v57];
          [v77 setObject:v58 forKeyedSubscript:@"humanConfidence"];

          results = v69->_results;
          v93 = @"attributes";
          v94 = v77;
          v60 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v94 forKeys:&v93 count:1];
          [(NSMutableArray *)results addObject:v60];

          self = v69;
        }

        v70 = [obj countByEnumeratingWithState:&v86 objects:v101 count:16];
        if (v70)
        {
          continue;
        }

        break;
      }
    }

    v61 = self->_results;
    if (v61)
    {
      v91 = @"HumanPoseResults";
      v92 = v61;
      [MEMORY[0x1E695DF20] dictionaryWithObjects:&v92 forKeys:&v91 count:1];
      *a5 = v10 = 0;
    }

    else
    {
      v10 = 0;
    }
  }

LABEL_32:

  return v10;
}

- (int)preferredInputFormat:(int *)a3 height:(int *)a4 format:(unsigned int *)a5
{
  result = -50;
  if (a3 && a4)
  {
    if (a5)
    {
      result = 0;
      *a3 = self->_inputWidth;
      *a4 = self->_inputHeight;
      *a5 = 1111970369;
    }
  }

  return result;
}

@end