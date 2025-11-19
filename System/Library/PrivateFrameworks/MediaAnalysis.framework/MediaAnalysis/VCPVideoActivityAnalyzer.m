@interface VCPVideoActivityAnalyzer
- (VCPVideoActivityAnalyzer)init;
- (float)actionScoreInTimeRange:(id *)a3;
- (float)scaleBasedOnFaceForTimeRange:(id *)a3;
- (float)validationScoreOfTimeRange:(id *)a3 fromResult:(id)a4 startIdx:(int *)a5;
- (id)results;
- (int)analyzeFrame:(__CVBuffer *)a3 timestamp:(id *)a4 duration:(id *)a5 frameStats:(id)a6 flags:(unint64_t *)a7;
- (int)computeActivityScoreAtTime:(id *)a3;
- (int)extractRequiredClassificationInfoFrom:(id)a3 toArray:(id)a4;
- (int)extractRequiredFaceInfoFrom:(id)a3 toArray:(id)a4;
- (int)extractRequiredInfoFrom:(id)a3 toArray:(id)a4;
- (int)finishAnalysisPass:(id *)a3 fpsRate:(float)a4;
- (int)preProcessQualityResults:(id)a3 interestingnessResults:(id)a4 obstructionResults:(id)a5 classificationResults:(id)a6 fineActionResults:(id)a7 faceResults:(id)a8 sceneSwitchFrequency:(float)a9;
- (void)addSceneClassificationContributionToActivityLevel:(float *)a3;
- (void)addSceneSwitchFrequencyConstributionToActivityLevel:(float *)a3;
- (void)generateActivityDescriptor;
- (void)normalizeActivityDescriptor;
- (void)resetActivityStatsAtTime:(id *)a3;
- (void)validateActivityScores;
@end

@implementation VCPVideoActivityAnalyzer

