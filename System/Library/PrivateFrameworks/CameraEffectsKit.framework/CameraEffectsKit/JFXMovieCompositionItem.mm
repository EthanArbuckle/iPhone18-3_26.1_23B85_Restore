@interface JFXMovieCompositionItem
- ($AC64C642040120CEEAD84DEEACA9A5CE)applySpeed:(SEL)speed;
- (BOOL)hasVideoContent;
- (BOOL)needAudioLoop;
- (JFXMovieCompositionItem)initWithClip:(id)clip timeScale:(int)scale;
- (id)audioTrackSegmentsLoopedForDestinationTimeRange:(id *)range;
- (id)audioTrackSegmentsLoopedWithDestinationTime:(id *)time;
- (id)audioTrackSegmentsWithDestinationTime:(id *)time;
- (id)audioTrackSegmentsWithDestinationTime:(id *)time paddedFromTime:(id *)fromTime;
- (id)segmentWithCharacteristic:(id)characteristic sourceRange:(id *)range destinationRange:(id *)destinationRange;
- (id)speedRangesForSourceRange:(id *)range destinationRange:(id *)destinationRange;
- (id)videoTrackSegmentsWithDestinationRange:(id *)range;
@end

@implementation JFXMovieCompositionItem

- (JFXMovieCompositionItem)initWithClip:(id)clip timeScale:(int)scale
{
  v4 = *&scale;
  clipCopy = clip;
  v16.receiver = self;
  v16.super_class = JFXMovieCompositionItem;
  v7 = [(JFXCompositionItem *)&v16 initWithClip:clipCopy timeScale:v4];
  if (v7 && [clipCopy mediaType] == 1)
  {
    mediaItem = [clipCopy mediaItem];
    if ([clipCopy isAssetUnavailable])
    {
      v9 = objc_alloc(MEMORY[0x277CE6650]);
      v10 = MEMORY[0x277CBEBC0];
      jfxBundle = [MEMORY[0x277CCA8D8] jfxBundle];
      v12 = [jfxBundle pathForResource:@"blhack" ofType:@"mov"];
      v13 = [v10 fileURLWithPath:v12];
      v14 = [v9 initWithURL:v13 options:0];
      [(JFXMovieCompositionItem *)v7 setAsset:v14];
    }

    else
    {
      jfxBundle = [mediaItem avAsset];
      [(JFXMovieCompositionItem *)v7 setAsset:jfxBundle];
    }
  }

  return v7;
}

- (BOOL)hasVideoContent
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  v3 = dispatch_semaphore_create(0);
  asset = [(JFXMovieCompositionItem *)self asset];
  v5 = *MEMORY[0x277CE5E40];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __42__JFXMovieCompositionItem_hasVideoContent__block_invoke;
  v8[3] = &unk_278D7AA80;
  v10 = &v11;
  v6 = v3;
  v9 = v6;
  [asset loadTracksWithMediaCharacteristic:v5 completionHandler:v8];

  dispatch_semaphore_wait(v6, 0xFFFFFFFFFFFFFFFFLL);
  LOBYTE(asset) = *(v12 + 24);

  _Block_object_dispose(&v11, 8);
  return asset;
}

intptr_t __42__JFXMovieCompositionItem_hasVideoContent__block_invoke(uint64_t a1, void *a2)
{
  if ([a2 count])
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
  }

  v3 = *(a1 + 32);

  return dispatch_semaphore_signal(v3);
}

- (BOOL)needAudioLoop
{
  audioAssetOverwrite = [(JFXMovieCompositionItem *)self audioAssetOverwrite];
  v3 = audioAssetOverwrite != 0;

  return v3;
}

