@interface DynamicTypeLabel
- (NSAttributedString)attributedText;
- (UIFont)font;
- (int64_t)textAlignment;
- (void)setAttributedText:(id)a3;
- (void)setFont:(id)a3;
- (void)setTextAlignment:(int64_t)a3;
- (void)traitCollectionDidChange:(id)a3;
@end

@implementation DynamicTypeLabel

- (UIFont)font
{
  v2 = self;
  v3 = sub_24E0AFC78(&selRef_font);

  return v3;
}

- (void)setFont:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_24E0AF968(a3);
}

- (int64_t)textAlignment
{
  v2 = self;
  v3 = sub_24E0AFB34();

  return v3;
}

- (void)setTextAlignment:(int64_t)a3
{
  v4 = self;
  sub_24E0AFBC0(a3);
}

- (NSAttributedString)attributedText
{
  v4.receiver = self;
  v4.super_class = type metadata accessor for DynamicTypeLabel();
  v2 = [(DynamicTypeLabel *)&v4 attributedText];

  return v2;
}

- (void)setAttributedText:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = [(DynamicTypeLabel *)v5 lineBreakMode];
  v7.receiver = v5;
  v7.super_class = type metadata accessor for DynamicTypeLabel();
  [(DynamicTypeLabel *)&v7 setAttributedText:v4];
  [(DynamicTypeLabel *)v5 setLineBreakMode:v6];
}

- (void)traitCollectionDidChange:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_24E0AFDF0(a3);
}

@end