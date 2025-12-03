@interface VCPSegment
- ($AFC8CF76A46F37F9FB23C20884F4FD99)timeRange;
- (VCPSegment)init;
- (VCPSegment)initWithTimestamp:(id *)timestamp score:(float)score valid:(BOOL)valid;
- (float)score;
- (void)copyFrom:(id)from;
- (void)mergeSegment:(id)segment;
- (void)setTimeRange:(id *)range;
- (void)trimSegment:(id *)segment fromStart:(BOOL)start;
- (void)updateDuration:(id *)duration;
- (void)updateSegment:(id *)segment score:(float)score valid:(BOOL)valid;
- (void)updateWithFirstFrame:(id *)frame score:(float)score valid:(BOOL)valid;
@end

@implementation VCPSegment

- (VCPSegment)init
{
  v8.receiver = self;
  v8.super_class = VCPSegment;
  v2 = [(VCPSegment *)&v8 init];
  v3 = v2;
  if (v2)
  {
    v4 = MEMORY[0x1E6960CA8];
    v5 = *(MEMORY[0x1E6960CA8] + 16);
    *&v2->_timeRange.start.value = *MEMORY[0x1E6960CA8];
    *&v2->_timeRange.start.epoch = v5;
    *&v2->_timeRange.duration.timescale = *(v4 + 32);
    v2->_sumOfScore = 0.0;
    v2->_numOfFrames = 0;
    v2->_numOfValidFrames = 0;
    v6 = v2;
  }

  return v3;
}

- (VCPSegment)initWithTimestamp:(id *)timestamp score:(float)score valid:(BOOL)valid
{
  validCopy = valid;
  v16.receiver = self;
  v16.super_class = VCPSegment;
  v8 = [(VCPSegment *)&v16 init];
  if (v8)
  {
    start = *timestamp;
    v13 = **&MEMORY[0x1E6960CC0];
    CMTimeRangeMake(&v15, &start, &v13);
    v10 = *&v15.start.epoch;
    v9 = *&v15.duration.timescale;
    *&v8->_timeRange.start.value = *&v15.start.value;
    *&v8->_timeRange.start.epoch = v10;
    *&v8->_timeRange.duration.timescale = v9;
    v8->_numOfFrames = 1;
    if (validCopy)
    {
      v8->_numOfValidFrames = 1;
      v8->_sumOfScore = score;
    }

    v11 = v8;
  }

  return v8;
}

- (void)updateWithFirstFrame:(id *)frame score:(float)score valid:(BOOL)valid
{
  if ((frame->var0.var2 & 1) != 0 && (frame->var1.var2 & 1) != 0 && !frame->var1.var3 && (frame->var1.var0 & 0x8000000000000000) == 0)
  {
    v5 = *&frame->var0.var0;
    v6 = *&frame->var1.var1;
    *&self->_timeRange.start.epoch = *&frame->var0.var3;
    *&self->_timeRange.duration.timescale = v6;
    *&self->_timeRange.start.value = v5;
    self->_numOfFrames = 1;
    if (valid)
    {
      self->_numOfValidFrames = 1;
      self->_sumOfScore = score;
    }
  }
}

- (void)updateSegment:(id *)segment score:(float)score valid:(BOOL)valid
{
  if ((segment->var0.var2 & 1) != 0 && (segment->var1.var2 & 1) != 0 && !segment->var1.var3 && (segment->var1.var0 & 0x8000000000000000) == 0)
  {
    v16 = v8;
    v17 = v7;
    v18 = v5;
    v19 = v6;
    validCopy = valid;
    v12 = *&segment->var0.var3;
    *&range.start.value = *&segment->var0.var0;
    *&range.start.epoch = v12;
    *&range.duration.timescale = *&segment->var1.var1;
    CMTimeRangeGetEnd(&v15, &range);
    start = self->_timeRange.start;
    CMTimeSubtract(&range.start, &v15, &start);
    self->_timeRange.duration = range.start;
    ++self->_numOfFrames;
    if (validCopy)
    {
      ++self->_numOfValidFrames;
      self->_sumOfScore = self->_sumOfScore + score;
    }
  }
}

