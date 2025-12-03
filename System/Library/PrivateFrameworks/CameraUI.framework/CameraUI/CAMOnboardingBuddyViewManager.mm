@interface CAMOnboardingBuddyViewManager
- (CAMOnboardingBuddyViewManager)init;
- (id)createViewControllerWithDelegate:(id)delegate;
- (int64_t)modelLoadingStatus;
- (void)createViewModel:(id)model;
@end

@implementation CAMOnboardingBuddyViewManager

- (int64_t)modelLoadingStatus
{
  selfCopy = self;
  v3 = sub_1A390C390();

  return v3;
}

- (void)createViewModel:(id)model
{
  v4 = _Block_copy(model);
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

  selfCopy = self;
  sub_1A390C428(v7, v6);
  sub_1A3671090(v7);
}

- (id)createViewControllerWithDelegate:(id)delegate
{
  swift_unknownObjectRetain();
  selfCopy = self;
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