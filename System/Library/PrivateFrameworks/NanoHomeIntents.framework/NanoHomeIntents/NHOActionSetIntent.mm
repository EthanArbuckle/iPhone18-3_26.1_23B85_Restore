@interface NHOActionSetIntent
- (BOOL)useHomeKitRecommendations;
- (void)setUseHomeKitRecommendations:(BOOL)recommendations;
@end

@implementation NHOActionSetIntent

- (BOOL)useHomeKitRecommendations
{
  v2 = *(&self->super.isa + OBJC_IVAR___NHOActionSetIntent__useHomeKitRecommendations);
  selfCopy = self;
  sub_25B161274();
  sub_25B161144();

  return v5;
}

- (void)setUseHomeKitRecommendations:(BOOL)recommendations
{
  v3 = *(&self->super.isa + OBJC_IVAR___NHOActionSetIntent__useHomeKitRecommendations);
  selfCopy = self;
  sub_25B161274();
  sub_25B161154();
}

@end