@interface VCPTrimAnalyzer
- ($AFC8CF76A46F37F9FB23C20884F4FD99)bestTrimTimeRange;
- (BOOL)checkTrimAt:(id *)at captureTime:(id *)time;
- (BOOL)isTimestampSkipable:(id *)skipable;
- (BOOL)shouldCutAt:(id *)at stillPTS:(id *)s withCut:(BOOL)cut;
- (VCPTrimAnalyzer)init;
- (float)calculateCandidateScoreWithRangeAdjust:(int)adjust endIdx:(int)idx candidateTimeRange:(id *)range captureTime:(id *)time;
- (int)analyzeFrameWithTimeRange:(id *)range analysisData:(id)data;
- (int)finalizeWithDestructiveTrimStart:(id *)start trimEnd:(id *)end andCaptureTime:(id *)time;
- (int)generateInterestingTrimBasedOnCaptureTime:(id *)time;
- (int)prepareTrimmingWithTrimStart:(id *)start andTrimEnd:(id *)end;
- (void)generateCurationSegment;
- (void)printSegments:(id)segments;
- (void)updateCurationThreshold;
@end

@implementation VCPTrimAnalyzer

- (VCPTrimAnalyzer)init
{
  v17.receiver = self;
  v17.super_class = VCPTrimAnalyzer;
  v2 = [(VCPTrimAnalyzer *)&v17 init];
  if (v2)
  {
    array = [MEMORY[0x1E695DF70] array];
    v4 = *(v2 + 2);
    *(v2 + 2) = array;

    v5 = objc_alloc_init(VCPActionAnalyzer);
    v6 = *(v2 + 1);
    *(v2 + 1) = v5;

    v7 = MEMORY[0x1E6960C98];
    v8 = *(MEMORY[0x1E6960C98] + 16);
    *(v2 + 24) = *MEMORY[0x1E6960C98];
    *(v2 + 40) = v8;
    *(v2 + 56) = *(v7 + 32);
    v2[76] = 0;
    v9 = MEMORY[0x1E6960CC0];
    *(v2 + 5) = *MEMORY[0x1E6960CC0];
    *(v2 + 12) = *(v9 + 16);
    v10 = MEMORY[0x1E6960C70];
    v16 = *MEMORY[0x1E6960C70];
    *(v2 + 104) = *MEMORY[0x1E6960C70];
    v11 = *(v10 + 16);
    *(v2 + 15) = v11;
    v2[128] = 1;
    v12 = objc_alloc_init(VCPSegment);
    v13 = *(v2 + 17);
    *(v2 + 17) = v12;

    *(v2 + 9) = v16;
    *(v2 + 20) = v11;
    v2[168] = 0;
    v14 = v2;
  }

  return v2;
}

- (int)analyzeFrameWithTimeRange:(id *)range analysisData:(id)data
{
  v6 = [data objectForKeyedSubscript:@"subjectMotionScore"];
  [v6 floatValue];
  v8 = v7;

  actionAnalyzer = self->_actionAnalyzer;
  v10 = *&range->var0.var3;
  *time = *&range->var0.var0;
  *&time[16] = v10;
  v15 = *&range->var1.var1;
  [(VCPActionAnalyzer *)actionAnalyzer analyzeFrameWithTimeRange:time andActionScore:COERCE_DOUBLE(__PAIR64__(DWORD1(v15), LODWORD(v8)))];
  if (self->_firstFrame)
  {
    v11 = *&range->var0.var0;
    self->_inTrimStart.epoch = range->var0.var3;
    *&self->_inTrimStart.value = v11;
    self->_firstFrame = 0;
  }

  if (self->_verbose)
  {
    *time = *&range->var0.var0;
    *&time[16] = range->var0.var3;
    Seconds = CMTimeGetSeconds(time);
    printf("Received action score %f - %f\n", Seconds, v8);
  }

  self->_ready = 1;
  return 0;
}

