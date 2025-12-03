@interface PriorityOnboardingController
- (_TtC7ChatKit28PriorityOnboardingController)initWithTitle:(id)title detailText:(id)text icon:(id)icon contentLayout:(int64_t)layout;
- (_TtC7ChatKit28PriorityOnboardingController)initWithTitle:(id)title detailText:(id)text symbolName:(id)name contentLayout:(int64_t)layout;
- (void)customizeButtonAction;
- (void)hideNotificationsButtonAction;
- (void)viewDidLoad;
@end

@implementation PriorityOnboardingController

- (void)viewDidLoad
{
  selfCopy = self;
  PriorityOnboardingController.viewDidLoad()();
}

- (void)hideNotificationsButtonAction
{
  selfCopy = self;
  sub_190A79E74();
}

- (void)customizeButtonAction
{
  selfCopy = self;
  sub_190ABA3AC();
  navigationController = [(PriorityOnboardingController *)selfCopy navigationController];
  if (navigationController)
  {
    v3 = navigationController;
    [navigationController dismissViewControllerAnimated:1 completion:0];
  }
}

- (_TtC7ChatKit28PriorityOnboardingController)initWithTitle:(id)title detailText:(id)text symbolName:(id)name contentLayout:(int64_t)layout
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC7ChatKit28PriorityOnboardingController)initWithTitle:(id)title detailText:(id)text icon:(id)icon contentLayout:(int64_t)layout
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end