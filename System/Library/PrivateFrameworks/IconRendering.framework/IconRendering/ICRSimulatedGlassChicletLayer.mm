@interface ICRSimulatedGlassChicletLayer
- (void)layoutSublayers;
@end

@implementation ICRSimulatedGlassChicletLayer

- (void)layoutSublayers
{
  selfCopy = self;
  ICRSimulatedGlassChicletLayer.layoutSublayers()();
}

@end