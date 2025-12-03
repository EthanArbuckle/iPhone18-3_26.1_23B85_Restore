@interface CAMDrawerAspectRatioButton
+ (id)localizedTitleForAspectRatio:(int64_t)ratio useBriefText:(BOOL)text;
- (BOOL)isMenuItemSelected:(id)selected;
- (CAMDrawerAspectRatioButton)initWithLayoutStyle:(int64_t)style;
- (id)_imageForAspectRatio:(int64_t)ratio;
- (id)hudItemForAccessibilityHUDManager:(id)manager;
- (id)loadMenuItems;
- (void)didSelectMenuItem:(id)item;
- (void)setAspectRatio:(int64_t)ratio;
- (void)updateImage;
@end

@implementation CAMDrawerAspectRatioButton

- (CAMDrawerAspectRatioButton)initWithLayoutStyle:(int64_t)style
{
  v7.receiver = self;
  v7.super_class = CAMDrawerAspectRatioButton;
  v3 = [(CAMControlDrawerMenuButton *)&v7 initWithLayoutStyle:style];
  if (v3)
  {
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    imagesByText = v3->__imagesByText;
    v3->__imagesByText = dictionary;
  }

  return v3;
}

- (void)setAspectRatio:(int64_t)ratio
{
  if (self->_aspectRatio != ratio)
  {
    self->_aspectRatio = ratio;
    [(CAMControlDrawerMenuButton *)self updateLabelsIfNeeded];

    [(CAMDrawerAspectRatioButton *)self updateImage];
  }
}

- (BOOL)isMenuItemSelected:(id)selected
{
  value = [selected value];
  integerValue = [value integerValue];
  LOBYTE(self) = integerValue == [(CAMDrawerAspectRatioButton *)self aspectRatio];

  return self;
}

- (id)loadMenuItems
{
  v21 = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:4];
  v3 = +[CAMCaptureCapabilities capabilities];
  supportedAspectRatioCropValues = [v3 supportedAspectRatioCropValues];

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  obj = supportedAspectRatioCropValues;
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

        integerValue = [*(*(&v16 + 1) + 8 * i) integerValue];
        v10 = [objc_opt_class() localizedTitleForAspectRatio:integerValue useBriefText:0];
        v11 = [CAMControlDrawerMenuItem alloc];
        v12 = [MEMORY[0x1E696AD98] numberWithInteger:integerValue];
        v13 = [(CAMControlDrawerMenuItem *)v11 initWithTitle:v10 value:v12];

        [v2 addObject:v13];
      }

      v6 = [obj countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v6);
  }

  return v2;
}

- (void)didSelectMenuItem:(id)item
{
  itemCopy = item;
  aspectRatio = [(CAMDrawerAspectRatioButton *)self aspectRatio];
  value = [itemCopy value];

  integerValue = [value integerValue];
  if (integerValue != aspectRatio)
  {
    [(CAMDrawerAspectRatioButton *)self setAspectRatio:integerValue];

    [(CAMDrawerAspectRatioButton *)self sendActionsForControlEvents:4096];
  }
}

+ (id)localizedTitleForAspectRatio:(int64_t)ratio useBriefText:(BOOL)text
{
  v5 = 0;
  if (ratio > 1)
  {
    if (ratio == 2)
    {
      v6 = @"ASPECT_SIXTEEN_NINE";
    }

    else
    {
      if (ratio != 3)
      {
        goto LABEL_13;
      }

      v6 = @"ASPECT_THREE_TWO";
    }
  }

  else if (ratio)
  {
    if (ratio != 1)
    {
      goto LABEL_13;
    }

    if (text)
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

- (id)_imageForAspectRatio:(int64_t)ratio
{
  v4 = [objc_opt_class() localizedTitleForAspectRatio:ratio useBriefText:1];
  _imagesByText = [(CAMDrawerAspectRatioButton *)self _imagesByText];
  v6 = [_imagesByText objectForKeyedSubscript:v4];

  if (!v6 && v4)
  {
    v7 = [CAMFont cameraFontOfSize:16.0];
    whiteColor = [MEMORY[0x1E69DC888] whiteColor];
    window = [(CAMDrawerAspectRatioButton *)self window];
    screen = [window screen];
    [screen scale];
    v6 = CAMImageWithTextColorFont(v4, whiteColor, v7);

    _imagesByText2 = [(CAMDrawerAspectRatioButton *)self _imagesByText];
    [_imagesByText2 setObject:v6 forKeyedSubscript:v4];
  }

  return v6;
}

- (void)updateImage
{
  v3 = [(CAMDrawerAspectRatioButton *)self _imageForAspectRatio:[(CAMDrawerAspectRatioButton *)self aspectRatio]];
  _imageView = [(CAMControlDrawerButton *)self _imageView];
  [_imageView setImage:v3];

  [(CAMDrawerAspectRatioButton *)self setNeedsLayout];
}

- (id)hudItemForAccessibilityHUDManager:(id)manager
{
  v9.receiver = self;
  v9.super_class = CAMDrawerAspectRatioButton;
  v4 = [(CAMControlDrawerMenuButton *)&v9 hudItemForAccessibilityHUDManager:manager];
  v5 = v4;
  if (v4)
  {
    title = [v4 title];

    if (!title)
    {
      v7 = [objc_opt_class() localizedTitleForAspectRatio:-[CAMDrawerAspectRatioButton aspectRatio](self useBriefText:{"aspectRatio"), 1}];
      [v5 setTitle:v7];
    }
  }

  return v5;
}

@end