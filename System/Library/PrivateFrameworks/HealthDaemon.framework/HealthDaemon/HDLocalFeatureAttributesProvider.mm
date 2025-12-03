@interface HDLocalFeatureAttributesProvider
- (HDLocalFeatureAttributesProvider)initWithLocalFeatureAttributes:(id)attributes;
- (HKPairedFeatureAttributes)currentPairedFeatureAttributes;
@end

@implementation HDLocalFeatureAttributesProvider

- (HDLocalFeatureAttributesProvider)initWithLocalFeatureAttributes:(id)attributes
{
  attributesCopy = attributes;
  v9.receiver = self;
  v9.super_class = HDLocalFeatureAttributesProvider;
  v5 = [(HDLocalFeatureAttributesProvider *)&v9 init];
  if (v5)
  {
    v6 = [attributesCopy copy];
    localFeatureAttributes = v5->_localFeatureAttributes;
    v5->_localFeatureAttributes = v6;
  }

  return v5;
}

- (HKPairedFeatureAttributes)currentPairedFeatureAttributes
{
  v2 = [objc_alloc(MEMORY[0x277CCD780]) initWithLocalAttributes:self->_localFeatureAttributes pairedAttributes:0];

  return v2;
}

@end