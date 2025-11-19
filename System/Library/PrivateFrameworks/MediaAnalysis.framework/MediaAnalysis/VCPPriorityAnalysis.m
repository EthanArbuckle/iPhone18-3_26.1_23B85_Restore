@interface VCPPriorityAnalysis
+ (id)priorityAnalysis;
- (VCPPriorityAnalysis)init;
- (id).cxx_construct;
- (int)addKeypointsToNSArray:(CGPoint *)a3 keypointConfidence:(float)a4[21] handBox:(id)a5 keypointsArray:(id)a6;
- (int)calculatePriorityScore:(float *)a3 ofPixelBuffer:(__CVBuffer *)a4 withMetadata:(id)a5;
- (int)fastSignLanguageDetection:(float *)a3 ofPixelBuffer:(__CVBuffer *)a4 withMetadata:(id)a5;
- (void)dealloc;
@end

@implementation VCPPriorityAnalysis

- (VCPPriorityAnalysis)init
{
  v22 = *MEMORY[0x1E69E9840];
  v20.receiver = self;
  v20.super_class = VCPPriorityAnalysis;
  v2 = [(VCPPriorityAnalysis *)&v20 init];
  if (v2)
  {
    if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "VCPPriorityAnalysis - Start initializing", buf, 2u);
    }

    *&v2->_frameCounter = 0;
    v2->_prevComputedScore = 0.0;
    v2->_handDetectedInPreviousFrame = 0;
    *buf = 0;
    std::vector<int>::__assign_with_size[abi:ne200100]<int const*,int const*>(&v2->_handChiralityCounter.__begin_, buf, &v22, 2uLL);
    v3 = [MEMORY[0x1E695DF70] array];
    prevFrameHandKeypoint = v2->_prevFrameHandKeypoint;
    v2->_prevFrameHandKeypoint = v3;

    v5 = [MEMORY[0x1E695DF70] array];
    leftHandKeypointTracker = v2->_leftHandKeypointTracker;
    v2->_leftHandKeypointTracker = v5;

    v7 = [MEMORY[0x1E695DF70] array];
    rightHandKeypointTracker = v2->_rightHandKeypointTracker;
    v2->_rightHandKeypointTracker = v7;

    v9 = [VCPCNNHandsDetector detector:2 forceCPU:0 sharedModel:1 inputConfig:@"res_192x192" revision:2];
    handsDetector = v2->_handsDetector;
    v2->_handsDetector = v9;

    if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "VCPPriorityAnalysis - Finished initializing hand detector", buf, 2u);
    }

    v11 = [VCPCNNHandKeypointsDetector detector:0 sharedModel:1 modelName:@"hand_keypoint_detector_lite.espresso.net" enableHandObject:1 options:0];
    handsKeypointsDetector = v2->_handsKeypointsDetector;
    v2->_handsKeypointsDetector = v11;

    if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "VCPPriorityAnalysis - Finished initializing hand keypoint detector with hand_keypoint_detector_lite.espresso.net", buf, 2u);
    }

    v13 = +[VCPCNNFastGestureRecognition detector];
    fastGestureDetector = v2->_fastGestureDetector;
    v2->_fastGestureDetector = v13;

    if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "VCPPriorityAnalysis - Finished initializing gesture recognizer", buf, 2u);
    }

    v15 = [MEMORY[0x1E695DF00] date];
    frameStartTimeStamp = v2->_frameStartTimeStamp;
    v2->_frameStartTimeStamp = v15;

    v17 = [MEMORY[0x1E695DF00] date];
    frameEndTimeStamp = v2->_frameEndTimeStamp;
    v2->_frameEndTimeStamp = v17;
  }

  return v2;
}

