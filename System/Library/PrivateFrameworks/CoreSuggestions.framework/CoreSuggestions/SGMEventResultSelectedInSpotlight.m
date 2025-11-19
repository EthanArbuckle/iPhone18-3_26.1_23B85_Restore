@interface SGMEventResultSelectedInSpotlight
- (SGMEventResultSelectedInSpotlight)init;
@end

@implementation SGMEventResultSelectedInSpotlight

- (SGMEventResultSelectedInSpotlight)init
{
  v7.receiver = self;
  v7.super_class = SGMEventResultSelectedInSpotlight;
  v2 = [(SGMEventResultSelectedInSpotlight *)&v7 init];
  if (v2)
  {
    v3 = objc_alloc(MEMORY[0x1E69C5B58]);
    v4 = [v3 initWithFeatureId:@"Found" event:@"EventResultSelectedInSpotlight" registerProperties:MEMORY[0x1E695E0F0] propertySubsets:MEMORY[0x1E695E0F0]];
    tracker = v2->_tracker;
    v2->_tracker = v4;
  }

  return v2;
}

@end