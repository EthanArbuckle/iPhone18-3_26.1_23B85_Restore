@interface VCPVideoGlobalAnalyzer
- (BOOL)checkCameraZoom:(id *)a3 cameraMotionResults:(id)a4;
- (BOOL)hasMeaningfulSceneSegment:(id)a3 withFpsRate:(float)a4;
- (BOOL)isJunkTimeRange:(id *)a3 basedOnResults:(id)a4;
- (float)analyzeOverallQuality:(id)a3 withFpsRate:(float)a4;
- (float)assetActionScoreFromAnalysis:(id)a3;
- (float)assetActivityLevelFromAnalysisResults:(id)a3;
- (float)assetCameraMotionScoreFromAnalysis:(id)a3;
- (float)assetExpressionScoreFromAnalysis:(id)a3;
- (float)assetJunkScoreFromAnalysis:(id)a3;
- (float)assetQualityScoreFromAnalysis:(id)a3 withFpsRate:(float)a4;
- (float)assetVoiceScoreFromAnalysis:(id)a3;
- (float)cameraActivityfromQuality:(float)a3;
- (float)scaleForTimeRange:(id *)a3 basedOnFace:(id)a4;
- (float)subjectActivityInTimeRange:(id *)a3 fromResults:(id)a4;
- (int)generateLivePhotoRecommendationForResults:(id)a3 andPrivateResults:(id)a4 usingFaceAction:(BOOL)a5;
- (int)setActivityLevel:(id)a3;
@end

@implementation VCPVideoGlobalAnalyzer

- (float)analyzeOverallQuality:(id)a3 withFpsRate:(float)a4
{
  v6 = a3;
  if ((~[v6 vcp_types] & 0x98) != 0 || a4 <= 0.0)
  {
    v9 = -1.0;
  }

  else
  {
    *&v7 = a4;
    v9 = 0.0;
    if ([(VCPVideoGlobalAnalyzer *)self hasMeaningfulSceneSegment:v6 withFpsRate:v7])
    {
      *&v8 = a4;
      [(VCPVideoGlobalAnalyzer *)self assetQualityScoreFromAnalysis:v6 withFpsRate:v8];
      v11 = v10;
      [(VCPVideoGlobalAnalyzer *)self assetActionScoreFromAnalysis:v6];
      v13 = v12;
      [(VCPVideoGlobalAnalyzer *)self assetExpressionScoreFromAnalysis:v6];
      v15 = v14;
      [(VCPVideoGlobalAnalyzer *)self assetVoiceScoreFromAnalysis:v6];
      v17 = v16;
      [(VCPVideoGlobalAnalyzer *)self assetJunkScoreFromAnalysis:v6];
      v19 = v18;
      v20 = (v17 * 0.1) + (v11 * 0.4);
      if (v13 >= 0.2 || v15 >= 0.2)
      {
        v22 = ((v15 * 0.25) + (v13 * 0.25)) + v20;
        v23 = 1.0;
      }

      else
      {
        [(VCPVideoGlobalAnalyzer *)self assetCameraMotionScoreFromAnalysis:v6];
        v22 = v20 + (v21 * 0.35);
        v23 = 0.85;
      }

      v25 = powf(v19 * (v22 / v23), 0.4);
      v26 = 1.0;
      if (v25 < 1.0)
      {
        v26 = v25;
      }

      if (v25 <= 0.0)
      {
        v9 = 0.0;
      }

      else
      {
        v9 = v26;
      }
    }
  }

  return v9;
}

- (BOOL)checkCameraZoom:(id *)a3 cameraMotionResults:(id)a4
{
  v31 = *MEMORY[0x1E69E9840];
  v5 = a4;
  memset(&v29, 0, sizeof(v29));
  v6 = *&a3->var0.var3;
  *&range.start.value = *&a3->var0.var0;
  *&range.start.epoch = v6;
  *&range.duration.timescale = *&a3->var1.var1;
  CMTimeRangeGetEnd(&v29, &range);
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v7 = v5;
  v8 = [v7 countByEnumeratingWithState:&v24 objects:v30 count:16];
  if (v8)
  {
    v9 = *v25;
LABEL_3:
    v10 = 0;
    while (1)
    {
      if (*v25 != v9)
      {
        objc_enumerationMutation(v7);
      }

      v11 = *(*(&v24 + 1) + 8 * v10);
      memset(&range, 0, sizeof(range));
      CMTimeRangeMakeFromDictionary(&range, v11);
      *&time1.start.value = *&range.start.value;
      time1.start.epoch = range.start.epoch;
      time2.start = v29;
      if ((CMTimeCompare(&time1.start, &time2.start) & 0x80000000) == 0)
      {
        break;
      }

      time2 = range;
      memset(&time1, 0, sizeof(time1));
      v12 = *&a3->var0.var3;
      *&otherRange.start.value = *&a3->var0.var0;
      *&otherRange.start.epoch = v12;
      *&otherRange.duration.timescale = *&a3->var1.var1;
      CMTimeRangeGetIntersection(&time1, &time2, &otherRange);
      if ((time1.start.flags & 1) == 0 || (time1.duration.flags & 1) == 0 || time1.duration.epoch || time1.duration.value < 0 || (time2.start = time1.duration, *&otherRange.start.value = *MEMORY[0x1E6960CC0], otherRange.start.epoch = *(MEMORY[0x1E6960CC0] + 16), CMTimeCompare(&time2.start, &otherRange.start)))
      {
        v13 = [(__CFDictionary *)v11 objectForKey:@"flags"];
        v14 = v13;
        if (v13)
        {
          v15 = [v13 intValue];
          v17 = !(v16 | ((v15 & 0x2FFC0) == 0)) && (v15 & 0x1FC0) == 4096;
          v18 = v17;

          if (v18)
          {
            v19 = 1;
            goto LABEL_25;
          }
        }
      }

      if (v8 == ++v10)
      {
        v8 = [v7 countByEnumeratingWithState:&v24 objects:v30 count:16];
        v19 = 0;
        if (v8)
        {
          goto LABEL_3;
        }

        goto LABEL_25;
      }
    }
  }

  v19 = 0;
LABEL_25:

  return v19;
}

