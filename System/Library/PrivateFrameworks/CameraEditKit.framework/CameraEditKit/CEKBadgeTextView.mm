@interface CEKBadgeTextView
+ (UIEdgeInsets)_defaultTextInsets;
+ (double)_heightForContentSize:(id)size textInsets:(UIEdgeInsets)insets;
+ (double)_textHeightForContentSize:(id)size;
+ (id)_textAttributesForContentSize:(id)size fontStyle:(unint64_t)style;
- (CEKBadgeTextView)initWithFrame:(CGRect)frame;
- (CGSize)_textSize;
- (CGSize)intrinsicContentSize;
- (UIEdgeInsets)_textInsets;
- (id)_maskImage;
- (void)_didUpdateContents;
- (void)_preferredContentSizeCategoryChanged;
- (void)_setSymbol:(id)symbol;
- (void)_setText:(id)text;
- (void)_setTextAttributes:(id)attributes;
- (void)_setTextInsets:(UIEdgeInsets)insets;
- (void)_updateAttributedString;
- (void)setFontStyle:(unint64_t)style;
@end

@implementation CEKBadgeTextView

- (CEKBadgeTextView)initWithFrame:(CGRect)frame
{
  v17[1] = *MEMORY[0x1E69E9840];
  v16.receiver = self;
  v16.super_class = CEKBadgeTextView;
  v3 = [(CEKBadgeView *)&v16 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    p_textInsets = &v3->__textInsets;
    [objc_opt_class() _defaultTextInsets];
    *&p_textInsets->top = v6;
    v4->__textInsets.left = v7;
    v4->__textInsets.bottom = v8;
    v4->__textInsets.right = v9;
    v4->_fontStyle = 0;
    v10 = [objc_opt_class() _textAttributesForContentSize:*MEMORY[0x1E69DDC70] fontStyle:v4->_fontStyle];
    textAttributes = v4->__textAttributes;
    v4->__textAttributes = v10;

    v17[0] = objc_opt_class();
    v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:1];
    v13 = [(CEKBadgeTextView *)v4 registerForTraitChanges:v12 withAction:sel__preferredContentSizeCategoryChanged];

    v14 = v4;
  }

  return v4;
}

+ (UIEdgeInsets)_defaultTextInsets
{
  v2 = 2.0;
  v3 = 8.0;
  v4 = 2.0;
  v5 = 8.0;
  result.right = v5;
  result.bottom = v4;
  result.left = v3;
  result.top = v2;
  return result;
}

- (void)setFontStyle:(unint64_t)style
{
  if (self->_fontStyle != style)
  {
    self->_fontStyle = style;
    v6 = objc_opt_class();
    traitCollection = [(CEKBadgeTextView *)self traitCollection];
    preferredContentSizeCategory = [traitCollection preferredContentSizeCategory];
    v8 = [v6 _textAttributesForContentSize:preferredContentSizeCategory fontStyle:style];
    [(CEKBadgeTextView *)self _setTextAttributes:v8];
  }
}

- (id)_maskImage
{
  [(CEKBadgeTextView *)self bounds];
  v4 = v3;
  v6 = v5;
  [(CEKBadgeTextView *)self _textSize];
  v8 = v7;
  v10 = v9;
  [(CEKBadgeTextView *)self _textInsets];
  v12 = v11;
  v14 = v13;
  v21.width = v4;
  v21.height = v6;
  UIGraphicsBeginImageContextWithOptions(v21, 0, 0.0);
  _symbolText = [(CEKBadgeTextView *)self _symbolText];

  if (_symbolText)
  {
    _symbolText2 = [(CEKBadgeTextView *)self _symbolText];
    [_symbolText2 drawInRect:{v14, v12, v8, v10}];
  }

  else
  {
    _symbolText2 = [(CEKBadgeTextView *)self _text];
    _textAttributes = [(CEKBadgeTextView *)self _textAttributes];
    [_symbolText2 drawInRect:_textAttributes withAttributes:{v14, v12, v8, v10}];
  }

  v18 = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();

  return v18;
}

