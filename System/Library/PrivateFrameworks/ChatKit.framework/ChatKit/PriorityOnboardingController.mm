@interface PriorityOnboardingController
- (_TtC7ChatKit28PriorityOnboardingController)initWithTitle:(id)a3 detailText:(id)a4 icon:(id)a5 contentLayout:(int64_t)a6;
- (_TtC7ChatKit28PriorityOnboardingController)initWithTitle:(id)a3 detailText:(id)a4 symbolName:(id)a5 contentLayout:(int64_t)a6;
- (void)customizeButtonAction;
- (void)hideNotificationsButtonAction;
- (void)viewDidLoad;
@end

@implementation PriorityOnboardingController

- (void)viewDidLoad
{
  v2 = self;
  PriorityOnboardingController.viewDidLoad()();
}

- (void)hideNotificationsButtonAction
{
  v2 = self;
  sub_190A79E74();
}

- (void)customizeButtonAction
{
  v4 = self;
  sub_190ABA3AC();
  v2 = [(PriorityOnboardingController *)v4 navigationController];
  if (v2)
  {
    v3 = v2;
    [v2 dismissViewControllerAnimated:1 completion:0];
  }
}

- (_TtC7ChatKit28PriorityOnboardingController)initWithTitle:(id)a3 detailText:(id)a4 symbolName:(id)a5 contentLayout:(int64_t)a6
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC7ChatKit28PriorityOnboardingController)initWithTitle:(id)a3 detailText:(id)a4 icon:(id)a5 contentLayout:(int64_t)a6
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end