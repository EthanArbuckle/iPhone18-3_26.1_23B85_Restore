@interface CLKUICurvedColoringLabel
- (CGAffineTransform)transformForImage;
- (CGPoint)centerForImage;
- (CGRect)textBoundingRect;
- (CGSize)imageViewOverrideSize;
- (CGSize)sizeThatFits:(CGSize)a3;
- (CLKUICurvedColoringLabel)initWithFrame:(CGRect)a3;
- (void)_setUpSnapshot;
- (void)invalidateCachedSize;
- (void)layoutSubviews;
- (void)setBaselineOffset:(double)a3;
- (void)setBounds:(CGRect)a3;
- (void)setCircleRadius:(double)a3;
- (void)setFont:(id)a3;
- (void)setFrame:(CGRect)a3;
- (void)setImagePadding:(double)a3;
- (void)setImageView:(id)a3;
- (void)setImageView:(id)a3 placement:(unint64_t)a4 padding:(double)a5;
- (void)setMaxAngularWidth:(double)a3;
- (void)setPath:(id)a3;
- (void)setTextProviderFont:(id)a3;
- (void)setTracking:(double)a3;
- (void)setUsesTextProviderTintColoring:(BOOL)a3;
- (void)sizeToFit;
- (void)traitCollectionDidChange:(id)a3;
@end

@implementation CLKUICurvedColoringLabel

- (CLKUICurvedColoringLabel)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v11.receiver = self;
  v11.super_class = CLKUICurvedColoringLabel;
  v7 = [(CLKUIColoringLabel *)&v11 initWithFrame:?];
  if (v7)
  {
    v8 = [[CLKUICurvedLabel alloc] initWithFrame:x, y, width, height];
    curvedLabel = v7->_curvedLabel;
    v7->_curvedLabel = v8;

    [(CLKUICurvedColoringLabel *)v7 addSubview:v7->_curvedLabel];
    [(CLKUIColoringLabel *)v7 setUsesTextProviderSize:0];
  }

  return v7;
}

- (void)setCircleRadius:(double)a3
{
  [(CLKUICurvedLabel *)self->_curvedLabel setCircleRadius:a3];
  [(CLKUICurvedLabel *)self->_curvedLabel maxLinearTextWidth];
  v4.receiver = self;
  v4.super_class = CLKUICurvedColoringLabel;
  [(CLKUIColoringLabel *)&v4 setMaxWidth:?];
}

- (void)setPath:(id)a3
{
  objc_storeStrong(&self->_path, a3);
  v5 = a3;
  [(CLKUICurvedLabel *)self->_curvedLabel setPath:v5];
  [(CLKUICurvedLabel *)self->_curvedLabel maxLinearTextWidth];
  v6.receiver = self;
  v6.super_class = CLKUICurvedColoringLabel;
  [(CLKUIColoringLabel *)&v6 setMaxWidth:?];
}

- (void)setUsesTextProviderTintColoring:(BOOL)a3
{
  v3 = a3;
  if ([(CLKUICurvedLabel *)self->_curvedLabel attributedTextProvidesColor]!= a3)
  {
    [(CLKUICurvedLabel *)self->_curvedLabel setAttributedTextProvidesColor:v3];
    v5.receiver = self;
    v5.super_class = CLKUICurvedColoringLabel;
    [(CLKUIColoringLabel *)&v5 setUsesTextProviderTintColoring:v3];
  }
}

- (void)setMaxAngularWidth:(double)a3
{
  [(CLKUICurvedLabel *)self->_curvedLabel setMaxAngularWidth:a3];
  [(CLKUICurvedLabel *)self->_curvedLabel maxLinearTextWidth];
  v4.receiver = self;
  v4.super_class = CLKUICurvedColoringLabel;
  [(CLKUIColoringLabel *)&v4 setMaxWidth:?];
}

- (void)setFont:(id)a3
{
  curvedLabel = self->_curvedLabel;
  v5 = a3;
  [(CLKUICurvedLabel *)curvedLabel setFont:v5];
  v6.receiver = self;
  v6.super_class = CLKUICurvedColoringLabel;
  [(CLKUIColoringLabel *)&v6 setFont:v5];
}

- (void)setTextProviderFont:(id)a3
{
  [(CLKUICurvedColoringLabel *)self setFont:a3];

  [(CLKUIColoringLabel *)self _requeryTextProviderAndNotify:0];
}

- (void)setTracking:(double)a3
{
  [(CLKUICurvedLabel *)self->_curvedLabel setTracking:?];
  v5.receiver = self;
  v5.super_class = CLKUICurvedColoringLabel;
  [(CLKUIColoringLabel *)&v5 setTracking:a3];
}

- (void)setBaselineOffset:(double)a3
{
  [(CLKUICurvedLabel *)self->_curvedLabel setBaselineOffset:?];
  if (self->_baselineOffset != a3)
  {
    self->_baselineOffset = a3;

    [(CLKUIColoringLabel *)self _requeryTextProviderAndNotify:0];
  }
}

- (void)setImagePadding:(double)a3
{
  [(CLKUICurvedLabel *)self->_curvedLabel setImagePadding:a3];
  [(CLKUICurvedLabel *)self->_curvedLabel maxLinearTextWidth];
  v4.receiver = self;
  v4.super_class = CLKUICurvedColoringLabel;
  [(CLKUIColoringLabel *)&v4 setMaxWidth:?];
}

