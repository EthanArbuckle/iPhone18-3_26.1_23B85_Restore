@interface CAMVideoStabilizationStatusIndicator
- (void)setVideoStabilizationMode:(int64_t)mode animated:(BOOL)animated;
@end

@implementation CAMVideoStabilizationStatusIndicator

- (void)setVideoStabilizationMode:(int64_t)mode animated:(BOOL)animated
{
  if (self->_videoStabilizationMode != mode)
  {
    self->_videoStabilizationMode = mode;
    [(CAMControlStatusIndicator *)self updateImageAnimated:animated];
  }
}

@end