- (CGSize)_textSize
{
  _textAttributes = [(CEKBadgeTextView *)self _textAttributes];
  _symbolText = [(CEKBadgeTextView *)self _symbolText];

  if (_symbolText)
  {
    _symbolText2 = [(CEKBadgeTextView *)self _symbolText];
    [_symbolText2 size];
  }

  else
  {
    _symbolText2 = [(CEKBadgeTextView *)self _text];
    [_symbolText2 sizeWithAttributes:_textAttributes];
  }

  UICeilToViewScale();
  v7 = v6;
  UICeilToViewScale();
  v9 = v8;

  v10 = v7;
  v11 = v9;
  result.height = v11;
  result.width = v10;
  return result;
}

- (CGSize)intrinsicContentSize
{
  [(CEKBadgeTextView *)self _textInsets];
  [(CEKBadgeTextView *)self _textSize];
  UICeilToViewScale();
  v4 = v3;
  UICeilToViewScale();
  v6 = v5;
  v7 = v4;
  result.height = v6;
  result.width = v7;
  return result;
}

- (void)_preferredContentSizeCategoryChanged
{
  traitCollection = [(CEKBadgeTextView *)self traitCollection];
  preferredContentSizeCategory = [traitCollection preferredContentSizeCategory];

  v4 = [objc_opt_class() _textAttributesForContentSize:preferredContentSizeCategory fontStyle:{-[CEKBadgeTextView fontStyle](self, "fontStyle")}];
  [(CEKBadgeTextView *)self _setTextAttributes:v4];
}

- (void)_setText:(id)text
{
  textCopy = text;
  text = self->__text;
  if (text != textCopy)
  {
    v7 = textCopy;
    text = [text isEqualToString:textCopy];
    textCopy = v7;
    if ((text & 1) == 0)
    {
      objc_storeStrong(&self->__text, text);
      text = [(CEKBadgeTextView *)self _didUpdateContents];
      textCopy = v7;
    }
  }

  MEMORY[0x1EEE66BB8](text, textCopy);
}

- (void)_setSymbol:(id)symbol
{
  symbolCopy = symbol;
  symbol = self->__symbol;
  if (symbol != symbolCopy)
  {
    v7 = symbolCopy;
    symbol = [symbol isEqualToString:symbolCopy];
    symbolCopy = v7;
    if ((symbol & 1) == 0)
    {
      objc_storeStrong(&self->__symbol, symbol);
      symbol = [(CEKBadgeTextView *)self _didUpdateContents];
      symbolCopy = v7;
    }
  }

  MEMORY[0x1EEE66BB8](symbol, symbolCopy);
}

- (void)_updateAttributedString
{
  _symbol = [(CEKBadgeTextView *)self _symbol];

  if (_symbol)
  {
    v4 = MEMORY[0x1E69DCAB8];
    _symbol2 = [(CEKBadgeTextView *)self _symbol];
    v13 = [v4 systemImageNamed:_symbol2];

    v6 = objc_alloc_init(MEMORY[0x1E696AD40]);
    v7 = [MEMORY[0x1E69DB7F0] textAttachmentWithImage:v13];
    v8 = [MEMORY[0x1E696AAB0] attributedStringWithAttachment:v7];
    [v6 appendAttributedString:v8];
    _text = [(CEKBadgeTextView *)self _text];
    if (_text)
    {
      v10 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:@" "];
      [v6 appendAttributedString:v10];

      v11 = [objc_alloc(MEMORY[0x1E696AD40]) initWithString:_text];
      [v6 appendAttributedString:v11];
    }

    _textAttributes = [(CEKBadgeTextView *)self _textAttributes];
    [v6 addAttributes:_textAttributes range:{0, objc_msgSend(v6, "length")}];

    [(CEKBadgeTextView *)self _setSymbolText:v6];
  }

  else
  {

    [(CEKBadgeTextView *)self _setSymbolText:0];
  }
}