- (void)updateCurationThreshold
{
  self->_curationThreshold = 0.2;
  if ([(NSMutableArray *)self->_internalResults count])
  {
    v3 = 0;
    v4 = 0.0;
    do
    {
      v5 = [(NSMutableArray *)self->_internalResults objectAtIndexedSubscript:v3];
      [v5 curationScore];
      if (v6 > v4)
      {
        [v5 curationScore];
        v4 = v7;
      }

      ++v3;
    }

    while ([(NSMutableArray *)self->_internalResults count]> v3);
  }

  else
  {
    v4 = 0.0;
  }

  curationThreshold = self->_curationThreshold;
  if (v4 > curationThreshold)
  {
    self->_curationThreshold = (v4 + curationThreshold) * 0.5;
  }
}

- (int)finalizeWithDestructiveTrimStart:(id *)start trimEnd:(id *)end andCaptureTime:(id *)time
{
  if (self->_verbose)
  {
    time = *start;
    Seconds = CMTimeGetSeconds(&time);
    time = *end;
    v10 = CMTimeGetSeconds(&time);
    printf("Destructive Trim Range: [%.2f - %.2f]\n", Seconds, v10);
  }

  actionAnalyzer = self->_actionAnalyzer;
  time = *start;
  v13 = *&end->var0;
  var3 = end->var3;
  [(VCPActionAnalyzer *)actionAnalyzer finalizeWithDestructiveTrimStart:&time trimEnd:&v13];
  [(VCPTrimAnalyzer *)self generateCurationSegment];
  time = *time;
  [(VCPTrimAnalyzer *)self generateInterestingTrimBasedOnCaptureTime:&time];
  return 0;
}

- (void)printSegments:(id)segments
{
  if (self->_verbose)
  {
    printf("=========%s==========\n", [segments UTF8String]);
    internalResults = self->_internalResults;

    [(NSMutableArray *)internalResults enumerateObjectsUsingBlock:&__block_literal_global_95];
  }
}

void __33__VCPTrimAnalyzer_printSegments___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = v2;
  if (v2)
  {
    [v2 timeRange];
    *&time.start.value = v9;
    time.start.epoch = v10;
    Seconds = CMTimeGetSeconds(&time.start);
    [v3 timeRange];
  }

  else
  {
    v10 = 0u;
    v11 = 0u;
    v9 = 0u;
    memset(&time, 0, 24);
    Seconds = CMTimeGetSeconds(&time.start);
    memset(&time, 0, sizeof(time));
  }

  CMTimeRangeGetEnd(&v8, &time);
  v5 = CMTimeGetSeconds(&v8);
  [v3 score];
  printf("[%.2f - %.2f]: %.2f\n", Seconds, v5, v6);
}

- (void)generateCurationSegment
{
  v17 = *MEMORY[0x1E69E9840];
  [(NSMutableArray *)self->_internalResults removeAllObjects];
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  segments = [(VCPActionAnalyzer *)self->_actionAnalyzer segments];
  v4 = [segments countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v13;
    do
    {
      v7 = 0;
      do
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(segments);
        }

        v8 = *(*(&v12 + 1) + 8 * v7);
        v9 = objc_alloc_init(VCPSegment);
        [(VCPSegment *)v9 copyFrom:v8];
        [v8 score];
        [(VCPSegment *)v9 setCurationScore:?];
        [(NSMutableArray *)self->_internalResults addObject:v9];

        ++v7;
      }

      while (v5 != v7);
      v5 = [segments countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v5);
  }

  activeSegment = self->_activeSegment;
  activeSegment = [(VCPActionAnalyzer *)self->_actionAnalyzer activeSegment];
  [(VCPSegment *)activeSegment copyFrom:activeSegment];

  [(VCPSegment *)self->_activeSegment score];
  [(VCPSegment *)self->_activeSegment setCurationScore:?];
  [(VCPTrimAnalyzer *)self updateCurationThreshold];
}

