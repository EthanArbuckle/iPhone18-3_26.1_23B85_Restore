@interface CLKUICurvedLabel
- (BOOL)_hasImage;
- (BOOL)isTextTruncated;
- (CGAffineTransform)_transformForLayoutLocation:(SEL)location usedWidth:(CGPoint)width distance:(double)distance centerAngle:(double)angle bounds:(double)bounds;
- (CGAffineTransform)transformForImage;
- (CGPoint)_offsetOfBoundingRect:(CGRect)rect inRect:(CGRect)inRect;
- (CGPoint)centerForImage;
- (CGRect)_glyphsBoundingRect;
- (CGRect)_imageBounds;
- (CGRect)textBoundingRect;
- (CGSize)imageViewOverrideSize;
- (CGSize)sizeThatFits:(CGSize)fits;
- (CLKUICurvedLabel)initWithFrame:(CGRect)frame;
- (NSAttributedString)attributedText;
- (NSString)text;
- (UIEdgeInsets)opticalInsets;
- (UIView)imageView;
- (_NSRange)_drawableCharacterRange:(_NSRange *)range;
- (__CTLine)_newLineFromDrawableTextStorage;
- (double)_distance;
- (double)_extraWidthForImage;
- (double)_lastLineBaseline;
- (double)maxLinearWidth;
- (void)_enumerateTransforms:(BOOL)transforms callback:(id)callback;
- (void)_setAttributedText:(id)text;
- (void)_transformForImage:(id)image;
- (void)_updateMaxSize;
- (void)_updateTextColor;
- (void)_updateTracking;
- (void)dealloc;
- (void)drawTextInRect:(CGRect)rect;
- (void)getTextCenter:(CGPoint *)center startAngle:(double *)angle endAngle:(double *)endAngle;
- (void)invalidateCachedSize;
- (void)layoutSubviews;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)setAlpha:(double)alpha;
- (void)setAnimationAlpha:(double)alpha;
- (void)setBaselineOffset:(double)offset;
- (void)setCenterAngle:(double)angle;
- (void)setCircleRadius:(double)radius;
- (void)setFont:(id)font;
- (void)setImagePadding:(double)padding;
- (void)setImagePlacement:(unint64_t)placement;
- (void)setImageView:(id)view;
- (void)setImageView:(id)view placement:(unint64_t)placement padding:(double)padding;
- (void)setImageViewOverrideSize:(CGSize)size;
- (void)setInterior:(BOOL)interior;
- (void)setMaxAngularWidth:(double)width;
- (void)setPath:(id)path;
- (void)setText:(id)text;
- (void)setTextColor:(id)color;
- (void)setTracking:(double)tracking;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation CLKUICurvedLabel

- (CLKUICurvedLabel)initWithFrame:(CGRect)frame
{
  v17.receiver = self;
  v17.super_class = CLKUICurvedLabel;
  v3 = [(CLKUICurvedLabel *)&v17 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = objc_opt_new();
    textContainer = v3->_textContainer;
    v3->_textContainer = v4;

    [(NSTextContainer *)v3->_textContainer setMaximumNumberOfLines:1];
    [(NSTextContainer *)v3->_textContainer setLineFragmentPadding:0.0];
    [(NSTextContainer *)v3->_textContainer setLineBreakMode:4];
    v6 = objc_opt_new();
    layoutManager = v3->_layoutManager;
    v3->_layoutManager = v6;

    [(NSLayoutManager *)v3->_layoutManager addTextContainer:v3->_textContainer];
    v8 = objc_opt_new();
    textStorage = v3->_textStorage;
    v3->_textStorage = v8;

    [(NSTextStorage *)v3->_textStorage addLayoutManager:v3->_layoutManager];
    whiteColor = [MEMORY[0x1E69DC888] whiteColor];
    textColor = v3->_textColor;
    v3->_textColor = whiteColor;

    v3->_viewAlpha = 1.0;
    v3->_animationAlpha = 1.0;
    v3->_usesPath = 0;
    v12 = objc_alloc_init(CLKUICurvedCircleGlyphLayoutProvider);
    circleGlyphLayoutProvider = v3->_circleGlyphLayoutProvider;
    v3->_circleGlyphLayoutProvider = v12;

    v14 = objc_alloc_init(CLKUICurvedPathGlyphLayoutProvider);
    pathGlyphLayoutProvider = v3->_pathGlyphLayoutProvider;
    v3->_pathGlyphLayoutProvider = v14;
  }

  return v3;
}

- (void)dealloc
{
  WeakRetained = objc_loadWeakRetained(&self->_imageView);
  [WeakRetained removeObserver:self forKeyPath:@"bounds" context:&kImageViewBoundsContext];

  v4 = objc_loadWeakRetained(&self->_imageView);
  [v4 removeObserver:self forKeyPath:@"frame" context:&kImageViewBoundsContext];

  v5.receiver = self;
  v5.super_class = CLKUICurvedLabel;
  [(CLKUICurvedLabel *)&v5 dealloc];
}

- (double)_lastLineBaseline
{
  v3.receiver = self;
  v3.super_class = CLKUICurvedLabel;
  [(CLKUICurvedLabel *)&v3 _lastLineBaseline];
  return result;
}

- (void)setInterior:(BOOL)interior
{
  if (self->_interior != interior)
  {
    self->_interior = interior;
    [(CLKUICurvedLabel *)self invalidateCachedSize];
    [(CLKUICurvedLabel *)self _updateTracking];
    [(CLKUICurvedLabel *)self setNeedsLayout];

    [(CLKUICurvedLabel *)self setNeedsDisplay];
  }
}

- (void)setCircleRadius:(double)radius
{
  if ((CLKFloatEqualsFloat() & 1) == 0)
  {
    self->_circleRadius = radius;
    [(CLKUICurvedLabel *)self invalidateCachedSize];
    [(CLKUICurvedLabel *)self _updateMaxSize];
    [(CLKUICurvedLabel *)self setNeedsLayout];

    [(CLKUICurvedLabel *)self setNeedsDisplay];
  }
}

- (void)setCenterAngle:(double)angle
{
  if ((CLKFloatEqualsFloat() & 1) == 0)
  {
    self->_centerAngle = angle;
    [(CLKUICurvedLabel *)self invalidateCachedSize];
    [(CLKUICurvedLabel *)self setNeedsLayout];

    [(CLKUICurvedLabel *)self setNeedsDisplay];
  }
}

- (void)setMaxAngularWidth:(double)width
{
  widthCopy = width;
  v5 = fmod(width, 6.28318531);
  if (widthCopy > 6.28318531)
  {
    widthCopy = v5;
  }

  if ((CLKFloatEqualsFloat() & 1) == 0)
  {
    self->_maxAngularWidth = widthCopy;

    [(CLKUICurvedLabel *)self _updateMaxSize];
  }
}

- (void)setPath:(id)path
{
  pathCopy = path;
  if (self->_path != pathCopy)
  {
    v6 = pathCopy;
    objc_storeStrong(&self->_path, path);
    self->_usesPath = 1;
    [(CLKUICurvedPathGlyphLayoutProvider *)self->_pathGlyphLayoutProvider setPath:self->_path];
    [(CLKUICurvedLabel *)self invalidateCachedSize];
    [(CLKUICurvedLabel *)self _updateMaxSize];
    [(CLKUICurvedLabel *)self _updateTracking];
    [(CLKUICurvedLabel *)self setNeedsLayout];
    [(CLKUICurvedLabel *)self setNeedsDisplay];
    pathCopy = v6;
  }
}

