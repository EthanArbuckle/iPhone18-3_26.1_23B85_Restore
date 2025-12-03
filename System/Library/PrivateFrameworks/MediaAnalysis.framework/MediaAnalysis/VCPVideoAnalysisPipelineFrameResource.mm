@interface VCPVideoAnalysisPipelineFrameResource
- ($AFC8CF76A46F37F9FB23C20884F4FD99)predictedTimeRange;
- (VCPVideoAnalysisPipelineFrameResource)initWithSampleBuffer:(opaqueCMSampleBuffer *)buffer;
- (void)dealloc;
- (void)setPredictedTimeRange:(id *)range;
@end

@implementation VCPVideoAnalysisPipelineFrameResource

- (VCPVideoAnalysisPipelineFrameResource)initWithSampleBuffer:(opaqueCMSampleBuffer *)buffer
{
  v15.receiver = self;
  v15.super_class = VCPVideoAnalysisPipelineFrameResource;
  v4 = [(VCPVideoAnalysisPipelineFrameResource *)&v15 init];
  v5 = v4;
  if (v4)
  {
    *(v4 + 1) = buffer;
    v6 = MEMORY[0x1E6960C98];
    v7 = *(MEMORY[0x1E6960C98] + 16);
    *(v4 + 56) = *MEMORY[0x1E6960C98];
    *(v4 + 72) = v7;
    *(v4 + 88) = *(v6 + 32);
    v8 = *(v4 + 3);
    *(v4 + 3) = 0;

    actionAnalysisResults = v5->_actionAnalysisResults;
    v5->_actionAnalysisResults = 0;

    fullAnalysisResults = v5->_fullAnalysisResults;
    v5->_fullAnalysisResults = 0;

    v5->_frameFlags = 0;
    v11 = objc_alloc_init(VCPFrameAnalysisStats);
    frameStats = v5->_frameStats;
    v5->_frameStats = v11;

    v13 = v5;
  }

  return v5;
}

- (void)dealloc
{
  frameSampleBuffer = self->_frameSampleBuffer;
  if (frameSampleBuffer)
  {
    CFRelease(frameSampleBuffer);
    self->_frameSampleBuffer = 0;
  }

  v4.receiver = self;
  v4.super_class = VCPVideoAnalysisPipelineFrameResource;
  [(VCPVideoAnalysisPipelineFrameResource *)&v4 dealloc];
}

- ($AFC8CF76A46F37F9FB23C20884F4FD99)predictedTimeRange
{
  v3 = *&self[1].var1.var0;
  *&retstr->var0.var0 = *&self[1].var0.var1;
  *&retstr->var0.var3 = v3;
  *&retstr->var1.var1 = *&self[1].var1.var3;
  return self;
}

- (void)setPredictedTimeRange:(id *)range
{
  v3 = *&range->var0.var0;
  v4 = *&range->var0.var3;
  *&self->_predictedTimeRange.duration.timescale = *&range->var1.var1;
  *&self->_predictedTimeRange.start.epoch = v4;
  *&self->_predictedTimeRange.start.value = v3;
}

@end