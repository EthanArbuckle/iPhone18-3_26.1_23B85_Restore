@interface BannerCell
- (id)preferredLayoutAttributesFittingAttributes:(id)attributes;
- (void)layoutSubviews;
@end

@implementation BannerCell

- (id)preferredLayoutAttributesFittingAttributes:(id)attributes
{
  attributesCopy = attributes;
  selfCopy = self;
  sub_21697AEDC(attributesCopy);

  return attributesCopy;
}

- (void)layoutSubviews
{
  selfCopy = self;
  sub_21697B094();
}

@end