@interface NHOSmartStackActionIntent
- (BOOL)useHomeKitRecommendations;
- (NSString)accessoriesAndScenes;
- (void)setAccessoriesAndScenes:(id)scenes;
- (void)setUseHomeKitRecommendations:(BOOL)recommendations;
@end

@implementation NHOSmartStackActionIntent

- (BOOL)useHomeKitRecommendations
{
  v2 = *(&self->super.isa + OBJC_IVAR___NHOSmartStackActionIntent__useHomeKitRecommendations);
  selfCopy = self;
  sub_25B161274();
  sub_25B161144();

  return v5;
}

- (void)setUseHomeKitRecommendations:(BOOL)recommendations
{
  v3 = *(&self->super.isa + OBJC_IVAR___NHOSmartStackActionIntent__useHomeKitRecommendations);
  selfCopy = self;
  sub_25B161274();
  sub_25B161154();
}

- (NSString)accessoriesAndScenes
{
  v2 = *(&self->super.isa + OBJC_IVAR___NHOSmartStackActionIntent__accessoriesAndScenes);
  selfCopy = self;
  sub_25B161274();
  sub_25B161144();

  v4 = sub_25B161B24();

  return v4;
}

- (void)setAccessoriesAndScenes:(id)scenes
{
  sub_25B161B34();
  v4 = *(&self->super.isa + OBJC_IVAR___NHOSmartStackActionIntent__accessoriesAndScenes);
  selfCopy = self;
  sub_25B161274();
  sub_25B161154();
}

@end