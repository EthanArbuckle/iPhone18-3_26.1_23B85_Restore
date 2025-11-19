@interface _NTKCFaceDetailCollectionCell
+ (double)outlineLineWidth;
+ (id)reuseIdentifier;
- (CGRect)swatchFrame;
- (_NTKCFaceDetailCollectionCell)initWithFrame:(CGRect)a3;
- (void)layoutSubviews;
- (void)setActive:(BOOL)active animated:(BOOL)a4 forced:(BOOL)a5;
- (void)setDisabled:(BOOL)a3 animated:(BOOL)a4;
- (void)setOutlineOutset:(double)a3;
- (void)setStyle:(int64_t)a3;
- (void)setSwatchFrame:(CGRect)a3;
- (void)setText:(id)a3;
@end

@implementation _NTKCFaceDetailCollectionCell

+ (id)reuseIdentifier
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

+ (double)outlineLineWidth
{
  v2 = NTKCScreenStyle();
  result = 2.66666667;
  if (v2 != 1)
  {
    return 2.5;
  }

  return result;
}

- (_NTKCFaceDetailCollectionCell)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  v20.receiver = self;
  v20.super_class = _NTKCFaceDetailCollectionCell;
  v5 = [(_NTKCFaceDetailCollectionCell *)&v20 initWithFrame:a3.origin.x, a3.origin.y];
  if (v5)
  {
    v6 = objc_opt_new();
    imageView = v5->_imageView;
    v5->_imageView = v6;

    [(UIImageView *)v5->_imageView setContentMode:1];
    v8 = [(_NTKCFaceDetailCollectionCell *)v5 contentView];
    [v8 addSubview:v5->_imageView];

    v9 = [MEMORY[0x277CD9F90] layer];
    outlineView = v5->_outlineView;
    v5->_outlineView = v9;

    v11 = [MEMORY[0x277D75348] clearColor];
    -[CAShapeLayer setFillColor:](v5->_outlineView, "setFillColor:", [v11 CGColor]);

    v12 = NTKCOutlineColor(1);
    -[CAShapeLayer setStrokeColor:](v5->_outlineView, "setStrokeColor:", [v12 CGColor]);

    [objc_opt_class() outlineLineWidth];
    [(CAShapeLayer *)v5->_outlineView setLineWidth:?];
    [(CAShapeLayer *)v5->_outlineView setHidden:1];
    v13 = [(_NTKCFaceDetailCollectionCell *)v5 contentView];
    v14 = [v13 layer];
    [v14 addSublayer:v5->_outlineView];

    v15 = [objc_alloc(MEMORY[0x277D75D18]) initWithFrame:{0.0, 0.0, width, height}];
    disabledDimmingView = v5->_disabledDimmingView;
    v5->_disabledDimmingView = v15;

    v17 = [MEMORY[0x277D75348] blackColor];
    [(UIView *)v5->_disabledDimmingView setBackgroundColor:v17];

    [(UIView *)v5->_disabledDimmingView setAlpha:0.0];
    v18 = [(_NTKCFaceDetailCollectionCell *)v5 contentView];
    [v18 addSubview:v5->_disabledDimmingView];
  }

  return v5;
}

- (void)setSwatchFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  p_swatchFrame = &self->_swatchFrame;
  if (!CGRectEqualToRect(a3, self->_swatchFrame))
  {
    p_swatchFrame->origin.x = x;
    p_swatchFrame->origin.y = y;
    p_swatchFrame->size.width = width;
    p_swatchFrame->size.height = height;

    [(_NTKCFaceDetailCollectionCell *)self setNeedsLayout];
  }
}

- (void)setOutlineOutset:(double)a3
{
  v3 = a3 - self->_outlineOutset;
  if (v3 < 0.0)
  {
    v3 = -v3;
  }

  if (v3 > 0.00000011920929)
  {
    self->_outlineOutset = a3;
    [(_NTKCFaceDetailCollectionCell *)self setNeedsLayout];
  }
}

