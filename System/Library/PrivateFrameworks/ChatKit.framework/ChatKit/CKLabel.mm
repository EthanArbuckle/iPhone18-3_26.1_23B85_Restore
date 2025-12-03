@interface CKLabel
- (BOOL)hasAccessoryImageView;
- (BOOL)titleIconImageTypeSupportsRotation:(int64_t)rotation;
- (CGRect)rectToDrawTextInForRect:(CGRect)rect;
- (CGRect)textRectForAccessoryImageView;
- (CGSize)intrinsicContentSize;
- (CGSize)sizeOfAccessoryImageView;
- (CGSize)sizeThatFits:(CGSize)fits;
- (NSSet)titleIconImageTypesSupportingRotation;
- (void)_rotateTitleIconImageView;
- (void)drawTextInRect:(CGRect)rect;
- (void)layoutSubviews;
- (void)setShouldHaveRotatedTitleIconImage:(BOOL)image animated:(BOOL)animated;
- (void)setTextColor:(id)color;
- (void)setTitleIconImageType:(int64_t)type;
@end

@implementation CKLabel

- (NSSet)titleIconImageTypesSupportingRotation
{
  titleIconImageTypesSupportingRotation = self->_titleIconImageTypesSupportingRotation;
  if (!titleIconImageTypesSupportingRotation)
  {
    v4 = [MEMORY[0x1E695DFD8] setWithArray:&unk_1F04E6FC0];
    v5 = self->_titleIconImageTypesSupportingRotation;
    self->_titleIconImageTypesSupportingRotation = v4;

    titleIconImageTypesSupportingRotation = self->_titleIconImageTypesSupportingRotation;
  }

  return titleIconImageTypesSupportingRotation;
}

- (void)_rotateTitleIconImageView
{
  memset(&v10, 0, sizeof(v10));
  if ([(CKLabel *)self shouldHaveRotatedTitleIconImage])
  {
    isLTR = [(CKLabel *)self isLTR];
    v4 = *(MEMORY[0x1E695EFD0] + 16);
    *&v9.a = *MEMORY[0x1E695EFD0];
    *&v9.c = v4;
    *&v9.tx = *(MEMORY[0x1E695EFD0] + 32);
    if (isLTR)
    {
      v5 = 1.57079633;
    }

    else
    {
      v5 = -1.57079633;
    }

    CGAffineTransformRotate(&v10, &v9, v5);
  }

  else
  {
    v6 = *(MEMORY[0x1E695EFD0] + 16);
    *&v10.a = *MEMORY[0x1E695EFD0];
    *&v10.c = v6;
    *&v10.tx = *(MEMORY[0x1E695EFD0] + 32);
  }

  v7 = [(CKLabel *)self titleIconImageView:*&v10.a];
  v9 = v8;
  [v7 setTransform:&v9];
}

- (BOOL)hasAccessoryImageView
{
  titleIconImageType = [(CKLabel *)self titleIconImageType];
  result = 1;
  if (titleIconImageType > 4)
  {
    if (titleIconImageType == 5)
    {
      goto LABEL_8;
    }

    if (titleIconImageType != 6)
    {
      return result;
    }

    return 0;
  }

  if (!titleIconImageType)
  {
    return 0;
  }

  if (titleIconImageType == 4)
  {
LABEL_8:
    mEMORY[0x1E69A8070] = [MEMORY[0x1E69A8070] sharedFeatureFlags];
    isKeyTransparencyEnabled = [mEMORY[0x1E69A8070] isKeyTransparencyEnabled];

    return isKeyTransparencyEnabled;
  }

  return result;
}

