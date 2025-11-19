@interface VCPVideoKeyFrame
- (VCPVideoKeyFrame)initWithLivePhoto:(BOOL)a3;
- (float)computeContentScore;
- (float)computeExpressionScore;
- (float)computeGlobalQuality;
- (float)computePenaltyScore;
- (float)computeScoreFromAction;
- (float)computeScoreFromColorfulness;
- (float)computeScoreFromExposure;
- (float)computeVisualPleasingScore;
- (int)loadKeyFrameResult:(id)a3 timestamp:(id *)a4;
- (void)computeCurationScore;
- (void)computeCurationScoreComponents;
- (void)computeGlobalQualityForLivePhoto;
- (void)copyFrom:(id)a3;
- (void)printStats;
- (void)setFaceStatsFlag:(BOOL)a3 detectedFaces:(id)a4;
- (void)setMotionStatsFlag:(BOOL)a3 cameraMotion:(float)a4 subjectAction:(float)a5 interestingness:(float)a6 obstruction:(float)a7 colorfulness:(float)a8 exposureScore:(float)a9 humanActionStatsFlag:(BOOL)a10 humanPoseScore:(float)a11 humanActionScore:(float)a12 subMb:(BOOL)a13;
- (void)setTimestamp:(id *)a3;
- (void)storeFrameResults;
@end

@implementation VCPVideoKeyFrame

- (VCPVideoKeyFrame)initWithLivePhoto:(BOOL)a3
{
  v15.receiver = self;
  v15.super_class = VCPVideoKeyFrame;
  v4 = [(VCPVideoKeyFrame *)&v15 init];
  v5 = v4;
  if (v4)
  {
    v6 = MEMORY[0x1E6960C68];
    *(v4 + 8) = *MEMORY[0x1E6960C68];
    *(v4 + 18) = *(v6 + 16);
    *(v4 + 4) = 0;
    *(v4 + 5) = 0;
    *(v4 + 6) = 0x3F80000000000000;
    *(v4 + 1) = 0;
    *(v4 + 2) = 0;
    *(v4 + 29) = 1;
    *(v4 + 21) = 0;
    *(v4 + 22) = 0;
    *(v4 + 12) = 0;
    v7 = [MEMORY[0x1E695DF70] array];
    v8 = *(v5 + 13);
    *(v5 + 13) = v7;

    v9 = [MEMORY[0x1E695DF70] array];
    v10 = *(v5 + 14);
    *(v5 + 14) = v9;

    v11 = [MEMORY[0x1E695DF90] dictionary];
    v12 = *(v5 + 15);
    *(v5 + 15) = v11;

    *(v5 + 7) = 0;
    *(v5 + 8) = 0;
    *(v5 + 18) = 0;
    *(v5 + 76) = 1065353216;
    *(v5 + 23) = 0;
    v5[28] = a3;
    v13 = v5;
  }

  return v5;
}

- (void)copyFrom:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    [v4 timestamp];
  }

  else
  {
    v22 = 0uLL;
    v23 = 0;
  }

  *&self->_timestamp.value = v22;
  self->_timestamp.epoch = v23;
  [v5 score];
  self->_score = v6;
  [v5 semanticScore];
  self->_semanticScore = v7;
  [v5 sharpness];
  self->_sharpness = v8;
  [v5 faceSharpness];
  self->_faceSharpness = v9;
  [v5 textureScore];
  self->_textureScore = v10;
  [v5 exposureScore];
  self->_exposureScore = v11;
  [v5 humanPoseScore];
  self->_humanPoseScore = v12;
  [v5 humanActionScore];
  self->_humanActionScore = v13;
  self->_isHeadingFrame = [v5 isHeadingFrame];
  self->_statsFlags = [v5 statsFlags];
  [v5 expressionChangeScore];
  self->_expressionChangeScore = v14;
  [v5 overallFaceQualityScore];
  self->_overallFaceQualityScore = v15;
  [v5 qualityScoreForLivePhoto];
  self->_qualityScoreForLivePhoto = v16;
  [v5 globalQualityScore];
  self->_globalQualityScore = v17;
  [v5 visualPleasingScore];
  self->_visualPleasingScore = v18;
  [v5 penaltyScore];
  self->_penaltyScore = v19;
  [v5 contentScore];
  self->_contentScore = v20;
  [v5 thumbnailScore];
  self->_thumbnailScore = v21;
}

