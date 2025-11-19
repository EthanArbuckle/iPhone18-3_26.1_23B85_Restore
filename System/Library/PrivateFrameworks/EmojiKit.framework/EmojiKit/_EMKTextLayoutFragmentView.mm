@interface _EMKTextLayoutFragmentView
- (_EMKTextLayoutFragmentView)initWithFrame:(CGRect)a3 layoutFragment:(id)a4;
- (void)___drawAnimatingEmojiGlyph:(unsigned __int16)a3 textPosition:(CGPoint)a4 glyphPosition:(CGPoint)a5 font:(__CTFont *)a6 attributes:(id)a7;
- (void)__drawAnimatingEmojiRun:(__CTRun *)a3 textPosition:(CGPoint)a4 animatingGlyphCountBefore:(int64_t)a5 drawnRunGlyphCount:(int64_t *)a6;
- (void)_drawTextLineFragment:(id)a3 animatingGlyphCountBefore:(int64_t)a4 drawnGlyphCount:(int64_t *)a5;
- (void)drawRect:(CGRect)a3;
- (void)startAnimationWithRippler:(id)a3 animatingGlyphCount:(unint64_t)a4 animatingGlyphCountBefore:(unint64_t)a5;
@end

@implementation _EMKTextLayoutFragmentView

- (_EMKTextLayoutFragmentView)initWithFrame:(CGRect)a3 layoutFragment:(id)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v10 = a4;
  v16.receiver = self;
  v16.super_class = _EMKTextLayoutFragmentView;
  v11 = [(_EMKTextLayoutFragmentView *)&v16 initWithFrame:x, y, width, height];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_layoutFragment, a4);
    rippler = v12->_rippler;
    v12->_rippler = 0;

    v12->_timeIndex = 0;
    v12->_animatingGlyphCount = 0;
    v12->_animatingGlyphCountBeforeFragment = 0;
    [(_EMKTextLayoutFragmentView *)v12 setContentMode:3];
    [(_EMKTextLayoutFragmentView *)v12 setClipsToBounds:1];
    v14 = [(_EMKTextLayoutFragmentView *)v12 layer];
    [v14 setMasksToBounds:1];
  }

  return v12;
}

- (void)startAnimationWithRippler:(id)a3 animatingGlyphCount:(unint64_t)a4 animatingGlyphCountBefore:(unint64_t)a5
{
  self->_timeIndex = 0;
  self->_animatingGlyphCountBeforeFragment = a5;
  v7 = a3;
  [(_EMKTextLayoutFragmentView *)self setAnimatingGlyphCount:a4];
  [(_EMKTextLayoutFragmentView *)self setRippler:v7];
}

- (void)drawRect:(CGRect)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v20.receiver = self;
  v20.super_class = _EMKTextLayoutFragmentView;
  [(_EMKTextLayoutFragmentView *)&v20 drawRect:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  layoutFragment = self->_layoutFragment;
  if (layoutFragment)
  {
    v5 = [(NSTextLayoutFragment *)layoutFragment textLayoutManager];
    v6 = v5;
    if (v5 && self->_rippler)
    {
      v7 = [v5 documentRange];
      [v6 ensureLayoutForRange:v7];
      animatingGlyphCountBeforeFragment = self->_animatingGlyphCountBeforeFragment;
      v16 = 0u;
      v17 = 0u;
      v18 = 0u;
      v19 = 0u;
      v9 = [(NSTextLayoutFragment *)self->_layoutFragment textLineFragments];
      v10 = [v9 countByEnumeratingWithState:&v16 objects:v21 count:16];
      if (v10)
      {
        v11 = v10;
        v12 = *v17;
        do
        {
          v13 = 0;
          do
          {
            if (*v17 != v12)
            {
              objc_enumerationMutation(v9);
            }

            v14 = *(*(&v16 + 1) + 8 * v13);
            v15 = 0;
            [(_EMKTextLayoutFragmentView *)self _drawTextLineFragment:v14 animatingGlyphCountBefore:animatingGlyphCountBeforeFragment drawnGlyphCount:&v15];
            animatingGlyphCountBeforeFragment += v15;
            ++v13;
          }

          while (v11 != v13);
          v11 = [v9 countByEnumeratingWithState:&v16 objects:v21 count:16];
        }

        while (v11);
      }
    }
  }
}

