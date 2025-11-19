@interface CKTextEntryLayoutManager
- (BOOL)isAnyMentionAnimationActive;
- (CGSize)currentMentionOffset;
- (CKTextEntryLayoutManager)init;
- (CKTextEntryLayoutManagerMentionsDelegate)mentionsDelegate;
- (void)drawAttributedMentionGlyphsForGlyphRange:(_NSRange)a3 atPoint:(CGPoint)a4;
- (void)drawGlyphsForGlyphRange:(_NSRange)a3 atPoint:(CGPoint)a4;
- (void)showCGGlyphs:(const unsigned __int16 *)a3 positions:(const CGPoint *)a4 count:(int64_t)a5 font:(id)a6 textMatrix:(CGAffineTransform *)a7 attributes:(id)a8 inContext:(CGContext *)a9;
- (void)startTimerIfNeeded;
- (void)stopTimerRemovingAttribute:(BOOL)a3;
- (void)updateDisplayForMentionGlyphRangeRemovingAttribute:(BOOL)a3;
- (void)updateMentionAttributes:(id)a3;
- (void)updateMentionDisplay;
@end

@implementation CKTextEntryLayoutManager

- (CKTextEntryLayoutManager)init
{
  v8.receiver = self;
  v8.super_class = CKTextEntryLayoutManager;
  v2 = [(EMKLayoutManager *)&v8 init];
  if (v2)
  {
    v3 = [MEMORY[0x1E695DF90] dictionary];
    v4 = *(v2 + 49);
    *(v2 + 49) = v3;

    v5 = *(v2 + 46);
    *(v2 + 46) = 0;

    *(v2 + 47) = 0x3FF0000000000000;
    *(v2 + 408) = *MEMORY[0x1E695F060];
    v6 = *(v2 + 48);
    *(v2 + 48) = 0;
  }

  return v2;
}

- (void)updateMentionAttributes:(id)a3
{
  v4 = a3;
  if (([(NSMutableAttributedString *)self->_mentionAttributes isEqualToAttributedString:v4]& 1) == 0)
  {
    v5 = [v4 mutableCopy];
    mentionAttributes = self->_mentionAttributes;
    self->_mentionAttributes = v5;

    v7 = self->_mentionAttributes;
    v8 = *MEMORY[0x1E69A70D0];
    v9 = [(NSMutableAttributedString *)v7 length];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __52__CKTextEntryLayoutManager_updateMentionAttributes___block_invoke;
    v10[3] = &unk_1E72EF890;
    v10[4] = self;
    [(NSMutableAttributedString *)v7 enumerateAttribute:v8 inRange:0 options:v9 usingBlock:2, v10];
  }
}

void __52__CKTextEntryLayoutManager_updateMentionAttributes___block_invoke(uint64_t a1, void *a2)
{
  v7 = a2;
  if (v7)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      if ([v7 length])
      {
        v3 = [*(a1 + 32) animationsByIdentifier];
        v4 = [v3 objectForKeyedSubscript:v7];

        if (!v4)
        {
          v5 = objc_alloc_init(CKMentionRippler);
          v6 = [*(a1 + 32) animationsByIdentifier];
          [v6 setObject:v5 forKeyedSubscript:v7];

          [(CKMentionRippler *)v5 start];
          [*(a1 + 32) startTimerIfNeeded];
        }
      }
    }
  }
}

- (BOOL)isAnyMentionAnimationActive
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  v3 = [(CKTextEntryLayoutManager *)self mentionAttributes];
  v4 = [(CKTextEntryLayoutManager *)self mentionAttributes];
  v5 = [v4 length];
  v6 = *MEMORY[0x1E69A70D0];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __55__CKTextEntryLayoutManager_isAnyMentionAnimationActive__block_invoke;
  v10[3] = &unk_1E72F0AB0;
  v10[4] = self;
  v10[5] = &v11;
  [v3 enumerateAttribute:v6 inRange:0 options:v5 usingBlock:{2, v10}];

  if (v12[3])
  {
    v7 = 1;
  }

  else
  {
    v8 = [(CKTextEntryLayoutManager *)self animationsByIdentifier];
    [v8 removeAllObjects];

    v7 = *(v12 + 24);
  }

  _Block_object_dispose(&v11, 8);
  return v7 & 1;
}

