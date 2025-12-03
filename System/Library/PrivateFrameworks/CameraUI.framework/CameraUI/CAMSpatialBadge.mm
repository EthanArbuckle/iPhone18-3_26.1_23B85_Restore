@interface CAMSpatialBadge
- (CAMSpatialBadge)initWithFrame:(CGRect)frame;
- (void)_updateText;
- (void)setSpatialModeHasVideoSelected:(BOOL)selected;
@end

@implementation CAMSpatialBadge

- (CAMSpatialBadge)initWithFrame:(CGRect)frame
{
  v7.receiver = self;
  v7.super_class = CAMSpatialBadge;
  v3 = [(CEKBadgeTextView *)&v7 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(CAMSpatialBadge *)v3 _updateText];
    v5 = v4;
  }

  return v4;
}

- (void)setSpatialModeHasVideoSelected:(BOOL)selected
{
  if (self->_spatialModeHasVideoSelected != selected)
  {
    self->_spatialModeHasVideoSelected = selected;
    [(CAMSpatialBadge *)self _updateText];
  }
}

- (void)_updateText
{
  if ([(CAMSpatialBadge *)self spatialModeHasVideoSelected])
  {
    v3 = @"SPATIAL_VIDEO";
    v4 = @"Text shown to the user when turning on spatial video";
  }

  else
  {
    v3 = @"SPATIAL_PHOTO";
    v4 = @"Text shown to the user when turning on spatial photo";
  }

  v6 = CAMLocalizedFrameworkString(v3, v4);
  [(CEKBadgeTextView *)self _setText:v6];
  systemYellowColor = [MEMORY[0x1E69DC888] systemYellowColor];
  [(CEKBadgeView *)self _setFillColor:systemYellowColor];
}

@end