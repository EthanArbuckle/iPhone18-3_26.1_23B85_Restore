@interface EMKLayoutManager
- (BOOL)convertGlyphIndex:(unint64_t)index toAttributeRelativeGlyphIndex:(unint64_t *)glyphIndex numberOfAttributedGlyphs:(unint64_t *)glyphs;
- (BOOL)isEmojiAnimationActive;
- (EMKLayoutManager)init;
- (void)drawAttributedGlyphsForGlyphRange:(_NSRange)range atPoint:(CGPoint)point;
- (void)drawGlyphsForGlyphRange:(_NSRange)range atPoint:(CGPoint)point;
- (void)processEditingForTextStorage:(id)storage edited:(unint64_t)edited range:(_NSRange)range changeInLength:(int64_t)length invalidatedRange:(_NSRange)invalidatedRange;
- (void)setEmojiConversionEnabled:(BOOL)enabled;
- (void)setEmojiConversionLanguages:(id)languages;
- (void)showCGGlyphs:(const unsigned __int16 *)glyphs positions:(const CGPoint *)positions count:(unint64_t)count font:(id)font matrix:(CGAffineTransform *)matrix attributes:(id)attributes inContext:(CGContext *)context;
- (void)startOrStopTimer;
@end

@implementation EMKLayoutManager

- (EMKLayoutManager)init
{
  v14.receiver = self;
  v14.super_class = EMKLayoutManager;
  v2 = [(EMKLayoutManager *)&v14 init];
  if (v2)
  {
    v3 = [MEMORY[0x277CCAB48] emptyAttributedStringOfLength_emk:0];
    v4 = *(v2 + 33);
    *(v2 + 33) = v3;

    v5 = objc_alloc_init(EMKGlyphRippler);
    v6 = *(v2 + 34);
    *(v2 + 34) = v5;

    v7 = *(v2 + 35);
    *(v2 + 35) = 0;

    *(v2 + 36) = 0x3FF0000000000000;
    *(v2 + 296) = *MEMORY[0x277CBF3A8];
    v8 = *(v2 + 39);
    *(v2 + 39) = 0;

    v9 = *(v2 + 40);
    *(v2 + 40) = &unk_2827849F0;

    v10 = objc_alloc_init(EMKTextEnumerator);
    v11 = *(v2 + 41);
    *(v2 + 41) = v10;

    v12 = *(v2 + 42);
    *(v2 + 42) = 0;

    v2[344] = 1;
    v2[345] = 0;
    v2[346] = 0;
  }

  return v2;
}

- (BOOL)convertGlyphIndex:(unint64_t)index toAttributeRelativeGlyphIndex:(unint64_t *)glyphIndex numberOfAttributedGlyphs:(unint64_t *)glyphs
{
  numberOfGlyphs = [(EMKLayoutManager *)self numberOfGlyphs];
  if (!numberOfGlyphs)
  {
    return numberOfGlyphs != 0;
  }

  glyphIndexTable = self->_glyphIndexTable;
  if (!glyphIndexTable)
  {
    indexCopy = index;
    v11 = [(NSMutableAttributedString *)self->_attributes length];
    v26 = 0;
    v27 = 0;
    v12 = [MEMORY[0x277CBEB28] dataWithLength:8 * numberOfGlyphs + 8];
    v13 = self->_glyphIndexTable;
    self->_glyphIndexTable = v12;

    mutableBytes = [(NSMutableData *)self->_glyphIndexTable mutableBytes];
    if (v11)
    {
      glyphIndexCopy = glyphIndex;
      v15 = 0;
      v16 = 0;
      do
      {
        v17 = [(NSMutableAttributedString *)self->_attributes attribute:@"EMKEmojiTokenList" atIndex:v15 longestEffectiveRange:&v26 inRange:v15, v11 - v15];
        v18 = [(EMKLayoutManager *)self glyphRangeForCharacterRange:v26 actualCharacterRange:v27, 0];
        v20 = v18 + v19;
        if (v18 < v18 + v19)
        {
          v21 = &mutableBytes[v18];
          do
          {
            *v21++ = v16;
            v16 += v17 != 0;
            --v19;
          }

          while (v19);
        }

        v15 = v27 + v26;
      }

      while (v27 + v26 < v11);
      glyphIndex = glyphIndexCopy;
      if (v20 > numberOfGlyphs)
      {
        goto LABEL_13;
      }
    }

    else
    {
      v20 = 0;
      v16 = 0;
    }

    do
    {
      mutableBytes[v20++] = v16;
    }

    while (v20 <= numberOfGlyphs);
LABEL_13:
    glyphIndexTable = self->_glyphIndexTable;
    index = indexCopy;
  }

  mutableBytes2 = [(NSMutableData *)glyphIndexTable mutableBytes];
  if (glyphIndex)
  {
    *glyphIndex = *(mutableBytes2 + 8 * index);
  }

  if (glyphs)
  {
    *glyphs = *(mutableBytes2 + 8 * numberOfGlyphs);
  }

  return numberOfGlyphs != 0;
}

