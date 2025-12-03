@interface CKMentionsTextContainerOverlayView
- (CKMentionsTextContainerOverlayView)initWithFrame:(CGRect)frame textView:(id)view;
- (void)__drawGlyph:(unsigned __int16)glyph textPosition:(CGPoint)position glyphPosition:(CGPoint)glyphPosition font:(__CTFont *)font attributes:(id)attributes layoutFragment:(id)fragment;
- (void)_drawAnimatedMentionRun:(__CTRun *)run textPosition:(CGPoint)position rippler:(id)rippler layoutFragment:(id)fragment;
- (void)drawRect:(CGRect)rect;
- (void)updateUsingAnimations:(id)animations;
@end

@implementation CKMentionsTextContainerOverlayView

- (CKMentionsTextContainerOverlayView)initWithFrame:(CGRect)frame textView:(id)view
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  viewCopy = view;
  v16.receiver = self;
  v16.super_class = CKMentionsTextContainerOverlayView;
  height = [(CKMentionsTextContainerOverlayView *)&v16 initWithFrame:x, y, width, height];
  v12 = height;
  if (height)
  {
    objc_storeStrong(&height->_textView, view);
    mentionAnimations = v12->_mentionAnimations;
    v12->_mentionAnimations = MEMORY[0x1E695E0F8];

    [(CKMentionsTextContainerOverlayView *)v12 setUserInteractionEnabled:1];
    layer = [(CKMentionsTextContainerOverlayView *)v12 layer];
    [layer setMasksToBounds:1];

    [(CKMentionsTextContainerOverlayView *)v12 setClipsToBounds:1];
    [(CKMentionsTextContainerOverlayView *)v12 setContentMode:3];
  }

  return v12;
}

- (void)updateUsingAnimations:(id)animations
{
  [(CKMentionsTextContainerOverlayView *)self setMentionAnimations:animations];

  [(CKMentionsTextContainerOverlayView *)self setNeedsDisplay];
}

- (void)drawRect:(CGRect)rect
{
  v20.receiver = self;
  v20.super_class = CKMentionsTextContainerOverlayView;
  [(CKMentionsTextContainerOverlayView *)&v20 drawRect:rect.origin.x, rect.origin.y, rect.size.width, rect.size.height];
  clearColor = [MEMORY[0x1E69DC888] clearColor];
  [clearColor set];

  [(CKMentionsTextContainerOverlayView *)self bounds];
  UIRectFill(v21);
  textView = [(CKMentionsTextContainerOverlayView *)self textView];
  textLayoutManager = [textView textLayoutManager];

  textView2 = [(CKMentionsTextContainerOverlayView *)self textView];
  [textView2 textContainerInset];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;

  documentRange = [textLayoutManager documentRange];
  location = [documentRange location];
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __47__CKMentionsTextContainerOverlayView_drawRect___block_invoke;
  v19[3] = &unk_1E72F7530;
  v19[5] = v9;
  v19[6] = v11;
  v19[7] = v13;
  v19[8] = v15;
  v19[4] = self;
  v18 = [textLayoutManager enumerateTextLayoutFragmentsFromLocation:location options:4 usingBlock:v19];
}

uint64_t __47__CKMentionsTextContainerOverlayView_drawRect___block_invoke(uint64_t a1, void *a2)
{
  v41 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = *(MEMORY[0x1E695F058] + 16);
  v38[0] = *MEMORY[0x1E695F058];
  v38[1] = v4;
  v37[0] = v38[0];
  v37[1] = v4;
  [v3 _ck_getFragmentViewFrame:v37 getBounds:v38 textContainerInset:{*(a1 + 40), *(a1 + 48), *(a1 + 56), *(a1 + 64)}];
  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  obj = [v3 textLineFragments];
  v27 = [obj countByEnumeratingWithState:&v33 objects:v40 count:16];
  if (v27)
  {
    v26 = *v34;
    do
    {
      for (i = 0; i != v27; ++i)
      {
        if (*v34 != v26)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v33 + 1) + 8 * i);
        v7 = [v6 lineRef];
        if (v7)
        {
          v8 = v7;
          v28 = i;
          [v6 glyphOrigin];
          v10 = v9;
          v12 = v11;
          v13 = CTLineGetGlyphRuns(v8);
          v29 = 0u;
          v30 = 0u;
          v31 = 0u;
          v32 = 0u;
          v14 = [v13 countByEnumeratingWithState:&v29 objects:v39 count:16];
          if (v14)
          {
            v15 = v14;
            v16 = *v30;
            do
            {
              for (j = 0; j != v15; ++j)
              {
                if (*v30 != v16)
                {
                  objc_enumerationMutation(v13);
                }

                v18 = *(*(&v29 + 1) + 8 * j);
                v19 = CKCTRunGetMentionsAnimationIdentifier(v18);
                if (v19)
                {
                  v20 = [*(*(a1 + 32) + 416) objectForKeyedSubscript:v19];
                  if (v20)
                  {
                    [v6 typographicBounds];
                    v22 = v21;
                    [v3 layoutFragmentFrame];
                    [*(a1 + 32) _drawAnimatedMentionRun:v18 textPosition:v20 rippler:v3 layoutFragment:{v10, v12 + *(a1 + 40) + v22 + v23}];
                  }
                }
              }

              v15 = [v13 countByEnumeratingWithState:&v29 objects:v39 count:16];
            }

            while (v15);
          }

          i = v28;
        }
      }

      v27 = [obj countByEnumeratingWithState:&v33 objects:v40 count:16];
    }

    while (v27);
  }

  return 1;
}

