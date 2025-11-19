@interface ICBaseLayoutManager
+ (NSDictionary)defaultLinkTextAttributes;
- (UITextView)textView;
- (double)bulletYOffsetForCharacterAtIndex:(unint64_t)a3;
- (id)textContainer;
- (id)textController;
- (void)drawBulletsForListRange:(_NSRange)a3 paragraphStyle:(id)a4 atPoint:(CGPoint)a5;
- (void)drawListStylesForCharacterRange:(_NSRange)a3 atPoint:(CGPoint)a4;
@end

@implementation ICBaseLayoutManager

+ (NSDictionary)defaultLinkTextAttributes
{
  v2 = [MEMORY[0x1E695DF90] dictionary];
  v3 = [MEMORY[0x1E69DC888] tintColor];
  [v2 ic_setNonNilObject:v3 forKey:*MEMORY[0x1E69DB650]];

  [v2 ic_setNonNilObject:&unk_1F4FC3D50 forKey:*MEMORY[0x1E69DB758]];
  v4 = [v2 copy];

  return v4;
}

- (id)textController
{
  v3 = [(ICBaseLayoutManager *)self textStorage];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v5 = [(ICBaseLayoutManager *)self textStorage];
    v6 = [v5 styler];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)textContainer
{
  v2 = [(ICBaseLayoutManager *)self textContainers];
  v3 = [v2 lastObject];

  return v3;
}

- (void)drawListStylesForCharacterRange:(_NSRange)a3 atPoint:(CGPoint)a4
{
  y = a4.y;
  x = a4.x;
  length = a3.length;
  location = a3.location;
  v9 = [(ICBaseLayoutManager *)self textStorage];
  v10 = *MEMORY[0x1E69B7600];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __63__ICBaseLayoutManager_drawListStylesForCharacterRange_atPoint___block_invoke;
  v11[3] = &unk_1E8469868;
  v11[4] = self;
  *&v11[5] = x;
  *&v11[6] = y;
  [v9 enumerateAttribute:v10 inRange:location options:length usingBlock:{0, v11}];
}

uint64_t __63__ICBaseLayoutManager_drawListStylesForCharacterRange_atPoint___block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = a2;
  if (v7)
  {
    v9 = v7;
    if ([v7 isList])
    {
      if ([v9 style] != 103)
      {
        [*(a1 + 32) drawBulletsForListRange:a3 paragraphStyle:a4 atPoint:{v9, *(a1 + 40), *(a1 + 48)}];
      }
    }
  }

  return MEMORY[0x1EEE66BB8]();
}