- (void)startOrStopTimer
{
  v5 = 0;
  if (self->_emojiConversionEnabled && self->_emojiConversionActive)
  {
    v3 = @"EMKStopTimerNotificationName";
    if ([(EMKLayoutManager *)self convertGlyphIndex:0 toAttributeRelativeGlyphIndex:0 numberOfAttributedGlyphs:&v5]&& v5)
    {
      [(EMKGlyphRippler *)self->_rippler startWithDarkMode:[(EMKLayoutManager *)self isDarkModeEnabled]];
      v3 = @"EMKStartTimerNotificationName";
    }
  }

  else
  {
    v3 = @"EMKStopTimerNotificationName";
  }

  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter postNotificationName:v3 object:self];
}

- (BOOL)isEmojiAnimationActive
{
  v6 = 0;
  if (!self->_emojiConversionEnabled || !self->_emojiConversionActive)
  {
    return 0;
  }

  v3 = [(EMKLayoutManager *)self convertGlyphIndex:0 toAttributeRelativeGlyphIndex:0 numberOfAttributedGlyphs:&v6];
  result = 0;
  if (v3)
  {
    if (v6)
    {
      currentTimeIndex = [(EMKGlyphRippler *)self->_rippler currentTimeIndex];
      return ![(EMKGlyphRippler *)self->_rippler finishedForGlyphIndex:v6 - 1 numberOfGlyphs:v6 timeIndex:currentTimeIndex];
    }
  }

  return result;
}

- (void)setEmojiConversionEnabled:(BOOL)enabled
{
  if (self->_emojiConversionEnabled && !enabled)
  {
    v5 = [(NSMutableAttributedString *)self->_attributes length];
    attributes = self->_attributes;
    v7 = [MEMORY[0x277CCA898] emptyAttributedStringOfLength_emk:v5];
    [(NSMutableAttributedString *)attributes replaceCharactersInRange:0 withAttributedString:v5, v7];

    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter postNotificationName:@"EMKEmojiConversionDisabledNotificationName" object:self];
  }

  self->_emojiConversionEnabled = enabled;
}

- (void)setEmojiConversionLanguages:(id)languages
{
  self->_emojiConversionLanguages = [languages copy];

  MEMORY[0x2821F96F8]();
}