void __55__CKTextEntryLayoutManager_isAnyMentionAnimationActive__block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v6 = a2;
  if (v6)
  {
    v10 = v6;
    v7 = [*(a1 + 32) animationsByIdentifier];
    v8 = [v7 objectForKeyedSubscript:v10];

    if (v8)
    {
      if ([v8 finishedForGlyphIndex:a4 numberOfGlyphs:a4 timeIndex:{objc_msgSend(v8, "currentTimeIndex")}])
      {
        v9 = [*(a1 + 32) animationsByIdentifier];
        [v9 removeObjectForKey:v10];
      }

      else
      {
        *(*(*(a1 + 40) + 8) + 24) = 1;
      }
    }

    v6 = v10;
  }
}

- (void)startTimerIfNeeded
{
  v3 = [(CKTextEntryLayoutManager *)self mentionTimer];

  if (!v3)
  {
    v4 = [MEMORY[0x1E695DFF0] scheduledTimerWithTimeInterval:self target:sel_updateMentionDisplay selector:0 userInfo:1 repeats:0.0166666667];
    [(CKTextEntryLayoutManager *)self setMentionTimer:v4];
  }

  v6 = [MEMORY[0x1E695DFD0] mainRunLoop];
  v5 = [(CKTextEntryLayoutManager *)self mentionTimer];
  [v6 addTimer:v5 forMode:*MEMORY[0x1E69DE760]];
}

- (void)stopTimerRemovingAttribute:(BOOL)a3
{
  [(CKTextEntryLayoutManager *)self updateDisplayForMentionGlyphRangeRemovingAttribute:a3];
  v4 = [(CKTextEntryLayoutManager *)self mentionTimer];
  [v4 invalidate];

  [(CKTextEntryLayoutManager *)self setMentionTimer:0];
}

- (void)updateMentionDisplay
{
  [(CKTextEntryLayoutManager *)self updateDisplayForMentionGlyphRangeRemovingAttribute:0];
  if (![(CKTextEntryLayoutManager *)self isAnyMentionAnimationActive])
  {

    [(CKTextEntryLayoutManager *)self stopTimerRemovingAttribute:1];
  }
}

- (void)updateDisplayForMentionGlyphRangeRemovingAttribute:(BOOL)a3
{
  v3 = a3;
  v5 = [(CKTextEntryLayoutManager *)self mentionAttributes];
  v6 = [v5 copy];

  v17 = 0;
  v18 = 0;
  v7 = [(CKTextEntryLayoutManager *)self textStorage];
  v8 = [v7 length];

  v9 = [v6 length];
  if (v9)
  {
    v10 = v9;
    v11 = 0;
    v12 = *MEMORY[0x1E69A70D0];
    do
    {
      v13 = [v6 attribute:v12 atIndex:v11 longestEffectiveRange:&v17 inRange:{v11, v10 - v11}];
      if ([v13 length] && v18 + v17 <= v8)
      {
        if (v3)
        {
          v14 = [(CKTextEntryLayoutManager *)self mentionsDelegate];
          [v14 layoutManagerDidFinishAnimatingMentionWithAnimationIdentifier:v13];
        }

        v15 = [CKTextEntryLayoutManager glyphRangeForCharacterRange:"glyphRangeForCharacterRange:actualCharacterRange:" actualCharacterRange:?];
        [(CKTextEntryLayoutManager *)self invalidateDisplayForGlyphRange:v15, v16];
      }

      v11 = v18 + v17;
    }

    while (v18 + v17 < v10);
  }
}