- (int)generateLivePhotoRecommendationForResults:(id)a3 andPrivateResults:(id)a4 usingFaceAction:(BOOL)a5
{
  v54 = a5;
  v81 = *MEMORY[0x1E69E9840];
  v50 = a3;
  v49 = a4;
  {
    CMTimeMake(&[VCPVideoGlobalAnalyzer generateLivePhotoRecommendationForResults:andPrivateResults:usingFaceAction:]::kTrimLength, 2, 15);
  }

  v47 = [MEMORY[0x1E695DF70] array];
  memset(&v77, 0, sizeof(v77));
  v6 = MEMORY[0x1E6960CC0];
  *&start.start.value = *MEMORY[0x1E6960CC0];
  start.start.epoch = *(MEMORY[0x1E6960CC0] + 16);
  *&duration.start.value = *&start.start.value;
  duration.start.epoch = start.start.epoch;
  CMTimeRangeMake(&v77, &start.start, &duration.start);
  memset(&start, 0, sizeof(start));
  *&duration.start.value = *v6;
  duration.start.epoch = *(v6 + 16);
  *&lhs.start.value = *&duration.start.value;
  lhs.start.epoch = duration.start.epoch;
  CMTimeRangeMake(&start, &duration.start, &lhs.start);
  v75 = 0.0;
  v55 = [v50 objectForKeyedSubscript:@"SceneResults"];
  v48 = [v50 objectForKeyedSubscript:@"FineSubjectMotionResults"];
  v46 = [v50 objectForKeyedSubscript:@"FaceResults"];
  v53 = [v50 objectForKeyedSubscript:@"OrientationResults"];
  v56 = [v49 objectForKeyedSubscript:@"MetaMotionProcessedResults"];
  v52 = [v50 objectForKeyedSubscript:@"CameraMotionResults"];
  if ([v55 count])
  {
    v7 = [v55 lastObject];
    memset(&duration, 0, sizeof(duration));
    CMTimeRangeMakeFromDictionary(&duration, v7);
    *&lhs.start.value = *&duration.start.value;
    lhs.start.epoch = duration.start.epoch;
    rhs.start = duration.duration;
    CMTimeAdd(&time1.start, &lhs.start, &rhs.start);
    v77.duration = time1.start;
    v8 = [v55 firstObject];

    CMTimeRangeMakeFromDictionary(&lhs, v8);
    *&duration.start.epoch = *&lhs.start.epoch;
    *&v77.start.value = *&lhs.start.value;
    v77.start.epoch = lhs.start.epoch;
  }

  v57 = 0;
  v9 = 0;
  while (v57 < [v55 count])
  {
    v10 = [v55 objectAtIndex:?];
    memset(&duration, 0, sizeof(duration));
    CMTimeRangeMakeFromDictionary(&duration, v10);
    v11 = [(__CFDictionary *)v10 objectForKey:@"quality"];
    [v11 floatValue];
    v13 = v12;

    v71 = 0u;
    v72 = 0u;
    v69 = 0u;
    v70 = 0u;
    v14 = v53;
    v15 = [v14 countByEnumeratingWithState:&v69 objects:v80 count:16];
    if (v15)
    {
      v16 = *v70;
      while (2)
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v70 != v16)
          {
            objc_enumerationMutation(v14);
          }

          v18 = *(*(&v69 + 1) + 8 * i);
          memset(&lhs, 0, sizeof(lhs));
          CMTimeRangeMakeFromDictionary(&lhs, v18);
          time1 = duration;
          memset(&rhs, 0, sizeof(rhs));
          otherRange = lhs;
          CMTimeRangeGetIntersection(&rhs, &time1, &otherRange);
          if ((rhs.start.flags & 1) != 0 && (rhs.duration.flags & 1) != 0 && !rhs.duration.epoch && (rhs.duration.value & 0x8000000000000000) == 0)
          {
            time1.start = rhs.duration;
            *&otherRange.start.value = *MEMORY[0x1E6960CC0];
            otherRange.start.epoch = *(MEMORY[0x1E6960CC0] + 16);
            if (!CMTimeCompare(&time1.start, &otherRange.start))
            {
              continue;
            }
          }

          time1 = lhs;
          otherRange = duration;
          if (!CMTimeRangeContainsTimeRange(&time1, &otherRange))
          {

            goto LABEL_27;
          }
        }

        v15 = [v14 countByEnumeratingWithState:&v69 objects:v80 count:16];
        if (v15)
        {
          continue;
        }

        break;
      }
    }

    if (v13 >= 0.0)
    {
      lhs = duration;
      if (![(VCPVideoGlobalAnalyzer *)self checkCameraZoom:&lhs cameraMotionResults:v52])
      {
        while (v9 < [v56 count] && v54)
        {
          memset(&lhs, 0, sizeof(lhs));
          v19 = [v56 objectAtIndex:v9];
          CMTimeRangeMakeFromDictionary(&lhs, v19);

          rhs = duration;
          CMTimeRangeGetEnd(&otherRange.start, &rhs);
          *&rhs.start.value = *&otherRange.start.value;
          rhs.start.epoch = otherRange.start.epoch;
          *&time1.start.value = *&lhs.start.value;
          time1.start.epoch = lhs.start.epoch;
          v20 = CMTimeCompare(&rhs.start, &time1.start);
          v21 = v20 > 0;
          if (v20 > 0)
          {
            rhs = lhs;
            time1 = duration;
            ++v9;
            if (!CMTimeRangeContainsTimeRange(&rhs, &time1))
            {
              continue;
            }
          }

          goto LABEL_29;
        }

        v21 = 0;
LABEL_29:
        if (v13 >= 0.3)
        {
          lhs.start = duration.duration;
          if (CMTimeGetSeconds(&lhs.start) >= 1.0)
          {
            if (v21 || !v54)
            {
              goto LABEL_63;
            }

            v64 = 0u;
            v65 = 0u;
            v62 = 0u;
            v63 = 0u;
            v22 = v48;
            v23 = [v22 countByEnumeratingWithState:&v62 objects:v79 count:16];
            if (v23)
            {
              v24 = *v63;
              do
              {
                v25 = 0;
                do
                {
                  if (*v63 != v24)
                  {
                    objc_enumerationMutation(v22);
                  }

                  v26 = *(*(&v62 + 1) + 8 * v25);
                  memset(&lhs, 0, sizeof(lhs));
                  CMTimeRangeMakeFromDictionary(&lhs, v26);
                  v27 = [(__CFDictionary *)v26 objectForKeyedSubscript:@"quality"];
                  [v27 floatValue];
                  v29 = v28;

                  time1 = duration;
                  memset(&rhs, 0, sizeof(rhs));
                  otherRange = lhs;
                  CMTimeRangeGetIntersection(&rhs, &time1, &otherRange);
                  if ((rhs.start.flags & 1) != 0 && (rhs.duration.flags & 1) != 0 && !rhs.duration.epoch && (rhs.duration.value & 0x8000000000000000) == 0 && v29 >= 0.3)
                  {
                    time1.start = rhs.duration;
                    if (CMTimeGetSeconds(&time1.start) > 0.0)
                    {

                      goto LABEL_63;
                    }
                  }

                  ++v25;
                }

                while (v23 != v25);
                v30 = [v22 countByEnumeratingWithState:&v62 objects:v79 count:16];
                v23 = v30;
              }

              while (v30);
            }

            v60 = 0u;
            v61 = 0u;
            v58 = 0u;
            v59 = 0u;
            v31 = v46;
            v32 = [v31 countByEnumeratingWithState:&v58 objects:v78 count:16];
            if (v32)
            {
              v33 = *v59;
              v34 = 0.0;
              do
              {
                for (j = 0; j != v32; ++j)
                {
                  if (*v59 != v33)
                  {
                    objc_enumerationMutation(v31);
                  }

                  v36 = *(*(&v58 + 1) + 8 * j);
                  v37 = [v36 objectForKey:@"attributes"];
                  v38 = [v37 objectForKey:@"faceBounds"];
                  v82 = NSRectFromString(v38);
                  width = v82.size.width;
                  height = v82.size.height;
                  memset(&lhs, 0, sizeof(lhs));
                  CMTimeRangeMakeFromDictionary(&lhs, v36);
                  time1 = duration;
                  memset(&rhs, 0, sizeof(rhs));
                  otherRange = lhs;
                  CMTimeRangeGetIntersection(&rhs, &time1, &otherRange);
                  if ((rhs.start.flags & 1) != 0 && (rhs.duration.flags & 1) != 0 && !rhs.duration.epoch && (rhs.duration.value & 0x8000000000000000) == 0)
                  {
                    time1.start = rhs.duration;
                    v34 = v34 + width * height * CMTimeGetSeconds(&time1.start);
                  }
                }

                v32 = [v31 countByEnumeratingWithState:&v58 objects:v78 count:16];
              }

              while (v32);
              v41 = v34;
            }

            else
            {
              v41 = 0.0;
            }

            lhs.start = duration.duration;
            *&rhs.start.value = *MEMORY[0x1E6960CC0];
            rhs.start.epoch = *(MEMORY[0x1E6960CC0] + 16);
            if (CMTimeCompare(&lhs.start, &rhs.start))
            {
              lhs.start = duration.duration;
              v42 = v41 / CMTimeGetSeconds(&lhs.start);
              if (v42 >= 0.04)
              {
LABEL_63:
                lhs.start = duration.duration;
                Seconds = CMTimeGetSeconds(&lhs.start);
                lhs.start = start.duration;
                if (Seconds > CMTimeGetSeconds(&lhs.start))
                {
                  start = duration;
                  v75 = v13;
                }
              }
            }
          }
        }
      }
    }

