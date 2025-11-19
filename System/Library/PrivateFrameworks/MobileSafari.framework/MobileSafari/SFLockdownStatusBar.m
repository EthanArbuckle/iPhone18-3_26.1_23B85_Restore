@interface SFLockdownStatusBar
- (CGSize)intrinsicContentSize;
- (CGSize)preferredSize;
- (SFLockdownStatusBar)initWithFrame:(CGRect)a3;
- (double)preferredSquishedBottomSpacing;
- (double)topSquishedSpacingAdjustment;
- (void)_updateLabelWithLockdownStatus:(int64_t)a3;
- (void)_updateLockdownStatusLabelAnimated:(BOOL)a3;
- (void)layoutSubviews;
- (void)setNavigationBarItem:(id)a3;
@end

@implementation SFLockdownStatusBar

- (SFLockdownStatusBar)initWithFrame:(CGRect)a3
{
  v18[1] = *MEMORY[0x1E69E9840];
  v16.receiver = self;
  v16.super_class = SFLockdownStatusBar;
  v3 = [(SFLockdownStatusBar *)&v16 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    lockdownModeStatusLabel = v3->_lockdownModeStatusLabel;
    v3->_lockdownModeStatusLabel = v4;

    [(UILabel *)v3->_lockdownModeStatusLabel setAdjustsFontSizeToFitWidth:0];
    v6 = MEMORY[0x1E69DB878];
    v7 = *MEMORY[0x1E69DDD80];
    v8 = [MEMORY[0x1E69DD1B8] traitCollectionWithPreferredContentSizeCategory:*MEMORY[0x1E69DDC78]];
    v9 = [v6 preferredFontForTextStyle:v7 compatibleWithTraitCollection:v8];
    [(UILabel *)v3->_lockdownModeStatusLabel setFont:v9];

    [(SFLockdownStatusBar *)v3 bounds];
    [(UILabel *)v3->_lockdownModeStatusLabel setFrame:?];
    [(UILabel *)v3->_lockdownModeStatusLabel setAutoresizingMask:18];
    [(UILabel *)v3->_lockdownModeStatusLabel setTextAlignment:1];
    [(SFLockdownStatusBar *)v3 _updateLockdownStatusLabel];
    [(SFLockdownStatusBar *)v3 addSubview:v3->_lockdownModeStatusLabel];
    [(SFNavigationBarItem *)v3->_navigationBarItem lockdownModeAnnotation];
    v10 = WBSAnnotationStringForLockdownModeStatus();
    v11 = [v10 stringByReplacingOccurrencesOfString:@" " withString:&stru_1EFF36230];

    v17 = @"status";
    v18[0] = v11;
    v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v18 forKeys:&v17 count:1];
    v13 = WBSMakeAccessibilityIdentifier();
    [(SFLockdownStatusBar *)v3 setAccessibilityIdentifier:v13];

    v14 = v3;
  }

  return v3;
}

- (void)layoutSubviews
{
  v10.receiver = self;
  v10.super_class = SFLockdownStatusBar;
  [(SFLockdownStatusBar *)&v10 layoutSubviews];
  [(SFLockdownStatusBar *)self layoutMargins];
  v4 = v3;
  v6 = v5;
  [(SFLockdownStatusBar *)self bounds];
  [(UILabel *)self->_lockdownModeStatusLabel setFrame:v4 + v7, v8 + 0.0, v9 - (v4 + v6)];
}

- (CGSize)intrinsicContentSize
{
  [(UILabel *)self->_lockdownModeStatusLabel intrinsicContentSize];
  result.height = v3;
  result.width = v2;
  return result;
}

- (void)_updateLockdownStatusLabelAnimated:(BOOL)a3
{
  v5 = [(SFNavigationBarItem *)self->_navigationBarItem lockdownModeAnnotation];
  if (self->_currentLockdownStatus != v5)
  {
    if (a3)
    {
      lockdownModeStatusLabel = self->_lockdownModeStatusLabel;
      v7[0] = MEMORY[0x1E69E9820];
      v7[1] = 3221225472;
      v7[2] = __58__SFLockdownStatusBar__updateLockdownStatusLabelAnimated___block_invoke;
      v7[3] = &unk_1E721BAC0;
      v7[4] = self;
      v7[5] = v5;
      [MEMORY[0x1E69DD250] transitionWithView:lockdownModeStatusLabel duration:5242880 options:v7 animations:0 completion:0.3];
    }

    else
    {

      [(SFLockdownStatusBar *)self _updateLabelWithLockdownStatus:v5];
    }
  }
}

- (void)_updateLabelWithLockdownStatus:(int64_t)a3
{
  v5 = WBSAnnotationStringForLockdownModeStatus();
  [(UILabel *)self->_lockdownModeStatusLabel setText:v5];

  if (a3 == 2)
  {
    [MEMORY[0x1E69DC888] systemRedColor];
  }

  else
  {
    [MEMORY[0x1E69DC888] systemGrayColor];
  }
  v6 = ;
  [(UILabel *)self->_lockdownModeStatusLabel setTextColor:v6];

  self->_currentLockdownStatus = a3;
}

- (void)setNavigationBarItem:(id)a3
{
  v5 = a3;
  navigationBarItem = self->_navigationBarItem;
  if (navigationBarItem != v5)
  {
    v7 = v5;
    [(SFNavigationBarItem *)navigationBarItem removeObserver:self];
    objc_storeStrong(&self->_navigationBarItem, a3);
    [(SFNavigationBarItem *)self->_navigationBarItem addObserver:self];
    [(SFLockdownStatusBar *)self _updateLockdownStatusLabelAnimated:self->_shouldAnimateNavigationBarItemChanges];
    v5 = v7;
  }
}

- (CGSize)preferredSize
{
  [(UILabel *)self->_lockdownModeStatusLabel intrinsicContentSize];
  v3 = 0.0;
  result.height = v2;
  result.width = v3;
  return result;
}

- (double)preferredSquishedBottomSpacing
{
  +[SFUnifiedBarMetrics defaultSquishedContentSpacing];
  v4 = v3;
  [(SFLockdownStatusBar *)self titleBaselineInsetFromBottom];
  v6 = v5;
  +[SFUnifiedBarMetrics minimumSquishScale];
  return v4 - v6 * v7;
}

- (double)topSquishedSpacingAdjustment
{
  [(SFLockdownStatusBar *)self titleCapHeightInsetFromTop];
  v3 = v2;
  +[SFUnifiedBarMetrics minimumSquishScale];
  return v3 * v4;
}

@end