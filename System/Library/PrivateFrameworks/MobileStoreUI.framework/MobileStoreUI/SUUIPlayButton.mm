@interface SUUIPlayButton
+ (CGSize)sizeThatFitsWidth:(double)width viewElement:(id)element context:(id)context;
- (CGSize)buttonSize;
- (float)buttonCornerRadius;
- (id)cancelImage;
- (id)defaultBackgroundColor;
- (id)images;
- (id)outerBorderColor;
- (id)playImage;
- (void)_updateEnabledState;
- (void)layoutSubviews;
- (void)playIndicatorDidChange:(BOOL)change;
- (void)refresh;
- (void)reloadWithItemStatus:(id)status animated:(BOOL)animated;
- (void)setBackgroundType:(int64_t)type;
- (void)setEnabled:(BOOL)enabled;
- (void)setRadio:(BOOL)radio;
- (void)setStyle:(int64_t)style;
- (void)tintColorDidChange;
@end

@implementation SUUIPlayButton

+ (CGSize)sizeThatFitsWidth:(double)width viewElement:(id)element context:(id)context
{
  v5 = fmin(width, 36.0);
  v6 = v5;
  result.height = v6;
  result.width = v5;
  return result;
}

- (void)layoutSubviews
{
  v8.receiver = self;
  v8.super_class = SUUIPlayButton;
  [(SUUIPlayButtonControl *)&v8 layoutSubviews];
  if ([(SUUIPlayButton *)self style]== 2)
  {
    if ([(SUUIPlayButtonControl *)self showingPlayIndicator])
    {
      [(SUUIPlayButton *)self buttonSize];
      v4 = v3;
      v6 = v5;
      imageView = [(SUUIPlayButtonControl *)self imageView];
      [imageView setFrame:{0.0, 4.0, v4, v6}];
    }
  }
}

- (void)setEnabled:(BOOL)enabled
{
  v5.receiver = self;
  v5.super_class = SUUIPlayButton;
  [(SUUIPlayButtonControl *)&v5 setEnabled:enabled];
  if ([(SUUIPlayButton *)self style]== 2)
  {
    if ([(SUUIPlayButtonControl *)self showingPlayIndicator])
    {
      imageView = [(SUUIPlayButtonControl *)self imageView];
      [imageView setAlpha:1.0];
    }
  }
}

- (void)tintColorDidChange
{
  v5.receiver = self;
  v5.super_class = SUUIPlayButton;
  [(SUUIPlayButtonControl *)&v5 tintColorDidChange];
  if ([(SUUIPlayButton *)self style]== 2)
  {
    if ([(SUUIPlayButtonControl *)self showingPlayIndicator])
    {
      imageView = [(SUUIPlayButtonControl *)self imageView];
      tintColor = [(SUUIPlayButton *)self tintColor];
      [imageView setTintColor:tintColor];
    }
  }
}

- (CGSize)buttonSize
{
  v2 = 36.0;
  if (self->_style != 1)
  {
    v2 = 28.0;
  }

  v3 = v2;
  result.height = v3;
  result.width = v2;
  return result;
}

- (float)buttonCornerRadius
{
  result = 14.0;
  if (self->_style == 1)
  {
    return 18.0;
  }

  return result;
}

- (id)cancelImage
{
  customToggleImage = [(SUUIPlayButtonControl *)self customToggleImage];

  if (customToggleImage)
  {
    customToggleImage2 = [(SUUIPlayButtonControl *)self customToggleImage];
  }

  else
  {
    showStop = self->_showStop;
    images = [(SUUIPlayButton *)self images];
    v7 = images;
    if (showStop)
    {
      [images stopImage];
    }

    else
    {
      [images pauseImage];
    }
    customToggleImage2 = ;
  }

  return customToggleImage2;
}

- (id)defaultBackgroundColor
{
  if ([(SUUIPlayButton *)self style]== 2 && [(SUUIPlayButtonControl *)self backgroundType]== 1)
  {
    whiteColor = [MEMORY[0x277D75348] whiteColor];
  }

  else
  {
    v5.receiver = self;
    v5.super_class = SUUIPlayButton;
    whiteColor = [(SUUIPlayButtonControl *)&v5 defaultBackgroundColor];
  }

  return whiteColor;
}

- (id)outerBorderColor
{
  if ([(SUUIPlayButton *)self style]== 2 || [(SUUIPlayButtonControl *)self isIndeterminate])
  {
    tintColor = [(SUUIPlayButton *)self tintColor];
  }

  else
  {
    tintColor = 0;
  }

  return tintColor;
}

- (id)playImage
{
  customPlayImage = [(SUUIPlayButtonControl *)self customPlayImage];

  if (customPlayImage)
  {
    customPlayImage2 = [(SUUIPlayButtonControl *)self customPlayImage];
  }

  else
  {
    images = [(SUUIPlayButton *)self images];
    customPlayImage2 = [images playImage];
  }

  return customPlayImage2;
}