- (void)setText:(id)a3
{
  v12 = a3;
  v4 = [(_NTKCFaceDetailCollectionCellLabel *)self->_label text];

  v5 = v12;
  if (v4 != v12)
  {
    v6 = [v12 length];
    label = self->_label;
    if (v6)
    {
      if (!label)
      {
        v8 = objc_opt_new();
        v9 = self->_label;
        self->_label = v8;

        [(_NTKCFaceDetailCollectionCellLabel *)self->_label setUsesShortTextWidth:CGRectGetWidth(self->_swatchFrame) < 90.0];
        v10 = [(_NTKCFaceDetailCollectionCell *)self contentView];
        [v10 insertSubview:self->_label belowSubview:self->_disabledDimmingView];

        label = self->_label;
      }

      [(_NTKCFaceDetailCollectionCellLabel *)label setText:v12];
    }

    else
    {
      v5 = v12;
      if (!label)
      {
        goto LABEL_9;
      }

      [(_NTKCFaceDetailCollectionCellLabel *)label removeFromSuperview];
      v11 = self->_label;
      self->_label = 0;
    }

    [(_NTKCFaceDetailCollectionCell *)self setNeedsLayout];
    v5 = v12;
  }

LABEL_9:
}

- (void)setStyle:(int64_t)a3
{
  if (self->_style != a3)
  {
    self->_style = a3;
    v4 = [MEMORY[0x277CBBAE8] currentDevice];
    v5 = [v4 deviceCategory];

    v6 = 0.0;
    if (v5 == 2)
    {
      v7 = self->_style - 2;
      if (v7 <= 2)
      {
        v6 = dbl_22DCE7C48[v7];
      }
    }

    v8 = [MEMORY[0x277CBBAE8] currentDevice];
    v9 = [v8 deviceCategory];

    if (v9 == 3)
    {
      v10 = self->_style - 2;
      if (v10 <= 2)
      {
        v6 = dbl_22DCE7C60[v10];
      }
    }

    v11 = [MEMORY[0x277CBBAE8] currentDevice];
    v12 = [v11 deviceCategory];

    if (v12 >= 4 && (self->_style - 2) <= 2)
    {
      v13 = [MEMORY[0x277CBBAE8] currentDevice];
      [v13 screenCornerRadius];
      v15 = v14;
      Height = CGRectGetHeight(self->_swatchFrame);
      v17 = [MEMORY[0x277CBBAE8] currentDevice];
      [v17 screenBounds];
      v6 = v15 * (Height / CGRectGetHeight(v21));
    }

    imageView = self->_imageView;
    if (v6 == 0.0)
    {
      [(UIImageView *)imageView _setCornerRadius:0.0];
    }

    else
    {
      [(UIImageView *)imageView _setContinuousCornerRadius:v6];
    }

    v19 = self->_imageView;

    [(UIImageView *)v19 setClipsToBounds:v6 != 0.0];
  }
}