- (id)segmentWithCharacteristic:(id)characteristic sourceRange:(id *)range destinationRange:(id *)destinationRange
{
  characteristicCopy = characteristic;
  v30 = 0;
  v31 = &v30;
  v32 = 0x3032000000;
  v33 = __Block_byref_object_copy__26;
  v34 = __Block_byref_object_dispose__26;
  v35 = 0;
  asset = [(JFXMovieCompositionItem *)self asset];
  audioAssetOverwrite = [(JFXMovieCompositionItem *)self audioAssetOverwrite];
  v11 = audioAssetOverwrite;
  if (characteristicCopy && audioAssetOverwrite)
  {
    v12 = [characteristicCopy isEqualToString:*MEMORY[0x277CE5DE0]];

    if (!v12)
    {
      goto LABEL_6;
    }

    [(JFXMovieCompositionItem *)self audioAssetOverwrite];
    asset = v11 = asset;
  }

LABEL_6:
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v13 = dispatch_semaphore_create(0);
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v14 = *&range->var0.var3;
    v24 = *&range->var0.var0;
    v25 = v14;
    v19[2] = __82__JFXMovieCompositionItem_segmentWithCharacteristic_sourceRange_destinationRange___block_invoke;
    v19[3] = &unk_278D7D288;
    v26 = *&range->var1.var1;
    v19[4] = self;
    v23 = &v30;
    v20 = asset;
    v15 = *&destinationRange->var0.var3;
    v27 = *&destinationRange->var0.var0;
    v28 = v15;
    v29 = *&destinationRange->var1.var1;
    v21 = characteristicCopy;
    v16 = v13;
    v22 = v16;
    [v20 loadTracksWithMediaCharacteristic:v21 completionHandler:v19];
    dispatch_semaphore_wait(v16, 0xFFFFFFFFFFFFFFFFLL);
    v17 = v31[5];
  }

  else
  {
    v16 = JFXLog_playback();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      [JFXMovieCompositionItem segmentWithCharacteristic:asset sourceRange:v16 destinationRange:?];
    }

    v17 = 0;
  }

  _Block_object_dispose(&v30, 8);

  return v17;
}

void __82__JFXMovieCompositionItem_segmentWithCharacteristic_sourceRange_destinationRange___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 count])
  {
    v4 = [v3 objectAtIndex:0];
    v5 = *(a1 + 88);
    *v17 = *(a1 + 72);
    *&v17[16] = v5;
    v18 = *(a1 + 104);
    CMTimeMake(time2, 0, [*(a1 + 32) timeScale]);
    v13 = *(a1 + 72);
    *&v14 = *(a1 + 88);
    CMTimeMaximum(v17, &v13, time2);
    v6 = MEMORY[0x277CE64C0];
    v7 = [*(a1 + 40) URL];
    v8 = [v4 trackID];
    time2[0] = *v17;
    time2[1] = *&v17[16];
    time2[2] = v18;
    v9 = *(a1 + 136);
    v13 = *(a1 + 120);
    v14 = v9;
    v15 = *(a1 + 152);
    v10 = [v6 compositionTrackSegmentWithURL:v7 trackID:v8 sourceTimeRange:time2 targetTimeRange:&v13];
    v11 = *(*(a1 + 64) + 8);
    v12 = *(v11 + 40);
    *(v11 + 40) = v10;
  }

  else
  {
    v4 = JFXLog_DebugPlayback();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      __82__JFXMovieCompositionItem_segmentWithCharacteristic_sourceRange_destinationRange___block_invoke_cold_1(a1, v4);
    }
  }

  dispatch_semaphore_signal(*(a1 + 56));
}

- ($AC64C642040120CEEAD84DEEACA9A5CE)applySpeed:(SEL)speed
{
  v6 = *&a4->var0.var3;
  *&retstr->var0.var0 = *&a4->var0.var0;
  *&retstr->var0.var3 = v6;
  *&retstr->var1.var1 = *&a4->var1.var1;
  result = [(JFXCompositionItem *)self speed];
  if (v8 != 1.0)
  {
    if (retstr->var0.var0)
    {
      [(JFXCompositionItem *)self speed];
      time = retstr->var0;
      CMTimeMultiplyByFloat64(retstr, &time, v9 + 0.0001);
    }

    else
    {
      CMTimeMake(retstr, 1, 1000);
    }

    [(JFXCompositionItem *)self speed];
    var1 = retstr->var1;
    result = CMTimeMultiplyByFloat64(&time, &var1, v10 + 0.0001);
    retstr->var1 = time;
  }

  return result;
}

- (id)speedRangesForSourceRange:(id *)range destinationRange:(id *)destinationRange
{
  v13[1] = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x277CCAE60];
  v5 = *&range->var0.var3;
  *&source.start.value = *&range->var0.var0;
  *&source.start.epoch = v5;
  *&source.duration.timescale = *&range->var1.var1;
  v6 = *&destinationRange->var0.var3;
  *&v10.start.value = *&destinationRange->var0.var0;
  *&v10.start.epoch = v6;
  *&v10.duration.timescale = *&destinationRange->var1.var1;
  CMTimeMappingMake(&v12, &source, &v10);
  v7 = [v4 valueWithCMTimeMapping:&v12];
  v13[0] = v7;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:1];

  return v8;
}