- (VCPVideoActivityAnalyzer)init
{
  v47.receiver = self;
  v47.super_class = VCPVideoActivityAnalyzer;
  v2 = [(VCPVideoActivityAnalyzer *)&v47 init];
  v3 = v2;
  if (v2)
  {
    v46 = +[VCPCNNMetalContext supportGPU];
    v4 = objc_alloc_init(VCPVideoActivityDescriptor);
    v5 = *(v2 + 1);
    *(v2 + 1) = v4;

    v6 = [MEMORY[0x1E695DF70] array];
    v7 = *(v2 + 2);
    *(v2 + 2) = v6;

    v8 = [MEMORY[0x1E695DF70] array];
    v9 = *(v2 + 3);
    *(v2 + 3) = v8;

    v10 = [MEMORY[0x1E695DF70] array];
    v11 = *(v2 + 4);
    *(v2 + 4) = v10;

    v12 = [MEMORY[0x1E695DF70] array];
    v13 = *(v2 + 5);
    *(v2 + 5) = v12;

    v14 = [MEMORY[0x1E695DF70] array];
    v15 = *(v2 + 6);
    *(v2 + 6) = v14;

    v16 = [MEMORY[0x1E695DF70] array];
    v17 = *(v2 + 7);
    *(v2 + 7) = v16;

    v18 = [MEMORY[0x1E695DF70] array];
    v19 = *(v2 + 8);
    *(v2 + 8) = v18;

    v20 = [MEMORY[0x1E695DF70] array];
    v21 = *(v2 + 9);
    *(v2 + 9) = v20;

    v22 = [MEMORY[0x1E695DF70] array];
    v23 = *(v2 + 10);
    *(v2 + 10) = v22;

    *(v2 + 22) = 0;
    *(v2 + 12) = 0;
    v24 = *(MEMORY[0x1E6960CC0] + 16);
    *(v2 + 104) = *MEMORY[0x1E6960CC0];
    *(v2 + 15) = v24;
    *(v2 + 32) = 0;
    v25 = [MEMORY[0x1E69C0858] vcp_sharedTaxonomy];
    v26 = [v25 mad_extendedSceneIdFromSceneName:@"sport"];
    v27 = *(v2 + 19);
    *(v2 + 19) = v26;

    v3 = *(v2 + 1);
    if (v3)
    {
      v3 = *(v2 + 2);
      if (v3)
      {
        v3 = *(v2 + 3);
        if (v3)
        {
          v3 = *(v2 + 4);
          if (v3)
          {
            v3 = *(v2 + 5);
            if (v3)
            {
              v3 = *(v2 + 6);
              if (v3)
              {
                v3 = *(v2 + 7);
                if (v3)
                {
                  v3 = *(v2 + 8);
                  if (v3)
                  {
                    v3 = *(v2 + 9);
                    if (v3)
                    {
                      v3 = *(v2 + 10);
                      if (v3)
                      {
                        v28 = [[VCPCNNModel alloc] initWithParameters:1 useGPU:v46];
                        v29 = *(v2 + 17);
                        *(v2 + 17) = v28;

                        v30 = *(v2 + 17);
                        if (v30)
                        {
                          v31 = [v30 getGPUContext];
                          v32 = [VCPCNNData cnnDataWithPlane:1 height:10 width:1 context:v31];
                          v33 = *(v2 + 18);
                          *(v2 + 18) = v32;

                          [*(v2 + 18) allocBuffers:1];
                          v34 = [VCPCNNFullConnectionBlock fcBlockWithNumNeurons:16 NeuronType:1];
                          if (![*(v2 + 17) add:v34])
                          {
                            v35 = [VCPCNNFullConnectionBlock fcBlockWithNumNeurons:8 NeuronType:1];
                            if (![*(v2 + 17) add:v35])
                            {
                              v36 = [VCPCNNFullConnectionBlock fcBlockWithNumNeurons:4 NeuronType:1];
                              if (![*(v2 + 17) add:v36])
                              {
                                v37 = [VCPCNNFullConnectionBlock fcBlockWithNumNeurons:3 NeuronType:0];
                                if (![*(v2 + 17) add:v37])
                                {
                                  v40 = [MEMORY[0x1E696AAE8] vcp_mediaAnalysisBundle];
                                  v41 = [v40 resourceURL];

                                  v42 = v41;
                                  v43 = [MEMORY[0x1E695DFF8] URLWithString:@"cnn_activitylevel.dat" relativeToURL:v41];
                                  v44 = *(v2 + 17);
                                  v45 = [*(v2 + 18) size];
                                  LODWORD(v44) = [v44 prepareNetworkFromURL:v43 withInputSize:v45];

                                  if (!v44)
                                  {
                                    v3 = v2;
                                    goto LABEL_22;
                                  }

                                  goto LABEL_21;
                                }
                              }
                            }
                          }
                        }

LABEL_21:
                        v3 = 0;
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

LABEL_22:
  v38 = v3;

  return v38;
}

- (void)generateActivityDescriptor
{
  if (self->_numOfFrames < 1)
  {
    activityDescriptor = self->_activityDescriptor;

    [(VCPVideoActivityDescriptor *)activityDescriptor reset];
  }

  else
  {
    for (i = 0; i != 10; ++i)
    {
      numOfFrames = self->_numOfFrames;
      v5 = [(VCPVideoActivityDescriptor *)self->_activityDescriptor descriptors];
      v5[i] = v5[i] / numOfFrames;
    }

    [(VCPVideoActivityAnalyzer *)self normalizeActivityDescriptor];
  }
}

- (void)normalizeActivityDescriptor
{
  for (i = 0; i != 10; ++i)
  {
    v4 = ([(VCPVideoActivityDescriptor *)self->_activityDescriptor descriptors][i * 4] - *&[VCPVideoActivityAnalyzer normalizeActivityDescriptor]::kCenter[i]) / *&[VCPVideoActivityAnalyzer normalizeActivityDescriptor]::kScaler[i];
    [(VCPVideoActivityDescriptor *)self->_activityDescriptor descriptors][i * 4] = v4;
  }
}

- (void)resetActivityStatsAtTime:(id *)a3
{
  var3 = a3->var3;
  *&self->_lastProcessTime.value = *&a3->var0;
  self->_lastProcessTime.epoch = var3;
  self->_numOfFrames = 0;
  [(VCPVideoActivityDescriptor *)self->_activityDescriptor reset];
}

- (int)computeActivityScoreAtTime:(id *)a3
{
  p_lastProcessTime = &self->_lastProcessTime;
  time1.start = *a3;
  v22.start = self->_lastProcessTime;
  if (CMTimeCompare(&time1.start, &v22.start) < 0)
  {
    return -50;
  }

  for (i = 0; i != 40; i += 4)
  {
    v7 = [(VCPVideoActivityDescriptor *)self->_activityDescriptor descriptors][i];
    *([(VCPCNNData *)self->_input data]+ i) = v7;
  }

  v8 = [(VCPCNNModel *)self->_model forward:self->_input];
  if (!v8)
  {
    v9 = [(VCPCNNModel *)self->_model output];
    v8 = [v9 softmax];

    if (!v8)
    {
      v10 = 0;
      v11 = 0.0;
      do
      {
        v12 = [(VCPCNNModel *)self->_model output];
        v11 = v11 + *([v12 data] + v10);

        v10 += 4;
      }

      while (v10 != 12);
      v13 = 0.0;
      if (v11 != 0.0)
      {
        for (j = 0; j != 3; ++j)
        {
          v15 = [(VCPCNNModel *)self->_model output];
          v13 = v13 + ((*([v15 data] + j * 4) * *&-[VCPVideoActivityAnalyzer computeActivityScoreAtTime:]::kClassScore[j]) / v11);
        }
      }

      memset(&time1, 0, sizeof(time1));
      v16 = 1.0;
      if (v13 < 1.0)
      {
        v16 = v13;
      }

      if (v13 <= 0.0)
      {
        v17 = 0.0;
      }

      else
      {
        v17 = v16;
      }

      start = *p_lastProcessTime;
      *&v22.start.value = *&a3->var0;
      v22.start.epoch = a3->var3;
      rhs = *p_lastProcessTime;
      CMTimeSubtract(&duration, &v22.start, &rhs);
      CMTimeRangeMake(&time1, &start, &duration);
      activityScores = self->_activityScores;
      v19 = [VCPCompactResult alloc];
      v22 = time1;
      v20 = [(VCPCompactResult *)v19 initWithTimerange:&v22 andScore:COERCE_DOUBLE(__PAIR64__(time1.duration.flags, LODWORD(v17)))];
      [(NSMutableArray *)activityScores addObject:v20];

      return 0;
    }
  }

  return v8;
}

- (int)analyzeFrame:(__CVBuffer *)a3 timestamp:(id *)a4 duration:(id *)a5 frameStats:(id)a6 flags:(unint64_t *)a7
{
  v23 = *MEMORY[0x1E69E9840];
  v9 = a6;
  v10 = v9;
  if (!v9)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
    {
      v17 = objc_opt_class();
      [VCPVideoActivityAnalyzer analyzeFrame:v17 timestamp:&lhs duration:? frameStats:? flags:?];
    }

    goto LABEL_13;
  }

  v11 = [v9 videoActivityDescriptor];

  if (!v11)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
    {
      v18 = objc_opt_class();
      [VCPVideoActivityAnalyzer analyzeFrame:v18 timestamp:&lhs duration:? frameStats:? flags:?];
    }

LABEL_13:
    v16 = -18;
    goto LABEL_14;
  }

  for (i = 0; i != 10; ++i)
  {
    v13 = [v10 videoActivityDescriptor];
    v14 = *([v13 descriptors] + i * 4);
    v15 = [(VCPVideoActivityDescriptor *)self->_activityDescriptor descriptors];
    v15[i] = v14 + v15[i];
  }

  ++self->_numOfFrames;
  lhs = *a4;
  rhs = self->_lastProcessTime;
  CMTimeSubtract(&time, &lhs, &rhs);
  if (CMTimeGetSeconds(&time) < 1.0)
  {
    goto LABEL_8;
  }

  [(VCPVideoActivityAnalyzer *)self generateActivityDescriptor];
  lhs = *a4;
  v16 = [(VCPVideoActivityAnalyzer *)self computeActivityScoreAtTime:&lhs];
  if (!v16)
  {
    lhs = *a4;
    [(VCPVideoActivityAnalyzer *)self resetActivityStatsAtTime:&lhs];
LABEL_8:
    v16 = 0;
  }

LABEL_14:

  return v16;
}

- (int)preProcessQualityResults:(id)a3 interestingnessResults:(id)a4 obstructionResults:(id)a5 classificationResults:(id)a6 fineActionResults:(id)a7 faceResults:(id)a8 sceneSwitchFrequency:(float)a9
{
  v16 = a4;
  v17 = a5;
  v18 = a6;
  v19 = a7;
  v20 = a8;
  v21 = [(VCPVideoActivityAnalyzer *)self extractRequiredInfoFrom:a3 toArray:self->_qualityResults];
  if (!v21)
  {
    v21 = [(VCPVideoActivityAnalyzer *)self extractRequiredInfoFrom:v16 toArray:self->_interestingnessResults];
    if (!v21)
    {
      v21 = [(VCPVideoActivityAnalyzer *)self extractRequiredInfoFrom:v17 toArray:self->_obstructionResults];
      if (!v21)
      {
        v21 = [(VCPVideoActivityAnalyzer *)self extractRequiredClassificationInfoFrom:v18 toArray:self->_classificationResults];
        if (!v21)
        {
          v21 = [(VCPVideoActivityAnalyzer *)self extractRequiredInfoFrom:v19 toArray:self->_fineActionResults];
          if (!v21)
          {
            v21 = [(VCPVideoActivityAnalyzer *)self extractRequiredFaceInfoFrom:v20 toArray:self->_faceResults];
            if (!v21)
            {
              self->_sceneSwitchFrequency = a9;
            }
          }
        }
      }
    }
  }

  return v21;
}

- (int)extractRequiredInfoFrom:(id)a3 toArray:(id)a4
{
  v26 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v7 = v5;
  v8 = [v7 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v8)
  {
    v9 = *v22;
    while (2)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v22 != v9)
        {
          objc_enumerationMutation(v7);
        }

        v11 = *(*(&v21 + 1) + 8 * i);
        memset(&v20, 0, sizeof(v20));
        CMTimeRangeMakeFromDictionary(&v20, v11);
        v12 = [(__CFDictionary *)v11 objectForKeyedSubscript:@"quality"];
        [v12 floatValue];
        v14 = v13;

        v15 = [VCPCompactResult alloc];
        v19 = v20;
        v16 = [(VCPCompactResult *)v15 initWithTimerange:&v19 andScore:COERCE_DOUBLE(__PAIR64__(v20.duration.flags, v14))];
        if (!v16)
        {
          v17 = -50;
          goto LABEL_11;
        }

        [v6 addObject:v16];
      }

      v8 = [v7 countByEnumeratingWithState:&v21 objects:v25 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  v17 = 0;
LABEL_11:

  return v17;
}

- (int)extractRequiredFaceInfoFrom:(id)a3 toArray:(id)a4
{
  v28 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v7 = v5;
  v8 = [v7 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v8)
  {
    v9 = *v24;
    while (2)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v24 != v9)
        {
          objc_enumerationMutation(v7);
        }

        v11 = *(*(&v23 + 1) + 8 * i);
        memset(&v22, 0, sizeof(v22));
        CMTimeRangeMakeFromDictionary(&v22, v11);
        v12 = [(__CFDictionary *)v11 objectForKeyedSubscript:@"attributes"];
        v13 = [v12 objectForKeyedSubscript:@"faceBounds"];
        v29 = NSRectFromString(v13);
        width = v29.size.width;
        height = v29.size.height;

        v16 = [VCPCompactResult alloc];
        v17 = width * height;
        *&v17 = width * height;
        v21 = v22;
        v18 = [(VCPCompactResult *)v16 initWithTimerange:&v21 andScore:v17];
        if (!v18)
        {

          v19 = -50;
          goto LABEL_11;
        }

        [v6 addObject:v18];
      }

      v8 = [v7 countByEnumeratingWithState:&v23 objects:v27 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  v19 = 0;
LABEL_11:

  return v19;
}

- (int)extractRequiredClassificationInfoFrom:(id)a3 toArray:(id)a4
{
  v30 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v21 = v6;
  if (self->_sportsSceneId)
  {
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    obj = v6;
    v8 = [obj countByEnumeratingWithState:&v25 objects:v29 count:{16, v6}];
    if (v8)
    {
      v9 = *v26;
      while (2)
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v26 != v9)
          {
            objc_enumerationMutation(obj);
          }

          v11 = *(*(&v25 + 1) + 8 * i);
          memset(&v24, 0, sizeof(v24));
          CMTimeRangeMakeFromDictionary(&v24, v11);
          v12 = [(__CFDictionary *)v11 objectForKeyedSubscript:@"attributes"];
          v13 = [(NSNumber *)self->_sportsSceneId stringValue];
          v14 = [v12 objectForKeyedSubscript:v13];

          if (v14)
          {
            [v14 floatValue];
            v16 = v15;
            v17 = [VCPCompactResult alloc];
            v23 = v24;
            v18 = [(VCPCompactResult *)v17 initWithTimerange:&v23 andScore:COERCE_DOUBLE(__PAIR64__(v24.duration.flags, v16))];
            if (!v18)
            {

              v19 = -50;
              goto LABEL_15;
            }

            [v7 addObject:v18];
          }
        }

        v8 = [obj countByEnumeratingWithState:&v25 objects:v29 count:16];
        if (v8)
        {
          continue;
        }

        break;
      }
    }

    v19 = 0;
LABEL_15:
  }

  else
  {
    v19 = 0;
  }

  return v19;
}

- (float)validationScoreOfTimeRange:(id *)a3 fromResult:(id)a4 startIdx:(int *)a5
{
  v7 = a4;
  v8 = *a5;
  memset(&v27, 0, sizeof(v27));
  v9 = *&a3->var0.var3;
  *&range.start.value = *&a3->var0.var0;
  *&range.start.epoch = v9;
  *&range.duration.timescale = *&a3->var1.var1;
  CMTimeRangeGetEnd(&v27, &range);
  v10 = v8;
  v11 = 0.0;
  v12 = MEMORY[0x1E6960CC0];
  v13 = 0.0;
  while ([v7 count] > v10)
  {
    memset(&range, 0, sizeof(range));
    v14 = [v7 objectAtIndexedSubscript:v10];
    v15 = v14;
    if (v14)
    {
      [v14 timerange];
    }

    else
    {
      memset(&range, 0, sizeof(range));
    }

    *&time1.start.value = *&range.start.value;
    time1.start.epoch = range.start.epoch;
    time2.start = v27;
    if (CMTimeCompare(&time1.start, &time2.start) >= 1)
    {
      break;
    }

    v16 = *&a3->var0.var3;
    *&time2.start.value = *&a3->var0.var0;
    *&time2.start.epoch = v16;
    *&time2.duration.timescale = *&a3->var1.var1;
    memset(&time1, 0, sizeof(time1));
    v23 = range;
    CMTimeRangeGetIntersection(&time1, &time2, &v23);
    if ((time1.start.flags & 1) == 0 || (time1.duration.flags & 1) == 0 || time1.duration.epoch || time1.duration.value < 0 || (time2.start = time1.duration, *&v23.start.value = *v12, v23.start.epoch = *(v12 + 16), CMTimeCompare(&time2.start, &v23.start)))
    {
      time2.start = time1.duration;
      Seconds = CMTimeGetSeconds(&time2.start);
      v18 = [v7 objectAtIndexedSubscript:v10];
      [v18 score];
      v20 = v19;
      *&Seconds = Seconds;

      v13 = v13 + (*&Seconds * v20);
      v11 = v11 + *&Seconds;
      v8 = v10;
    }

    ++v10;
  }

  *a5 = v8;
  if (v11 == 0.0)
  {
    v21 = 0.0;
  }

  else
  {
    v21 = v13 / v11;
  }

  return v21;
}

- (void)validateActivityScores
{
  v31 = *MEMORY[0x1E69E9840];
  v29 = 0;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  obj = self->_activityScores;
  v3 = [(NSMutableArray *)obj countByEnumeratingWithState:&v25 objects:v30 count:16];
  if (v3)
  {
    v4 = 0;
    v5 = *v26;
    v6 = &OBJC_IVAR___VCPMADImageCaptionResource__queue;
    v7 = &OBJC_IVAR___VCPMADImageCaptionResource__queue;
    v17 = *v26;
    do
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v26 != v5)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v25 + 1) + 8 * i);
        memset(&v24, 0, sizeof(v24));
        if (v9)
        {
          [v9 timerange];
        }

        memset(&v23, 0, sizeof(v23));
        range = v24;
        CMTimeRangeGetEnd(&v23, &range);
        range = v24;
        [(VCPVideoActivityAnalyzer *)self validationScoreOfTimeRange:&range fromResult:*(&self->super.super.isa + v6[547]) startIdx:&v29 + 4];
        if (v10 > 0.35)
        {
          range = v24;
          [(VCPVideoActivityAnalyzer *)self validationScoreOfTimeRange:&range fromResult:*(&self->super.super.isa + v7[548]) startIdx:&v29];
          if (v11 > 0.343)
          {
            v12 = v6;
            v13 = v4;
            v14 = 0.0;
            while ([(NSMutableArray *)self->_obstructionResults count]> v13)
            {
              memset(&range, 0, sizeof(range));
              v15 = [(NSMutableArray *)self->_obstructionResults objectAtIndexedSubscript:v13];
              v16 = v15;
              if (v15)
              {
                [v15 timerange];
              }

              else
              {
                memset(&range, 0, sizeof(range));
              }

              *&time1.start.value = *&range.start.value;
              time1.start.epoch = range.start.epoch;
              time2.start = v23;
              if (CMTimeCompare(&time1.start, &time2.start) >= 1)
              {
                break;
              }

              time2 = v24;
              memset(&time1, 0, sizeof(time1));
              otherRange = range;
              CMTimeRangeGetIntersection(&time1, &time2, &otherRange);
              time2.start = time1.duration;
              v4 = v13;
              v14 = CMTimeGetSeconds(&time2.start) + v14;
              ++v13;
            }

            if (v14 <= 0.2)
            {
              [(NSMutableArray *)self->_validActivityScores addObject:v9];
            }

            v6 = v12;
            v5 = v17;
            v7 = &OBJC_IVAR___VCPMADImageCaptionResource__queue;
          }
        }
      }

      v3 = [(NSMutableArray *)obj countByEnumeratingWithState:&v25 objects:v30 count:16];
    }

    while (v3);
  }
}

- (float)scaleBasedOnFaceForTimeRange:(id *)a3
{
  v32 = *MEMORY[0x1E69E9840];
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v4 = self->_faceResults;
  v5 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v27 objects:v31 count:16];
  if (v5)
  {
    v6 = *v28;
    v7 = 0.0;
    v8 = MEMORY[0x1E6960CC0];
    do
    {
      v9 = 0;
      do
      {
        if (*v28 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v10 = *(*(&v27 + 1) + 8 * v9);
        if (v10)
        {
          [*(*(&v27 + 1) + 8 * v9) timerange];
        }

        else
        {
          memset(&range, 0, sizeof(range));
        }

        v11 = *&a3->var0.var3;
        *&otherRange.start.value = *&a3->var0.var0;
        *&otherRange.start.epoch = v11;
        *&otherRange.duration.timescale = *&a3->var1.var1;
        CMTimeRangeGetIntersection(&v26, &range, &otherRange);
        if ((v26.start.flags & 1) == 0)
        {
          goto LABEL_18;
        }

        if (v10)
        {
          [v10 timerange];
        }

        else
        {
          memset(&range, 0, sizeof(range));
        }

        v12 = *&a3->var0.var3;
        *&otherRange.start.value = *&a3->var0.var0;
        *&otherRange.start.epoch = v12;
        *&otherRange.duration.timescale = *&a3->var1.var1;
        CMTimeRangeGetIntersection(&v23, &range, &otherRange);
        if ((v23.duration.flags & 1) == 0)
        {
          goto LABEL_18;
        }

        if (v10)
        {
          [v10 timerange];
        }

        else
        {
          memset(&range, 0, sizeof(range));
        }

        v13 = *&a3->var0.var3;
        *&otherRange.start.value = *&a3->var0.var0;
        *&otherRange.start.epoch = v13;
        *&otherRange.duration.timescale = *&a3->var1.var1;
        CMTimeRangeGetIntersection(&v22, &range, &otherRange);
        if (v22.duration.epoch)
        {
          goto LABEL_18;
        }

        if (v10)
        {
          [v10 timerange];
        }

        else
        {
          memset(&range, 0, sizeof(range));
        }

        v15 = *&a3->var0.var3;
        *&otherRange.start.value = *&a3->var0.var0;
        *&otherRange.start.epoch = v15;
        *&otherRange.duration.timescale = *&a3->var1.var1;
        CMTimeRangeGetIntersection(&v21, &range, &otherRange);
        if (v21.duration.value < 0)
        {
          goto LABEL_18;
        }

        if (v10)
        {
          [v10 timerange];
        }

        else
        {
          memset(&range, 0, sizeof(range));
        }

        v16 = *&a3->var0.var3;
        *&otherRange.start.value = *&a3->var0.var0;
        *&otherRange.start.epoch = v16;
        *&otherRange.duration.timescale = *&a3->var1.var1;
        CMTimeRangeGetIntersection(&v20, &range, &otherRange);
        range.start = v20.duration;
        *&otherRange.start.value = *v8;
        otherRange.start.epoch = *(v8 + 16);
        if (CMTimeCompare(&range.start, &otherRange.start))
        {
LABEL_18:
          [v10 score];
          if (v7 < v14)
          {
            v7 = v14;
          }
        }

        ++v9;
      }

      while (v5 != v9);
      v17 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v27 objects:v31 count:16];
      v5 = v17;
    }

    while (v17);
    if (v7 <= 0.1)
    {
      v18 = 1.0;
    }

    else
    {
      v18 = 0.8;
    }
  }

  else
  {
    v18 = 1.0;
  }

  return v18;
}

