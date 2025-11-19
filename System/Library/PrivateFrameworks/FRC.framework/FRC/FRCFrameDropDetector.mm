@interface FRCFrameDropDetector
- ($3CC8671D27C23BF42ADDB32F2B5E48AE)droppingThreshold;
- (FRCFrameDropDetector)init;
- (id)buildInsertionPointListFromInternalTimingList:(id)a3 bailOutCode:(int64_t *)a4;
- (id)calculateFrameDropInfoFromSortedMetadataList:(id)a3 sortedTimingList:(id)a4;
- (id)calculateFrameDurationFromSortedTimingList:(id)a3;
- (id)detectFrameDropsFromFrameMetadataList:(id)a3 frameTimingList:(id)a4;
- (id)detectFrameDropsFromFrameTimingList:(id)a3;
- (id)detectFrameDropsFromInternalTimingList:(id)a3;
- (id)detectSingleFrameDropsFromFrameTimingList:(id)a3;
- (id)errorWithDescription:(id)a3;
- (id)selectFrameInsertionPointsFromTimingList:(id)a3 metadataList:(id)a4 sloMo:(BOOL)a5 withError:(id *)a6;
- (id)sortFrameMetadataListInDisplayOrderFromMetadataList:(id)a3;
- (id)sortFrameTimingListInDisplayOrderFromTimingList:(id)a3;
- (unint64_t)countNumberOfFramesWithRecipeInMetadataList:(id)a3;
- (void)dealloc;
- (void)debugPrintFRCFRCFrameBurstyDropInfo:(id)a3;
- (void)debugPrintFRCFrameInternalTimingInfo:(id)a3;
- (void)debugPrintFRCFrameMetadataInfo:(id)a3;
- (void)debugPrintFRCFrameTimingInfo:(id)a3;
- (void)detectLocationOfBurstyGapsFromBurstyDropList:(id)a3 frameInternalTimingList:(id)a4;
- (void)detectSingleFrameDropsFromInternalTimingList:(id)a3;
- (void)scaleNumberOfFramesToInsertFor2xSloMo:(id)a3;
- (void)setPropertiesFromDefaults;
@end

@implementation FRCFrameDropDetector

- (FRCFrameDropDetector)init
{
  v9.receiver = self;
  v9.super_class = FRCFrameDropDetector;
  v2 = [(FRCFrameDropDetector *)&v9 init];
  v3 = v2;
  if (v2)
  {
    [(FRCFrameDropDetector *)v2 setDebugPrint:0];
    *&v3->_gatingEnabled = 257;
    [(FRCFrameDropDetector *)v3 setPropertiesFromDefaults];
    CMTimeMake(&v8, 600, 600);
    v4 = *&v8.value;
    v3->minDuration.epoch = v8.epoch;
    *&v3->minDuration.value = v4;
    v5 = os_log_create("com.apple.FRC", "FrameDropDetector");
    logger = v3->_logger;
    v3->_logger = v5;
  }

  return v3;
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = FRCFrameDropDetector;
  [(FRCFrameDropDetector *)&v2 dealloc];
}

- (void)setPropertiesFromDefaults
{
  keyExistsAndHasValidFormat = 1;
  AppBooleanValue = CFPreferencesGetAppBooleanValue(@"FrameDropDetectorDebug", @"com.apple.FRC", &keyExistsAndHasValidFormat);
  if (keyExistsAndHasValidFormat)
  {
    [(FRCFrameDropDetector *)self setDebugPrint:AppBooleanValue != 0];
  }

  v4 = CFPreferencesGetAppBooleanValue(@"SingleDropRecovery", @"com.apple.FRC", &keyExistsAndHasValidFormat);
  if (keyExistsAndHasValidFormat)
  {
    self->_singleDropRecoveryEnabled = v4 != 0;
  }
}