- (id)videoTrackSegmentsWithDestinationRange:(id *)range
{
  selfCopy = self;
  v44 = *MEMORY[0x277D85DE8];
  memset(&v40, 0, sizeof(v40));
  [(JFXCompositionItem *)self sourceTimeRange];
  array = [MEMORY[0x277CBEB18] array];
  if ([(JFXCompositionItem *)selfCopy isFreezeFrame])
  {
    v40.duration.timescale *= 1000;
    v5 = MEMORY[0x277CCAE60];
    source = v40;
    v6 = *&range->var0.var3;
    *&target.start.value = *&range->var0.var0;
    *&target.start.epoch = v6;
    *&target.duration.timescale = *&range->var1.var1;
    CMTimeMappingMake(&v39, &source, &target);
    v7 = [v5 valueWithCMTimeMapping:&v39];
    v42 = v7;
    v8 = [MEMORY[0x277CBEA60] arrayWithObjects:&v42 count:1];
  }

  else
  {
    v39.source = v40;
    v9 = *&range->var0.var3;
    *&source.start.value = *&range->var0.var0;
    *&source.start.epoch = v9;
    *&source.duration.timescale = *&range->var1.var1;
    v8 = [(JFXMovieCompositionItem *)selfCopy speedRangesForSourceRange:&v39 destinationRange:&source];
  }

  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  obj = v8;
  v10 = [obj countByEnumeratingWithState:&v34 objects:v41 count:16];
  if (v10)
  {
    v12 = v10;
    v13 = *v35;
    v31 = *MEMORY[0x277CE5E40];
    *&v11 = 134218240;
    v27 = v11;
    do
    {
      v14 = 0;
      v28 = v12;
      do
      {
        if (*v35 != v13)
        {
          objc_enumerationMutation(obj);
        }

        v15 = *(*(&v34 + 1) + 8 * v14);
        memset(&v39, 0, sizeof(v39));
        if (v15)
        {
          [v15 CMTimeMappingValue];
          value = v39.source.start.value;
          v17 = v39.source.duration.value;
          v18 = v39.target.start.value;
          v19 = v39.target.duration.value;
        }

        else
        {
          v19 = 0;
          v18 = 0;
          v17 = 0;
          value = 0;
        }

        *&source.start.timescale = *&v39.source.start.timescale;
        source.start.value = value;
        source.duration.value = v17;
        *&source.duration.timescale = *&v39.source.duration.timescale;
        *&target.start.timescale = *&v39.target.start.timescale;
        target.start.value = v18;
        target.duration.value = v19;
        *&target.duration.timescale = *&v39.target.duration.timescale;
        v20 = [(JFXMovieCompositionItem *)selfCopy segmentWithCharacteristic:v31 sourceRange:&source destinationRange:&target, v27];
        if (v20)
        {
          [array addObject:v20];
        }

        else
        {
          v21 = v13;
          v22 = selfCopy;
          v23 = JFXLog_DebugComposition();
          if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
          {
            [(JFXMovieCompositionItem *)&buf videoTrackSegmentsWithDestinationRange:v33, v23];
          }

          v24 = JFXLog_DebugComposition();
          if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
          {
            LODWORD(source.start.value) = v27;
            *(&source.start.value + 4) = value;
            LOWORD(source.start.flags) = 2048;
            *(&source.start.flags + 2) = v17;
            _os_log_debug_impl(&dword_242A3B000, v24, OS_LOG_TYPE_DEBUG, "  sourceRange was (%lld, %lld)", &source, 0x16u);
          }

          v25 = JFXLog_DebugComposition();
          if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
          {
            LODWORD(source.start.value) = v27;
            *(&source.start.value + 4) = v18;
            LOWORD(source.start.flags) = 2048;
            *(&source.start.flags + 2) = v19;
            _os_log_debug_impl(&dword_242A3B000, v25, OS_LOG_TYPE_DEBUG, "  destinationTime was (%lld, %lld)", &source, 0x16u);
          }

          selfCopy = v22;
          v13 = v21;
          v12 = v28;
        }

        ++v14;
      }

      while (v12 != v14);
      v12 = [obj countByEnumeratingWithState:&v34 objects:v41 count:16];
    }

    while (v12);
  }

  return array;
}

- (id)audioTrackSegmentsWithDestinationTime:(id *)time
{
  v7 = *time;
  v5 = *MEMORY[0x277CC0898];
  v6 = *(MEMORY[0x277CC0898] + 16);
  v3 = [(JFXMovieCompositionItem *)self audioTrackSegmentsWithDestinationTime:&v7 paddedFromTime:&v5];

  return v3;
}

