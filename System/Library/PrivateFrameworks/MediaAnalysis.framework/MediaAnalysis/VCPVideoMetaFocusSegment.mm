@interface VCPVideoMetaFocusSegment
- (VCPVideoMetaFocusSegment)initWithFocusStatus:(int64_t)a3 atTime:(id *)a4;
- (void)resetSegment:(int64_t)a3 atTime:(id *)a4;
- (void)updateSegment:(int64_t)a3 atTime:(id *)a4;
@end

@implementation VCPVideoMetaFocusSegment

- (VCPVideoMetaFocusSegment)initWithFocusStatus:(int64_t)a3 atTime:(id *)a4
{
  v12.receiver = self;
  v12.super_class = VCPVideoMetaFocusSegment;
  v6 = [(VCPMetaSegment *)&v12 init];
  v7 = v6;
  if (v6)
  {
    v10 = *&a4->var0;
    var3 = a4->var3;
    [(VCPVideoMetaFocusSegment *)v6 resetSegment:a3 atTime:&v10];
    v8 = v7;
  }

  return v7;
}

- (void)updateSegment:(int64_t)a3 atTime:(id *)a4
{
  v7 = *a4;
  v6.receiver = self;
  v6.super_class = VCPVideoMetaFocusSegment;
  [(VCPMetaSegment *)&v6 updateSegment:&v7];
  self->_focusStatus = a3;
}

- (void)resetSegment:(int64_t)a3 atTime:(id *)a4
{
  v7 = *a4;
  v6.receiver = self;
  v6.super_class = VCPVideoMetaFocusSegment;
  [(VCPMetaSegment *)&v6 resetSegment:&v7];
  self->_focusStatus = a3;
}

@end