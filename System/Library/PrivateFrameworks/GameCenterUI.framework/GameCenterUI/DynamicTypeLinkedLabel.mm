@interface DynamicTypeLinkedLabel
- (NSAttributedString)attributedText;
- (void)labelTapped:(id)a3;
- (void)setAttributedText:(id)a3;
@end

@implementation DynamicTypeLinkedLabel

- (NSAttributedString)attributedText
{
  v2 = self;
  v3 = sub_24E05FCE8();

  return v3;
}

- (void)setAttributedText:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_24E05FD90(a3);
}

- (void)labelTapped:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_24E060648(v4);
}

@end