- (void)dealloc
{
  rotator = self->_rotator;
  if (rotator)
  {
    ma::Rotator::~Rotator(rotator);
    MEMORY[0x1CCA95C50]();
  }

  [(VCPCNNFastGestureRecognition *)self->_fastGestureDetector planDestroy];
  v4.receiver = self;
  v4.super_class = VCPPriorityAnalysis;
  [(VCPPriorityAnalysis *)&v4 dealloc];
}

+ (id)priorityAnalysis
{
  v2 = objc_alloc_init(objc_opt_class());

  return v2;
}

- (int)addKeypointsToNSArray:(CGPoint *)a3 keypointConfidence:(float)a4[21] handBox:(id)a5 keypointsArray:(id)a6
{
  v39[3] = *MEMORY[0x1E69E9840];
  v9 = a5;
  v10 = a6;
  [v9 maxX];
  v12 = v11;
  [v9 minX];
  v14 = v13;
  [v9 maxY];
  v16 = v15;
  [v9 minY];
  v17 = 0;
  v19 = v16 - v18;
  v20 = (v12 - v14);
  v21 = v19;
  p_y = &a3->y;
  do
  {
    if (*(p_y - 1) == 0.0 && (v23 = *p_y, *p_y == 0.0))
    {
      v38[0] = &unk_1F49BB258;
      v38[1] = &unk_1F49BB258;
      *&v23 = a4[v17];
      v31 = [MEMORY[0x1E696AD98] numberWithFloat:v23];
      v38[2] = v31;
      v33 = [MEMORY[0x1E695DEC8] arrayWithObjects:v38 count:3];
      [v10 replaceObjectAtIndex:v17 withObject:v33];
    }

    else
    {
      [v9 minX];
      v25 = v24;
      v26 = *(p_y - 1);
      [v9 minY];
      v28 = v27;
      v29 = v25 + v26 / 255.0 * v20;
      *&v29 = v29;
      v30 = *p_y;
      v31 = [MEMORY[0x1E696AD98] numberWithFloat:v29];
      v32 = v28 + v30 / 255.0 * v21;
      *&v32 = v32;
      v39[0] = v31;
      *&v32 = 1.0 - *&v32;
      v33 = [MEMORY[0x1E696AD98] numberWithFloat:v32];
      v39[1] = v33;
      *&v34 = a4[v17];
      v35 = [MEMORY[0x1E696AD98] numberWithFloat:v34];
      v39[2] = v35;
      v36 = [MEMORY[0x1E695DEC8] arrayWithObjects:v39 count:3];
      [v10 replaceObjectAtIndex:v17 withObject:v36];
    }

    ++v17;
    p_y += 2;
  }

  while (v17 != 21);

  return 0;
}