- (double)maxLinearWidth
{
  maxTextWidth = self->_maxTextWidth;
  [(CLKUICurvedLabel *)self _extraWidthForImage];
  return maxTextWidth + v3;
}

- (double)_extraWidthForImage
{
  Width = 0.0;
  if ([(CLKUICurvedLabel *)self _hasImage])
  {
    [(CLKUICurvedLabel *)self _imageBounds];
    Width = CGRectGetWidth(v5);
    if ([(NSTextStorage *)self->_textStorage length])
    {
      return Width + self->_imagePadding;
    }
  }

  return Width;
}

- (void)_updateMaxSize
{
  if (self->_usesPath)
  {
    p_pathGlyphLayoutProvider = &self->_pathGlyphLayoutProvider;
  }

  else
  {
    p_pathGlyphLayoutProvider = &self->_circleGlyphLayoutProvider;
    [(CLKUICurvedCircleGlyphLayoutProvider *)self->_circleGlyphLayoutProvider setMaxAngularWidth:self->_maxAngularWidth];
    [*p_pathGlyphLayoutProvider setCircleRadius:self->_circleRadius];
  }

  v4 = *p_pathGlyphLayoutProvider;
  [(CLKUICurvedLabel *)self _extraWidthForImage];
  [v4 setExtraWidthForImage:?];
  [*p_pathGlyphLayoutProvider maxTextWidth];
  v6 = v5;
  [(NSTextContainer *)self->_textContainer size];
  if (!CLKFloatEqualsFloat() || (CLKFloatEqualsFloat() & 1) == 0)
  {
    [(NSTextContainer *)self->_textContainer setSize:v6, 1.79769313e308];
    self->_maxTextWidth = v6;
    [(CLKUICurvedLabel *)self invalidateCachedSize];
    [(CLKUICurvedLabel *)self setNeedsLayout];

    [(CLKUICurvedLabel *)self setNeedsDisplay];
  }
}

- (BOOL)isTextTruncated
{
  isTextTruncated = self->_isTextTruncated;
  if (!isTextTruncated)
  {
    v7 = xmmword_1E4A0AB40;
    [(CLKUICurvedLabel *)self _drawableCharacterRange:&v7];
    0x7FFFFFFFFFFFFFFFLL = [MEMORY[0x1E696AD98] numberWithInt:v7 != 0x7FFFFFFFFFFFFFFFLL];
    v5 = self->_isTextTruncated;
    self->_isTextTruncated = 0x7FFFFFFFFFFFFFFFLL;

    isTextTruncated = self->_isTextTruncated;
  }

  return [(NSNumber *)isTextTruncated BOOLValue];
}

- (void)setTextColor:(id)color
{
  colorCopy = color;
  if (([colorCopy isEqual:self->_textColor] & 1) == 0)
  {
    objc_storeStrong(&self->_textColor, color);
    [(CLKUICurvedLabel *)self _updateTextColor];
  }
}

- (void)_updateTextColor
{
  v3 = [(NSTextStorage *)self->_textStorage length];
  v4 = self->_textColor;
  if ((CLKFloatEqualsFloat() & 1) == 0)
  {
    viewAlpha = self->_viewAlpha;
    v16 = 0.0;
    v17 = 0.0;
    v15 = 0.0;
    v14 = 1.0;
    [(UIColor *)v4 getRed:&v17 green:&v16 blue:&v15 alpha:&v14];
    v14 = viewAlpha * v14;
    v6 = [MEMORY[0x1E69DC888] colorWithRed:v14 * v17 green:v14 * v16 blue:v14 * v15 alpha:1.0];

    v4 = v6;
  }

  if ([(CLKUICurvedLabel *)self attributedTextProvidesColor])
  {
    v7 = [MEMORY[0x1E696AD50] indexSetWithIndexesInRange:{0, v3}];
    attributedStringWithoutColorModification = self->_attributedStringWithoutColorModification;
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __36__CLKUICurvedLabel__updateTextColor__block_invoke;
    v12[3] = &unk_1E8762ED0;
    v13 = v7;
    v9 = v7;
    [(NSAttributedString *)attributedStringWithoutColorModification enumerateAttributesInRange:0 options:v3 usingBlock:0x100000, v12];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __36__CLKUICurvedLabel__updateTextColor__block_invoke_2;
    v10[3] = &unk_1E8762EF8;
    v10[4] = self;
    v11 = v4;
    [v9 enumerateRangesUsingBlock:v10];
  }

  else
  {
    [(NSTextStorage *)self->_textStorage addAttribute:*MEMORY[0x1E69DB650] value:v4 range:0, v3];
  }

  [(CLKUICurvedLabel *)self setNeedsDisplay];
}

void __36__CLKUICurvedLabel__updateTextColor__block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = [a2 objectForKeyedSubscript:*MEMORY[0x1E69DB650]];

  if (v7)
  {
    v8 = *(a1 + 32);

    [v8 removeIndexesInRange:{a3, a4}];
  }
}

- (void)setAlpha:(double)alpha
{
  if ((CLKFloatEqualsFloat() & 1) == 0)
  {
    self->_viewAlpha = alpha;

    [(CLKUICurvedLabel *)self _updateTextColor];
  }
}

- (void)setAnimationAlpha:(double)alpha
{
  if ((CLKFloatEqualsFloat() & 1) == 0)
  {
    self->_animationAlpha = alpha;
    v5.receiver = self;
    v5.super_class = CLKUICurvedLabel;
    [(CLKUICurvedLabel *)&v5 setAlpha:alpha];
  }
}

- (UIEdgeInsets)opticalInsets
{
  v2 = *MEMORY[0x1E69DDCE0];
  v3 = *(MEMORY[0x1E69DDCE0] + 8);
  v4 = *(MEMORY[0x1E69DDCE0] + 16);
  v5 = *(MEMORY[0x1E69DDCE0] + 24);
  result.right = v5;
  result.bottom = v4;
  result.left = v3;
  result.top = v2;
  return result;
}