LABEL_27:

    ++v57;
  }

  if ((start.start.flags & 1) == 0)
  {
LABEL_66:
    v44 = 0;
    goto LABEL_67;
  }

  v44 = 0;
  if ((start.duration.flags & 1) != 0 && !start.duration.epoch && (start.duration.value & 0x8000000000000000) == 0)
  {
    duration.start = start.duration;
    *&lhs.start.value = *MEMORY[0x1E6960CC0];
    lhs.start.epoch = *(MEMORY[0x1E6960CC0] + 16);
    if (CMTimeCompare(&duration.start, &lhs.start))
    {
      duration.start = v77.duration;
      if (CMTimeGetSeconds(&duration.start) >= 2.29999995)
      {
        goto LABEL_82;
      }

      *&duration.start.value = *&start.start.value;
      duration.start.epoch = start.start.epoch;
      *&lhs.start.value = *&v77.start.value;
      lhs.start.epoch = v77.start.epoch;
      if (!CMTimeCompare(&duration.start, &lhs.start))
      {
        *&duration.start.value = *&v77.start.value;
        duration.start.epoch = v77.start.epoch;
        *&lhs.start.value = [VCPVideoGlobalAnalyzer generateLivePhotoRecommendationForResults:andPrivateResults:usingFaceAction:]::kTrimLength;
        lhs.start.epoch = qword_1ED942A70;
        CMTimeAdd(&rhs.start, &duration.start, &lhs.start);
        *&start.start.value = *&rhs.start.value;
        start.start.epoch = rhs.start.epoch;
        duration.start = start.duration;
        *&lhs.start.value = [VCPVideoGlobalAnalyzer generateLivePhotoRecommendationForResults:andPrivateResults:usingFaceAction:]::kTrimLength;
        lhs.start.epoch = qword_1ED942A70;
        CMTimeSubtract(&rhs.start, &duration.start, &lhs.start);
        start.duration = rhs.start;
      }

      duration = start;
      CMTimeRangeGetEnd(&rhs.start, &duration);
      duration = v77;
      CMTimeRangeGetEnd(&time1.start, &duration);
      *&duration.start.value = *&rhs.start.value;
      duration.start.epoch = rhs.start.epoch;
      *&lhs.start.value = *&time1.start.value;
      lhs.start.epoch = time1.start.epoch;
      if (!CMTimeCompare(&duration.start, &lhs.start))
      {
        duration.start = start.duration;
        *&lhs.start.value = [VCPVideoGlobalAnalyzer generateLivePhotoRecommendationForResults:andPrivateResults:usingFaceAction:]::kTrimLength;
        lhs.start.epoch = qword_1ED942A70;
        CMTimeSubtract(&rhs.start, &duration.start, &lhs.start);
        start.duration = rhs.start;
      }

      if ((start.start.flags & 1) == 0 || (start.duration.flags & 1) == 0 || start.duration.epoch || start.duration.value < 0 || (duration.start = start.duration, *&lhs.start.value = *MEMORY[0x1E6960CC0], lhs.start.epoch = *(MEMORY[0x1E6960CC0] + 16), CMTimeCompare(&duration.start, &lhs.start)))
      {
LABEL_82:
        v44 = AddResultDictionary(&start.start, &start.duration, &v75, 0, 0, v47);
        if (v44)
        {
          goto LABEL_67;
        }

        [v50 setObject:v47 forKey:@"IrisRecommendResults"];
      }
    }

    goto LABEL_66;
  }

LABEL_67:

  return v44;
}

- (float)assetQualityScoreFromAnalysis:(id)a3 withFpsRate:(float)a4
{
  v5 = a3;
  v6 = [v5 objectForKey:@"metadataRanges"];
  v32 = a4;
  v7 = [v6 objectForKey:@"QualityResults"];

  v8 = 0;
  v9 = 1.0;
  v10 = 1.0;
  v11 = 0.0;
  v12 = 0.0;
  v13 = 0.0;
  v14 = 0.0;
  while (v8 < [v7 count])
  {
    v15 = [v7 objectAtIndex:v8];
    memset(&v34, 0, sizeof(v34));
    CMTimeRangeMakeFromDictionary(&v34, v15);
    time = v34.duration;
    Seconds = CMTimeGetSeconds(&time);
    v17 = [(__CFDictionary *)v15 objectForKey:@"quality"];
    [v17 floatValue];
    v19 = v18;

    v20 = [v7 count];
    v21 = Seconds;
    v22 = 0.0;
    if (v19 <= 0.3)
    {
      v23 = 1;
    }

    else
    {
      v22 = 1.0;
      v23 = v10 > 0.3;
    }

    v24 = !v23;
    v26 = v19 <= 0.3 && v10 > 0.3;
    if (v26 | v24)
    {
      v11 = v11 + 1.0;
    }

    v12 = v12 + (v22 * v21);
    v14 = v14 + (v19 * v21);
    v13 = v13 + v21;
    if (v9 > v21 && v8 < v20 - 1)
    {
      v9 = Seconds;
    }

    ++v8;
    v10 = v19;
  }

  if (v13 == 0.0)
  {
    v30 = 0.0;
  }

  else
  {
    v28 = ((((v9 * (v11 * -0.4)) / v13) + 1.0) * ((v12 * (v14 / v13)) / v13)) * (erff(((v13 / v32) + -10.0) / 424.26) + 1.0);
    if (v28 < 1.0)
    {
      v29 = v28;
    }

    else
    {
      v29 = 1.0;
    }

    if (v28 <= 0.0)
    {
      v30 = 0.0;
    }

    else
    {
      v30 = v29;
    }
  }

  return v30;
}

