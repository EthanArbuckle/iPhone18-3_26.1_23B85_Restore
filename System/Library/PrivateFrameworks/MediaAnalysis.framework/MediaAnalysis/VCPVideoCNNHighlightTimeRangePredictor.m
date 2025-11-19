@interface VCPVideoCNNHighlightTimeRangePredictor
- ($AFC8CF76A46F37F9FB23C20884F4FD99)timeRangeAtTime:(SEL)a3;
- (BOOL)needsAnalysisResultsAtTime:(id *)a3;
- (VCPVideoCNNHighlightTimeRangePredictor)initWithHightlightEnabled:(BOOL)a3 postInference:(BOOL)a4 minProcessingInterval:(float)a5 startTime:(id *)a6;
- (void)updateForTime:(id *)a3;
@end

@implementation VCPVideoCNNHighlightTimeRangePredictor

- (VCPVideoCNNHighlightTimeRangePredictor)initWithHightlightEnabled:(BOOL)a3 postInference:(BOOL)a4 minProcessingInterval:(float)a5 startTime:(id *)a6
{
  v14.receiver = self;
  v14.super_class = VCPVideoCNNHighlightTimeRangePredictor;
  result = [(VCPVideoCNNHighlightTimeRangePredictor *)&v14 init];
  if (result)
  {
    result->_enableHighlight = a3;
    result->_postInference = a4;
    result->_enoughFrames = 0;
    result->_validFrames = 0;
    v11 = *(MEMORY[0x1E6960C80] + 16);
    *&result->_timeLastProcess.value = *MEMORY[0x1E6960C80];
    result->_timeLastProcess.epoch = v11;
    v12 = MEMORY[0x1E6960C70];
    *&result->_timeLastDetection.value = *MEMORY[0x1E6960C70];
    result->_timeLastDetection.epoch = *(v12 + 16);
    var3 = a6->var3;
    *&result->_timeStart.value = *&a6->var0;
    result->_timeStart.epoch = var3;
    result->_minProcessingInterval = a5;
  }

  return result;
}

- (BOOL)needsAnalysisResultsAtTime:(id *)a3
{
  if (!self->_enableHighlight)
  {
    return 0;
  }

  v10 = v3;
  v11 = v4;
  if (self->_validFrames >= 15 && (v9 = *a3, rhs = self->_timeLastProcess, CMTimeSubtract(&time, &v9, &rhs), CMTimeGetSeconds(&time) >= 0.125))
  {
    return self->_timeLastDetection.flags & 1;
  }

  else
  {
    return 0;
  }
}

- ($AFC8CF76A46F37F9FB23C20884F4FD99)timeRangeAtTime:(SEL)a3
{
  start = *a4;
  result = [(VCPVideoCNNHighlightTimeRangePredictor *)self needsAnalysisResultsAtTime:&start];
  if (result)
  {
    start = self->_timeLastDetection;
    v10 = *a4;
    return CMTimeRangeFromTimeToTime(retstr, &start, &v10);
  }

  else
  {
    v8 = MEMORY[0x1E6960C98];
    v9 = *(MEMORY[0x1E6960C98] + 16);
    *&retstr->var0.var0 = *MEMORY[0x1E6960C98];
    *&retstr->var0.var3 = v9;
    *&retstr->var1.var1 = *(v8 + 32);
  }

  return result;
}

- (void)updateForTime:(id *)a3
{
  lhs = *a3;
  rhs = self->_timeLastProcess;
  CMTimeSubtract(&time, &lhs, &rhs);
  if (CMTimeGetSeconds(&time) < self->_minProcessingInterval || (lhs = *a3, rhs = self->_timeStart, CMTimeCompare(&lhs, &rhs) < 0))
  {
    v5 = 0;
  }

  else
  {
    v5 = !self->_enoughFrames || !self->_postInference;
  }

  if ((self->_timeLastDetection.flags & 1) == 0)
  {
    v6 = *&a3->var0;
    self->_timeLastDetection.epoch = a3->var3;
    *&self->_timeLastDetection.value = v6;
  }

  if (v5)
  {
    validFrames = self->_validFrames;
    self->_validFrames = validFrames + 1;
    if (validFrames >= 15)
    {
      self->_enoughFrames = 1;
      if (!self->_postInference)
      {
        self->_enoughFrames = 0;
        self->_validFrames = 0;
        v8 = *&a3->var0;
        self->_timeLastDetection.epoch = a3->var3;
        *&self->_timeLastDetection.value = v8;
      }
    }

    v9 = *&a3->var0;
    self->_timeLastProcess.epoch = a3->var3;
    *&self->_timeLastProcess.value = v9;
  }
}

@end