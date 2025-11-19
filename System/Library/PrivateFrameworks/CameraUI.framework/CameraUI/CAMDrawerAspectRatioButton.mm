@interface CAMDrawerAspectRatioButton
+ (id)localizedTitleForAspectRatio:(int64_t)a3 useBriefText:(BOOL)a4;
- (BOOL)isMenuItemSelected:(id)a3;
- (CAMDrawerAspectRatioButton)initWithLayoutStyle:(int64_t)a3;
- (id)_imageForAspectRatio:(int64_t)a3;
- (id)hudItemForAccessibilityHUDManager:(id)a3;
- (id)loadMenuItems;
- (void)didSelectMenuItem:(id)a3;
- (void)setAspectRatio:(int64_t)a3;
- (void)updateImage;
@end

@implementation CAMDrawerAspectRatioButton

- (CAMDrawerAspectRatioButton)initWithLayoutStyle:(int64_t)a3
{
  v7.receiver = self;
  v7.super_class = CAMDrawerAspectRatioButton;
  v3 = [(CAMControlDrawerMenuButton *)&v7 initWithLayoutStyle:a3];
  if (v3)
  {
    v4 = [MEMORY[0x1E695DF90] dictionary];
    imagesByText = v3->__imagesByText;
    v3->__imagesByText = v4;
  }

  return v3;
}

- (void)setAspectRatio:(int64_t)a3
{
  if (self->_aspectRatio != a3)
  {
    self->_aspectRatio = a3;
    [(CAMControlDrawerMenuButton *)self updateLabelsIfNeeded];

    [(CAMDrawerAspectRatioButton *)self updateImage];
  }
}

- (BOOL)isMenuItemSelected:(id)a3
{
  v4 = [a3 value];
  v5 = [v4 integerValue];
  LOBYTE(self) = v5 == [(CAMDrawerAspectRatioButton *)self aspectRatio];

  return self;
}

- (id)loadMenuItems
{
  v21 = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:4];
  v3 = +[CAMCaptureCapabilities capabilities];
  v4 = [v3 supportedAspectRatioCropValues];

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  obj = v4;
  v5 = [obj countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v17;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v17 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = [*(*(&v16 + 1) + 8 * i) integerValue];
        v10 = [objc_opt_class() localizedTitleForAspectRatio:v9 useBriefText:0];
        v11 = [CAMControlDrawerMenuItem alloc];
        v12 = [MEMORY[0x1E696AD98] numberWithInteger:v9];
        v13 = [(CAMControlDrawerMenuItem *)v11 initWithTitle:v10 value:v12];

        [v2 addObject:v13];
      }

      v6 = [obj countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v6);
  }

  return v2;
}

- (void)didSelectMenuItem:(id)a3
{
  v4 = a3;
  v5 = [(CAMDrawerAspectRatioButton *)self aspectRatio];
  v6 = [v4 value];

  v7 = [v6 integerValue];
  if (v7 != v5)
  {
    [(CAMDrawerAspectRatioButton *)self setAspectRatio:v7];

    [(CAMDrawerAspectRatioButton *)self sendActionsForControlEvents:4096];
  }
}

+ (id)localizedTitleForAspectRatio:(int64_t)a3 useBriefText:(BOOL)a4
{
  v5 = 0;
  if (a3 > 1)
  {
    if (a3 == 2)
    {
      v6 = @"ASPECT_SIXTEEN_NINE";
    }

    else
    {
      if (a3 != 3)
      {
        goto LABEL_13;
      }

      v6 = @"ASPECT_THREE_TWO";
    }
  }

  else if (a3)
  {
    if (a3 != 1)
    {
      goto LABEL_13;
    }

    if (a4)
    {
      v6 = @"ASPECT_SQUARE_BRIEF";
    }

    else
    {
      v6 = @"ASPECT_SQUARE";
    }
  }

  else
  {
    v6 = @"ASPECT_FOUR_THREE";
  }

  v5 = CAMLocalizedFrameworkString(v6, 0);
LABEL_13:

  return v5;
}

- (id)_imageForAspectRatio:(int64_t)a3
{
  v4 = [objc_opt_class() localizedTitleForAspectRatio:a3 useBriefText:1];
  v5 = [(CAMDrawerAspectRatioButton *)self _imagesByText];
  v6 = [v5 objectForKeyedSubscript:v4];

  if (!v6 && v4)
  {
    v7 = [CAMFont cameraFontOfSize:16.0];
    v8 = [MEMORY[0x1E69DC888] whiteColor];
    v9 = [(CAMDrawerAspectRatioButton *)self window];
    v10 = [v9 screen];
    [v10 scale];
    v6 = CAMImageWithTextColorFont(v4, v8, v7);

    v11 = [(CAMDrawerAspectRatioButton *)self _imagesByText];
    [v11 setObject:v6 forKeyedSubscript:v4];
  }

  return v6;
}

- (void)updateImage
{
  v3 = [(CAMDrawerAspectRatioButton *)self _imageForAspectRatio:[(CAMDrawerAspectRatioButton *)self aspectRatio]];
  v4 = [(CAMControlDrawerButton *)self _imageView];
  [v4 setImage:v3];

  [(CAMDrawerAspectRatioButton *)self setNeedsLayout];
}

- (id)hudItemForAccessibilityHUDManager:(id)a3
{
  v9.receiver = self;
  v9.super_class = CAMDrawerAspectRatioButton;
  v4 = [(CAMControlDrawerMenuButton *)&v9 hudItemForAccessibilityHUDManager:a3];
  v5 = v4;
  if (v4)
  {
    v6 = [v4 title];

    if (!v6)
    {
      v7 = [objc_opt_class() localizedTitleForAspectRatio:-[CAMDrawerAspectRatioButton aspectRatio](self useBriefText:{"aspectRatio"), 1}];
      [v5 setTitle:v7];
    }
  }

  return v5;
}

@end