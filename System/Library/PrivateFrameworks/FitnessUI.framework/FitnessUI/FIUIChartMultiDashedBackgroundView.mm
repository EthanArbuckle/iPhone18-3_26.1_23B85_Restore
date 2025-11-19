@interface FIUIChartMultiDashedBackgroundView
+ (id)calculateRoundedLinePositionsForTotalWidth:(double)a3 lineWidth:(double)a4 numberOfLines:(unint64_t)a5 roundedInView:(id)a6;
- (FIUIChartMultiDashedBackgroundView)initWithFrame:(CGRect)a3;
- (id)_stretchableLinesPatternImage;
- (void)layoutSubviews;
- (void)setBackgroundIsTransparent:(BOOL)a3;
@end

@implementation FIUIChartMultiDashedBackgroundView

- (FIUIChartMultiDashedBackgroundView)initWithFrame:(CGRect)a3
{
  v11.receiver = self;
  v11.super_class = FIUIChartMultiDashedBackgroundView;
  v3 = [(FIUIChartBackgroundView *)&v11 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = [MEMORY[0x1E69DC888] colorWithWhite:1.0 alpha:0.15];
    lineColor = v3->_lineColor;
    v3->_lineColor = v4;

    v6 = [MEMORY[0x1E69DC888] colorWithWhite:1.0 alpha:0.1];
    subLineColor = v3->_subLineColor;
    v3->_subLineColor = v6;

    v8 = objc_alloc_init(MEMORY[0x1E69DCAE0]);
    imageView = v3->_imageView;
    v3->_imageView = v8;

    [(FIUIChartMultiDashedBackgroundView *)v3 addSubview:v3->_imageView];
  }

  return v3;
}

- (void)layoutSubviews
{
  v18.receiver = self;
  v18.super_class = FIUIChartMultiDashedBackgroundView;
  [(FIUIChartMultiDashedBackgroundView *)&v18 layoutSubviews];
  [(FIUIChartMultiDashedBackgroundView *)self frame];
  if (v3 != self->_previousWidth)
  {
    [(FIUIChartMultiDashedBackgroundView *)self frame];
    self->_previousWidth = v4;
    v5 = [(FIUIChartMultiDashedBackgroundView *)self _stretchableLinesPatternImage];
    [(UIImageView *)self->_imageView setImage:v5];
  }

  [(FIUIChartMultiDashedBackgroundView *)self bounds];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  [(FIUIChartBackgroundView *)self lineInsets];
  [(UIImageView *)self->_imageView setFrame:v7 + v17, v9 + v14, v11 - (v17 + v15), v13 - (v14 + v16)];
}

- (void)setBackgroundIsTransparent:(BOOL)a3
{
  self->_backgroundIsTransparent = a3;
  [(UIImageView *)self->_imageView setOpaque:!a3];

  [(FIUIChartMultiDashedBackgroundView *)self _setNeedsRegenerateBackgroundImage];
}

- (id)_stretchableLinesPatternImage
{
  UIRoundToViewScale();
  v4 = v3;
  sublineInset = self->_sublineInset;
  UIRoundToViewScale();
  v7 = v6;
  [(FIUIChartMultiDashedBackgroundView *)self bounds];
  v9 = 0;
  if (v8 != 0.0)
  {
    v10 = v4 + sublineInset;
    if (v10 != 0.0)
    {
      v11 = v8;
      v28.width = v8;
      v28.height = v10;
      UIGraphicsBeginImageContextWithOptions(v28, !self->_backgroundIsTransparent, 0.0);
      if (self->_backgroundIsTransparent)
      {
        CurrentContext = UIGraphicsGetCurrentContext();
        [(FIUIChartMultiDashedBackgroundView *)self bounds];
        CGContextClearRect(CurrentContext, v29);
      }

      v13 = [objc_opt_class() calculateRoundedLinePositionsForTotalWidth:self->_numLines lineWidth:self numberOfLines:v11 roundedInView:self->_lineWidth];
      numLines = self->_numLines;
      if (numLines)
      {
        v15 = 0;
        do
        {
          sublineInterval = self->_sublineInterval;
          if (sublineInterval)
          {
            v17 = v15 % (sublineInterval + 1);
            v18 = v15 + 1;
            v19 = v15 + 1 == numLines || v17 == 0;
            if (v19)
            {
              v20 = &OBJC_IVAR___FIUIChartMultiDashedBackgroundView__lineColor;
            }

            else
            {
              v20 = &OBJC_IVAR___FIUIChartMultiDashedBackgroundView__subLineColor;
            }

            if (v19)
            {
              v21 = v10;
            }

            else
            {
              v21 = v4;
            }
          }

          else
          {
            v18 = v15 + 1;
            v20 = &OBJC_IVAR___FIUIChartMultiDashedBackgroundView__lineColor;
            v21 = v10;
          }

          [*(&self->super.super.super.super.isa + *v20) setFill];
          v22 = [v13 objectAtIndexedSubscript:v15];
          [v22 floatValue];
          v24 = v23;

          v30.origin.y = 0.0;
          v30.origin.x = v24;
          v30.size.width = v7;
          v30.size.height = v21;
          UIRectFill(v30);
          numLines = self->_numLines;
          v15 = v18;
        }

        while (v18 < numLines);
      }

      v25 = UIGraphicsGetImageFromCurrentImageContext();
      UIGraphicsEndImageContext();
      v9 = [v25 resizableImageWithCapInsets:{0.0, 0.0, self->_sublineInset, 0.0}];
    }
  }

  return v9;
}

+ (id)calculateRoundedLinePositionsForTotalWidth:(double)a3 lineWidth:(double)a4 numberOfLines:(unint64_t)a5 roundedInView:(id)a6
{
  v7 = a6;
  v8 = [MEMORY[0x1E695DF70] array];
  if (a5)
  {
    v9 = 0;
    do
    {
      UIRoundToViewScale();
      v10 = [MEMORY[0x1E696AD98] numberWithDouble:?];
      [v8 addObject:v10];

      ++v9;
    }

    while (a5 != v9);
  }

  return v8;
}

@end