- (int)generateInterestingTrimBasedOnCaptureTime:(id *)time
{
  v5 = 0;
  do
  {
    v6 = v5;
    if ([(NSMutableArray *)self->_internalResults count]<= v5)
    {
      break;
    }

    v7 = [(NSMutableArray *)self->_internalResults objectAtIndexedSubscript:v5];
    v8 = v7;
    if (v7)
    {
      [v7 timeRange];
    }

    else
    {
      memset(&range, 0, sizeof(range));
    }

    *&time.start.value = *&time->var0;
    time.start.epoch = time->var3;
    v9 = CMTimeRangeContainsTime(&range, &time.start);
    ++v5;
  }

  while (!v9);
  v10 = [(NSMutableArray *)self->_internalResults count];
  if (v10 == v6)
  {
    v11 = objc_alloc_init(VCPSegment);
    [(VCPSegment *)v11 copyFrom:self->_activeSegment];
    if (v11)
    {
      [(VCPSegment *)v11 timeRange];
    }

    else
    {
      memset(&range, 0, sizeof(range));
    }

    *&time.start.value = *&time->var0;
    time.start.epoch = time->var3;
    if (!CMTimeRangeContainsTime(&range, &time.start))
    {
      memset(&time, 0, 24);
      *&range.start.value = *&time->var0;
      range.start.epoch = time->var3;
      Seconds = CMTimeGetSeconds(&range.start);
      CMTimeMakeWithSeconds(&time.start, Seconds + 0.300000012, time->var1);
      if (v11)
      {
        [(VCPSegment *)v11 timeRange];
      }

      else
      {
        v46 = 0u;
        v47 = 0u;
        v45 = 0u;
      }

      *&range.start.value = v45;
      range.start.epoch = v46;
      *&end.start.value = *&time.start.value;
      end.start.epoch = time.start.epoch;
      CMTimeRangeFromTimeToTime(&v48, &range.start, &end.start);
      range = v48;
      [(VCPSegment *)v11 setTimeRange:&range];
    }

    [(NSMutableArray *)self->_internalResults addObject:v11];
  }

  if (self->_verbose)
  {
    printf("capturePointSegmentIdx: %d\n", v6);
    v13 = [(NSMutableArray *)self->_internalResults objectAtIndexedSubscript:0];
    v14 = v13;
    if (v13)
    {
      [v13 timeRange];
    }

    else
    {
      v43 = 0u;
      v44 = 0u;
      v42 = 0u;
    }

    *&range.start.value = v42;
    range.start.epoch = v43;
    v15 = CMTimeGetSeconds(&range.start);
    lastObject = [(NSMutableArray *)self->_internalResults lastObject];
    v17 = lastObject;
    if (lastObject)
    {
      [lastObject timeRange];
    }

    else
    {
      memset(&range, 0, sizeof(range));
    }

    CMTimeRangeGetEnd(&time.start, &range);
    v18 = CMTimeGetSeconds(&time.start);
    printf("[%.2f -]\n", v15, v18);
  }

  v19 = 0;
  v37 = *(MEMORY[0x1E6960C98] + 16);
  v38 = *MEMORY[0x1E6960C98];
  *&range.start.value = *MEMORY[0x1E6960C98];
  *&range.start.epoch = v37;
  v36 = *(MEMORY[0x1E6960C98] + 32);
  *&range.duration.timescale = v36;
  v20 = -1.0;
  do
  {
    if (v6 < [(NSMutableArray *)self->_internalResults count])
    {
      v21 = v6;
      do
      {
        *&time.start.value = v38;
        *&time.start.epoch = v37;
        *&time.duration.timescale = v36;
        *&end.start.value = *&time->var0;
        end.start.epoch = time->var3;
        [(VCPTrimAnalyzer *)self calculateCandidateScoreWithRangeAdjust:v19 endIdx:v21 candidateTimeRange:&time captureTime:&end];
        v23 = v22;
        if (v22 > v20)
        {
          *&end.start.value = *&time->var0;
          end.start.epoch = time->var3;
          v24 = CMTimeGetSeconds(&end.start);
          *&end.start.value = *&time.start.value;
          end.start.epoch = time.start.epoch;
          if (v24 - CMTimeGetSeconds(&end.start) >= 1.5)
          {
            range = time;
            v20 = v23;
          }
        }

        if (self->_verbose)
        {
          v25 = [(NSMutableArray *)self->_internalResults count];
          *&end.start.value = *&time.start.value;
          end.start.epoch = time.start.epoch;
          v26 = CMTimeGetSeconds(&end.start);
          end = time;
          CMTimeRangeGetEnd(&v40, &end);
          v27 = CMTimeGetSeconds(&v40);
          *&end.start.value = *&time->var0;
          end.start.epoch = time->var3;
          v28 = CMTimeGetSeconds(&end.start);
          printf("startIdx = %d, endIdx = %d, count = %d, [%f, %f] with score %f captureTime=%f\n", v19, v21, v25, v26, v27, v23, v28);
        }

        v21 = (v21 + 1);
      }

      while (v21 < [(NSMutableArray *)self->_internalResults count]);
    }

    v19 = (v19 + 1);
  }

  while (v6 + 1 != v19);
  if (self->_verbose)
  {
    *&time.start.value = *&range.start.value;
    time.start.epoch = range.start.epoch;
    v29 = CMTimeGetSeconds(&time.start);
    time = range;
    CMTimeRangeGetEnd(&end.start, &time);
    v30 = CMTimeGetSeconds(&end.start);
    printf("interesting trim: [%f, %f], score = %.2f\n", v29, v30, v20);
  }

  if (v20 <= 0.05)
  {
    *&time.start.value = *&time->var0;
    time.start.epoch = time->var3;
    v33 = CMTimeGetSeconds(&time.start);
    CMTimeMakeWithSeconds(&end.start, v33 + -1.5, time->var1);
    v40 = *time;
    CMTimeRangeFromTimeToTime(&time, &end.start, &v40);
    v34 = *&time.start.epoch;
    *&self->_bestTrimTimeRange.start.value = *&time.start.value;
    *&self->_bestTrimTimeRange.start.epoch = v34;
    v32 = *&time.duration.timescale;
  }

  else
  {
    v31 = *&range.start.epoch;
    *&self->_bestTrimTimeRange.start.value = *&range.start.value;
    *&self->_bestTrimTimeRange.start.epoch = v31;
    v32 = *&range.duration.timescale;
  }

  *&self->_bestTrimTimeRange.duration.timescale = v32;
  if (v10 == v6)
  {
    [(NSMutableArray *)self->_internalResults removeLastObject];
  }

  return 0;
}