- (void)debugPrintFRCFrameMetadataInfo:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = a3;
  puts("[Frame] Curated Time, Original Time, Recipe, Displacement");
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  obj = v3;
  v4 = [obj countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = *v13;
    do
    {
      v8 = 0;
      v9 = v6;
      do
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v6 = v9 + 1;
        printf("[%3ld] %ld, %ld, %ld, %3ld\n", v9, [*(*(&v12 + 1) + 8 * v8) ptsInNanos], objc_msgSend(*(*(&v12 + 1) + 8 * v8), "originalPTSInNanos"), objc_msgSend(*(*(&v12 + 1) + 8 * v8), "sequenceAdjusterRecipe"), objc_msgSend(*(*(&v12 + 1) + 8 * v8), "sequenceAdjusterDisplacement"));
        ++v8;
        ++v9;
      }

      while (v5 != v8);
      v5 = [obj countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v5);
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)debugPrintFRCFrameTimingInfo:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = *v12;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v3);
        }

        v9 = *(*(&v11 + 1) + 8 * i);
        if (v9)
        {
          [v9 presentationTimeStamp];
        }

        NSLog(&cfstr_3ldPts4f4lldD.isa, v6++, (0 / 0), 0, 0);
      }

      v5 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v5);
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)debugPrintFRCFrameInternalTimingInfo:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = *v12;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v3);
        }

        v9 = *(*(&v11 + 1) + 8 * i);
        if (v9)
        {
          [v9 presentationTimeStamp];
          [v9 frameDuration];
          [v9 interpolatedFrameDuration];
        }

        NSLog(&cfstr_3ldPts4f4lldDD.isa, v6++, (0 / 0), 0, 0, 0, 0, 0, 0, [v9 framesToBeDuplicated], objc_msgSend(v9, "frameIsAtBigGap"));
      }

      v5 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v5);
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)debugPrintFRCFRCFrameBurstyDropInfo:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = *v15;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(v3);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        v10 = [v9 burstyIdx];
        v11 = [v9 burstyStart];
        v12 = [v9 burstyLen];
        if (v9)
        {
          [v9 burstyBaseDuration];
        }

        NSLog(&cfstr_3ldBurstyDropI.isa, v6++, v10, v11, v12, 0, 0);
      }

      v5 = [v3 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v5);
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (id)sortFrameMetadataListInDisplayOrderFromMetadataList:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x277CBEA60]);
  sortedMetadataList = self->sortedMetadataList;
  self->sortedMetadataList = v5;

  v7 = [v4 sortedArrayUsingComparator:&__block_literal_global_0];
  v8 = self->sortedMetadataList;
  self->sortedMetadataList = v7;

  if (self->_debugPrint)
  {
    NSLog(&cfstr_FrameDropDetec.isa);
    [(FRCFrameDropDetector *)self debugPrintFRCFrameMetadataInfo:v4];
    NSLog(&cfstr_FrameDropDetec_0.isa);
    [(FRCFrameDropDetector *)self debugPrintFRCFrameMetadataInfo:self->sortedMetadataList];
  }

  v9 = self->sortedMetadataList;
  v10 = v9;

  return v9;
}

uint64_t __76__FRCFrameDropDetector_sortFrameMetadataListInDisplayOrderFromMetadataList___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 ptsInNanos];
  v6 = [v4 ptsInNanos];

  if (v5 > v6)
  {
    return 1;
  }

  else
  {
    return -1;
  }
}