- (void)_drawAnimatedMentionRun:(__CTRun *)run textPosition:(CGPoint)position rippler:(id)rippler layoutFragment:(id)fragment
{
  y = position.y;
  x = position.x;
  ripplerCopy = rippler;
  fragmentCopy = fragment;
  Attributes = CTRunGetAttributes(run);
  Value = CFDictionaryGetValue(Attributes, *MEMORY[0x1E6965658]);
  if (!Value)
  {
    [CKMentionsTextContainerOverlayView _drawAnimatedMentionRun:a2 textPosition:self rippler:? layoutFragment:?];
  }

  GlyphCount = CTRunGetGlyphCount(run);
  if (GlyphCount)
  {
    v16 = GlyphCount;
    v17 = malloc_type_calloc(GlyphCount, 0x10uLL, 0x1000040451B5BE8uLL);
    v18 = malloc_type_calloc(v16, 2uLL, 0x1000040BDFB0063uLL);
    v32.location = 0;
    v32.length = 0;
    CTRunGetGlyphs(run, v32, v18);
    v33.location = 0;
    v33.length = 0;
    v29 = v17;
    CTRunGetPositions(run, v33, v17);
    currentTimeIndex = [ripplerCopy currentTimeIndex];
    if (v16 >= 1)
    {
      v20 = currentTimeIndex;
      v21 = 0;
      p_y = &v17->y;
      do
      {
        v23 = fragmentCopy;
        v24 = v18[v21];
        v25 = *(p_y - 1);
        v26 = *p_y;
        v27 = [CKMentionsRenderingAttributes newWithValuesFromRippler:ripplerCopy timeIndex:v20 glyphIndex:v21 glyphCount:v16, v29];
        v28 = v24;
        fragmentCopy = v23;
        [(CKMentionsTextContainerOverlayView *)self __drawGlyph:v28 textPosition:Value glyphPosition:v27 font:v23 attributes:x layoutFragment:y, v25, v26];

        ++v21;
        p_y += 2;
      }

      while (v16 != v21);
    }

    free(v18);
    free(v29);
  }
}

- (void)__drawGlyph:(unsigned __int16)glyph textPosition:(CGPoint)position glyphPosition:(CGPoint)glyphPosition font:(__CTFont *)font attributes:(id)attributes layoutFragment:(id)fragment
{
  x = glyphPosition.x;
  y = position.y;
  v12 = position.x;
  positions.y = glyphPosition.y;
  glyphs = glyph;
  fragmentCopy = fragment;
  attributesCopy = attributes;
  CurrentContext = UIGraphicsGetCurrentContext();
  CGContextSaveGState(CurrentContext);
  v28 = 0.0;
  [attributesCopy _applyInContext:CurrentContext fontPointSize:&v28 getAdjustedFontSize:CTFontGetSize(font)];

  CopyWithAttributes = CTFontCreateCopyWithAttributes(font, v28, 0, 0);
  memset(&v27, 0, sizeof(v27));
  CGContextGetTextMatrix(&v27, CurrentContext);
  v25 = v27;
  memset(&v26, 0, sizeof(v26));
  CGAffineTransformScale(&v26, &v25, 1.0, -1.0);
  v25 = v26;
  CGContextSetTextMatrix(CurrentContext, &v25);
  CGContextSetTextPosition(CurrentContext, v12, y);
  [fragmentCopy layoutFragmentFrame];
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v24 = v23;

  v31.origin.x = v18;
  v31.origin.y = v20;
  v31.size.width = v22;
  v31.size.height = v24;
  positions.x = CGRectGetMinX(v31) + x;
  CTFontDrawGlyphs(CopyWithAttributes, &glyphs, &positions, 1uLL, CurrentContext);
  CGContextRestoreGState(CurrentContext);
  v25 = v27;
  CGContextSetTextMatrix(CurrentContext, &v25);
  CFRelease(CopyWithAttributes);
}

- (void)_drawAnimatedMentionRun:(uint64_t)a1 textPosition:(uint64_t)a2 rippler:layoutFragment:.cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"CKMentionsTextContainerOverlayView.m" lineNumber:175 description:@"font required"];
}

@end