- (void)_drawTextLineFragment:(id)a3 animatingGlyphCountBefore:(int64_t)a4 drawnGlyphCount:(int64_t *)a5
{
  v35 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = CTLineGetGlyphRuns([v8 lineRef]);
  [v8 glyphOrigin];
  v11 = v10;
  v13 = v12;
  [v8 typographicBounds];
  x = v36.origin.x;
  y = v36.origin.y;
  width = v36.size.width;
  height = v36.size.height;
  MinY = CGRectGetMinY(v36);
  v37.origin.x = x;
  v37.origin.y = y;
  v37.size.width = width;
  v37.size.height = height;
  MinX = CGRectGetMinX(v37);
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v20 = v9;
  v21 = [v20 countByEnumeratingWithState:&v30 objects:v34 count:16];
  if (v21)
  {
    v22 = v21;
    v23 = 0;
    v24 = v11 + MinX;
    v25 = v13 + MinY;
    v26 = *v31;
    do
    {
      for (i = 0; i != v22; ++i)
      {
        if (*v31 != v26)
        {
          objc_enumerationMutation(v20);
        }

        v28 = *(*(&v30 + 1) + 8 * i);
        v29 = 0;
        [(_EMKTextLayoutFragmentView *)self __drawAnimatingEmojiRun:v28 textPosition:v23 + a4 animatingGlyphCountBefore:&v29 drawnRunGlyphCount:v24, v25];
        v23 += v29;
      }

      v22 = [v20 countByEnumeratingWithState:&v30 objects:v34 count:16];
    }

    while (v22);
  }

  else
  {
    v23 = 0;
  }

  *a5 = v23;
}

- (void)__drawAnimatingEmojiRun:(__CTRun *)a3 textPosition:(CGPoint)a4 animatingGlyphCountBefore:(int64_t)a5 drawnRunGlyphCount:(int64_t *)a6
{
  y = a4.y;
  x = a4.x;
  if (_EMKShouldDrawCTRun(a3))
  {
    Attributes = CTRunGetAttributes(a3);
    Value = CFDictionaryGetValue(Attributes, *MEMORY[0x277CC4838]);
    GlyphCount = CTRunGetGlyphCount(a3);
    v15 = malloc_type_calloc(GlyphCount, 0x10uLL, 0x1000040451B5BE8uLL);
    v16 = malloc_type_calloc(GlyphCount, 2uLL, 0x1000040BDFB0063uLL);
    v26.location = 0;
    v26.length = 0;
    v23 = v16;
    CTRunGetGlyphs(a3, v26, v16);
    v27.location = 0;
    v27.length = 0;
    v24 = v15;
    CTRunGetPositions(a3, v27, v15);
    *a6 = GlyphCount;
    if (GlyphCount >= 1)
    {
      v17 = v23;
      p_y = &v24->y;
      do
      {
        v19 = *v17++;
        v20 = *(p_y - 1);
        v21 = *p_y;
        v22 = [[_EMKGlyphRenderingAttributes alloc] initWithValuesFromRippler:self->_rippler timeIndex:self->_timeIndex glyphIndex:a5 numberOfGlyphs:self->_animatingGlyphCount];
        [(_EMKTextLayoutFragmentView *)self ___drawAnimatingEmojiGlyph:v19 textPosition:Value glyphPosition:v22 font:x attributes:y, v20, v21];

        ++a5;
        p_y += 2;
        --GlyphCount;
      }

      while (GlyphCount);
    }

    free(v23);

    free(v24);
  }

  else
  {
    *a6 = 0;
  }
}

- (void)___drawAnimatingEmojiGlyph:(unsigned __int16)a3 textPosition:(CGPoint)a4 glyphPosition:(CGPoint)a5 font:(__CTFont *)a6 attributes:(id)a7
{
  y = a5.y;
  x = a5.x;
  v10 = a4.y;
  v11 = a4.x;
  glyphs = a3;
  v13 = a7;
  CurrentContext = UIGraphicsGetCurrentContext();
  CGContextSaveGState(CurrentContext);
  Size = CTFontGetSize(a6);
  [v13 scale];
  v17 = Size * v16;
  CopyWithAttributes = CTFontCreateCopyWithAttributes(a6, v17, 0, 0);
  v19 = [v13 color];
  ColorSpace = CGColorGetColorSpace([v19 CGColor]);
  CGContextSetStrokeColorSpace(CurrentContext, ColorSpace);
  CGContextSetFillColorSpace(CurrentContext, ColorSpace);
  CGContextSetStrokeColorWithColor(CurrentContext, [v19 CGColor]);
  CGContextSetFillColorWithColor(CurrentContext, [v19 CGColor]);
  v21 = [v13 shadowIfNeededForFontPointSize:v17];

  [v21 applyToGraphicsContext_emk:CurrentContext];
  memset(&v25, 0, sizeof(v25));
  CGContextGetTextMatrix(&v25, CurrentContext);
  v23 = v25;
  memset(&v24, 0, sizeof(v24));
  CGAffineTransformScale(&v24, &v23, 1.0, -1.0);
  v23 = v24;
  CGContextSetTextMatrix(CurrentContext, &v23);
  CGContextSetTextPosition(CurrentContext, v11, v10);
  v22.y = y;
  [(_EMKTextLayoutFragmentView *)self bounds];
  v22.x = CGRectGetMinX(v27) + x;
  CTFontDrawGlyphs(CopyWithAttributes, &glyphs, &v22, 1uLL, CurrentContext);
  CGContextRestoreGState(CurrentContext);
  CFRelease(CopyWithAttributes);
  v23 = v25;
  CGContextSetTextMatrix(CurrentContext, &v23);
}

@end