- (id)calculateFrameDropInfoFromSortedMetadataList:(id)a3 sortedTimingList:(id)a4
{
  v52 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = objc_alloc_init(MEMORY[0x277CBEB18]);
  frameInternalPTSList = self->frameInternalPTSList;
  self->frameInternalPTSList = v8;

  memset(&v50, 0, sizeof(v50));
  v10 = [v7 objectAtIndexedSubscript:0];
  v11 = v10;
  if (v10)
  {
    [v10 presentationTimeStamp];
  }

  else
  {
    memset(&v50, 0, sizeof(v50));
  }

  memset(&v49, 0, sizeof(v49));
  CMTimeMake(&v49, 0, v50.timescale);
  v12 = [v7 count];
  v37 = [v6 count];
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v13 = v7;
  v38 = [v13 countByEnumeratingWithState:&v45 objects:v51 count:16];
  if (v38)
  {
    v14 = 0;
    v35 = v12 - 1;
    v36 = *v46;
    v34 = v6;
    v33 = v13;
    do
    {
      for (i = 0; i != v38; ++i)
      {
        if (*v46 != v36)
        {
          objc_enumerationMutation(v13);
        }

        v16 = *(*(&v45 + 1) + 8 * i);
        if (v16)
        {
          [v16 presentationTimeStamp];
        }

        else
        {
          memset(&time, 0, sizeof(time));
        }

        v50 = time;
        if (v14 >= v37)
        {
          v19 = 0;
          v18 = 0;
        }

        else
        {
          v17 = [v6 objectAtIndexedSubscript:v14];
          v18 = [v17 sequenceAdjusterRecipe];
          v19 = [v17 sequenceAdjusterDisplacement];
        }

        if (v14 >= v35)
        {
          v25 = 0;
          v26 = 0;
        }

        else
        {
          v20 = [v13 objectAtIndexedSubscript:v14 + 1];
          v21 = v20;
          memset(&time, 0, sizeof(time));
          if (v20)
          {
            [v20 presentationTimeStamp];
          }

          lhs = time;
          rhs = v50;
          CMTimeSubtract(&v43, &lhs, &rhs);
          v49 = v43;
          if (v14 >= v37 - 1)
          {
            v25 = 0;
            v26 = 0;
          }

          else
          {
            v22 = [v6 objectAtIndexedSubscript:v14 + 1];
            v23 = [v22 sequenceAdjusterRecipe];
            v24 = [v22 sequenceAdjusterDisplacement];
            v25 = 0;
            v26 = 0;
            if (v18 && v23)
            {
              v27 = v24 - v19;
              v28 = 3;
              if (v19)
              {
                v28 = 0;
              }

              if (v27 >= 2)
              {
                v25 = v24 - v19 - 1;
              }

              else
              {
                v25 = v28;
              }

              v26 = v27 < 2 && v19 == 0;
              self->_retimingRecipe = v18;
            }

            v13 = v33;
            v6 = v34;
          }
        }

        v29 = objc_alloc_init(FRCFrameInternalTimingInfo);
        time = v50;
        [(FRCFrameInternalTimingInfo *)v29 setPresentationTimeStamp:&time];
        time = v49;
        [(FRCFrameInternalTimingInfo *)v29 setFrameDuration:&time];
        [(FRCFrameInternalTimingInfo *)v29 setFramesToBeDuplicated:v25];
        [(FRCFrameInternalTimingInfo *)v29 setFrameIsAtBigGap:v26];
        if (v25 < 1)
        {
          time = v49;
          [(FRCFrameInternalTimingInfo *)v29 setInterpolatedFrameDuration:&time];
        }

        else
        {
          CMTimeMake(&v43, 1, v49.timescale);
          lhs = v49;
          CMTimeAdd(&time, &lhs, &v43);
          CMTimeMultiplyByRatio(&v40, &time, 1, 2);
          time = v40;
          [(FRCFrameInternalTimingInfo *)v29 setInterpolatedFrameDuration:&time];
          if (v29)
          {
            [(FRCFrameInternalTimingInfo *)v29 interpolatedFrameDuration];
          }

          else
          {
            memset(&time, 0, sizeof(time));
          }

          CMTimeConvertScale(&v39, &time, v49.timescale, kCMTimeRoundingMethod_QuickTime);
          time = v39;
          [(FRCFrameInternalTimingInfo *)v29 setInterpolatedFrameDuration:&time];
          ++self->_numberOfInsertionPoints;
        }

        [(NSMutableArray *)self->frameInternalPTSList addObject:v29];
        ++v14;
      }

      v38 = [v13 countByEnumeratingWithState:&v45 objects:v51 count:16];
    }

    while (v38);
  }

  if (self->_debugPrint)
  {
    NSLog(&cfstr_FrameDropDetec_1.isa);
    [(FRCFrameDropDetector *)self debugPrintFRCFrameInternalTimingInfo:self->frameInternalPTSList];
  }

  v30 = self->frameInternalPTSList;

  v31 = *MEMORY[0x277D85DE8];

  return v30;
}

- (id)sortFrameTimingListInDisplayOrderFromTimingList:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x277CBEA60]);
  sortedTimingList = self->sortedTimingList;
  self->sortedTimingList = v5;

  v7 = [v4 sortedArrayUsingComparator:&__block_literal_global_90];
  v8 = self->sortedTimingList;
  self->sortedTimingList = v7;

  if (self->_debugPrint)
  {
    NSLog(&cfstr_FrameDropDetec_2.isa);
    [(FRCFrameDropDetector *)self debugPrintFRCFrameTimingInfo:v4];
    NSLog(&cfstr_FrameDropDetec_3.isa);
    [(FRCFrameDropDetector *)self debugPrintFRCFrameTimingInfo:self->sortedTimingList];
  }

  v9 = self->sortedTimingList;
  v10 = v9;

  return v9;
}

uint64_t __72__FRCFrameDropDetector_sortFrameTimingListInDisplayOrderFromTimingList___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = v5;
  if (v4)
  {
    [v4 presentationTimeStamp];
    v7 = v12;
    if (v6)
    {
LABEL_3:
      [v6 presentationTimeStamp];
      v8 = v11;
      goto LABEL_6;
    }
  }

  else
  {
    v7 = 0;
    if (v5)
    {
      goto LABEL_3;
    }
  }

  v8 = 0;
LABEL_6:
  if (v7 > v8)
  {
    v9 = 1;
  }

  else
  {
    v9 = -1;
  }

  return v9;
}

