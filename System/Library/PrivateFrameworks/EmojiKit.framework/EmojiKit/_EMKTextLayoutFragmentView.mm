@interface _EMKTextLayoutFragmentView
- (_EMKTextLayoutFragmentView)initWithFrame:(CGRect)frame layoutFragment:(id)fragment;
- (void)___drawAnimatingEmojiGlyph:(unsigned __int16)glyph textPosition:(CGPoint)position glyphPosition:(CGPoint)glyphPosition font:(__CTFont *)font attributes:(id)attributes;
- (void)__drawAnimatingEmojiRun:(__CTRun *)run textPosition:(CGPoint)position animatingGlyphCountBefore:(int64_t)before drawnRunGlyphCount:(int64_t *)count;
- (void)_drawTextLineFragment:(id)fragment animatingGlyphCountBefore:(int64_t)before drawnGlyphCount:(int64_t *)count;
- (void)drawRect:(CGRect)rect;
- (void)startAnimationWithRippler:(id)rippler animatingGlyphCount:(unint64_t)count animatingGlyphCountBefore:(unint64_t)before;
@end

@implementation _EMKTextLayoutFragmentView

- (_EMKTextLayoutFragmentView)initWithFrame:(CGRect)frame layoutFragment:(id)fragment
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  fragmentCopy = fragment;
  v16.receiver = self;
  v16.super_class = _EMKTextLayoutFragmentView;
  height = [(_EMKTextLayoutFragmentView *)&v16 initWithFrame:x, y, width, height];
  v12 = height;
  if (height)
  {
    objc_storeStrong(&height->_layoutFragment, fragment);
    rippler = v12->_rippler;
    v12->_rippler = 0;

    v12->_timeIndex = 0;
    v12->_animatingGlyphCount = 0;
    v12->_animatingGlyphCountBeforeFragment = 0;
    [(_EMKTextLayoutFragmentView *)v12 setContentMode:3];
    [(_EMKTextLayoutFragmentView *)v12 setClipsToBounds:1];
    layer = [(_EMKTextLayoutFragmentView *)v12 layer];
    [layer setMasksToBounds:1];
  }

  return v12;
}

- (void)startAnimationWithRippler:(id)rippler animatingGlyphCount:(unint64_t)count animatingGlyphCountBefore:(unint64_t)before
{
  self->_timeIndex = 0;
  self->_animatingGlyphCountBeforeFragment = before;
  ripplerCopy = rippler;
  [(_EMKTextLayoutFragmentView *)self setAnimatingGlyphCount:count];
  [(_EMKTextLayoutFragmentView *)self setRippler:ripplerCopy];
}

- (void)drawRect:(CGRect)rect
{
  v22 = *MEMORY[0x277D85DE8];
  v20.receiver = self;
  v20.super_class = _EMKTextLayoutFragmentView;
  [(_EMKTextLayoutFragmentView *)&v20 drawRect:rect.origin.x, rect.origin.y, rect.size.width, rect.size.height];
  layoutFragment = self->_layoutFragment;
  if (layoutFragment)
  {
    textLayoutManager = [(NSTextLayoutFragment *)layoutFragment textLayoutManager];
    v6 = textLayoutManager;
    if (textLayoutManager && self->_rippler)
    {
      documentRange = [textLayoutManager documentRange];
      [v6 ensureLayoutForRange:documentRange];
      animatingGlyphCountBeforeFragment = self->_animatingGlyphCountBeforeFragment;
      v16 = 0u;
      v17 = 0u;
      v18 = 0u;
      v19 = 0u;
      textLineFragments = [(NSTextLayoutFragment *)self->_layoutFragment textLineFragments];
      v10 = [textLineFragments countByEnumeratingWithState:&v16 objects:v21 count:16];
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
              objc_enumerationMutation(textLineFragments);
            }

            v14 = *(*(&v16 + 1) + 8 * v13);
            v15 = 0;
            [(_EMKTextLayoutFragmentView *)self _drawTextLineFragment:v14 animatingGlyphCountBefore:animatingGlyphCountBeforeFragment drawnGlyphCount:&v15];
            animatingGlyphCountBeforeFragment += v15;
            ++v13;
          }

          while (v11 != v13);
          v11 = [textLineFragments countByEnumeratingWithState:&v16 objects:v21 count:16];
        }

        while (v11);
      }
    }
  }
}