- (id)audioTrackSegmentsWithDestinationTime:(id *)time paddedFromTime:(id *)fromTime
{
  v44 = *MEMORY[0x277D85DE8];
  memset(v42, 0, sizeof(v42));
  v41 = 0u;
  [(JFXCompositionItem *)self sourceTimeRange];
  if ([(JFXCompositionItem *)self isFreezeFrame])
  {
    [(JFXCompositionItem *)self destinationDuration];
    *(v42 + 8) = *rhs;
    *(&v42[1] + 1) = *&rhs[16];
  }

  [(JFXCompositionItem *)self audioStartOffset];
  *lhs = *&time->var0;
  *&lhs[16] = time->var3;
  CMTimeAdd(&v39, lhs, rhs);
  memset(&v40[8], 0, 24);
  [(JFXCompositionItem *)self destinationDuration];
  [(JFXCompositionItem *)self audioStartOffset];
  CMTimeSubtract(lhs, rhs, time2);
  [(JFXCompositionItem *)self audioEndOffset];
  CMTimeAdd(rhs, lhs, time2);
  *&v40[8] = *rhs;
  *&v40[24] = *&rhs[16];
  array = [MEMORY[0x277CBEB18] array];
  v8 = MEMORY[0x277CC08F0];
  if (fromTime->var2)
  {
    standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
    v10 = [standardUserDefaults BOOLForKey:@"enableGapSyncWorkaround"];

    if (v10)
    {
      memset(rhs, 0, 24);
      *lhs = v39;
      *&lhs[16] = *v40;
      *time2 = *&fromTime->var0;
      *&time2[16] = fromTime->var3;
      CMTimeSubtract(rhs, lhs, time2);
      *lhs = *rhs;
      *&lhs[16] = *&rhs[16];
      *time2 = *v8;
      *&time2[16] = *(v8 + 16);
      if (CMTimeCompare(lhs, time2) >= 1)
      {
        *lhs = *rhs;
        *&lhs[16] = *&rhs[16];
        *time2 = v41;
        *&time2[16] = *&v42[0];
        if (CMTimeCompare(lhs, time2) >= 1)
        {
          *rhs = v41;
          *&rhs[16] = *&v42[0];
        }

        *time2 = v39;
        *&time2[16] = *v40;
        v23 = *rhs;
        *&v24 = *&rhs[16];
        CMTimeSubtract(lhs, time2, &v23);
        v39 = *lhs;
        *v40 = *&lhs[16];
        *time2 = *&v40[8];
        *&time2[16] = *&v40[24];
        v23 = *rhs;
        *&v24 = *&rhs[16];
        CMTimeAdd(lhs, time2, &v23);
        *&v40[8] = *lhs;
        *&v40[24] = *&lhs[16];
        *time2 = v41;
        *&time2[16] = *&v42[0];
        v23 = *rhs;
        *&v24 = *&rhs[16];
        CMTimeSubtract(lhs, time2, &v23);
        v41 = *lhs;
        *&v42[0] = *&lhs[16];
        *time2 = *(v42 + 8);
        *&time2[16] = *(&v42[1] + 1);
        v23 = *rhs;
        *&v24 = *&rhs[16];
        CMTimeAdd(lhs, time2, &v23);
        *(v42 + 8) = *lhs;
        *(&v42[1] + 1) = *&lhs[16];
      }
    }
  }

  *rhs = v39;
  *&rhs[16] = *v40;
  *lhs = *v8;
  *&lhs[16] = *(v8 + 16);
  if (!CMTimeCompare(rhs, lhs))
  {
    standardUserDefaults2 = [MEMORY[0x277CBEBD0] standardUserDefaults];
    v12 = [standardUserDefaults2 BOOLForKey:@"enableStartupSyncWorkaround"];

    if (v12)
    {
      memset(rhs, 0, 24);
      CMTimeMake(rhs, -1, [(JFXCompositionItem *)self timeScale]);
      *time2 = v39;
      *&time2[16] = *v40;
      v23 = *rhs;
      *&v24 = *&rhs[16];
      CMTimeSubtract(lhs, time2, &v23);
      v39 = *lhs;
      *v40 = *&lhs[16];
      *time2 = *&v40[8];
      *&time2[16] = *&v40[24];
      v23 = *rhs;
      *&v24 = *&rhs[16];
      CMTimeAdd(lhs, time2, &v23);
      *&v40[8] = *lhs;
      *&v40[24] = *&lhs[16];
      *time2 = v41;
      *&time2[16] = *&v42[0];
      v23 = *rhs;
      *&v24 = *&rhs[16];
      CMTimeSubtract(lhs, time2, &v23);
      v41 = *lhs;
      *&v42[0] = *&lhs[16];
      *time2 = *(v42 + 8);
      *&time2[16] = *(&v42[1] + 1);
      v23 = *rhs;
      *&v24 = *&rhs[16];
      CMTimeAdd(lhs, time2, &v23);
      *(v42 + 8) = *lhs;
      *(&v42[1] + 1) = *&lhs[16];
    }
  }

  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  *rhs = v41;
  *&rhs[16] = v42[0];
  v29 = v42[1];
  *lhs = v39;
  *&lhs[16] = *v40;
  v34 = *&v40[16];
  v13 = [(JFXMovieCompositionItem *)self speedRangesForSourceRange:rhs destinationRange:lhs];
  v14 = [v13 countByEnumeratingWithState:&v35 objects:v43 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v36;
    v17 = *MEMORY[0x277CE5DE0];
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v36 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v19 = *(*(&v35 + 1) + 8 * i);
        v31 = 0u;
        v32 = 0u;
        v29 = 0u;
        v30 = 0u;
        memset(rhs, 0, sizeof(rhs));
        if (v19)
        {
          [v19 CMTimeMappingValue];
        }

        *time2 = *rhs;
        *&time2[16] = *&rhs[16];
        v27 = v29;
        *lhs = v30;
        *&lhs[16] = v31;
        v34 = v32;
        v23 = v30;
        v24 = v31;
        v25 = v32;
        v20 = [(JFXMovieCompositionItem *)self segmentWithCharacteristic:v17 sourceRange:time2 destinationRange:&v23];
        if (!v20)
        {
          *time2 = *lhs;
          *&time2[16] = *&lhs[16];
          v27 = v34;
          v20 = [(JFXCompositionItem *)self emptyTrackSegmentWithDestinationRange:time2];
          if (!v20)
          {
            continue;
          }
        }

        v21 = v20;
        [array addObject:v20];
      }

      v15 = [v13 countByEnumeratingWithState:&v35 objects:v43 count:16];
    }

    while (v15);
  }

  return array;
}

