@interface CAMModeDialItem
- (CAMModeDialItem)initWithCoder:(id)coder;
- (CAMModeDialItem)initWithFrame:(CGRect)frame;
- (CGColor)_textColor;
- (CGPath)_pathForAttributedString:(__CFAttributedString *)string;
- (CGSize)_textFrameSize;
- (__CFAttributedString)_attributedTitle;
- (void)_commonCAMModeDialItemInitialization;
- (void)_invalidateScalableTextPathFromAttributedTitle;
- (void)_updateScalableTextPathFromAttributedTitle;
- (void)configure:(id)configure;
- (void)layoutSubviews;
- (void)setFont:(id)font;
- (void)setSelected:(BOOL)selected animated:(BOOL)animated;
- (void)setShouldShadowTitleText:(BOOL)text;
- (void)setTitle:(id)title;
- (void)tintColorDidChange;
@end

@implementation CAMModeDialItem

- (void)_commonCAMModeDialItemInitialization
{
  v3 = [CAMFont cameraModeDialFontForContentSize:*MEMORY[0x1E69DDC70]];
  font = self->_font;
  self->_font = v3;

  layer = [MEMORY[0x1E69794A0] layer];
  scalableTextLayer = self->__scalableTextLayer;
  self->__scalableTextLayer = layer;

  layer2 = [(CAMModeDialItem *)self layer];
  [layer2 addSublayer:self->__scalableTextLayer];
  [(CAMModeDialItem *)self _invalidateScalableTextPathFromAttributedTitle];
}

- (void)_updateScalableTextPathFromAttributedTitle
{
  if ([(CAMModeDialItem *)self needsUpdateScalableTextPath])
  {
    [(CAMModeDialItem *)self setNeedsUpdateScalableTextPath:0];
    v3 = [(CAMModeDialItem *)self _pathForAttributedString:[(CAMModeDialItem *)self _attributedTitle]];
    _scalableTextLayer = [(CAMModeDialItem *)self _scalableTextLayer];
    shouldShadowTitleText = [(CAMModeDialItem *)self shouldShadowTitleText];
    [MEMORY[0x1E6979518] begin];
    [MEMORY[0x1E6979518] setDisableActions:1];
    [_scalableTextLayer setPath:v3];
    if (shouldShadowTitleText)
    {
      [_scalableTextLayer setShadowPath:v3];
      blackColor = [MEMORY[0x1E69DC888] blackColor];
      [_scalableTextLayer setShadowColor:{objc_msgSend(blackColor, "CGColor")}];

      LODWORD(v6) = 1051931443;
      [_scalableTextLayer setShadowOpacity:v6];
      [_scalableTextLayer setShadowOffset:{0.0, 0.0}];
      [_scalableTextLayer setShadowRadius:2.0];
    }

    [MEMORY[0x1E6979518] commit];
  }
}

- (__CFAttributedString)_attributedTitle
{
  v24 = *MEMORY[0x1E69E9840];
  font = [(CAMModeDialItem *)self font];
  v4 = [CAMFont cameraKerningForFont:font];
  v14 = 2;
  [font leading];
  v13 = v5;
  settings.spec = kCTParagraphStyleSpecifierAlignment;
  settings.valueSize = 1;
  settings.value = &v14;
  v18 = 14;
  v19 = 8;
  v20 = &v13;
  v21 = 15;
  v22 = 8;
  v23 = &v13;
  v6 = CTParagraphStyleCreate(&settings, 3uLL);
  v7 = *MEMORY[0x1E6965A18];
  keys[0] = *MEMORY[0x1E6965658];
  keys[1] = v7;
  keys[2] = *MEMORY[0x1E6965A30];
  values[0] = font;
  values[1] = v4;
  values[2] = v6;
  v8 = *MEMORY[0x1E695E480];
  v9 = CFDictionaryCreate(*MEMORY[0x1E695E480], keys, values, 3, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v10 = CFAttributedStringCreate(v8, [(CAMModeDialItem *)self title], v9);
  CFRelease(v6);
  CFRelease(v9);
  v11 = CFAutorelease(v10);

  return v11;
}

- (void)tintColorDidChange
{
  [MEMORY[0x1E6979518] begin];
  [MEMORY[0x1E6979518] setDisableActions:1];
  _textColor = [(CAMModeDialItem *)self _textColor];
  _scalableTextLayer = [(CAMModeDialItem *)self _scalableTextLayer];
  [_scalableTextLayer setFillColor:_textColor];

  v5 = MEMORY[0x1E6979518];

  [v5 commit];
}

- (CGColor)_textColor
{
  if ([(CAMModeDialItem *)self isSelected])
  {
    [(CAMModeDialItem *)self tintColor];
  }

  else
  {
    [MEMORY[0x1E69DC888] whiteColor];
  }
  v3 = ;
  traitCollection = [(CAMModeDialItem *)self traitCollection];
  v5 = [v3 resolvedColorWithTraitCollection:traitCollection];

  cGColor = [v5 CGColor];
  return cGColor;
}

- (CGSize)_textFrameSize
{
  width = self->__textFrameSize.width;
  height = self->__textFrameSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = CAMModeDialItem;
  [(CAMModeDialItem *)&v3 layoutSubviews];
  [(CAMModeDialItem *)self bounds];
  [(CAShapeLayer *)self->__scalableTextLayer setFrame:?];
}

- (CAMModeDialItem)initWithFrame:(CGRect)frame
{
  v7.receiver = self;
  v7.super_class = CAMModeDialItem;
  v3 = [(CAMModeDialItem *)&v7 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(CAMModeDialItem *)v3 _commonCAMModeDialItemInitialization];
    v5 = v4;
  }

  return v4;
}