- (int)prepareTrimmingWithTrimStart:(id *)start andTrimEnd:(id *)end
{
  v33 = 0;
  v34 = &v33;
  v35 = 0x2020000000;
  v36 = 0;
  v29 = 0;
  v30 = &v29;
  v31 = 0x2020000000;
  v32 = [(NSMutableArray *)self->_internalResults count]- 1;
  internalResults = self->_internalResults;
  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __59__VCPTrimAnalyzer_prepareTrimmingWithTrimStart_andTrimEnd___block_invoke;
  v26[3] = &unk_1E8351B38;
  v27 = *start;
  v28 = *end;
  v26[4] = &v33;
  v26[5] = &v29;
  [(NSMutableArray *)internalResults enumerateObjectsUsingBlock:v26];
  for (i = [(NSMutableArray *)self->_internalResults count]- 1; ; i = v10)
  {
    v9 = self->_internalResults;
    if (v30[3] >= i)
    {
      break;
    }

    v10 = i - 1;
    [(NSMutableArray *)v9 removeObjectAtIndex:?];
  }

  v11 = [(NSMutableArray *)v9 objectAtIndexedSubscript:?];
  *&time.start.value = *&end->var0;
  time.start.epoch = end->var3;
  [v11 trimSegment:&time fromStart:0];

  for (j = *(v34 + 6); j >= 1; [(NSMutableArray *)self->_internalResults removeObjectAtIndex:j])
  {
    --j;
  }

  v13 = [(NSMutableArray *)self->_internalResults objectAtIndexedSubscript:0];
  *&time.start.value = *&start->var0;
  time.start.epoch = start->var3;
  [v13 trimSegment:&time fromStart:1];

  if (self->_verbose)
  {
    v14 = [(NSMutableArray *)self->_internalResults objectAtIndexedSubscript:0];
    v15 = v14;
    if (v14)
    {
      [v14 timeRange];
    }

    else
    {
      v24 = 0u;
      v25 = 0u;
      v23 = 0u;
    }

    *&time.start.value = v23;
    time.start.epoch = v24;
    Seconds = CMTimeGetSeconds(&time.start);
    lastObject = [(NSMutableArray *)self->_internalResults lastObject];
    v18 = lastObject;
    if (lastObject)
    {
      [lastObject timeRange];
    }

    else
    {
      memset(&time, 0, sizeof(time));
    }

    CMTimeRangeGetEnd(&v22, &time);
    v19 = CMTimeGetSeconds(&v22);
    printf(" [%.2f -]\n", Seconds, v19);
  }

  _Block_object_dispose(&v29, 8);
  _Block_object_dispose(&v33, 8);
  return 0;
}

