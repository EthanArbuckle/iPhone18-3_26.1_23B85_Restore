@interface HDLocalFeatureAttributesProvider
- (HDLocalFeatureAttributesProvider)initWithLocalFeatureAttributes:(id)a3;
- (HKPairedFeatureAttributes)currentPairedFeatureAttributes;
@end

@implementation HDLocalFeatureAttributesProvider

- (HDLocalFeatureAttributesProvider)initWithLocalFeatureAttributes:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = HDLocalFeatureAttributesProvider;
  v5 = [(HDLocalFeatureAttributesProvider *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
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