- (int)loadKeyFrameResult:(id)a3 timestamp:(id *)a4
{
  v47 = *MEMORY[0x1E69E9840];
  v38 = a3;
  v6 = [v38 objectForKeyedSubscript:@"attributes"];
  v39 = v6;
  if (v6)
  {
    v7 = [v6 objectForKeyedSubscript:@"timestamp"];
    if (v7)
    {
      v36 = v7;
      [v7 floatValue];
      CMTimeMakeWithSeconds(&time, v8, 600);
      self->_timestamp = time;
      time = *a4;
      Seconds = CMTimeGetSeconds(&time);
      [v36 floatValue];
      if (vabdd_f64(Seconds, v10) > 0.00499999989)
      {
        v11 = 0;
        v12 = v36;
LABEL_27:

        goto LABEL_28;
      }

      v12 = [v39 objectForKeyedSubscript:@"frameQualityScore"];

      if (!v12)
      {
        goto LABEL_26;
      }

      [v12 floatValue];
      self->_qualityScoreForLivePhoto = v13;
      v14 = [v39 objectForKeyedSubscript:@"faceQualityScore"];

      if (v14)
      {
        [v14 floatValue];
        self->_overallFaceQualityScore = v15;
        v12 = [v39 objectForKeyedSubscript:@"visualPleasingScore"];

        if (v12)
        {
          [v12 floatValue];
          self->_visualPleasingScore = v16;
          v17 = [v39 objectForKeyedSubscript:@"penaltyScore"];

          if (v17)
          {
            [v17 floatValue];
            self->_penaltyScore = v18;
            v12 = [v39 objectForKeyedSubscript:@"sharpnessScore"];

            if (v12)
            {
              v37 = v12;
              [v12 floatValue];
              self->_sharpness = v19;
              v41 = 0u;
              v42 = 0u;
              v43 = 0u;
              v44 = 0u;
              v20 = [v39 objectForKeyedSubscript:@"FaceResults"];
              obj = v20;
              v21 = [v20 countByEnumeratingWithState:&v41 objects:v46 count:16];
              if (v21)
              {
                v22 = *v42;
                do
                {
                  for (i = 0; i != v21; ++i)
                  {
                    if (*v42 != v22)
                    {
                      objc_enumerationMutation(obj);
                    }

                    v24 = *(*(&v41 + 1) + 8 * i);
                    v25 = objc_alloc_init(VCPFace);
                    v26 = [v24 objectForKeyedSubscript:@"attributes"];
                    v27 = [v26 objectForKeyedSubscript:@"faceBounds"];
                    v48 = NSRectFromString(v27);
                    [(VCPFace *)v25 setBounds:v48.origin.x, v48.origin.y, v48.size.width, v48.size.height];

                    [(NSMutableArray *)self->_detectedFaces addObject:v25];
                    if (+[VCPVideoKeyFrame isLivePhotoKeyFrameEnabled])
                    {
                      faceQualityScores = self->_faceQualityScores;
                      v29 = [v24 objectForKeyedSubscript:@"attributes"];
                      v30 = [v29 objectForKeyedSubscript:@"faceQuality"];
                      [(NSMutableArray *)faceQualityScores addObject:v30];
                    }
                  }

                  v20 = obj;
                  v21 = [obj countByEnumeratingWithState:&v41 objects:v46 count:16];
                }

                while (v21);
              }

              self->_statsFlags |= 0x10uLL;
              v31 = 0.0;
              if (self->_sharpness > 0.0)
              {
                v31 = 0.0;
                if (self->_qualityScoreForLivePhoto == 0.0)
                {
                  v31 = 1.0;
                }
              }

              self->_obstruction = v31;
              v32 = [v39 objectForKeyedSubscript:@"globalQualityScore"];

              if (v32)
              {
                [v32 floatValue];
              }

              else
              {
                [(VCPVideoKeyFrame *)self computeGlobalQuality];
              }

              self->_globalQualityScore = v33;
              v12 = [v39 objectForKeyedSubscript:@"contentScore"];

              if (v12)
              {
                [v12 floatValue];
              }

              else
              {
                overallFaceQualityScore = self->_overallFaceQualityScore;
              }

              v11 = 0;
              self->_contentScore = overallFaceQualityScore;
              goto LABEL_27;
            }

            goto LABEL_26;
          }

          goto LABEL_25;
        }

LABEL_26:
        v11 = -50;
        goto LABEL_27;
      }
    }

LABEL_25:
    v12 = 0;
    goto LABEL_26;
  }

  v11 = -50;
LABEL_28:

  return v11;
}