- (id)calculateFrameDurationFromSortedTimingList:(id)a3
{
  v36 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
  frameInternalPTSList = self->frameInternalPTSList;
  self->frameInternalPTSList = v5;

  memset(&timescale, 0, sizeof(timescale));
  v7 = [v4 objectAtIndexedSubscript:0];
  v8 = v7;
  if (v7)
  {
    [v7 presentationTimeStamp];
  }

  else
  {
    memset(&timescale, 0, sizeof(timescale));
  }

  memset(&v33, 0, sizeof(v33));
  CMTimeMake(&v33, 0, timescale.timescale);
  CMTimeMake(&v32, timescale.timescale, timescale.timescale);
  self->minDuration = v32;
  v9 = [v4 count];
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v10 = v4;
  v11 = [v10 countByEnumeratingWithState:&v28 objects:v35 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = 0;
    v14 = *v29;
    v15 = v9 - 1;
    do
    {
      v16 = 0;
      v17 = v13;
      do
      {
        if (*v29 != v14)
        {
          objc_enumerationMutation(v10);
        }

        v18 = *(*(&v28 + 1) + 8 * v16);
        if (v18)
        {
          [v18 presentationTimeStamp];
        }

        else
        {
          memset(&v32, 0, sizeof(v32));
        }

        timescale = v32;
        v13 = v17 + 1;
        if (v17 < v15)
        {
          v19 = [v10 objectAtIndexedSubscript:v17 + 1];
          v20 = v19;
          memset(&v32, 0, sizeof(v32));
          if (v19)
          {
            [v19 presentationTimeStamp];
          }

          lhs = v32;
          v25 = timescale;
          CMTimeSubtract(&time1, &lhs, &v25);
          v33 = time1;
          lhs = self->minDuration;
          if (CMTimeCompare(&time1, &lhs) == -1)
          {
            self->minDuration = v33;
          }
        }

        v21 = objc_alloc_init(FRCFrameInternalTimingInfo);
        v32 = timescale;
        [(FRCFrameInternalTimingInfo *)v21 setPresentationTimeStamp:&v32];
        v32 = v33;
        [(FRCFrameInternalTimingInfo *)v21 setFrameDuration:&v32];
        v32 = v33;
        [(FRCFrameInternalTimingInfo *)v21 setInterpolatedFrameDuration:&v32];
        [(NSMutableArray *)self->frameInternalPTSList addObject:v21];

        ++v16;
        v17 = v13;
      }

      while (v12 != v16);
      v12 = [v10 countByEnumeratingWithState:&v28 objects:v35 count:16];
    }

    while (v12);
  }

  if (self->_debugPrint)
  {
    NSLog(&cfstr_FrameDropDetec_1.isa);
    [(FRCFrameDropDetector *)self debugPrintFRCFrameInternalTimingInfo:self->frameInternalPTSList];
  }

  v22 = self->frameInternalPTSList;

  v23 = *MEMORY[0x277D85DE8];

  return v22;
}

- ($3CC8671D27C23BF42ADDB32F2B5E48AE)droppingThreshold
{
  retstr->var0 = 0;
  *&retstr->var1 = 0;
  retstr->var3 = 0;
  time = self->minDuration;
  CMTimeMultiplyByRatio(retstr, &time, 19, 10);
  timescale = self->minDuration.timescale;
  v7 = *retstr;
  CMTimeConvertScale(&time, &v7, timescale, kCMTimeRoundingMethod_QuickTime);
  *retstr = time;
  NSLog(&cfstr_FrameDropDetec_4.isa, self->minDuration.value, self->minDuration.timescale, retstr->var0, retstr->var1);
  return result;
}

