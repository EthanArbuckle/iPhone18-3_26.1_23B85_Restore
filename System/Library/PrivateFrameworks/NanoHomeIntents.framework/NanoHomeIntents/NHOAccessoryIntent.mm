@interface NHOAccessoryIntent
- (BOOL)useHomeKitRecommendations;
- (NSString)description;
- (void)setUseHomeKitRecommendations:(BOOL)recommendations;
@end

@implementation NHOAccessoryIntent

- (BOOL)useHomeKitRecommendations
{
  v2 = *(&self->super.isa + OBJC_IVAR___NHOAccessoryIntent__useHomeKitRecommendations);
  selfCopy = self;
  sub_25B161274();
  sub_25B161144();

  return v5;
}

- (void)setUseHomeKitRecommendations:(BOOL)recommendations
{
  v3 = *(&self->super.isa + OBJC_IVAR___NHOAccessoryIntent__useHomeKitRecommendations);
  selfCopy = self;
  sub_25B161274();
  sub_25B161154();
}

- (NSString)description
{
  selfCopy = self;
  NHOAccessoryIntent.description.getter();

  v3 = sub_25B161B24();

  return v3;
}

@end