- (void)setFaceStatsFlag:(BOOL)a3 detectedFaces:(id)a4
{
  v4 = a3;
  v16 = *MEMORY[0x1E69E9840];
  v6 = a4;
  if (v4)
  {
    [(NSMutableArray *)self->_detectedFaces removeAllObjects];
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v7 = v6;
    v8 = [v7 countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v8)
    {
      v9 = *v12;
      do
      {
        v10 = 0;
        do
        {
          if (*v12 != v9)
          {
            objc_enumerationMutation(v7);
          }

          [(NSMutableArray *)self->_detectedFaces addObject:*(*(&v11 + 1) + 8 * v10++), v11];
        }

        while (v8 != v10);
        v8 = [v7 countByEnumeratingWithState:&v11 objects:v15 count:16];
      }

      while (v8);
    }

    self->_statsFlags |= 1uLL;
  }
}

- (void)setMotionStatsFlag:(BOOL)a3 cameraMotion:(float)a4 subjectAction:(float)a5 interestingness:(float)a6 obstruction:(float)a7 colorfulness:(float)a8 exposureScore:(float)a9 humanActionStatsFlag:(BOOL)a10 humanPoseScore:(float)a11 humanActionScore:(float)a12 subMb:(BOOL)a13
{
  *&self->_subjectAction = 0;
  self->_obstruction = 0.0;
  self->_subMb = 0;
  if (a3)
  {
    self->_subjectAction = a5;
    self->_cameraMotion = a4;
    self->_obstruction = 1.0 - a7;
    self->_subMb = a13;
    self->_statsFlags |= 2uLL;
  }

  if (a10)
  {
    self->_humanPoseScore = a11;
    self->_humanActionScore = a12;
    self->_statsFlags |= 8uLL;
  }

  self->_exposureScore = a9;
  self->_interestingness = a6;
  self->_colorfulness = a8;
}

- (void)computeGlobalQualityForLivePhoto
{
  sharpness = self->_sharpness;
  v3 = 1.0;
  v4 = 1.0;
  if (sharpness < 1.0)
  {
    v4 = 0.0;
    if (sharpness >= 0.0)
    {
      v4 = self->_sharpness;
    }
  }

  if (!self->_isHeadingFrame)
  {
    v3 = 0.0;
    if (self->_obstruction >= 0.96)
    {
      v3 = 1.0;
    }
  }

  self->_qualityScoreForLivePhoto = v4 * v3;
}

- (float)computeGlobalQuality
{
  v2 = 0.0;
  v3 = 1.0;
  if (self->_interestingness <= 0.0)
  {
    v4 = 0.0;
  }

  else
  {
    v4 = 1.0;
  }

  v5 = 1.0;
  if (!self->_isHeadingFrame)
  {
    v5 = 1.0;
    if (self->_obstruction < 0.96)
    {
      v5 = 0.0;
    }
  }

  v6 = v5 * v4;
  sharpness = self->_sharpness;
  if (sharpness >= 0.1)
  {
    v2 = self->_sharpness;
  }

  self->_thumbnailScore = v6 * v2;
  if (sharpness < 0.6)
  {
    v3 = 0.0;
    if (sharpness >= 0.3)
    {
      v3 = sharpness;
    }
  }

  v8 = v6 * v3;
  v9 = 1.0;
  if (v8 < 1.0)
  {
    v9 = v8;
  }

  v10 = v8 > 0.0;
  result = 0.0;
  if (v10)
  {
    return v9;
  }

  return result;
}

- (float)computeVisualPleasingScore
{
  [(VCPVideoKeyFrame *)self computeScoreFromColorfulness];
  v4 = v3;
  [(VCPVideoKeyFrame *)self computeScoreFromExposure];
  v6 = (v5 * 0.4) + (v4 * 0.6);
  v7 = 1.0;
  if (v6 < 1.0)
  {
    v7 = v6;
  }

  v8 = v6 > 0.0;
  result = 0.0;
  if (v8)
  {
    return v7;
  }

  return result;
}

- (float)computeContentScore
{
  [(VCPVideoKeyFrame *)self computeExpressionScore];
  if (result < (self->_humanPoseScore * 0.5))
  {
    result = self->_humanPoseScore * 0.5;
  }

  if (!self->_isHeadingFrame)
  {
    v4 = result * 0.6;
    [(VCPVideoKeyFrame *)self computeScoreFromAction];
    return v4 + ((v5 + self->_humanActionScore) * 0.4);
  }

  return result;
}

