@interface CAMFlashButton
- (BOOL)shouldIgnoreMenuInteraction;
- (BOOL)wantsSelectedItemToBeVisible;
- (CAMFlashButton)initWithFrame:(CGRect)frame;
- (CAMFlashButton)initWithLayoutStyle:(int64_t)style;
- (double)collapsedSelectedLabelHorizontalMargin;
- (id)_currentGlyphImageForAccessibilityHUD:(BOOL)d;
- (id)headerView;
- (id)imageForAccessibilityHUD;
- (id)titleForMenuItemAtIndex:(int64_t)index;
- (int64_t)flashMode;
- (int64_t)indexForMode:(int64_t)mode;
- (int64_t)modeForIndex:(int64_t)index;
- (int64_t)numberOfMenuItems;
- (void)_commonCAMFlashButtonInitialization;
- (void)_updateCurrentGlyphImage;
- (void)reloadData;
- (void)setAllowsAutomaticFlash:(BOOL)flash needsReloadData:(BOOL)data;
- (void)setFlashMode:(int64_t)mode;
- (void)setUnavailable:(BOOL)unavailable;
@end

@implementation CAMFlashButton

- (BOOL)wantsSelectedItemToBeVisible
{
  if ([(CAMFlashButton *)self isUnavailable])
  {
    return 0;
  }

  v4.receiver = self;
  v4.super_class = CAMFlashButton;
  return [(CAMExpandableMenuButton *)&v4 wantsSelectedItemToBeVisible];
}

- (void)_commonCAMFlashButtonInitialization
{
  v5 = [(CAMFlashButton *)self _currentGlyphImageForAccessibilityHUD:0];
  v3 = [objc_alloc(MEMORY[0x1E69DCAE0]) initWithImage:v5];
  glyphView = self->__glyphView;
  self->__glyphView = v3;

  [(UIImageView *)self->__glyphView _setAnimatesContents:1];
}

- (void)reloadData
{
  v4.receiver = self;
  v4.super_class = CAMFlashButton;
  [(CAMExpandableMenuButton *)&v4 reloadData];
  [(CAMFlashButton *)self _updateCurrentGlyphImage];
  if ([(CAMFlashButton *)self numberOfMenuItems]>= 1)
  {
    v3 = 0;
    do
    {
      [(CAMExpandableMenuButton *)self setHighlighted:[(CAMFlashButton *)self modeForIndex:v3]== 1 forIndex:v3];
      ++v3;
    }

    while (v3 < [(CAMFlashButton *)self numberOfMenuItems]);
  }
}

- (int64_t)numberOfMenuItems
{
  if ([(CAMFlashButton *)self isUnavailable])
  {
    return 0;
  }

  if ([(CAMFlashButton *)self allowsAutomaticFlash])
  {
    return 3;
  }

  return 2;
}

- (id)headerView
{
  if ([(CAMFlashButton *)self isUnavailable])
  {
    [(CAMFlashButton *)self _warningIndicatorView];
  }

  else
  {
    [(CAMFlashButton *)self _glyphView];
  }
  v3 = ;

  return v3;
}

- (void)_updateCurrentGlyphImage
{
  v4 = [(CAMFlashButton *)self _currentGlyphImageForAccessibilityHUD:0];
  _glyphView = [(CAMFlashButton *)self _glyphView];
  [_glyphView setImage:v4];
}

- (CAMFlashButton)initWithLayoutStyle:(int64_t)style
{
  v7.receiver = self;
  v7.super_class = CAMFlashButton;
  v3 = [(CAMExpandableMenuButton *)&v7 initWithLayoutStyle:style];
  v4 = v3;
  if (v3)
  {
    [(CAMFlashButton *)v3 _commonCAMFlashButtonInitialization];
    v5 = v4;
  }

  return v4;
}

- (CAMFlashButton)initWithFrame:(CGRect)frame
{
  currentDevice = [MEMORY[0x1E69DC938] currentDevice];
  cam_initialLayoutStyle = [currentDevice cam_initialLayoutStyle];

  return [(CAMFlashButton *)self initWithLayoutStyle:cam_initialLayoutStyle];
}

- (int64_t)flashMode
{
  selectedIndex = [(CAMExpandableMenuButton *)self selectedIndex];

  return [(CAMFlashButton *)self modeForIndex:selectedIndex];
}

- (void)setFlashMode:(int64_t)mode
{
  [(CAMExpandableMenuButton *)self setSelectedIndex:[(CAMFlashButton *)self indexForMode:mode]];

  [(CAMFlashButton *)self _updateCurrentGlyphImage];
}

- (void)setAllowsAutomaticFlash:(BOOL)flash needsReloadData:(BOOL)data
{
  if (self->_allowsAutomaticFlash != flash)
  {
    dataCopy = data;
    v7 = [(CAMFlashButton *)self modeForIndex:[(CAMExpandableMenuButton *)self selectedIndex]];
    self->_allowsAutomaticFlash = flash;
    v8 = [(CAMFlashButton *)self indexForMode:v7];
    if (dataCopy)
    {
      [(CAMFlashButton *)self reloadData];
    }

    [(CAMExpandableMenuButton *)self setSelectedIndex:v8];

    [(CAMFlashButton *)self _updateCurrentGlyphImage];
  }
}

