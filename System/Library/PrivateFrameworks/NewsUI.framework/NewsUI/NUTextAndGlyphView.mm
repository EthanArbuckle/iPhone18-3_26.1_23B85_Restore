@interface NUTextAndGlyphView
- (NUTextAndGlyphView)initWithFrame:(CGRect)frame;
- (void)layoutSubviews;
- (void)nu_crossFadeViewSetValue:(id)value;
- (void)setTextAndGlyph:(id)glyph;
@end

@implementation NUTextAndGlyphView

- (void)layoutSubviews
{
  v33.receiver = self;
  v33.super_class = NUTextAndGlyphView;
  [(NUTextAndGlyphView *)&v33 layoutSubviews];
  label = [(NUTextAndGlyphView *)self label];
  [label frame];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  imageView = [(NUTextAndGlyphView *)self imageView];
  [imageView frame];
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;

  v34.origin.x = v5;
  rect = v7;
  v34.origin.y = v7;
  v34.size.width = v9;
  v34.size.height = v11;
  Width = CGRectGetWidth(v34);
  v35.origin.x = v14;
  v32 = v16;
  v35.origin.y = v16;
  v35.size.width = v18;
  v35.size.height = v20;
  v22 = CGRectGetWidth(v35);
  v23 = 0.0;
  if ([(NUTextAndGlyphView *)self alignment]!= 1)
  {
    [(NUTextAndGlyphView *)self bounds];
    v23 = CGRectGetMidX(v36) + (Width + v22 + 4.0) * -0.5;
  }

  [(NUTextAndGlyphView *)self bounds];
  MidY = CGRectGetMidY(v37);
  v38.origin.x = v23;
  v38.origin.y = rect;
  v38.size.width = v9;
  v38.size.height = v11;
  v25 = MidY - CGRectGetHeight(v38) * 0.5;
  v39.origin.x = v23;
  v39.origin.y = v25;
  v39.size.width = v9;
  v39.size.height = v11;
  v26 = CGRectGetMaxX(v39) + 4.0;
  [(NUTextAndGlyphView *)self bounds];
  v27 = CGRectGetMidY(v40);
  v41.origin.x = v26;
  v41.origin.y = v32;
  v41.size.width = v18;
  v41.size.height = v20;
  v28 = v27 - CGRectGetHeight(v41) * 0.5;
  label2 = [(NUTextAndGlyphView *)self label];
  [label2 setFrame:{v23, v25, v9, v11}];

  imageView2 = [(NUTextAndGlyphView *)self imageView];
  [imageView2 setFrame:{v26, v28, v18, v20}];
}

- (void)nu_crossFadeViewSetValue:(id)value
{
  valueCopy = value;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = valueCopy;
  }

  else
  {
    v4 = 0;
  }

  [(NUTextAndGlyphView *)self setTextAndGlyph:v4];
}

- (NUTextAndGlyphView)initWithFrame:(CGRect)frame
{
  v14.receiver = self;
  v14.super_class = NUTextAndGlyphView;
  v3 = [(NUTextAndGlyphView *)&v14 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = objc_alloc(MEMORY[0x277D756B8]);
    v5 = *MEMORY[0x277CBF3A0];
    v6 = *(MEMORY[0x277CBF3A0] + 8);
    v7 = *(MEMORY[0x277CBF3A0] + 16);
    v8 = *(MEMORY[0x277CBF3A0] + 24);
    v9 = [v4 initWithFrame:{*MEMORY[0x277CBF3A0], v6, v7, v8}];
    label = v3->_label;
    v3->_label = v9;

    [(NUTextAndGlyphView *)v3 addSubview:v3->_label];
    v11 = [objc_alloc(MEMORY[0x277D755E8]) initWithFrame:{v5, v6, v7, v8}];
    imageView = v3->_imageView;
    v3->_imageView = v11;

    [(NUTextAndGlyphView *)v3 addSubview:v3->_imageView];
  }

  return v3;
}

- (void)setTextAndGlyph:(id)glyph
{
  glyphCopy = glyph;
  attributedText = [glyphCopy attributedText];

  if (attributedText)
  {
    attributedText2 = [glyphCopy attributedText];
    label = [(NUTextAndGlyphView *)self label];
    [label setAttributedText:attributedText2];
  }

  else
  {
    attributedText2 = [glyphCopy text];
    label = [(NUTextAndGlyphView *)self label];
    [label setText:attributedText2];
  }

  glyph = [glyphCopy glyph];
  imageView = [(NUTextAndGlyphView *)self imageView];
  [imageView setImage:glyph];

  attributedText3 = [glyphCopy attributedText];
  v10 = [attributedText3 attribute:*MEMORY[0x277D740C0] atIndex:0 effectiveRange:0];
  labelColor = v10;
  if (!v10)
  {
    labelColor = [MEMORY[0x277D75348] labelColor];
  }

  imageView2 = [(NUTextAndGlyphView *)self imageView];
  [imageView2 setTintColor:labelColor];

  if (!v10)
  {
  }

  -[NUTextAndGlyphView setAlignment:](self, "setAlignment:", [glyphCopy alignment]);
  label2 = [(NUTextAndGlyphView *)self label];
  [label2 sizeToFit];

  imageView3 = [(NUTextAndGlyphView *)self imageView];
  [imageView3 sizeToFit];

  [(NUTextAndGlyphView *)self setNeedsLayout];
}

@end