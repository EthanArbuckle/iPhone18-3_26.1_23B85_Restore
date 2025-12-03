@interface _NTKCFaceDetailCollectionCell
+ (double)outlineLineWidth;
+ (id)reuseIdentifier;
- (CGRect)swatchFrame;
- (_NTKCFaceDetailCollectionCell)initWithFrame:(CGRect)frame;
- (void)layoutSubviews;
- (void)setActive:(BOOL)active animated:(BOOL)animated forced:(BOOL)forced;
- (void)setDisabled:(BOOL)disabled animated:(BOOL)animated;
- (void)setOutlineOutset:(double)outset;
- (void)setStyle:(int64_t)style;
- (void)setSwatchFrame:(CGRect)frame;
- (void)setText:(id)text;
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

- (_NTKCFaceDetailCollectionCell)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  v20.receiver = self;
  v20.super_class = _NTKCFaceDetailCollectionCell;
  v5 = [(_NTKCFaceDetailCollectionCell *)&v20 initWithFrame:frame.origin.x, frame.origin.y];
  if (v5)
  {
    v6 = objc_opt_new();
    imageView = v5->_imageView;
    v5->_imageView = v6;

    [(UIImageView *)v5->_imageView setContentMode:1];
    contentView = [(_NTKCFaceDetailCollectionCell *)v5 contentView];
    [contentView addSubview:v5->_imageView];

    layer = [MEMORY[0x277CD9F90] layer];
    outlineView = v5->_outlineView;
    v5->_outlineView = layer;

    clearColor = [MEMORY[0x277D75348] clearColor];
    -[CAShapeLayer setFillColor:](v5->_outlineView, "setFillColor:", [clearColor CGColor]);

    v12 = NTKCOutlineColor(1);
    -[CAShapeLayer setStrokeColor:](v5->_outlineView, "setStrokeColor:", [v12 CGColor]);

    [objc_opt_class() outlineLineWidth];
    [(CAShapeLayer *)v5->_outlineView setLineWidth:?];
    [(CAShapeLayer *)v5->_outlineView setHidden:1];
    contentView2 = [(_NTKCFaceDetailCollectionCell *)v5 contentView];
    layer2 = [contentView2 layer];
    [layer2 addSublayer:v5->_outlineView];

    v15 = [objc_alloc(MEMORY[0x277D75D18]) initWithFrame:{0.0, 0.0, width, height}];
    disabledDimmingView = v5->_disabledDimmingView;
    v5->_disabledDimmingView = v15;

    blackColor = [MEMORY[0x277D75348] blackColor];
    [(UIView *)v5->_disabledDimmingView setBackgroundColor:blackColor];

    [(UIView *)v5->_disabledDimmingView setAlpha:0.0];
    contentView3 = [(_NTKCFaceDetailCollectionCell *)v5 contentView];
    [contentView3 addSubview:v5->_disabledDimmingView];
  }

  return v5;
}

- (void)setSwatchFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  p_swatchFrame = &self->_swatchFrame;
  if (!CGRectEqualToRect(frame, self->_swatchFrame))
  {
    p_swatchFrame->origin.x = x;
    p_swatchFrame->origin.y = y;
    p_swatchFrame->size.width = width;
    p_swatchFrame->size.height = height;

    [(_NTKCFaceDetailCollectionCell *)self setNeedsLayout];
  }
}

- (void)setOutlineOutset:(double)outset
{
  v3 = outset - self->_outlineOutset;
  if (v3 < 0.0)
  {
    v3 = -v3;
  }

  if (v3 > 0.00000011920929)
  {
    self->_outlineOutset = outset;
    [(_NTKCFaceDetailCollectionCell *)self setNeedsLayout];
  }
}

