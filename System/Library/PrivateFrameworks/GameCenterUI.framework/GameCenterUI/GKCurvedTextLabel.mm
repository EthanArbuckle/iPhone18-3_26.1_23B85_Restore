@interface GKCurvedTextLabel
- (CGPoint)_offsetOfBoundingRect:(CGRect)rect inRect:(CGRect)inRect;
- (CGRect)_glyphsBoundingRect;
- (CGRect)textBoundingRect;
- (CGSize)sizeThatFits:(CGSize)fits;
- (GKCurvedTextLabel)initWithFrame:(CGRect)frame;
- (NSDictionary)textAttributes;
- (_NSRange)_drawableCharacterRange:(_NSRange *)range;
- (__CTLine)_newLineFromDrawableTextStorage;
- (double)_distance;
- (void)_enumerateTransformsForDrawableCharacters:(id)characters;
- (void)_updateMaxSize;
- (void)_updateTextColor;
- (void)drawTextInRect:(CGRect)rect;
- (void)invalidateCachedSize;
- (void)setAttributedText:(id)text;
- (void)setCenterAngle:(double)angle;
- (void)setCircleRadius:(double)radius;
- (void)setFont:(id)font;
- (void)setInterior:(BOOL)interior;
- (void)setMaxAngularWidth:(double)width;
- (void)setText:(id)text;
- (void)setTextColor:(id)color;
@end

@implementation GKCurvedTextLabel

- (GKCurvedTextLabel)initWithFrame:(CGRect)frame
{
  v13.receiver = self;
  v13.super_class = GKCurvedTextLabel;
  v3 = [(GKCurvedTextLabel *)&v13 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = objc_alloc_init(MEMORY[0x277D74278]);
    textContainer = v3->_textContainer;
    v3->_textContainer = v4;

    [(NSTextContainer *)v3->_textContainer setMaximumNumberOfLines:1];
    [(NSTextContainer *)v3->_textContainer setLineFragmentPadding:0.0];
    [(NSTextContainer *)v3->_textContainer setLineBreakMode:4];
    v6 = objc_alloc_init(MEMORY[0x277D74238]);
    layoutManager = v3->_layoutManager;
    v3->_layoutManager = v6;

    [(NSLayoutManager *)v3->_layoutManager addTextContainer:v3->_textContainer];
    v8 = objc_alloc_init(MEMORY[0x277D742D8]);
    textStorage = v3->_textStorage;
    v3->_textStorage = v8;

    [(NSTextStorage *)v3->_textStorage addLayoutManager:v3->_layoutManager];
    labelColor = [MEMORY[0x277D75348] labelColor];
    textColor = v3->_textColor;
    v3->_textColor = labelColor;
  }

  return v3;
}