- (id)detectFrameDropsFromInternalTimingList:(id)a3
{
  v43 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
  frameBurstyDropInfoList = self->frameBurstyDropInfoList;
  self->frameBurstyDropInfoList = v5;

  memset(&v41, 0, sizeof(v41));
  CMTimeMake(&v41, 0, self->minDuration.timescale);
  memset(&v40, 0, sizeof(v40));
  [(FRCFrameDropDetector *)self droppingThreshold];
  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v7 = v4;
  v8 = [v7 countByEnumeratingWithState:&v36 objects:v42 count:16];
  if (!v8)
  {
    v25 = 0;
    goto LABEL_25;
  }

  v9 = v8;
  v10 = 0;
  v23 = 0;
  obj = v7;
  v11 = 0;
  v25 = 0;
  v12 = 0;
  v13 = *v37;
  v14 = 1;
  do
  {
    for (i = 0; i != v9; ++i)
    {
      if (*v37 != v13)
      {
        objc_enumerationMutation(obj);
      }

      v16 = *(*(&v36 + 1) + 8 * i);
      memset(&v35, 0, sizeof(v35));
      if (v16)
      {
        [v16 frameDuration];
      }

      time1 = v35;
      time2 = v40;
      if (CMTimeCompare(&time1, &time2) != -1)
      {
        if (v11)
        {
          if (v16)
          {
            goto LABEL_11;
          }

LABEL_16:
          v17 = 0;
          memset(&time2, 0, sizeof(time2));
          v29 = 0;
          v30 = 0;
          v28 = 0;
        }

        else
        {
          ++v25;
          v41 = v35;
          v23 = v12;
          if (!v16)
          {
            goto LABEL_16;
          }

LABEL_11:
          [v16 frameDuration];
          [v16 frameDuration];
          v17 = v29;
        }

        CMTimeMake(&rhs, 1, v17);
        CMTimeAdd(&time1, &time2, &rhs);
        CMTimeMultiplyByRatio(&v32, &time1, 1, 2);
        time1 = v32;
        [v16 setInterpolatedFrameDuration:&time1];
        if (v16)
        {
          [v16 interpolatedFrameDuration];
          [v16 frameDuration];
          v19 = v26;
        }

        else
        {
          v19 = 0;
          memset(&time1, 0, sizeof(time1));
          v26 = 0;
        }

        ++v10;
        CMTimeConvertScale(&v27, &time1, v19, kCMTimeRoundingMethod_QuickTime);
        time1 = v27;
        [v16 setInterpolatedFrameDuration:&time1];
        ++self->_numberOfInsertionPoints;
        v11 = 1;
        goto LABEL_21;
      }

      if (!(v14 & 1 | (v11 == 0)))
      {
        v18 = objc_alloc_init(FRCFrameBurstyDropInfo);
        [(FRCFrameBurstyDropInfo *)v18 setBurstyIdx:v25];
        [(FRCFrameBurstyDropInfo *)v18 setBurstyStart:v23];
        [(FRCFrameBurstyDropInfo *)v18 setBurstyLen:v10];
        time1 = v41;
        [(FRCFrameBurstyDropInfo *)v18 setBurstyBaseDuration:&time1];
        [(NSMutableArray *)self->frameBurstyDropInfoList addObject:v18];
      }

      v11 = 0;
      v14 = 0;
      v10 = 0;
LABEL_21:
      [v16 setFramesToBeDuplicated:v11];
      [v16 setFrameIsAtBigGap:0];
      ++v12;
    }

    v7 = obj;
    v9 = [obj countByEnumeratingWithState:&v36 objects:v42 count:16];
  }

  while (v9);
LABEL_25:

  if (self->_debugPrint)
  {
    NSLog(&cfstr_FrameDropDetec_5.isa);
    [(FRCFrameDropDetector *)self debugPrintFRCFrameInternalTimingInfo:v7];
    NSLog(&cfstr_FrameDropDetec_6.isa, v25);
    [(FRCFrameDropDetector *)self debugPrintFRCFRCFrameBurstyDropInfo:self->frameBurstyDropInfoList];
  }

  v20 = self->frameBurstyDropInfoList;

  v21 = *MEMORY[0x277D85DE8];

  return v20;
}

- (void)detectLocationOfBurstyGapsFromBurstyDropList:(id)a3 frameInternalTimingList:(id)a4
{
  v36 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  obj = v5;
  v7 = [v5 countByEnumeratingWithState:&v31 objects:v35 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v32;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v32 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v31 + 1) + 8 * i);
        memset(&v30, 0, sizeof(v30));
        if (v11)
        {
          [v11 burstyBaseDuration];
        }

        else
        {
          memset(&time, 0, sizeof(time));
        }

        CMTimeConvertScale(&v30, &time, 600, kCMTimeRoundingMethod_QuickTime);
        value = v30.value;
        v13 = [v11 burstyStart];
        v14 = [v11 burstyLen];
        v15 = v14;
        v16 = v14 - 3;
        if ((v14 - 3) > 0xC)
        {
          v17 = 0;
          v18 = -99;
          goto LABEL_25;
        }

        if (value == 64)
        {
          v17 = 70;
        }

        else
        {
          v17 = 10 * ((value + 5.0) / 10.0);
        }

        v18 = -99;
        if (v17 <= 59)
        {
          v19 = &gap_offset_base40;
          if (v17 != 40)
          {
            if (v17 != 50)
            {
              goto LABEL_25;
            }

            v19 = &gap_offset_base50;
          }
        }

        else
        {
          switch(v17)
          {
            case '<':
              v19 = &gap_offset_base60;
              break;
            case 'F':
              v19 = &gap_offset_base70;
              break;
            case 'P':
              v19 = &gap_offset_base80;
              break;
            default:
              goto LABEL_25;
          }
        }

        v18 = v19[v14];