- (void)drawBulletsForListRange:(_NSRange)a3 paragraphStyle:(id)a4 atPoint:(CGPoint)a5
{
  length = a3.length;
  location = a3.location;
  v66 = a4;
  if (drawBulletsForListRange_paragraphStyle_atPoint__onceToken != -1)
  {
    [ICBaseLayoutManager drawBulletsForListRange:paragraphStyle:atPoint:];
  }

  v60 = location + length;
  if (location < location + length)
  {
    v59 = *MEMORY[0x1E69DB648];
    v58 = *MEMORY[0x1E69DB650];
    *&v57 = 9.2;
    do
    {
      v8 = [(ICBaseLayoutManager *)self textStorage];
      v9 = [v8 string];
      v10 = [v9 paragraphRangeForRange:{location, 0}];
      v12 = v11;

      v64 = v12;
      v65 = v10;
      [(ICBaseLayoutManager *)self lineFragmentUsedRectForGlyphAtIndex:[(ICBaseLayoutManager *)self glyphRangeForCharacterRange:v10 actualCharacterRange:v12 effectiveRange:0], 0];
      v14 = v13;
      v16 = v15;
      v18 = a5.x + v17;
      v20 = a5.y + v19;
      v21 = [(ICBaseLayoutManager *)self textContainer];
      [v21 lineFragmentPadding];
      v23 = v22;
      v68.origin.x = v18;
      v68.origin.y = v20;
      v68.size.width = v14;
      v68.size.height = v16;
      v69 = CGRectInset(v68, v23, 0.0);
      x = v69.origin.x;
      y = v69.origin.y;
      width = v69.size.width;
      rect = v69.size.height;

      CurrentContext = UIGraphicsGetCurrentContext();
      v28 = [(ICBaseLayoutManager *)self textStorage];
      v29 = [v28 attribute:v59 atIndex:location effectiveRange:0];

      v30 = [ICTTTextStorage bulletTextAttributesWithTextFont:v29 paragraphStyle:v66 zoomFactor:1.0];
      v31 = [(ICBaseLayoutManager *)self textStorage];
      v32 = [v66 listBulletInAttributedString:v31 atIndex:location];

      v63 = v30;
      v33 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:v32 attributes:v30];
      v34 = [drawBulletsForListRange_paragraphStyle_atPoint__bulletCTLineCache objectForKey:v33];
      v35 = v34;
      if (!v34 || (v36 = CFRetain([v34 ref])) == 0)
      {
        v36 = CTLineCreateWithAttributedString(v33);
        v37 = drawBulletsForListRange_paragraphStyle_atPoint__bulletCTLineCache;
        v38 = [objc_alloc(MEMORY[0x1E69B7A40]) initWithCFTypeRef:v36];
        [v37 setObject:v38 forKey:v33];
      }

      v39 = 0.0;
      CGContextSetTextPosition(CurrentContext, 0.0, 0.0);
      ImageBounds = CTLineGetImageBounds(v36, CurrentContext);
      v40 = ImageBounds.origin.y;
      height = ImageBounds.size.height;
      TypographicBounds = CTLineGetTypographicBounds(v36, 0, 0, 0);
      [(ICBaseLayoutManager *)self bulletYOffsetForCharacterAtIndex:location];
      v44 = y + v43;
      v45 = [v66 style];
      if ((v45 - 100) >= 2)
      {
        if (v45 == 102)
        {
          v39 = *&v57;
        }
      }

      else
      {
        v39 = (36.0 - TypographicBounds) * 0.5 + 1.0;
        [v29 capHeight];
        v44 = v44 - ((v46 - height) * 0.5 - v40);
      }

      v47 = [v66 layoutWritingDirection];
      v48 = x;
      v49 = y;
      v50 = width;
      v51 = rect;
      if (v47)
      {
        v52 = v39 + CGRectGetMaxX(*&v48);
      }

      else
      {
        v52 = CGRectGetMinX(*&v48) - v39 - TypographicBounds;
      }

      v53 = [(ICBaseLayoutManager *)self textStorage];
      v54 = [v53 attribute:v58 atIndex:location effectiveRange:0];

      v55 = [MEMORY[0x1E69DC888] clearColor];
      LOBYTE(v53) = [v54 isEqual:v55];

      if ((v53 & 1) == 0)
      {
        CGContextSetGrayFillColor(CurrentContext, 0.0, 1.0);
        [v54 alphaComponent];
        CGContextSetAlpha(CurrentContext, v56);
        CGAffineTransformMakeScale(&v67, 1.0, -1.0);
        CGContextSetTextMatrix(CurrentContext, &v67);
        CGContextSetTextPosition(CurrentContext, v52, v44);
        CTLineDraw(v36, CurrentContext);
        CGContextFillPath(CurrentContext);
        CGContextSetAlpha(CurrentContext, 1.0);
      }

      CFRelease(v36);
      location = v65 + v64;
    }

    while (v65 + v64 < v60);
  }
}

uint64_t __70__ICBaseLayoutManager_drawBulletsForListRange_paragraphStyle_atPoint___block_invoke()
{
  drawBulletsForListRange_paragraphStyle_atPoint__bulletCTLineCache = objc_alloc_init(MEMORY[0x1E69B7A48]);

  return MEMORY[0x1EEE66BB8]();
}

- (double)bulletYOffsetForCharacterAtIndex:(unint64_t)a3
{
  v19 = 0;
  v20 = 0;
  v18 = 0;
  v5 = [(ICBaseLayoutManager *)self textStorage];
  v6 = [v5 string];
  [v6 getLineStart:&v20 end:&v19 contentsEnd:&v18 forRange:{a3, 0}];

  if (v18 == v20)
  {
    v7 = [(ICBaseLayoutManager *)self textStorage];
    v8 = [v7 attribute:*MEMORY[0x1E69DB648] atIndex:a3 effectiveRange:0];

    [v8 ascender];
    v10 = v9;
LABEL_6:

    return v10;
  }

  [(ICBaseLayoutManager *)self locationForGlyphAtIndex:[(ICBaseLayoutManager *)self glyphIndexForCharacterAtIndex:a3]];
  v10 = v11;
  v12 = [(ICBaseLayoutManager *)self textStorage];
  v13 = [v12 string];
  v14 = [v13 characterAtIndex:a3];

  if (v14 == 65532)
  {
    v15 = [(ICBaseLayoutManager *)self textStorage];
    v8 = [v15 attribute:*MEMORY[0x1E69DB648] atIndex:a3 effectiveRange:0];

    if (v8)
    {
      [v8 descender];
      v10 = v10 + v16;
    }

    goto LABEL_6;
  }

  return v10;
}

- (UITextView)textView
{
  WeakRetained = objc_loadWeakRetained(&self->_textView);

  return WeakRetained;
}

@end