- (void)addSceneSwitchFrequencyConstributionToActivityLevel:(float *)a3
{
  v3 = *a3;
  v4 = 0.9;
  if (*a3 < 0.9)
  {
    v5 = 0.9 - v3;
    if ((0.9 - v3) < 0.0)
    {
      v5 = 0.0;
    }

    v6 = v3 + (v5 * self->_sceneSwitchFrequency);
    if (v6 < 0.9)
    {
      v4 = v6;
    }

    if (v6 <= 0.0)
    {
      v7 = 0.0;
    }

    else
    {
      v7 = v4;
    }

    *a3 = v7;
  }
}

- (float)actionScoreInTimeRange:(id *)a3
{
  v28 = *MEMORY[0x1E69E9840];
  memset(&v26, 0, sizeof(v26));
  v5 = *&a3->var0.var3;
  *&range.start.value = *&a3->var0.var0;
  *&range.start.epoch = v5;
  *&range.duration.timescale = *&a3->var1.var1;
  CMTimeRangeGetEnd(&v26, &range);
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v6 = self->_fineActionResults;
  v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v21 objects:v27 count:16];
  if (v7)
  {
    v8 = *v22;
    v9 = 0.0;
    v10 = MEMORY[0x1E6960CC0];
    v11 = 0.0;
LABEL_3:
    v12 = 0;
    while (1)
    {
      if (*v22 != v8)
      {
        objc_enumerationMutation(v6);
      }

      v13 = *(*(&v21 + 1) + 8 * v12);
      if (v13)
      {
        [*(*(&v21 + 1) + 8 * v12) timerange];
      }

      else
      {
        memset(&range, 0, sizeof(range));
      }

      *&time1.start.value = *&range.start.value;
      time1.start.epoch = range.start.epoch;
      v19.start = v26;
      if (CMTimeCompare(&time1.start, &v19.start) > 0)
      {
        break;
      }

      memset(&range, 0, sizeof(range));
      v14 = *&a3->var0.var3;
      *&time1.start.value = *&a3->var0.var0;
      *&time1.start.epoch = v14;
      *&time1.duration.timescale = *&a3->var1.var1;
      if (v13)
      {
        [v13 timerange];
      }

      else
      {
        memset(&v19, 0, sizeof(v19));
      }

      CMTimeRangeGetIntersection(&range, &time1, &v19);
      if ((range.start.flags & 1) == 0 || (range.duration.flags & 1) == 0 || range.duration.epoch || range.duration.value < 0 || (time1.start = range.duration, *&v19.start.value = *v10, v19.start.epoch = *(v10 + 16), CMTimeCompare(&time1.start, &v19.start)))
      {
        time1.start = range.duration;
        Seconds = CMTimeGetSeconds(&time1.start);
        [v13 score];
        v16 = Seconds;
        v11 = v11 + (v16 * v17);
        v9 = v9 + v16;
      }

      if (v7 == ++v12)
      {
        v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v21 objects:v27 count:16];
        if (v7)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  else
  {
    v9 = 0.0;
    v11 = 0.0;
  }

  result = v11 / v9;
  if (v9 == 0.0)
  {
    return 0.0;
  }

  return result;
}

- (void)addSceneClassificationContributionToActivityLevel:(float *)a3
{
  v28 = *MEMORY[0x1E69E9840];
  if (*a3 < 0.9)
  {
    v5 = 0.0;
    if ((0.9 - *a3) >= 0.0)
    {
      v6 = 0.9 - *a3;
    }

    else
    {
      v6 = 0.0;
    }

    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v7 = self->_classificationResults;
    v8 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v23 objects:v27 count:16];
    if (v8)
    {
      v9 = *v24;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v24 != v9)
          {
            objc_enumerationMutation(v7);
          }

          v11 = *(*(&v23 + 1) + 8 * i);
          [v11 score];
          v13 = v12;
          if (v11)
          {
            [v11 timerange];
          }

          else
          {
            v21 = 0u;
            v22 = 0u;
            v20 = 0u;
          }

          [(VCPVideoActivityAnalyzer *)self actionScoreInTimeRange:&v20];
          v15 = sqrtf(v13 * v14);
          if (v5 < v15)
          {
            v5 = v15;
          }
        }

        v8 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v23 objects:v27 count:16];
      }

      while (v8);
    }

    v16 = *a3 + (v6 * v5);
    if (v16 < 0.9)
    {
      v17 = *a3 + (v6 * v5);
    }

    else
    {
      v17 = 0.9;
    }

    v18 = v16 > 0.0;
    v19 = 0.0;
    if (v18)
    {
      v19 = v17;
    }

    *a3 = v19;
  }
}

