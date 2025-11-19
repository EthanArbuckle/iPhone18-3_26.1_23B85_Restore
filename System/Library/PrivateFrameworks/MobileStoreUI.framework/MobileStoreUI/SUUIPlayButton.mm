@interface SUUIPlayButton
+ (CGSize)sizeThatFitsWidth:(double)a3 viewElement:(id)a4 context:(id)a5;
- (CGSize)buttonSize;
- (float)buttonCornerRadius;
- (id)cancelImage;
- (id)defaultBackgroundColor;
- (id)images;
- (id)outerBorderColor;
- (id)playImage;
- (void)_updateEnabledState;
- (void)layoutSubviews;
- (void)playIndicatorDidChange:(BOOL)a3;
- (void)refresh;
- (void)reloadWithItemStatus:(id)a3 animated:(BOOL)a4;
- (void)setBackgroundType:(int64_t)a3;
- (void)setEnabled:(BOOL)a3;
- (void)setRadio:(BOOL)a3;
- (void)setStyle:(int64_t)a3;
- (void)tintColorDidChange;
@end

@implementation SUUIPlayButton

+ (CGSize)sizeThatFitsWidth:(double)a3 viewElement:(id)a4 context:(id)a5
{
  v5 = fmin(a3, 36.0);
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
      v7 = [(SUUIPlayButtonControl *)self imageView];
      [v7 setFrame:{0.0, 4.0, v4, v6}];
    }
  }
}

- (void)setEnabled:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = SUUIPlayButton;
  [(SUUIPlayButtonControl *)&v5 setEnabled:a3];
  if ([(SUUIPlayButton *)self style]== 2)
  {
    if ([(SUUIPlayButtonControl *)self showingPlayIndicator])
    {
      v4 = [(SUUIPlayButtonControl *)self imageView];
      [v4 setAlpha:1.0];
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
      v3 = [(SUUIPlayButtonControl *)self imageView];
      v4 = [(SUUIPlayButton *)self tintColor];
      [v3 setTintColor:v4];
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
  v3 = [(SUUIPlayButtonControl *)self customToggleImage];

  if (v3)
  {
    v4 = [(SUUIPlayButtonControl *)self customToggleImage];
  }

  else
  {
    showStop = self->_showStop;
    v6 = [(SUUIPlayButton *)self images];
    v7 = v6;
    if (showStop)
    {
      [v6 stopImage];
    }

    else
    {
      [v6 pauseImage];
    }
    v4 = ;
  }

  return v4;
}

- (id)defaultBackgroundColor
{
  if ([(SUUIPlayButton *)self style]== 2 && [(SUUIPlayButtonControl *)self backgroundType]== 1)
  {
    v3 = [MEMORY[0x277D75348] whiteColor];
  }

  else
  {
    v5.receiver = self;
    v5.super_class = SUUIPlayButton;
    v3 = [(SUUIPlayButtonControl *)&v5 defaultBackgroundColor];
  }

  return v3;
}

- (id)outerBorderColor
{
  if ([(SUUIPlayButton *)self style]== 2 || [(SUUIPlayButtonControl *)self isIndeterminate])
  {
    v3 = [(SUUIPlayButton *)self tintColor];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)playImage
{
  v3 = [(SUUIPlayButtonControl *)self customPlayImage];

  if (v3)
  {
    v4 = [(SUUIPlayButtonControl *)self customPlayImage];
  }

  else
  {
    v5 = [(SUUIPlayButton *)self images];
    v4 = [v5 playImage];
  }

  return v4;
}

- (void)playIndicatorDidChange:(BOOL)a3
{
  v3 = a3;
  if ([(SUUIPlayButton *)self style]== 2 && v3)
  {
    v5 = [(SUUIPlayButtonControl *)self imageView];
    [v5 setAlpha:1.0];

    v10 = [(SUUIPlayButtonControl *)self imageView];
    v6 = [(SUUIPlayButton *)self tintColor];
    [v10 setTintColor:v6];
  }

  else
  {
    if ([(SUUIPlayButton *)self style]!= 2)
    {
      return;
    }

    v7 = [(SUUIPlayButtonControl *)self imageView];
    v8 = [MEMORY[0x277D75348] blackColor];
    [v7 setTintColor:v8];

    v10 = [(SUUIPlayButtonControl *)self imageView];
    [(SUUIPlayButtonControl *)self playButtonDefaultAlpha];
    [v10 setAlpha:v9];
  }
}

- (void)refresh
{
  self->_showStop = 0;
  v2.receiver = self;
  v2.super_class = SUUIPlayButton;
  [(SUUIPlayButtonControl *)&v2 refresh];
}

- (void)reloadWithItemStatus:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  v12 = a3;
  v6 = [v12 playState];
  v7 = [(SUUIPlayButtonControl *)self isIndeterminate];
  if (v6 == 1)
  {
    if (!v7)
    {
      [(SUUIPlayButtonControl *)self beginIndeterminateAnimation];
    }
  }

  else
  {
    if (v7)
    {
      [(SUUIPlayButtonControl *)self endIndeterminateAnimation];
    }

    [v12 duration];
    v9 = v8;
    if (self->_showStop != [v12 hideDuration])
    {
      self->_showStop = [v12 hideDuration];
      [(SUUIPlayButtonControl *)self showPlayIndicator:[(SUUIPlayButtonControl *)self showingPlayIndicator] force:1];
    }

    if (v9 < 2.22044605e-16 || [v12 hideDuration])
    {
      v10 = 0.0;
    }

    else
    {
      [v12 currentTime];
      v10 = v11 / v9;
      *&v10 = v10;
    }

    [(SUUIPlayButtonControl *)self setProgress:v4 animated:v10];
  }
}

- (void)setBackgroundType:(int64_t)a3
{
  self->_showStop = 0;
  v3.receiver = self;
  v3.super_class = SUUIPlayButton;
  [(SUUIPlayButtonControl *)&v3 setBackgroundType:a3];
}

- (void)setStyle:(int64_t)a3
{
  if (self->_style != a3)
  {
    self->_style = a3;
    v5 = [SUUIPlayButtonImageCache imageCacheForStyle:?];
    imageCache = self->_imageCache;
    self->_imageCache = v5;

    [(SUUIPlayButton *)self refresh];
    if (a3 == 2)
    {
      v7 = [(SUUIPlayButton *)self playImage];
      v13 = [v7 imageWithRenderingMode:2];

      v8 = [(SUUIPlayButtonControl *)self imageView];
      v9 = [v8 image];

      if (v9 != v13)
      {
        v10 = [(SUUIPlayButtonControl *)self imageView];
        [v10 setImage:v13];
      }

      if ([(SUUIPlayButtonControl *)self backgroundType]== 1)
      {
        v11 = [(SUUIPlayButton *)self defaultBackgroundColor];
        [(SUUIPlayButtonControl *)self setControlColor:v11];
      }

      else
      {
        v11 = [(SUUIPlayButtonControl *)self imageView];
        v12 = [(SUUIPlayButton *)self tintColor];
        [v11 setTintColor:v12];
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

- (void)setRadio:(BOOL)a3
{
  if (a3)
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
      v7 = [(SUUIPlayButtonControl *)self imageView];
      [v7 setFrame:{0.0, 4.0, v4, v6}];
    }
  }
}

@end