- (void)playIndicatorDidChange:(BOOL)change
{
  changeCopy = change;
  if ([(SUUIPlayButton *)self style]== 2 && changeCopy)
  {
    imageView = [(SUUIPlayButtonControl *)self imageView];
    [imageView setAlpha:1.0];

    imageView2 = [(SUUIPlayButtonControl *)self imageView];
    tintColor = [(SUUIPlayButton *)self tintColor];
    [imageView2 setTintColor:tintColor];
  }

  else
  {
    if ([(SUUIPlayButton *)self style]!= 2)
    {
      return;
    }

    imageView3 = [(SUUIPlayButtonControl *)self imageView];
    blackColor = [MEMORY[0x277D75348] blackColor];
    [imageView3 setTintColor:blackColor];

    imageView2 = [(SUUIPlayButtonControl *)self imageView];
    [(SUUIPlayButtonControl *)self playButtonDefaultAlpha];
    [imageView2 setAlpha:v9];
  }
}

- (void)refresh
{
  self->_showStop = 0;
  v2.receiver = self;
  v2.super_class = SUUIPlayButton;
  [(SUUIPlayButtonControl *)&v2 refresh];
}

- (void)reloadWithItemStatus:(id)status animated:(BOOL)animated
{
  animatedCopy = animated;
  statusCopy = status;
  playState = [statusCopy playState];
  isIndeterminate = [(SUUIPlayButtonControl *)self isIndeterminate];
  if (playState == 1)
  {
    if (!isIndeterminate)
    {
      [(SUUIPlayButtonControl *)self beginIndeterminateAnimation];
    }
  }

  else
  {
    if (isIndeterminate)
    {
      [(SUUIPlayButtonControl *)self endIndeterminateAnimation];
    }

    [statusCopy duration];
    v9 = v8;
    if (self->_showStop != [statusCopy hideDuration])
    {
      self->_showStop = [statusCopy hideDuration];
      [(SUUIPlayButtonControl *)self showPlayIndicator:[(SUUIPlayButtonControl *)self showingPlayIndicator] force:1];
    }

    if (v9 < 2.22044605e-16 || [statusCopy hideDuration])
    {
      v10 = 0.0;
    }

    else
    {
      [statusCopy currentTime];
      v10 = v11 / v9;
      *&v10 = v10;
    }

    [(SUUIPlayButtonControl *)self setProgress:animatedCopy animated:v10];
  }
}

- (void)setBackgroundType:(int64_t)type
{
  self->_showStop = 0;
  v3.receiver = self;
  v3.super_class = SUUIPlayButton;
  [(SUUIPlayButtonControl *)&v3 setBackgroundType:type];
}

- (void)setStyle:(int64_t)style
{
  if (self->_style != style)
  {
    self->_style = style;
    v5 = [SUUIPlayButtonImageCache imageCacheForStyle:?];
    imageCache = self->_imageCache;
    self->_imageCache = v5;

    [(SUUIPlayButton *)self refresh];
    if (style == 2)
    {
      playImage = [(SUUIPlayButton *)self playImage];
      v13 = [playImage imageWithRenderingMode:2];

      imageView = [(SUUIPlayButtonControl *)self imageView];
      image = [imageView image];

      if (image != v13)
      {
        imageView2 = [(SUUIPlayButtonControl *)self imageView];
        [imageView2 setImage:v13];
      }

      if ([(SUUIPlayButtonControl *)self backgroundType]== 1)
      {
        defaultBackgroundColor = [(SUUIPlayButton *)self defaultBackgroundColor];
        [(SUUIPlayButtonControl *)self setControlColor:defaultBackgroundColor];
      }

      else
      {
        defaultBackgroundColor = [(SUUIPlayButtonControl *)self imageView];
        tintColor = [(SUUIPlayButton *)self tintColor];
        [defaultBackgroundColor setTintColor:tintColor];
      }

      [(SUUIPlayButtonControl *)self updateOuterProgressLayerStroke];
      [(SUUIPlayButtonControl *)self setShowBorder:0];
      [(SUUIPlayButtonControl *)self setShowOuterBorder:1];
    }

    else
    {
      [(SUUIPlayButtonControl *)self setShowOuterBorder:0];

      [(SUUIPlayButtonControl *)self setShowBorder:1];
    }
  }
}

- (id)images
{
  imageCache = self->_imageCache;
  if (!imageCache)
  {
    v4 = [SUUIPlayButtonImageCache imageCacheForStyle:self->_style];
    v5 = self->_imageCache;
    self->_imageCache = v4;

    imageCache = self->_imageCache;
  }

  return imageCache;
}

- (void)setRadio:(BOOL)radio
{
  if (radio)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  [(SUUIPlayButton *)self setStyle:v3];
}

- (void)_updateEnabledState
{
  v8.receiver = self;
  v8.super_class = SUUIPlayButton;
  [(SUUIPlayButtonControl *)&v8 _updateEnabledState];
  if ([(SUUIPlayButton *)self style]== 2)
  {
    if ([(SUUIPlayButtonControl *)self showingPlayIndicator])
    {
      [(SUUIPlayButton *)self buttonSize];
      v4 = v3;
      v6 = v5;
      imageView = [(SUUIPlayButtonControl *)self imageView];
      [imageView setFrame:{0.0, 4.0, v4, v6}];
    }
  }
}

@end