- (int)finishAnalysisPass:(id *)a3 fpsRate:(float)a4
{
  v38 = *MEMORY[0x1E69E9840];
  if ((a3->var0.var2 & 1) != 0 && (a3->var1.var2 & 1) != 0 && !a3->var1.var3 && (a3->var1.var0 & 0x8000000000000000) == 0)
  {
    v27 = *&a3->var1.var0;
    *&v28[0] = a3->var1.var3;
    time = **&MEMORY[0x1E6960CC0];
    if (!CMTimeCompare(&v27, &time))
    {
      return -50;
    }
  }

  v33 = 0.0;
  v27 = *&a3->var1.var0;
  *&v28[0] = a3->var1.var3;
  if (CMTimeGetSeconds(&v27) / a4 >= 3.0)
  {
    [(VCPVideoActivityAnalyzer *)self validateActivityScores];
    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    v7 = self->_validActivityScores;
    v8 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v29 objects:v37 count:16];
    if (v8)
    {
      v9 = *v30;
      v10 = 0.0;
      v11 = 0.0;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v30 != v9)
          {
            objc_enumerationMutation(v7);
          }

          v13 = *(*(&v29 + 1) + 8 * i);
          if (v13)
          {
            [*(*(&v29 + 1) + 8 * i) timerange];
          }

          else
          {
            memset(v28, 0, sizeof(v28));
            v27 = 0u;
          }

          time = *(v28 + 8);
          Seconds = CMTimeGetSeconds(&time);
          if (v13)
          {
            [v13 timerange];
          }

          else
          {
            memset(v28, 0, sizeof(v28));
            v27 = 0u;
          }

          [(VCPVideoActivityAnalyzer *)self scaleBasedOnFaceForTimeRange:&v27];
          v16 = v15;
          [v13 score];
          v17 = Seconds;
          v10 = v10 + ((v16 * v18) * v17);
          v33 = v10;
          v11 = v11 + v17;
        }

        v8 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v29 objects:v37 count:16];
      }

      while (v8);

      if (v11 != 0.0)
      {
        v33 = v10 / v11;
      }
    }

    else
    {

      v11 = 0.0;
    }

    v27 = *&a3->var1.var0;
    *&v28[0] = a3->var1.var3;
    v19 = v11 / CMTimeGetSeconds(&v27);
    if (v19 <= 0.15)
    {
      v33 = 0.0;
    }

    else
    {
      [(VCPVideoActivityAnalyzer *)self addSceneSwitchFrequencyConstributionToActivityLevel:&v33];
      [(VCPVideoActivityAnalyzer *)self addSceneClassificationContributionToActivityLevel:&v33];
    }
  }

  results = self->_results;
  v35[0] = @"start";
  v27 = *&a3->var0.var0;
  *&v28[0] = a3->var0.var3;
  v21 = CMTimeCopyAsDictionary(&v27, 0);
  v36[0] = v21;
  v35[1] = @"duration";
  v27 = *&a3->var1.var0;
  *&v28[0] = a3->var1.var3;
  v22 = CMTimeCopyAsDictionary(&v27, 0);
  v36[1] = v22;
  v35[2] = @"quality";
  *&v23 = v33;
  v24 = [MEMORY[0x1E696AD98] numberWithFloat:v23];
  v36[2] = v24;
  v25 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v36 forKeys:v35 count:3];
  [(NSMutableArray *)results addObject:v25];

  return 0;
}

- (id)results
{
  v6[1] = *MEMORY[0x1E69E9840];
  results = self->_results;
  if (results)
  {
    v5 = @"ActivityLevelResults";
    v6[0] = results;
    v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v6 forKeys:&v5 count:1];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)analyzeFrame:(void *)a1 timestamp:(uint64_t)a2 duration:frameStats:flags:.cold.1(void *a1, uint64_t a2)
{
  *a2 = 138412290;
  *(a2 + 4) = a1;
  v3 = a1;
  _os_log_fault_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT, "[%@] frameStats.videoActivityDescriptor is nil", a2, 0xCu);
}

- (void)analyzeFrame:(void *)a1 timestamp:(uint64_t)a2 duration:frameStats:flags:.cold.2(void *a1, uint64_t a2)
{
  *a2 = 138412290;
  *(a2 + 4) = a1;
  v3 = a1;
  _os_log_fault_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT, "[%@] frameStats is nil", a2, 0xCu);
}

@end