- (void)drawAttributedGlyphsForGlyphRange:(_NSRange)range atPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  length = range.length;
  location = range.location;
  v9 = [(EMKLayoutManager *)self characterRangeForGlyphRange:range.location actualGlyphRange:range.length, 0];
  v11 = v10;
  v40 = v9;
  v41 = 0;
  v12 = [(NSMutableAttributedString *)self->_attributes length];
  v31 = v9 + v11;
  v32 = v12;
  if (v12 >= v9 + v11)
  {
    v13 = v9 + v11;
  }

  else
  {
    v13 = v12;
  }

  if (v9 < v13)
  {
    v34 = location + length;
    v33 = v13;
    do
    {
      v14 = [(NSMutableAttributedString *)self->_attributes attribute:@"EMKEmojiTokenList" atIndex:v9 longestEffectiveRange:&v40 inRange:v9, v13 - v9];
      v15 = [(EMKLayoutManager *)self glyphRangeForCharacterRange:v40 actualCharacterRange:v41, 0];
      v17 = v15;
      v18 = v16;
      if (v14)
      {
        if (v15 < v15 + v16)
        {
          do
          {
            if (location <= v17 && v17 < v34)
            {
              currentTimeIndex = [(EMKGlyphRippler *)self->_rippler currentTimeIndex];
              v38 = 0;
              v39 = 0;
              [(EMKLayoutManager *)self convertGlyphIndex:v17 toAttributeRelativeGlyphIndex:&v39 numberOfAttributedGlyphs:&v38];
              v20 = [(EMKGlyphRippler *)self->_rippler currentColorForGlyphIndex:v39 numberOfGlyphs:v38 timeIndex:currentTimeIndex];
              currentColor = self->_currentColor;
              self->_currentColor = v20;

              [(EMKGlyphRippler *)self->_rippler currentScaleForGlyphIndex:v39 numberOfGlyphs:v38 timeIndex:currentTimeIndex];
              self->_currentScale = v22;
              [(EMKGlyphRippler *)self->_rippler currentOffsetForGlyphIndex:v39 numberOfGlyphs:v38 timeIndex:currentTimeIndex];
              self->_currentOffset.width = v23;
              self->_currentOffset.height = v24;
              v25 = [(EMKGlyphRippler *)self->_rippler currentShadowColorForGlyphIndex:v39 numberOfGlyphs:v38 timeIndex:currentTimeIndex];
              currentShadowColor = self->_currentShadowColor;
              self->_currentShadowColor = v25;

              v37.receiver = self;
              v37.super_class = EMKLayoutManager;
              [(EMKLayoutManager *)&v37 drawGlyphsForGlyphRange:v17 atPoint:1, x, y];
              v27 = self->_currentColor;
              self->_currentColor = 0;

              self->_currentScale = 1.0;
              self->_currentOffset = *MEMORY[0x277CBF3A8];
              v28 = self->_currentShadowColor;
              self->_currentShadowColor = 0;
            }

            ++v17;
            --v18;
          }

          while (v18);
        }
      }

      else
      {
        v36.receiver = self;
        v36.super_class = EMKLayoutManager;
        [(EMKLayoutManager *)&v36 drawGlyphsForGlyphRange:v15 atPoint:v16, x, y];
      }

      v9 = v41 + v40;
      v13 = v33;
    }

    while (v41 + v40 < v33);
  }

  if (v31 > v32)
  {
    v40 = v32;
    v41 = v31 - v32;
    v29 = [EMKLayoutManager glyphRangeForCharacterRange:"glyphRangeForCharacterRange:actualCharacterRange:" actualCharacterRange:?];
    v35.receiver = self;
    v35.super_class = EMKLayoutManager;
    [(EMKLayoutManager *)&v35 drawGlyphsForGlyphRange:v29 atPoint:v30, x, y];
  }
}

- (void)drawGlyphsForGlyphRange:(_NSRange)range atPoint:(CGPoint)point
{
  if (self->_emojiConversionEnabled && self->_emojiConversionActive)
  {

    [(EMKLayoutManager *)self drawAttributedGlyphsForGlyphRange:range.location atPoint:range.length, point.x, point.y];
  }

  else
  {
    v7 = v4;
    v8 = v5;
    v6.receiver = self;
    v6.super_class = EMKLayoutManager;
    [(EMKLayoutManager *)&v6 drawGlyphsForGlyphRange:range.location atPoint:range.length, point.x, point.y];
  }
}