- (void)_setAttributedText:(id)text
{
  textCopy = text;
  if (([textCopy isEqualToAttributedString:self->_attributedStringUnmodified] & 1) == 0)
  {
    v5 = [textCopy copy];
    attributedStringUnmodified = self->_attributedStringUnmodified;
    self->_attributedStringUnmodified = v5;

    if (!textCopy)
    {
      goto LABEL_10;
    }

    v7 = [textCopy length];
    v8 = 0;
    v9 = 0;
    while (1)
    {
      string = [textCopy string];
      newlineCharacterSet = [MEMORY[0x1E696AB08] newlineCharacterSet];
      v12 = [string rangeOfCharacterFromSet:newlineCharacterSet options:0 range:{v8, v7}];
      v14 = v13;

      if (v12 == 0x7FFFFFFFFFFFFFFFLL)
      {
        break;
      }

      if (!v9)
      {
        v9 = [textCopy mutableCopy];
      }

      mutableString = [v9 mutableString];
      [mutableString replaceCharactersInRange:v12 withString:{v14, @" "}];

      v8 = v12 + 1;
      v7 = [textCopy length] - v8;
    }

    if (v9)
    {
      v16 = v9;
      v17 = v16;
    }

    else
    {
LABEL_10:
      v16 = [textCopy mutableCopy];
      v17 = 0;
    }

    v18 = [v16 length];
    self->_storageIsEmpty = v18 == 0;
    if (!v18)
    {
      v19 = [objc_alloc(MEMORY[0x1E696AD40]) initWithString:@"​"];

      v16 = v19;
    }

    v20 = *MEMORY[0x1E69DB688];
    if (_CurvedParagraphStyle_onceToken != -1)
    {
      [CLKUICurvedLabel _setAttributedText:];
    }

    v21 = _CurvedParagraphStyle_paragraphStyle;
    [v16 addAttribute:v20 value:v21 range:{0, objc_msgSend(v16, "length")}];

    [(NSTextStorage *)self->_textStorage setAttributedString:v16];
    v22 = [v16 copy];
    attributedStringWithoutColorModification = self->_attributedStringWithoutColorModification;
    self->_attributedStringWithoutColorModification = v22;

    v28 = 0;
    v29 = &v28;
    v30 = 0x2020000000;
    v31 = 0;
    textStorage = self->_textStorage;
    v25 = [(NSTextStorage *)textStorage length];
    v26 = *MEMORY[0x1E69DB648];
    v27[0] = MEMORY[0x1E69E9820];
    v27[1] = 3221225472;
    v27[2] = __39__CLKUICurvedLabel__setAttributedText___block_invoke;
    v27[3] = &unk_1E8762F20;
    v27[4] = &v28;
    [(NSTextStorage *)textStorage enumerateAttribute:v26 inRange:0 options:v25 usingBlock:0, v27];
    self->_hasMonospacedNumbers = *(v29 + 24);
    [(CLKUICurvedLabel *)self _updateTextColor];
    [(CLKUICurvedLabel *)self _updateTracking];
    [(CLKUICurvedLabel *)self invalidateCachedSize];
    [(CLKUICurvedLabel *)self setNeedsDisplay];
    [(CLKUICurvedLabel *)self setNeedsLayout];
    _Block_object_dispose(&v28, 8);
  }
}

void __39__CLKUICurvedLabel__setAttributedText___block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  v25 = *MEMORY[0x1E69E9840];
  v5 = [a2 fontDescriptor];
  v6 = [v5 objectForKey:*MEMORY[0x1E69DB8B0]];

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
    v11 = *MEMORY[0x1E69DB908];
    v12 = *MEMORY[0x1E69DB900];
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
        if ([v15 isEqualToNumber:&unk_1F5E96ED0])
        {
          v16 = [v14 objectForKeyedSubscript:v12];
          v17 = [v16 isEqualToNumber:&unk_1F5E96EE8];

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

- (NSAttributedString)attributedText
{
  storageIsEmpty = self->_storageIsEmpty;
  textStorage = self->_textStorage;
  if (storageIsEmpty)
  {
    v4 = [(NSTextStorage *)textStorage attributedSubstringFromRange:0, 0];
  }

  else
  {
    v4 = textStorage;
  }

  return v4;
}

- (void)setText:(id)text
{
  v11[1] = *MEMORY[0x1E69E9840];
  if (text)
  {
    v4 = MEMORY[0x1E696AAB0];
    textCopy = text;
    v6 = [v4 alloc];
    font = self->_font;
    v10 = *MEMORY[0x1E69DB648];
    v11[0] = font;
    v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:&v10 count:1];
    v9 = [v6 initWithString:textCopy attributes:v8];
  }

  else
  {
    v9 = 0;
  }

  self->_storageIsNonAttributedText = 1;
  [(CLKUICurvedLabel *)self _setAttributedText:v9];
}

- (NSString)text
{
  attributedText = [(CLKUICurvedLabel *)self attributedText];
  string = [attributedText string];

  return string;
}

- (void)setFont:(id)font
{
  fontCopy = font;
  if (([fontCopy isEqual:self->_font] & 1) == 0)
  {
    objc_storeStrong(&self->_font, font);
    if (self->_storageIsNonAttributedText)
    {
      text = [(CLKUICurvedLabel *)self text];
      [(CLKUICurvedLabel *)self setText:text];
    }
  }
}

- (void)setTracking:(double)tracking
{
  if ((CLKFloatEqualsFloat() & 1) == 0)
  {
    self->_tracking = tracking;
    [(CLKUICurvedLabel *)self _updateTracking];
    [(CLKUICurvedLabel *)self invalidateCachedSize];
    [(CLKUICurvedLabel *)self setNeedsLayout];

    [(CLKUICurvedLabel *)self setNeedsDisplay];
  }
}

- (void)_updateTracking
{
  [(CLKUICurvedLabel *)self tracking];
  if (v3 < 0.0)
  {
    v3 = -v3;
  }

  if (v3 > 0.00000011920929)
  {
    v4 = [(NSTextStorage *)self->_textStorage length];
    textStorage = self->_textStorage;
    v6 = *MEMORY[0x1E69DB660];
    v7 = MEMORY[0x1E696AD98];
    [(CLKUICurvedLabel *)self tracking];
    CLKKernValueForDesignSpecTrackingValue();
    v8 = [v7 numberWithDouble:?];
    [(NSTextStorage *)textStorage addAttribute:v6 value:v8 range:0, v4];
  }
}

- (void)setBaselineOffset:(double)offset
{
  if ((CLKFloatEqualsFloat() & 1) == 0)
  {
    self->_baselineOffset = offset;
    pathGlyphLayoutProvider = self->_pathGlyphLayoutProvider;

    [(CLKUICurvedPathGlyphLayoutProvider *)pathGlyphLayoutProvider setBaselineOffset:offset];
  }
}

- (void)setImagePlacement:(unint64_t)placement
{
  if (self->_imagePlacement != placement)
  {
    self->_imagePlacement = placement;
    [(CLKUICurvedLabel *)self invalidateCachedSize];
    [(CLKUICurvedLabel *)self setNeedsDisplay];

    [(CLKUICurvedLabel *)self setNeedsLayout];
  }
}

- (void)setImagePadding:(double)padding
{
  if ((CLKFloatEqualsFloat() & 1) == 0)
  {
    self->_imagePadding = padding;
    [(CLKUICurvedLabel *)self invalidateCachedSize];
    [(CLKUICurvedLabel *)self setNeedsDisplay];

    [(CLKUICurvedLabel *)self setNeedsLayout];
  }
}

- (void)setImageView:(id)view
{
  obj = view;
  WeakRetained = objc_loadWeakRetained(&self->_imageView);

  v5 = obj;
  if (WeakRetained != obj)
  {
    v6 = objc_loadWeakRetained(&self->_imageView);
    [v6 removeObserver:self forKeyPath:@"bounds" context:&kImageViewBoundsContext];

    v7 = objc_loadWeakRetained(&self->_imageView);
    [v7 removeObserver:self forKeyPath:@"frame" context:&kImageViewBoundsContext];

    v8 = objc_loadWeakRetained(&self->_imageView);
    [v8 removeFromSuperview];

    v9 = objc_storeWeak(&self->_imageView, obj);
    if (obj)
    {
      v10 = objc_loadWeakRetained(&self->_imageView);
      layer = [v10 layer];
      [layer setAnchorPoint:{0.5, 1.0}];

      v12 = objc_loadWeakRetained(&self->_imageView);
      [v12 sizeToFit];

      v13 = objc_loadWeakRetained(&self->_imageView);
      [v13 addObserver:self forKeyPath:@"bounds" options:3 context:&kImageViewBoundsContext];

      v14 = objc_loadWeakRetained(&self->_imageView);
      [v14 addObserver:self forKeyPath:@"frame" options:3 context:&kImageViewBoundsContext];

      v15 = objc_loadWeakRetained(&self->_imageView);
      [(CLKUICurvedLabel *)self addSubview:v15];
    }

    else
    {
      self->_imagePlacement = 0;
    }

    [(CLKUICurvedLabel *)self invalidateCachedSize];
    [(CLKUICurvedLabel *)self _updateMaxSize];
    [(CLKUICurvedLabel *)self setNeedsDisplay];
    [(CLKUICurvedLabel *)self setNeedsLayout];
    v5 = obj;
  }
}

