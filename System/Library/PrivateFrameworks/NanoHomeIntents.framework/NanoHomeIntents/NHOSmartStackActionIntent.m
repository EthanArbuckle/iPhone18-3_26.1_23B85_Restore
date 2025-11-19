@interface NHOSmartStackActionIntent
- (BOOL)useHomeKitRecommendations;
- (NSString)accessoriesAndScenes;
- (void)setAccessoriesAndScenes:(id)a3;
- (void)setUseHomeKitRecommendations:(BOOL)a3;
@end

@implementation NHOSmartStackActionIntent

- (BOOL)useHomeKitRecommendations
{
  v2 = *(&self->super.isa + OBJC_IVAR___NHOSmartStackActionIntent__useHomeKitRecommendations);
  v3 = self;
  sub_25B161274();
  sub_25B161144();

  return v5;
}

- (void)setUseHomeKitRecommendations:(BOOL)a3
{
  v3 = *(&self->super.isa + OBJC_IVAR___NHOSmartStackActionIntent__useHomeKitRecommendations);
  v4 = self;
  sub_25B161274();
  sub_25B161154();
}

- (NSString)accessoriesAndScenes
{
  v2 = *(&self->super.isa + OBJC_IVAR___NHOSmartStackActionIntent__accessoriesAndScenes);
  v3 = self;
  sub_25B161274();
  sub_25B161144();

  v4 = sub_25B161B24();

  return v4;
}

- (void)setAccessoriesAndScenes:(id)a3
{
  sub_25B161B34();
  v4 = *(&self->super.isa + OBJC_IVAR___NHOSmartStackActionIntent__accessoriesAndScenes);
  v5 = self;
  sub_25B161274();
  sub_25B161154();
}

@end