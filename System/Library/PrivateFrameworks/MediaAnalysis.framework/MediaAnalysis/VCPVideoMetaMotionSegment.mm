@interface VCPVideoMetaMotionSegment
- (VCPVideoMetaMotionSegment)initWithAbsMotion:(float)motion atTime:(id *)time;
- (void)finalizeAtTime:(id *)time;
- (void)mergeSegment:(id)segment;
- (void)resetSegment:(float)segment atTime:(id *)time;
- (void)updateSegment:(float)segment atTime:(id *)time;
@end

@implementation VCPVideoMetaMotionSegment

- (VCPVideoMetaMotionSegment)initWithAbsMotion:(float)motion atTime:(id *)time
{
  v12.receiver = self;
  v12.super_class = VCPVideoMetaMotionSegment;
  v6 = [(VCPMetaSegment *)&v12 init];
  v7 = v6;
  if (v6)
  {
    v10 = *&time->var0;
    var3 = time->var3;
    [(VCPVideoMetaMotionSegment *)v6 resetSegment:&v10 atTime:COERCE_DOUBLE(__PAIR64__(DWORD1(v10), LODWORD(motion)))];
    v8 = v7;
  }

  return v7;
}

- (void)resetSegment:(float)segment atTime:(id *)time
{
  v7 = *time;
  v6.receiver = self;
  v6.super_class = VCPVideoMetaMotionSegment;
  [(VCPMetaSegment *)&v6 resetSegment:&v7];
  self->_absMotion = segment;
  self->_stabilityScore = expf(segment * -0.1);
}

- (void)updateSegment:(float)segment atTime:(id *)time
{
  v7 = *time;
  v6.receiver = self;
  v6.super_class = VCPVideoMetaMotionSegment;
  [(VCPMetaSegment *)&v6 updateSegment:&v7];
  self->_absMotion = self->_absMotion + segment;
  self->_stabilityScore = expf(segment * -0.1) + self->_stabilityScore;
}

- (void)finalizeAtTime:(id *)time
{
  v6 = *time;
  v5.receiver = self;
  v5.super_class = VCPVideoMetaMotionSegment;
  [(VCPMetaSegment *)&v5 finalizeAtTime:&v6];
  v4 = self->_absMotion / [(VCPMetaSegment *)self numOfFrames];
  self->_absMotion = v4;
  self->_stabilityScore = expf(v4 * -0.1);
}

- (void)mergeSegment:(id)segment
{
  segmentCopy = segment;
  [segmentCopy absMotion];
  v6 = v5;
  numOfFrames = [segmentCopy numOfFrames];
  absMotion = self->_absMotion;
  numOfFrames2 = [(VCPMetaSegment *)self numOfFrames];
  numOfFrames3 = [segmentCopy numOfFrames];
  v11 = ((absMotion * numOfFrames2) + (v6 * numOfFrames)) / ([(VCPMetaSegment *)self numOfFrames]+ numOfFrames3);
  self->_absMotion = v11;
  self->_stabilityScore = expf(v11 * -0.1);
  v12.receiver = self;
  v12.super_class = VCPVideoMetaMotionSegment;
  [(VCPMetaSegment *)&v12 mergeSegment:segmentCopy];
}

@end