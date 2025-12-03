@interface SummarySharingOnboardingChooseSelectionFlowViewController
- (_TtC18HealthExperienceUI57SummarySharingOnboardingChooseSelectionFlowViewController)initWithTitle:(id)title detailText:(id)text icon:(id)icon contentLayout:(int64_t)layout;
- (_TtC18HealthExperienceUI57SummarySharingOnboardingChooseSelectionFlowViewController)initWithTitle:(id)title detailText:(id)text symbolName:(id)name contentLayout:(int64_t)layout;
- (void)hxui_cancelButtonTapped;
- (void)hxui_primaryFooterButtonTapped;
- (void)hxui_secondaryFooterButtonTapped;
- (void)viewDidAppear:(BOOL)appear;
@end

@implementation SummarySharingOnboardingChooseSelectionFlowViewController

- (void)viewDidAppear:(BOOL)appear
{
  appearCopy = appear;
  v6.receiver = self;
  v6.super_class = type metadata accessor for SummarySharingOnboardingChooseSelectionFlowViewController();
  v4 = v6.receiver;
  [(OBBaseWelcomeController *)&v6 viewDidAppear:appearCopy];
  v5 = *&v4[OBJC_IVAR____TtC18HealthExperienceUI57SummarySharingOnboardingChooseSelectionFlowViewController_selectionFlowContext];
  if (*(v5 + 72) == 1)
  {
    *(v5 + 72) = 0;

    sub_1B9FEFF28(0);
  }

  else
  {
  }
}

- (void)hxui_primaryFooterButtonTapped
{
  selfCopy = self;
  sub_1BA33E32C();
}

- (void)hxui_secondaryFooterButtonTapped
{
  selfCopy = self;
  sub_1BA33E7C0();
}

- (void)hxui_cancelButtonTapped
{
  memset(v4, 0, 24);
  v4[3] = 12;
  v5 = 0;
  selfCopy = self;

  sub_1B9FEF9F4(self, v4);

  [(SummarySharingOnboardingChooseSelectionFlowViewController *)selfCopy dismissViewControllerAnimated:1 completion:0];
}

- (_TtC18HealthExperienceUI57SummarySharingOnboardingChooseSelectionFlowViewController)initWithTitle:(id)title detailText:(id)text symbolName:(id)name contentLayout:(int64_t)layout
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC18HealthExperienceUI57SummarySharingOnboardingChooseSelectionFlowViewController)initWithTitle:(id)title detailText:(id)text icon:(id)icon contentLayout:(int64_t)layout
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end