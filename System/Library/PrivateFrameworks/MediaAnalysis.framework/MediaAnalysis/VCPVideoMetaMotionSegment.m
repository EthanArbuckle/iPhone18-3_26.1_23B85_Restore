@interface VCPVideoMetaMotionSegment
- (VCPVideoMetaMotionSegment)initWithAbsMotion:(float)a3 atTime:(id *)a4;
- (void)finalizeAtTime:(id *)a3;
- (void)mergeSegment:(id)a3;
- (void)resetSegment:(float)a3 atTime:(id *)a4;
- (void)updateSegment:(float)a3 atTime:(id *)a4;
@end

@implementation VCPVideoMetaMotionSegment

- (VCPVideoMetaMotionSegment)initWithAbsMotion:(float)a3 atTime:(id *)a4
{
  v12.receiver = self;
  v12.super_class = VCPVideoMetaMotionSegment;
  v6 = [(VCPMetaSegment *)&v12 init];
  v7 = v6;
  if (v6)
  {
    v10 = *&a4->var0;
    var3 = a4->var3;
    [(VCPVideoMetaMotionSegment *)v6 resetSegment:&v10 atTime:COERCE_DOUBLE(__PAIR64__(DWORD1(v10), LODWORD(a3)))];
    v8 = v7;
  }

  return v7;
}

- (void)resetSegment:(float)a3 atTime:(id *)a4
{
  v7 = *a4;
  v6.receiver = self;
  v6.super_class = VCPVideoMetaMotionSegment;
  [(VCPMetaSegment *)&v6 resetSegment:&v7];
  self->_absMotion = a3;
  self->_stabilityScore = expf(a3 * -0.1);
}

- (void)updateSegment:(float)a3 atTime:(id *)a4
{
  v7 = *a4;
  v6.receiver = self;
  v6.super_class = VCPVideoMetaMotionSegment;
  [(VCPMetaSegment *)&v6 updateSegment:&v7];
  self->_absMotion = self->_absMotion + a3;
  self->_stabilityScore = expf(a3 * -0.1) + self->_stabilityScore;
}

- (void)finalizeAtTime:(id *)a3
{
  v6 = *a3;
  v5.receiver = self;
  v5.super_class = VCPVideoMetaMotionSegment;
  [(VCPMetaSegment *)&v5 finalizeAtTime:&v6];
  v4 = self->_absMotion / [(VCPMetaSegment *)self numOfFrames];
  self->_absMotion = v4;
  self->_stabilityScore = expf(v4 * -0.1);
}

- (void)mergeSegment:(id)a3
{
  v4 = a3;
  [v4 absMotion];
  v6 = v5;
  v7 = [v4 numOfFrames];
  absMotion = self->_absMotion;
  v9 = [(VCPMetaSegment *)self numOfFrames];
  v10 = [v4 numOfFrames];
  v11 = ((absMotion * v9) + (v6 * v7)) / ([(VCPMetaSegment *)self numOfFrames]+ v10);
  self->_absMotion = v11;
  self->_stabilityScore = expf(v11 * -0.1);
  v12.receiver = self;
  v12.super_class = VCPVideoMetaMotionSegment;
  [(VCPMetaSegment *)&v12 mergeSegment:v4];
}

@end