- (void)drawGlyphsForGlyphRange:(_NSRange)a3 atPoint:(CGPoint)a4
{
  y = a4.y;
  x = a4.x;
  length = a3.length;
  location = a3.location;
  v9 = [(CKTextEntryLayoutManager *)self mentionAttributes];
  v10 = [v9 containsAttribute:*MEMORY[0x1E69A70D0]];

  if (v10)
  {

    [(CKTextEntryLayoutManager *)self drawAttributedMentionGlyphsForGlyphRange:location atPoint:length, x, y];
  }

  else
  {
    v11.receiver = self;
    v11.super_class = CKTextEntryLayoutManager;
    [(EMKLayoutManager *)&v11 drawGlyphsForGlyphRange:location atPoint:length, x, y];
  }
}

- (void)drawAttributedMentionGlyphsForGlyphRange:(_NSRange)a3 atPoint:(CGPoint)a4
{
  y = a4.y;
  x = a4.x;
  length = a3.length;
  location = a3.location;
  v8 = [(CKTextEntryLayoutManager *)self characterRangeForGlyphRange:a3.location actualGlyphRange:a3.length, 0];
  v10 = v9;
  v39 = v8;
  v40 = 0;
  v11 = [(CKTextEntryLayoutManager *)self mentionAttributes];
  v12 = [v11 length];

  v30 = v8 + v10;
  v31 = v12;
  if (v12 >= v8 + v10)
  {
    v13 = v8 + v10;
  }

  else
  {
    v13 = v12;
  }

  if (v8 < v13)
  {
    v33 = *MEMORY[0x1E69A70D0];
    v14 = location + length;
    v15 = *MEMORY[0x1E695F060];
    v16 = *(MEMORY[0x1E695F060] + 8);
    v32 = v13;
    do
    {
      v17 = [(CKTextEntryLayoutManager *)self mentionAttributes:v30];
      v18 = [v17 attribute:v33 atIndex:v40 + v39 longestEffectiveRange:&v39 inRange:{v40 + v39, v13 - (v40 + v39)}];

      v19 = [(CKTextEntryLayoutManager *)self glyphRangeForCharacterRange:v39 actualCharacterRange:v40, 0];
      v21 = v20;
      if ([v18 length])
      {
        v22 = [(CKTextEntryLayoutManager *)self animationsByIdentifier];
        v34 = v18;
        v23 = [v22 objectForKeyedSubscript:v18];

        if (v21)
        {
          for (i = 0; i != v21; ++i)
          {
            if (location <= v19 + i && v19 + i + 1 <= v14)
            {
              v26 = [v23 currentTimeIndex];
              v27 = [v23 currentColorForGlyphIndex:i numberOfGlyphs:v21 timeIndex:v26];
              [(CKTextEntryLayoutManager *)self setCurrentMentionColor:v27];

              [v23 currentScaleForGlyphIndex:i numberOfGlyphs:v21 timeIndex:v26];
              [(CKTextEntryLayoutManager *)self setCurrentMentionScale:?];
              [v23 currentOffsetForGlyphIndex:i numberOfGlyphs:v21 timeIndex:v26];
              [(CKTextEntryLayoutManager *)self setCurrentMentionOffset:?];
              v38.receiver = self;
              v38.super_class = CKTextEntryLayoutManager;
              [(EMKLayoutManager *)&v38 drawGlyphsForGlyphRange:v19 + i atPoint:1, x, y];
              [(CKTextEntryLayoutManager *)self setCurrentMentionColor:0];
              [(CKTextEntryLayoutManager *)self setCurrentMentionScale:1.0];
              [(CKTextEntryLayoutManager *)self setCurrentMentionOffset:v15, v16];
              [(CKTextEntryLayoutManager *)self setCurrentMentionShadowColor:0];
            }
          }
        }

        v13 = v32;
        v18 = v34;
      }

      else
      {
        v37.receiver = self;
        v37.super_class = CKTextEntryLayoutManager;
        [(EMKLayoutManager *)&v37 drawGlyphsForGlyphRange:v19 atPoint:v21, x, y];
      }
    }

    while (v40 + v39 < v13);
  }

  if (v30 > v31)
  {
    v39 = v31;
    v40 = v30 - v31;
    v28 = [CKTextEntryLayoutManager glyphRangeForCharacterRange:"glyphRangeForCharacterRange:actualCharacterRange:" actualCharacterRange:?];
    v36.receiver = self;
    v36.super_class = CKTextEntryLayoutManager;
    [(EMKLayoutManager *)&v36 drawGlyphsForGlyphRange:v28 atPoint:v29, x, y];
  }
}

