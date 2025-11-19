@interface VCPActionAnalyzer
- (BOOL)decideSegmentPointBasedOnActionScore:(float)a3;
- (BOOL)decideSegmentPointUsingHinkleyDetector:(float)a3;
- (VCPActionAnalyzer)init;
- (int)analyzeFrameWithTimeRange:(id *)a3 andActionScore:(float)a4;
- (int)finalizeWithDestructiveTrimStart:(id *)a3 trimEnd:(id *)a4;
- (int)mergeConsecutiveShortSegments;
- (int)mergeSameTypeSegments;
- (int)mergeSparseShortSegments;
- (int)postProcessSegmentsWithCaptureTime:(id *)a3 trimStart:(id *)a4;
- (int)prepareTrimmingWithTrimStart:(id *)a3 andTrimEnd:(id *)a4;
- (void)dealloc;
- (void)printSegments:(id)a3;
- (void)updateActiveThreshold;
@end

@implementation VCPActionAnalyzer

- (VCPActionAnalyzer)init
{
  v13.receiver = self;
  v13.super_class = VCPActionAnalyzer;
  v2 = [(VCPActionAnalyzer *)&v13 init];
  if (!v2)
  {
LABEL_7:
    v9 = 0;
    goto LABEL_8;
  }

  v3 = operator new(0x1CuLL, MEMORY[0x1E69E5398]);
  if (!v3)
  {
    v2->_activeHinkleyDetector = 0;
    if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v12[0] = 0;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Failed to allocate memory", v12, 2u);
    }

    goto LABEL_7;
  }

  v4 = v3;
  ma::HinkleyDetector::HinkleyDetector(v3);
  v2->_activeHinkleyDetector = v4;
  ma::HinkleyDetector::Initialize(v4, 0.05, 0.15, 10);
  v5 = [MEMORY[0x1E695DF70] array];
  internalResults = v2->_internalResults;
  v2->_internalResults = v5;

  v7 = objc_alloc_init(VCPSegment);
  activeSegment = v2->_activeSegment;
  v2->_activeSegment = v7;

  *&v2->_firstFrame = 1;
  v2->_postProcessStart = 0;
  v9 = v2;
LABEL_8:
  v10 = v9;

  return v10;
}

- (void)dealloc
{
  activeHinkleyDetector = self->_activeHinkleyDetector;
  if (activeHinkleyDetector)
  {
    ma::MotionFilter::~MotionFilter(activeHinkleyDetector);
    MEMORY[0x1CCA95C50]();
  }

  v4.receiver = self;
  v4.super_class = VCPActionAnalyzer;
  [(VCPActionAnalyzer *)&v4 dealloc];
}

- (int)analyzeFrameWithTimeRange:(id *)a3 andActionScore:(float)a4
{
  if (self->_firstFrame)
  {
    activeSegment = self->_activeSegment;
    v8 = *&a3->var0.var3;
    v23 = *&a3->var0.var0;
    v24 = v8;
    v9 = *&a3->var1.var1;
    *&v9 = a4;
    v10 = [(VCPActionAnalyzer *)self isScoreValid:*&v9, v23, v8, *&a3->var1.var1, a3->var1.var3];
    *&v11 = a4;
    [(VCPSegment *)activeSegment updateWithFirstFrame:&v23 score:v10 valid:v11];
    self->_firstFrame = 0;
  }

  else if ([(VCPActionAnalyzer *)self isScoreValid:*&a4]&& (*&v12 = a4, [(VCPActionAnalyzer *)self decideSegmentPointUsingHinkleyDetector:v12]))
  {
    v13 = self->_activeSegment;
    v23 = *&a3->var0.var0;
    *&v24 = a3->var0.var3;
    [(VCPSegment *)v13 updateDuration:&v23];
    [(NSMutableArray *)self->_internalResults addObject:self->_activeSegment];
    v14 = [VCPSegment alloc];
    v23 = *&a3->var0.var0;
    *&v24 = a3->var0.var3;
    v15 = [(VCPSegment *)v14 initWithTimestamp:&v23 score:1 valid:COERCE_DOUBLE(__PAIR64__(DWORD1(v23), LODWORD(a4)))];
    v16 = self->_activeSegment;
    self->_activeSegment = v15;
  }

  else
  {
    v17 = self->_activeSegment;
    v18 = *&a3->var0.var3;
    v23 = *&a3->var0.var0;
    v24 = v18;
    v19 = *&a3->var1.var1;
    *&v19 = a4;
    v20 = [(VCPActionAnalyzer *)self isScoreValid:*&v19, v23, v18, *&a3->var1.var1, a3->var1.var3];
    *&v21 = a4;
    [(VCPSegment *)v17 updateSegment:&v23 score:v20 valid:v21];
  }

  return 0;
}

