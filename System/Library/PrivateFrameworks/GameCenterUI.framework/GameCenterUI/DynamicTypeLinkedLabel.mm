@interface DynamicTypeLinkedLabel
- (NSAttributedString)attributedText;
- (void)labelTapped:(id)tapped;
- (void)setAttributedText:(id)text;
@end

@implementation DynamicTypeLinkedLabel

- (NSAttributedString)attributedText
{
  selfCopy = self;
  v3 = sub_24E05FCE8();

  return v3;
}

- (void)setAttributedText:(id)text
{
  textCopy = text;
  selfCopy = self;
  sub_24E05FD90(text);
}

- (void)labelTapped:(id)tapped
{
  tappedCopy = tapped;
  selfCopy = self;
  sub_24E060648(tappedCopy);
}

@end