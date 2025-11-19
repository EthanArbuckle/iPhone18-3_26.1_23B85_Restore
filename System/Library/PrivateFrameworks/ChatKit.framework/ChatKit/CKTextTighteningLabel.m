@interface CKTextTighteningLabel
+ (BOOL)attributedText:(id)a3 fitsInRect:(CGRect)a4;
+ (id)_attributedStringWithText:(id)a3 font:(id)a4 sizeCategory:(id)a5 textRect:(CGRect)a6 forFittingSize:(BOOL)a7;
+ (void)applyKerning:(double)a3 whitespaceKerning:(double)a4 toAttributedString:(id)a5;
- (CGSize)sizeThatFits:(CGSize)a3;
- (id)_attributedTextForFittingSize:(BOOL)a3 boundsSize:(CGSize)a4;
- (void)_clearTextTighteningCaches;
- (void)_updateAttributedTextForFittingSize:(BOOL)a3 boundsSize:(CGSize)a4;
- (void)_updateTightenedAttributedText;
- (void)layoutSubviews;
- (void)setFont:(id)a3;
- (void)setManagedText:(id)a3;
- (void)traitCollectionDidChange:(id)a3;
@end

@implementation CKTextTighteningLabel

- (void)layoutSubviews
{
  [(CKTextTighteningLabel *)self _updateTightenedAttributedText];
  v3.receiver = self;
  v3.super_class = CKTextTighteningLabel;
  [(CKTextTighteningLabel *)&v3 layoutSubviews];
}

- (void)setManagedText:(id)a3
{
  v4 = a3;
  v8 = v4;
  if (v4)
  {
    v5 = [v4 trimmedString];
  }

  else
  {
    v5 = &stru_1F04268F8;
  }

  if (![(NSString *)self->_managedText isEqualToString:v5])
  {
    v6 = [(__CFString *)v5 copy];
    managedText = self->_managedText;
    self->_managedText = v6;

    [(CKTextTighteningLabel *)self _clearTextTighteningCaches];
    [(CKTextTighteningLabel *)self setNeedsLayout];
  }
}

- (void)traitCollectionDidChange:(id)a3
{
  v4.receiver = self;
  v4.super_class = CKTextTighteningLabel;
  [(CKTextTighteningLabel *)&v4 traitCollectionDidChange:a3];
  [(CKTextTighteningLabel *)self _clearTextTighteningCaches];
  [(CKTextTighteningLabel *)self setNeedsLayout];
}

