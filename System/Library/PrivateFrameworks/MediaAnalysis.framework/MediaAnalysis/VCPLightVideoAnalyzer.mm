@interface VCPLightVideoAnalyzer
- (VCPLightVideoAnalyzer)initWithAVAsset:(id)a3 forAnalysisTypes:(unint64_t)a4;
- (id)findMetaTrackforType:(id)a3;
- (int)analyzeAsset:(id)a3 flags:(unint64_t *)a4;
- (int)checkTimeRangeConsistency;
- (int)postProcessOrientationResults;
- (int)processMetaTrackForType:(id)a3 cancel:(id)a4 flags:(unint64_t *)a5;
@end

@implementation VCPLightVideoAnalyzer

- (VCPLightVideoAnalyzer)initWithAVAsset:(id)a3 forAnalysisTypes:(unint64_t)a4
{
  v7 = a3;
  v23.receiver = self;
  v23.super_class = VCPLightVideoAnalyzer;
  v8 = [(VCPLightVideoAnalyzer *)&v23 init];
  v9 = v8;
  if (v8)
  {
    if (!v7)
    {
      goto LABEL_9;
    }

    objc_storeStrong(&v8->_avAsset, a3);
    v10 = [v7 vcp_firstEnabledTrackWithMediaType:*MEMORY[0x1E6987608]];
    v11 = v10;
    if (v10)
    {
      [v10 preferredTransform];
    }

    else
    {
      v21 = 0u;
      v22 = 0u;
      v20 = 0u;
    }

    *&v9->_transform.a = v20;
    *&v9->_transform.c = v21;
    *&v9->_transform.tx = v22;

    v9->_requestedAnalyses = a4;
    metaTracks = v9->_metaTracks;
    v9->_metaTracks = 0;

    v14 = [MEMORY[0x1E695DF90] dictionary];
    publicMutableResults = v9->_publicMutableResults;
    v9->_publicMutableResults = v14;

    v16 = [MEMORY[0x1E695DF90] dictionary];
    privateMutableResults = v9->_privateMutableResults;
    v9->_privateMutableResults = v16;

    if (!v9->_publicMutableResults || (v18 = v9, !v9->_privateMutableResults))
    {
LABEL_9:
      v18 = 0;
    }

    v12 = v18;
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (id)findMetaTrackforType:(id)a3
{
  v28 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v5 = self->_metaTracks;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v22 objects:v27 count:16];
  if (v6)
  {
    v17 = *v23;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v23 != v17)
        {
          objc_enumerationMutation(v5);
        }

        v8 = *(*(&v22 + 1) + 8 * i);
        v18 = 0u;
        v19 = 0u;
        v20 = 0u;
        v21 = 0u;
        v9 = [v8 formatDescriptions];
        v10 = [v9 countByEnumeratingWithState:&v18 objects:v26 count:16];
        if (v10)
        {
          v11 = *v19;
          while (2)
          {
            for (j = 0; j != v10; ++j)
            {
              if (*v19 != v11)
              {
                objc_enumerationMutation(v9);
              }

              v13 = CMMetadataFormatDescriptionGetIdentifiers(*(*(&v18 + 1) + 8 * j));
              v14 = v13;
              if (v13 && ([v13 containsObject:v4] & 1) != 0)
              {
                v15 = v8;

                goto LABEL_20;
              }
            }

            v10 = [v9 countByEnumeratingWithState:&v18 objects:v26 count:16];
            if (v10)
            {
              continue;
            }

            break;
          }
        }
      }

      v6 = [(NSArray *)v5 countByEnumeratingWithState:&v22 objects:v27 count:16];
      v15 = 0;
    }

    while (v6);
  }

  else
  {
    v15 = 0;
  }

LABEL_20:

  return v15;
}

- (int)processMetaTrackForType:(id)a3 cancel:(id)a4 flags:(unint64_t *)a5
{
  v41 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v9 = [(VCPLightVideoAnalyzer *)self findMetaTrackforType:v7];
  v34 = v9;
  if (!v9)
  {
    v17 = 0;
    v18 = 0;
LABEL_13:
    LODWORD(v14) = 0;
    goto LABEL_36;
  }

  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v10 = [v9 formatDescriptions];
  v11 = [v10 countByEnumeratingWithState:&v36 objects:v40 count:16];
  if (v11)
  {
    v12 = *v37;
    while (2)
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v37 != v12)
        {
          objc_enumerationMutation(v10);
        }

        v14 = *(*(&v36 + 1) + 8 * i);
        v15 = CMMetadataFormatDescriptionGetIdentifiers(v14);
        v16 = v15;
        if (v15 && ([v15 containsObject:v7] & 1) != 0)
        {

          goto LABEL_15;
        }
      }

      v11 = [v10 countByEnumeratingWithState:&v36 objects:v40 count:16];
      if (v11)
      {
        continue;
      }

      break;
    }
  }

  v14 = 0;
