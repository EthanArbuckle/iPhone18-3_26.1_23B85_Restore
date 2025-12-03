@interface CAMTimerButton
- (CAMTimerButton)initWithFrame:(CGRect)frame;
- (CAMTimerButton)initWithLayoutStyle:(int64_t)style;
- (CAMTimerButtonDelegate)delegate;
- (id)_currentGlyphImageForAccessibiliyHUD:(BOOL)d;
- (id)shownIndexesWhileCollapsed;
- (id)titleForMenuItemAtIndex:(int64_t)index;
- (void)_commonCAMTimerButtonInitialization;
- (void)_updateCurrentGlyphImage;
- (void)reloadData;
- (void)setDuration:(int64_t)duration animated:(BOOL)animated;
- (void)setHideOffWhenCollapsed:(BOOL)collapsed needsReloadData:(BOOL)data;
@end

@implementation CAMTimerButton

- (id)shownIndexesWhileCollapsed
{
  v3 = objc_alloc_init(MEMORY[0x1E696AD50]);
  if (![(CAMTimerButton *)self hideOffWhenCollapsed])
  {
    [v3 addIndex:0];
  }

  [v3 addIndex:1];
  [v3 addIndex:2];
  [v3 addIndex:3];

  return v3;
}

- (void)_commonCAMTimerButtonInitialization
{
  v5 = [(CAMTimerButton *)self _currentGlyphImageForAccessibiliyHUD:0];
  v3 = [objc_alloc(MEMORY[0x1E69DCAE0]) initWithImage:v5];
  glyphView = self->__glyphView;
  self->__glyphView = v3;

  [(CAMTimerButton *)self setDuration:0];
  [(CAMExpandableMenuButton *)self setHighlighted:1 forIndex:1];
  [(CAMExpandableMenuButton *)self setHighlighted:1 forIndex:2];
  [(CAMExpandableMenuButton *)self setHighlighted:1 forIndex:3];
}

- (void)reloadData
{
  v3.receiver = self;
  v3.super_class = CAMTimerButton;
  [(CAMExpandableMenuButton *)&v3 reloadData];
  [(CAMTimerButton *)self _updateCurrentGlyphImage];
}

- (void)_updateCurrentGlyphImage
{
  v4 = [(CAMTimerButton *)self _currentGlyphImageForAccessibiliyHUD:0];
  _glyphView = [(CAMTimerButton *)self _glyphView];
  [_glyphView setImage:v4];
}

- (CAMTimerButton)initWithLayoutStyle:(int64_t)style
{
  v7.receiver = self;
  v7.super_class = CAMTimerButton;
  v3 = [(CAMExpandableMenuButton *)&v7 initWithLayoutStyle:style];
  v4 = v3;
  if (v3)
  {
    [(CAMTimerButton *)v3 _commonCAMTimerButtonInitialization];
    v5 = v4;
  }

  return v4;
}

- (CAMTimerButton)initWithFrame:(CGRect)frame
{
  currentDevice = [MEMORY[0x1E69DC938] currentDevice];
  cam_initialLayoutStyle = [currentDevice cam_initialLayoutStyle];

  return [(CAMTimerButton *)self initWithLayoutStyle:cam_initialLayoutStyle];
}

- (void)setDuration:(int64_t)duration animated:(BOOL)animated
{
  if ([(CAMExpandableMenuButton *)self selectedIndex:duration]!= duration)
  {

    [(CAMExpandableMenuButton *)self setSelectedIndex:duration];
  }
}

- (void)setHideOffWhenCollapsed:(BOOL)collapsed needsReloadData:(BOOL)data
{
  if (self->_hideOffWhenCollapsed != collapsed)
  {
    self->_hideOffWhenCollapsed = collapsed;
    if (data)
    {
      [(CAMTimerButton *)self reloadData];
    }
  }
}

- (id)_currentGlyphImageForAccessibiliyHUD:(BOOL)d
{
  dCopy = d;
  layoutStyle = [(CAMExpandableMenuButton *)self layoutStyle];
  v5 = @"CAMTimerButton";
  if (!layoutStyle || layoutStyle == 3)
  {
LABEL_5:
    if (!dCopy)
    {
      v6 = MEMORY[0x1E69DCAB8];
      v7 = CAMCameraUIFrameworkBundle();
      v8 = [v6 imageNamed:v5 inBundle:v7];
      v9 = [v8 imageWithRenderingMode:2];

      goto LABEL_9;
    }

    goto LABEL_8;
  }

  if (layoutStyle == 1)
  {
    v5 = @"CAMTimerButtonPad";
    goto LABEL_5;
  }

  if (dCopy)
  {
LABEL_8:
    v9 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"timer"];
    goto LABEL_9;
  }

  v9 = 0;
LABEL_9:

  return v9;
}

- (id)titleForMenuItemAtIndex:(int64_t)index
{
  if (index)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained timeIntervalForDuration:index];
    v6 = v5;

    v7 = CAMTimerDurationFormatter();
    v8 = [MEMORY[0x1E696AD98] numberWithDouble:v6];
    v9 = [v7 stringFromNumber:v8];

    v10 = MEMORY[0x1E696AEC0];
    v11 = CAMLocalizedFrameworkString(@"TIMER_DURATION_TEXT", 0);
    v12 = [v10 stringWithValidatedFormat:v11 validFormatSpecifiers:@"%@" error:0, v9];
  }

  else
  {
    v12 = CAMLocalizedFrameworkString(@"TIMER_OFF_TEXT", @"A label indicating the camera's timer is turned off.");
  }

  return v12;
}

- (CAMTimerButtonDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end