- (void)setImageView:(id)a3
{
  [(CLKUICurvedLabel *)self->_curvedLabel setImageView:a3];
  [(CLKUICurvedLabel *)self->_curvedLabel maxLinearTextWidth];
  v4.receiver = self;
  v4.super_class = CLKUICurvedColoringLabel;
  [(CLKUIColoringLabel *)&v4 setMaxWidth:?];
}

- (void)setImageView:(id)a3 placement:(unint64_t)a4 padding:(double)a5
{
  [(CLKUICurvedLabel *)self->_curvedLabel setImageView:a3 placement:a4 padding:a5];
  [(CLKUICurvedLabel *)self->_curvedLabel maxLinearTextWidth];
  v6.receiver = self;
  v6.super_class = CLKUICurvedColoringLabel;
  [(CLKUIColoringLabel *)&v6 setMaxWidth:?];
}

- (void)invalidateCachedSize
{
  [(CLKUICurvedLabel *)self->_curvedLabel invalidateCachedSize];
  v3.receiver = self;
  v3.super_class = CLKUICurvedColoringLabel;
  [(CLKUIColoringLabel *)&v3 invalidateCachedSize];
}

- (void)traitCollectionDidChange:(id)a3
{
  v4.receiver = self;
  v4.super_class = CLKUICurvedColoringLabel;
  [(CLKUIColoringLabel *)&v4 traitCollectionDidChange:a3];
  [(CLKUICurvedColoringLabel *)self invalidateCachedSize];
}

- (void)layoutSubviews
{
  [(CLKUICurvedColoringLabel *)self bounds];
  curvedLabel = self->_curvedLabel;

  [(CLKUICurvedLabel *)curvedLabel setFrame:?];
}

- (void)setFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  [(CLKUICurvedColoringLabel *)self frame];
  if ((CLKRectEqualsRect() & 1) == 0)
  {
    v8.receiver = self;
    v8.super_class = CLKUICurvedColoringLabel;
    [(CLKUICurvedColoringLabel *)&v8 setFrame:x, y, width, height];
    [(CLKUICurvedColoringLabel *)self setNeedsLayout];
    [(CLKUICurvedColoringLabel *)self layoutBelowIfNeeded];
  }
}

- (void)setBounds:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  [(CLKUICurvedColoringLabel *)self bounds];
  if ((CLKRectEqualsRect() & 1) == 0)
  {
    v8.receiver = self;
    v8.super_class = CLKUICurvedColoringLabel;
    [(CLKUIColoringLabel *)&v8 setBounds:x, y, width, height];
    [(CLKUICurvedColoringLabel *)self setNeedsLayout];
    [(CLKUICurvedColoringLabel *)self layoutBelowIfNeeded];
  }
}

- (void)sizeToFit
{
  [(CLKUICurvedColoringLabel *)self transform];
  if (CGAffineTransformIsIdentity(&v19))
  {
    [(CLKUICurvedColoringLabel *)self frame];
    v4 = v3;
    v6 = v5;
    [(CLKUICurvedColoringLabel *)self sizeThatFits:v7, v8];
    [(CLKUICurvedColoringLabel *)self setFrame:v4, v6, v9, v10];
  }

  else
  {
    [(CLKUICurvedColoringLabel *)self bounds];
    v12 = v11;
    v14 = v13;
    [(CLKUICurvedColoringLabel *)self sizeThatFits:v15, v16];
    [(CLKUICurvedColoringLabel *)self setBounds:v12, v14, v17, v18];
  }

  [(CLKUICurvedColoringLabel *)self setNeedsLayout];
  [(CLKUICurvedColoringLabel *)self layoutBelowIfNeeded];
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  [(CLKUICurvedLabel *)self->_curvedLabel sizeThatFits:a3.width, a3.height];
  result.height = v4;
  result.width = v3;
  return result;
}

- (CGRect)textBoundingRect
{
  [(CLKUICurvedLabel *)self->_curvedLabel textBoundingRect];
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (void)_setUpSnapshot
{
  v10 = 0u;
  v11 = 0u;
  v9 = 0u;
  [(CLKUICurvedColoringLabel *)self transform];
  v3 = *(MEMORY[0x1E695EFD0] + 16);
  v6 = *MEMORY[0x1E695EFD0];
  v7 = v3;
  v8 = *(MEMORY[0x1E695EFD0] + 32);
  [(CLKUICurvedColoringLabel *)self setTransform:&v6];
  v4 = [(CLKUICurvedColoringLabel *)self snapshotViewAfterScreenUpdates:0];
  snapshot = self->super._snapshot;
  self->super._snapshot = v4;

  v6 = v9;
  v7 = v10;
  v8 = v11;
  [(CLKUICurvedColoringLabel *)self setTransform:&v6];
  v6 = v9;
  v7 = v10;
  v8 = v11;
  [(UIView *)self->super._snapshot setTransform:&v6];
}

- (CGSize)imageViewOverrideSize
{
  [(CLKUICurvedLabel *)self->_curvedLabel imageViewOverrideSize];
  result.height = v3;
  result.width = v2;
  return result;
}

- (CGAffineTransform)transformForImage
{
  result = self->_curvedLabel;
  if (result)
  {
    return [(CGAffineTransform *)result transformForImage];
  }

  *&retstr->c = 0u;
  *&retstr->tx = 0u;
  *&retstr->a = 0u;
  return result;
}

- (CGPoint)centerForImage
{
  [(CLKUICurvedLabel *)self->_curvedLabel centerForImage];
  result.y = v3;
  result.x = v2;
  return result;
}

@end