LABEL_25:
        if ((v14 - 1) >= 2)
        {
          v20 = v18;
        }

        else
        {
          v20 = 0;
        }

        NSLog(&cfstr_FrameDropDetec_7.isa, v17, v13, v14, v20);
        if (v20 != -99)
        {
          v21 = v20 + v13;
          v22 = [v6 objectAtIndexedSubscript:v21];
          [v22 setFramesToBeDuplicated:3];
          [v22 setFrameIsAtBigGap:v15];
          if (v15 == 2)
          {
            v23 = [v6 objectAtIndexedSubscript:v21 + 1];

            [v23 setFramesToBeDuplicated:2];
            [v23 setFrameIsAtBigGap:2];
            v22 = v23;
          }

          else if (v15 == 1)
          {
            [v22 setFramesToBeDuplicated:2];
          }

          else if (v17 == 80)
          {
            if (v16 > 1)
            {
              if (v15 == 7)
              {
                v25 = [v6 objectAtIndexedSubscript:v21 - 1];

                [v25 setFramesToBeDuplicated:2];
                [v25 setFrameIsAtBigGap:7];
                v22 = [v6 objectAtIndexedSubscript:v21 + 1];

                [v22 setFramesToBeDuplicated:2];
                [v22 setFrameIsAtBigGap:7];
              }
            }

            else
            {
              v24 = [v6 objectAtIndexedSubscript:v21 + 1];

              [v24 setFramesToBeDuplicated:2];
              [v24 setFrameIsAtBigGap:v15];
              v22 = v24;
            }
          }
        }
      }

      v8 = [obj countByEnumeratingWithState:&v31 objects:v35 count:16];
    }

    while (v8);
  }

  if (self->_debugPrint)
  {
    NSLog(&cfstr_FrameDropDetec_8.isa);
    [(FRCFrameDropDetector *)self debugPrintFRCFrameInternalTimingInfo:v6];
  }

  v26 = *MEMORY[0x277D85DE8];
}

- (id)detectFrameDropsFromFrameMetadataList:(id)a3 frameTimingList:(id)a4
{
  v6 = a3;
  v7 = [(FRCFrameDropDetector *)self sortFrameTimingListInDisplayOrderFromTimingList:a4];
  sortedTimingList = self->sortedTimingList;
  self->sortedTimingList = v7;

  v9 = [(FRCFrameDropDetector *)self sortFrameMetadataListInDisplayOrderFromMetadataList:v6];

  sortedMetadataList = self->sortedMetadataList;
  self->sortedMetadataList = v9;

  v11 = [(FRCFrameDropDetector *)self calculateFrameDropInfoFromSortedMetadataList:self->sortedMetadataList sortedTimingList:self->sortedTimingList];
  frameInternalPTSList = self->frameInternalPTSList;
  self->frameInternalPTSList = v11;

  v13 = self->frameInternalPTSList;

  return v13;
}

