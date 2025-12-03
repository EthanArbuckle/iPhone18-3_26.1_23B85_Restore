@interface InCallControlsTitleCell
- (id)preferredLayoutAttributesFittingAttributes:(id)attributes;
@end

@implementation InCallControlsTitleCell

- (id)preferredLayoutAttributesFittingAttributes:(id)attributes
{
  attributesCopy = attributes;
  selfCopy = self;
  v6.super.isa = InCallControlsTitleCell.preferredLayoutAttributesFitting(_:)(attributesCopy).super.isa;

  return v6.super.isa;
}

@end