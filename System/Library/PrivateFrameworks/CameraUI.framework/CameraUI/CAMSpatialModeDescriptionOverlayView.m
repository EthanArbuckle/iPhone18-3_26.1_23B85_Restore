@interface CAMSpatialModeDescriptionOverlayView
- (void)setOrientation:(int64_t)a3 animated:(BOOL)a4;
@end

@implementation CAMSpatialModeDescriptionOverlayView

- (void)setOrientation:(int64_t)a3 animated:(BOOL)a4
{
  v4 = a4;
  if (![(CAMSpatialModeDescriptionOverlayView *)self _didTapAcknowledgement])
  {
    v7.receiver = self;
    v7.super_class = CAMSpatialModeDescriptionOverlayView;
    [(CAMDescriptionOverlayView *)&v7 setOrientation:a3 animated:v4];
  }
}

@end