LABEL_15:

  v18 = [[VCPMetaTrackDecoder alloc] initWithTrack:v34];
  if (!v18)
  {
    v17 = 0;
    LODWORD(v14) = -50;
    goto LABEL_36;
  }

  v19 = *&self->_transform.c;
  v35[0] = *&self->_transform.a;
  v35[1] = v19;
  v35[2] = *&self->_transform.tx;
  v17 = [VCPVideoMetaAnalyzer analyzerForTrackType:v7 withTransform:v35 requestAnalyses:self->_requestedAnalyses formatDescription:v14];
  [(VCPLightVideoAnalyzer *)self photoOffset];
  [v17 setPhotoOffset:?];
  if (!v17)
  {
    LODWORD(v14) = -108;
    goto LABEL_36;
  }

  do
  {
    v20 = objc_autoreleasePoolPush();
    if (v8[2](v8))
    {
      LODWORD(v14) = -128;
      v21 = 1;
    }

    else
    {
      v22 = [(VCPMetaTrackDecoder *)v18 copyNextMetadataGroup];
      if (v22)
      {
        v23 = [v17 processMetadataGroup:v22 flags:a5];
        v21 = v23 != 0;
        if (v23)
        {
          LODWORD(v14) = v23;
        }
      }

      else
      {
        v21 = 11;
      }
    }

    objc_autoreleasePoolPop(v20);
  }

  while (!v21);
  if (v21 == 11)
  {
    if ([(VCPMetaTrackDecoder *)v18 status]!= 2)
    {
      LODWORD(v14) = -19;
      goto LABEL_36;
    }

    LODWORD(v14) = [v17 finalizeAnalysis];
    if (!v14)
    {
      v24 = [v17 publicResults];
      v25 = v24 == 0;

      if (!v25)
      {
        publicMutableResults = self->_publicMutableResults;
        v27 = [v17 publicResults];
        [(NSMutableDictionary *)publicMutableResults addEntriesFromDictionary:v27];
      }

      v28 = [v17 privateResults];
      v29 = v28 == 0;

      if (!v29)
      {
        privateMutableResults = self->_privateMutableResults;
        v31 = [v17 privateResults];
        [(NSMutableDictionary *)privateMutableResults addEntriesFromDictionary:v31];
      }

      goto LABEL_13;
    }
  }

LABEL_36:

  return v14;
}

- (int)checkTimeRangeConsistency
{
  v3 = [(AVAsset *)self->_avAsset vcp_firstEnabledTrackWithMediaType:*MEMORY[0x1E6987608]];
  v4 = [(NSMutableDictionary *)self->_privateMutableResults objectForKey:@"OrientationResults"];
  v5 = v4;
  if (v3)
  {
    v6 = v4 == 0;
  }

  else
  {
    v6 = 1;
  }

  if (!v6)
  {
    memset(v20, 0, sizeof(v20));
    v19 = 0u;
    [v3 timeRange];
    memset(&v18, 0, sizeof(v18));
    CMTimeRangeMakeFromDictionary(&v18, [v5 firstObject]);
    memset(&v17, 0, sizeof(v17));
    CMTimeRangeMakeFromDictionary(&v17, [v5 lastObject]);
    memset(&v16, 0, sizeof(v16));
    start = v18.start;
    v12 = v17;
    CMTimeRangeGetEnd(&v13, &v12);
    v12.start = v13;
    rhs = v18.start;
    CMTimeSubtract(&duration, &v12.start, &rhs);
    CMTimeRangeMake(&v16, &start, &duration);
    *&v12.start.value = *(v20 + 8);
    v12.start.epoch = *(&v20[1] + 1);
    Seconds = CMTimeGetSeconds(&v12.start);
    v12.start = v16.duration;
    v8 = CMTimeGetSeconds(&v12.start);
    v9 = Seconds;
    if (v9 != 0.0)
    {
      v10 = v8;
      if ((vabds_f32(v9, v10) / v9) >= 0.25)
      {
        [(NSMutableDictionary *)self->_privateMutableResults removeObjectForKey:@"OrientationResults"];
      }
    }
  }

  return 0;
}