void __59__VCPTrimAnalyzer_prepareTrimmingWithTrimStart_andTrimEnd___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = v5;
  if (v5)
  {
    [v5 timeRange];
  }

  else
  {
    memset(&range, 0, sizeof(range));
  }

  v7 = *(a1 + 48);
  if (CMTimeRangeContainsTime(&range, &v7))
  {
    *(*(*(a1 + 32) + 8) + 24) = a3;
  }

  if (v6)
  {
    [v6 timeRange];
  }

  else
  {
    memset(&range, 0, sizeof(range));
  }

  v7 = *(a1 + 72);
  if (CMTimeRangeContainsTime(&range, &v7))
  {
    *(*(*(a1 + 40) + 8) + 24) = a3;
  }
}

- (float)calculateCandidateScoreWithRangeAdjust:(int)adjust endIdx:(int)idx candidateTimeRange:(id *)range captureTime:(id *)time
{
  adjustCopy = adjust;
  v11 = [(NSMutableArray *)self->_internalResults objectAtIndexedSubscript:adjust];
  [v11 curationScore];
  v13 = v12;
  if (v11)
  {
    [v11 timeRange];
  }

  else
  {
    memset(v61, 0, sizeof(v61));
    v60 = 0u;
  }

  v14 = v13;
  *&time.start.value = *&v61[1];
  time.start.epoch = v61[3];
  Seconds = CMTimeGetSeconds(&time.start);
  [v11 curationScore];
  v17 = v16;
  [v11 curationScore];
  v19 = v18;
  if (v11)
  {
    [v11 timeRange];
  }

  else
  {
    v58 = 0u;
    v59 = 0u;
    v57 = 0u;
  }

  v20 = Seconds * v14;
  *&time.start.value = v57;
  time.start.epoch = v58;
  v21 = CMTimeGetSeconds(&time.start);
  if (v11)
  {
    [v11 timeRange];
  }

  else
  {
    memset(&time, 0, sizeof(time));
  }

  v22 = v21;
  CMTimeRangeGetEnd(&start, &time);
  v23 = CMTimeGetSeconds(&start);
  v24 = v23;
  v25 = v20;
  if (adjust < idx)
  {
    v26 = idx - adjustCopy;
    v27 = adjustCopy + 1;
    do
    {
      v28 = v11;
      v11 = [(NSMutableArray *)self->_internalResults objectAtIndexedSubscript:v27];

      [v11 curationScore];
      v30 = v29;
      if (v11)
      {
        [v11 timeRange];
      }

      else
      {
        memset(&v54[11], 0, 48);
      }

      *&time.start.value = *(&v54[12] + 8);
      time.start.epoch = *(&v54[13] + 1);
      v31 = CMTimeGetSeconds(&time.start);
      if (v26 == 1)
      {
        if (v11)
        {
          [v11 timeRange];
        }

        else
        {
          memset(&time, 0, sizeof(time));
        }

        CMTimeRangeGetEnd(&start, &time);
        v24 = CMTimeGetSeconds(&start);
        [v11 curationScore];
        v19 = v32;
      }

      v23 = v25 + v30 * v31;
      v25 = v23;
      ++v27;
      --v26;
    }

    while (v26);
  }

  v33 = v24 - v22;
  if ((v24 - v22) > 1.5)
  {
    *&v23 = v17;
    if (![(VCPTrimAnalyzer *)self isCurated:v23]|| (*&v34 = v19, ![(VCPTrimAnalyzer *)self isCurated:v34]))
    {
      v35 = [(NSMutableArray *)self->_internalResults objectAtIndexedSubscript:adjustCopy];
      v36 = [(NSMutableArray *)self->_internalResults objectAtIndexedSubscript:idx];
      if (v35)
      {
        [v35 timeRange];
      }

      else
      {
        memset(&time, 0, sizeof(time));
      }

      start = *time;
      v37 = CMTimeRangeContainsTime(&time, &start);
      if (v36)
      {
        [v36 timeRange];
      }

      else
      {
        memset(&time, 0, sizeof(time));
      }

      start = *time;
      v38 = CMTimeRangeContainsTime(&time, &start);
      if (!v38)
      {
        *&v39 = v19;
        if (![(VCPTrimAnalyzer *)self isCurated:v39])
        {
          v40 = v33 + -1.5;
          if (v36)
          {
            [v36 timeRange];
          }

          else
          {
            memset(&v54[8], 0, 48);
          }

          *&time.start.value = *(&v54[9] + 8);
          time.start.epoch = *(&v54[10] + 1);
          v39 = CMTimeGetSeconds(&time.start);
          if (v39 < v40)
          {
            if (v36)
            {
              [v36 timeRange];
            }

            else
            {
              memset(&v54[5], 0, 48);
            }

            *&time.start.value = *(&v54[6] + 8);
            time.start.epoch = *(&v54[7] + 1);
            v39 = CMTimeGetSeconds(&time.start);
            v40 = v39;
          }

          v24 = v24 - v40;
          v25 = v25 - (v40 * v19);
        }
      }

      if (v37)
      {
        if ((v24 - v22) <= 1.5)
        {
LABEL_69:

          v33 = v24 - v22;
          goto LABEL_70;
        }

        *&v39 = v17;
        if (![(VCPTrimAnalyzer *)self isCurated:v39])
        {
          v42 = (v24 - v22) + -1.5;
          *&time.start.value = *&time->var0;
          time.start.epoch = time->var3;
          v41 = CMTimeGetSeconds(&time.start) - v22;
          if (v41 <= v42)
          {
            *&time.start.value = *&time->var0;
            time.start.epoch = time->var3;
            v41 = CMTimeGetSeconds(&time.start) - v22;
            v42 = v41;
          }

          v22 = v42 + v22;
          v25 = v25 - (v42 * v17);
        }
      }

      else
      {
        *&v39 = v17;
        if (![(VCPTrimAnalyzer *)self isCurated:v39])
        {
          v43 = (v24 - v22) + -1.5;
          if (v35)
          {
            [v35 timeRange];
          }

          else
          {
            memset(&v54[2], 0, 48);
          }

          *&time.start.value = *(&v54[3] + 8);
          time.start.epoch = *(&v54[4] + 1);
          v41 = CMTimeGetSeconds(&time.start);
          if (v41 < v43)
          {
            if (v35)
            {
              [v35 timeRange];
            }

            else
            {
              memset(v54, 0, 32);
              v53 = 0u;
            }

            *&time.start.value = *(v54 + 8);
            time.start.epoch = *(&v54[1] + 1);
            v41 = CMTimeGetSeconds(&time.start);
            v43 = v41;
          }

          v22 = v43 + v22;
          v25 = v25 - (v43 * v17);
        }

        if ((v24 - v22) <= 1.5)
        {
          goto LABEL_69;
        }
      }

      if (v38)
      {
        *&v41 = v19;
        if (![(VCPTrimAnalyzer *)self isCurated:v41])
        {
          v44 = (v24 - v22) + -1.5;
          if (v36)
          {
            [v36 timeRange];
          }

          else
          {
            memset(&time, 0, sizeof(time));
          }

          CMTimeRangeGetEnd(&start, &time);
          v45 = CMTimeGetSeconds(&start);
          *&time.start.value = *&time->var0;
          time.start.epoch = time->var3;
          if (v45 - CMTimeGetSeconds(&time.start) <= v44)
          {
            if (v36)
            {
              [v36 timeRange];
            }

            else
            {
              memset(&time, 0, sizeof(time));
            }

            CMTimeRangeGetEnd(&start, &time);
            v46 = CMTimeGetSeconds(&start);
            *&time.start.value = *&time->var0;
            time.start.epoch = time->var3;
            v44 = v46 - CMTimeGetSeconds(&time.start);
          }

          v24 = v24 - v44;
          v25 = v25 - (v44 * v19);
        }
      }

      goto LABEL_69;
    }
  }

LABEL_70:
  if (v33 == 0.0)
  {
    v47 = 0.0;
  }

  else
  {
    v47 = v25 / v33;
  }

  v48 = v47 * expf(-((v33 + -1.5) * (v33 + -1.5)) / calculateCandidateScoreWithRangeAdjust_endIdx_candidateTimeRange_captureTime__kDurationSigma[(v33 + -1.5) > 0.0]);
  CMTimeMakeWithSeconds(&start, v22, 600);
  CMTimeMakeWithSeconds(&end, v24, 600);
  CMTimeRangeFromTimeToTime(&time, &start, &end);
  v49 = *&time.start.epoch;
  *&range->var0.var0 = *&time.start.value;
  *&range->var0.var3 = v49;
  *&range->var1.var1 = *&time.duration.timescale;

  return v48;
}

