@interface VCPVideoMetaFocusAnalyzer
- (VCPVideoMetaFocusAnalyzer)init;
- (int)finalizeAnalysis;
- (int)processFrameMetadata:(id)a3;
- (void)addSegmentToResults;
@end

@implementation VCPVideoMetaFocusAnalyzer

- (VCPVideoMetaFocusAnalyzer)init
{
  v12.receiver = self;
  v12.super_class = VCPVideoMetaFocusAnalyzer;
  v2 = [(VCPVideoMetaFocusAnalyzer *)&v12 init];
  if (v2)
  {
    v3 = [MEMORY[0x1E695DF70] array];
    v4 = *(v2 + 2);
    *(v2 + 2) = v3;

    v5 = objc_alloc_init(VCPVideoMetaFocusSegment);
    v6 = *(v2 + 1);
    *(v2 + 1) = v5;

    v7 = *(v2 + 2);
    if (v7)
    {
      v7 = *(v2 + 1);
      if (v7)
      {
        v9 = *(MEMORY[0x1E6960CA8] + 16);
        v8 = *(MEMORY[0x1E6960CA8] + 32);
        *(v2 + 24) = *MEMORY[0x1E6960CA8];
        *(v2 + 40) = v9;
        *(v2 + 56) = v8;
        v7 = v2;
      }
    }

    v10 = v7;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (int)processFrameMetadata:(id)a3
{
  v4 = a3;
  v5 = [v4 objectForKeyedSubscript:@"privAFSt"];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 integerValue];
  }

  else
  {
    v7 = 4;
  }

  CMTimeRangeMakeFromDictionary(&v16, v4);
  v8 = *&v16.start.epoch;
  *&self->_frameTimeRange.start.value = *&v16.start.value;
  *&self->_frameTimeRange.start.epoch = v8;
  *&self->_frameTimeRange.duration.timescale = *&v16.duration.timescale;
  if ([(NSMutableArray *)self->_mutableResults count]|| [(VCPMetaSegment *)self->_activeSegment numOfFrames])
  {
    v9 = [(VCPVideoMetaFocusSegment *)self->_activeSegment focusStatus];
    activeSegment = self->_activeSegment;
    *&v16.start.value = *&self->_frameTimeRange.start.value;
    v16.start.epoch = self->_frameTimeRange.start.epoch;
    if (v7 == v9)
    {
      [(VCPVideoMetaFocusSegment *)activeSegment updateSegment:v7 atTime:&v16];
    }

    else
    {
      [(VCPMetaSegment *)activeSegment finalizeAtTime:&v16];
      [(VCPVideoMetaFocusAnalyzer *)self addSegmentToResults];
      v11 = [VCPVideoMetaFocusSegment alloc];
      *&v16.start.value = *&self->_frameTimeRange.start.value;
      v16.start.epoch = self->_frameTimeRange.start.epoch;
      v12 = [(VCPVideoMetaFocusSegment *)v11 initWithFocusStatus:v7 atTime:&v16];
      v13 = self->_activeSegment;
      self->_activeSegment = v12;
    }
  }

  else
  {
    v14 = self->_activeSegment;
    *&v16.start.value = *&self->_frameTimeRange.start.value;
    v16.start.epoch = self->_frameTimeRange.start.epoch;
    [(VCPVideoMetaFocusSegment *)v14 resetSegment:v7 atTime:&v16];
  }

  return 0;
}

- (void)addSegmentToResults
{
  v18[3] = *MEMORY[0x1E69E9840];
  if ([(VCPVideoMetaFocusSegment *)self->_activeSegment focusStatus]== 4)
  {
    v3 = 1.0;
  }

  else
  {
    v3 = 0.0;
  }

  v17[0] = @"start";
  activeSegment = self->_activeSegment;
  mutableResults = self->_mutableResults;
  if (activeSegment)
  {
    [(VCPMetaSegment *)activeSegment timeRange];
  }

  else
  {
    v14 = 0u;
    v15 = 0u;
    v13 = 0u;
  }

  *&v12[0].value = v13;
  v12[0].epoch = v14;
  v6 = CMTimeCopyAsDictionary(v12, 0);
  v18[0] = v6;
  v17[1] = @"duration";
  v7 = self->_activeSegment;
  if (v7)
  {
    [(VCPMetaSegment *)v7 timeRange];
  }

  else
  {
    memset(v12, 0, sizeof(v12));
  }

  time = v12[1];
  v8 = CMTimeCopyAsDictionary(&time, 0);
  v18[1] = v8;
  v17[2] = @"quality";
  *&v9 = v3;
  v10 = [MEMORY[0x1E696AD98] numberWithFloat:v9];
  v18[2] = v10;
  v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v18 forKeys:v17 count:3];
  [(NSMutableArray *)mutableResults addObject:v11];
}

- (int)finalizeAnalysis
{
  activeSegment = self->_activeSegment;
  v4 = *&self->_frameTimeRange.start.epoch;
  *&v6.start.value = *&self->_frameTimeRange.start.value;
  *&v6.start.epoch = v4;
  *&v6.duration.timescale = *&self->_frameTimeRange.duration.timescale;
  CMTimeRangeGetEnd(&v7, &v6);
  [(VCPMetaSegment *)activeSegment finalizeAtTime:&v7];
  [(VCPVideoMetaFocusAnalyzer *)self addSegmentToResults];
  return 0;
}

@end