- (void)setUnavailable:(BOOL)unavailable
{
  if (self->_unavailable != unavailable)
  {
    self->_unavailable = unavailable;
    if (unavailable && !self->__warningIndicatorView)
    {
      v5 = MEMORY[0x1E69DCAB8];
      v6 = CAMCameraUIFrameworkBundle();
      v7 = [v5 imageNamed:@"CAMFlashDisabled_2only_" inBundle:v6];
      v8 = [v7 imageWithRenderingMode:2];

      v9 = [objc_alloc(MEMORY[0x1E69DCAE0]) initWithImage:v8];
      warningIndicatorView = self->__warningIndicatorView;
      self->__warningIndicatorView = v9;

      v11 = self->__warningIndicatorView;
      systemYellowColor = [MEMORY[0x1E69DC888] systemYellowColor];
      [(UIImageView *)v11 setTintColor:systemYellowColor];
    }

    [(CAMFlashButton *)self reloadData];
  }
}

- (int64_t)modeForIndex:(int64_t)index
{
  LODWORD(result) = [(CAMFlashButton *)self allowsAutomaticFlash];
  v5 = 1;
  if (result)
  {
    v5 = 2;
  }

  if (index == 2)
  {
    v5 = 0;
  }

  if (index == 1)
  {
    return result;
  }

  else
  {
    return v5;
  }
}

- (int64_t)indexForMode:(int64_t)mode
{
  if (mode)
  {
    v4 = mode == 1;
  }

  else
  {
    v4 = 2;
  }

  allowsAutomaticFlash = [(CAMFlashButton *)self allowsAutomaticFlash];
  v6 = 0x7FFFFFFFFFFFFFFFLL;
  if (v4 <= 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = v4;
  }

  v8 = v7 - 1;
  if (mode != 2)
  {
    v6 = v8;
  }

  if (allowsAutomaticFlash)
  {
    return v4;
  }

  else
  {
    return v6;
  }
}

- (id)titleForMenuItemAtIndex:(int64_t)index
{
  v3 = [(CAMFlashButton *)self modeForIndex:index];
  if (v3 > 2)
  {
    v4 = 0;
  }

  else
  {
    v4 = CAMLocalizedFrameworkString(off_1E76FBEE0[v3], 0);
  }

  return v4;
}

- (id)_currentGlyphImageForAccessibilityHUD:(BOOL)d
{
  dCopy = d;
  v5 = [(CAMFlashButton *)self modeForIndex:[(CAMExpandableMenuButton *)self selectedIndex]];
  isExpanded = [(CAMExpandableMenuButton *)self isExpanded];
  wantsSelectedItemToBeVisible = [(CAMFlashButton *)self wantsSelectedItemToBeVisible];
  layoutStyle = [(CAMExpandableMenuButton *)self layoutStyle];
  if (v5)
  {
    v9 = 1;
  }

  else
  {
    v9 = isExpanded;
  }

  v10 = v9 | wantsSelectedItemToBeVisible;
  if (layoutStyle == 3)
  {
LABEL_7:
    v11 = @"CAMFlashButtonOff";
    v12 = @"CAMFlashButton";
    goto LABEL_9;
  }

  if (layoutStyle != 1)
  {
    if (layoutStyle)
    {
      v13 = 0;
      v17 = 0;
      if (!dCopy)
      {
        goto LABEL_17;
      }

      goto LABEL_14;
    }

    goto LABEL_7;
  }

  v11 = @"CAMFlashButtonOffPad";
  v12 = @"CAMFlashButtonPad";
LABEL_9:
  if (v10)
  {
    v11 = v12;
  }

  v13 = v11;
  if (!dCopy)
  {
    v14 = MEMORY[0x1E69DCAB8];
    v15 = CAMCameraUIFrameworkBundle();
    v16 = [v14 imageNamed:v13 inBundle:v15];
    v17 = [v16 imageWithRenderingMode:2];

    goto LABEL_17;
  }

LABEL_14:
  v18 = @"bolt.slash.fill";
  if (v10)
  {
    v18 = @"bolt.fill";
  }

  v19 = v18;

  v17 = [MEMORY[0x1E69DCAB8] systemImageNamed:v19];
  v13 = v19;
LABEL_17:

  return v17;
}

- (BOOL)shouldIgnoreMenuInteraction
{
  if ([(CAMFlashButton *)self isUnavailable])
  {
    [(CAMFlashButton *)self sendActionsForControlEvents:0x1000000];
  }

  return [(CAMFlashButton *)self isUnavailable];
}

- (double)collapsedSelectedLabelHorizontalMargin
{
  v6.receiver = self;
  v6.super_class = CAMFlashButton;
  [(CAMExpandableMenuButton *)&v6 collapsedSelectedLabelHorizontalMargin];
  v4 = v3;
  if ([(CAMFlashButton *)self wantsSelectedItemToBeVisible])
  {
    v4 = v4 + -5.0;
    if (v4 < 0.0)
    {
      return 0.0;
    }
  }

  return v4;
}

- (id)imageForAccessibilityHUD
{
  if ([(CAMFlashButton *)self isUnavailable])
  {
    [MEMORY[0x1E69DCAB8] systemImageNamed:@"bolt.trianglebadge.exclamationmark.fill"];
  }

  else
  {
    [(CAMFlashButton *)self _currentGlyphImageForAccessibilityHUD:1];
  }
  v3 = ;

  return v3;
}

@end