- (float)computePenaltyScore
{
  v36 = *MEMORY[0x1E69E9840];
  if (![(NSMutableArray *)self->_detectedFaces count])
  {
    return 1.0;
  }

  v3 = [(NSMutableArray *)self->_detectedFaces firstObject];
  [v3 bounds];
  v5 = v4;
  v7 = v6;

  v8 = v7 * v5;
  if (v8 <= 0.2 || (v9 = 0.0, self->_faceSharpness >= 0.3))
  {
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v10 = self->_detectedFaces;
    v11 = [(NSMutableArray *)v10 countByEnumeratingWithState:&v31 objects:v35 count:16];
    v9 = 1.0;
    if (v11)
    {
      v12 = *v32;
      v13 = (v8 * 0.9);
      while (2)
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v32 != v12)
          {
            objc_enumerationMutation(v10);
          }

          v15 = *(*(&v31 + 1) + 8 * i);
          [v15 bounds];
          v18 = v17;
          v20 = v19;
          v22 = v21;
          v23 = v21 * v19;
          if (v21 * v19 >= v13)
          {
            v24 = v16;
            v25 = ([v15 leftEyeClosed] & 1) != 0 ? 1 : objc_msgSend(v15, "rightEyeClosed");
            if ((v25 & 1) != 0 || (v26 = v24 + v22, v26 > 0.949999999) || (v27 = v18, v27 < 0.05) || (v28 = v24, v28 < 0.05) || (v29 = v18 + v20, v23 = v29, v23 > 0.949999999))
            {
              v9 = 0.4;
              goto LABEL_23;
            }
          }
        }

        v11 = [(NSMutableArray *)v10 countByEnumeratingWithState:&v31 objects:v35 count:16, v23];
        if (v11)
        {
          continue;
        }

        break;
      }
    }

LABEL_23:
  }

  return v9;
}

- (void)storeFrameResults
{
  *buf = 134218240;
  *(buf + 4) = a4;
  *(buf + 6) = 2048;
  *(buf + 14) = a3;
  _os_log_fault_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT, "Error: FaceQualityScore should not contain results! (size = %lu, timestamp=%.2f)", buf, 0x16u);
}

- (void)computeCurationScoreComponents
{
  statsFlags = self->_statsFlags;
  if ((statsFlags & 0x12) == 0x10)
  {
    if ((statsFlags & 1) == 0)
    {
      goto LABEL_3;
    }
  }

  else
  {
    [(VCPVideoKeyFrame *)self computeGlobalQuality];
    self->_globalQualityScore = v4;
    [(VCPVideoKeyFrame *)self computeVisualPleasingScore];
    self->_visualPleasingScore = v5;
    statsFlags = self->_statsFlags;
    if ((statsFlags & 1) == 0)
    {
LABEL_3:
      if ((statsFlags & 0x10) == 0)
      {
        goto LABEL_8;
      }

LABEL_7:
      if ((statsFlags & 3) != 3)
      {
        return;
      }

      goto LABEL_8;
    }
  }

  [(VCPVideoKeyFrame *)self computePenaltyScore];
  self->_penaltyScore = v6;
  statsFlags = self->_statsFlags;
  if ((statsFlags & 0x10) != 0)
  {
    goto LABEL_7;
  }

LABEL_8:
  [(VCPVideoKeyFrame *)self computeContentScore];
  self->_contentScore = v7;
}

- (void)computeCurationScore
{
  [(VCPVideoKeyFrame *)self computeCurationScoreComponents];
  v3 = 0.0;
  if (self->_globalQualityScore >= 0.5)
  {
    v3 = (((self->_visualPleasingScore * 0.25) + 0.1) + (self->_contentScore * 0.65)) * self->_penaltyScore;
  }

  if (self->_thumbnailScore >= 0.5)
  {
    self->_thumbnailScore = (((self->_visualPleasingScore * 0.25) + 0.1) + (self->_contentScore * 0.65)) * self->_penaltyScore;
  }

  v4 = 1.0;
  if (v3 < 1.0)
  {
    v4 = v3;
  }

  v5 = v3 > 0.0;
  v6 = 0.0;
  if (v5)
  {
    v6 = v4;
  }

  self->_score = v6;

  [(VCPVideoKeyFrame *)self storeFrameResults];
}

- (float)computeScoreFromAction
{
  v2 = (erff((self->_subjectAction * 0.5) + -1.5) * 0.5) + 0.5;
  v3 = 1.0;
  if (v2 < 1.0)
  {
    v3 = v2;
  }

  v4 = v2 > 0.0;
  result = 0.0;
  if (v4)
  {
    return v3;
  }

  return result;
}

