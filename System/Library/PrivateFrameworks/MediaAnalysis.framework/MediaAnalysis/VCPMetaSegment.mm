@interface VCPMetaSegment
- ($AFC8CF76A46F37F9FB23C20884F4FD99)timeRange;
- (VCPMetaSegment)init;
- (void)finalizeAtTime:(id *)time;
- (void)mergeSegment:(id)segment;
- (void)resetSegment:(id *)segment;
- (void)updateSegment:(id *)segment;
@end

@implementation VCPMetaSegment

- (VCPMetaSegment)init
{
  v8.receiver = self;
  v8.super_class = VCPMetaSegment;
  v2 = [(VCPMetaSegment *)&v8 init];
  v3 = v2;
  if (v2)
  {
    v5 = *(MEMORY[0x1E6960CA8] + 16);
    v4 = *(MEMORY[0x1E6960CA8] + 32);
    *&v2->_timeRange.start.value = *MEMORY[0x1E6960CA8];
    *&v2->_timeRange.start.epoch = v5;
    *&v2->_timeRange.duration.timescale = v4;
    v2->_numOfFrames = 0;
    v6 = v2;
  }

  return v3;
}

- (void)updateSegment:(id *)segment
{
  lhs = *segment;
  rhs = self->_timeRange.start;
  CMTimeSubtract(&v4, &lhs, &rhs);
  self->_timeRange.duration = v4;
  ++self->_numOfFrames;
}

- (void)resetSegment:(id *)segment
{
  start = *segment;
  v5 = **&MEMORY[0x1E6960CC0];
  CMTimeRangeMake(&v7, &start, &v5);
  v4 = *&v7.start.epoch;
  *&self->_timeRange.start.value = *&v7.start.value;
  *&self->_timeRange.start.epoch = v4;
  *&self->_timeRange.duration.timescale = *&v7.duration.timescale;
  self->_numOfFrames = 1;
}

- (void)mergeSegment:(id)segment
{
  segmentCopy = segment;
  self->_numOfFrames += [segmentCopy numOfFrames];
  v5 = *&self->_timeRange.start.epoch;
  *&range.start.value = *&self->_timeRange.start.value;
  *&range.start.epoch = v5;
  *&range.duration.timescale = *&self->_timeRange.duration.timescale;
  if (segmentCopy)
  {
    [segmentCopy timeRange];
  }

  else
  {
    memset(&v7, 0, sizeof(v7));
  }

  CMTimeRangeGetUnion(&v9, &range, &v7);
  v6 = *&v9.start.epoch;
  *&self->_timeRange.start.value = *&v9.start.value;
  *&self->_timeRange.start.epoch = v6;
  *&self->_timeRange.duration.timescale = *&v9.duration.timescale;
}

- (void)finalizeAtTime:(id *)time
{
  lhs = *time;
  rhs = self->_timeRange.start;
  CMTimeSubtract(&v4, &lhs, &rhs);
  self->_timeRange.duration = v4;
}

- ($AFC8CF76A46F37F9FB23C20884F4FD99)timeRange
{
  v3 = *&self->var1.var1;
  *&retstr->var0.var0 = *&self->var0.var3;
  *&retstr->var0.var3 = v3;
  *&retstr->var1.var1 = *&self[1].var0.var0;
  return self;
}

@end