- (void)mergeSegment:(id)segment
{
  segmentCopy = segment;
  numOfFrames = [segmentCopy numOfFrames];
  [segmentCopy score];
  self->_sumOfScore = self->_sumOfScore + (numOfFrames * v6);
  self->_numOfFrames += [segmentCopy numOfFrames];
  self->_numOfValidFrames += [segmentCopy numOfValidFrames];
  if (segmentCopy)
  {
    [segmentCopy timeRange];
  }

  else
  {
    memset(&otherRange, 0, sizeof(otherRange));
  }

  v7 = *&self->_timeRange.start.epoch;
  *&v9.start.value = *&self->_timeRange.start.value;
  *&v9.start.epoch = v7;
  *&v9.duration.timescale = *&self->_timeRange.duration.timescale;
  CMTimeRangeGetUnion(&v11, &v9, &otherRange);
  v8 = *&v11.start.epoch;
  *&self->_timeRange.start.value = *&v11.start.value;
  *&self->_timeRange.start.epoch = v8;
  *&self->_timeRange.duration.timescale = *&v11.duration.timescale;
}

- (void)copyFrom:(id)from
{
  fromCopy = from;
  [fromCopy sumOfScore];
  self->_sumOfScore = v5;
  self->_numOfFrames = [fromCopy numOfFrames];
  self->_numOfValidFrames = [fromCopy numOfValidFrames];
  if (fromCopy)
  {
    [fromCopy timeRange];
  }

  else
  {
    v8 = 0u;
    v9 = 0u;
    v7 = 0u;
  }

  *&self->_timeRange.start.value = v7;
  *&self->_timeRange.start.epoch = v8;
  *&self->_timeRange.duration.timescale = v9;
  [fromCopy curationScore];
  self->_curationScore = v6;
}

- (void)updateDuration:(id *)duration
{
  lhs = *duration;
  start = self->_timeRange.start;
  CMTimeSubtract(&v6, &lhs, &start);
  self->_timeRange.duration = v6;
}

- (void)trimSegment:(id *)segment fromStart:(BOOL)start
{
  if (start)
  {
    v6 = *&self->_timeRange.start.epoch;
    *&range.start.value = *&self->_timeRange.start.value;
    *&range.start.epoch = v6;
    *&range.duration.timescale = *&self->_timeRange.duration.timescale;
    CMTimeRangeGetEnd(&lhs, &range);
    start = *segment;
    CMTimeSubtract(&range.start, &lhs, &start);
    *&self->_timeRange.duration.value = *&range.start.value;
    self->_timeRange.duration.epoch = range.start.epoch;
    v7 = *&segment->var0;
    self->_timeRange.start.epoch = segment->var3;
    *&self->_timeRange.start.value = v7;
  }

  else
  {
    lhs = *segment;
    start = self->_timeRange.start;
    CMTimeSubtract(&range.start, &lhs, &start);
    *&self->_timeRange.duration.value = *&range.start.value;
    self->_timeRange.duration.epoch = range.start.epoch;
  }
}

- (float)score
{
  numOfValidFrames = self->_numOfValidFrames;
  if (numOfValidFrames)
  {
    return self->_sumOfScore / numOfValidFrames;
  }

  else
  {
    return 0.0;
  }
}

- ($AFC8CF76A46F37F9FB23C20884F4FD99)timeRange
{
  v3 = *&self[1].var0.var0;
  *&retstr->var0.var0 = *&self->var1.var1;
  *&retstr->var0.var3 = v3;
  *&retstr->var1.var1 = *&self[1].var0.var3;
  return self;
}

- (void)setTimeRange:(id *)range
{
  v3 = *&range->var0.var0;
  v4 = *&range->var1.var1;
  *&self->_timeRange.start.epoch = *&range->var0.var3;
  *&self->_timeRange.duration.timescale = v4;
  *&self->_timeRange.start.value = v3;
}

@end