- (int)fastSignLanguageDetection:(float *)a3 ofPixelBuffer:(__CVBuffer *)a4 withMetadata:(id)a5
{
  v82 = *MEMORY[0x1E69E9840];
  cf = 0;
  v74 = 0;
  v72 = 0;
  v71 = 0;
  v80 = 0;
  memset(v79, 0, sizeof(v79));
  v63 = a5;
  v7 = [v63 objectForKeyedSubscript:@"faceMetadataArray"];
  v8 = [v7 objectAtIndexedSubscript:0];
  v9 = [v8 objectForKeyedSubscript:@"realtimeFaceRoll"];
  v10 = [v9 intValue];

  v65 = [MEMORY[0x1E695DF70] array];
  v11 = [MEMORY[0x1E695DF70] array];
  v12 = [MEMORY[0x1E695DF70] array];
  v64 = [MEMORY[0x1E695DF70] array];
  if (!self->_inputWidth || !self->_inputHeight)
  {
    self->_inputWidth = CVPixelBufferGetWidth(a4);
    self->_inputHeight = CVPixelBufferGetHeight(a4);
  }

  if (v10 - 226 < 0x5A)
  {
    v13 = 90;
LABEL_6:
    self->_rotationAngle = v13;
    goto LABEL_7;
  }

  v13 = 0;
  if (v10 < 0x2E || v10 - 316 < 0x2D)
  {
    goto LABEL_6;
  }

  if (v10 - 136 < 0x5A)
  {
    v13 = 180;
    goto LABEL_6;
  }

  if (v10 - 46 <= 0x59)
  {
    v13 = 270;
    goto LABEL_6;
  }

LABEL_7:
  rotator = self->_rotator;
  if (!rotator)
  {
    goto LABEL_10;
  }

  if (rotator->var3 != self->_rotationAngle)
  {
    ma::Rotator::~Rotator(self->_rotator);
    MEMORY[0x1CCA95C50]();
LABEL_10:
    operator new();
  }

  v15 = ma::Rotator::Rotate(rotator, a4, &cf);
  if (v15)
  {
    goto LABEL_14;
  }

  Scaler::Scale(&self->_scaler, cf, &v74, self->_inputWidth, self->_inputHeight, 1111970369);
  v15 = v16;
  if (v16)
  {
    goto LABEL_14;
  }

  v15 = [(VCPCNNHandsDetector *)self->_handsDetector handsDetection:v74 handsRegions:v65 cancel:0];
  if (v15)
  {
    goto LABEL_14;
  }

  if (MediaAnalysisLogLevel() > 6 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
  {
    v19 = [v65 count];
    *buf = 134217984;
    *v76 = v19;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "VCPPriorityAnalysis - Number of hand detected %lu", buf, 0xCu);
  }

  v20 = 21;
  do
  {
    [v11 addObject:&unk_1F49BF148];
    [v12 addObject:&unk_1F49BF160];
    --v20;
  }

  while (v20);
  if ([v65 count])
  {
    self->_handDetectedInPreviousFrame = 1;
    v67 = 0u;
    v68 = 0u;
    v69 = 0u;
    v70 = 0u;
    obj = v65;
    v21 = [obj countByEnumeratingWithState:&v67 objects:v78 count:16];
    if (v21)
    {
      v61 = *v68;
      *&v22 = 67109632;
      v59 = v22;
      while (2)
      {
        for (i = 0; i != v21; ++i)
        {
          if (*v68 != v61)
          {
            objc_enumerationMutation(obj);
          }

          v24 = *(*(&v67 + 1) + 8 * i);
          v25 = vcvtd_n_f64_s32([v24 classIndex] + 1, 1uLL);
          v66 = 0;
          if (v25 >= 2)
          {
            if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
            {
              *buf = 67109120;
              *v76 = v25;
              _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "indexMappedFromChirality = %d, out of range [0, 1]", buf, 8u);
            }

            v17 = 0;
            v15 = -50;
            goto LABEL_15;
          }

          if (!self->_dominantHand)
          {
            begin = self->_handChiralityCounter.__begin_;
            v27 = *begin;
            v28 = begin + 1;
            if (begin[1] + *begin < 1501)
            {
              goto LABEL_51;
            }

            end = self->_handChiralityCounter.__end_;
            v30 = self->_handChiralityCounter.__begin_;
            if (begin != end && v28 != end)
            {
              v30 = self->_handChiralityCounter.__begin_;
              v31 = begin + 1;
              do
              {
                v33 = *v31++;
                v32 = v33;
                v34 = v27 < v33;
                if (v27 <= v33)
                {
                  v27 = v32;
                }

                if (v34)
                {
                  v30 = v28;
                }

                v28 = v31;
              }

              while (v31 != end);
            }

            v35 = (v30 - begin) >> 2;
            self->_dominantHand = v35;
            if (!v35)
            {
LABEL_51:
              if (begin[1] + *begin > 1500)
              {
                goto LABEL_103;
              }

              ++begin[v25];
              if (!self->_dominantHand)
              {
                goto LABEL_103;
              }
            }
          }

          if ([v24 classIndex] == self->_dominantHand)
          {
LABEL_103:
            if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
            {
              dominantHand = self->_dominantHand;
              v37 = self->_handChiralityCounter.__begin_;
              v38 = *v37;
              LODWORD(v37) = v37[1];
              *buf = v59;
              *v76 = dominantHand;
              *&v76[4] = 1024;
              *&v76[6] = v38;
              LOWORD(v77) = 1024;
              *(&v77 + 2) = v37;
              _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "VCPPriorityAnalysis - dominant hand: %d, hand chirality counter: left: %d, right: %d", buf, 0x14u);
            }

            v15 = [(VCPCNNHandKeypointsDetector *)self->_handsKeypointsDetector handKeypointsDetection:v74 box:v24 keypoints:v81 keypointConfidence:v79 handHoldsObjectConfidence:&v66];
            if (v15)
            {

              goto LABEL_14;
            }

            if ([v24 classIndex])
            {
              if ((*(&v71 + v25) & 1) == 0)
              {
                v39 = [v24 classIndex];
                v40 = v11;
                if (v39 == -1 || (v41 = [v24 classIndex], v40 = v12, v41 == 1))
                {
                  [(VCPPriorityAnalysis *)self addKeypointsToNSArray:v81 keypointConfidence:v79 handBox:v24 keypointsArray:v40];
                }
              }

              *(&v71 + v25) = 1;
            }
          }
        }

        v21 = [obj countByEnumeratingWithState:&v67 objects:v78 count:16];
        if (v21)
        {
          continue;
        }

        break;
      }
    }

    v42 = [MEMORY[0x1E695DF00] date];
    frameEndTimeStamp = self->_frameEndTimeStamp;
    self->_frameEndTimeStamp = v42;

    [(NSDate *)self->_frameEndTimeStamp timeIntervalSinceDate:self->_frameStartTimeStamp];
    self->_singleFrameExecutionTime = v44;
    if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
    {
      v45 = self->_singleFrameExecutionTime * 1000.0;
      *buf = 134217984;
      *v76 = v45;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "VCPPriorityAnalysis - frame interval %f ms", buf, 0xCu);
    }

    objc_storeStrong(&self->_frameStartTimeStamp, self->_frameEndTimeStamp);
    v46 = [MEMORY[0x1E695DF00] date];
    prevTimeStampHandDetected = self->_prevTimeStampHandDetected;
    self->_prevTimeStampHandDetected = v46;
  }

  else
  {
    self->_handDetectedInPreviousFrame = 0;
  }

  if ([(NSMutableArray *)self->_leftHandKeypointTracker count]>= 6)
  {
    [(NSMutableArray *)self->_leftHandKeypointTracker removeObjectAtIndex:0];
  }

  if ([(NSMutableArray *)self->_rightHandKeypointTracker count]>= 6)
  {
    [(NSMutableArray *)self->_rightHandKeypointTracker removeObjectAtIndex:0];
  }

  if (([(NSMutableArray *)self->_leftHandKeypointTracker addObject:v11], [(NSMutableArray *)self->_rightHandKeypointTracker addObject:v12], [(NSMutableArray *)self->_leftHandKeypointTracker count]== 6) && v71 == 1 && (v15 = [(VCPCNNFastGestureRecognition *)self->_fastGestureDetector gestureDetection:self->_leftHandKeypointTracker score:&v72 + 4]) != 0 || [(NSMutableArray *)self->_rightHandKeypointTracker count]== 6 && HIBYTE(v71) == 1 && (v15 = [(VCPCNNFastGestureRecognition *)self->_fastGestureDetector gestureDetection:self->_rightHandKeypointTracker score:&v72]) != 0)
  {
LABEL_14:
    v17 = 0;
  }

  else
  {
    if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
    {
      *buf = 134218240;
      *v76 = *(&v72 + 1);
      *&v76[8] = 2048;
      v77 = *&v72;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "VCPPriorityAnalysis - gestureScoreRightHand %f, gestureScoreLeftHand %f", buf, 0x16u);
    }

    if (*&v72 >= *(&v72 + 1))
    {
      v48 = *&v72;
    }

    else
    {
      v48 = *(&v72 + 1);
    }

    v49 = 0.0;
    if (v48 > 0.99)
    {
      v49 = 1.0;
    }

    *a3 = v49;
    if (v48 > 0.99)
    {
      v50 = [MEMORY[0x1E695DF00] date];
      prevTimeSignLanguageDetected = self->_prevTimeSignLanguageDetected;
      self->_prevTimeSignLanguageDetected = v50;
    }

    v52 = [MEMORY[0x1E695DF00] date];
    [v52 timeIntervalSinceDate:self->_prevTimeSignLanguageDetected];
    v34 = v53 > 1.0;
    v54 = 0.0;
    if (!v34)
    {
      v54 = 1.0;
    }

    v55 = v54;
    *a3 = v55;
    v56 = [MEMORY[0x1E695DEC8] arrayWithArray:v64];
    prevFrameHandKeypoint = self->_prevFrameHandKeypoint;
    self->_prevFrameHandKeypoint = v56;

    if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
    {
      v58 = *a3;
      *buf = 134218240;
      *v76 = v48;
      *&v76[8] = 2048;
      v77 = v58;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "VCPPriorityAnalysis - gesture score = %f, priority score after thresholding = %f", buf, 0x16u);
    }

    v15 = 0;
    v17 = v52;
  }

