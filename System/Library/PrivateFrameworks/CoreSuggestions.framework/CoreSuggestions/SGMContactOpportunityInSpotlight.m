@interface SGMContactOpportunityInSpotlight
- (SGMContactOpportunityInSpotlight)init;
@end

@implementation SGMContactOpportunityInSpotlight

- (SGMContactOpportunityInSpotlight)init
{
  v7.receiver = self;
  v7.super_class = SGMContactOpportunityInSpotlight;
  v2 = [(SGMContactOpportunityInSpotlight *)&v7 init];
  if (v2)
  {
    v3 = objc_alloc(MEMORY[0x1E69C5B58]);
    v4 = [v3 initWithFeatureId:@"Found" event:@"ContactOpportunityInSpotlight" registerProperties:MEMORY[0x1E695E0F0] propertySubsets:MEMORY[0x1E695E0F0]];
    tracker = v2->_tracker;
    v2->_tracker = v4;
  }

  return v2;
}

@end