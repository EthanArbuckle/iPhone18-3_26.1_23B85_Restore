@interface CAMSpatialModeDescriptionOverlayView
- (void)setOrientation:(int64_t)orientation animated:(BOOL)animated;
@end

@implementation CAMSpatialModeDescriptionOverlayView

- (void)setOrientation:(int64_t)orientation animated:(BOOL)animated
{
  animatedCopy = animated;
  if (![(CAMSpatialModeDescriptionOverlayView *)self _didTapAcknowledgement])
  {
    v7.receiver = self;
    v7.super_class = CAMSpatialModeDescriptionOverlayView;
    [(CAMDescriptionOverlayView *)&v7 setOrientation:orientation animated:animatedCopy];
  }
}

@end