- (id)detectFrameDropsFromFrameTimingList:(id)a3
{
  v4 = a3;
  if ([v4 count])
  {
    v5 = [(FRCFrameDropDetector *)self sortFrameTimingListInDisplayOrderFromTimingList:v4];
    sortedTimingList = self->sortedTimingList;
    self->sortedTimingList = v5;

    v7 = [(FRCFrameDropDetector *)self calculateFrameDurationFromSortedTimingList:self->sortedTimingList];
    frameInternalPTSList = self->frameInternalPTSList;
    self->frameInternalPTSList = v7;

    v9 = [(FRCFrameDropDetector *)self detectFrameDropsFromInternalTimingList:self->frameInternalPTSList];
    frameBurstyDropInfoList = self->frameBurstyDropInfoList;
    self->frameBurstyDropInfoList = v9;

    [(FRCFrameDropDetector *)self detectLocationOfBurstyGapsFromBurstyDropList:self->frameBurstyDropInfoList frameInternalTimingList:self->frameInternalPTSList];
    v11 = self->frameInternalPTSList;
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (void)detectSingleFrameDropsFromInternalTimingList:(id)a3
{
  v30 = *MEMORY[0x277D85DE8];
  v4 = a3;
  memset(&v28, 0, sizeof(v28));
  [(FRCFrameDropDetector *)self droppingThreshold];
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v5 = v4;
  v6 = [v5 countByEnumeratingWithState:&v24 objects:v29 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v25;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v25 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v24 + 1) + 8 * i);
        memset(&v23, 0, sizeof(v23));
        if (v10)
        {
          [v10 frameDuration];
        }

        time1 = v23;
        time2 = v28;
        if (CMTimeCompare(&time1, &time2) == 1)
        {
          if (v10)
          {
            [v10 frameDuration];
            [v10 frameDuration];
            v11 = v17;
          }

          else
          {
            v11 = 0;
            memset(&time2, 0, sizeof(time2));
            v17 = 0;
            v18 = 0;
            v16 = 0;
          }

          CMTimeMake(&rhs, 1, v11);
          CMTimeAdd(&time1, &time2, &rhs);
          CMTimeMultiplyByRatio(&v20, &time1, 1, 2);
          time1 = v20;
          [v10 setInterpolatedFrameDuration:&time1];
          if (v10)
          {
            [v10 interpolatedFrameDuration];
            [v10 frameDuration];
            v12 = v14;
          }

          else
          {
            v12 = 0;
            memset(&time1, 0, sizeof(time1));
            v14 = 0;
          }

          CMTimeConvertScale(&v15, &time1, v12, kCMTimeRoundingMethod_QuickTime);
          time1 = v15;
          [v10 setInterpolatedFrameDuration:&time1];
          [v10 setFramesToBeDuplicated:1];
          ++self->_numberOfInsertionPoints;
          if (v10)
          {
            [v10 frameDuration];
          }

          else
          {
            memset(&time2, 0, sizeof(time2));
          }

          rhs = self->_maximumDuration;
          CMTimeMaximum(&time1, &rhs, &time2);
          self->_maximumDuration = time1;
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v24 objects:v29 count:16];
    }

    while (v7);
  }

  if (self->_debugPrint)
  {
    NSLog(&cfstr_FrameDropDetec_5.isa);
    [(FRCFrameDropDetector *)self debugPrintFRCFrameInternalTimingInfo:v5];
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (id)detectSingleFrameDropsFromFrameTimingList:(id)a3
{
  v4 = [(FRCFrameDropDetector *)self sortFrameTimingListInDisplayOrderFromTimingList:a3];
  sortedTimingList = self->sortedTimingList;
  self->sortedTimingList = v4;

  v6 = [(FRCFrameDropDetector *)self calculateFrameDurationFromSortedTimingList:self->sortedTimingList];
  frameInternalPTSList = self->frameInternalPTSList;
  self->frameInternalPTSList = v6;

  [(FRCFrameDropDetector *)self detectSingleFrameDropsFromInternalTimingList:self->frameInternalPTSList];
  v8 = self->frameInternalPTSList;

  return v8;
}

- (id)buildInsertionPointListFromInternalTimingList:(id)a3 bailOutCode:(int64_t *)a4
{
  v41 = *MEMORY[0x277D85DE8];
  v6 = a3;
  if (![v6 count])
  {
    v19 = 0;
    *a4 = 1;
    goto LABEL_32;
  }

  v7 = objc_alloc_init(MEMORY[0x277CBEB18]);
  insertionPointList = self->insertionPointList;
  self->insertionPointList = v7;

  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v9 = v6;
  v10 = [v9 countByEnumeratingWithState:&v36 objects:v40 count:16];
  if (v10)
  {
    v11 = v10;
    v29 = v6;
    v12 = 0;
    v13 = 0;
    v14 = *v37;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v37 != v14)
        {
          objc_enumerationMutation(v9);
        }

        v16 = *(*(&v36 + 1) + 8 * i);
        v34 = 0uLL;
        v35 = 0;
        if (v16)
        {
          [v16 presentationTimeStamp];
        }

        v17 = objc_alloc_init(FRCFrameInsertionPoint);
        -[FRCFrameInsertionPoint setNumberOfFramesToInsert:](v17, "setNumberOfFramesToInsert:", [v16 framesToBeDuplicated]);
        if (v16)
        {
          [v16 interpolatedFrameDuration];
        }

        else
        {
          v32 = 0uLL;
          v33 = 0;
        }

        v30 = v32;
        v31 = v33;
        [(FRCFrameInsertionPoint *)v17 setInterpolatedFrameDuration:&v30];
        v30 = v34;
        v31 = v35;
        [(FRCFrameInsertionPoint *)v17 setPresentationTimeStamp:&v30];
        [(NSMutableArray *)self->insertionPointList addObject:v17];
        v12 += [v16 framesToBeDuplicated];
      }

      v13 += v11;
      v11 = [v9 countByEnumeratingWithState:&v36 objects:v40 count:16];
    }

    while (v11);
    v18 = v13 - 2;
    v6 = v29;
  }

  else
  {
    v12 = 0;
    v18 = -2;
  }

  if (self->_debugPrint)
  {
    NSLog(&cfstr_FrameDropDetec_9.isa, v12);
  }

  *a4 = 0;
  if (self->_gatingEnabled)
  {
    if (v12 > 17)
    {
      v20 = 2;
LABEL_30:
      *a4 = v20;
      v26 = self->insertionPointList;
      self->insertionPointList = 0;

      goto LABEL_31;
    }

    retimingRecipe = self->_retimingRecipe;
    if (retimingRecipe == 1000 || retimingRecipe <= 3)
    {
      v23 = [(NSMutableArray *)self->insertionPointList objectAtIndexedSubscript:v18];
      v24 = [v23 numberOfFramesToInsert];

      if (v24 < 2)
      {
        goto LABEL_28;
      }

      v22 = 4;
    }

    else
    {
      v22 = 3;
    }

    *a4 = v22;
    v25 = self->insertionPointList;
    self->insertionPointList = 0;
  }