- (float)computeExpressionScore
{
  v3 = [(NSMutableArray *)self->_detectedFaces count];
  if (!v3)
  {
    return 0.0;
  }

  if ([(NSMutableArray *)self->_detectedFaces count])
  {
    v4 = 0;
    v5 = 0;
    v6 = 0;
    v7 = 0.0;
    v8 = 0.0;
    do
    {
      v9 = [(NSMutableArray *)self->_detectedFaces objectAtIndexedSubscript:v6, *&v28.origin, *&v28.size];
      [v9 bounds];
      v28.origin.x = v12;
      v28.origin.y = v13;
      v28.size.width = v10;
      v28.size.height = v11;
      if (v11 >= v10)
      {
        v14 = v11;
      }

      else
      {
        v14 = v10;
      }

      v15 = v14;
      if (MediaAnalysisFacePosition(&v28) == 16)
      {
        v16 = 1.0;
      }

      else
      {
        v16 = 0.5;
      }

      v17 = v16 * v15;
      if ((v16 * v15) > v7)
      {
        v4 = [v9 smile];
        if ([v9 leftEyeClosed])
        {
          v5 = 1;
        }

        else
        {
          v5 = [v9 rightEyeClosed];
        }

        if ([(NSMutableArray *)self->_faceQualityScores count]> v6)
        {
          v18 = [(NSMutableArray *)self->_faceQualityScores objectAtIndexedSubscript:v6];
          [v18 floatValue];
          self->_overallFaceQualityScore = v19;
        }

        v8 = v15;
        v7 = v17;
      }

      ++v6;
    }

    while (v6 < [(NSMutableArray *)self->_detectedFaces count]);
    v20 = 0.3;
    if ((v4 & 1) == 0)
    {
      v20 = 0.0;
    }

    if (v5)
    {
      v21 = -0.9;
    }

    else
    {
      v21 = v20;
    }
  }

  else
  {
    v21 = 0.0;
    v8 = 0.0;
  }

  if ((v8 + -0.368) >= 0.0)
  {
    v23 = expf(-((v8 + -0.368) * (v8 + -0.368)) / sqrtf(v3));
  }

  else
  {
    v23 = v8 / 0.368;
  }

  v24 = v21 + v23;
  faceSharpness = self->_faceSharpness;
  if (faceSharpness < 0.3)
  {
    faceSharpness = 0.0;
  }

  v26 = v24 * faceSharpness;
  v27 = 1.0;
  if (v26 < 1.0)
  {
    v27 = v26;
  }

  if (v26 <= 0.0)
  {
    return 0.0;
  }

  else
  {
    return v27;
  }
}

- (float)computeScoreFromColorfulness
{
  v2 = self->_colorfulness * 0.012195;
  v3 = 1.0;
  if (v2 < 1.0)
  {
    v3 = self->_colorfulness * 0.012195;
  }

  v4 = v2 > 0.0;
  result = 0.0;
  if (v4)
  {
    return v3;
  }

  return result;
}

- (float)computeScoreFromExposure
{
  v2 = expf((self->_exposureScore * self->_exposureScore) / -12723.0);
  v3 = 1.0;
  if (v2 < 1.0)
  {
    v3 = v2;
  }

  v5 = v2 == 0.0;
  v4 = v2 >= 0.0;
  result = 0.0;
  if (!v5 && v4)
  {
    return v3;
  }

  return result;
}

- (void)printStats
{
  v26 = *MEMORY[0x1E69E9840];
  if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
  {
    timestamp = self->_timestamp;
    Seconds = CMTimeGetSeconds(&timestamp);
    sharpness = self->_sharpness;
    faceSharpness = self->_faceSharpness;
    cameraMotion = self->_cameraMotion;
    subjectAction = self->_subjectAction;
    interestingness = self->_interestingness;
    obstruction = self->_obstruction;
    exposureScore = self->_exposureScore;
    score = self->_score;
    LODWORD(timestamp.value) = 134220032;
    *(&timestamp.value + 4) = Seconds;
    LOWORD(timestamp.flags) = 2048;
    *(&timestamp.flags + 2) = sharpness;
    HIWORD(timestamp.epoch) = 2048;
    v13 = faceSharpness;
    v14 = 2048;
    v15 = cameraMotion;
    v16 = 2048;
    v17 = subjectAction;
    v18 = 2048;
    v19 = interestingness;
    v20 = 2048;
    v21 = obstruction;
    v22 = 2048;
    v23 = exposureScore;
    v24 = 2048;
    v25 = score;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "time=%.2f sharpness=%.2f, faceSharpness=%.2f, cameraM=%.2f, subjectM=%.2f, junk=%.2f, obstr=%.2f, exposure=%.2f, score=%.2f", &timestamp, 0x5Cu);
  }
}

- (void)setTimestamp:(id *)a3
{
  v3 = *&a3->var0;
  self->_timestamp.epoch = a3->var3;
  *&self->_timestamp.value = v3;
}

@end