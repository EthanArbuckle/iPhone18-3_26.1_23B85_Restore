@interface CKTextTighteningLabel
+ (BOOL)attributedText:(id)text fitsInRect:(CGRect)rect;
+ (id)_attributedStringWithText:(id)text font:(id)font sizeCategory:(id)category textRect:(CGRect)rect forFittingSize:(BOOL)size;
+ (void)applyKerning:(double)kerning whitespaceKerning:(double)whitespaceKerning toAttributedString:(id)string;
- (CGSize)sizeThatFits:(CGSize)fits;
- (id)_attributedTextForFittingSize:(BOOL)size boundsSize:(CGSize)boundsSize;
- (void)_clearTextTighteningCaches;
- (void)_updateAttributedTextForFittingSize:(BOOL)size boundsSize:(CGSize)boundsSize;
- (void)_updateTightenedAttributedText;
- (void)layoutSubviews;
- (void)setFont:(id)font;
- (void)setManagedText:(id)text;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation CKTextTighteningLabel

- (void)layoutSubviews
{
  [(CKTextTighteningLabel *)self _updateTightenedAttributedText];
  v3.receiver = self;
  v3.super_class = CKTextTighteningLabel;
  [(CKTextTighteningLabel *)&v3 layoutSubviews];
}

- (void)setManagedText:(id)text
{
  textCopy = text;
  v8 = textCopy;
  if (textCopy)
  {
    trimmedString = [textCopy trimmedString];
  }

  else
  {
    trimmedString = &stru_1F04268F8;
  }

  if (![(NSString *)self->_managedText isEqualToString:trimmedString])
  {
    v6 = [(__CFString *)trimmedString copy];
    managedText = self->_managedText;
    self->_managedText = v6;

    [(CKTextTighteningLabel *)self _clearTextTighteningCaches];
    [(CKTextTighteningLabel *)self setNeedsLayout];
  }
}

- (void)traitCollectionDidChange:(id)change
{
  v4.receiver = self;
  v4.super_class = CKTextTighteningLabel;
  [(CKTextTighteningLabel *)&v4 traitCollectionDidChange:change];
  [(CKTextTighteningLabel *)self _clearTextTighteningCaches];
  [(CKTextTighteningLabel *)self setNeedsLayout];
}

- (void)setFont:(id)font
{
  fontCopy = font;
  font = [(CKTextTighteningLabel *)self font];
  v6 = [font isEqual:fontCopy];

  v7.receiver = self;
  v7.super_class = CKTextTighteningLabel;
  [(CKTextTighteningLabel *)&v7 setFont:fontCopy];

  if ((v6 & 1) == 0)
  {
    [(CKTextTighteningLabel *)self _clearTextTighteningCaches];
    [(CKTextTighteningLabel *)self setNeedsLayout];
  }
}

- (void)_clearTextTighteningCaches
{
  tightenedAttributedText = self->_tightenedAttributedText;
  self->_tightenedAttributedText = 0;

  self->_tightenedAttributedTextBoundsWidth = 0.0;
  untightenedAttributedText = self->_untightenedAttributedText;
  self->_untightenedAttributedText = 0;
}

- (void)_updateTightenedAttributedText
{
  [(CKTextTighteningLabel *)self bounds];

  [(CKTextTighteningLabel *)self _updateAttributedTextForFittingSize:0 boundsSize:v3, v4];
}

- (id)_attributedTextForFittingSize:(BOOL)size boundsSize:(CGSize)boundsSize
{
  height = boundsSize.height;
  width = boundsSize.width;
  sizeCopy = size;
  v8 = self->_managedText;
  traitCollection = [(CKTextTighteningLabel *)self traitCollection];
  preferredContentSizeCategory = [traitCollection preferredContentSizeCategory];

  font = [(CKTextTighteningLabel *)self font];
  v12 = [objc_opt_class() _attributedStringWithText:v8 font:font sizeCategory:preferredContentSizeCategory textRect:sizeCopy forFittingSize:{0.0, 0.0, width, height}];

  return v12;
}