LABEL_28:
  if (!v12)
  {
    v20 = 1;
    goto LABEL_30;
  }

LABEL_31:
  v19 = self->insertionPointList;
LABEL_32:

  v27 = *MEMORY[0x277D85DE8];

  return v19;
}

- (void)scaleNumberOfFramesToInsertFor2xSloMo:(id)a3
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    do
    {
      v7 = 0;
      do
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [*(*(&v9 + 1) + 8 * v7) setNumberOfFramesToInsert:{(2 * objc_msgSend(*(*(&v9 + 1) + 8 * v7), "numberOfFramesToInsert")) | 1}];
        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (unint64_t)countNumberOfFramesWithRecipeInMetadataList:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = *v12;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v3);
        }

        if ([*(*(&v11 + 1) + 8 * i) sequenceAdjusterRecipe])
        {
          ++v6;
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v5);
  }

  else
  {
    v6 = 0;
  }

  v9 = *MEMORY[0x277D85DE8];
  return v6;
}

- (id)selectFrameInsertionPointsFromTimingList:(id)a3 metadataList:(id)a4 sloMo:(BOOL)a5 withError:(id *)a6
{
  v7 = a5;
  v34 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = MEMORY[0x277CC08F0];
  self->_numberOfInsertionPoints = 0;
  self->_maximumDuration = *v12;
  v31 = 0;
  v13 = [v11 count];
  v14 = [(FRCFrameDropDetector *)self countNumberOfFramesWithRecipeInMetadataList:v11];
  if (v13 < 1)
  {
    self->_retimingRecipe = 1000;
    v15 = [(FRCFrameDropDetector *)self detectFrameDropsFromFrameTimingList:v10];
  }

  else if (v14 || !self->_singleDropRecoveryEnabled)
  {
    v15 = [(FRCFrameDropDetector *)self detectFrameDropsFromFrameMetadataList:v11 frameTimingList:v10];
  }

  else
  {
    v15 = [(FRCFrameDropDetector *)self detectSingleFrameDropsFromFrameTimingList:v10];
  }

  frameInternalPTSList = self->frameInternalPTSList;
  self->frameInternalPTSList = v15;

  v17 = [(FRCFrameDropDetector *)self buildInsertionPointListFromInternalTimingList:self->frameInternalPTSList bailOutCode:&v31];
  insertionPointList = self->insertionPointList;
  self->insertionPointList = v17;

  v19 = self->insertionPointList;
  if (v7 && v19)
  {
    [(FRCFrameDropDetector *)self scaleNumberOfFramesToInsertFor2xSloMo:?];
    v19 = self->insertionPointList;
  }

  self->_gatingCause = 0;
  if (a6 && !v19)
  {
    v20 = v31;
    if (v31 > 2)
    {
      if (v31 == 3)
      {
        v22 = [MEMORY[0x277CCACA8] stringWithFormat:@"Bail out at frame drop detection (reason: very low frame rate. recipe=%ld)", self->_retimingRecipe];
        *a6 = [(FRCFrameDropDetector *)self errorWithDescription:v22];

        goto LABEL_22;
      }

      if (v31 == 4)
      {
        v21 = @"Bail out at frame drop detection (reason: burst drop in the end)";
        goto LABEL_20;
      }
    }

    else
    {
      if (v31 == 1)
      {
        v21 = @"Bail out at frame drop detection (reason: no drops detected)";
        goto LABEL_20;
      }

      if (v31 == 2)
      {
        v21 = @"Bail out at frame drop detection (reason: too many drops detected)";
LABEL_20:
        *a6 = [(FRCFrameDropDetector *)self errorWithDescription:v21];
LABEL_22:
        self->_gatingCause = v20;
      }
    }

    logger = self->_logger;
    if (os_log_type_enabled(logger, OS_LOG_TYPE_DEFAULT))
    {
      v24 = *a6;
      v25 = logger;
      v26 = [v24 localizedDescription];
      v27 = [v26 UTF8String];
      *buf = 136315138;
      v33 = v27;
      _os_log_impl(&dword_24A8C8000, v25, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
    }

    v19 = self->insertionPointList;
  }

  v28 = v19;

  v29 = *MEMORY[0x277D85DE8];

  return v28;
}

- (id)errorWithDescription:(id)a3
{
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObject:a3 forKey:*MEMORY[0x277CCA450]];
  v4 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.FRC" code:-22006 userInfo:v3];

  return v4;
}

@end