- (void)_setTextAttributes:(id)attributes
{
  attributesCopy = attributes;
  textAttributes = self->__textAttributes;
  if (textAttributes != attributesCopy)
  {
    v7 = attributesCopy;
    textAttributes = [textAttributes isEqualToDictionary:attributesCopy];
    attributesCopy = v7;
    if ((textAttributes & 1) == 0)
    {
      objc_storeStrong(&self->__textAttributes, attributes);
      textAttributes = [(CEKBadgeTextView *)self _didUpdateContents];
      attributesCopy = v7;
    }
  }

  MEMORY[0x1EEE66BB8](textAttributes, attributesCopy);
}

- (void)_setTextInsets:(UIEdgeInsets)insets
{
  v3.f64[0] = insets.top;
  v3.f64[1] = insets.left;
  v4.f64[0] = insets.bottom;
  v4.f64[1] = insets.right;
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*&self->__textInsets.top, v3), vceqq_f64(*&self->__textInsets.bottom, v4)))) & 1) == 0)
  {
    self->__textInsets = insets;
    [(CEKBadgeTextView *)self _didUpdateContents];
  }
}

- (void)_didUpdateContents
{
  [(CEKBadgeTextView *)self _updateAttributedString];
  [(CEKBadgeTextView *)self setNeedsDisplay];
  [(CEKBadgeTextView *)self invalidateIntrinsicContentSize];
  delegate = [(CEKBadgeView *)self delegate];
  [delegate badgeViewDidChangeIntrinsicContentSize:self];
}

+ (id)_textAttributesForContentSize:(id)size fontStyle:(unint64_t)style
{
  sizeCopy = size;
  v6 = [objc_opt_class() _fontForContentSize:sizeCopy fontStyle:style];

  v7 = objc_alloc_init(MEMORY[0x1E695DF90]);
  [v7 setObject:v6 forKeyedSubscript:*MEMORY[0x1E69DB648]];
  whiteColor = [MEMORY[0x1E69DC888] whiteColor];
  [v7 setObject:whiteColor forKeyedSubscript:*MEMORY[0x1E69DB650]];

  v9 = objc_alloc_init(MEMORY[0x1E69DB7C8]);
  [v6 leading];
  [v9 setLineSpacing:?];
  [v9 setAlignment:1];
  [v7 setObject:v9 forKeyedSubscript:*MEMORY[0x1E69DB688]];
  v10 = CEKLocalizedFrameworkString(@"CAMERA_APPLY_CUSTOM_KERNING", 0);
  v11 = [v10 caseInsensitiveCompare:@"YES"];

  if (!v11)
  {
    v12 = MEMORY[0x1E696AD98];
    [v6 pointSize];
    v14 = [v12 numberWithDouble:v13 * 25.0 / 1000.0];
    [v7 setObject:v14 forKeyedSubscript:*MEMORY[0x1E69DB660]];
  }

  return v7;
}

+ (double)_textHeightForContentSize:(id)size
{
  v3 = [self _fontForContentSize:size fontStyle:0];
  [v3 lineHeight];
  mainScreen = [MEMORY[0x1E69DCEB0] mainScreen];
  [mainScreen scale];

  UICeilToScale();
  v6 = v5;

  return v6;
}

+ (double)_heightForContentSize:(id)size textInsets:(UIEdgeInsets)insets
{
  [self _textHeightForContentSize:{size, insets.top, insets.left, insets.bottom, insets.right}];
  mainScreen = [MEMORY[0x1E69DCEB0] mainScreen];
  [mainScreen scale];

  UICeilToScale();
  return result;
}

- (UIEdgeInsets)_textInsets
{
  top = self->__textInsets.top;
  left = self->__textInsets.left;
  bottom = self->__textInsets.bottom;
  right = self->__textInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

@end