- (void)layoutSubviews
{
  v47.receiver = self;
  v47.super_class = CKLabel;
  [(CKLabel *)&v47 layoutSubviews];
  if (![(CKLabel *)self hasAccessoryImageView])
  {
    return;
  }

  [(CKLabel *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [(CKLabel *)self sizeOfAccessoryImageView];
  v12 = v11;
  rect_16 = v13;
  v48.origin.x = v4;
  v48.origin.y = v6;
  v48.size.width = v8;
  v48.size.height = v10;
  rect_24 = v12;
  v14 = CGRectGetWidth(v48) + -2.0 - v12;
  v49.origin.x = v4;
  v49.origin.y = v6;
  v49.size.width = v8;
  v49.size.height = v10;
  [(CKLabel *)self textRectForBounds:[(CKLabel *)self numberOfLines] limitedToNumberOfLines:0.0, 0.0, v14, CGRectGetHeight(v49)];
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;
  rect = v15;
  if ([(CKLabel *)self textAlignment]== 1)
  {
    v50.origin.x = v4;
    v50.origin.y = v6;
    v50.size.width = v8;
    v50.size.height = v10;
    rect_8a = CGRectGetWidth(v50);
    v51.origin.x = v16;
    v51.origin.y = v18;
    v51.size.width = v20;
    v51.size.height = v22;
    v23 = (rect_8a - (rect_24 + CGRectGetWidth(v51) + 2.0)) * 0.5;
  }

  else
  {
    if (![(CKLabel *)self isLTR])
    {
      v52.origin.x = v4;
      v52.origin.y = v6;
      v52.size.width = v8;
      v52.size.height = v10;
      rect_8b = CGRectGetWidth(v52);
      v53.origin.x = v16;
      v53.origin.y = v18;
      v53.size.width = v20;
      v53.size.height = v22;
      v24 = v6;
      rect_8 = rect_8b - (rect_24 + CGRectGetWidth(v53) + 2.0);
      goto LABEL_8;
    }

    v23 = 0.0;
  }

  rect_8 = v23;
  v24 = v6;
LABEL_8:
  v54.origin.x = v4;
  v54.origin.y = v24;
  v54.size.width = v8;
  v54.size.height = v10;
  v40 = (CGRectGetHeight(v54) - rect_16) * 0.5;
  v55.origin.x = v4;
  v55.origin.y = v24;
  v55.size.width = v8;
  v55.size.height = v10;
  Height = CGRectGetHeight(v55);
  v56.origin.x = rect;
  v56.origin.y = v18;
  v56.size.width = v20;
  v56.size.height = v22;
  v26 = (Height - CGRectGetHeight(v56)) * 0.5;
  if ([(CKLabel *)self isLTR])
  {
    v27 = rect_8;
    v28 = v26;
    v29 = v20;
    v30 = v22;
  }

  else
  {
    v27 = rect_8;
    v28 = v40;
    v29 = rect_24;
    v30 = rect_16;
  }

  CGRectGetMaxX(*&v27);
  UIRectRoundToViewScale();
  v32 = v31;
  v34 = v33;
  v36 = v35;
  v38 = v37;
  titleIconImageView = [(CKLabel *)self titleIconImageView];
  [titleIconImageView setFrame:{v32, v34, v36, v38}];

  UIRectRoundToViewScale();
  [(CKLabel *)self setTextRectForAccessoryImageView:?];
}

- (void)setTextColor:(id)color
{
  colorCopy = color;
  v6.receiver = self;
  v6.super_class = CKLabel;
  [(CKLabel *)&v6 setTextColor:colorCopy];
  if ([(CKLabel *)self titleIconImageType]== 1 || [(CKLabel *)self titleIconImageType]== 3)
  {
    titleIconImageView = [(CKLabel *)self titleIconImageView];
    [titleIconImageView setTintColor:colorCopy];
  }
}

- (void)setTitleIconImageType:(int64_t)type
{
  if (self->_titleIconImageType != type)
  {
    [(CKLabel *)self setNeedsDisplay];
  }

  self->_titleIconImageType = type;
  titleIconImageView = [(CKLabel *)self titleIconImageView];
  [titleIconImageView removeFromSuperview];

  [(CKLabel *)self setTitleIconImageView:0];
  if ((type - 1) <= 5)
  {
    v6 = [[CKTitleIcon alloc] initWithTitleIconImageType:type];
    v7 = objc_alloc(MEMORY[0x1E69DCAE0]);
    v8 = [v7 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
    [(CKLabel *)self setTitleIconImageView:v8];

    image = [(CKTitleIcon *)v6 image];
    titleIconImageView2 = [(CKLabel *)self titleIconImageView];
    [titleIconImageView2 setImage:image];

    preferredColor = [(CKTitleIcon *)v6 preferredColor];
    textColor = preferredColor;
    if (!preferredColor)
    {
      textColor = [(CKLabel *)self textColor];
    }

    titleIconImageView3 = [(CKLabel *)self titleIconImageView];
    [titleIconImageView3 setTintColor:textColor];

    if (!preferredColor)
    {
    }

    titleIconImageView4 = [(CKLabel *)self titleIconImageView];
    [(CKLabel *)self addSubview:titleIconImageView4];
  }

  if ([(CKLabel *)self titleIconImageTypeSupportsRotation:type])
  {
    titleIconImageView5 = [(CKLabel *)self titleIconImageView];
    [titleIconImageView5 setContentMode:4];
  }

  else
  {
    [(CKLabel *)self setShouldHaveRotatedTitleIconImage:0];
    [(CKLabel *)self _rotateTitleIconImageView];
  }

  [(CKLabel *)self setNeedsLayout];
}

- (CGRect)rectToDrawTextInForRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  if ([(CKLabel *)self hasAccessoryImageView])
  {
    [(CKLabel *)self textRectForAccessoryImageView];
    x = v8;
    y = v9;
    width = v10;
    height = v11;
  }

  v12 = x;
  v13 = y;
  v14 = width;
  v15 = height;
  result.size.height = v15;
  result.size.width = v14;
  result.origin.y = v13;
  result.origin.x = v12;
  return result;
}

- (void)drawTextInRect:(CGRect)rect
{
  [(CKLabel *)self rectToDrawTextInForRect:rect.origin.x, rect.origin.y, rect.size.width, rect.size.height];
  v4.receiver = self;
  v4.super_class = CKLabel;
  [(CKLabel *)&v4 drawTextInRect:?];
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  height = fits.height;
  width = fits.width;
  if ([(CKLabel *)self hasAccessoryImageView])
  {
    [(CKLabel *)self sizeOfAccessoryImageView];
    v7 = v6;
    if (width == *MEMORY[0x1E695F060] && height == *(MEMORY[0x1E695F060] + 8))
    {
      v15.receiver = self;
      v15.super_class = CKLabel;
      [(CKLabel *)&v15 sizeThatFits:width, height];
      v11 = v7 + 4.0 + v12;
    }

    else
    {
      v14.receiver = self;
      v14.super_class = CKLabel;
      [(CKLabel *)&v14 sizeThatFits:width + -4.0 - v6, height];
      v11 = v7 + 4.0 + v10;
      if (v11 >= width)
      {
        v11 = width;
      }

      if (v9 >= height)
      {
        v9 = height;
      }
    }
  }

  else
  {
    v13.receiver = self;
    v13.super_class = CKLabel;
    [(CKLabel *)&v13 sizeThatFits:width, height];
  }

  result.height = v9;
  result.width = v11;
  return result;
}

- (CGSize)intrinsicContentSize
{
  v10.receiver = self;
  v10.super_class = CKLabel;
  [(CKLabel *)&v10 intrinsicContentSize];
  v4 = v3;
  v6 = v5;
  if ([(CKLabel *)self hasAccessoryImageView])
  {
    [(CKLabel *)self sizeOfAccessoryImageView];
    v4 = v4 + v7 + 2.0;
  }

  v8 = v4;
  v9 = v6;
  result.height = v9;
  result.width = v8;
  return result;
}

- (CGSize)sizeOfAccessoryImageView
{
  titleIconImageType = [(CKLabel *)self titleIconImageType];
  if (titleIconImageType > 6)
  {
    goto LABEL_8;
  }

  if (((1 << titleIconImageType) & 0xC) != 0)
  {
    titleIconImageView = [(CKLabel *)self titleIconImageView];
    image = [titleIconImageView image];
    [image size];
    v22 = v21;
    v24 = v23;

    v5 = v22 * 1.5;
    v2 = v24 * 1.5;
    goto LABEL_11;
  }

  if (((1 << titleIconImageType) & 0x30) != 0)
  {
    mEMORY[0x1E69A8070] = [MEMORY[0x1E69A8070] sharedFeatureFlags];
    isKeyTransparencyEnabled = [mEMORY[0x1E69A8070] isKeyTransparencyEnabled];

    if (isKeyTransparencyEnabled)
    {
      font = [(CKLabel *)self font];
      [font lineHeight];
      UICeilToViewScale();
      v12 = v11;

      titleIconImageView2 = [(CKLabel *)self titleIconImageView];
      image2 = [titleIconImageView2 image];
      [image2 size];
      v16 = v15;
      v18 = v17;

      v5 = v16 * (v12 / v18);
      v2 = v18 * (v12 / v18);
      goto LABEL_11;
    }

LABEL_9:
    v5 = *MEMORY[0x1E695F060];
    v2 = *(MEMORY[0x1E695F060] + 8);
    goto LABEL_11;
  }

  if (((1 << titleIconImageType) & 0x42) == 0)
  {
LABEL_8:
    if (titleIconImageType)
    {
      goto LABEL_11;
    }

    goto LABEL_9;
  }

  font2 = [(CKLabel *)self font];
  [font2 lineHeight];
  UICeilToViewScale();
  v2 = v7;

  v5 = v2;
LABEL_11:
  v25 = v2;
  result.height = v25;
  result.width = v5;
  return result;
}

- (BOOL)titleIconImageTypeSupportsRotation:(int64_t)rotation
{
  titleIconImageTypesSupportingRotation = [(CKLabel *)self titleIconImageTypesSupportingRotation];
  v5 = [MEMORY[0x1E696AD98] numberWithInteger:rotation];
  v6 = [titleIconImageTypesSupportingRotation containsObject:v5];

  return v6;
}

- (void)setShouldHaveRotatedTitleIconImage:(BOOL)image animated:(BOOL)animated
{
  animatedCopy = animated;
  imageCopy = image;
  if ([(CKLabel *)self titleIconImageTypeSupportsRotation:[(CKLabel *)self titleIconImageType]])
  {
    [(CKLabel *)self setShouldHaveRotatedTitleIconImage:imageCopy];
    if (animatedCopy)
    {
      v7 = +[CKUIBehavior sharedBehaviors];
      [v7 transcriptHeaderChevronRotationAnimationSpeed];
      v9 = v8;

      v10[0] = MEMORY[0x1E69E9820];
      v10[1] = 3221225472;
      v10[2] = __55__CKLabel_setShouldHaveRotatedTitleIconImage_animated___block_invoke;
      v10[3] = &unk_1E72EBA18;
      v10[4] = self;
      [MEMORY[0x1E69DD250] animateWithDuration:0x20000 delay:v10 options:0 animations:v9 completion:0.0];
    }

    else
    {

      [(CKLabel *)self _rotateTitleIconImageView];
    }
  }
}

- (CGRect)textRectForAccessoryImageView
{
  x = self->_textRectForAccessoryImageView.origin.x;
  y = self->_textRectForAccessoryImageView.origin.y;
  width = self->_textRectForAccessoryImageView.size.width;
  height = self->_textRectForAccessoryImageView.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end