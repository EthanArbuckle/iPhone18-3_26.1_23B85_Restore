@interface CAMTimerButton
- (CAMTimerButton)initWithFrame:(CGRect)a3;
- (CAMTimerButton)initWithLayoutStyle:(int64_t)a3;
- (CAMTimerButtonDelegate)delegate;
- (id)_currentGlyphImageForAccessibiliyHUD:(BOOL)a3;
- (id)shownIndexesWhileCollapsed;
- (id)titleForMenuItemAtIndex:(int64_t)a3;
- (void)_commonCAMTimerButtonInitialization;
- (void)_updateCurrentGlyphImage;
- (void)reloadData;
- (void)setDuration:(int64_t)a3 animated:(BOOL)a4;
- (void)setHideOffWhenCollapsed:(BOOL)a3 needsReloadData:(BOOL)a4;
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
  v3 = [(CAMTimerButton *)self _glyphView];
  [v3 setImage:v4];
}

- (CAMTimerButton)initWithLayoutStyle:(int64_t)a3
{
  v7.receiver = self;
  v7.super_class = CAMTimerButton;
  v3 = [(CAMExpandableMenuButton *)&v7 initWithLayoutStyle:a3];
  v4 = v3;
  if (v3)
  {
    [(CAMTimerButton *)v3 _commonCAMTimerButtonInitialization];
    v5 = v4;
  }

  return v4;
}

- (CAMTimerButton)initWithFrame:(CGRect)a3
{
  v4 = [MEMORY[0x1E69DC938] currentDevice];
  v5 = [v4 cam_initialLayoutStyle];

  return [(CAMTimerButton *)self initWithLayoutStyle:v5];
}

- (void)setDuration:(int64_t)a3 animated:(BOOL)a4
{
  if ([(CAMExpandableMenuButton *)self selectedIndex:a3]!= a3)
  {

    [(CAMExpandableMenuButton *)self setSelectedIndex:a3];
  }
}

- (void)setHideOffWhenCollapsed:(BOOL)a3 needsReloadData:(BOOL)a4
{
  if (self->_hideOffWhenCollapsed != a3)
  {
    self->_hideOffWhenCollapsed = a3;
    if (a4)
    {
      [(CAMTimerButton *)self reloadData];
    }
  }
}

- (id)_currentGlyphImageForAccessibiliyHUD:(BOOL)a3
{
  v3 = a3;
  v4 = [(CAMExpandableMenuButton *)self layoutStyle];
  v5 = @"CAMTimerButton";
  if (!v4 || v4 == 3)
  {
LABEL_5:
    if (!v3)
    {
      v6 = MEMORY[0x1E69DCAB8];
      v7 = CAMCameraUIFrameworkBundle();
      v8 = [v6 imageNamed:v5 inBundle:v7];
      v9 = [v8 imageWithRenderingMode:2];

      goto LABEL_9;
    }

    goto LABEL_8;
  }

  if (v4 == 1)
  {
    v5 = @"CAMTimerButtonPad";
    goto LABEL_5;
  }

  if (v3)
  {
LABEL_8:
    v9 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"timer"];
    goto LABEL_9;
  }

  v9 = 0;
LABEL_9:

  return v9;
}

- (id)titleForMenuItemAtIndex:(int64_t)a3
{
  if (a3)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained timeIntervalForDuration:a3];
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