@interface CAMOnboardingBuddyViewManager
- (CAMOnboardingBuddyViewManager)init;
- (id)createViewControllerWithDelegate:(id)a3;
- (int64_t)modelLoadingStatus;
- (void)createViewModel:(id)a3;
@end

@implementation CAMOnboardingBuddyViewManager

- (int64_t)modelLoadingStatus
{
  v2 = self;
  v3 = sub_1A390C390();

  return v3;
}

- (void)createViewModel:(id)a3
{
  v4 = _Block_copy(a3);
  if (v4)
  {
    v5 = v4;
    v6 = swift_allocObject();
    *(v6 + 16) = v5;
    v7 = sub_1A390F948;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  v8 = self;
  sub_1A390C428(v7, v6);
  sub_1A3671090(v7);
}

- (id)createViewControllerWithDelegate:(id)a3
{
  swift_unknownObjectRetain();
  v4 = self;
  v5 = sub_1A390C670();
  swift_unknownObjectRelease();

  return v5;
}

- (CAMOnboardingBuddyViewManager)init
{
  ObjectType = swift_getObjectType();
  *(&self->super.isa + OBJC_IVAR___CAMOnboardingBuddyViewManager_viewModel) = 0;
  v5.receiver = self;
  v5.super_class = ObjectType;
  return [(CAMOnboardingBuddyViewManager *)&v5 init];
}

@end