- (void)showCGGlyphs:(const unsigned __int16 *)glyphs positions:(const CGPoint *)positions count:(unint64_t)count font:(id)font matrix:(CGAffineTransform *)matrix attributes:(id)attributes inContext:(CGContext *)context
{
  fontCopy = font;
  attributesCopy = attributes;
  if (self->_currentColor)
  {
    [fontCopy pointSize];
    v17 = v16;
    v19 = v16 <= 22.0 && self->_currentShadowColor != 0;
    v28 = v19;
    if (count)
    {
      if (self->_currentScale == 1.0 && self->_currentOffset.width == 0.0 && self->_currentOffset.height == 0.0)
      {
        v20 = 0;
      }

      else
      {
        v20 = malloc_type_calloc(count, 0x10uLL, 0x1000040451B5BE8uLL);
        if (v20)
        {
          CGContextSetFontSize(context, v17 * self->_currentScale);
          BoundingRectsForGlyphs = CTFontGetBoundingRectsForGlyphs(fontCopy, kCTFontOrientationDefault, glyphs, 0, count);
          p_y = &v20->y;
          v22 = &positions->y;
          countCopy = count;
          do
          {
            v24 = *v22 - self->_currentOffset.height;
            *(p_y - 1) = *(v22 - 1) + self->_currentOffset.width + BoundingRectsForGlyphs.size.width * (self->_currentScale + -1.0) * -0.5;
            *p_y = v24;
            p_y += 2;
            v22 += 2;
            --countCopy;
          }

          while (countCopy);
          positions = v20;
        }
      }
    }

    else
    {
      v20 = 0;
    }

    [(UIColor *)self->_currentColor set];
    if (v28)
    {
      cGColor = [(UIColor *)self->_currentShadowColor CGColor];
      v32.width = 0.25;
      v32.height = 0.0;
      CGContextSetShadowWithColor(context, v32, 0.0, cGColor);
      v25 = 1;
    }

    else
    {
      v25 = 0;
    }
  }

  else
  {
    v25 = 0;
    v20 = 0;
  }

  v31.receiver = self;
  v31.super_class = EMKLayoutManager;
  v27 = *&matrix->c;
  v30[0] = *&matrix->a;
  v30[1] = v27;
  v30[2] = *&matrix->tx;
  [(EMKLayoutManager *)&v31 showCGGlyphs:glyphs positions:positions count:count font:fontCopy matrix:v30 attributes:attributesCopy inContext:context];
  if (v25)
  {
    CGContextSetShadowWithColor(context, *MEMORY[0x277CBF3A8], 0.0, 0);
  }

  if (v20)
  {
    free(v20);
  }
}

