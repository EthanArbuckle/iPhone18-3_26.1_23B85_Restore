@interface CAMSharedLibraryBadge
- (CAMSharedLibraryBadge)initWithFrame:(CGRect)a3;
- (void)_updateTextAndColors;
- (void)setSharedLibraryMode:(int64_t)a3;
@end

@implementation CAMSharedLibraryBadge

- (CAMSharedLibraryBadge)initWithFrame:(CGRect)a3
{
  v7.receiver = self;
  v7.super_class = CAMSharedLibraryBadge;
  v3 = [(CEKBadgeTextView *)&v7 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(CAMSharedLibraryBadge *)v3 _updateTextAndColors];
    v5 = v4;
  }

  return v4;
}

- (void)setSharedLibraryMode:(int64_t)a3
{
  if (self->_sharedLibraryMode != a3)
  {
    self->_sharedLibraryMode = a3;
    [(CAMSharedLibraryBadge *)self _updateTextAndColors];
  }
}

- (void)_updateTextAndColors
{
  if (CAMSharedLibraryModeIsOn([(CAMSharedLibraryBadge *)self sharedLibraryMode]))
  {
    v3 = @"SHARED_LIBRARY_CAPS";
  }

  else
  {
    v3 = @"PERSONAL_LIBRARY_CAPS";
  }

  v5 = CAMLocalizedFrameworkString(v3, 0);
  if (CAMSharedLibraryModeIsOn([(CAMSharedLibraryBadge *)self sharedLibraryMode]))
  {
    [MEMORY[0x1E69DC888] systemYellowColor];
  }

  else
  {
    [MEMORY[0x1E69DC888] whiteColor];
  }
  v4 = ;
  [(CEKBadgeTextView *)self _setText:v5];
  [(CEKBadgeView *)self _setFillColor:v4];
  [(CAMSharedLibraryBadge *)self setNeedsLayout];
}

@end