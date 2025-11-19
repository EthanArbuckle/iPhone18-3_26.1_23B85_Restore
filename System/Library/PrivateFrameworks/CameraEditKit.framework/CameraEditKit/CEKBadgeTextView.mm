@interface CEKBadgeTextView
+ (UIEdgeInsets)_defaultTextInsets;
+ (double)_heightForContentSize:(id)a3 textInsets:(UIEdgeInsets)a4;
+ (double)_textHeightForContentSize:(id)a3;
+ (id)_textAttributesForContentSize:(id)a3 fontStyle:(unint64_t)a4;
- (CEKBadgeTextView)initWithFrame:(CGRect)a3;
- (CGSize)_textSize;
- (CGSize)intrinsicContentSize;
- (UIEdgeInsets)_textInsets;
- (id)_maskImage;
- (void)_didUpdateContents;
- (void)_preferredContentSizeCategoryChanged;
- (void)_setSymbol:(id)a3;
- (void)_setText:(id)a3;
- (void)_setTextAttributes:(id)a3;
- (void)_setTextInsets:(UIEdgeInsets)a3;
- (void)_updateAttributedString;
- (void)setFontStyle:(unint64_t)a3;
@end

@implementation CEKBadgeTextView

- (CEKBadgeTextView)initWithFrame:(CGRect)a3
{
  v17[1] = *MEMORY[0x1E69E9840];
  v16.receiver = self;
  v16.super_class = CEKBadgeTextView;
  v3 = [(CEKBadgeView *)&v16 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
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

- (void)setFontStyle:(unint64_t)a3
{
  if (self->_fontStyle != a3)
  {
    self->_fontStyle = a3;
    v6 = objc_opt_class();
    v9 = [(CEKBadgeTextView *)self traitCollection];
    v7 = [v9 preferredContentSizeCategory];
    v8 = [v6 _textAttributesForContentSize:v7 fontStyle:a3];
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
  v15 = [(CEKBadgeTextView *)self _symbolText];

  if (v15)
  {
    v16 = [(CEKBadgeTextView *)self _symbolText];
    [v16 drawInRect:{v14, v12, v8, v10}];
  }

  else
  {
    v16 = [(CEKBadgeTextView *)self _text];
    v17 = [(CEKBadgeTextView *)self _textAttributes];
    [v16 drawInRect:v17 withAttributes:{v14, v12, v8, v10}];
  }

  v18 = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();

  return v18;
}

- (CGSize)_textSize
{
  v3 = [(CEKBadgeTextView *)self _textAttributes];
  v4 = [(CEKBadgeTextView *)self _symbolText];

  if (v4)
  {
    v5 = [(CEKBadgeTextView *)self _symbolText];
    [v5 size];
  }

  else
  {
    v5 = [(CEKBadgeTextView *)self _text];
    [v5 sizeWithAttributes:v3];
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
  v3 = [(CEKBadgeTextView *)self traitCollection];
  v5 = [v3 preferredContentSizeCategory];

  v4 = [objc_opt_class() _textAttributesForContentSize:v5 fontStyle:{-[CEKBadgeTextView fontStyle](self, "fontStyle")}];
  [(CEKBadgeTextView *)self _setTextAttributes:v4];
}

- (void)_setText:(id)a3
{
  v5 = a3;
  text = self->__text;
  if (text != v5)
  {
    v7 = v5;
    text = [text isEqualToString:v5];
    v5 = v7;
    if ((text & 1) == 0)
    {
      objc_storeStrong(&self->__text, a3);
      text = [(CEKBadgeTextView *)self _didUpdateContents];
      v5 = v7;
    }
  }

  MEMORY[0x1EEE66BB8](text, v5);
}

- (void)_setSymbol:(id)a3
{
  v5 = a3;
  symbol = self->__symbol;
  if (symbol != v5)
  {
    v7 = v5;
    symbol = [symbol isEqualToString:v5];
    v5 = v7;
    if ((symbol & 1) == 0)
    {
      objc_storeStrong(&self->__symbol, a3);
      symbol = [(CEKBadgeTextView *)self _didUpdateContents];
      v5 = v7;
    }
  }

  MEMORY[0x1EEE66BB8](symbol, v5);
}

- (void)_updateAttributedString
{
  v3 = [(CEKBadgeTextView *)self _symbol];

  if (v3)
  {
    v4 = MEMORY[0x1E69DCAB8];
    v5 = [(CEKBadgeTextView *)self _symbol];
    v13 = [v4 systemImageNamed:v5];

    v6 = objc_alloc_init(MEMORY[0x1E696AD40]);
    v7 = [MEMORY[0x1E69DB7F0] textAttachmentWithImage:v13];
    v8 = [MEMORY[0x1E696AAB0] attributedStringWithAttachment:v7];
    [v6 appendAttributedString:v8];
    v9 = [(CEKBadgeTextView *)self _text];
    if (v9)
    {
      v10 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:@" "];
      [v6 appendAttributedString:v10];

      v11 = [objc_alloc(MEMORY[0x1E696AD40]) initWithString:v9];
      [v6 appendAttributedString:v11];
    }

    v12 = [(CEKBadgeTextView *)self _textAttributes];
    [v6 addAttributes:v12 range:{0, objc_msgSend(v6, "length")}];

    [(CEKBadgeTextView *)self _setSymbolText:v6];
  }

  else
  {

    [(CEKBadgeTextView *)self _setSymbolText:0];
  }
}

- (void)_setTextAttributes:(id)a3
{
  v5 = a3;
  textAttributes = self->__textAttributes;
  if (textAttributes != v5)
  {
    v7 = v5;
    textAttributes = [textAttributes isEqualToDictionary:v5];
    v5 = v7;
    if ((textAttributes & 1) == 0)
    {
      objc_storeStrong(&self->__textAttributes, a3);
      textAttributes = [(CEKBadgeTextView *)self _didUpdateContents];
      v5 = v7;
    }
  }

  MEMORY[0x1EEE66BB8](textAttributes, v5);
}

- (void)_setTextInsets:(UIEdgeInsets)a3
{
  v3.f64[0] = a3.top;
  v3.f64[1] = a3.left;
  v4.f64[0] = a3.bottom;
  v4.f64[1] = a3.right;
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*&self->__textInsets.top, v3), vceqq_f64(*&self->__textInsets.bottom, v4)))) & 1) == 0)
  {
    self->__textInsets = a3;
    [(CEKBadgeTextView *)self _didUpdateContents];
  }
}