- (CAMModeDialItem)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = CAMModeDialItem;
  v3 = [(CAMModeDialItem *)&v7 initWithCoder:coder];
  v4 = v3;
  if (v3)
  {
    [(CAMModeDialItem *)v3 _commonCAMModeDialItemInitialization];
    v5 = v4;
  }

  return v4;
}

- (void)configure:(id)configure
{
  (*(configure + 2))(configure, self);
  if ([(CAMModeDialItem *)self needsUpdateScalableTextPath])
  {

    [(CAMModeDialItem *)self _updateScalableTextPathFromAttributedTitle];
  }
}

- (void)setTitle:(id)title
{
  titleCopy = title;
  if (![(NSString *)self->_title isEqualToString:?])
  {
    objc_storeStrong(&self->_title, title);
    [(CAMModeDialItem *)self _invalidateScalableTextPathFromAttributedTitle];
  }
}

- (void)setFont:(id)font
{
  fontCopy = font;
  if (self->_font != fontCopy)
  {
    v6 = fontCopy;
    objc_storeStrong(&self->_font, font);
    [(CAMModeDialItem *)self _invalidateScalableTextPathFromAttributedTitle];
    fontCopy = v6;
  }
}

- (void)setShouldShadowTitleText:(BOOL)text
{
  if (self->_shouldShadowTitleText != text)
  {
    self->_shouldShadowTitleText = text;
    [(CAMModeDialItem *)self _invalidateScalableTextPathFromAttributedTitle];
  }
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
  if (self->_selected != selected)
  {
    animatedCopy = animated;
    self->_selected = selected;
    _scalableTextLayer = [(CAMModeDialItem *)self _scalableTextLayer];
    _textColor = [(CAMModeDialItem *)self _textColor];
    fillColor = [_scalableTextLayer fillColor];
    [_scalableTextLayer setFillColor:_textColor];
    if (animatedCopy)
    {
      v9 = [MEMORY[0x1E6979318] animationWithKeyPath:@"fillColor"];
      [v9 setFromValue:fillColor];
      UIAnimationDragCoefficient();
      [v9 setDuration:v10 * 0.3331];
      v11 = [MEMORY[0x1E69793D0] functionWithName:*MEMORY[0x1E6979EB8]];
      [v9 setTimingFunction:v11];

      [v9 setFillMode:*MEMORY[0x1E69797E0]];
      [_scalableTextLayer addAnimation:v9 forKey:@"colorAnimation"];
    }
  }
}

- (void)_invalidateScalableTextPathFromAttributedTitle
{
  if (![(CAMModeDialItem *)self needsUpdateScalableTextPath])
  {
    [(CAMModeDialItem *)self setNeedsUpdateScalableTextPath:1];

    [(CAMModeDialItem *)self setNeedsLayout];
  }
}

