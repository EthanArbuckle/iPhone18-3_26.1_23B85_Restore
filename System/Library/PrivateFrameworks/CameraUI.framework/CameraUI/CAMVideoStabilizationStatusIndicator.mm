@interface CAMVideoStabilizationStatusIndicator
- (void)setVideoStabilizationMode:(int64_t)a3 animated:(BOOL)a4;
@end

@implementation CAMVideoStabilizationStatusIndicator

- (void)setVideoStabilizationMode:(int64_t)a3 animated:(BOOL)a4
{
  if (self->_videoStabilizationMode != a3)
  {
    self->_videoStabilizationMode = a3;
    [(CAMControlStatusIndicator *)self updateImageAnimated:a4];
  }
}

@end