LABEL_15:
  if (cf)
  {
    CFRelease(cf);
    cf = 0;
  }

  if (v74)
  {
    CFRelease(v74);
    v74 = 0;
  }

  return v15;
}

- (int)calculatePriorityScore:(float *)a3 ofPixelBuffer:(__CVBuffer *)a4 withMetadata:(id)a5
{
  v23 = *MEMORY[0x1E69E9840];
  v8 = a5;
  if (self->_handDetectedInPreviousFrame)
  {
    v9 = 3;
  }

  else
  {
    v9 = 10;
  }

  if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
  {
    v21 = 134217984;
    v22 = 1.0 / v9;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "VCPPriorityAnalysis - Analysis subsampling ratio = %f", &v21, 0xCu);
  }

  v10 = (self->_frameCounter + 1) % v9;
  self->_frameCounter = v10;
  if (!v8 || v10)
  {
    prevComputedScore = self->_prevComputedScore;
    if (!v8)
    {
      prevComputedScore = 0.0;
    }

    *a3 = prevComputedScore;
  }

  else
  {
    v11 = [v8 objectForKey:@"faceMetadataArray"];
    if ([v11 count])
    {
      v12 = [v11 objectAtIndexedSubscript:0];
      v13 = [v12 objectForKey:@"realtimeFaceYaw"];
      v14 = v13;
      if (v13 && ([v13 intValue] > 315 || objc_msgSend(v14, "intValue") <= 44))
      {
        if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
        {
          v15 = [v14 intValue];
          v21 = 67109120;
          LODWORD(v22) = v15;
          _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "VCPPriorityAnalysis - Face yaw: %d", &v21, 8u);
        }

        v16 = [(VCPPriorityAnalysis *)self fastSignLanguageDetection:a3 ofPixelBuffer:a4 withMetadata:v8];
        if (v16)
        {

          goto LABEL_29;
        }
      }

      else
      {
        *a3 = 0.0;
      }

      v18 = *a3;
    }

    else
    {
      *a3 = 0.0;
      v18 = 0.0;
    }

    self->_prevComputedScore = v18;
  }

  if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
  {
    v19 = *a3;
    v21 = 134217984;
    v22 = v19;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "VCPPriorityAnalysis - output priority score = %f", &v21, 0xCu);
  }

  v16 = 0;
LABEL_29:

  return v16;
}

- (id).cxx_construct
{
  *(self + 6) = 0;
  *(self + 2) = 0u;
  *(self + 23) = 0;
  *(self + 48) = 0;
  return self;
}

@end