- ($AFC8CF76A46F37F9FB23C20884F4FD99)bestTrimTimeRange
{
  v3 = *&self->var1.var3;
  *&retstr->var0.var0 = *&self->var1.var0;
  *&retstr->var0.var3 = v3;
  *&retstr->var1.var1 = *&self[1].var0.var1;
  return self;
}

- (BOOL)shouldCutAt:(id *)at stillPTS:(id *)s withCut:(BOOL)cut
{
  if (cut)
  {
    v18.start = *at;
    Seconds = CMTimeGetSeconds(&v18.start);
    *&v18.start.value = *&s->var0;
    v18.start.epoch = s->var3;
    if (Seconds <= CMTimeGetSeconds(&v18.start))
    {
      v9 = *&at->var0;
      self->_inTrimStart.epoch = at->var3;
      *&self->_inTrimStart.value = v9;
    }

    return 1;
  }

  else
  {
    if ((self->_captureTime.flags & 1) == 0 || (v18.start = self->_captureTime, time2 = *s, CMTimeCompare(&v18.start, &time2)))
    {
      v11 = *&s->var0;
      self->_captureTime.epoch = s->var3;
      *&self->_captureTime.value = v11;
      v12 = MEMORY[0x1E6960C98];
      v13 = *(MEMORY[0x1E6960C98] + 16);
      *&self->_bestTrimTimeRange.start.value = *MEMORY[0x1E6960C98];
      *&self->_bestTrimTimeRange.start.epoch = v13;
      *&self->_bestTrimTimeRange.duration.timescale = *(v12 + 32);
    }

    *&v18.start.value = *&at->var0;
    v18.start.epoch = at->var3;
    v14 = CMTimeGetSeconds(&v18.start);
    *&v18.start.value = *&s->var0;
    v18.start.epoch = s->var3;
    if (v14 >= CMTimeGetSeconds(&v18.start) || (self->_bestTrimTimeRange.start.flags & 1) == 0 || (self->_bestTrimTimeRange.duration.flags & 1) == 0 || self->_bestTrimTimeRange.duration.epoch || self->_bestTrimTimeRange.duration.value < 0)
    {
      if ([(NSMutableArray *)self->_internalResults count]&& (*&v18.start.value = *&at->var0, v18.start.epoch = at->var3, [(VCPTrimAnalyzer *)self isTimestampSkipable:&v18]))
      {
        return 0;
      }

      else
      {
        actionAnalyzer = self->_actionAnalyzer;
        *&v18.start.value = *&s->var0;
        v18.start.epoch = s->var3;
        time2 = self->_inTrimStart;
        [(VCPActionAnalyzer *)actionAnalyzer postProcessSegmentsWithCaptureTime:&v18 trimStart:&time2];
        [(VCPTrimAnalyzer *)self generateCurationSegment];
        *&v18.start.value = *&at->var0;
        v18.start.epoch = at->var3;
        time2 = *s;
        return [(VCPTrimAnalyzer *)self checkTrimAt:&v18 captureTime:&time2];
      }
    }

    else
    {
      v16 = *&self->_bestTrimTimeRange.start.epoch;
      *&v18.start.value = *&self->_bestTrimTimeRange.start.value;
      *&v18.start.epoch = v16;
      v17 = *&at->var0;
      *&v18.duration.timescale = *&self->_bestTrimTimeRange.duration.timescale;
      *&time2.value = v17;
      time2.epoch = at->var3;
      return CMTimeRangeContainsTime(&v18, &time2) == 0;
    }
  }
}