- (void)setImageViewOverrideSize:(CGSize)size
{
  if (self->_imageViewOverrideSize.width != size.width || self->_imageViewOverrideSize.height != size.height)
  {
    self->_imageViewOverrideSize = size;
    [(CLKUICurvedLabel *)self invalidateCachedSize];
    [(CLKUICurvedLabel *)self _updateMaxSize];
    [(CLKUICurvedLabel *)self setNeedsDisplay];

    [(CLKUICurvedLabel *)self setNeedsLayout];
  }
}

- (void)setImageView:(id)view placement:(unint64_t)placement padding:(double)padding
{
  self->_imagePlacement = placement;
  self->_imagePadding = padding;
  [(CLKUICurvedLabel *)self setImageView:view];
}

- (BOOL)_hasImage
{
  if (!self->_imagePlacement)
  {
    return 0;
  }

  [(CLKUICurvedLabel *)self _imageBounds];
  return !CGRectIsEmpty(v3);
}

- (void)invalidateCachedSize
{
  self->_cachedSizeIsValid = 0;
  isTextTruncated = self->_isTextTruncated;
  self->_isTextTruncated = 0;

  self->_cachedSize = *MEMORY[0x1E695F060];
  v5 = *MEMORY[0x1E695F058];
  v4 = *(MEMORY[0x1E695F058] + 16);
  self->_cachedBounds.origin = *MEMORY[0x1E695F058];
  self->_cachedBounds.size = v4;
  self->_cachedGlyphsBoundingRect.origin = v5;
  self->_cachedGlyphsBoundingRect.size = v4;
}

- (void)layoutSubviews
{
  v9.receiver = self;
  v9.super_class = CLKUICurvedLabel;
  [(CLKUICurvedLabel *)&v9 layoutSubviews];
  _hasImage = [(CLKUICurvedLabel *)self _hasImage];
  WeakRetained = objc_loadWeakRetained(&self->_imageView);
  v5 = WeakRetained;
  if (_hasImage)
  {
    [WeakRetained setHidden:0];

    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __34__CLKUICurvedLabel_layoutSubviews__block_invoke;
    v8[3] = &unk_1E8762F48;
    v8[4] = self;
    [(CLKUICurvedLabel *)self _transformForImage:v8];
    [(CLKUICurvedLabel *)self transformForImage];
    imageView = [(CLKUICurvedLabel *)self imageView];
    *v7 = *&v7[7];
    *&v7[2] = *&v7[9];
    *&v7[4] = *&v7[11];
    [imageView setTransform:v7];
  }

  else
  {
    [WeakRetained setHidden:1];
  }
}

void __34__CLKUICurvedLabel_layoutSubviews__block_invoke(uint64_t a1, double a2, double a3, double a4, double a5)
{
  v14 = [*(a1 + 32) imageView];
  [v14 bounds];
  [v14 setBounds:?];
  v9 = [v14 layer];
  [v9 anchorPoint];
  v11 = v10;
  v13 = v12;

  [v14 setCenter:{a2 + v11 * a4, a3 + v13 * a5}];
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  if (!self->_cachedSizeIsValid)
  {
    [(CLKUICurvedLabel *)self _glyphsBoundingRect:fits.width];
    mEMORY[0x1E695B530] = [MEMORY[0x1E695B530] sharedRenderingContext];
    device = [mEMORY[0x1E695B530] device];

    CLKCeilForDevice();
    v7 = v6;
    CLKCeilForDevice();
    self->_cachedSize.width = v7;
    self->_cachedSize.height = v8;
    self->_cachedSizeIsValid = 1;
  }

  width = self->_cachedSize.width;
  height = self->_cachedSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (void)traitCollectionDidChange:(id)change
{
  v20.receiver = self;
  v20.super_class = CLKUICurvedLabel;
  changeCopy = change;
  [(CLKUICurvedLabel *)&v20 traitCollectionDidChange:changeCopy];
  traitCollection = [(CLKUICurvedLabel *)self traitCollection];
  legibilityWeight = [traitCollection legibilityWeight];
  legibilityWeight2 = [changeCopy legibilityWeight];

  if (legibilityWeight != legibilityWeight2)
  {
    font = self->_font;
    if (font)
    {
      v9 = [(UIFont *)font _fontAdjustedForContentSizeCategoryCompatibleWithTraitCollection:traitCollection];
      [(CLKUICurvedLabel *)self setFont:v9];
    }

    if (!self->_storageIsNonAttributedText)
    {
      v10 = [(NSAttributedString *)self->_attributedStringUnmodified mutableCopy];
      attributedStringUnmodified = self->_attributedStringUnmodified;
      v12 = [(NSAttributedString *)attributedStringUnmodified length];
      v14 = MEMORY[0x1E69E9820];
      v15 = 3221225472;
      v16 = __45__CLKUICurvedLabel_traitCollectionDidChange___block_invoke;
      v17 = &unk_1E8762F70;
      v18 = traitCollection;
      v19 = v10;
      v13 = v10;
      [(NSAttributedString *)attributedStringUnmodified enumerateAttributesInRange:0 options:v12 usingBlock:0x100000, &v14];
      [(CLKUICurvedLabel *)self setAttributedText:v13, v14, v15, v16, v17];
    }
  }
}

void __45__CLKUICurvedLabel_traitCollectionDidChange___block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = *MEMORY[0x1E69DB648];
  v10 = [a2 objectForKeyedSubscript:*MEMORY[0x1E69DB648]];
  v8 = [v10 _fontAdjustedForContentSizeCategoryCompatibleWithTraitCollection:*(a1 + 32)];
  if (v10)
  {
    v9 = v8 == 0;
  }

  else
  {
    v9 = 1;
  }

  if (!v9 && ([v10 isEqual:v8] & 1) == 0)
  {
    [*(a1 + 40) addAttribute:v7 value:v8 range:{a3, a4}];
  }
}

