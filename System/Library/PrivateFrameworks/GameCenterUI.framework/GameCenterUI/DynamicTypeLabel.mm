@interface DynamicTypeLabel
- (NSAttributedString)attributedText;
- (UIFont)font;
- (int64_t)textAlignment;
- (void)setAttributedText:(id)text;
- (void)setFont:(id)font;
- (void)setTextAlignment:(int64_t)alignment;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation DynamicTypeLabel

- (UIFont)font
{
  selfCopy = self;
  v3 = sub_24E0AFC78(&selRef_font);

  return v3;
}

- (void)setFont:(id)font
{
  fontCopy = font;
  selfCopy = self;
  sub_24E0AF968(font);
}

- (int64_t)textAlignment
{
  selfCopy = self;
  v3 = sub_24E0AFB34();

  return v3;
}

- (void)setTextAlignment:(int64_t)alignment
{
  selfCopy = self;
  sub_24E0AFBC0(alignment);
}

- (NSAttributedString)attributedText
{
  v4.receiver = self;
  v4.super_class = type metadata accessor for DynamicTypeLabel();
  attributedText = [(DynamicTypeLabel *)&v4 attributedText];

  return attributedText;
}

- (void)setAttributedText:(id)text
{
  textCopy = text;
  selfCopy = self;
  lineBreakMode = [(DynamicTypeLabel *)selfCopy lineBreakMode];
  v7.receiver = selfCopy;
  v7.super_class = type metadata accessor for DynamicTypeLabel();
  [(DynamicTypeLabel *)&v7 setAttributedText:textCopy];
  [(DynamicTypeLabel *)selfCopy setLineBreakMode:lineBreakMode];
}

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  selfCopy = self;
  sub_24E0AFDF0(change);
}

@end