- (float)assetActionScoreFromAnalysis:(id)a3
{
  v65 = *MEMORY[0x1E69E9840];
  v41 = [a3 objectForKey:@"metadataRanges"];
  v3 = [v41 objectForKey:?];
  v40 = [v3 count];

  v60 = 0u;
  v61 = 0u;
  v58 = 0u;
  v59 = 0u;
  obj = [v41 objectForKey:@"QualityResults"];
  v4 = [obj countByEnumeratingWithState:&v58 objects:v64 count:16];
  if (v4)
  {
    v42 = v4;
    v39 = *v59;
    v5 = 0.0;
    v6 = 0.0;
    do
    {
      for (i = 0; i != v42; ++i)
      {
        if (*v59 != v39)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v58 + 1) + 8 * i);
        memset(&v57, 0, sizeof(v57));
        CMTimeRangeMakeFromDictionary(&v57, v7);
        memset(&v56, 0, sizeof(v56));
        range = v57;
        CMTimeRangeGetEnd(&v56, &range);
        if (v40)
        {
          v53 = 0u;
          v54 = 0u;
          v51 = 0u;
          v52 = 0u;
          v8 = [v41 objectForKey:@"FineSubjectMotionResults"];
          v9 = [v8 countByEnumeratingWithState:&v51 objects:v63 count:16];
          if (v9)
          {
            v10 = *v52;
LABEL_9:
            v11 = 0;
            while (1)
            {
              if (*v52 != v10)
              {
                objc_enumerationMutation(v8);
              }

              v12 = *(*(&v51 + 1) + 8 * v11);
              memset(&range, 0, sizeof(range));
              CMTimeRangeMakeFromDictionary(&range, v12);
              *&time1.start.value = *&range.start.value;
              time1.start.epoch = range.start.epoch;
              time2.start = v56;
              if ((CMTimeCompare(&time1.start, &time2.start) & 0x80000000) == 0)
              {
                break;
              }

              time2 = range;
              memset(&time1, 0, sizeof(time1));
              otherRange = v57;
              CMTimeRangeGetIntersection(&time1, &time2, &otherRange);
              if ((time1.start.flags & 1) == 0 || (time1.duration.flags & 1) == 0 || time1.duration.epoch || time1.duration.value < 0 || (time2.start = time1.duration, *&otherRange.start.value = *MEMORY[0x1E6960CC0], otherRange.start.epoch = *(MEMORY[0x1E6960CC0] + 16), CMTimeCompare(&time2.start, &otherRange.start)))
              {
                v13 = [(__CFDictionary *)v12 objectForKey:@"quality"];
                [v13 floatValue];
                v15 = v14;

                v16 = [(__CFDictionary *)v7 objectForKey:@"quality"];
                [v16 floatValue];
                v18 = v17;

                time2.start = time1.duration;
                Seconds = CMTimeGetSeconds(&time2.start);
                if (v15 < 0.3)
                {
                  v20 = 0.0;
                }

                else
                {
                  v20 = 1.0;
                }

                v5 = v5 + ((v18 * v20) * Seconds);
                v6 = v6 + Seconds;
              }

              if (v9 == ++v11)
              {
                v9 = [v8 countByEnumeratingWithState:&v51 objects:v63 count:16];
                if (v9)
                {
                  goto LABEL_9;
                }

                break;
              }
            }
          }
        }

        else
        {
          v46 = 0u;
          v47 = 0u;
          v44 = 0u;
          v45 = 0u;
          v8 = [v41 objectForKey:@"SubjectMotionResults"];
          v21 = [v8 countByEnumeratingWithState:&v44 objects:v62 count:16];
          if (v21)
          {
            v22 = *v45;
LABEL_27:
            v23 = 0;
            while (1)
            {
              if (*v45 != v22)
              {
                objc_enumerationMutation(v8);
              }

              v24 = *(*(&v44 + 1) + 8 * v23);
              memset(&range, 0, sizeof(range));
              CMTimeRangeMakeFromDictionary(&range, v24);
              *&time1.start.value = *&range.start.value;
              time1.start.epoch = range.start.epoch;
              time2.start = v56;
              if ((CMTimeCompare(&time1.start, &time2.start) & 0x80000000) == 0)
              {
                break;
              }

              time2 = range;
              memset(&time1, 0, sizeof(time1));
              otherRange = v57;
              CMTimeRangeGetIntersection(&time1, &time2, &otherRange);
              if ((time1.start.flags & 1) == 0 || (time1.duration.flags & 1) == 0 || time1.duration.epoch || time1.duration.value < 0 || (time2.start = time1.duration, *&otherRange.start.value = *MEMORY[0x1E6960CC0], otherRange.start.epoch = *(MEMORY[0x1E6960CC0] + 16), CMTimeCompare(&time2.start, &otherRange.start)))
              {
                v25 = [(__CFDictionary *)v7 objectForKey:@"quality"];
                [v25 floatValue];
                v27 = v26;

                v28 = [(__CFDictionary *)v24 objectForKey:@"flags"];
                v29 = [v28 unsignedIntegerValue];

                time2.start = time1.duration;
                v30 = CMTimeGetSeconds(&time2.start);
                if ((*&v29 & 0x20000) != 0)
                {
                  v31 = 1.0;
                }

                else
                {
                  v31 = 0.0;
                }

                v32 = v30;
                v5 = v5 + ((v27 * v31) * v32);
                v6 = v6 + v32;
              }

              if (v21 == ++v23)
              {
                v21 = [v8 countByEnumeratingWithState:&v44 objects:v62 count:16];
                if (v21)
                {
                  goto LABEL_27;
                }

                break;
              }
            }
          }
        }
      }

      v42 = [obj countByEnumeratingWithState:&v58 objects:v64 count:16];
    }

    while (v42);
  }

  else
  {
    v5 = 0.0;
    v6 = 0.0;
  }

  v33 = v5 / v6;
  if (v6 <= 1.0)
  {
    v33 = v5;
  }

  v34 = (erff((v33 * 12.0) + -1.8) * 0.5) + 0.5;
  if (v34 < 1.0)
  {
    v35 = v34;
  }

  else
  {
    v35 = 1.0;
  }

  if (v34 <= 0.0)
  {
    v36 = 0.0;
  }

  else
  {
    v36 = v35;
  }

  return v36;
}

