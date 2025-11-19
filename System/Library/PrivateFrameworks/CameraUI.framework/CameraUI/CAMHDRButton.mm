@interface CAMHDRButton
- (CAMHDRButton)initWithFrame:(CGRect)a3;
- (CAMHDRButton)initWithLayoutStyle:(int64_t)a3;
- (id)_currentGlyphImageForAccessibilityHUD:(BOOL)a3;
- (id)titleForMenuItemAtIndex:(int64_t)a3;
- (int64_t)HDRMode;
- (int64_t)modeForIndex:(int64_t)a3;
- (int64_t)numberOfMenuItems;
- (unint64_t)indexForMode:(int64_t)a3;
- (void)_commonCAMHDRButtonInitialization;
- (void)_updateAllowedModes;
- (void)_updateCurrentGlyphImage;
- (void)reloadData;
- (void)setHDRMode:(int64_t)a3;
@end

@implementation CAMHDRButton

- (void)_commonCAMHDRButtonInitialization
{
  v5 = [(CAMHDRButton *)self _currentGlyphImageForAccessibilityHUD:0];
  v3 = [objc_alloc(MEMORY[0x1E69DCAE0]) initWithImage:v5];
  glyphView = self->__glyphView;
  self->__glyphView = v3;

  [(UIImageView *)self->__glyphView _setAnimatesContents:1];
  [(CAMHDRButton *)self _updateAllowedModes];
}

- (int64_t)HDRMode
{
  v3 = [(CAMExpandableMenuButton *)self selectedIndex];

  return [(CAMHDRButton *)self modeForIndex:v3];
}

- (void)_updateAllowedModes
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  [v3 addObject:&unk_1F16C80D8];
  [v3 addObject:&unk_1F16C80F0];
  [(CAMHDRButton *)self _setAllowedModes:v3];
}

- (void)reloadData
{
  v4.receiver = self;
  v4.super_class = CAMHDRButton;
  [(CAMExpandableMenuButton *)&v4 reloadData];
  [(CAMHDRButton *)self _updateCurrentGlyphImage];
  if ([(CAMHDRButton *)self numberOfMenuItems]>= 1)
  {
    v3 = 0;
    do
    {
      [(CAMExpandableMenuButton *)self setHighlighted:0 forIndex:v3++];
    }

    while (v3 < [(CAMHDRButton *)self numberOfMenuItems]);
  }
}

- (int64_t)numberOfMenuItems
{
  v2 = [(CAMHDRButton *)self _allowedModes];
  v3 = [v2 count];

  return v3;
}

- (void)_updateCurrentGlyphImage
{
  v4 = [(CAMHDRButton *)self _currentGlyphImageForAccessibilityHUD:0];
  v3 = [(CAMHDRButton *)self _glyphView];
  [v3 setImage:v4];
}

- (CAMHDRButton)initWithLayoutStyle:(int64_t)a3
{
  v7.receiver = self;
  v7.super_class = CAMHDRButton;
  v3 = [(CAMExpandableMenuButton *)&v7 initWithLayoutStyle:a3];
  v4 = v3;
  if (v3)
  {
    [(CAMHDRButton *)v3 _commonCAMHDRButtonInitialization];
    v5 = v4;
  }

  return v4;
}

- (CAMHDRButton)initWithFrame:(CGRect)a3
{
  v4 = [MEMORY[0x1E69DC938] currentDevice];
  v5 = [v4 cam_initialLayoutStyle];

  return [(CAMHDRButton *)self initWithLayoutStyle:v5];
}

- (void)setHDRMode:(int64_t)a3
{
  v4 = [(CAMHDRButton *)self indexForMode:a3];
  if (v4 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v4 = [(CAMHDRButton *)self indexForMode:0];
  }

  [(CAMExpandableMenuButton *)self setSelectedIndex:v4];

  [(CAMHDRButton *)self _updateCurrentGlyphImage];
}

- (int64_t)modeForIndex:(int64_t)a3
{
  v4 = [(CAMHDRButton *)self _allowedModes];
  v5 = v4;
  if (a3 < 0 || [v4 count] <= a3)
  {
    v7 = 0;
  }

  else
  {
    v6 = [v5 objectAtIndex:a3];
    v7 = [v6 integerValue];
  }

  return v7;
}

- (unint64_t)indexForMode:(int64_t)a3
{
  v4 = [(CAMHDRButton *)self _allowedModes];
  if ([v4 count])
  {
    v5 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
    v6 = [v4 indexOfObject:v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)titleForMenuItemAtIndex:(int64_t)a3
{
  v3 = [(CAMHDRButton *)self modeForIndex:a3];
  if (!v3)
  {
    v4 = @"HDR_OFF";
    v5 = @"A label for turning HDR mode off.";
    goto LABEL_5;
  }

  if (v3 == 1)
  {
    v4 = @"HDR_ON";
    v5 = @"A label for turning HDR mode on.";
LABEL_5:
    v6 = CAMLocalizedFrameworkString(v4, v5);
    goto LABEL_7;
  }

  v6 = 0;
LABEL_7:

  return v6;
}

- (id)_currentGlyphImageForAccessibilityHUD:(BOOL)a3
{
  v3 = a3;
  v5 = [(CAMHDRButton *)self HDRMode];
  v6 = [(CAMExpandableMenuButton *)self isExpanded];
  v7 = [(CAMExpandableMenuButton *)self wantsSelectedItemToBeVisible];
  v8 = [(CAMExpandableMenuButton *)self layoutStyle];
  if (v5)
  {
    v9 = 1;
  }

  else
  {
    v9 = v6;
  }

  v10 = v9 | v7;
  switch(v8)
  {
    case 3:
      goto LABEL_7;
    case 1:
      v11 = @"CAMHDRButtonOffPad";
      v12 = @"CAMHDRButtonPad";
LABEL_9:
      if (v10)
      {
        v13 = v12;
      }

      else
      {
        v13 = v11;
      }

      v14 = v13;
      if (v3)
      {
        goto LABEL_13;
      }

      goto LABEL_14;
    case 0:
LABEL_7:
      v11 = @"CAMHDRButtonOff";
      v12 = @"CAMHDRButton";
      goto LABEL_9;
  }

  v14 = 0;
  if (v3)
  {
LABEL_13:
    v15 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@-AXHUD", v14];

    v14 = v15;
  }

LABEL_14:
  if (v14)
  {
    v16 = MEMORY[0x1E69DCAB8];
    v17 = CAMCameraUIFrameworkBundle();
    v18 = [v16 imageNamed:v14 inBundle:v17];
    v19 = [v18 imageWithRenderingMode:2];
  }

  else
  {
    v19 = 0;
  }

  return v19;
}

@end