- (BOOL)isTimestampSkipable:(id *)skipable
{
  v5 = 0;
  v6 = [(NSMutableArray *)self->_internalResults count];
  do
  {
    if (v6 < 1)
    {
      v10 = 0;
      v7 = v5;
      goto LABEL_23;
    }

    v7 = [(NSMutableArray *)self->_internalResults objectAtIndex:--v6];

    if (v7)
    {
      [v7 timeRange];
    }

    else
    {
      memset(&range, 0, sizeof(range));
    }

    time = *skipable;
    if (CMTimeRangeContainsTime(&range, &time))
    {
      break;
    }

    *&range.start.value = *&skipable->var0;
    range.start.epoch = skipable->var3;
    Seconds = CMTimeGetSeconds(&range.start);
    if (v7)
    {
      [v7 timeRange];
    }

    else
    {
      memset(&range, 0, sizeof(range));
    }

    CMTimeRangeGetEnd(&time, &range);
    v5 = v7;
  }

  while (Seconds <= CMTimeGetSeconds(&time));
  *&range.start.value = *&skipable->var0;
  range.start.epoch = skipable->var3;
  v9 = CMTimeGetSeconds(&range.start);
  if (v7)
  {
    [v7 timeRange];
  }

  else
  {
    v14 = 0;
    v13 = 0u;
  }

  *&range.start.value = v13;
  range.start.epoch = v14;
  if (v9 <= CMTimeGetSeconds(&range.start))
  {
    goto LABEL_22;
  }

  *&range.start.value = *&skipable->var0;
  range.start.epoch = skipable->var3;
  v11 = CMTimeGetSeconds(&range.start);
  if (v7)
  {
    [v7 timeRange];
  }

  else
  {
    memset(&range, 0, sizeof(range));
  }

  CMTimeRangeGetEnd(&time, &range);
  if (v11 < CMTimeGetSeconds(&time) && ([v7 curationScore], -[VCPTrimAnalyzer isCurated:](self, "isCurated:")))
  {
    v10 = 1;
  }

  else
  {
LABEL_22:
    v10 = 0;
  }

LABEL_23:

  return v10;
}

