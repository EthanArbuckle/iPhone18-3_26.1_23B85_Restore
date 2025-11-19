@interface CAMFocusIndicatorRectView
- (BOOL)isInactive;
- (BOOL)isPulsing;
- (CAMFocusIndicatorRectView)initWithStyle:(int64_t)a3;
- (CGSize)intrinsicContentSize;
- (void)layoutSubviews;
- (void)setInactive:(BOOL)a3;
- (void)setPulsing:(BOOL)a3;
@end

@implementation CAMFocusIndicatorRectView

- (CGSize)intrinsicContentSize
{
  v4 = *MEMORY[0x1E695F060];
  v3 = *(MEMORY[0x1E695F060] + 8);
  v5 = [(CAMFocusIndicatorRectView *)self style];
  v6 = v5;
  if (v5 <= 1)
  {
    if (v5)
    {
      if (v5 == 1)
      {
        v3 = 200.0;
        v4 = 200.0;
      }

      goto LABEL_19;
    }

LABEL_10:
    v7 = [(CAMFocusIndicatorRectView *)self _imageView];
    [v7 intrinsicContentSize];
    if (v6 == 3)
    {
      v3 = v9 * 0.65;
    }

    else
    {
      v3 = v9;
    }

    if (v6 == 3)
    {
      v4 = v8 * 0.65;
    }

    else
    {
      v4 = v8;
    }

    goto LABEL_19;
  }

  if ((v5 - 2) < 2)
  {
    goto LABEL_10;
  }

  if (v5 == 4)
  {
    v3 = 127.0;
    goto LABEL_18;
  }

  if (v5 == 5)
  {
    v3 = 77.0;
LABEL_18:
    v4 = v3;
  }

LABEL_19:
  v10 = v4;
  v11 = v3;
  result.height = v11;
  result.width = v10;
  return result;
}

- (BOOL)isPulsing
{
  v2 = [(CAMFocusIndicatorRectView *)self _imageView];
  v3 = [v2 layer];
  v4 = [v3 animationForKey:@"opacity"];
  v5 = v4 != 0;

  return v5;
}

- (void)layoutSubviews
{
  v12.receiver = self;
  v12.super_class = CAMFocusIndicatorRectView;
  [(CAMFocusIndicatorRectView *)&v12 layoutSubviews];
  [(CAMFocusIndicatorRectView *)self bounds];
  x = v3;
  y = v5;
  width = v7;
  height = v9;
  if (([(CAMFocusIndicatorRectView *)self style]& 0xFFFFFFFFFFFFFFFELL) == 4)
  {
    v13.origin.x = x;
    v13.origin.y = y;
    v13.size.width = width;
    v13.size.height = height;
    v14 = CGRectInset(v13, -3.0, -3.0);
    x = v14.origin.x;
    y = v14.origin.y;
    width = v14.size.width;
    height = v14.size.height;
  }

  v11 = [(CAMFocusIndicatorRectView *)self _imageView];
  [v11 setFrame:{x, y, width, height}];
}

- (CAMFocusIndicatorRectView)initWithStyle:(int64_t)a3
{
  v26.receiver = self;
  v26.super_class = CAMFocusIndicatorRectView;
  v4 = [(CAMFocusIndicatorRectView *)&v26 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  v5 = v4;
  if (v4)
  {
    v4->_style = a3;
    v6 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    if (a3 > 5)
    {
      v11 = 0;
      v12 = 0;
      goto LABEL_10;
    }

    if (((1 << a3) & 3) != 0)
    {
      v7 = MEMORY[0x1E69DCAB8];
      v8 = @"PLFocusCrosshairs";
    }

    else
    {
      if (((1 << a3) & 0xC) == 0)
      {
        v13 = MEMORY[0x1E69DCAB8];
        v14 = CAMCameraUIFrameworkBundle();
        v15 = [v13 imageNamed:@"CAMSubjectIndicatorActive" inBundle:v14];

        v16 = MEMORY[0x1E69DCAB8];
        v17 = CAMCameraUIFrameworkBundle();
        v10 = [v16 imageNamed:@"CAMSubjectIndicatorInactive" inBundle:v17];

        [v15 size];
        v19 = v18 * 0.5;
        v21 = v20 * 0.5;
        v11 = [v15 resizableImageWithCapInsets:1 resizingMode:{v19, v21, v19, v21}];

        v12 = [v10 resizableImageWithCapInsets:1 resizingMode:{v19, v21, v19, v21}];
        goto LABEL_9;
      }

      v7 = MEMORY[0x1E69DCAB8];
      v8 = @"PLFocusCrosshairsSmall";
    }

    v9 = [v7 imageNamed:v8 inBundle:v6];
    v10 = [MEMORY[0x1E69DC888] systemYellowColor];
    v11 = [v9 imageWithTintColor:v10];

    v12 = 0;
LABEL_9:

LABEL_10:
    v22 = [objc_alloc(MEMORY[0x1E69DCAE0]) initWithImage:v11 highlightedImage:v12];
    imageView = v5->__imageView;
    v5->__imageView = v22;

    [(UIImageView *)v5->__imageView setContentMode:0];
    [(CAMFocusIndicatorRectView *)v5 addSubview:v5->__imageView];
    v24 = v5;
  }

  return v5;
}

- (BOOL)isInactive
{
  v2 = [(CAMFocusIndicatorRectView *)self _imageView];
  v3 = [v2 isHighlighted];

  return v3;
}

- (void)setInactive:(BOOL)a3
{
  v3 = a3;
  v4 = [(CAMFocusIndicatorRectView *)self _imageView];
  [v4 setHighlighted:v3];
}

- (void)setPulsing:(BOOL)a3
{
  v3 = a3;
  if ([(CAMFocusIndicatorRectView *)self isPulsing]!= a3)
  {
    v5 = [(CAMFocusIndicatorRectView *)self _imageView];
    v6 = [v5 layer];
    v7 = v6;
    if (v3)
    {
      [v5 setAlpha:1.0];
      v8 = MEMORY[0x1E69DD250];
      v9[0] = MEMORY[0x1E69E9820];
      v9[1] = 3221225472;
      v9[2] = __40__CAMFocusIndicatorRectView_setPulsing___block_invoke;
      v9[3] = &unk_1E76F77B0;
      v10 = v5;
      [v8 animateWithDuration:30 delay:v9 options:0 animations:0.18 completion:0.0];
    }

    else
    {
      [v6 removeAnimationForKey:@"opacity"];
      [v5 setAlpha:1.0];
    }
  }
}

@end