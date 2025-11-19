@interface CAMSpatialBadge
- (CAMSpatialBadge)initWithFrame:(CGRect)a3;
- (void)_updateText;
- (void)setSpatialModeHasVideoSelected:(BOOL)a3;
@end

@implementation CAMSpatialBadge

- (CAMSpatialBadge)initWithFrame:(CGRect)a3
{
  v7.receiver = self;
  v7.super_class = CAMSpatialBadge;
  v3 = [(CEKBadgeTextView *)&v7 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(CAMSpatialBadge *)v3 _updateText];
    v5 = v4;
  }

  return v4;
}

- (void)setSpatialModeHasVideoSelected:(BOOL)a3
{
  if (self->_spatialModeHasVideoSelected != a3)
  {
    self->_spatialModeHasVideoSelected = a3;
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
  v5 = [MEMORY[0x1E69DC888] systemYellowColor];
  [(CEKBadgeView *)self _setFillColor:v5];
}

@end