@interface CLKUICurvedColoringLabel
- (CGAffineTransform)transformForImage;
- (CGPoint)centerForImage;
- (CGRect)textBoundingRect;
- (CGSize)imageViewOverrideSize;
- (CGSize)sizeThatFits:(CGSize)fits;
- (CLKUICurvedColoringLabel)initWithFrame:(CGRect)frame;
- (void)_setUpSnapshot;
- (void)invalidateCachedSize;
- (void)layoutSubviews;
- (void)setBaselineOffset:(double)offset;
- (void)setBounds:(CGRect)bounds;
- (void)setCircleRadius:(double)radius;
- (void)setFont:(id)font;
- (void)setFrame:(CGRect)frame;
- (void)setImagePadding:(double)padding;
- (void)setImageView:(id)view;
- (void)setImageView:(id)view placement:(unint64_t)placement padding:(double)padding;
- (void)setMaxAngularWidth:(double)width;
- (void)setPath:(id)path;
- (void)setTextProviderFont:(id)font;
- (void)setTracking:(double)tracking;
- (void)setUsesTextProviderTintColoring:(BOOL)coloring;
- (void)sizeToFit;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation CLKUICurvedColoringLabel

- (CLKUICurvedColoringLabel)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v11.receiver = self;
  v11.super_class = CLKUICurvedColoringLabel;
  v7 = [(CLKUIColoringLabel *)&v11 initWithFrame:?];
  if (v7)
  {
    height = [[CLKUICurvedLabel alloc] initWithFrame:x, y, width, height];
    curvedLabel = v7->_curvedLabel;
    v7->_curvedLabel = height;

    [(CLKUICurvedColoringLabel *)v7 addSubview:v7->_curvedLabel];
    [(CLKUIColoringLabel *)v7 setUsesTextProviderSize:0];
  }

  return v7;
}

- (void)setCircleRadius:(double)radius
{
  [(CLKUICurvedLabel *)self->_curvedLabel setCircleRadius:radius];
  [(CLKUICurvedLabel *)self->_curvedLabel maxLinearTextWidth];
  v4.receiver = self;
  v4.super_class = CLKUICurvedColoringLabel;
  [(CLKUIColoringLabel *)&v4 setMaxWidth:?];
}

- (void)setPath:(id)path
{
  objc_storeStrong(&self->_path, path);
  pathCopy = path;
  [(CLKUICurvedLabel *)self->_curvedLabel setPath:pathCopy];
  [(CLKUICurvedLabel *)self->_curvedLabel maxLinearTextWidth];
  v6.receiver = self;
  v6.super_class = CLKUICurvedColoringLabel;
  [(CLKUIColoringLabel *)&v6 setMaxWidth:?];
}

- (void)setUsesTextProviderTintColoring:(BOOL)coloring
{
  coloringCopy = coloring;
  if ([(CLKUICurvedLabel *)self->_curvedLabel attributedTextProvidesColor]!= coloring)
  {
    [(CLKUICurvedLabel *)self->_curvedLabel setAttributedTextProvidesColor:coloringCopy];
    v5.receiver = self;
    v5.super_class = CLKUICurvedColoringLabel;
    [(CLKUIColoringLabel *)&v5 setUsesTextProviderTintColoring:coloringCopy];
  }
}

- (void)setMaxAngularWidth:(double)width
{
  [(CLKUICurvedLabel *)self->_curvedLabel setMaxAngularWidth:width];
  [(CLKUICurvedLabel *)self->_curvedLabel maxLinearTextWidth];
  v4.receiver = self;
  v4.super_class = CLKUICurvedColoringLabel;
  [(CLKUIColoringLabel *)&v4 setMaxWidth:?];
}

- (void)setFont:(id)font
{
  curvedLabel = self->_curvedLabel;
  fontCopy = font;
  [(CLKUICurvedLabel *)curvedLabel setFont:fontCopy];
  v6.receiver = self;
  v6.super_class = CLKUICurvedColoringLabel;
  [(CLKUIColoringLabel *)&v6 setFont:fontCopy];
}

- (void)setTextProviderFont:(id)font
{
  [(CLKUICurvedColoringLabel *)self setFont:font];

  [(CLKUIColoringLabel *)self _requeryTextProviderAndNotify:0];
}

- (void)setTracking:(double)tracking
{
  [(CLKUICurvedLabel *)self->_curvedLabel setTracking:?];
  v5.receiver = self;
  v5.super_class = CLKUICurvedColoringLabel;
  [(CLKUIColoringLabel *)&v5 setTracking:tracking];
}

- (void)setBaselineOffset:(double)offset
{
  [(CLKUICurvedLabel *)self->_curvedLabel setBaselineOffset:?];
  if (self->_baselineOffset != offset)
  {
    self->_baselineOffset = offset;

    [(CLKUIColoringLabel *)self _requeryTextProviderAndNotify:0];
  }
}

- (void)setImagePadding:(double)padding
{
  [(CLKUICurvedLabel *)self->_curvedLabel setImagePadding:padding];
  [(CLKUICurvedLabel *)self->_curvedLabel maxLinearTextWidth];
  v4.receiver = self;
  v4.super_class = CLKUICurvedColoringLabel;
  [(CLKUIColoringLabel *)&v4 setMaxWidth:?];
}

- (void)setImageView:(id)view
{
  [(CLKUICurvedLabel *)self->_curvedLabel setImageView:view];
  [(CLKUICurvedLabel *)self->_curvedLabel maxLinearTextWidth];
  v4.receiver = self;
  v4.super_class = CLKUICurvedColoringLabel;
  [(CLKUIColoringLabel *)&v4 setMaxWidth:?];
}

- (void)setImageView:(id)view placement:(unint64_t)placement padding:(double)padding
{
  [(CLKUICurvedLabel *)self->_curvedLabel setImageView:view placement:placement padding:padding];
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

- (void)traitCollectionDidChange:(id)change
{
  v4.receiver = self;
  v4.super_class = CLKUICurvedColoringLabel;
  [(CLKUIColoringLabel *)&v4 traitCollectionDidChange:change];
  [(CLKUICurvedColoringLabel *)self invalidateCachedSize];
}

- (void)layoutSubviews
{
  [(CLKUICurvedColoringLabel *)self bounds];
  curvedLabel = self->_curvedLabel;

  [(CLKUICurvedLabel *)curvedLabel setFrame:?];
}

- (void)setFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
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

- (void)setBounds:(CGRect)bounds
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
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

- (CGSize)sizeThatFits:(CGSize)fits
{
  [(CLKUICurvedLabel *)self->_curvedLabel sizeThatFits:fits.width, fits.height];
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