- (void)_didUpdateContents
{
  [(CEKBadgeTextView *)self _updateAttributedString];
  [(CEKBadgeTextView *)self setNeedsDisplay];
  [(CEKBadgeTextView *)self invalidateIntrinsicContentSize];
  v3 = [(CEKBadgeView *)self delegate];
  [v3 badgeViewDidChangeIntrinsicContentSize:self];
}

+ (id)_textAttributesForContentSize:(id)a3 fontStyle:(unint64_t)a4
{
  v5 = a3;
  v6 = [objc_opt_class() _fontForContentSize:v5 fontStyle:a4];

  v7 = objc_alloc_init(MEMORY[0x1E695DF90]);
  [v7 setObject:v6 forKeyedSubscript:*MEMORY[0x1E69DB648]];
  v8 = [MEMORY[0x1E69DC888] whiteColor];
  [v7 setObject:v8 forKeyedSubscript:*MEMORY[0x1E69DB650]];

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

+ (double)_textHeightForContentSize:(id)a3
{
  v3 = [a1 _fontForContentSize:a3 fontStyle:0];
  [v3 lineHeight];
  v4 = [MEMORY[0x1E69DCEB0] mainScreen];
  [v4 scale];

  UICeilToScale();
  v6 = v5;

  return v6;
}

+ (double)_heightForContentSize:(id)a3 textInsets:(UIEdgeInsets)a4
{
  [a1 _textHeightForContentSize:{a3, a4.top, a4.left, a4.bottom, a4.right}];
  v4 = [MEMORY[0x1E69DCEB0] mainScreen];
  [v4 scale];

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