- (void)showCGGlyphs:(const unsigned __int16 *)a3 positions:(const CGPoint *)a4 count:(int64_t)a5 font:(id)a6 textMatrix:(CGAffineTransform *)a7 attributes:(id)a8 inContext:(CGContext *)a9
{
  v15 = a6;
  v16 = a8;
  v41 = *a4;
  if (a5 == 1)
  {
    [v15 pointSize];
    v18 = v17;
    v19 = [(CKTextEntryLayoutManager *)self currentMentionShadowColor];
    v21 = v18 <= 22.0 && v19 != 0;

    [(CKTextEntryLayoutManager *)self currentMentionScale];
    if (v22 != 1.0 || ([(CKTextEntryLayoutManager *)self currentMentionOffset], v23 != 0.0) || ([(CKTextEntryLayoutManager *)self currentMentionOffset], v24 != 0.0))
    {
      [(CKTextEntryLayoutManager *)self currentMentionScale];
      CGContextSetFontSize(a9, v18 * v25);
      BoundingRectsForGlyphs = CTFontGetBoundingRectsForGlyphs(v15, kCTFontOrientationDefault, a3, 0, 1);
      width = BoundingRectsForGlyphs.size.width;
      [(CKTextEntryLayoutManager *)self currentMentionOffset:BoundingRectsForGlyphs.origin.x];
      v28 = v27;
      [(CKTextEntryLayoutManager *)self currentMentionScale];
      v41.x = v41.x + v28 + width * (v29 + -1.0) * -0.5;
      [(CKTextEntryLayoutManager *)self currentMentionOffset];
      v41.y = v41.y - v30;
      a4 = &v41;
    }

    v31 = [(CKTextEntryLayoutManager *)self currentMentionColor];

    if (v31)
    {
      [(UIColor *)self->_currentMentionColor set];
    }

    if (v21)
    {
      v32 = [(CKTextEntryLayoutManager *)self currentMentionShadowColor];
      v33 = [v32 CGColor];
      v42.width = 0.25;
      v42.height = 0.0;
      CGContextSetShadowWithColor(a9, v42, 0.0, v33);

      v40.receiver = self;
      v40.super_class = CKTextEntryLayoutManager;
      v34 = *&a7->c;
      v37 = *&a7->a;
      v38 = v34;
      v39 = *&a7->tx;
      [(CKTextEntryLayoutManager *)&v40 showCGGlyphs:a3 positions:a4 count:1 font:v15 textMatrix:&v37 attributes:v16 inContext:a9];
      CGContextSetShadowWithColor(a9, *MEMORY[0x1E695F060], 0.0, 0);
    }

    else
    {
      v40.receiver = self;
      v40.super_class = CKTextEntryLayoutManager;
      v36 = *&a7->c;
      v37 = *&a7->a;
      v38 = v36;
      v39 = *&a7->tx;
      [(CKTextEntryLayoutManager *)&v40 showCGGlyphs:a3 positions:a4 count:1 font:v15 textMatrix:&v37 attributes:v16 inContext:a9];
    }
  }

  else
  {
    v40.receiver = self;
    v40.super_class = CKTextEntryLayoutManager;
    v35 = *&a7->c;
    v37 = *&a7->a;
    v38 = v35;
    v39 = *&a7->tx;
    [(CKTextEntryLayoutManager *)&v40 showCGGlyphs:a3 positions:a4 count:a5 font:v15 textMatrix:&v37 attributes:v16 inContext:a9];
  }
}

- (CKTextEntryLayoutManagerMentionsDelegate)mentionsDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_mentionsDelegate);

  return WeakRetained;
}

- (CGSize)currentMentionOffset
{
  width = self->_currentMentionOffset.width;
  height = self->_currentMentionOffset.height;
  result.height = height;
  result.width = width;
  return result;
}

@end