- (NSDictionary)textAttributes
{
  attributedText = [(GKCurvedTextLabel *)self attributedText];
  v3 = [attributedText length];
  if (v3)
  {
    v4 = [attributedText attributesAtIndex:0 longestEffectiveRange:0 inRange:{0, v3}];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setInterior:(BOOL)interior
{
  if (self->_interior != interior)
  {
    self->_interior = interior;
    [(GKCurvedTextLabel *)self invalidateCachedSize];
    [(GKCurvedTextLabel *)self setNeedsLayout];

    [(GKCurvedTextLabel *)self setNeedsDisplay];
  }
}

- (void)setCircleRadius:(double)radius
{
  if (self->_circleRadius != radius)
  {
    self->_circleRadius = radius;
    [(GKCurvedTextLabel *)self invalidateCachedSize];
    [(GKCurvedTextLabel *)self _updateMaxSize];
    [(GKCurvedTextLabel *)self setNeedsLayout];

    [(GKCurvedTextLabel *)self setNeedsDisplay];
  }
}

- (void)setCenterAngle:(double)angle
{
  if (self->_centerAngle != angle)
  {
    self->_centerAngle = angle;
    [(GKCurvedTextLabel *)self invalidateCachedSize];
    [(GKCurvedTextLabel *)self setNeedsLayout];

    [(GKCurvedTextLabel *)self setNeedsDisplay];
  }
}

- (void)setMaxAngularWidth:(double)width
{
  widthCopy = fmod(width, 6.28318531);
  if (width <= 6.28318531)
  {
    widthCopy = width;
  }

  if (self->_maxAngularWidth != widthCopy)
  {
    self->_maxAngularWidth = widthCopy;

    [(GKCurvedTextLabel *)self _updateMaxSize];
  }
}

- (void)_updateMaxSize
{
  maxAngularWidth = self->_maxAngularWidth;
  if (maxAngularWidth == 0.0 || (circleRadius = self->_circleRadius, circleRadius == 0.0))
  {
    v5 = 1.79769313e308;
  }

  else
  {
    if (maxAngularWidth > 3.14159265)
    {
      maxAngularWidth = 6.28318531 - maxAngularWidth;
    }

    v5 = maxAngularWidth * circleRadius;
  }

  [(NSTextContainer *)self->_textContainer size];
  if (v6 != v5 || self->_textWidth != v5)
  {
    [(NSTextContainer *)self->_textContainer setSize:v5, 1.79769313e308];
    self->_textWidth = v5;
    [(GKCurvedTextLabel *)self invalidateCachedSize];
    [(GKCurvedTextLabel *)self setNeedsLayout];

    [(GKCurvedTextLabel *)self setNeedsDisplay];
  }
}

- (void)setTextColor:(id)color
{
  colorCopy = color;
  textColor = self->_textColor;
  v7 = colorCopy;
  if (!colorCopy || !textColor)
  {
    if (textColor == colorCopy)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  if (([(UIColor *)colorCopy isEqual:?]& 1) == 0)
  {
LABEL_6:
    objc_storeStrong(&self->_textColor, color);
    [(GKCurvedTextLabel *)self _updateTextColor];
  }

LABEL_7:
}

- (void)_updateTextColor
{
  v3 = [(NSTextStorage *)self->_textStorage length];
  if (v3)
  {
    [(NSTextStorage *)self->_textStorage addAttribute:*MEMORY[0x277D740C0] value:self->_textColor range:0, v3];

    [(GKCurvedTextLabel *)self setNeedsDisplay];
  }
}

- (void)setAttributedText:(id)text
{
  textCopy = text;
  if (([textCopy isEqualToAttributedString:self->_textStorage] & 1) == 0)
  {
    if (!textCopy)
    {
      goto LABEL_11;
    }

    v5 = [textCopy length];
    v6 = 0;
    v7 = 0;
    while (1)
    {
      string = [textCopy string];
      newlineCharacterSet = [MEMORY[0x277CCA900] newlineCharacterSet];
      v10 = [string rangeOfCharacterFromSet:newlineCharacterSet options:0 range:{v6, v5}];
      v12 = v11;

      if (v10 == 0x7FFFFFFFFFFFFFFFLL)
      {
        break;
      }

      if (v7)
      {

        v7 = 0;
      }

      else
      {
        v7 = [textCopy mutableCopy];
      }

      mutableString = [v7 mutableString];
      [mutableString replaceCharactersInRange:v10 withString:{v12, @" "}];

      v6 = v10 + 1;
      v5 = [textCopy length] - v6;
    }

    if (v7)
    {
      v14 = v7;
      v15 = v14;
    }

    else
    {
LABEL_11:
      v16 = [textCopy mutableCopy];
      v17 = v16;
      if (v16)
      {
        v18 = v16;
      }

      else
      {
        v18 = [objc_alloc(MEMORY[0x277CCAB48]) initWithString:&stru_28612D290];
      }

      v15 = v18;

      v14 = 0;
    }

    v19 = *MEMORY[0x277D74118];
    if (_CurvedParagraphStyle_onceToken != -1)
    {
      [GKCurvedTextLabel setAttributedText:];
    }

    v20 = _CurvedParagraphStyle_paragraphStyle;
    [v15 addAttribute:v19 value:v20 range:{0, objc_msgSend(v15, "length")}];

    [(NSTextStorage *)self->_textStorage setAttributedString:v15];
    v25 = 0;
    v26 = &v25;
    v27 = 0x2020000000;
    v28 = 0;
    textStorage = self->_textStorage;
    v22 = [(NSTextStorage *)textStorage length];
    v23 = *MEMORY[0x277D740A8];
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __39__GKCurvedTextLabel_setAttributedText___block_invoke;
    v24[3] = &unk_27966BF68;
    v24[4] = &v25;
    [(NSTextStorage *)textStorage enumerateAttribute:v23 inRange:0 options:v22 usingBlock:0, v24];
    self->_hasMonospacedNumbers = *(v26 + 24);
    [(GKCurvedTextLabel *)self _updateTextColor];
    [(GKCurvedTextLabel *)self invalidateCachedSize];
    [(GKCurvedTextLabel *)self setNeedsDisplay];
    [(GKCurvedTextLabel *)self setNeedsLayout];
    _Block_object_dispose(&v25, 8);
  }
}

void __39__GKCurvedTextLabel_setAttributedText___block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  v25 = *MEMORY[0x277D85DE8];
  v5 = [a2 fontDescriptor];
  v6 = [v5 objectForKey:*MEMORY[0x277D74338]];

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v7 = v6;
  v8 = [v7 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v21;
    v11 = *MEMORY[0x277D74398];
    v12 = *MEMORY[0x277D74388];
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v21 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v14 = *(*(&v20 + 1) + 8 * i);
        v15 = [v14 objectForKeyedSubscript:v11];
        if ([v15 isEqualToNumber:&unk_286189000])
        {
          v16 = [v14 objectForKeyedSubscript:v12];
          v17 = [v16 isEqualToNumber:&unk_286189018];

          if (v17)
          {
            *(*(*(a1 + 32) + 8) + 24) = 1;
            *a5 = 1;
            goto LABEL_12;
          }
        }

        else
        {
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v9);
  }

LABEL_12:
}

- (void)setText:(id)text
{
  v11[1] = *MEMORY[0x277D85DE8];
  if (text)
  {
    v4 = MEMORY[0x277CCA898];
    textCopy = text;
    v6 = [v4 alloc];
    font = self->_font;
    v10 = *MEMORY[0x277D740A8];
    v11[0] = font;
    v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:&v10 count:1];
    v9 = [v6 initWithString:textCopy attributes:v8];
  }

  else
  {
    v9 = 0;
  }

  [(GKCurvedTextLabel *)self setAttributedText:v9];
}

- (void)setFont:(id)font
{
  fontCopy = font;
  font = self->_font;
  v8 = fontCopy;
  if (!fontCopy || !font)
  {
    if (font == fontCopy)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  if (([(UIFont *)fontCopy isEqual:?]& 1) == 0)
  {
LABEL_6:
    objc_storeStrong(&self->_font, font);
    text = [(GKCurvedTextLabel *)self text];
    [(GKCurvedTextLabel *)self setText:text];

    [(GKCurvedTextLabel *)self invalidateCachedSize];
  }

LABEL_7:
}

- (void)invalidateCachedSize
{
  self->_cachedSizeIsValid = 0;
  self->_cachedSize = *MEMORY[0x277CBF3A8];
  v2 = *MEMORY[0x277CBF3A0];
  v3 = *(MEMORY[0x277CBF3A0] + 16);
  self->_cachedBounds.origin = *MEMORY[0x277CBF3A0];
  self->_cachedBounds.size = v3;
  self->_cachedGlyphsBoundingRect.origin = v2;
  self->_cachedGlyphsBoundingRect.size = v3;
  *&v2 = self->_centerAngle;
  *&self->_cachedLeadingAngle = v2;
  *&self->_cachedTrailingAngle = v2;
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  p_cachedSize = &self->_cachedSize;
  if (self->_cachedSizeIsValid)
  {
    width = p_cachedSize->width;
    height = self->_cachedSize.height;
  }

  else
  {
    [(GKCurvedTextLabel *)self _glyphsBoundingRect:fits.width];
    width = v7;
    height = v8;
    p_cachedSize->width = v7;
    p_cachedSize->height = v8;
    self->_cachedSizeIsValid = 1;
  }

  result.height = height;
  result.width = width;
  return result;
}

- (void)drawTextInRect:(CGRect)rect
{
  [(GKCurvedTextLabel *)self _glyphsBoundingRect];
  [GKCurvedTextLabel _offsetOfBoundingRect:"_offsetOfBoundingRect:inRect:" inRect:?];
  v5 = v4;
  v7 = v6;
  _newLineFromDrawableTextStorage = [(GKCurvedTextLabel *)self _newLineFromDrawableTextStorage];
  ImageBounds = CTLineGetImageBounds(_newLineFromDrawableTextStorage, 0);
  x = ImageBounds.origin.x;
  y = ImageBounds.origin.y;
  CFRelease(_newLineFromDrawableTextStorage);
  v14[0] = 0;
  v14[1] = v14;
  v14[2] = 0x3010000000;
  v14[3] = &unk_24E43C07A;
  v15 = x;
  v16 = y;
  if (self->_hasMonospacedNumbers)
  {
    v15 = 0.0;
  }

  CurrentContext = UIGraphicsGetCurrentContext();
  CGAffineTransformMakeTranslation(&transform, v5, v7);
  CGContextConcatCTM(CurrentContext, &transform);
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __36__GKCurvedTextLabel_drawTextInRect___block_invoke;
  v12[3] = &unk_27966BF90;
  v12[4] = self;
  v12[5] = v14;
  v12[6] = CurrentContext;
  [(GKCurvedTextLabel *)self _enumerateTransformsForDrawableCharacters:v12];
  _Block_object_dispose(v14, 8);
}

void __36__GKCurvedTextLabel_drawTextInRect___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, double a5, double a6)
{
  CGContextSaveGState(*(a1 + 48));
  v12 = *(a1 + 48);
  v13 = a4[1];
  *&v14.a = *a4;
  *&v14.c = v13;
  *&v14.tx = a4[2];
  CGContextConcatCTM(v12, &v14);
  if (a2 != 0x7FFFFFFFFFFFFFFFLL)
  {
    [*(*(a1 + 32) + 816) drawGlyphsForGlyphRange:a2 atPoint:{a3, -a5 - *(*(*(a1 + 40) + 8) + 32), -a6}];
  }

  CGContextRestoreGState(*(a1 + 48));
}

- (CGRect)textBoundingRect
{
  [(GKCurvedTextLabel *)self _glyphsBoundingRect];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [(GKCurvedTextLabel *)self bounds];
  [(GKCurvedTextLabel *)self _offsetOfBoundingRect:v4 inRect:v6, v8, v10, v11, v12, v13, v14];
  v16 = v4 + v15;
  v18 = v6 + v17;
  v19 = v8;
  v20 = v10;
  result.size.height = v20;
  result.size.width = v19;
  result.origin.y = v18;
  result.origin.x = v16;
  return result;
}

- (_NSRange)_drawableCharacterRange:(_NSRange *)range
{
  v5 = [(NSLayoutManager *)self->_layoutManager glyphRangeForTextContainer:self->_textContainer];
  v7 = v6;
  v8 = [(NSLayoutManager *)self->_layoutManager truncatedGlyphRangeInLineFragmentForGlyphAtIndex:v5];
  if (v8 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v7 = v8 + 1;
    if (range)
    {
      range->location = [(NSLayoutManager *)self->_layoutManager characterRangeForGlyphRange:v8 actualGlyphRange:v9, 0];
      range->length = v10;
    }
  }

  layoutManager = self->_layoutManager;

  v12 = [(NSLayoutManager *)layoutManager characterRangeForGlyphRange:v5 actualGlyphRange:v7, 0];
  result.length = v13;
  result.location = v12;
  return result;
}

- (__CTLine)_newLineFromDrawableTextStorage
{
  v13 = xmmword_24E367930;
  v4 = [(GKCurvedTextLabel *)self _drawableCharacterRange:&v13];
  textStorage = self->_textStorage;
  if (v13 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v6 = v3;
    v7 = [(NSTextStorage *)textStorage length];
    v8 = self->_textStorage;
    if (v4 || v6 != v7)
    {
      v9 = [(NSTextStorage *)v8 mutableCopy];
      [(NSTextStorage *)v9 deleteCharactersInRange:v6, [(NSTextStorage *)self->_textStorage length]- v6];
    }

    else
    {
      v9 = v8;
    }
  }

  else
  {
    v9 = [(NSTextStorage *)textStorage mutableCopy];
    v10 = [(NSTextStorage *)self->_textStorage length];
    *(&v13 + 1) = v10 - v13;
    [NSTextStorage replaceCharactersInRange:v9 withString:"replaceCharactersInRange:withString:"];
  }

  v11 = CTLineCreateWithAttributedString(v9);

  return v11;
}

- (CGPoint)_offsetOfBoundingRect:(CGRect)rect inRect:(CGRect)inRect
{
  rect = inRect.size.height;
  width = rect.size.width;
  v4 = inRect.size.width;
  y = inRect.origin.y;
  x = inRect.origin.x;
  height = rect.size.height;
  v8 = rect.size.width;
  v9 = rect.origin.y;
  v10 = rect.origin.x;
  v11 = CGRectGetWidth(inRect);
  v19.origin.x = v10;
  v19.origin.y = v9;
  v19.size.width = v8;
  v19.size.height = height;
  v12 = v11 - CGRectGetMaxX(v19);
  v20.origin.x = x;
  v20.origin.y = y;
  v20.size.width = v4;
  v20.size.height = rect;
  v13 = CGRectGetHeight(v20);
  v21.origin.x = v10;
  v21.origin.y = v9;
  v21.size.width = width;
  v21.size.height = height;
  v14 = v13 - CGRectGetMaxY(v21);
  v15 = v12;
  result.y = v14;
  result.x = v15;
  return result;
}

- (CGRect)_glyphsBoundingRect
{
  p_cachedBounds = &self->_cachedBounds;
  [(GKCurvedTextLabel *)self bounds];
  v40.origin.x = v4;
  v40.origin.y = v5;
  v40.size.width = v6;
  v40.size.height = v7;
  if (CGRectEqualToRect(*p_cachedBounds, v40) && !CGRectIsEmpty(self->_cachedGlyphsBoundingRect))
  {
    x = self->_cachedGlyphsBoundingRect.origin.x;
    y = self->_cachedGlyphsBoundingRect.origin.y;
    width = self->_cachedGlyphsBoundingRect.size.width;
    height = self->_cachedGlyphsBoundingRect.size.height;
  }

  else
  {
    v32 = 0;
    v33 = &v32;
    v34 = 0x4010000000;
    v35 = &unk_24E43C07A;
    v8 = *(MEMORY[0x277CBF398] + 16);
    v36 = *MEMORY[0x277CBF398];
    v37 = v8;
    v28 = 0;
    v29 = &v28;
    v30 = 0x2020000000;
    v31 = 0x10000000000000;
    v24 = 0;
    v25 = &v24;
    v26 = 0x2020000000;
    v27 = 0x10000000000000;
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __40__GKCurvedTextLabel__glyphsBoundingRect__block_invoke;
    v23[3] = &unk_27966BFB8;
    v23[4] = &v32;
    v23[5] = &v28;
    v23[6] = &v24;
    [(GKCurvedTextLabel *)self _enumerateTransformsForDrawableCharacters:v23];
    v38 = CGRectInset(v33[1], 0.0, -1.0);
    v33[1] = v38;
    [(GKCurvedTextLabel *)self bounds];
    p_cachedBounds->origin.x = v9;
    p_cachedBounds->origin.y = v10;
    p_cachedBounds->size.width = v11;
    p_cachedBounds->size.height = v12;
    p_x = &v33->origin.x;
    size = v33[1].size;
    self->_cachedGlyphsBoundingRect.origin = v33[1].origin;
    self->_cachedGlyphsBoundingRect.size = size;
    *&self->_cachedLeadingAngle = v29[3];
    *&self->_cachedTrailingAngle = v25[3];
    x = p_x[4];
    y = p_x[5];
    width = p_x[6];
    height = p_x[7];
    _Block_object_dispose(&v24, 8);
    _Block_object_dispose(&v28, 8);
    _Block_object_dispose(&v32, 8);
  }

  v19 = x;
  v20 = y;
  v21 = width;
  v22 = height;
  result.size.height = v22;
  result.size.width = v21;
  result.origin.y = v20;
  result.origin.x = v19;
  return result;
}

void __40__GKCurvedTextLabel__glyphsBoundingRect__block_invoke(void *a1, double a2, double a3, double a4, double a5, double a6, double a7, double a8, uint64_t a9, uint64_t a10, _OWORD *a11)
{
  v12 = a5;
  v15 = a11[1];
  *&v24.a = *a11;
  *&v24.c = v15;
  *&v24.tx = a11[2];
  *&v15 = a7;
  v25 = CGRectApplyAffineTransform(*(&v12 - 1), &v24);
  *(*(a1[4] + 8) + 32) = CGRectUnion(v25, *(*(a1[4] + 8) + 32));
  v17 = *(a1[5] + 8);
  v18 = *(v17 + 24);
  if (v18 >= a8)
  {
    v19 = a8;
  }

  else
  {
    v19 = *(v17 + 24);
  }

  if (v18 == 2.22507386e-308)
  {
    v20 = a8;
  }

  else
  {
    v20 = v19;
  }

  *(v17 + 24) = v20;
  v21 = *(a1[6] + 8);
  v22 = *(v21 + 24);
  if (v22 < a8 || v22 == 2.22507386e-308)
  {
    v22 = a8;
  }

  *(v21 + 24) = v22;
}

- (double)_distance
{
  result = self->_circleRadius;
  if (!self->_interior)
  {
    return -result;
  }

  return result;
}

- (void)_enumerateTransformsForDrawableCharacters:(id)characters
{
  charactersCopy = characters;
  [(GKCurvedTextLabel *)self bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  [(GKCurvedTextLabel *)self _distance];
  v13 = v12;
  _newLineFromDrawableTextStorage = [(GKCurvedTextLabel *)self _newLineFromDrawableTextStorage];
  ImageBounds = CTLineGetImageBounds(_newLineFromDrawableTextStorage, 0);
  width = ImageBounds.size.width;
  x = ImageBounds.origin.x;
  y = ImageBounds.origin.y;
  height = ImageBounds.size.height;
  MinX = 0.0;
  TypographicBounds = 0.0;
  if (self->_hasMonospacedNumbers)
  {
    TypographicBounds = CTLineGetTypographicBounds(_newLineFromDrawableTextStorage, 0, 0, 0);
  }

  CFRelease(_newLineFromDrawableTextStorage);
  v61 = y;
  if (self->_hasMonospacedNumbers)
  {
    v18 = TypographicBounds;
  }

  else
  {
    v98.size.width = width;
    v98.origin.x = x;
    v98.origin.y = y;
    v98.size.height = height;
    v19 = CGRectGetWidth(v98);
    v20 = y;
    v18 = v19;
    if (!self->_hasMonospacedNumbers)
    {
      v22 = width;
      v21 = x;
      v23 = height;
      MinX = CGRectGetMinX(*(&v20 - 1));
    }
  }

  v60 = height;
  v96[0] = xmmword_24E367930;
  v24 = [(GKCurvedTextLabel *)self _drawableCharacterRange:v96];
  v26 = v25;
  if (self->_hasMonospacedNumbers)
  {
    v27 = [(NSTextStorage *)self->_textStorage attribute:*MEMORY[0x277D740A8] atIndex:0 effectiveRange:0];
    v99.size.width = width;
    v99.origin.x = x;
    v99.size.height = height;
    v99.origin.y = v61;
    rect = CGRectGetMinX(v99);
    [v27 xHeight];
    *&v70 = v13;
    v29 = v28;
    [(NSLayoutManager *)self->_layoutManager locationForGlyphAtIndex:0];
    v65 = v11;
    v67 = v9;
    v31 = v30;
    v100.origin.y = 0.0;
    v100.origin.x = v32 + 0.0;
    v33 = v100.origin.x;
    v100.size.width = rect;
    v100.size.height = v29;
    v101.origin.y = v31 - CGRectGetMaxY(v100);
    v57 = v101.origin.y;
    v101.origin.x = v33;
    v101.size.width = rect;
    v101.size.height = v29;
    v95 = 0.0;
    v93 = 0u;
    v94 = 0u;
    v92 = 0u;
    MidX = CGRectGetMidX(v101);
    v34 = v31;
    v11 = v65;
    _TransformForLayoutLocation(&v92, MidX, v34, v18, *&v70, self->_centerAngle, v5, v7, v67, v65);
    v102.origin.x = v33;
    v9 = v67;
    v102.origin.y = v57;
    v102.size.height = v29;
    v102.size.width = rect;
    v13 = *&v70;
    v103 = CGRectOffset(v102, -MidX, -v34);
    v35 = charactersCopy[2];
    v89 = v92;
    v90 = v93;
    v91 = v94;
    v35(charactersCopy, 0x7FFFFFFFFFFFFFFFLL, 0, &v89, MidX, v34, v103.origin.x, v103.origin.y, v103.size.width, v103.size.height, v95);
  }

  v71 = v24 + v26;
  while (v24 < v71)
  {
    v92 = xmmword_24E367930;
    v37 = [(NSLayoutManager *)self->_layoutManager glyphRangeForCharacterRange:v24 actualCharacterRange:1, &v92];
    v38 = *&v96[0];
    v39 = v92;
    if (*&v96[0] == v92)
    {
      v40 = 1;
    }

    else
    {
      v40 = v36;
    }

    v41 = objc_opt_new();
    v42 = v40;
    v43 = v37;
    if (v37 < v40 + v37)
    {
      do
      {
        if (([(NSLayoutManager *)self->_layoutManager propertyForGlyphAtIndex:v43]& 1) == 0)
        {
          [v41 addIndex:v43];
        }

        ++v43;
        --v42;
      }

      while (v42);
    }

    v74[0] = MEMORY[0x277D85DD0];
    v74[1] = 3221225472;
    v74[2] = __63__GKCurvedTextLabel__enumerateTransformsForDrawableCharacters___block_invoke;
    v74[3] = &unk_27966BFE0;
    v74[4] = self;
    v76 = 0;
    v77 = MinX;
    v78 = v92;
    v79 = v40;
    v88 = v38 == v39;
    v80 = v18;
    v81 = v13;
    v82 = v5;
    v83 = v7;
    v84 = v9;
    v85 = v11;
    if (v38 == v39)
    {
      v44 = v96 + 8;
    }

    else
    {
      v44 = &v92 + 8;
    }

    v75 = charactersCopy;
    v86 = v37;
    v87 = v40;
    [v41 enumerateRangesUsingBlock:v74];
    v45 = *v44;
    if (*v44 <= 1uLL)
    {
      v45 = 1;
    }

    v24 += v45;
  }

  if (self->_hasMonospacedNumbers)
  {
    v46 = v71 - 1;
    v47 = [(NSTextStorage *)self->_textStorage attribute:*MEMORY[0x277D740A8] atIndex:v71 - 1 effectiveRange:0];
    v104.origin.x = x;
    v104.origin.y = v61;
    v72 = v5;
    v104.size.width = width;
    v69 = v7;
    v104.size.height = v60;
    v68 = TypographicBounds - CGRectGetMaxX(v104);
    v105.origin.x = x;
    v105.origin.y = v61;
    v105.size.width = width;
    v105.size.height = v60;
    MaxX = CGRectGetMaxX(v105);
    [v47 xHeight];
    v50 = v49;
    [(NSLayoutManager *)self->_layoutManager locationForGlyphAtIndex:[(NSLayoutManager *)self->_layoutManager glyphIndexForCharacterAtIndex:v46]];
    v52 = v51;
    v106.origin.y = 0.0;
    v106.origin.x = MaxX + 0.0;
    v106.size.width = v68;
    v106.size.height = v50;
    v107.origin.y = v52 - CGRectGetMaxY(v106);
    v66 = v107.origin.y;
    v107.origin.x = MaxX + 0.0;
    v107.size.width = v68;
    v107.size.height = v50;
    v53 = CGRectGetMidX(v107);
    v95 = 0.0;
    v93 = 0u;
    v94 = 0u;
    v92 = 0u;
    v56 = v9;
    v54 = v53;
    _TransformForLayoutLocation(&v92, v53, v52, v18, v13, self->_centerAngle, v72, v69, v56, v11);
    v108.origin.x = MaxX + 0.0;
    v108.origin.y = v66;
    v108.size.width = v68;
    v108.size.height = v50;
    v109 = CGRectOffset(v108, -v54, -v52);
    v55 = charactersCopy[2];
    v89 = v92;
    v90 = v93;
    v91 = v94;
    v55(charactersCopy, 0x7FFFFFFFFFFFFFFFLL, 0, &v89, v54, v52, v109.origin.x, v109.origin.y, v109.size.width, v109.size.height, v95);
  }
}

void __63__GKCurvedTextLabel__enumerateTransformsForDrawableCharacters___block_invoke(uint64_t a1, uint64_t a2, CFIndex a3)
{
  v33 = *MEMORY[0x277D85DE8];
  [*(*(a1 + 32) + 816) locationForGlyphAtIndex:a2];
  v7 = v6;
  v9 = v8;
  v10 = a2 + 1;
  if (a2 + 1 < (a2 + a3))
  {
    v11 = a3 - 1;
    do
    {
      [*(*(a1 + 32) + 816) locationForGlyphAtIndex:v10];
      if (v12 < v7)
      {
        v9 = v13;
        v7 = v12;
      }

      ++v10;
      --v11;
    }

    while (v11);
  }

  v14 = *(a1 + 48);
  v15 = *(a1 + 56);
  v16 = [*(*(a1 + 32) + 808) attribute:*MEMORY[0x277D740A8] atIndex:*(a1 + 64) effectiveRange:0];
  MEMORY[0x28223BE20](v16);
  v18 = (v28 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  [*(*(a1 + 32) + 816) getGlyphsInRange:a2 glyphs:a3 properties:v18 characterIndexes:0 bidiLevels:{0, 0}];
  BoundingRectsForGlyphs = CTFontGetBoundingRectsForGlyphs(v16, kCTFontOrientationDefault, v18, 0, a3);
  x = BoundingRectsForGlyphs.origin.x;
  y = BoundingRectsForGlyphs.origin.y;
  width = BoundingRectsForGlyphs.size.width;
  if (*(a1 + 152))
  {
    [(__CTFont *)v16 xHeight];
    height = v22;
  }

  else
  {
    height = BoundingRectsForGlyphs.size.height;
  }

  v24 = v7 + v14 - v15 + x;
  v35.origin.x = v24;
  v35.origin.y = y;
  v35.size.width = width;
  v35.size.height = height;
  v25 = v9 - CGRectGetMaxY(v35);
  v36.origin.x = v24;
  v36.origin.y = v25;
  v36.size.width = width;
  v36.size.height = height;
  MidX = CGRectGetMidX(v36);
  v32 = 0.0;
  v30 = 0u;
  v31 = 0u;
  v29 = 0u;
  _TransformForLayoutLocation(&v29, MidX, v9, *(a1 + 88), *(a1 + 96), *(*(a1 + 32) + 976), *(a1 + 104), *(a1 + 112), *(a1 + 120), *(a1 + 128));
  v37.origin.x = v24;
  v37.origin.y = v25;
  v37.size.width = width;
  v37.size.height = height;
  v38 = CGRectOffset(v37, -MidX, -v9);
  v27 = *(*(a1 + 40) + 16);
  v28[0] = v29;
  v28[1] = v30;
  v28[2] = v31;
  v27(MidX, v9, v38.origin.x, v38.origin.y, v38.size.width, v38.size.height, v32);
}

@end