- (CGPath)_pathForAttributedString:(__CFAttributedString *)string
{
  path1 = CGPathCreateMutable();
  v5 = CTFramesetterCreateWithAttributedString(string);
  fitRange.location = 0;
  fitRange.length = 0;
  v49.length = CFAttributedStringGetLength(string);
  v53.width = 1.79769313e308;
  v49.location = 0;
  v53.height = 1.79769313e308;
  CTFramesetterSuggestFrameSizeWithConstraints(v5, v49, 0, v53, &fitRange);
  UICeilToViewScale();
  v7 = v6;
  UICeilToViewScale();
  v9 = v8;
  selfCopy = self;
  [(CAMModeDialItem *)self _setTextFrameSize:v7, v8];
  v54.origin.x = 0.0;
  v54.origin.y = 0.0;
  v54.size.width = v7;
  v54.size.height = v9;
  path = CGPathCreateWithRect(v54, 0);
  cf = v5;
  Frame = CTFramesetterCreateFrame(v5, fitRange, path, 0);
  Lines = CTFrameGetLines(Frame);
  Count = CFArrayGetCount(Lines);
  v13 = malloc_type_malloc(16 * Count, 0x1000040451B5BE8uLL);
  v34 = Frame;
  v50.location = 0;
  v50.length = 0;
  CTFrameGetLineOrigins(Frame, v50, v13);
  if (CFArrayGetCount(Lines) >= 1)
  {
    v14 = 0;
    theArray = Lines;
    key = *MEMORY[0x1E6965658];
    do
    {
      ValueAtIndex = CFArrayGetValueAtIndex(Lines, v14);
      if (ValueAtIndex)
      {
        GlyphRuns = CTLineGetGlyphRuns(ValueAtIndex);
        if (GlyphRuns)
        {
          v17 = GlyphRuns;
          if (CFArrayGetCount(GlyphRuns) >= 1)
          {
            v18 = 0;
            v39 = v17;
            do
            {
              v40 = v18;
              v19 = CFArrayGetValueAtIndex(v17, v18);
              Attributes = CTRunGetAttributes(v19);
              Value = CFDictionaryGetValue(Attributes, key);
              GlyphCount = CTRunGetGlyphCount(v19);
              v41 = malloc_type_calloc(GlyphCount, 0x10uLL, 0x1000040451B5BE8uLL);
              CTRunGetStretchFactors();
              if (GlyphCount >= 1)
              {
                v23 = 0;
                v24 = v41 + 1;
                do
                {
                  buffer = 0;
                  v51.location = v23;
                  v51.length = 1;
                  CTRunGetGlyphs(v19, v51, &buffer);
                  v25 = *(v24 - 1);
                  v26 = *v24;
                  memset(&matrix, 0, sizeof(matrix));
                  CGAffineTransformMakeScale(&matrix, v25, v26);
                  v44.a = 0.0;
                  v44.b = 0.0;
                  v52.location = v23;
                  v52.length = 1;
                  CTRunGetPositions(v19, v52, &v44);
                  v27 = CTFontCreatePathForGlyph(Value, buffer, &matrix);
                  *&v44.a = vaddq_f64(v13[v14], *&v44.a);
                  v28 = [CAMCaptureCapabilities capabilities:v34];
                  sfCameraFontSupported = [v28 sfCameraFontSupported];

                  if (sfCameraFontSupported)
                  {
                    b = v44.b;
                  }

                  else
                  {
                    v31 = CAMPixelWidthForView(selfCopy);
                    b = v31 + v44.b;
                    v44.b = v31 + v44.b;
                  }

                  memset(&m, 0, sizeof(m));
                  CGAffineTransformMakeTranslation(&m, v44.a, b);
                  CGPathAddPath(path1, &m, v27);
                  CGPathRelease(v27);
                  ++v23;
                  v24 += 2;
                }

                while (GlyphCount != v23);
              }

              free(v41);
              v17 = v39;
              v18 = v40 + 1;
            }

            while (v40 + 1 < CFArrayGetCount(v39));
          }
        }
      }

      ++v14;
      Lines = theArray;
    }

    while (v14 < CFArrayGetCount(theArray));
  }

  if (v13)
  {
    free(v13);
  }

  memset(&matrix, 0, sizeof(matrix));
  CGAffineTransformMakeScale(&matrix, 1.0, -1.0);
  v44 = matrix;
  CGAffineTransformTranslate(&m, &v44, 0.0, -v9);
  matrix = m;
  v32 = MEMORY[0x1A58F8DB0](path1, &matrix);
  CGPathRelease(path1);
  CGPathRelease(path);
  CFRelease(cf);
  CFRelease(v34);
  return CFAutorelease(v32);
}

@end