- (float)assetExpressionScoreFromAnalysis:(id)a3
{
  v53 = *MEMORY[0x1E69E9840];
  v33 = [a3 objectForKey:@"metadataRanges"];
  v49 = 0u;
  v50 = 0u;
  v47 = 0u;
  v48 = 0u;
  obj = [v33 objectForKey:@"QualityResults"];
  v3 = [obj countByEnumeratingWithState:&v47 objects:v52 count:16];
  if (v3)
  {
    v34 = v3;
    v32 = *v48;
    v4 = 0.0;
    v5 = 0.0;
    do
    {
      for (i = 0; i != v34; ++i)
      {
        if (*v48 != v32)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v47 + 1) + 8 * i);
        memset(&v46, 0, sizeof(v46));
        CMTimeRangeMakeFromDictionary(&v46, v6);
        memset(&v45, 0, sizeof(v45));
        range = v46;
        CMTimeRangeGetEnd(&v45, &range);
        v40 = 0u;
        v41 = 0u;
        v42 = 0u;
        v43 = 0u;
        v36 = [v33 objectForKey:@"FaceResults"];
        v7 = [v36 countByEnumeratingWithState:&v40 objects:v51 count:16];
        if (v7)
        {
          v8 = *v41;
LABEL_8:
          v9 = 0;
          while (1)
          {
            if (*v41 != v8)
            {
              objc_enumerationMutation(v36);
            }

            v10 = *(*(&v40 + 1) + 8 * v9);
            memset(&range, 0, sizeof(range));
            CMTimeRangeMakeFromDictionary(&range, v10);
            *&time1.start.value = *&range.start.value;
            time1.start.epoch = range.start.epoch;
            time2.start = v45;
            if ((CMTimeCompare(&time1.start, &time2.start) & 0x80000000) == 0)
            {
              break;
            }

            time2 = range;
            memset(&time1, 0, sizeof(time1));
            otherRange = v46;
            CMTimeRangeGetIntersection(&time1, &time2, &otherRange);
            if ((time1.start.flags & 1) == 0 || (time1.duration.flags & 1) == 0 || time1.duration.epoch || time1.duration.value < 0 || (time2.start = time1.duration, *&otherRange.start.value = *MEMORY[0x1E6960CC0], otherRange.start.epoch = *(MEMORY[0x1E6960CC0] + 16), CMTimeCompare(&time2.start, &otherRange.start)))
            {
              v11 = [(__CFDictionary *)v10 objectForKey:@"attributes"];
              v12 = [v11 objectForKey:@"faceBounds"];
              v13 = [(__CFDictionary *)v10 objectForKey:@"flags"];
              v14 = [v13 intValue];
              v54 = NSRectFromString(v12);
              v15 = v54.size.width * v54.size.height + -0.170000002;
              v16 = [VCPVideoGlobalAnalyzer assetExpressionScoreFromAnalysis:]::kAreaSigma[v15 > 0.0];
              time2.start = time1.duration;
              Seconds = CMTimeGetSeconds(&time2.start);
              v18 = expf(-(v15 * v15) / v16);
              if ((v14 & 2) != 0)
              {
                v19 = 0.3;
              }

              else
              {
                v19 = 0.0;
              }

              v20 = v19 + v18;
              if (v20 < 1.0)
              {
                v21 = v20;
              }

              else
              {
                v21 = 1.0;
              }

              if (v20 <= 0.0)
              {
                v22 = 0.0;
              }

              else
              {
                v22 = v21;
              }

              v23 = [(__CFDictionary *)v6 objectForKey:@"quality"];
              [v23 floatValue];
              v25 = v24;

              v26 = Seconds;
              v5 = v5 + (sqrtf(v22 * v25) * v26);
              v4 = v4 + v26;
            }

            if (v7 == ++v9)
            {
              v7 = [v36 countByEnumeratingWithState:&v40 objects:v51 count:16];
              if (v7)
              {
                goto LABEL_8;
              }

              break;
            }
          }
        }
      }

      v34 = [obj countByEnumeratingWithState:&v47 objects:v52 count:16];
    }

    while (v34);
  }

  else
  {
    v4 = 0.0;
    v5 = 0.0;
  }

  v27 = v5 / v4;
  v28 = 1.0;
  if (v4 <= 1.0)
  {
    v27 = v5;
  }

  if (v27 < 1.0)
  {
    v28 = v27;
  }

  if (v27 <= 0.0)
  {
    v29 = 0.0;
  }

  else
  {
    v29 = v28;
  }

  return v29;
}

- (float)assetVoiceScoreFromAnalysis:(id)a3
{
  v29 = *MEMORY[0x1E69E9840];
  v3 = [a3 objectForKey:@"metadataRanges"];
  v4 = [v3 objectForKey:@"QualityResults"];
  v5 = [v4 lastObject];

  memset(&v26, 0, sizeof(v26));
  CMTimeRangeMakeFromDictionary(&v26, v5);
  *&v20.start.value = *&v26.start.value;
  v20.start.epoch = v26.start.epoch;
  rhs = v26.duration;
  CMTimeAdd(&time, &v20.start, &rhs);
  Seconds = CMTimeGetSeconds(&time);
  if (Seconds == 0.0)
  {
    v13 = 0.0;
  }

  else
  {
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v7 = [v3 objectForKey:@"VoiceResults"];
    v8 = [v7 countByEnumeratingWithState:&v21 objects:v28 count:16];
    if (v8)
    {
      v9 = *v22;
      v10 = 0.0;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v22 != v9)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v21 + 1) + 8 * i);
          memset(&v20, 0, sizeof(v20));
          CMTimeRangeMakeFromDictionary(&v20, v12);
          rhs = v20.duration;
          v10 = CMTimeGetSeconds(&rhs) + v10;
        }

        v8 = [v7 countByEnumeratingWithState:&v21 objects:v28 count:16];
      }

      while (v8);
    }

    else
    {
      v10 = 0.0;
    }

    v14 = (Seconds - v10) / Seconds;
    if (v14 < 1.0)
    {
      v15 = (Seconds - v10) / Seconds;
    }

    else
    {
      v15 = 1.0;
    }

    if (v14 <= 0.0)
    {
      v16 = 0.0;
    }

    else
    {
      v16 = v15;
    }

    v17 = expf((v16 * v16) * -4.0);
    if (v17 < 1.0)
    {
      v18 = v17;
    }

    else
    {
      v18 = 1.0;
    }

    if (v17 <= 0.0)
    {
      v13 = 0.0;
    }

    else
    {
      v13 = v18;
    }
  }

  return v13;
}