- (void)setFont:(id)a3
{
  v4 = a3;
  v5 = [(CKTextTighteningLabel *)self font];
  v6 = [v5 isEqual:v4];

  v7.receiver = self;
  v7.super_class = CKTextTighteningLabel;
  [(CKTextTighteningLabel *)&v7 setFont:v4];

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

- (id)_attributedTextForFittingSize:(BOOL)a3 boundsSize:(CGSize)a4
{
  height = a4.height;
  width = a4.width;
  v6 = a3;
  v8 = self->_managedText;
  v9 = [(CKTextTighteningLabel *)self traitCollection];
  v10 = [v9 preferredContentSizeCategory];

  v11 = [(CKTextTighteningLabel *)self font];
  v12 = [objc_opt_class() _attributedStringWithText:v8 font:v11 sizeCategory:v10 textRect:v6 forFittingSize:{0.0, 0.0, width, height}];

  return v12;
}

- (void)_updateAttributedTextForFittingSize:(BOOL)a3 boundsSize:(CGSize)a4
{
  width = a4.width;
  if (a3)
  {
    p_untightenedAttributedText = &self->_untightenedAttributedText;
    untightenedAttributedText = self->_untightenedAttributedText;
    v8 = &OBJC_IVAR___CKTextTighteningLabel__untightenedAttributedTextBoundsWidth;
    if (!untightenedAttributedText)
    {
      goto LABEL_6;
    }

LABEL_5:
    if (vabdd_f64(*(&self->super.super.super.super.isa + *v8), a4.width) <= 2.22044605e-16)
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
  v9 = [(CKTextTighteningLabel *)self _attributedTextForFittingSize:a4.width boundsSize:a4.height];
  v10 = *p_untightenedAttributedText;
  *p_untightenedAttributedText = v9;

  *(&self->super.super.super.super.isa + *v8) = width;
  untightenedAttributedText = *p_untightenedAttributedText;
LABEL_7:
  v11 = untightenedAttributedText;
  [(CKTextTighteningLabel *)self setAttributedText:v11];
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v6 = [(CKTextTighteningLabel *)self attributedText];
  [(CKTextTighteningLabel *)self _updateAttributedTextForFittingSize:1 boundsSize:width, height];
  v13.receiver = self;
  v13.super_class = CKTextTighteningLabel;
  [(CKTextTighteningLabel *)&v13 sizeThatFits:width, height];
  v8 = v7;
  v10 = v9;
  [(CKTextTighteningLabel *)self setAttributedText:v6];

  v11 = v8;
  v12 = v10;
  result.height = v12;
  result.width = v11;
  return result;
}

+ (id)_attributedStringWithText:(id)a3 font:(id)a4 sizeCategory:(id)a5 textRect:(CGRect)a6 forFittingSize:(BOOL)a7
{
  height = a6.size.height;
  width = a6.size.width;
  y = a6.origin.y;
  x = a6.origin.x;
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v18 = [objc_alloc(MEMORY[0x1E696AD40]) initWithString:v15];
  if ([v15 length])
  {
    v19 = [v15 length];
    [v18 addAttribute:*MEMORY[0x1E69DB648] value:v16 range:{0, v19}];
    v20 = objc_alloc_init(MEMORY[0x1E69DB7C8]);
    [v20 setAlignment:1];
    [v20 setAllowsDefaultTighteningForTruncation:1];
    [v20 setLineBreakMode:4];
    [v18 addAttribute:*MEMORY[0x1E69DB688] value:v20 range:{0, v19}];
    if (!a7 && width > 0.0 && ([a1 attributedText:v18 fitsInRect:{x, y, width, height}] & 1) == 0)
    {
      if (v17 && UIContentSizeCategoryCompareToCategory(v17, *MEMORY[0x1E69DDC70]) == NSOrderedDescending)
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
        [a1 applyKerning:v18 whitespaceKerning:v23 * -0.05 toAttributedString:v21 * (v23 * -0.05)];
        if ([a1 attributedText:v18 fitsInRect:{x, y, width, height}])
        {
          break;
        }

        if (v22 == v23)
        {
          v24 = ((v22 * 0.9) + 1) * -0.05;
          [a1 applyKerning:v18 whitespaceKerning:v24 toAttributedString:v21 * v24];
          break;
        }
      }
    }
  }

  v25 = [v18 copy];

  return v25;
}

+ (BOOL)attributedText:(id)a3 fitsInRect:(CGRect)a4
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  [a3 boundingRectWithSize:0 options:0 context:{1.79769313e308, 1.79769313e308}];
  v8 = CGRectGetWidth(v10);
  v11.origin.x = x;
  v11.origin.y = y;
  v11.size.width = width;
  v11.size.height = height;
  return v8 <= CGRectGetWidth(v11);
}

+ (void)applyKerning:(double)a3 whitespaceKerning:(double)a4 toAttributedString:(id)a5
{
  v20 = a5;
  v7 = [MEMORY[0x1E696AB08] whitespaceCharacterSet];
  v8 = [v20 string];
  v9 = [v20 length];
  v10 = [v8 rangeOfCharacterFromSet:v7];
  v12 = v11;
  v13 = 0;
  v14 = *MEMORY[0x1E69DB660];
  while (1)
  {
    v15 = v10 == 0x7FFFFFFFFFFFFFFFLL ? v9 : v10;
    v16 = v15 - v13;
    v17 = [MEMORY[0x1E696AD98] numberWithDouble:a3];
    v18 = [MEMORY[0x1E696AD98] numberWithDouble:a4];
    [v20 addAttribute:v14 value:v17 range:{v13, v16}];
    if (v10 == 0x7FFFFFFFFFFFFFFFLL)
    {
      break;
    }

    [v20 addAttribute:v14 value:v18 range:{v10, v12}];
    v13 = v10 + v12;
    v10 = [v8 rangeOfCharacterFromSet:v7 options:0 range:{v10 + v12, v9 - (v10 + v12)}];
    v12 = v19;
  }
}

@end