- (void)drawTextInRect:(CGRect)rect
{
  [(CLKUICurvedLabel *)self _glyphsBoundingRect];
  [CLKUICurvedLabel _offsetOfBoundingRect:"_offsetOfBoundingRect:inRect:" inRect:?];
  v5 = v4;
  v7 = v6;
  _newLineFromDrawableTextStorage = [(CLKUICurvedLabel *)self _newLineFromDrawableTextStorage];
  ImageBounds = CTLineGetImageBounds(_newLineFromDrawableTextStorage, 0);
  x = ImageBounds.origin.x;
  y = ImageBounds.origin.y;
  CFRelease(_newLineFromDrawableTextStorage);
  v15[0] = 0;
  v15[1] = v15;
  v15[2] = 0x3010000000;
  v15[3] = "";
  v16 = x;
  v17 = y;
  if (self->_hasMonospacedNumbers)
  {
    v16 = 0.0;
  }

  CurrentContext = UIGraphicsGetCurrentContext();
  if (!self->_usesPath)
  {
    CGAffineTransformMakeTranslation(&transform, v5, v7);
    CGContextConcatCTM(CurrentContext, &transform);
  }

  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __35__CLKUICurvedLabel_drawTextInRect___block_invoke;
  v13[3] = &unk_1E8762F98;
  v13[4] = self;
  v13[5] = v15;
  [(CLKUICurvedLabel *)self _transformForImage:v13];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __35__CLKUICurvedLabel_drawTextInRect___block_invoke_2;
  v12[3] = &unk_1E8762FC0;
  v12[5] = v15;
  v12[6] = CurrentContext;
  v12[4] = self;
  [(CLKUICurvedLabel *)self _enumerateTransformsForDrawableCharacters:v12];
  _Block_object_dispose(v15, 8);
}

uint64_t __35__CLKUICurvedLabel_drawTextInRect___block_invoke(uint64_t a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5)
{
  result = [*(a1 + 32) imagePlacement];
  if (result == 1)
  {
    v13.origin.x = a2;
    v13.origin.y = a3;
    v13.size.width = a4;
    v13.size.height = a5;
    Width = CGRectGetWidth(v13);
    result = [*(a1 + 32) imagePadding];
    *(*(*(a1 + 40) + 8) + 32) = *(*(*(a1 + 40) + 8) + 32) - (Width + v12);
  }

  return result;
}

void __35__CLKUICurvedLabel_drawTextInRect___block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, double a5, double a6)
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
  [(CLKUICurvedLabel *)self _glyphsBoundingRect];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [(CLKUICurvedLabel *)self bounds];
  [(CLKUICurvedLabel *)self _offsetOfBoundingRect:v4 inRect:v6, v8, v10, v11, v12, v13, v14];
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
  v13 = xmmword_1E4A0AB40;
  v4 = [(CLKUICurvedLabel *)self _drawableCharacterRange:&v13];
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