- (void)processEditingForTextStorage:(id)storage edited:(unint64_t)edited range:(_NSRange)range changeInLength:(int64_t)length invalidatedRange:(_NSRange)invalidatedRange
{
  length = range.length;
  editedCopy = edited;
  v50 = *MEMORY[0x277D85DE8];
  v47 = 0;
  v48 = 0;
  v46.receiver = self;
  v46.super_class = EMKLayoutManager;
  location = range.location;
  storageCopy = storage;
  [EMKLayoutManager processEditingForTextStorage:sel_processEditingForTextStorage_edited_range_changeInLength_invalidatedRange_ edited:invalidatedRange.location range:invalidatedRange.length changeInLength:? invalidatedRange:?];
  if ((editedCopy & 2) != 0)
  {
    attributes = self->_attributes;
    v12 = [MEMORY[0x277CCA898] emptyAttributedStringOfLength_emk:length];
    [(NSMutableAttributedString *)attributes replaceCharactersInRange:location withAttributedString:length - length, v12];

    v13 = [storageCopy length];
    v14 = [(NSMutableAttributedString *)self->_attributes length];
    v33 = 0;
    v15 = location;
    v16 = location + length;
    if (location + length > v13 || (v17 = v14, v14 < v16))
    {
LABEL_28:
      [(EMKLayoutManager *)self flushGlyphIndexTable];

      goto LABEL_29;
    }

    if (location)
    {
      v18 = [(NSMutableAttributedString *)self->_attributes attribute:@"EMKEmojiTokenList" atIndex:location - 1 effectiveRange:0];
      if (v18)
      {
        v19 = v18;
        location = [(NSMutableAttributedString *)self->_attributes attribute:@"EMKEmojiTokenList" atIndex:location - 1 longestEffectiveRange:&v47 inRange:0, location];
        v15 = v19;
        v21 = v47;
        lengthCopy2 = v16 - v47;
      }

      else
      {
        v15 = 0;
        lengthCopy2 = length;
        v21 = location;
      }
    }

    else
    {
      v21 = 0;
      lengthCopy2 = length;
    }

    v23 = v17 > v16;
    v24 = v17 - v16;
    if (v23)
    {
      v25 = v15;
      v33 = [(NSMutableAttributedString *)self->_attributes attribute:@"EMKEmojiTokenList" atIndex:v16 effectiveRange:0];

      if (v33)
      {
        v26 = [(NSMutableAttributedString *)self->_attributes attribute:@"EMKEmojiTokenList" atIndex:v16 longestEffectiveRange:&v47 inRange:v16, v24];
        lengthCopy2 = v47 - v21 + v48;
        if (!lengthCopy2)
        {
          goto LABEL_18;
        }
      }

      else
      {
        v33 = 0;
        if (!lengthCopy2)
        {
          goto LABEL_18;
        }
      }
    }

    else
    {
      v33 = v15;
      if (!lengthCopy2)
      {
LABEL_18:
        if (self->_emojiConversionEnabled)
        {
          v44 = 0u;
          v45 = 0u;
          v42 = 0u;
          v43 = 0u;
          obj = self->_emojiConversionLanguages;
          v27 = [(NSArray *)obj countByEnumeratingWithState:&v42 objects:v49 count:16];
          if (v27)
          {
            v28 = *v43;
LABEL_21:
            v29 = 0;
            while (1)
            {
              if (*v43 != v28)
              {
                objc_enumerationMutation(obj);
              }

              v30 = *(*(&v42 + 1) + 8 * v29);
              v38 = 0;
              v39 = &v38;
              v40 = 0x2020000000;
              v41 = 0;
              enumerator = self->_enumerator;
              string = [storageCopy string];
              v37[0] = MEMORY[0x277D85DD0];
              v37[1] = 3221225472;
              v37[2] = __94__EMKLayoutManager_processEditingForTextStorage_edited_range_changeInLength_invalidatedRange___block_invoke;
              v37[3] = &unk_2781C2448;
              v37[4] = self;
              v37[5] = v30;
              v37[6] = &v38;
              [(EMKTextEnumerator *)enumerator enumerateEmojiSignifiersInString:string touchingRange:location language:length usingBlock:v30, v37];

              LOBYTE(v30) = *(v39 + 24);
              _Block_object_dispose(&v38, 8);
              if (v30)
              {
                break;
              }

              if (v27 == ++v29)
              {
                v27 = [(NSArray *)obj countByEnumeratingWithState:&v42 objects:v49 count:16];
                if (v27)
                {
                  goto LABEL_21;
                }

                break;
              }
            }
          }
        }

        goto LABEL_28;
      }
    }

    [(NSMutableAttributedString *)self->_attributes removeAttribute:@"EMKEmojiTokenList" range:v21, lengthCopy2];
    goto LABEL_18;
  }

LABEL_29:
}

uint64_t __94__EMKLayoutManager_processEditingForTextStorage_edited_range_changeInLength_invalidatedRange___block_invoke(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  [*(a1[4] + 264) addAttribute:@"EMKEmojiTokenList" value:a4 range:{a2, a3}];
  result = [*(a1[4] + 264) addAttribute:@"EMKEmojiConversionLanguage" value:a1[5] range:{a2, a3}];
  *(*(a1[6] + 8) + 24) = 1;
  return result;
}

@end