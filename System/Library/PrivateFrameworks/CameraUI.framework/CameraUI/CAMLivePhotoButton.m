@interface CAMLivePhotoButton
- (CAMLivePhotoButton)initWithLayoutStyle:(int64_t)a3;
- (id)_availableModes;
- (id)_currentBaseImage;
- (id)imageForAccessibilityHUD;
- (id)titleForMenuItemAtIndex:(int64_t)a3;
- (int64_t)indexForMode:(int64_t)a3;
- (int64_t)livePhotoMode;
- (int64_t)modeForIndex:(int64_t)a3;
- (int64_t)numberOfMenuItems;
- (void)_updateBaseImage;
- (void)finishExpansionAnimated:(BOOL)a3;
- (void)interruptEnablingAnimation;
- (void)performEnablingAnimation;
- (void)reloadData;
- (void)setAllowsAutomaticMode:(BOOL)a3 needsReloadData:(BOOL)a4;
- (void)setLivePhotoMode:(int64_t)a3;
- (void)setSelectedIndex:(int64_t)a3;
@end

@implementation CAMLivePhotoButton

- (CAMLivePhotoButton)initWithLayoutStyle:(int64_t)a3
{
  v8.receiver = self;
  v8.super_class = CAMLivePhotoButton;
  v3 = [(CAMExpandableMenuButton *)&v8 initWithLayoutStyle:a3];
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
  v3 = [(CAMExpandableMenuButton *)self selectedIndex];

  return [(CAMLivePhotoButton *)self modeForIndex:v3];
}

- (void)setLivePhotoMode:(int64_t)a3
{
  v4 = [(CAMLivePhotoButton *)self indexForMode:a3];

  [(CAMLivePhotoButton *)self setSelectedIndex:v4];
}

- (void)setSelectedIndex:(int64_t)a3
{
  if ([(CAMExpandableMenuButton *)self selectedIndex]!= a3)
  {
    [(CAMLivePhotoButton *)self interruptEnablingAnimation];
    v5.receiver = self;
    v5.super_class = CAMLivePhotoButton;
    [(CAMExpandableMenuButton *)&v5 setSelectedIndex:a3];
    [(CAMLivePhotoButton *)self _updateBaseImage];
  }
}

- (void)setAllowsAutomaticMode:(BOOL)a3 needsReloadData:(BOOL)a4
{
  if (self->_allowsAutomaticMode != a3)
  {
    v4 = a4;
    v7 = [(CAMLivePhotoButton *)self modeForIndex:[(CAMExpandableMenuButton *)self selectedIndex]];
    self->_allowsAutomaticMode = a3;
    v8 = [(CAMLivePhotoButton *)self indexForMode:v7];
    if (v4)
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

- (int64_t)modeForIndex:(int64_t)a3
{
  v4 = [(CAMLivePhotoButton *)self _availableModes];
  v5 = v4;
  if (a3 < 0 || [v4 count] <= a3)
  {
    v7 = 0;
  }

  else
  {
    v6 = [v5 objectAtIndexedSubscript:a3];
    v7 = [v6 integerValue];
  }

  return v7;
}

- (int64_t)indexForMode:(int64_t)a3
{
  v4 = [(CAMLivePhotoButton *)self _availableModes];
  v5 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
  v6 = [v4 indexOfObject:v5];

  return v6;
}

- (int64_t)numberOfMenuItems
{
  v2 = [(CAMLivePhotoButton *)self _availableModes];
  v3 = [v2 count];

  return v3;
}

- (id)titleForMenuItemAtIndex:(int64_t)a3
{
  v3 = [(CAMLivePhotoButton *)self modeForIndex:a3];
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
  v4 = [(CAMExpandableMenuButton *)self wantsSelectedItemToBeVisible];
  v5 = @"CAMIrisButton-0-PhotoIris";
  if (!v3 && ![(CAMExpandableMenuButton *)self isExpanded]&& !v4)
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
  v3 = [(CAMLivePhotoButton *)self livePhotoMode];
  switch(v3)
  {
    case 2:
      v5 = [MEMORY[0x1E69DC888] whiteColor];
      goto LABEL_7;
    case 1:
      v5 = [MEMORY[0x1E69DC888] systemYellowColor];
LABEL_7:
      v7 = v5;
      goto LABEL_9;
    case 0:
      v7 = [MEMORY[0x1E69DC888] whiteColor];
      v4 = 1;
      goto LABEL_10;
  }

  v7 = 0;
LABEL_9:
  v4 = 0;
LABEL_10:
  v6 = [(CAMLivePhotoButton *)self _bloomView];
  [v6 setIsOff:v4];
  [v6 setTintColor:v7];
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

- (void)finishExpansionAnimated:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = CAMLivePhotoButton;
  [(CAMExpandableMenuButton *)&v4 finishExpansionAnimated:a3];
  [(CAMLivePhotoButton *)self interruptEnablingAnimation];
}

- (void)performEnablingAnimation
{
  if (([(CAMLivePhotoButton *)self livePhotoMode]- 1) <= 1)
  {
    v3 = [(CAMLivePhotoButton *)self _bloomView];
    [v3 animateBloom];
  }
}

- (void)interruptEnablingAnimation
{
  v2 = [(CAMLivePhotoButton *)self _bloomView];
  [v2 stopAnimating];
}

- (id)imageForAccessibilityHUD
{
  v2 = [(CAMLivePhotoButton *)self livePhotoMode];
  if (v2 > 2)
  {
    v3 = 0;
  }

  else
  {
    v3 = off_1E76FA5C8[v2];
  }

  v4 = MEMORY[0x1E69DCAB8];

  return [v4 systemImageNamed:v3];
}

@end