- (void)getTextCenter:(CGPoint *)center startAngle:(double *)angle endAngle:(double *)endAngle
{
  if ([(NSTextStorage *)self->_textStorage length]|| [(CLKUICurvedLabel *)self _hasImage])
  {
    [(CLKUICurvedLabel *)self _distance];
    v10 = v9;
    [(CLKUICurvedLabel *)self _glyphsBoundingRect];
    if (center)
    {
      v15 = v11;
      v16 = v12;
      v17 = v13;
      v18 = v14;
      v47 = v10;
      if ([(NSTextStorage *)self->_textStorage length])
      {
        [(NSLayoutManager *)self->_layoutManager locationForGlyphAtIndex:0];
        v46 = v19;
      }

      else
      {
        [(UIFont *)self->_font ascender];
        v46 = v20;
      }

      [(CLKUICurvedLabel *)self bounds];
      [(CLKUICurvedLabel *)self _offsetOfBoundingRect:v15 inRect:v16, v17, v18, v21, v22, v23, v24];
      v45 = v25;
      v27 = v26;
      [(CLKUICurvedLabel *)self bounds];
      x = v48.origin.x;
      y = v48.origin.y;
      width = v48.size.width;
      height = v48.size.height;
      centerAngle = self->_centerAngle;
      MidX = CGRectGetMidX(v48);
      v34 = __sincos_stret(centerAngle);
      v10 = v47;
      v49.origin.x = x;
      v49.origin.y = y;
      v49.size.width = width;
      v49.size.height = height;
      MinY = CGRectGetMinY(v49);
      center->x = v45 + MidX - v47 * v34.__sinval;
      center->y = v27 + v46 + MinY - v47 * v34.__cosval;
    }

    _newLineFromDrawableTextStorage = [(CLKUICurvedLabel *)self _newLineFromDrawableTextStorage];
    v37 = _newLineFromDrawableTextStorage;
    if (self->_hasMonospacedNumbers)
    {
      TypographicBounds = CTLineGetTypographicBounds(_newLineFromDrawableTextStorage, 0, 0, 0);
    }

    else
    {
      ImageBounds = CTLineGetImageBounds(_newLineFromDrawableTextStorage, 0);
      TypographicBounds = CGRectGetWidth(ImageBounds);
    }

    v39 = TypographicBounds;
    CFRelease(v37);
    if ([(CLKUICurvedLabel *)self _hasImage])
    {
      [(CLKUICurvedLabel *)self _imageBounds];
      v40 = CGRectGetWidth(v51);
      [(CLKUICurvedLabel *)self _drawableCharacterRange:0];
      if (v41)
      {
        v40 = v40 + self->_imagePadding;
      }

      v39 = v39 + v40;
    }

    v42 = -1.57079633;
    if (self->_interior)
    {
      v42 = 1.57079633;
    }

    if (angle)
    {
      v43 = 0.0;
      if (v10 != 0.0)
      {
        v43 = (v39 * -0.5 + 0.0) / v10 + self->_centerAngle;
      }

      *angle = v42 - v43;
    }

    if (endAngle)
    {
      v44 = 0.0;
      if (v10 != 0.0)
      {
        v44 = (v39 + v39 * -0.5) / v10 + self->_centerAngle;
      }

      *endAngle = v42 - v44;
    }
  }
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
  [(CLKUICurvedLabel *)self bounds];
  v33.origin.x = v4;
  v33.origin.y = v5;
  v33.size.width = v6;
  v33.size.height = v7;
  if (CGRectEqualToRect(*p_cachedBounds, v33) && !CGRectIsEmpty(self->_cachedGlyphsBoundingRect))
  {
    x = self->_cachedGlyphsBoundingRect.origin.x;
    y = self->_cachedGlyphsBoundingRect.origin.y;
    width = self->_cachedGlyphsBoundingRect.size.width;
    height = self->_cachedGlyphsBoundingRect.size.height;
  }

  else
  {
    v25 = 0;
    v26 = &v25;
    v27 = 0x4010000000;
    v28 = "";
    v8 = *(MEMORY[0x1E695F050] + 16);
    v29 = *MEMORY[0x1E695F050];
    v30 = v8;
    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = __39__CLKUICurvedLabel__glyphsBoundingRect__block_invoke;
    v24[3] = &unk_1E8762FE8;
    v24[4] = &v25;
    [(CLKUICurvedLabel *)self _transformForImage:v24];
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __39__CLKUICurvedLabel__glyphsBoundingRect__block_invoke_2;
    v23[3] = &unk_1E8763010;
    v23[4] = &v25;
    [(CLKUICurvedLabel *)self _enumerateTransformsForDrawableCharacters:v23];
    v31 = CGRectInset(v26[1], 0.0, -1.0);
    v26[1] = v31;
    [(CLKUICurvedLabel *)self bounds];
    p_cachedBounds->origin.x = v9;
    p_cachedBounds->origin.y = v10;
    p_cachedBounds->size.width = v11;
    p_cachedBounds->size.height = v12;
    p_x = &v26->origin.x;
    size = v26[1].size;
    self->_cachedGlyphsBoundingRect.origin = v26[1].origin;
    self->_cachedGlyphsBoundingRect.size = size;
    x = p_x[4];
    y = p_x[5];
    width = p_x[6];
    height = p_x[7];
    _Block_object_dispose(&v25, 8);
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

void __39__CLKUICurvedLabel__glyphsBoundingRect__block_invoke(uint64_t a1, _OWORD *a2, double a3, double a4, double a5, double a6)
{
  v7 = a2[1];
  *&v8.a = *a2;
  *&v8.c = v7;
  *&v8.tx = a2[2];
  v9 = CGRectApplyAffineTransform(*&a3, &v8);
  *(*(*(a1 + 32) + 8) + 32) = CGRectUnion(v9, *(*(*(a1 + 32) + 8) + 32));
}

void __39__CLKUICurvedLabel__glyphsBoundingRect__block_invoke_2(uint64_t a1, double a2, double a3, double a4, double a5, double a6, double a7, uint64_t a8, uint64_t a9, _OWORD *a10)
{
  v10 = a5;
  v13 = a10[1];
  *&v15.a = *a10;
  *&v15.c = v13;
  *&v15.tx = a10[2];
  *&v13 = a7;
  v16 = CGRectApplyAffineTransform(*(&v10 - 1), &v15);
  *(*(*(a1 + 32) + 8) + 32) = CGRectUnion(v16, *(*(*(a1 + 32) + 8) + 32));
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

- (void)_transformForImage:(id)image
{
  imageCopy = image;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __39__CLKUICurvedLabel__transformForImage___block_invoke;
  v6[3] = &unk_1E8763038;
  v7 = imageCopy;
  v5 = imageCopy;
  [(CLKUICurvedLabel *)self _enumerateTransforms:1 callback:v6];
}

uint64_t __39__CLKUICurvedLabel__transformForImage___block_invoke(uint64_t a1, double a2, double a3, double a4, double a5, double a6, double a7, uint64_t a8, uint64_t a9, __int128 *a10)
{
  v11 = *(*(a1 + 32) + 16);
  v12 = a10[1];
  v14 = *a10;
  v15 = v12;
  v16 = a10[2];
  return v11(a4, a5, a6, a7);
}

- (void)_enumerateTransforms:(BOOL)transforms callback:(id)callback
{
  transformsCopy = transforms;
  callbackCopy = callback;
  _hasImage = [(CLKUICurvedLabel *)self _hasImage];
  v7 = _hasImage;
  if (!transformsCopy || _hasImage)
  {
    [(CLKUICurvedLabel *)self bounds];
    v104 = v9;
    v105 = v8;
    v103 = v10;
    v12 = v11;
    [(CLKUICurvedLabel *)self _distance];
    v106 = v13;
    _newLineFromDrawableTextStorage = [(CLKUICurvedLabel *)self _newLineFromDrawableTextStorage];
    ImageBounds = CTLineGetImageBounds(_newLineFromDrawableTextStorage, 0);
    x = ImageBounds.origin.x;
    y = ImageBounds.origin.y;
    width = ImageBounds.size.width;
    height = ImageBounds.size.height;
    MinX = 0.0;
    TypographicBounds = 0.0;
    if (self->_hasMonospacedNumbers)
    {
      TypographicBounds = CTLineGetTypographicBounds(_newLineFromDrawableTextStorage, 0, 0, 0);
    }

    CFRelease(_newLineFromDrawableTextStorage);
    v95 = width;
    v96 = y;
    if (self->_hasMonospacedNumbers)
    {
      v20 = TypographicBounds;
    }

    else
    {
      v131.origin.x = x;
      v131.origin.y = y;
      v131.size.width = width;
      v131.size.height = height;
      v21 = CGRectGetWidth(v131);
      v22 = width;
      v20 = v21;
      if (!self->_hasMonospacedNumbers)
      {
        v23 = x;
        v24 = y;
        v25 = height;
        MinX = CGRectGetMinX(*(&v22 - 2));
      }
    }

    v129[0] = xmmword_1E4A0AB40;
    v26 = [(CLKUICurvedLabel *)self _drawableCharacterRange:v129];
    v28 = v27;
    v29 = 0.0;
    if (v7)
    {
      [(CLKUICurvedLabel *)self _imageBounds];
      v30 = CGRectGetWidth(v132);
      if (v28)
      {
        v30 = v30 + self->_imagePadding;
      }

      v20 = v20 + v30;
      if (self->_imagePlacement == 1)
      {
        v29 = v30;
      }

      else
      {
        v29 = 0.0;
      }
    }

    if (self->_usesPath)
    {
      [(CLKUICurvedPathGlyphLayoutProvider *)self->_pathGlyphLayoutProvider setTextAlignment:self->_textAlignment];
      [(CLKUICurvedPathGlyphLayoutProvider *)self->_pathGlyphLayoutProvider setUsedWidth:v20];
    }

    if (transformsCopy && v7)
    {
      [(CLKUICurvedLabel *)self _imageBounds];
      v34 = v33;
      v36 = v35;
      v37 = *(MEMORY[0x1E695EFD0] + 16);
      v126 = *MEMORY[0x1E695EFD0];
      v127 = v37;
      v128 = *(MEMORY[0x1E695EFD0] + 32);
      if (v28)
      {
        imagePlacement = self->_imagePlacement;
        v39 = v32;
        v40 = v31;
        [(NSLayoutManager *)self->_layoutManager locationForGlyphAtIndex:[(NSLayoutManager *)self->_layoutManager glyphIndexForCharacterAtIndex:0]];
        v42 = v41;
        v44 = v43;
        [(NSLayoutManager *)self->_layoutManager locationForGlyphAtIndex:[(NSLayoutManager *)self->_layoutManager glyphIndexForCharacterAtIndex:v26 + v28 - 1]];
        if ((imagePlacement == 1) != v42 < v46)
        {
          v44 = v45;
        }

        v133.origin.x = v34;
        v133.origin.y = v40;
        v133.size.width = v36;
        v133.size.height = v39;
        v47 = v44 - CGRectGetHeight(v133);
        v48 = v36;
        rect = v47;
        if (imagePlacement == 1)
        {
          v34 = 0.0;
          v49 = 0;
          v50 = v36;
          v51 = v39;
          MidX = CGRectGetMidX(*(&v47 - 1));
        }

        else
        {
          v85 = v34;
          v86 = v36;
          v87 = v39;
          v88 = v47;
          v145.origin.x = v20 - CGRectGetWidth(*(&v47 - 1));
          v34 = v145.origin.x;
          v145.origin.y = v88;
          v36 = v48;
          v145.size.width = v48;
          v145.size.height = v39;
          MidX = v20 + CGRectGetWidth(v145) * -0.5;
        }

        [(CLKUICurvedLabel *)self centerAngle];
        [(CLKUICurvedLabel *)self _transformForLayoutLocation:MidX usedWidth:v44 distance:v20 centerAngle:v106 bounds:v89, v105, v104, v103, v12];
        v31 = rect;
        v32 = v39;
      }

      else
      {
        MidX = *MEMORY[0x1E695EFF8];
        v44 = *(MEMORY[0x1E695EFF8] + 8);
      }

      v90 = v34;
      v91 = v36;
      v146 = CGRectOffset(*(&v31 - 1), -MidX, -v44);
      v92 = callbackCopy[2];
      v123 = v126;
      v124 = v127;
      v125 = v128;
      v92(callbackCopy, 0, 0, &v123, MidX, v44, v146.origin.x, v146.origin.y, v146.size.width, v146.size.height);
    }

    else
    {
      v93 = TypographicBounds;
      v94 = x;
      if (self->_hasMonospacedNumbers)
      {
        v53 = [(NSTextStorage *)self->_textStorage attribute:*MEMORY[0x1E69DB648] atIndex:0 effectiveRange:0];
        v134.origin.x = x;
        v134.size.width = v95;
        v134.origin.y = v96;
        v134.size.height = height;
        rectb = CGRectGetMinX(v134);
        [v53 xHeight];
        v55 = v54;
        [(NSLayoutManager *)self->_layoutManager locationForGlyphAtIndex:0];
        v57 = v56;
        v135.origin.y = 0.0;
        v135.origin.x = v29 + v58 + 0.0;
        v59 = v135.origin.x;
        v135.size.width = rectb;
        v135.size.height = v55;
        v136.origin.y = v57 - CGRectGetMaxY(v135);
        v98 = v136.origin.y;
        v136.origin.x = v59;
        v136.size.width = rectb;
        v136.size.height = v55;
        v60 = CGRectGetMidX(v136);
        v127 = 0u;
        v128 = 0u;
        v126 = 0u;
        [(CLKUICurvedLabel *)self centerAngle];
        [(CLKUICurvedLabel *)self _transformForLayoutLocation:v60 usedWidth:v57 distance:v20 centerAngle:v106 bounds:v61, v105, v104, v103, v12];
        v137.origin.x = v59;
        v137.origin.y = v98;
        v137.size.height = v55;
        v137.size.width = rectb;
        v138 = CGRectOffset(v137, -v60, -v57);
        v62 = callbackCopy[2];
        v123 = v126;
        v124 = v127;
        v125 = v128;
        v62(callbackCopy, 0x7FFFFFFFFFFFFFFFLL, 0, &v123, v60, v57, v138.origin.x, v138.origin.y, v138.size.width, v138.size.height);
      }

      recta = v26 + v28;
      while (v26 < recta)
      {
        v126 = xmmword_1E4A0AB40;
        v64 = [(NSLayoutManager *)self->_layoutManager glyphRangeForCharacterRange:v26 actualCharacterRange:1, &v126];
        v65 = *&v129[0];
        v66 = v126;
        if (*&v129[0] == v126)
        {
          v67 = 1;
        }

        else
        {
          v67 = v63;
        }

        v68 = objc_opt_new();
        v69 = v67;
        v70 = v64;
        if (v64 < v67 + v64)
        {
          do
          {
            if (([(NSLayoutManager *)self->_layoutManager propertyForGlyphAtIndex:v70]& 1) == 0)
            {
              [v68 addIndex:v70];
            }

            ++v70;
            --v69;
          }

          while (v69);
        }

        v108[0] = MEMORY[0x1E69E9820];
        v108[1] = 3221225472;
        v108[2] = __50__CLKUICurvedLabel__enumerateTransforms_callback___block_invoke;
        v108[3] = &unk_1E8763060;
        v108[4] = self;
        v110 = v29;
        v111 = MinX;
        v112 = v126;
        v113 = v67;
        v122 = v65 == v66;
        v114 = v20;
        v115 = v106;
        v116 = v105;
        v117 = v104;
        v118 = v103;
        v119 = v12;
        if (v65 == v66)
        {
          v71 = v129 + 8;
        }

        else
        {
          v71 = &v126 + 8;
        }

        v109 = callbackCopy;
        v120 = v64;
        v121 = v67;
        [v68 enumerateRangesUsingBlock:v108];
        v72 = *v71;
        if (*v71 <= 1uLL)
        {
          v72 = 1;
        }

        v26 += v72;
      }

      if (self->_hasMonospacedNumbers)
      {
        v73 = [(NSTextStorage *)self->_textStorage attribute:*MEMORY[0x1E69DB648] atIndex:recta - 1 effectiveRange:0];
        v139.origin.x = v94;
        v139.origin.y = v96;
        v139.size.width = v95;
        v139.size.height = height;
        v74 = v93 - CGRectGetMaxX(v139);
        v140.origin.x = v94;
        v140.origin.y = v96;
        v140.size.width = v95;
        v140.size.height = height;
        MaxX = CGRectGetMaxX(v140);
        [v73 xHeight];
        v77 = v76;
        [(NSLayoutManager *)self->_layoutManager locationForGlyphAtIndex:[(NSLayoutManager *)self->_layoutManager glyphIndexForCharacterAtIndex:recta - 1]];
        v79 = v78;
        v80 = v29 + MaxX;
        v141.origin.y = 0.0;
        v141.origin.x = v80;
        v102 = v74;
        v141.size.width = v74;
        v141.size.height = v77;
        v81 = v79 - CGRectGetMaxY(v141);
        v142.origin.x = v80;
        v142.origin.y = v81;
        v142.size.width = v74;
        v142.size.height = v77;
        v82 = CGRectGetMidX(v142);
        v127 = 0u;
        v128 = 0u;
        v126 = 0u;
        [(CLKUICurvedLabel *)self centerAngle];
        [(CLKUICurvedLabel *)self _transformForLayoutLocation:v82 usedWidth:v79 distance:v20 centerAngle:v106 bounds:v83, v105, v104, v103, v12];
        v143.origin.x = v80;
        v143.origin.y = v81;
        v143.size.width = v102;
        v143.size.height = v77;
        v144 = CGRectOffset(v143, -v82, -v79);
        v84 = callbackCopy[2];
        v123 = v126;
        v124 = v127;
        v125 = v128;
        v84(callbackCopy, 0x7FFFFFFFFFFFFFFFLL, 0, &v123, v82, v79, v144.origin.x, v144.origin.y, v144.size.width, v144.size.height);
      }
    }
  }
}

void __50__CLKUICurvedLabel__enumerateTransforms_callback___block_invoke(uint64_t a1, uint64_t a2, CFIndex a3)
{
  v40 = *MEMORY[0x1E69E9840];
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

  v14 = v7 + *(a1 + 48) - *(a1 + 56);
  v15 = [*(*(a1 + 32) + 808) attribute:*MEMORY[0x1E69DB648] atIndex:*(a1 + 64) effectiveRange:0];
  MEMORY[0x1EEE9AC00](v15, v16, v17, v18, v19, v20);
  v22 = (v36 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  [*(*(a1 + 32) + 816) getGlyphsInRange:a2 glyphs:a3 properties:v22 characterIndexes:0 bidiLevels:{0, 0}];
  BoundingRectsForGlyphs = CTFontGetBoundingRectsForGlyphs(v15, kCTFontOrientationDefault, v22, 0, a3);
  x = BoundingRectsForGlyphs.origin.x;
  y = BoundingRectsForGlyphs.origin.y;
  width = BoundingRectsForGlyphs.size.width;
  if (*(a1 + 152))
  {
    [(__CTFont *)v15 xHeight];
    height = v26;
  }

  else
  {
    height = BoundingRectsForGlyphs.size.height;
  }

  v28 = v14 + x;
  v42.origin.x = v28;
  v42.origin.y = y;
  v42.size.width = width;
  v42.size.height = height;
  v29 = v9 - CGRectGetMaxY(v42);
  v43.origin.x = v28;
  v43.origin.y = v29;
  v43.size.width = width;
  v43.size.height = height;
  MidX = CGRectGetMidX(v43);
  v38 = 0u;
  v39 = 0u;
  v37 = 0u;
  v31 = *(a1 + 32);
  v32 = *(a1 + 88);
  v33 = *(a1 + 96);
  [v31 centerAngle];
  if (v31)
  {
    [v31 _transformForLayoutLocation:MidX usedWidth:v9 distance:v32 centerAngle:v33 bounds:{v34, *(a1 + 104), *(a1 + 112), *(a1 + 120), *(a1 + 128)}];
  }

  else
  {
    v38 = 0u;
    v39 = 0u;
    v37 = 0u;
  }

  v44.origin.x = v28;
  v44.origin.y = v29;
  v44.size.width = width;
  v44.size.height = height;
  v45 = CGRectOffset(v44, -MidX, -v9);
  v35 = *(*(a1 + 40) + 16);
  v36[0] = v37;
  v36[1] = v38;
  v36[2] = v39;
  v35(MidX, v9, v45.origin.x, v45.origin.y, v45.size.width, v45.size.height);
}

- (CGAffineTransform)_transformForLayoutLocation:(SEL)location usedWidth:(CGPoint)width distance:(double)distance centerAngle:(double)angle bounds:(double)bounds
{
  y = width.y;
  x = width.x;
  if (self->_usesPath)
  {
    v12 = 1000;
    [(CLKUICurvedPathGlyphLayoutProvider *)self->_pathGlyphLayoutProvider setLayoutLocation:width.x, width.y, distance, angle, bounds];
  }

  else
  {
    v12 = 992;
    [(CLKUICurvedCircleGlyphLayoutProvider *)self->_circleGlyphLayoutProvider setCenterAngle:self->_centerAngle, width.y, distance, angle, bounds];
    [(CLKUICurvedCircleGlyphLayoutProvider *)self->_circleGlyphLayoutProvider setLayoutLocation:x, y];
    [(CLKUICurvedCircleGlyphLayoutProvider *)self->_circleGlyphLayoutProvider setUsedWidth:distance];
    [(CLKUICurvedCircleGlyphLayoutProvider *)self->_circleGlyphLayoutProvider setDistance:angle];
    [(CLKUICurvedCircleGlyphLayoutProvider *)self->_circleGlyphLayoutProvider setBounds:a8.origin.x, a8.origin.y, a8.size.width, a8.size.height];
  }

  result = *(&self->super.super.super.super.isa + v12);
  if (result)
  {
    result = [(CGAffineTransform *)result makeTransform];
  }

  else
  {
    v17 = 0u;
    v18 = 0u;
    v16 = 0u;
  }

  *&retstr->a = v16;
  *&retstr->c = v17;
  *&retstr->tx = v18;
  return result;
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  if (context == &kImageViewBoundsContext)
  {
    v7 = *MEMORY[0x1E696A500];
    changeCopy = change;
    v9 = [changeCopy objectForKeyedSubscript:v7];
    [v9 CGRectValue];

    v10 = [changeCopy objectForKeyedSubscript:*MEMORY[0x1E696A4F0]];

    [v10 CGRectValue];
    if (!CLKFloatEqualsFloat() || (CLKFloatEqualsFloat() & 1) == 0)
    {
      [(CLKUICurvedLabel *)self _updateMaxSize];
      [(CLKUICurvedLabel *)self invalidateCachedSize];
      [(CLKUICurvedLabel *)self setNeedsDisplay];

      [(CLKUICurvedLabel *)self setNeedsLayout];
    }
  }
}

- (CGRect)_imageBounds
{
  [(CLKUICurvedLabel *)self imageViewOverrideSize];
  if (v4 == *MEMORY[0x1E695F060] && v3 == *(MEMORY[0x1E695F060] + 8))
  {
    WeakRetained = objc_loadWeakRetained(&self->_imageView);
    [WeakRetained bounds];
    v6 = v13;
    v7 = v14;
    v9 = v15;
    v11 = v16;
  }

  else
  {
    v6 = *MEMORY[0x1E695EFF8];
    v7 = *(MEMORY[0x1E695EFF8] + 8);
    [(CLKUICurvedLabel *)self imageViewOverrideSize];
    v9 = v8;
    v11 = v10;
  }

  v17 = v6;
  v18 = v7;
  v19 = v9;
  v20 = v11;
  result.size.height = v20;
  result.size.width = v19;
  result.origin.y = v18;
  result.origin.x = v17;
  return result;
}

- (CGAffineTransform)transformForImage
{
  v25 = 0;
  v26 = &v25;
  v27 = 0x5010000000;
  v28 = "";
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  [(CLKUICurvedLabel *)self _glyphsBoundingRect];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  [(CLKUICurvedLabel *)self bounds];
  [(CLKUICurvedLabel *)self _offsetOfBoundingRect:v6 inRect:v8, v10, v12, v13, v14, v15, v16];
  memset(&v24, 0, sizeof(v24));
  CGAffineTransformMakeTranslation(&v24, v17, v18);
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __37__CLKUICurvedLabel_transformForImage__block_invoke;
  v22[3] = &unk_1E8763088;
  v22[4] = self;
  v22[5] = &v25;
  v23 = v24;
  [(CLKUICurvedLabel *)self _transformForImage:v22];
  v19 = v26;
  v20 = *(v26 + 3);
  *&retstr->a = *(v26 + 2);
  *&retstr->c = v20;
  *&retstr->tx = *(v19 + 4);
  _Block_object_dispose(&v25, 8);
  return result;
}

__n128 __37__CLKUICurvedLabel_transformForImage__block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(*(a1 + 40) + 8);
  if (*(*(a1 + 32) + 985) == 1)
  {
    result = *a2;
    v4 = *(a2 + 32);
    *(v2 + 48) = *(a2 + 16);
    *(v2 + 64) = v4;
    *(v2 + 32) = result;
  }

  else
  {
    v5 = *(a2 + 16);
    *&t1.a = *a2;
    *&t1.c = v5;
    *&t1.tx = *(a2 + 32);
    v6 = *(a1 + 64);
    *&v8.a = *(a1 + 48);
    *&v8.c = v6;
    *&v8.tx = *(a1 + 80);
    CGAffineTransformConcat(&v10, &t1, &v8);
    v7 = *&v10.c;
    result = *&v10.tx;
    *(v2 + 32) = *&v10.a;
    *(v2 + 48) = v7;
    *(v2 + 64) = result;
  }

  return result;
}

- (CGPoint)centerForImage
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3010000000;
  v11 = 0;
  v12 = 0;
  v10 = "";
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __34__CLKUICurvedLabel_centerForImage__block_invoke;
  v6[3] = &unk_1E8762FE8;
  v6[4] = &v7;
  [(CLKUICurvedLabel *)self _transformForImage:v6];
  v2 = v8[4];
  v3 = v8[5];
  _Block_object_dispose(&v7, 8);
  v4 = v2;
  v5 = v3;
  result.y = v5;
  result.x = v4;
  return result;
}

double __34__CLKUICurvedLabel_centerForImage__block_invoke(uint64_t a1, double a2, double a3, double a4, double a5)
{
  result = a2 + a4 * 0.5;
  v6 = *(*(a1 + 32) + 8);
  *(v6 + 32) = result;
  *(v6 + 40) = a3 + a5 * 0.5;
  return result;
}

- (UIView)imageView
{
  WeakRetained = objc_loadWeakRetained(&self->_imageView);

  return WeakRetained;
}

- (CGSize)imageViewOverrideSize
{
  width = self->_imageViewOverrideSize.width;
  height = self->_imageViewOverrideSize.height;
  result.height = height;
  result.width = width;
  return result;
}

@end