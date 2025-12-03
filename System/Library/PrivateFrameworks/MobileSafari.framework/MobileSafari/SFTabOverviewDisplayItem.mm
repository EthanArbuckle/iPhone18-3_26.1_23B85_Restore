@interface SFTabOverviewDisplayItem
- (void)applyContentBlurRadius;
- (void)sceneDidEnterBackground:(id)background;
- (void)sceneWillEnterForeground:(id)foreground;
- (void)updateSearchResultsForSearchController:(id)controller;
@end

@implementation SFTabOverviewDisplayItem

- (void)sceneDidEnterBackground:(id)background
{
  v4 = sub_18BC1E6A8();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_18BC1E678();
  selfCopy = self;
  sub_18B9E0E0C();
  if (v9)
  {
    v10 = *(&selfCopy->super.super.isa + OBJC_IVAR___SFTabOverviewDisplayItem_showsScrollPockets);
    *(&selfCopy->super.super.isa + OBJC_IVAR___SFTabOverviewDisplayItem_showsScrollPockets) = 0;
    if (v10 == 1)
    {
      sub_18B9E0F90();
    }
  }

  (*(v5 + 8))(v7, v4);
}

- (void)sceneWillEnterForeground:(id)foreground
{
  v4 = sub_18BC1E6A8();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_18BC1E678();
  selfCopy = self;
  sub_18B9E0E0C();
  if (v9)
  {
    v10 = *&selfCopy->super.$__lazy_storage_$_defaultVisibilityAssertion[OBJC_IVAR___SFTabOverviewDisplayItem_state] > 0.0;
    v11 = *(&selfCopy->super.super.isa + OBJC_IVAR___SFTabOverviewDisplayItem_showsScrollPockets);
    *(&selfCopy->super.super.isa + OBJC_IVAR___SFTabOverviewDisplayItem_showsScrollPockets) = v10;
    if (v10 != v11)
    {
      sub_18B9E0F90();
    }
  }

  (*(v5 + 8))(v7, v4);
}

- (void)applyContentBlurRadius
{
  selfCopy = self;
  sub_18B7D6B4C();
}

- (void)updateSearchResultsForSearchController:(id)controller
{
  controllerCopy = controller;
  selfCopy = self;
  sub_18B9E9164(controllerCopy);
}

@end