@interface CAMVerticalGradientView
- (CAMVerticalGradientView)initWithFrame:(CGRect)a3;
- (id)_verticalGradientImageWithSize:(CGSize)a3;
- (void)_updateGradient;
- (void)layoutSubviews;
- (void)setGradientAscending:(BOOL)a3;
- (void)setGradientColor:(id)a3;
- (void)setGradientHeight:(double)a3 animated:(BOOL)a4;
- (void)setGradientVisible:(BOOL)a3 animated:(BOOL)a4;
@end

@implementation CAMVerticalGradientView

- (CAMVerticalGradientView)initWithFrame:(CGRect)a3
{
  v8.receiver = self;
  v8.super_class = CAMVerticalGradientView;
  v3 = [(CAMVerticalGradientView *)&v8 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    v3->_gradientAscending = 1;
    v5 = [MEMORY[0x1E69DC888] blackColor];
    gradientColor = v4->_gradientColor;
    v4->_gradientColor = v5;

    [(CAMVerticalGradientView *)v4 _updateGradient];
    [(CAMVerticalGradientView *)v4 setClipsToBounds:1];
    [(CAMVerticalGradientView *)v4 setUserInteractionEnabled:0];
  }

  return v4;
}

- (void)_updateGradient
{
  v8 = [(CAMVerticalGradientView *)self _gradientImageView];
  if (v8)
  {
    [v8 removeFromSuperview];
  }

  v3 = [(CAMVerticalGradientView *)self _verticalGradientImageWithSize:1.0, 100.0];
  v4 = [v3 resizableImageWithCapInsets:1 resizingMode:{1.0, 0.0, 1.0, 0.0}];
  v5 = [objc_alloc(MEMORY[0x1E69DCAE0]) initWithImage:v4];
  [(CAMVerticalGradientView *)self addSubview:v5];
  [(CAMVerticalGradientView *)self set_gradientImageView:v5];
  v6 = objc_alloc_init(MEMORY[0x1E69DD250]);
  v7 = [(CAMVerticalGradientView *)self gradientColor];
  [v6 setBackgroundColor:v7];

  [(CAMVerticalGradientView *)self addSubview:v6];
  [(CAMVerticalGradientView *)self set_fillView:v6];
}

- (void)layoutSubviews
{
  [(CAMVerticalGradientView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = v9;
  if ([(CAMVerticalGradientView *)self gradientVisible])
  {
    [(CAMVerticalGradientView *)self gradientHeight];
    v11 = v12;
  }

  rect = v8;
  if ([(CAMVerticalGradientView *)self gradientAscending])
  {
    v31.origin.x = v4;
    v31.origin.y = v6;
    v31.size.width = v8;
    v31.size.height = v10;
    v32 = CGRectOffset(v31, 0.0, -v11);
    x = v32.origin.x;
    y = v32.origin.y;
    width = v32.size.width;
    height = v32.size.height;
    v17 = [(CAMVerticalGradientView *)self _gradientImageView];
    [v17 setFrame:{x, y, width, height}];

    v18 = v10 - v11;
  }

  else
  {
    v33.origin.x = v4;
    v33.origin.y = v6;
    v33.size.width = v8;
    v33.size.height = v10;
    v34 = CGRectOffset(v33, 0.0, v11);
    v19 = v34.origin.x;
    v20 = v34.origin.y;
    v21 = v34.size.width;
    v22 = v34.size.height;
    v23 = [(CAMVerticalGradientView *)self _gradientImageView];
    [v23 setFrame:{v19, v20, v21, v22}];

    v18 = -(v10 - v11);
  }

  v35.origin.x = v4;
  v35.origin.y = v6;
  v35.size.width = rect;
  v35.size.height = v10;
  v36 = CGRectOffset(v35, 0.0, v18);
  v24 = v36.origin.x;
  v25 = v36.origin.y;
  v26 = v36.size.width;
  v27 = v36.size.height;
  recta = [(CAMVerticalGradientView *)self _fillView];
  [recta setFrame:{v24, v25, v26, v27}];
}

- (id)_verticalGradientImageWithSize:(CGSize)a3
{
  height = a3.height;
  v20[2] = *MEMORY[0x1E69E9840];
  UIGraphicsBeginImageContextWithOptions(a3, 0, 0.0);
  CurrentContext = UIGraphicsGetCurrentContext();
  DeviceRGB = CGColorSpaceCreateDeviceRGB();
  if ([(CAMVerticalGradientView *)self gradientAscending])
  {
    v7 = [MEMORY[0x1E69DC888] clearColor];
    v20[0] = [v7 CGColor];
    v8 = [(CAMVerticalGradientView *)self gradientColor];
    v20[1] = [v8 CGColor];
    v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v20 count:2];

    v19 = 0x3FD51EB851EB851FLL;
    v10 = 1.0;
    p_locations = &v19;
  }

  else
  {
    v12 = [(CAMVerticalGradientView *)self gradientColor];
    v18[0] = [v12 CGColor];
    v13 = [MEMORY[0x1E69DC888] clearColor];
    v18[1] = [v13 CGColor];
    v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:2];

    locations = 0.0;
    p_locations = &locations;
    v10 = 0.67;
  }

  p_locations[1] = v10;
  v14 = CGGradientCreateWithColors(DeviceRGB, v9, p_locations);
  v22.x = 0.0;
  v22.y = 0.0;
  v23.x = 0.0;
  v23.y = height;
  CGContextDrawLinearGradient(CurrentContext, v14, v22, v23, 0);
  v15 = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();
  CGColorSpaceRelease(DeviceRGB);
  CGGradientRelease(v14);

  return v15;
}

- (void)setGradientHeight:(double)a3 animated:(BOOL)a4
{
  if (self->_gradientHeight != a3)
  {
    v9[7] = v4;
    v9[8] = v5;
    v6 = a4;
    self->_gradientHeight = a3;
    if (a4)
    {
      [(CAMVerticalGradientView *)self layoutIfNeeded];
    }

    [(CAMVerticalGradientView *)self setNeedsLayout];
    v8 = 0.25;
    if (!v6)
    {
      v8 = 0.0;
    }

    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __54__CAMVerticalGradientView_setGradientHeight_animated___block_invoke;
    v9[3] = &unk_1E76F77B0;
    v9[4] = self;
    [CAMView animateIfNeededWithDuration:4 options:v9 animations:0 completion:v8];
  }
}

- (void)setGradientVisible:(BOOL)a3 animated:(BOOL)a4
{
  if (self->_gradientVisible != a3)
  {
    v9[7] = v4;
    v9[8] = v5;
    v6 = a4;
    self->_gradientVisible = a3;
    if (a4)
    {
      [(CAMVerticalGradientView *)self layoutIfNeeded];
    }

    [(CAMVerticalGradientView *)self setNeedsLayout];
    v8 = 0.25;
    if (!v6)
    {
      v8 = 0.0;
    }

    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __55__CAMVerticalGradientView_setGradientVisible_animated___block_invoke;
    v9[3] = &unk_1E76F77B0;
    v9[4] = self;
    [CAMView animateIfNeededWithDuration:4 options:v9 animations:0 completion:v8];
  }
}

- (void)setGradientAscending:(BOOL)a3
{
  if (self->_gradientAscending != a3)
  {
    self->_gradientAscending = a3;
    [(CAMVerticalGradientView *)self _updateGradient];
  }
}

- (void)setGradientColor:(id)a3
{
  v5 = a3;
  if (self->_gradientColor != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_gradientColor, a3);
    [(CAMVerticalGradientView *)self _updateGradient];
    v5 = v6;
  }
}

@end