- (void)updateActiveThreshold
{
  self->_activeThreshold = 0.2;
  if ([(NSMutableArray *)self->_internalResults count])
  {
    v3 = 0;
    v4 = 0.0;
    do
    {
      v5 = [(NSMutableArray *)self->_internalResults objectAtIndexedSubscript:v3];
      [v5 score];
      if (v6 > v4)
      {
        [v5 score];
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

  activeThreshold = self->_activeThreshold;
  if (v4 > activeThreshold)
  {
    self->_activeThreshold = (v4 + activeThreshold) * 0.5;
  }
}

- (BOOL)decideSegmentPointBasedOnActionScore:(float)a3
{
  v5 = [(VCPSegment *)self->_activeSegment numOfFrames];
  if (v5)
  {
    *&v6 = a3;
    LODWORD(v5) = [(VCPActionAnalyzer *)self isScoreValid:v6];
    if (v5)
    {
      [(VCPSegment *)self->_activeSegment score];
      v7 = [(VCPActionAnalyzer *)self isActive:?];
      *&v8 = a3;
      LOBYTE(v5) = v7 ^ [(VCPActionAnalyzer *)self isActive:v8];
    }
  }

  return v5;
}

- (BOOL)decideSegmentPointUsingHinkleyDetector:(float)a3
{
  v11 = a3;
  if ([(VCPSegment *)self->_activeSegment numOfValidFrames]&& (activeHinkleyDetector = self->_activeHinkleyDetector, activeHinkleyDetector->min_length_ < [(VCPSegment *)self->_activeSegment numOfFrames]) && (v5 = self->_activeHinkleyDetector, [(VCPSegment *)self->_activeSegment sumOfScore], v10 = v6, ma::HinkleyDetector::Test(v5, &v10, &v11, [(VCPSegment *)self->_activeSegment numOfValidFrames]+ 1)))
  {
    v7 = 1;
  }

  else
  {
    v8 = [(VCPSegment *)self->_activeSegment numOfValidFrames];
    v7 = 0;
    result = 0;
    if (v8)
    {
      return result;
    }
  }

  ma::HinkleyDetector::ResetStats(self->_activeHinkleyDetector);
  return v7;
}

- (int)mergeConsecutiveShortSegments
{
  postProcessStart = self->_postProcessStart;
  if (postProcessStart < ([(NSMutableArray *)self->_internalResults count]- 1))
  {
    do
    {
      v4 = [(NSMutableArray *)self->_internalResults objectAtIndexedSubscript:postProcessStart];
      v5 = postProcessStart + 1;
      if ([v4 isContentTooShort])
      {
        v6 = postProcessStart;
        for (i = v5; [(NSMutableArray *)self->_internalResults count]> i; ++i)
        {
          v8 = [(NSMutableArray *)self->_internalResults objectAtIndexedSubscript:i];
          v9 = [v8 isContentTooShort];

          if (!v9)
          {
            break;
          }

          ++v6;
        }

        while (postProcessStart < v6)
        {
          v10 = [(NSMutableArray *)self->_internalResults objectAtIndexedSubscript:v5];
          [v4 mergeSegment:v10];

          --v6;
          [(NSMutableArray *)self->_internalResults removeObjectAtIndex:v5];
        }

        v5 = v6 + 1;
      }

      postProcessStart = v5;
    }

    while (v5 < ([(NSMutableArray *)self->_internalResults count]- 1));
  }

  [(VCPActionAnalyzer *)self updateActiveThreshold];
  [(VCPActionAnalyzer *)self mergeSameTypeSegments];
  return 0;
}

- (int)mergeSameTypeSegments
{
  postProcessStart = self->_postProcessStart;
  if ([(NSMutableArray *)self->_internalResults count]>= 2)
  {
    do
    {
      v4 = (postProcessStart + 1);
      if ([(NSMutableArray *)self->_internalResults count]<= v4)
      {
        break;
      }

      v5 = [(NSMutableArray *)self->_internalResults objectAtIndexedSubscript:postProcessStart];
      v6 = [(NSMutableArray *)self->_internalResults objectAtIndexedSubscript:v4];
      [v6 score];
      v7 = [(VCPActionAnalyzer *)self isActive:?];
      [v5 score];
      if (v7 == [(VCPActionAnalyzer *)self isActive:?])
      {
        [v6 mergeSegment:v5];
        [(NSMutableArray *)self->_internalResults removeObjectAtIndex:postProcessStart];
        v4 = postProcessStart;
      }

      postProcessStart = v4;
    }

    while ([(NSMutableArray *)self->_internalResults count]> 1);
  }

  return 0;
}

- (int)mergeSparseShortSegments
{
  [(NSMutableArray *)self->_internalResults count];
  postProcessStart = self->_postProcessStart;
  v4 = (postProcessStart + 1);
  v5 = [(NSMutableArray *)self->_internalResults count];
  if (v5 >= 3 && v4 < v5 - 1)
  {
    do
    {
      v8 = [(NSMutableArray *)self->_internalResults objectAtIndexedSubscript:postProcessStart];
      v9 = [(NSMutableArray *)self->_internalResults objectAtIndexedSubscript:v4];
      v10 = (v4 + 1);
      v11 = [(NSMutableArray *)self->_internalResults objectAtIndexedSubscript:v10];
      if ([v8 isContentTooShort] & 1) != 0 || !objc_msgSend(v9, "isContentTooShort") || (objc_msgSend(v11, "isContentTooShort"))
      {
        postProcessStart = v4;
      }

      else
      {
        [v9 mergeSegment:v11];
        [(NSMutableArray *)self->_internalResults removeObjectAtIndex:v10];
        v10 = v4;
      }

      v12 = [(NSMutableArray *)self->_internalResults count];

      if (v12 < 3)
      {
        break;
      }

      v4 = v10;
    }

    while (v10 < v12 - 1);
  }

  [(VCPActionAnalyzer *)self mergeSameTypeSegments];
  return 0;
}

- (int)finalizeWithDestructiveTrimStart:(id *)a3 trimEnd:(id *)a4
{
  if (self->_verbose)
  {
    time = *a3;
    Seconds = CMTimeGetSeconds(&time);
    time = *a4;
    v8 = CMTimeGetSeconds(&time);
    printf("Destructive Trim Range: [%.2f - %.2f]\n", Seconds, v8);
  }

  [(NSMutableArray *)self->_internalResults addObject:self->_activeSegment];
  [(VCPActionAnalyzer *)self printSegments:@"start"];
  time = *a3;
  v10 = *&a4->var0;
  var3 = a4->var3;
  [(VCPActionAnalyzer *)self prepareTrimmingWithTrimStart:&time andTrimEnd:&v10];
  [(VCPActionAnalyzer *)self printSegments:@"after repare"];
  [(VCPActionAnalyzer *)self mergeConsecutiveShortSegments];
  [(VCPActionAnalyzer *)self printSegments:@"after consecutive short merge"];
  [(VCPActionAnalyzer *)self mergeSparseShortSegments];
  [(VCPActionAnalyzer *)self printSegments:@"after sparse short merge"];
  return 0;
}

- (int)postProcessSegmentsWithCaptureTime:(id *)a3 trimStart:(id *)a4
{
  activeSegment = self->_activeSegment;
  if (activeSegment)
  {
    [(VCPSegment *)activeSegment timeRange];
  }

  else
  {
    memset(&range, 0, sizeof(range));
  }

  time = *a3;
  if (CMTimeRangeContainsTime(&range, &time))
  {
    [(NSMutableArray *)self->_internalResults addObject:self->_activeSegment];
    v8 = [VCPSegment alloc];
    v9 = self->_activeSegment;
    if (v9)
    {
      [(VCPSegment *)v9 timeRange];
    }

    else
    {
      memset(&range, 0, sizeof(range));
    }

    CMTimeRangeGetEnd(&time, &range);
    [(VCPSegment *)self->_activeSegment score];
    v11 = v10;
    [(VCPSegment *)self->_activeSegment score];
    v12 = [(VCPActionAnalyzer *)self isScoreValid:?];
    LODWORD(v13) = v11;
    v14 = [(VCPSegment *)v8 initWithTimestamp:&time score:v12 valid:v13];
    v15 = self->_activeSegment;
    self->_activeSegment = v14;
  }

  if ([(NSMutableArray *)self->_internalResults count])
  {
    v16 = [(NSMutableArray *)self->_internalResults lastObject];
    v17 = v16;
    time = *a4;
    if (v16)
    {
      [v16 timeRange];
    }

    else
    {
      memset(&range, 0, sizeof(range));
    }

    CMTimeRangeGetEnd(&v19, &range);
    [(VCPActionAnalyzer *)self prepareTrimmingWithTrimStart:&time andTrimEnd:&v19];
    [(VCPActionAnalyzer *)self mergeConsecutiveShortSegments];
    [(VCPActionAnalyzer *)self mergeSparseShortSegments];
    [(VCPActionAnalyzer *)self printSegments:@"after post processing"];
    self->_postProcessStart = [(NSMutableArray *)self->_internalResults count]- 1;
  }

  return 0;
}

- (void)printSegments:(id)a3
{
  v4 = a3;
  if (self->_verbose)
  {
    printf("=========Segment %s==========\n", [v4 UTF8String]);
    [(NSMutableArray *)self->_internalResults enumerateObjectsUsingBlock:&__block_literal_global_78];
  }
}

void __35__VCPActionAnalyzer_printSegments___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = v2;
  if (v2)
  {
    [v2 timeRange];
  }

  else
  {
    v10 = 0u;
    v11 = 0u;
    v9 = 0u;
  }

  *&time.start.value = v9;
  time.start.epoch = v10;
  Seconds = CMTimeGetSeconds(&time.start);
  if (v3)
  {
    [v3 timeRange];
  }

  else
  {
    memset(&time, 0, sizeof(time));
  }

  CMTimeRangeGetEnd(&v8, &time);
  v5 = CMTimeGetSeconds(&v8);
  [v3 score];
  printf(" [%.2f - %.2f]: %.2f\n", Seconds, v5, v6);
}

- (int)prepareTrimmingWithTrimStart:(id *)a3 andTrimEnd:(id *)a4
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
  v26[2] = __61__VCPActionAnalyzer_prepareTrimmingWithTrimStart_andTrimEnd___block_invoke;
  v26[3] = &unk_1E8351088;
  v27 = *a3;
  v28 = *a4;
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
  v23 = *&a4->var0;
  *&v24 = a4->var3;
  [v11 trimSegment:&v23 fromStart:0];

  for (j = *(v34 + 6); j >= 1; [(NSMutableArray *)self->_internalResults removeObjectAtIndex:j])
  {
    --j;
  }

  v13 = [(NSMutableArray *)self->_internalResults objectAtIndexedSubscript:0];
  v23 = *&a3->var0;
  *&v24 = a3->var3;
  [v13 trimSegment:&v23 fromStart:1];

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
    v17 = [(NSMutableArray *)self->_internalResults lastObject];
    v18 = v17;
    if (v17)
    {
      [v17 timeRange];
    }

    else
    {
      memset(&time, 0, sizeof(time));
    }

    CMTimeRangeGetEnd(&v22, &time);
    v19 = CMTimeGetSeconds(&v22);
    printf("[%.2f -]\n", Seconds, v19);
  }

  _Block_object_dispose(&v29, 8);
  _Block_object_dispose(&v33, 8);
  return 0;
}

void __61__VCPActionAnalyzer_prepareTrimmingWithTrimStart_andTrimEnd___block_invoke(uint64_t a1, void *a2, uint64_t a3)
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

@end