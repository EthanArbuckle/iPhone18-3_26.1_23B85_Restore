@interface _DisclosureLabel
- (CGSize)intrinsicContentSize;
- (UIEdgeInsets)edgeInsets;
- (_DisclosureLabel)initWithFrame:(CGRect)a3;
- (void)drawTextInRect:(CGRect)a3;
- (void)setBounds:(CGRect)a3;
- (void)updateConstraints;
@end

@implementation _DisclosureLabel

- (_DisclosureLabel)initWithFrame:(CGRect)a3
{
  v13.receiver = self;
  v13.super_class = _DisclosureLabel;
  v3 = [(_DisclosureLabel *)&v13 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = [MEMORY[0x1E69DB880] preferredFontDescriptorWithTextStyle:*MEMORY[0x1E69DDD08]];
    v5 = [v4 fontDescriptorWithSymbolicTraits:2];
    v6 = [MEMORY[0x1E69DB878] fontWithDescriptor:v5 size:0.0];
    [(_DisclosureLabel *)v3 setFont:v6];
    [v6 lineHeight];
    v3->_edgeInsets.top = v7;
    v3->_edgeInsets.left = v7 * 1.2;
    v3->_edgeInsets.bottom = v7;
    v3->_edgeInsets.right = v7 * 1.2;
    v8 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
    v9 = [v8 localizedStringForKey:@"CLINICAL_DOCUMENT_CDA_DISCLOSURE" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];
    [(_DisclosureLabel *)v3 setText:v9];

    [(_DisclosureLabel *)v3 setNumberOfLines:0];
    v10 = [MEMORY[0x1E69DC888] systemBackgroundColor];
    [(_DisclosureLabel *)v3 setBackgroundColor:v10];

    v11 = HKHealthKeyColor();
    [(_DisclosureLabel *)v3 setTextColor:v11];
  }

  return v3;
}

- (void)drawTextInRect:(CGRect)a3
{
  top = self->_edgeInsets.top;
  left = self->_edgeInsets.left;
  v5 = a3.size.width - (left + self->_edgeInsets.right);
  v6 = a3.size.height - (top + self->_edgeInsets.bottom);
  v7.receiver = self;
  v7.super_class = _DisclosureLabel;
  [(_DisclosureLabel *)&v7 drawTextInRect:a3.origin.x + left, a3.origin.y + top, v5, v6];
}

- (CGSize)intrinsicContentSize
{
  v7.receiver = self;
  v7.super_class = _DisclosureLabel;
  [(_DisclosureLabel *)&v7 intrinsicContentSize];
  v4 = v3 + self->_edgeInsets.top + self->_edgeInsets.bottom;
  v6 = v5 + self->_edgeInsets.left + self->_edgeInsets.right;
  result.height = v4;
  result.width = v6;
  return result;
}

- (void)setBounds:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  [(_DisclosureLabel *)self bounds];
  if (width != v8)
  {
    [(_DisclosureLabel *)self setNeedsUpdateConstraints];
  }

  v9.receiver = self;
  v9.super_class = _DisclosureLabel;
  [(_DisclosureLabel *)&v9 setBounds:x, y, width, height];
}

- (void)updateConstraints
{
  [(_DisclosureLabel *)self bounds];
  v4 = v3 - self->_edgeInsets.left - self->_edgeInsets.right;
  [(_DisclosureLabel *)self preferredMaxLayoutWidth];
  if (v5 != v4)
  {
    [(_DisclosureLabel *)self setPreferredMaxLayoutWidth:v4];
  }

  v6.receiver = self;
  v6.super_class = _DisclosureLabel;
  [(_DisclosureLabel *)&v6 updateConstraints];
}

- (UIEdgeInsets)edgeInsets
{
  top = self->_edgeInsets.top;
  left = self->_edgeInsets.left;
  bottom = self->_edgeInsets.bottom;
  right = self->_edgeInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

@end