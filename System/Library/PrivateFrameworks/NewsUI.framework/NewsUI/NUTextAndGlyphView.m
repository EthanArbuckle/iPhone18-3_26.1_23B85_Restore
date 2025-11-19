@interface NUTextAndGlyphView
- (NUTextAndGlyphView)initWithFrame:(CGRect)a3;
- (void)layoutSubviews;
- (void)nu_crossFadeViewSetValue:(id)a3;
- (void)setTextAndGlyph:(id)a3;
@end

@implementation NUTextAndGlyphView

- (void)layoutSubviews
{
  v33.receiver = self;
  v33.super_class = NUTextAndGlyphView;
  [(NUTextAndGlyphView *)&v33 layoutSubviews];
  v3 = [(NUTextAndGlyphView *)self label];
  [v3 frame];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v12 = [(NUTextAndGlyphView *)self imageView];
  [v12 frame];
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
  v29 = [(NUTextAndGlyphView *)self label];
  [v29 setFrame:{v23, v25, v9, v11}];

  v30 = [(NUTextAndGlyphView *)self imageView];
  [v30 setFrame:{v26, v28, v18, v20}];
}

- (void)nu_crossFadeViewSetValue:(id)a3
{
  v5 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v5;
  }

  else
  {
    v4 = 0;
  }

  [(NUTextAndGlyphView *)self setTextAndGlyph:v4];
}

- (NUTextAndGlyphView)initWithFrame:(CGRect)a3
{
  v14.receiver = self;
  v14.super_class = NUTextAndGlyphView;
  v3 = [(NUTextAndGlyphView *)&v14 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
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

- (void)setTextAndGlyph:(id)a3
{
  v15 = a3;
  v4 = [v15 attributedText];

  if (v4)
  {
    v5 = [v15 attributedText];
    v6 = [(NUTextAndGlyphView *)self label];
    [v6 setAttributedText:v5];
  }

  else
  {
    v5 = [v15 text];
    v6 = [(NUTextAndGlyphView *)self label];
    [v6 setText:v5];
  }

  v7 = [v15 glyph];
  v8 = [(NUTextAndGlyphView *)self imageView];
  [v8 setImage:v7];

  v9 = [v15 attributedText];
  v10 = [v9 attribute:*MEMORY[0x277D740C0] atIndex:0 effectiveRange:0];
  v11 = v10;
  if (!v10)
  {
    v11 = [MEMORY[0x277D75348] labelColor];
  }

  v12 = [(NUTextAndGlyphView *)self imageView];
  [v12 setTintColor:v11];

  if (!v10)
  {
  }

  -[NUTextAndGlyphView setAlignment:](self, "setAlignment:", [v15 alignment]);
  v13 = [(NUTextAndGlyphView *)self label];
  [v13 sizeToFit];

  v14 = [(NUTextAndGlyphView *)self imageView];
  [v14 sizeToFit];

  [(NUTextAndGlyphView *)self setNeedsLayout];
}

@end