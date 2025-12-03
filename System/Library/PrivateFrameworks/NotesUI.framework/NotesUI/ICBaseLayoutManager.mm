@interface ICBaseLayoutManager
+ (NSDictionary)defaultLinkTextAttributes;
- (UITextView)textView;
- (double)bulletYOffsetForCharacterAtIndex:(unint64_t)index;
- (id)textContainer;
- (id)textController;
- (void)drawBulletsForListRange:(_NSRange)range paragraphStyle:(id)style atPoint:(CGPoint)point;
- (void)drawListStylesForCharacterRange:(_NSRange)range atPoint:(CGPoint)point;
@end

@implementation ICBaseLayoutManager

+ (NSDictionary)defaultLinkTextAttributes
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  tintColor = [MEMORY[0x1E69DC888] tintColor];
  [dictionary ic_setNonNilObject:tintColor forKey:*MEMORY[0x1E69DB650]];

  [dictionary ic_setNonNilObject:&unk_1F4FC3D50 forKey:*MEMORY[0x1E69DB758]];
  v4 = [dictionary copy];

  return v4;
}

- (id)textController
{
  textStorage = [(ICBaseLayoutManager *)self textStorage];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    textStorage2 = [(ICBaseLayoutManager *)self textStorage];
    styler = [textStorage2 styler];
  }

  else
  {
    styler = 0;
  }

  return styler;
}

- (id)textContainer
{
  textContainers = [(ICBaseLayoutManager *)self textContainers];
  lastObject = [textContainers lastObject];

  return lastObject;
}

- (void)drawListStylesForCharacterRange:(_NSRange)range atPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  length = range.length;
  location = range.location;
  textStorage = [(ICBaseLayoutManager *)self textStorage];
  v10 = *MEMORY[0x1E69B7600];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __63__ICBaseLayoutManager_drawListStylesForCharacterRange_atPoint___block_invoke;
  v11[3] = &unk_1E8469868;
  v11[4] = self;
  *&v11[5] = x;
  *&v11[6] = y;
  [textStorage enumerateAttribute:v10 inRange:location options:length usingBlock:{0, v11}];
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

- (void)drawBulletsForListRange:(_NSRange)range paragraphStyle:(id)style atPoint:(CGPoint)point
{
  length = range.length;
  location = range.location;
  styleCopy = style;
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
      textStorage = [(ICBaseLayoutManager *)self textStorage];
      string = [textStorage string];
      v10 = [string paragraphRangeForRange:{location, 0}];
      v12 = v11;

      v64 = v12;
      v65 = v10;
      [(ICBaseLayoutManager *)self lineFragmentUsedRectForGlyphAtIndex:[(ICBaseLayoutManager *)self glyphRangeForCharacterRange:v10 actualCharacterRange:v12 effectiveRange:0], 0];
      v14 = v13;
      v16 = v15;
      v18 = point.x + v17;
      v20 = point.y + v19;
      textContainer = [(ICBaseLayoutManager *)self textContainer];
      [textContainer lineFragmentPadding];
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
      textStorage2 = [(ICBaseLayoutManager *)self textStorage];
      v29 = [textStorage2 attribute:v59 atIndex:location effectiveRange:0];

      v30 = [ICTTTextStorage bulletTextAttributesWithTextFont:v29 paragraphStyle:styleCopy zoomFactor:1.0];
      textStorage3 = [(ICBaseLayoutManager *)self textStorage];
      v32 = [styleCopy listBulletInAttributedString:textStorage3 atIndex:location];

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
      style = [styleCopy style];
      if ((style - 100) >= 2)
      {
        if (style == 102)
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

      layoutWritingDirection = [styleCopy layoutWritingDirection];
      v48 = x;
      v49 = y;
      v50 = width;
      v51 = rect;
      if (layoutWritingDirection)
      {
        v52 = v39 + CGRectGetMaxX(*&v48);
      }

      else
      {
        v52 = CGRectGetMinX(*&v48) - v39 - TypographicBounds;
      }

      textStorage4 = [(ICBaseLayoutManager *)self textStorage];
      v54 = [textStorage4 attribute:v58 atIndex:location effectiveRange:0];

      clearColor = [MEMORY[0x1E69DC888] clearColor];
      LOBYTE(textStorage4) = [v54 isEqual:clearColor];

      if ((textStorage4 & 1) == 0)
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

- (double)bulletYOffsetForCharacterAtIndex:(unint64_t)index
{
  v19 = 0;
  v20 = 0;
  v18 = 0;
  textStorage = [(ICBaseLayoutManager *)self textStorage];
  string = [textStorage string];
  [string getLineStart:&v20 end:&v19 contentsEnd:&v18 forRange:{index, 0}];

  if (v18 == v20)
  {
    textStorage2 = [(ICBaseLayoutManager *)self textStorage];
    v8 = [textStorage2 attribute:*MEMORY[0x1E69DB648] atIndex:index effectiveRange:0];

    [v8 ascender];
    v10 = v9;
LABEL_6:

    return v10;
  }

  [(ICBaseLayoutManager *)self locationForGlyphAtIndex:[(ICBaseLayoutManager *)self glyphIndexForCharacterAtIndex:index]];
  v10 = v11;
  textStorage3 = [(ICBaseLayoutManager *)self textStorage];
  string2 = [textStorage3 string];
  v14 = [string2 characterAtIndex:index];

  if (v14 == 65532)
  {
    textStorage4 = [(ICBaseLayoutManager *)self textStorage];
    v8 = [textStorage4 attribute:*MEMORY[0x1E69DB648] atIndex:index effectiveRange:0];

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