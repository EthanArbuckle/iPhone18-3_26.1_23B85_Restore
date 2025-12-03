@interface InlineBubbleTipCell
- (id)preferredLayoutAttributesFittingAttributes:(id)attributes;
- (void)layoutSubviews;
@end

@implementation InlineBubbleTipCell

- (id)preferredLayoutAttributesFittingAttributes:(id)attributes
{
  attributesCopy = attributes;
  selfCopy = self;
  sub_2167C8080(attributesCopy);

  return attributesCopy;
}

- (void)layoutSubviews
{
  selfCopy = self;
  sub_2167C8198();
}

@end