- (int)postProcessOrientationResults
{
  v24 = *MEMORY[0x1E69E9840];
  v15 = [(NSMutableDictionary *)self->_privateMutableResults objectForKeyedSubscript:?];
  if (v15)
  {
    v2 = [MEMORY[0x1E695DF70] array];
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    obj = v15;
    v3 = [obj countByEnumeratingWithState:&v17 objects:v23 count:16];
    if (v3)
    {
      v4 = *v18;
      do
      {
        for (i = 0; i != v3; ++i)
        {
          if (*v18 != v4)
          {
            objc_enumerationMutation(obj);
          }

          v6 = *(*(&v17 + 1) + 8 * i);
          v7 = [v6 mutableCopy];
          v8 = [v6 objectForKeyedSubscript:@"attributes"];
          v9 = [v8 objectForKeyedSubscript:@"orientation"];

          if ([v9 intValue] <= 8)
          {
            v10 = kQuickTimeVideoOrientationToVCPOrientation[[v9 intValue]];
          }

          else
          {
            v10 = 0;
          }

          v21 = @"orientation";
          v11 = [MEMORY[0x1E696AD98] numberWithInt:v10];
          v22 = v11;
          v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v22 forKeys:&v21 count:1];
          [v7 setObject:v12 forKeyedSubscript:@"attributes"];

          [v2 addObject:v7];
        }

        v3 = [obj countByEnumeratingWithState:&v17 objects:v23 count:16];
      }

      while (v3);
    }

    [(NSMutableDictionary *)self->_publicMutableResults setObject:v2 forKeyedSubscript:@"OrientationResults"];
  }

  return 0;
}

- (int)analyzeAsset:(id)a3 flags:(unint64_t *)a4
{
  v6 = a3;
  if ([(NSMutableDictionary *)self->_publicMutableResults count]&& [(NSMutableDictionary *)self->_privateMutableResults count])
  {
    v7 = 0;
    goto LABEL_24;
  }

  v12 = 0;
  v8 = [(AVAsset *)self->_avAsset vcp_enabledTracksWithMediaType:*MEMORY[0x1E69875D0]];
  metaTracks = self->_metaTracks;
  self->_metaTracks = v8;

  if (!self->_metaTracks)
  {
LABEL_23:
    v7 = 0;
    *a4 |= v12;
    goto LABEL_24;
  }

  v7 = [(VCPLightVideoAnalyzer *)self processMetaTrackForType:*MEMORY[0x1E69603B8] cancel:v6 flags:&v12];
  if (v7)
  {
    goto LABEL_24;
  }

  requestedAnalyses = self->_requestedAnalyses;
  if ((requestedAnalyses & 0xC) == 4)
  {
    v7 = [(VCPLightVideoAnalyzer *)self processMetaTrackForType:*MEMORY[0x1E69877B0] cancel:v6 flags:&v12];
    if (v7)
    {
      goto LABEL_24;
    }

    requestedAnalyses = self->_requestedAnalyses;
  }

  if ((requestedAnalyses & 0xC0) != 0)
  {
    v7 = [(VCPLightVideoAnalyzer *)self processMetaTrackForType:*MEMORY[0x1E69877F0] cancel:v6 flags:&v12];
    if (v7)
    {
      goto LABEL_24;
    }

    v7 = [(VCPLightVideoAnalyzer *)self checkTimeRangeConsistency];
    if (v7)
    {
      goto LABEL_24;
    }

    requestedAnalyses = self->_requestedAnalyses;
    if ((requestedAnalyses & 0xC0) == 0x40)
    {
      v7 = [(VCPLightVideoAnalyzer *)self postProcessOrientationResults];
      if (v7)
      {
        goto LABEL_24;
      }

      requestedAnalyses = self->_requestedAnalyses;
    }
  }

  if ((requestedAnalyses & 0x40000140300002C0) != 0)
  {
    v7 = [(VCPLightVideoAnalyzer *)self processMetaTrackForType:*MEMORY[0x1E6990A00] cancel:v6 flags:a4];
    if (v7)
    {
      goto LABEL_24;
    }

    requestedAnalyses = self->_requestedAnalyses;
  }

  if ((requestedAnalyses & 0x10000000000) != 0)
  {
    v7 = [(VCPLightVideoAnalyzer *)self processMetaTrackForType:*MEMORY[0x1E69629E0] cancel:v6 flags:a4];
    if (v7)
    {
      goto LABEL_24;
    }

    requestedAnalyses = self->_requestedAnalyses;
  }

  if ((requestedAnalyses & 0x20000000) == 0)
  {
    goto LABEL_23;
  }

  v7 = [(VCPLightVideoAnalyzer *)self processMetaTrackForType:@"mdta/com.apple.quicktime.smartstyle-info" cancel:v6 flags:a4];
  if (!v7)
  {
    goto LABEL_23;
  }

LABEL_24:

  return v7;
}

@end