- (BOOL)checkTrimAt:(id *)at captureTime:(id *)time
{
  time.start = *at;
  Seconds = CMTimeGetSeconds(&time.start);
  time.start = *time;
  if (Seconds <= CMTimeGetSeconds(&time.start))
  {
    *&time.start.value = *&time->var0;
    time.start.epoch = time->var3;
    [(VCPTrimAnalyzer *)self generateInterestingTrimBasedOnCaptureTime:&time];
    v9 = *&self->_bestTrimTimeRange.start.epoch;
    *&time.start.value = *&self->_bestTrimTimeRange.start.value;
    *&time.start.epoch = v9;
    *&time.duration.timescale = *&self->_bestTrimTimeRange.duration.timescale;
    v15 = *at;
    return CMTimeRangeContainsTime(&time, &v15) == 0;
  }

  else
  {
    *&time.start.value = *&at->var0;
    time.start.epoch = at->var3;
    if ([(VCPTrimAnalyzer *)self isTimestampSkipable:&time])
    {
      return 0;
    }

    *&time.start.value = *&at->var0;
    time.start.epoch = at->var3;
    v10 = CMTimeGetSeconds(&time.start);
    activeSegment = self->_activeSegment;
    if (activeSegment)
    {
      [(VCPSegment *)activeSegment timeRange];
    }

    else
    {
      v14 = 0;
      v13 = 0u;
    }

    *&time.start.value = v13;
    time.start.epoch = v14;
    if (v10 > CMTimeGetSeconds(&time.start) && ([(VCPSegment *)self->_activeSegment curationScore], [(VCPTrimAnalyzer *)self isCurated:?]))
    {
      return 0;
    }

    else
    {
      *&time.start.value = *&at->var0;
      time.start.epoch = at->var3;
      v12 = CMTimeGetSeconds(&time.start);
      *&time.start.value = *&self->_bestTrimTimeRange.start.value;
      time.start.epoch = self->_bestTrimTimeRange.start.epoch;
      return v12 - CMTimeGetSeconds(&time.start) >= 3.0;
    }
  }
}

@end