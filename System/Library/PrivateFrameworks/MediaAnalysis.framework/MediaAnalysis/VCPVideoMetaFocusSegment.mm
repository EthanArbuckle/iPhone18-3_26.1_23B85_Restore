@interface VCPVideoMetaFocusSegment
- (VCPVideoMetaFocusSegment)initWithFocusStatus:(int64_t)status atTime:(id *)time;
- (void)resetSegment:(int64_t)segment atTime:(id *)time;
- (void)updateSegment:(int64_t)segment atTime:(id *)time;
@end

@implementation VCPVideoMetaFocusSegment

- (VCPVideoMetaFocusSegment)initWithFocusStatus:(int64_t)status atTime:(id *)time
{
  v12.receiver = self;
  v12.super_class = VCPVideoMetaFocusSegment;
  v6 = [(VCPMetaSegment *)&v12 init];
  v7 = v6;
  if (v6)
  {
    v10 = *&time->var0;
    var3 = time->var3;
    [(VCPVideoMetaFocusSegment *)v6 resetSegment:status atTime:&v10];
    v8 = v7;
  }

  return v7;
}

- (void)updateSegment:(int64_t)segment atTime:(id *)time
{
  v7 = *time;
  v6.receiver = self;
  v6.super_class = VCPVideoMetaFocusSegment;
  [(VCPMetaSegment *)&v6 updateSegment:&v7];
  self->_focusStatus = segment;
}

- (void)resetSegment:(int64_t)segment atTime:(id *)time
{
  v7 = *time;
  v6.receiver = self;
  v6.super_class = VCPVideoMetaFocusSegment;
  [(VCPMetaSegment *)&v6 resetSegment:&v7];
  self->_focusStatus = segment;
}

@end