- (void)_updateAttributedTextForFittingSize:(BOOL)size boundsSize:(CGSize)boundsSize
{
  width = boundsSize.width;
  if (size)
  {
    p_untightenedAttributedText = &self->_untightenedAttributedText;
    untightenedAttributedText = self->_untightenedAttributedText;
    v8 = &OBJC_IVAR___CKTextTighteningLabel__untightenedAttributedTextBoundsWidth;
    if (!untightenedAttributedText)
    {
      goto LABEL_6;
    }

LABEL_5:
    if (vabdd_f64(*(&self->super.super.super.super.isa + *v8), boundsSize.width) <= 2.22044605e-16)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  p_untightenedAttributedText = &self->_tightenedAttributedText;
  untightenedAttributedText = self->_tightenedAttributedText;
  v8 = &OBJC_IVAR___CKTextTighteningLabel__tightenedAttributedTextBoundsWidth;
  if (untightenedAttributedText)
  {
    goto LABEL_5;
  }

LABEL_6:
  v9 = [(CKTextTighteningLabel *)self _attributedTextForFittingSize:boundsSize.width boundsSize:boundsSize.height];
  v10 = *p_untightenedAttributedText;
  *p_untightenedAttributedText = v9;

  *(&self->super.super.super.super.isa + *v8) = width;
  untightenedAttributedText = *p_untightenedAttributedText;
LABEL_7:
  v11 = untightenedAttributedText;
  [(CKTextTighteningLabel *)self setAttributedText:v11];
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  height = fits.height;
  width = fits.width;
  attributedText = [(CKTextTighteningLabel *)self attributedText];
  [(CKTextTighteningLabel *)self _updateAttributedTextForFittingSize:1 boundsSize:width, height];
  v13.receiver = self;
  v13.super_class = CKTextTighteningLabel;
  [(CKTextTighteningLabel *)&v13 sizeThatFits:width, height];
  v8 = v7;
  v10 = v9;
  [(CKTextTighteningLabel *)self setAttributedText:attributedText];

  v11 = v8;
  v12 = v10;
  result.height = v12;
  result.width = v11;
  return result;
}

+ (id)_attributedStringWithText:(id)text font:(id)font sizeCategory:(id)category textRect:(CGRect)rect forFittingSize:(BOOL)size
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  textCopy = text;
  fontCopy = font;
  categoryCopy = category;
  v18 = [objc_alloc(MEMORY[0x1E696AD40]) initWithString:textCopy];
  if ([textCopy length])
  {
    v19 = [textCopy length];
    [v18 addAttribute:*MEMORY[0x1E69DB648] value:fontCopy range:{0, v19}];
    v20 = objc_alloc_init(MEMORY[0x1E69DB7C8]);
    [v20 setAlignment:1];
    [v20 setAllowsDefaultTighteningForTruncation:1];
    [v20 setLineBreakMode:4];
    [v18 addAttribute:*MEMORY[0x1E69DB688] value:v20 range:{0, v19}];
    if (!size && width > 0.0 && ([self attributedText:v18 fitsInRect:{x, y, width, height}] & 1) == 0)
    {
      if (categoryCopy && UIContentSizeCategoryCompareToCategory(categoryCopy, *MEMORY[0x1E69DDC70]) == NSOrderedDescending)
      {
        v21 = 1.5;
        v22 = 30;
      }

      else
      {
        v21 = 3.0;
        v22 = 20;
      }

      v23 = 0;
      while (1)
      {
        ++v23;
        [self applyKerning:v18 whitespaceKerning:v23 * -0.05 toAttributedString:v21 * (v23 * -0.05)];
        if ([self attributedText:v18 fitsInRect:{x, y, width, height}])
        {
          break;
        }

        if (v22 == v23)
        {
          v24 = ((v22 * 0.9) + 1) * -0.05;
          [self applyKerning:v18 whitespaceKerning:v24 toAttributedString:v21 * v24];
          break;
        }
      }
    }
  }

  v25 = [v18 copy];

  return v25;
}

+ (BOOL)attributedText:(id)text fitsInRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  [text boundingRectWithSize:0 options:0 context:{1.79769313e308, 1.79769313e308}];
  v8 = CGRectGetWidth(v10);
  v11.origin.x = x;
  v11.origin.y = y;
  v11.size.width = width;
  v11.size.height = height;
  return v8 <= CGRectGetWidth(v11);
}

+ (void)applyKerning:(double)kerning whitespaceKerning:(double)whitespaceKerning toAttributedString:(id)string
{
  stringCopy = string;
  whitespaceCharacterSet = [MEMORY[0x1E696AB08] whitespaceCharacterSet];
  string = [stringCopy string];
  v9 = [stringCopy length];
  v10 = [string rangeOfCharacterFromSet:whitespaceCharacterSet];
  v12 = v11;
  v13 = 0;
  v14 = *MEMORY[0x1E69DB660];
  while (1)
  {
    v15 = v10 == 0x7FFFFFFFFFFFFFFFLL ? v9 : v10;
    v16 = v15 - v13;
    v17 = [MEMORY[0x1E696AD98] numberWithDouble:kerning];
    v18 = [MEMORY[0x1E696AD98] numberWithDouble:whitespaceKerning];
    [stringCopy addAttribute:v14 value:v17 range:{v13, v16}];
    if (v10 == 0x7FFFFFFFFFFFFFFFLL)
    {
      break;
    }

    [stringCopy addAttribute:v14 value:v18 range:{v10, v12}];
    v13 = v10 + v12;
    v10 = [string rangeOfCharacterFromSet:whitespaceCharacterSet options:0 range:{v10 + v12, v9 - (v10 + v12)}];
    v12 = v19;
  }
}

@end