- (id)audioTrackSegmentsLoopedWithDestinationTime:(id *)time
{
  [(JFXCompositionItem *)self audioStartOffset];
  lhs = *time;
  CMTimeAdd(&v12, &lhs, &v7);
  memset(&v13[8], 0, 24);
  [(JFXCompositionItem *)self destinationDuration];
  [(JFXCompositionItem *)self audioStartOffset];
  CMTimeSubtract(&lhs, &v7, &rhs);
  [(JFXCompositionItem *)self audioEndOffset];
  CMTimeAdd(&v7, &lhs, &rhs);
  *&v13[24] = v8;
  *&v13[8] = v7;
  v7 = v12;
  v8 = *v13;
  v9 = *&v13[16];
  v5 = [(JFXMovieCompositionItem *)self audioTrackSegmentsLoopedForDestinationTimeRange:&v7];

  return v5;
}

- (id)audioTrackSegmentsLoopedForDestinationTimeRange:(id *)range
{
  array = [MEMORY[0x277CBEA60] array];
  audioAssetOverwrite = [(JFXMovieCompositionItem *)self audioAssetOverwrite];

  if (audioAssetOverwrite)
  {
    [(JFXMovieCompositionItem *)self audioAssetOverwrite];
  }

  else
  {
    [(JFXMovieCompositionItem *)self asset];
  }
  v7 = ;
  v8 = v7;
  memset(&v31, 0, sizeof(v31));
  if (v7)
  {
    [v7 duration];
  }

  else
  {
    memset(&time, 0, 24);
  }

  [(JFXCompositionItem *)self speed];
  CMTimeMultiplyByFloat64(v30, &time.start, 1.0 / v9);
  CMTimeConvertScale(&v31, v30, [(JFXCompositionItem *)self timeScale], kCMTimeRoundingMethod_RoundHalfAwayFromZero);
  memset(v30, 0, sizeof(v30));
  [(JFXCompositionItem *)self sourceTimeRange];
  if (audioAssetOverwrite)
  {
    *&time.start.value = v28;
    time.start.epoch = v29;
    CMTimeMake(rhs, [(JFXMovieCompositionItem *)self audioAssetOverwriteStartOffset], [(JFXCompositionItem *)self timeScale]);
    CMTimeAdd(v30, &time.start, rhs);
  }

  else
  {
    v30[0] = v27;
  }

  time.start = v30[0];
  *rhs = v31;
  if (CMTimeCompare(&time.start, rhs) >= 1)
  {
    do
    {
      *rhs = v30[0];
      *time2 = v31;
      CMTimeSubtract(&time.start, rhs, time2);
      v30[0] = time.start;
      *rhs = v31;
    }

    while (CMTimeCompare(&time.start, rhs) > 0);
  }

  v10 = *&range->var0.var3;
  var0 = range->var0;
  memset(&v25, 0, sizeof(v25));
  v11 = *&range->var1.var1;
  *&time.start.value = *&range->var0.var0;
  *&time.start.epoch = v10;
  *&time.duration.timescale = v11;
  CMTimeRangeGetEnd(&v25, &time);
  time.start = var0;
  *rhs = v25;
  if (CMTimeCompare(&time.start, rhs) < 0)
  {
    v16 = *MEMORY[0x277CE5DE0];
    while (1)
    {
      time.start = v31;
      *time2 = v30[0];
      CMTimeSubtract(rhs, &time.start, time2);
      time.start = v25;
      v19.start = var0;
      CMTimeSubtract(time2, &time.start, &v19.start);
      CMTimeMinimum(&time.start, rhs, time2);
      v30[1] = time.start;
      if (v31.value <= 0)
      {
        *rhs = v25;
        *time2 = var0;
        CMTimeSubtract(&time.start, rhs, time2);
        v30[1] = time.start;
        if (v31.value < 1)
        {
          break;
        }
      }

      memset(&time, 0, sizeof(time));
      *rhs = var0;
      *time2 = v30[1];
      CMTimeRangeMake(&time, rhs, time2);
      v23 = 0u;
      *time2 = *&v30[0].value;
      *&time2[16] = *&v30[0].epoch;
      v21 = *&v30[1].timescale;
      memset(rhs, 0, sizeof(rhs));
      [(JFXMovieCompositionItem *)self applySpeed:time2];
      *time2 = *rhs;
      *&time2[16] = *&rhs[16];
      v21 = v23;
      v19 = time;
      v17 = [(JFXMovieCompositionItem *)self segmentWithCharacteristic:v16 sourceRange:time2 destinationRange:&v19];
      if (!v17)
      {
        break;
      }

      v18 = v17;
      v12 = [array arrayByAddingObject:v17];

      *time2 = var0;
      v19.start = v30[1];
      CMTimeAdd(&var0, time2, &v19.start);
      CMTimeMake(time2, 0, [(JFXCompositionItem *)self timeScale]);
      v30[0] = *time2;

      time.start = var0;
      *rhs = v25;
      array = v12;
      if ((CMTimeCompare(&time.start, rhs) & 0x80000000) == 0)
      {
        goto LABEL_14;
      }
    }
  }

  v12 = array;
LABEL_14:
  if (![v12 count])
  {
    time.start = v25;
    v13 = [(JFXCompositionItem *)self emptyTrackSegmentWithDestinationTime:&time];
    if (v13)
    {
      v14 = [v12 arrayByAddingObject:v13];

      v12 = v14;
    }
  }

  return v12;
}

- (void)segmentWithCharacteristic:(uint64_t)a1 sourceRange:(NSObject *)a2 destinationRange:.cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_debug_impl(&dword_242A3B000, a2, OS_LOG_TYPE_DEBUG, "Can only create an AVCompositionTrackSegment from a AVURLAsset, not %@", &v2, 0xCu);
}

void __82__JFXMovieCompositionItem_segmentWithCharacteristic_sourceRange_destinationRange___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 40);
  v3 = *(a1 + 48);
  v4 = 138412546;
  v5 = v2;
  v6 = 2112;
  v7 = v3;
  _os_log_debug_impl(&dword_242A3B000, a2, OS_LOG_TYPE_DEBUG, "Asset %@ appears to not have any tracks with characteristic %@", &v4, 0x16u);
}

- (void)videoTrackSegmentsWithDestinationRange:(os_log_t)log .cold.1(uint8_t *buf, _BYTE *a2, os_log_t log)
{
  *buf = 0;
  *a2 = 0;
  _os_log_debug_impl(&dword_242A3B000, log, OS_LOG_TYPE_DEBUG, "segmentWithCharacteristic returned nil !", buf, 2u);
}

@end