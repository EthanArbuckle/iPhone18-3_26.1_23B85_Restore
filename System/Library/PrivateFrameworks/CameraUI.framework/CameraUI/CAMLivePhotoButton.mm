@interface CAMLivePhotoButton
- (CAMLivePhotoButton)initWithLayoutStyle:(int64_t)style;
- (id)_availableModes;
- (id)_currentBaseImage;
- (id)imageForAccessibilityHUD;
- (id)titleForMenuItemAtIndex:(int64_t)index;
- (int64_t)indexForMode:(int64_t)mode;
- (int64_t)livePhotoMode;
- (int64_t)modeForIndex:(int64_t)index;
- (int64_t)numberOfMenuItems;
- (void)_updateBaseImage;
- (void)finishExpansionAnimated:(BOOL)animated;
- (void)interruptEnablingAnimation;
- (void)performEnablingAnimation;
- (void)reloadData;
- (void)setAllowsAutomaticMode:(BOOL)mode needsReloadData:(BOOL)data;
- (void)setLivePhotoMode:(int64_t)mode;
- (void)setSelectedIndex:(int64_t)index;
@end

@implementation CAMLivePhotoButton

- (CAMLivePhotoButton)initWithLayoutStyle:(int64_t)style
{
  v8.receiver = self;
  v8.super_class = CAMLivePhotoButton;
  v3 = [(CAMExpandableMenuButton *)&v8 initWithLayoutStyle:style];
  if (v3)
  {
    v4 = objc_alloc_init(CAMLivePhotoBloomView);
    bloomView = v3->__bloomView;
    v3->__bloomView = v4;

    [(CAMLivePhotoButton *)v3 _updateBaseImage];
    v6 = v3;
  }

  return v3;
}

- (int64_t)livePhotoMode
{
  selectedIndex = [(CAMExpandableMenuButton *)self selectedIndex];

  return [(CAMLivePhotoButton *)self modeForIndex:selectedIndex];
}

- (void)setLivePhotoMode:(int64_t)mode
{
  v4 = [(CAMLivePhotoButton *)self indexForMode:mode];

  [(CAMLivePhotoButton *)self setSelectedIndex:v4];
}

- (void)setSelectedIndex:(int64_t)index
{
  if ([(CAMExpandableMenuButton *)self selectedIndex]!= index)
  {
    [(CAMLivePhotoButton *)self interruptEnablingAnimation];
    v5.receiver = self;
    v5.super_class = CAMLivePhotoButton;
    [(CAMExpandableMenuButton *)&v5 setSelectedIndex:index];
    [(CAMLivePhotoButton *)self _updateBaseImage];
  }
}

- (void)setAllowsAutomaticMode:(BOOL)mode needsReloadData:(BOOL)data
{
  if (self->_allowsAutomaticMode != mode)
  {
    dataCopy = data;
    v7 = [(CAMLivePhotoButton *)self modeForIndex:[(CAMExpandableMenuButton *)self selectedIndex]];
    self->_allowsAutomaticMode = mode;
    v8 = [(CAMLivePhotoButton *)self indexForMode:v7];
    if (dataCopy)
    {
      [(CAMLivePhotoButton *)self reloadData];
    }

    [(CAMLivePhotoButton *)self setSelectedIndex:v8];

    [(CAMLivePhotoButton *)self _updateBaseImage];
  }
}

- (id)_availableModes
{
  if ([(CAMLivePhotoButton *)self allowsAutomaticMode])
  {
    return &unk_1F16C95C0;
  }

  else
  {
    return &unk_1F16C95D8;
  }
}

- (int64_t)modeForIndex:(int64_t)index
{
  _availableModes = [(CAMLivePhotoButton *)self _availableModes];
  v5 = _availableModes;
  if (index < 0 || [_availableModes count] <= index)
  {
    integerValue = 0;
  }

  else
  {
    v6 = [v5 objectAtIndexedSubscript:index];
    integerValue = [v6 integerValue];
  }

  return integerValue;
}

- (int64_t)indexForMode:(int64_t)mode
{
  _availableModes = [(CAMLivePhotoButton *)self _availableModes];
  v5 = [MEMORY[0x1E696AD98] numberWithInteger:mode];
  v6 = [_availableModes indexOfObject:v5];

  return v6;
}

- (int64_t)numberOfMenuItems
{
  _availableModes = [(CAMLivePhotoButton *)self _availableModes];
  v3 = [_availableModes count];

  return v3;
}

