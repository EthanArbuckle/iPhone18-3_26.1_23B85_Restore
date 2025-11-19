@interface CKLabel
- (BOOL)hasAccessoryImageView;
- (BOOL)titleIconImageTypeSupportsRotation:(int64_t)a3;
- (CGRect)rectToDrawTextInForRect:(CGRect)a3;
- (CGRect)textRectForAccessoryImageView;
- (CGSize)intrinsicContentSize;
- (CGSize)sizeOfAccessoryImageView;
- (CGSize)sizeThatFits:(CGSize)a3;
- (NSSet)titleIconImageTypesSupportingRotation;
- (void)_rotateTitleIconImageView;
- (void)drawTextInRect:(CGRect)a3;
- (void)layoutSubviews;
- (void)setShouldHaveRotatedTitleIconImage:(BOOL)a3 animated:(BOOL)a4;
- (void)setTextColor:(id)a3;
- (void)setTitleIconImageType:(int64_t)a3;
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
    v3 = [(CKLabel *)self isLTR];
    v4 = *(MEMORY[0x1E695EFD0] + 16);
    *&v9.a = *MEMORY[0x1E695EFD0];
    *&v9.c = v4;
    *&v9.tx = *(MEMORY[0x1E695EFD0] + 32);
    if (v3)
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
  v2 = [(CKLabel *)self titleIconImageType];
  result = 1;
  if (v2 > 4)
  {
    if (v2 == 5)
    {
      goto LABEL_8;
    }

    if (v2 != 6)
    {
      return result;
    }

    return 0;
  }

  if (!v2)
  {
    return 0;
  }

  if (v2 == 4)
  {
LABEL_8:
    v4 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
    v5 = [v4 isKeyTransparencyEnabled];

    return v5;
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
  v39 = [(CKLabel *)self titleIconImageView];
  [v39 setFrame:{v32, v34, v36, v38}];

  UIRectRoundToViewScale();
  [(CKLabel *)self setTextRectForAccessoryImageView:?];
}

- (void)setTextColor:(id)a3
{
  v4 = a3;
  v6.receiver = self;
  v6.super_class = CKLabel;
  [(CKLabel *)&v6 setTextColor:v4];
  if ([(CKLabel *)self titleIconImageType]== 1 || [(CKLabel *)self titleIconImageType]== 3)
  {
    v5 = [(CKLabel *)self titleIconImageView];
    [v5 setTintColor:v4];
  }
}

- (void)setTitleIconImageType:(int64_t)a3
{
  if (self->_titleIconImageType != a3)
  {
    [(CKLabel *)self setNeedsDisplay];
  }

  self->_titleIconImageType = a3;
  v5 = [(CKLabel *)self titleIconImageView];
  [v5 removeFromSuperview];

  [(CKLabel *)self setTitleIconImageView:0];
  if ((a3 - 1) <= 5)
  {
    v6 = [[CKTitleIcon alloc] initWithTitleIconImageType:a3];
    v7 = objc_alloc(MEMORY[0x1E69DCAE0]);
    v8 = [v7 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
    [(CKLabel *)self setTitleIconImageView:v8];

    v9 = [(CKTitleIcon *)v6 image];
    v10 = [(CKLabel *)self titleIconImageView];
    [v10 setImage:v9];

    v11 = [(CKTitleIcon *)v6 preferredColor];
    v12 = v11;
    if (!v11)
    {
      v12 = [(CKLabel *)self textColor];
    }

    v13 = [(CKLabel *)self titleIconImageView];
    [v13 setTintColor:v12];

    if (!v11)
    {
    }

    v14 = [(CKLabel *)self titleIconImageView];
    [(CKLabel *)self addSubview:v14];
  }

  if ([(CKLabel *)self titleIconImageTypeSupportsRotation:a3])
  {
    v15 = [(CKLabel *)self titleIconImageView];
    [v15 setContentMode:4];
  }

  else
  {
    [(CKLabel *)self setShouldHaveRotatedTitleIconImage:0];
    [(CKLabel *)self _rotateTitleIconImageView];
  }

  [(CKLabel *)self setNeedsLayout];
}

- (CGRect)rectToDrawTextInForRect:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
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

- (void)drawTextInRect:(CGRect)a3
{
  [(CKLabel *)self rectToDrawTextInForRect:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4.receiver = self;
  v4.super_class = CKLabel;
  [(CKLabel *)&v4 drawTextInRect:?];
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
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
  v4 = [(CKLabel *)self titleIconImageType];
  if (v4 > 6)
  {
    goto LABEL_8;
  }

  if (((1 << v4) & 0xC) != 0)
  {
    v19 = [(CKLabel *)self titleIconImageView];
    v20 = [v19 image];
    [v20 size];
    v22 = v21;
    v24 = v23;

    v5 = v22 * 1.5;
    v2 = v24 * 1.5;
    goto LABEL_11;
  }

  if (((1 << v4) & 0x30) != 0)
  {
    v8 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
    v9 = [v8 isKeyTransparencyEnabled];

    if (v9)
    {
      v10 = [(CKLabel *)self font];
      [v10 lineHeight];
      UICeilToViewScale();
      v12 = v11;

      v13 = [(CKLabel *)self titleIconImageView];
      v14 = [v13 image];
      [v14 size];
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

  if (((1 << v4) & 0x42) == 0)
  {
LABEL_8:
    if (v4)
    {
      goto LABEL_11;
    }

    goto LABEL_9;
  }

  v6 = [(CKLabel *)self font];
  [v6 lineHeight];
  UICeilToViewScale();
  v2 = v7;

  v5 = v2;
LABEL_11:
  v25 = v2;
  result.height = v25;
  result.width = v5;
  return result;
}

- (BOOL)titleIconImageTypeSupportsRotation:(int64_t)a3
{
  v4 = [(CKLabel *)self titleIconImageTypesSupportingRotation];
  v5 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
  v6 = [v4 containsObject:v5];

  return v6;
}

- (void)setShouldHaveRotatedTitleIconImage:(BOOL)a3 animated:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  if ([(CKLabel *)self titleIconImageTypeSupportsRotation:[(CKLabel *)self titleIconImageType]])
  {
    [(CKLabel *)self setShouldHaveRotatedTitleIconImage:v5];
    if (v4)
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