- (void)setText:(id)text
{
  textCopy = text;
  text = [(_NTKCFaceDetailCollectionCellLabel *)self->_label text];

  v5 = textCopy;
  if (text != textCopy)
  {
    v6 = [textCopy length];
    label = self->_label;
    if (v6)
    {
      if (!label)
      {
        v8 = objc_opt_new();
        v9 = self->_label;
        self->_label = v8;

        [(_NTKCFaceDetailCollectionCellLabel *)self->_label setUsesShortTextWidth:CGRectGetWidth(self->_swatchFrame) < 90.0];
        contentView = [(_NTKCFaceDetailCollectionCell *)self contentView];
        [contentView insertSubview:self->_label belowSubview:self->_disabledDimmingView];

        label = self->_label;
      }

      [(_NTKCFaceDetailCollectionCellLabel *)label setText:textCopy];
    }

    else
    {
      v5 = textCopy;
      if (!label)
      {
        goto LABEL_9;
      }

      [(_NTKCFaceDetailCollectionCellLabel *)label removeFromSuperview];
      v11 = self->_label;
      self->_label = 0;
    }

    [(_NTKCFaceDetailCollectionCell *)self setNeedsLayout];
    v5 = textCopy;
  }

LABEL_9:
}

- (void)setStyle:(int64_t)style
{
  if (self->_style != style)
  {
    self->_style = style;
    currentDevice = [MEMORY[0x277CBBAE8] currentDevice];
    deviceCategory = [currentDevice deviceCategory];

    v6 = 0.0;
    if (deviceCategory == 2)
    {
      v7 = self->_style - 2;
      if (v7 <= 2)
      {
        v6 = dbl_22DCE7C48[v7];
      }
    }

    currentDevice2 = [MEMORY[0x277CBBAE8] currentDevice];
    deviceCategory2 = [currentDevice2 deviceCategory];

    if (deviceCategory2 == 3)
    {
      v10 = self->_style - 2;
      if (v10 <= 2)
      {
        v6 = dbl_22DCE7C60[v10];
      }
    }

    currentDevice3 = [MEMORY[0x277CBBAE8] currentDevice];
    deviceCategory3 = [currentDevice3 deviceCategory];

    if (deviceCategory3 >= 4 && (self->_style - 2) <= 2)
    {
      currentDevice4 = [MEMORY[0x277CBBAE8] currentDevice];
      [currentDevice4 screenCornerRadius];
      v15 = v14;
      Height = CGRectGetHeight(self->_swatchFrame);
      currentDevice5 = [MEMORY[0x277CBBAE8] currentDevice];
      [currentDevice5 screenBounds];
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

  currentDevice = [MEMORY[0x277CBBAE8] currentDevice];
  deviceCategory = [currentDevice deviceCategory];

  if (deviceCategory == 2)
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
    currentDevice2 = [MEMORY[0x277CBBAE8] currentDevice];
    deviceCategory2 = [currentDevice2 deviceCategory];

    if (deviceCategory2 != 3)
    {
      currentDevice3 = [MEMORY[0x277CBBAE8] currentDevice];
      deviceCategory3 = [currentDevice3 deviceCategory];

      v31 = 6.0;
      if (deviceCategory3 >= 4 && (self->_style - 2) <= 2)
      {
        currentDevice4 = [MEMORY[0x277CBBAE8] currentDevice];
        [currentDevice4 screenCornerRadius];
        v39 = v38;
        v62.origin.x = p_swatchFrame->origin.x;
        v62.origin.y = self->_swatchFrame.origin.y;
        v62.size.width = self->_swatchFrame.size.width;
        v62.size.height = self->_swatchFrame.size.height;
        v40 = CGRectGetHeight(v62);
        currentDevice5 = [MEMORY[0x277CBBAE8] currentDevice];
        [currentDevice5 screenBounds];
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

- (void)setDisabled:(BOOL)disabled animated:(BOOL)animated
{
  if (self->_disabled != disabled)
  {
    self->_disabled = disabled;
    if (disabled)
    {
      [(_NTKCFaceDetailCollectionCell *)self setActive:0, animated];
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

- (void)setActive:(BOOL)active animated:(BOOL)animated forced:(BOOL)forced
{
  if (self->_active != active || forced)
  {
    self->_active = active;
    if (!self->_disabled || !active)
    {
      if (!animated)
      {
        [MEMORY[0x277CD9FF0] begin];
        [MEMORY[0x277CD9FF0] setDisableActions:1];
        active = self->_active;
      }

      [(CAShapeLayer *)self->_outlineView setHidden:!active];
      [(_NTKCFaceDetailCollectionCellLabel *)self->_label setActive:self->_active];
      if (!animated)
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