- (float)assetCameraMotionScoreFromAnalysis:(id)a3
{
  v53 = *MEMORY[0x1E69E9840];
  v33 = [a3 objectForKey:@"metadataRanges"];
  v49 = 0u;
  v50 = 0u;
  v47 = 0u;
  v48 = 0u;
  obj = [v33 objectForKey:@"QualityResults"];
  v3 = [obj countByEnumeratingWithState:&v47 objects:v52 count:16];
  if (v3)
  {
    v34 = v3;
    v32 = *v48;
    v4 = 0.0;
    v5 = 0.0;
    v6 = 0.0;
    do
    {
      for (i = 0; i != v34; ++i)
      {
        if (*v48 != v32)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v47 + 1) + 8 * i);
        memset(&v46, 0, sizeof(v46));
        CMTimeRangeMakeFromDictionary(&v46, v7);
        memset(&v45, 0, sizeof(v45));
        range = v46;
        CMTimeRangeGetEnd(&v45, &range);
        v40 = 0u;
        v41 = 0u;
        v42 = 0u;
        v43 = 0u;
        v36 = [v33 objectForKey:@"CameraMotionResults"];
        v8 = [v36 countByEnumeratingWithState:&v40 objects:v51 count:16];
        if (v8)
        {
          v9 = *v41;
LABEL_8:
          v10 = 0;
          while (1)
          {
            if (*v41 != v9)
            {
              objc_enumerationMutation(v36);
            }

            v11 = *(*(&v40 + 1) + 8 * v10);
            memset(&range, 0, sizeof(range));
            CMTimeRangeMakeFromDictionary(&range, v11);
            *&time1.start.value = *&range.start.value;
            time1.start.epoch = range.start.epoch;
            time2.start = v45;
            if ((CMTimeCompare(&time1.start, &time2.start) & 0x80000000) == 0)
            {
              break;
            }

            time2 = range;
            memset(&time1, 0, sizeof(time1));
            otherRange = v46;
            CMTimeRangeGetIntersection(&time1, &time2, &otherRange);
            if ((time1.start.flags & 1) == 0 || (time1.duration.flags & 1) == 0 || time1.duration.epoch || time1.duration.value < 0 || (time2.start = time1.duration, *&otherRange.start.value = *MEMORY[0x1E6960CC0], otherRange.start.epoch = *(MEMORY[0x1E6960CC0] + 16), CMTimeCompare(&time2.start, &otherRange.start)))
            {
              v12 = [(__CFDictionary *)v11 objectForKey:@"flags"];
              v13 = [v12 intValue];
              v14 = v13 & 0x3FFC0;
              v15 = __clz(__rbit32(v13 & 0x2FFC0));
              if (v16 | ((v13 & 0x2FFC0) == 0))
              {
                v17 = 0;
              }

              else
              {
                v17 = v15;
              }

              time2.start = time1.duration;
              Seconds = CMTimeGetSeconds(&time2.start);
              v19 = [(__CFDictionary *)v7 objectForKey:@"quality"];
              [v19 floatValue];
              v21 = v20;

              if ((v14 & 0x10000) != 0 || (v17 - 7 >= 4 ? (v22 = v17 == 12) : (v22 = 1), !v22 || ((v23 = Seconds, (v21 + 0.2) < 1.0) ? (v24 = v21 + 0.2) : (v24 = 1.0), (v21 + 0.2) <= 0.0 ? (v25 = 0.0) : (v25 = v24), v6 = v6 + (v23 * v25), v5 = v5 + v23, v4 >= v23)))
              {
                v23 = v4;
              }

              v4 = v23;
            }

            if (v8 == ++v10)
            {
              v8 = [v36 countByEnumeratingWithState:&v40 objects:v51 count:16];
              if (v8)
              {
                goto LABEL_8;
              }

              break;
            }
          }
        }
      }

      v34 = [obj countByEnumeratingWithState:&v47 objects:v52 count:16];
    }

    while (v34);
    v26 = v4 >= 0.5;
  }

  else
  {
    v26 = 0;
    v5 = 0.0;
    v6 = 0.0;
  }

  v27 = v6 / v5;
  if (!v26 || v5 == 0.0)
  {
    v27 = 0.0;
  }

  v28 = 1.0;
  if (v27 < 1.0)
  {
    v28 = v27;
  }

  if (v27 <= 0.0)
  {
    v29 = 0.0;
  }

  else
  {
    v29 = v28;
  }

  return v29;
}

- (BOOL)hasMeaningfulSceneSegment:(id)a3 withFpsRate:(float)a4
{
  v26 = *MEMORY[0x1E69E9840];
  v5 = [a3 objectForKey:@"metadataRanges"];
  v6 = [v5 objectForKey:@"SceneResults"];

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v7 = v6;
  v8 = [v7 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v8)
  {
    v9 = *v22;
    v10 = a4;
    while (2)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v22 != v9)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v21 + 1) + 8 * i);
        memset(&v20, 0, sizeof(v20));
        CMTimeRangeMakeFromDictionary(&v20, v12);
        v13 = [(__CFDictionary *)v12 objectForKeyedSubscript:@"quality"];
        [v13 floatValue];
        v15 = v14;

        duration = v20.duration;
        Seconds = CMTimeGetSeconds(&duration);
        if (v15 >= 0.3)
        {
          Seconds = Seconds / v10;
          *&Seconds = Seconds;
          if (*&Seconds >= 3.0)
          {
            v17 = 1;
            goto LABEL_12;
          }
        }
      }

      v8 = [v7 countByEnumeratingWithState:&v21 objects:v25 count:{16, Seconds}];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  v17 = 0;
LABEL_12:

  return v17;
}

