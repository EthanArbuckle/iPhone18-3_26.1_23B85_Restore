@interface VCPVideoMetaMotionAnalyzer
- (BOOL)decideSegmentPointBasedOn:(float)a3;
- (VCPVideoMetaMotionAnalyzer)init;
- (int)finalizeAnalysis;
- (int)processFrameMetadata:(id)a3;
- (void)mergeSimilarSegments;
@end

@implementation VCPVideoMetaMotionAnalyzer

- (VCPVideoMetaMotionAnalyzer)init
{
  v14.receiver = self;
  v14.super_class = VCPVideoMetaMotionAnalyzer;
  v2 = [(VCPVideoMetaMotionAnalyzer *)&v14 init];
  if (v2)
  {
    v3 = [MEMORY[0x1E695DF70] array];
    internalResults = v2->_internalResults;
    v2->_internalResults = v3;

    v5 = [MEMORY[0x1E695DF70] array];
    mutableResults = v2->_mutableResults;
    v2->_mutableResults = v5;

    v7 = objc_alloc_init(VCPVideoMetaMotionSegment);
    activeSegment = v2->_activeSegment;
    v2->_activeSegment = v7;

    v9 = v2->_mutableResults;
    if (v9)
    {
      v9 = v2->_internalResults;
      if (v9)
      {
        v9 = v2->_activeSegment;
        if (v9)
        {
          ma::HinkleyDetector::Initialize(&v2->_hinkleyDetector, 0.03, 0.1, 10);
          v10 = MEMORY[0x1E6960CA8];
          v11 = *(MEMORY[0x1E6960CA8] + 16);
          *&v2->_frameTimeRange.start.value = *MEMORY[0x1E6960CA8];
          *&v2->_frameTimeRange.start.epoch = v11;
          *&v2->_frameTimeRange.duration.timescale = *(v10 + 32);
          v9 = v2;
        }
      }
    }

    v12 = v9;
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (BOOL)decideSegmentPointBasedOn:(float)a3
{
  v10 = a3;
  v4 = [(VCPMetaSegment *)self->_activeSegment numOfFrames]+ 1;
  if (self->_hinkleyDetector.min_length_ < v4 && ([(VCPVideoMetaMotionSegment *)self->_activeSegment stabilityScore], v9 = v5, ma::HinkleyDetector::Test(&self->_hinkleyDetector, &v9, &v10, v4)))
  {
    v6 = 1;
  }

  else
  {
    v7 = [(VCPMetaSegment *)self->_activeSegment numOfFrames];
    v6 = 0;
    result = 0;
    if (v7)
    {
      return result;
    }
  }

  ma::HinkleyDetector::ResetStats(&self->_hinkleyDetector);
  return v6;
}

- (int)processFrameMetadata:(id)a3
{
  v4 = a3;
  v5 = [v4 objectForKeyedSubscript:@"privECMVct"];
  v6 = v5;
  if (v5)
  {
    v7 = NSPointFromString(v5);
    x = v7.x;
    y = v7.y;
  }

  else
  {
    x = *MEMORY[0x1E695EFF8];
    y = *(MEMORY[0x1E695EFF8] + 8);
  }

  CMTimeRangeMakeFromDictionary(&v23, v4);
  v10 = *&v23.start.epoch;
  *&self->_frameTimeRange.start.value = *&v23.start.value;
  *&self->_frameTimeRange.start.epoch = v10;
  *&self->_frameTimeRange.duration.timescale = *&v23.duration.timescale;
  v11 = [(NSMutableArray *)self->_internalResults count];
  v12 = x;
  v13 = y;
  v14 = fabsf(v12) + fabsf(v13);
  if (v11 || [(VCPMetaSegment *)self->_activeSegment numOfFrames])
  {
    *&v15 = expf(v14 * -0.1);
    v16 = [(VCPVideoMetaMotionAnalyzer *)self decideSegmentPointBasedOn:v15];
    activeSegment = self->_activeSegment;
    *&v23.start.value = *&self->_frameTimeRange.start.value;
    v23.start.epoch = self->_frameTimeRange.start.epoch;
    if (v16)
    {
      [(VCPVideoMetaMotionSegment *)activeSegment finalizeAtTime:&v23];
      [(NSMutableArray *)self->_internalResults addObject:self->_activeSegment];
      v18 = [VCPVideoMetaMotionSegment alloc];
      *&v23.start.value = *&self->_frameTimeRange.start.value;
      v23.start.epoch = self->_frameTimeRange.start.epoch;
      v19 = [(VCPVideoMetaMotionSegment *)v18 initWithAbsMotion:&v23 atTime:COERCE_DOUBLE(__PAIR64__(HIDWORD(v23.start.value), LODWORD(v14)))];
      v20 = self->_activeSegment;
      self->_activeSegment = v19;
    }

    else
    {
      [(VCPVideoMetaMotionSegment *)activeSegment updateSegment:&v23 atTime:COERCE_DOUBLE(__PAIR64__(HIDWORD(v23.start.value), LODWORD(v14)))];
    }
  }

  else
  {
    v21 = self->_activeSegment;
    *&v23.start.value = *&self->_frameTimeRange.start.value;
    v23.start.epoch = self->_frameTimeRange.start.epoch;
    [(VCPVideoMetaMotionSegment *)v21 resetSegment:&v23 atTime:COERCE_DOUBLE(__PAIR64__(HIDWORD(v23.start.value), LODWORD(v14)))];
  }

  return 0;
}

- (void)mergeSimilarSegments
{
  if ([(NSMutableArray *)self->_internalResults count]>= 2)
  {
    v3 = 0;
    do
    {
      v4 = v3 + 1;
      if ([(NSMutableArray *)self->_internalResults count]<= (v3 + 1))
      {
        break;
      }

      v5 = [(NSMutableArray *)self->_internalResults objectAtIndexedSubscript:v3];
      v6 = [(NSMutableArray *)self->_internalResults objectAtIndexedSubscript:v3 + 1];
      [v5 stabilityScore];
      v8 = v7;
      [v6 stabilityScore];
      if (vabds_f32(v8, v9) <= 0.15)
      {
        [v6 mergeSegment:v5];
        [(NSMutableArray *)self->_internalResults removeObject:v5];
        v4 = v3;
      }

      v3 = v4;
    }

    while ([(NSMutableArray *)self->_internalResults count]> 1);
  }
}

- (int)finalizeAnalysis
{
  v28 = *MEMORY[0x1E69E9840];
  p_activeSegment = &self->_activeSegment;
  activeSegment = self->_activeSegment;
  v4 = *&self->_frameTimeRange.start.epoch;
  *&range.start.value = *&self->_frameTimeRange.start.value;
  *&range.start.epoch = v4;
  *&range.duration.timescale = *&self->_frameTimeRange.duration.timescale;
  CMTimeRangeGetEnd(time, &range);
  [(VCPVideoMetaMotionSegment *)activeSegment finalizeAtTime:time];
  [(NSMutableArray *)self->_internalResults addObject:*p_activeSegment];
  [(VCPVideoMetaMotionAnalyzer *)self mergeSimilarSegments];
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  obj = self->_internalResults;
  v5 = [(NSMutableArray *)obj countByEnumeratingWithState:&v19 objects:v27 count:16];
  if (v5)
  {
    v16 = *v20;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v20 != v16)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v19 + 1) + 8 * i);
        mutableResults = self->_mutableResults;
        v25[0] = @"start";
        if (v7)
        {
          [v7 timeRange];
        }

        else
        {
          memset(&range, 0, sizeof(range));
        }

        time[0] = range.start;
        v9 = CMTimeCopyAsDictionary(time, 0);
        v26[0] = v9;
        v25[1] = @"duration";
        if (v7)
        {
          [v7 timeRange];
        }

        else
        {
          memset(time, 0, sizeof(time));
        }

        v24 = time[1];
        v10 = CMTimeCopyAsDictionary(&v24, 0);
        v26[1] = v10;
        v25[2] = @"quality";
        v11 = MEMORY[0x1E696AD98];
        [v7 absMotion];
        v12 = [v11 numberWithFloat:?];
        v26[2] = v12;
        v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v26 forKeys:v25 count:3];
        [(NSMutableArray *)mutableResults addObject:v13];
      }

      v5 = [(NSMutableArray *)obj countByEnumeratingWithState:&v19 objects:v27 count:16];
    }

    while (v5);
  }

  return 0;
}

@end