- (id)titleForMenuItemAtIndex:(int64_t)index
{
  v3 = [(CAMLivePhotoButton *)self modeForIndex:index];
  switch(v3)
  {
    case 2:
      v4 = @"AUTO";
      v5 = @"A label for turning LivePhoto mode to Auto mode.";
      goto LABEL_7;
    case 1:
      v4 = @"LIVE_PHOTO_BUTTON_ON";
      v5 = @"A label for turning LivePhoto mode on.";
      goto LABEL_7;
    case 0:
      v4 = @"LIVE_PHOTO_BUTTON_OFF";
      v5 = @"A label for turning LivePhoto mode off.";
LABEL_7:
      v6 = CAMLocalizedFrameworkString(v4, v5);
      goto LABEL_9;
  }

  v6 = 0;
LABEL_9:

  return v6;
}

- (id)_currentBaseImage
{
  v3 = [(CAMLivePhotoButton *)self modeForIndex:[(CAMExpandableMenuButton *)self selectedIndex]];
  wantsSelectedItemToBeVisible = [(CAMExpandableMenuButton *)self wantsSelectedItemToBeVisible];
  v5 = @"CAMIrisButton-0-PhotoIris";
  if (!v3 && ![(CAMExpandableMenuButton *)self isExpanded]&& !wantsSelectedItemToBeVisible)
  {
    v5 = @"CAMIrisButtonInactive";
  }

  v6 = MEMORY[0x1E69DCAB8];
  v7 = v5;
  v8 = CAMCameraUIFrameworkBundle();
  v9 = [v6 imageNamed:v7 inBundle:v8];

  v10 = [v9 imageWithRenderingMode:2];

  return v10;
}

- (void)_updateBaseImage
{
  livePhotoMode = [(CAMLivePhotoButton *)self livePhotoMode];
  switch(livePhotoMode)
  {
    case 2:
      whiteColor = [MEMORY[0x1E69DC888] whiteColor];
      goto LABEL_7;
    case 1:
      whiteColor = [MEMORY[0x1E69DC888] systemYellowColor];
LABEL_7:
      whiteColor2 = whiteColor;
      goto LABEL_9;
    case 0:
      whiteColor2 = [MEMORY[0x1E69DC888] whiteColor];
      v4 = 1;
      goto LABEL_10;
  }

  whiteColor2 = 0;
LABEL_9:
  v4 = 0;
LABEL_10:
  _bloomView = [(CAMLivePhotoButton *)self _bloomView];
  [_bloomView setIsOff:v4];
  [_bloomView setTintColor:whiteColor2];
}

- (void)reloadData
{
  v4.receiver = self;
  v4.super_class = CAMLivePhotoButton;
  [(CAMExpandableMenuButton *)&v4 reloadData];
  [(CAMLivePhotoButton *)self _updateBaseImage];
  if ([(CAMLivePhotoButton *)self numberOfMenuItems]>= 1)
  {
    v3 = 0;
    do
    {
      [(CAMExpandableMenuButton *)self setHighlighted:[(CAMLivePhotoButton *)self modeForIndex:v3]== 1 forIndex:v3];
      ++v3;
    }

    while (v3 < [(CAMLivePhotoButton *)self numberOfMenuItems]);
  }
}

- (void)finishExpansionAnimated:(BOOL)animated
{
  v4.receiver = self;
  v4.super_class = CAMLivePhotoButton;
  [(CAMExpandableMenuButton *)&v4 finishExpansionAnimated:animated];
  [(CAMLivePhotoButton *)self interruptEnablingAnimation];
}

- (void)performEnablingAnimation
{
  if (([(CAMLivePhotoButton *)self livePhotoMode]- 1) <= 1)
  {
    _bloomView = [(CAMLivePhotoButton *)self _bloomView];
    [_bloomView animateBloom];
  }
}

- (void)interruptEnablingAnimation
{
  _bloomView = [(CAMLivePhotoButton *)self _bloomView];
  [_bloomView stopAnimating];
}

- (id)imageForAccessibilityHUD
{
  livePhotoMode = [(CAMLivePhotoButton *)self livePhotoMode];
  if (livePhotoMode > 2)
  {
    v3 = 0;
  }

  else
  {
    v3 = off_1E76FA5C8[livePhotoMode];
  }

  v4 = MEMORY[0x1E69DCAB8];

  return [v4 systemImageNamed:v3];
}

@end