- (float)assetJunkScoreFromAnalysis:(id)a3
{
  v28 = *MEMORY[0x1E69E9840];
  v3 = [a3 objectForKey:@"metadataRanges"];
  v4 = [v3 objectForKey:@"InterestingnessResults"];

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v5 = v4;
  v6 = [v5 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (!v6)
  {

LABEL_13:
    v17 = 1.0;
    goto LABEL_14;
  }

  v7 = *v24;
  v8 = 0.0;
  v9 = 0.0;
  do
  {
    for (i = 0; i != v6; ++i)
    {
      if (*v24 != v7)
      {
        objc_enumerationMutation(v5);
      }

      v11 = *(*(&v23 + 1) + 8 * i);
      memset(&v22, 0, sizeof(v22));
      CMTimeRangeMakeFromDictionary(&v22, v11);
      duration = v22.duration;
      Seconds = CMTimeGetSeconds(&duration);
      v13 = [(__CFDictionary *)v11 objectForKey:@"quality"];
      [v13 floatValue];
      v15 = v14;

      v16 = Seconds;
      v9 = v9 + (v15 * v16);
      v8 = v8 + v16;
    }

    v6 = [v5 countByEnumeratingWithState:&v23 objects:v27 count:16];
  }

  while (v6);

  if (v8 == 0.0)
  {
    goto LABEL_13;
  }

  v17 = ((v9 / v8) * (erff((v8 * 3.0) + -2.0) + 1.0)) * 0.5;
  if (v17 >= *&[VCPVideoGlobalAnalyzer assetJunkScoreFromAnalysis:]::kThreshold[4 * (v8 > 2.0)])
  {
    v17 = 1.0;
  }

LABEL_14:
  v18 = 1.0;
  if (v17 < 1.0)
  {
    v18 = v17;
  }

  if (v17 <= 0.0)
  {
    v19 = 0.0;
  }

  else
  {
    v19 = v18;
  }

  return v19;
}

- (float)scaleForTimeRange:(id *)a3 basedOnFace:(id)a4
{
  v40 = *MEMORY[0x1E69E9840];
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v5 = a4;
  v6 = [v5 countByEnumeratingWithState:&v35 objects:v39 count:16];
  if (v6)
  {
    v7 = *v36;
    v8 = 0.0;
    v9 = MEMORY[0x1E6960CC0];
    do
    {
      v10 = 0;
      do
      {
        if (*v36 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v11 = *(*(&v35 + 1) + 8 * v10);
        memset(&v34, 0, sizeof(v34));
        CMTimeRangeMakeFromDictionary(&v34, v11);
        range = v34;
        v12 = *&a3->var0.var3;
        *&otherRange.start.value = *&a3->var0.var0;
        *&otherRange.start.epoch = v12;
        *&otherRange.duration.timescale = *&a3->var1.var1;
        CMTimeRangeGetIntersection(&v33, &range, &otherRange);
        if ((v33.start.flags & 1) == 0 || (range = v34, v13 = *&a3->var0.var3, *&otherRange.start.value = *&a3->var0.var0, *&otherRange.start.epoch = v13, *&otherRange.duration.timescale = *&a3->var1.var1, CMTimeRangeGetIntersection(&v30, &range, &otherRange), (v30.duration.flags & 1) == 0) || (range = v34, v14 = *&a3->var0.var3, *&otherRange.start.value = *&a3->var0.var0, *&otherRange.start.epoch = v14, *&otherRange.duration.timescale = *&a3->var1.var1, CMTimeRangeGetIntersection(&v29, &range, &otherRange), v29.duration.epoch) || (range = v34, v20 = *&a3->var0.var3, *&otherRange.start.value = *&a3->var0.var0, *&otherRange.start.epoch = v20, *&otherRange.duration.timescale = *&a3->var1.var1, CMTimeRangeGetIntersection(&v28, &range, &otherRange), v28.duration.value < 0) || (range = v34, v21 = *&a3->var0.var3, *&otherRange.start.value = *&a3->var0.var0, *&otherRange.start.epoch = v21, *&otherRange.duration.timescale = *&a3->var1.var1, CMTimeRangeGetIntersection(&v27, &range, &otherRange), range.start = v27.duration, *&otherRange.start.value = *v9, otherRange.start.epoch = *(v9 + 16), CMTimeCompare(&range.start, &otherRange.start)))
        {
          v15 = [(__CFDictionary *)v11 objectForKey:@"attributes"];
          v16 = [v15 objectForKey:@"faceBounds"];
          v41 = NSRectFromString(v16);
          width = v41.size.width;
          height = v41.size.height;

          v19 = width * height;
          if (v8 < v19)
          {
            v8 = width * height;
          }
        }

        ++v10;
      }

      while (v6 != v10);
      v22 = [v5 countByEnumeratingWithState:&v35 objects:v39 count:16];
      v6 = v22;
    }

    while (v22);

    v23 = 1.0;
    if (v8 > 0.05)
    {
      v24 = 1.0;
      v25 = 1.0 - sqrtf(v8);
      if (v25 < 1.0)
      {
        v24 = v25;
      }

      if (v25 <= 0.0)
      {
        v23 = 0.0;
      }

      else
      {
        v23 = v24;
      }
    }
  }

  else
  {

    v23 = 1.0;
  }

  return v23;
}

- (float)subjectActivityInTimeRange:(id *)a3 fromResults:(id)a4
{
  v54 = *MEMORY[0x1E69E9840];
  v39 = a4;
  v6 = [v39 objectForKey:@"FaceResults"];
  v7 = [v39 objectForKey:@"FineSubjectMotionResults"];
  v8 = [v7 count];

  if (v8)
  {
    v50 = 0uLL;
    v51 = 0uLL;
    v48 = 0uLL;
    v49 = 0uLL;
    v9 = [v39 objectForKey:@"FineSubjectMotionResults"];
    v10 = [v9 countByEnumeratingWithState:&v48 objects:v53 count:16];
    if (v10)
    {
      v11 = *v49;
      v12 = 0.0;
      v13 = 0.0;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v49 != v11)
          {
            objc_enumerationMutation(v9);
          }

          v15 = *(*(&v48 + 1) + 8 * i);
          memset(&v47, 0, sizeof(v47));
          CMTimeRangeMakeFromDictionary(&v47, v15);
          v16 = *&a3->var0.var3;
          *&range.start.value = *&a3->var0.var0;
          *&range.start.epoch = v16;
          *&range.duration.timescale = *&a3->var1.var1;
          memset(&v46, 0, sizeof(v46));
          otherRange = v47;
          CMTimeRangeGetIntersection(&v46, &range, &otherRange);
          if ((v46.start.flags & 1) != 0 && (v46.duration.flags & 1) != 0 && !v46.duration.epoch && (v46.duration.value & 0x8000000000000000) == 0)
          {
            range.start = v46.duration;
            *&otherRange.start.value = *MEMORY[0x1E6960CC0];
            otherRange.start.epoch = *(MEMORY[0x1E6960CC0] + 16);
            if (!CMTimeCompare(&range.start, &otherRange.start))
            {
              continue;
            }
          }

          v17 = [(__CFDictionary *)v15 objectForKey:@"quality"];
          [v17 floatValue];
          v19 = v18;

          if ([v6 count])
          {
            range = v46;
            [(VCPVideoGlobalAnalyzer *)self scaleForTimeRange:&range basedOnFace:v6];
            v21 = v20;
          }

          else
          {
            v21 = 1.0;
          }

          range.start = v46.duration;
          Seconds = CMTimeGetSeconds(&range.start);
          v12 = v12 + ((v19 * v21) * Seconds);
          v13 = v13 + Seconds;
        }

        v10 = [v9 countByEnumeratingWithState:&v48 objects:v53 count:16];
      }

      while (v10);
      goto LABEL_40;
    }

LABEL_39:
    v12 = 0.0;
    v13 = 0.0;
    goto LABEL_40;
  }

  v42 = 0uLL;
  v43 = 0uLL;
  v40 = 0uLL;
  v41 = 0uLL;
  v9 = [v39 objectForKey:@"SubjectMotionResults"];
  v23 = [v9 countByEnumeratingWithState:&v40 objects:v52 count:16];
  if (!v23)
  {
    goto LABEL_39;
  }

  v24 = *v41;
  v12 = 0.0;
  v13 = 0.0;
  do
  {
    for (j = 0; j != v23; ++j)
    {
      if (*v41 != v24)
      {
        objc_enumerationMutation(v9);
      }

      v26 = *(*(&v40 + 1) + 8 * j);
      memset(&v47, 0, sizeof(v47));
      CMTimeRangeMakeFromDictionary(&v47, v26);
      v27 = *&a3->var0.var3;
      *&range.start.value = *&a3->var0.var0;
      *&range.start.epoch = v27;
      *&range.duration.timescale = *&a3->var1.var1;
      memset(&v46, 0, sizeof(v46));
      otherRange = v47;
      CMTimeRangeGetIntersection(&v46, &range, &otherRange);
      if ((v46.start.flags & 1) != 0 && (v46.duration.flags & 1) != 0 && !v46.duration.epoch && (v46.duration.value & 0x8000000000000000) == 0)
      {
        range.start = v46.duration;
        *&otherRange.start.value = *MEMORY[0x1E6960CC0];
        otherRange.start.epoch = *(MEMORY[0x1E6960CC0] + 16);
        if (!CMTimeCompare(&range.start, &otherRange.start))
        {
          continue;
        }
      }

      v28 = [(__CFDictionary *)v26 objectForKey:@"flags"];
      if (([v28 unsignedIntegerValue] & 0x20000) != 0)
      {
        v29 = 0.5;
      }

      else
      {
        v29 = 0.0;
      }

      if ([v6 count])
      {
        range = v46;
        [(VCPVideoGlobalAnalyzer *)self scaleForTimeRange:&range basedOnFace:v6];
        v31 = v30;
      }

      else
      {
        v31 = 1.0;
      }

      range.start = v46.duration;
      v32 = CMTimeGetSeconds(&range.start);
      v12 = v12 + ((v29 * v31) * v32);
      v13 = v13 + v32;
    }

    v23 = [v9 countByEnumeratingWithState:&v40 objects:v52 count:16];
  }

  while (v23);
LABEL_40:

  v33 = v12 / v13;
  if (v13 == 0.0)
  {
    v33 = v12;
  }

  v34 = expf((v33 * v33) / -0.15);
  v35 = 1.0;
  v36 = 1.0 - v34;
  if (v36 < 1.0)
  {
    v35 = v36;
  }

  if (v36 <= 0.0)
  {
    v37 = 0.0;
  }

  else
  {
    v37 = v35;
  }

  return v37;
}

- (float)cameraActivityfromQuality:(float)a3
{
  v3 = (a3 + -1.0) * -1.25;
  v4 = 1.0;
  if (v3 < 1.0)
  {
    v4 = v3;
  }

  v5 = v3 > 0.0;
  result = 0.0;
  if (v5)
  {
    return v4;
  }

  return result;
}

