@interface NHOAccessoryIntent
- (BOOL)useHomeKitRecommendations;
- (NSString)description;
- (void)setUseHomeKitRecommendations:(BOOL)a3;
@end

@implementation NHOAccessoryIntent

- (BOOL)useHomeKitRecommendations
{
  v2 = *(&self->super.isa + OBJC_IVAR___NHOAccessoryIntent__useHomeKitRecommendations);
  v3 = self;
  sub_25B161274();
  sub_25B161144();

  return v5;
}

- (void)setUseHomeKitRecommendations:(BOOL)a3
{
  v3 = *(&self->super.isa + OBJC_IVAR___NHOAccessoryIntent__useHomeKitRecommendations);
  v4 = self;
  sub_25B161274();
  sub_25B161154();
}

- (NSString)description
{
  v2 = self;
  NHOAccessoryIntent.description.getter();

  v3 = sub_25B161B24();

  return v3;
}

@end