- (void)layoutSubviews
{
  v59.receiver = self;
  v59.super_class = _NTKCFaceDetailCollectionCell;
  [(_NTKCFaceDetailCollectionCell *)&v59 layoutSubviews];
  outlineOutset = self->_outlineOutset;
  [(CAShapeLayer *)self->_outlineView lineWidth];
  v5 = outlineOutset + v4;
  [(CAShapeLayer *)self->_outlineView frame];
  p_swatchFrame = &self->_swatchFrame;
  v7 = CGRectGetMinX(self->_swatchFrame) - v5;
  v8 = CGRectGetWidth(self->_swatchFrame) + v5 * 2.0;
  v9 = CGRectGetMinY(self->_swatchFrame) - v5;
  v10 = CGRectGetHeight(self->_swatchFrame) + v5 * 2.0;
  v57 = v8;
  v58 = v7;
  rect = v9;
  [(CAShapeLayer *)self->_outlineView setFrame:v7, v9, v8, v10];
  [(CAShapeLayer *)self->_outlineView bounds];
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;
  [(CAShapeLayer *)self->_outlineView lineWidth];
  v20 = v19 * 0.5;
  [(CAShapeLayer *)self->_outlineView lineWidth];
  v22 = v21 * 0.5;
  v60.origin.x = v12;
  v60.origin.y = v14;
  v60.size.width = v16;
  v60.size.height = v18;
  v61 = CGRectInset(v60, v20, v22);
  x = v61.origin.x;
  y = v61.origin.y;
  width = v61.size.width;
  height = v61.size.height;
  if (self->_style <= 1uLL)
  {
    v27 = [MEMORY[0x277D75208] bezierPathWithOvalInRect:{v61.origin.x, v61.origin.y, v61.size.width, v61.size.height}];
    goto LABEL_14;
  }

  v28 = [MEMORY[0x277CBBAE8] currentDevice];
  v29 = [v28 deviceCategory];

  if (v29 == 2)
  {
    v30 = self->_style - 2;
    v31 = 6.0;
    if (v30 < 3)
    {
      v32 = &unk_22DCE7C78;
LABEL_9:
      v31 = v32[v30];
    }
  }

  else
  {
    v33 = [MEMORY[0x277CBBAE8] currentDevice];
    v34 = [v33 deviceCategory];

    if (v34 != 3)
    {
      v35 = [MEMORY[0x277CBBAE8] currentDevice];
      v36 = [v35 deviceCategory];

      v31 = 6.0;
      if (v36 >= 4 && (self->_style - 2) <= 2)
      {
        v37 = [MEMORY[0x277CBBAE8] currentDevice];
        [v37 screenCornerRadius];
        v39 = v38;
        v62.origin.x = p_swatchFrame->origin.x;
        v62.origin.y = self->_swatchFrame.origin.y;
        v62.size.width = self->_swatchFrame.size.width;
        v62.size.height = self->_swatchFrame.size.height;
        v40 = CGRectGetHeight(v62);
        v41 = [MEMORY[0x277CBBAE8] currentDevice];
        [v41 screenBounds];
        v42 = v39 * (v40 / CGRectGetHeight(v63));

        [(CAShapeLayer *)self->_outlineView lineWidth];
        v31 = v42 + v5 + v43 * -0.5;
      }

      goto LABEL_13;
    }

    v30 = self->_style - 2;
    v31 = 6.0;
    if (v30 < 3)
    {
      v32 = &unk_22DCE7C90;
      goto LABEL_9;
    }
  }

LABEL_13:
  v27 = [MEMORY[0x277D75208] bezierPathWithRoundedRect:x cornerRadius:{y, width, height, v31}];
LABEL_14:
  v44 = v27;
  -[CAShapeLayer setPath:](self->_outlineView, "setPath:", [v27 CGPath]);
  [(UIImageView *)self->_imageView setFrame:p_swatchFrame->origin.x, self->_swatchFrame.origin.y, self->_swatchFrame.size.width, self->_swatchFrame.size.height];
  label = self->_label;
  if (label)
  {
    [(_NTKCFaceDetailCollectionCellLabel *)label frame];
    UIRectCenteredXInRectScale();
    v47 = v46;
    v49 = v48;
    v51 = v50;
    v64.size.width = v57;
    v64.origin.x = v58;
    v64.origin.y = rect;
    v64.size.height = v10;
    MaxY = CGRectGetMaxY(v64);
    v53 = 14.0;
    if (self->_active)
    {
      v53 = 18.0;
    }

    v54 = MaxY + v53;
    [(_NTKCFaceDetailCollectionCellLabel *)self->_label firstLineBaseline];
    [(_NTKCFaceDetailCollectionCellLabel *)self->_label setFrame:v47, v54 - v55, v49, v51];
  }

  [(_NTKCFaceDetailCollectionCell *)self bounds];
  [(UIView *)self->_disabledDimmingView setFrame:?];
}

- (void)setDisabled:(BOOL)a3 animated:(BOOL)a4
{
  if (self->_disabled != a3)
  {
    self->_disabled = a3;
    if (a3)
    {
      [(_NTKCFaceDetailCollectionCell *)self setActive:0, a4];
      v6 = 0.75;
    }

    else
    {
      [(_NTKCFaceDetailCollectionCell *)self setActive:self->_active animated:1 forced:1];
      v6 = 0.0;
    }

    disabledDimmingView = self->_disabledDimmingView;

    [(UIView *)disabledDimmingView setAlpha:v6];
  }
}

- (void)setActive:(BOOL)active animated:(BOOL)a4 forced:(BOOL)a5
{
  if (self->_active != active || a5)
  {
    self->_active = active;
    if (!self->_disabled || !active)
    {
      if (!a4)
      {
        [MEMORY[0x277CD9FF0] begin];
        [MEMORY[0x277CD9FF0] setDisableActions:1];
        active = self->_active;
      }

      [(CAShapeLayer *)self->_outlineView setHidden:!active];
      [(_NTKCFaceDetailCollectionCellLabel *)self->_label setActive:self->_active];
      if (!a4)
      {
        [MEMORY[0x277CD9FF0] commit];
      }

      [(_NTKCFaceDetailCollectionCell *)self setNeedsLayout];
    }
  }
}

- (CGRect)swatchFrame
{
  x = self->_swatchFrame.origin.x;
  y = self->_swatchFrame.origin.y;
  width = self->_swatchFrame.size.width;
  height = self->_swatchFrame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end