- (BOOL)isJunkTimeRange:(id *)a3 basedOnResults:(id)a4
{
  v25 = *MEMORY[0x1E69E9840];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v5 = [a4 objectForKey:@"InterestingnessResults"];
  v6 = [v5 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v6)
  {
    v7 = *v21;
    v8 = 0.0;
    v9 = MEMORY[0x1E6960CC0];
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v21 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v11 = *(*(&v20 + 1) + 8 * i);
        memset(&v19, 0, sizeof(v19));
        CMTimeRangeMakeFromDictionary(&v19, v11);
        v12 = *&a3->var0.var3;
        *&range.start.value = *&a3->var0.var0;
        *&range.start.epoch = v12;
        *&range.duration.timescale = *&a3->var1.var1;
        memset(&v18, 0, sizeof(v18));
        v16 = v19;
        CMTimeRangeGetIntersection(&v18, &range, &v16);
        if ((v18.start.flags & 1) != 0 && (v18.duration.flags & 1) != 0 && !v18.duration.epoch && (v18.duration.value & 0x8000000000000000) == 0)
        {
          range.start = v18.duration;
          *&v16.start.value = *v9;
          v16.start.epoch = *(v9 + 16);
          if (!CMTimeCompare(&range.start, &v16.start))
          {
            continue;
          }
        }

        [(__CFDictionary *)v11 vcp_quality];
        if (v13 < 0.342999995)
        {
          range.start = v18.duration;
          v8 = CMTimeGetSeconds(&range.start) + v8;
        }
      }

      v6 = [v5 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v6);
    v14 = v8;
  }

  else
  {
    v14 = 0.0;
  }

  *&v19.start.value = *&a3->var1.var0;
  v19.start.epoch = a3->var1.var3;
  return v14 / CMTimeGetSeconds(&v19.start) > 0.300000012;
}

- (float)assetActivityLevelFromAnalysisResults:(id)a3
{
  v37 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v5 = [v4 objectForKey:@"QualityResults"];
  v6 = [v5 countByEnumeratingWithState:&v32 objects:v36 count:16];
  if (!v6)
  {

LABEL_28:
    v27 = 0.0;
    goto LABEL_29;
  }

  v7 = *v33;
  v8 = MEMORY[0x1E6960CC0];
  v9 = 0.0;
  v10 = 0.0;
  do
  {
    for (i = 0; i != v6; ++i)
    {
      if (*v33 != v7)
      {
        objc_enumerationMutation(v5);
      }

      v12 = *(*(&v32 + 1) + 8 * i);
      memset(&v31, 0, sizeof(v31));
      CMTimeRangeMakeFromDictionary(&v31, v12);
      [(__CFDictionary *)v12 vcp_quality];
      v14 = v13;
      if ((v31.start.flags & 1) != 0 && (v31.duration.flags & 1) != 0 && !v31.duration.epoch && (v31.duration.value & 0x8000000000000000) == 0)
      {
        v29.start = v31.duration;
        time2 = *v8;
        if (!CMTimeCompare(&v29.start, &time2))
        {
          continue;
        }
      }

      if (v14 >= 0.200000003)
      {
        v29 = v31;
        if (![(VCPVideoGlobalAnalyzer *)self isJunkTimeRange:&v29 basedOnResults:v4])
        {
          v29 = v31;
          [(VCPVideoGlobalAnalyzer *)self subjectActivityInTimeRange:&v29 fromResults:v4];
          v16 = v15;
          *&v17 = v14;
          [(VCPVideoGlobalAnalyzer *)self cameraActivityfromQuality:v17];
          v19 = v18;
          v29.start = v31.duration;
          Seconds = CMTimeGetSeconds(&v29.start);
          v21 = (v19 * 0.4) + (v16 * 0.6);
          if (v21 < 1.0)
          {
            v22 = (v19 * 0.4) + (v16 * 0.6);
          }

          else
          {
            v22 = 1.0;
          }

          v23 = v21 > 0.0;
          v24 = 0.0;
          if (v23)
          {
            v24 = v22;
          }

          v25 = Seconds;
          v9 = v9 + (v24 * v25);
          v10 = v10 + v25;
        }
      }
    }

    v6 = [v5 countByEnumeratingWithState:&v32 objects:v36 count:16];
  }

  while (v6);

  if (v10 == 0.0)
  {
    goto LABEL_28;
  }

  v26 = 1.0;
  if ((v9 / v10) < 1.0)
  {
    v26 = v9 / v10;
  }

  if ((v9 / v10) <= 0.0)
  {
    v27 = 0.0;
  }

  else
  {
    v27 = v26;
  }

LABEL_29:

  return v27;
}

- (int)setActivityLevel:(id)a3
{
  v35 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [MEMORY[0x1E695DF70] array];
  v32 = 0.0;
  if (SocType() < 247)
  {
    [(VCPVideoGlobalAnalyzer *)self assetActivityLevelFromAnalysisResults:v4];
    v32 = v7;
    v8 = AddResultDictionary(0, 0, &v32, 0, 0, v5);
    if (!v8)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v6 = [v4 objectForKeyedSubscript:@"ActivityLevelResults"];
    if ([v6 count] <= 1)
    {

LABEL_18:
      v8 = 0;
      goto LABEL_19;
    }

    memset(&v31, 0, sizeof(v31));
    v9 = [v6 firstObject];
    CMTimeRangeMakeFromDictionary(&v31, v9);

    memset(&v30, 0, sizeof(v30));
    v10 = [v6 lastObject];
    CMTimeRangeMakeFromDictionary(&v30, v10);

    memset(&v29, 0, sizeof(v29));
    start = v31.start;
    range = v30;
    CMTimeRangeGetEnd(&v26, &range);
    range.start = v26;
    rhs = v31.start;
    CMTimeSubtract(&duration, &range.start, &rhs);
    CMTimeRangeMake(&v29, &start, &duration);
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v11 = v6;
    v12 = [v11 countByEnumeratingWithState:&v21 objects:v34 count:16];
    if (v12)
    {
      v13 = *v22;
      v14 = 0.0;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v22 != v13)
          {
            objc_enumerationMutation(v11);
          }

          v16 = *(*(&v21 + 1) + 8 * i);
          memset(&range, 0, sizeof(range));
          CMTimeRangeMakeFromDictionary(&range, v16);
          [(__CFDictionary *)v16 vcp_quality];
          v18 = v17;
          rhs = range.duration;
          Seconds = CMTimeGetSeconds(&rhs);
          *&Seconds = v32 + v18 * Seconds;
          v32 = *&Seconds;
          rhs = range.duration;
          v14 = CMTimeGetSeconds(&rhs) + v14;
        }

        v12 = [v11 countByEnumeratingWithState:&v21 objects:v34 count:16];
      }

      while (v12);

      if (v14 != 0.0)
      {
        v32 = v32 / v14;
      }
    }

    else
    {
    }

    v8 = AddResultDictionary(&v29.start, &v29.duration, &v32, 0, 0, v5);

    if (!v8)
    {
LABEL_17:
      [v4 setObject:v5 forKey:{@"ActivityLevelResults", v21}];
      goto LABEL_18;
    }
  }

LABEL_19:

  return v8;
}

@end