- (void)_drawTextLineFragment:(id)fragment animatingGlyphCountBefore:(int64_t)before drawnGlyphCount:(int64_t *)count
{
  v35 = *MEMORY[0x277D85DE8];
  fragmentCopy = fragment;
  v9 = CTLineGetGlyphRuns([fragmentCopy lineRef]);
  [fragmentCopy glyphOrigin];
  v11 = v10;
  v13 = v12;
  [fragmentCopy typographicBounds];
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
        [(_EMKTextLayoutFragmentView *)self __drawAnimatingEmojiRun:v28 textPosition:v23 + before animatingGlyphCountBefore:&v29 drawnRunGlyphCount:v24, v25];
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

  *count = v23;
}

- (void)__drawAnimatingEmojiRun:(__CTRun *)run textPosition:(CGPoint)position animatingGlyphCountBefore:(int64_t)before drawnRunGlyphCount:(int64_t *)count
{
  y = position.y;
  x = position.x;
  if (_EMKShouldDrawCTRun(run))
  {
    Attributes = CTRunGetAttributes(run);
    Value = CFDictionaryGetValue(Attributes, *MEMORY[0x277CC4838]);
    GlyphCount = CTRunGetGlyphCount(run);
    v15 = malloc_type_calloc(GlyphCount, 0x10uLL, 0x1000040451B5BE8uLL);
    v16 = malloc_type_calloc(GlyphCount, 2uLL, 0x1000040BDFB0063uLL);
    v26.location = 0;
    v26.length = 0;
    v23 = v16;
    CTRunGetGlyphs(run, v26, v16);
    v27.location = 0;
    v27.length = 0;
    v24 = v15;
    CTRunGetPositions(run, v27, v15);
    *count = GlyphCount;
    if (GlyphCount >= 1)
    {
      v17 = v23;
      p_y = &v24->y;
      do
      {
        v19 = *v17++;
        v20 = *(p_y - 1);
        v21 = *p_y;
        v22 = [[_EMKGlyphRenderingAttributes alloc] initWithValuesFromRippler:self->_rippler timeIndex:self->_timeIndex glyphIndex:before numberOfGlyphs:self->_animatingGlyphCount];
        [(_EMKTextLayoutFragmentView *)self ___drawAnimatingEmojiGlyph:v19 textPosition:Value glyphPosition:v22 font:x attributes:y, v20, v21];

        ++before;
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
    *count = 0;
  }
}

- (void)___drawAnimatingEmojiGlyph:(unsigned __int16)glyph textPosition:(CGPoint)position glyphPosition:(CGPoint)glyphPosition font:(__CTFont *)font attributes:(id)attributes
{
  y = glyphPosition.y;
  x = glyphPosition.x;
  v10 = position.y;
  v11 = position.x;
  glyphs = glyph;
  attributesCopy = attributes;
  CurrentContext = UIGraphicsGetCurrentContext();
  CGContextSaveGState(CurrentContext);
  Size = CTFontGetSize(font);
  [attributesCopy scale];
  v17 = Size * v16;
  CopyWithAttributes = CTFontCreateCopyWithAttributes(font, v17, 0, 0);
  color = [attributesCopy color];
  ColorSpace = CGColorGetColorSpace([color CGColor]);
  CGContextSetStrokeColorSpace(CurrentContext, ColorSpace);
  CGContextSetFillColorSpace(CurrentContext, ColorSpace);
  CGContextSetStrokeColorWithColor(CurrentContext, [color CGColor]);
  CGContextSetFillColorWithColor(CurrentContext, [color CGColor]);
  v21 = [attributesCopy shadowIfNeededForFontPointSize:v17];

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