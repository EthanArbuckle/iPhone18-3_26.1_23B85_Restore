@interface SummarySharingOnboardingChooseSelectionFlowViewController
- (_TtC18HealthExperienceUI57SummarySharingOnboardingChooseSelectionFlowViewController)initWithTitle:(id)a3 detailText:(id)a4 icon:(id)a5 contentLayout:(int64_t)a6;
- (_TtC18HealthExperienceUI57SummarySharingOnboardingChooseSelectionFlowViewController)initWithTitle:(id)a3 detailText:(id)a4 symbolName:(id)a5 contentLayout:(int64_t)a6;
- (void)hxui_cancelButtonTapped;
- (void)hxui_primaryFooterButtonTapped;
- (void)hxui_secondaryFooterButtonTapped;
- (void)viewDidAppear:(BOOL)a3;
@end

@implementation SummarySharingOnboardingChooseSelectionFlowViewController

- (void)viewDidAppear:(BOOL)a3
{
  v3 = a3;
  v6.receiver = self;
  v6.super_class = type metadata accessor for SummarySharingOnboardingChooseSelectionFlowViewController();
  v4 = v6.receiver;
  [(OBBaseWelcomeController *)&v6 viewDidAppear:v3];
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
  v2 = self;
  sub_1BA33E32C();
}

- (void)hxui_secondaryFooterButtonTapped
{
  v2 = self;
  sub_1BA33E7C0();
}

- (void)hxui_cancelButtonTapped
{
  memset(v4, 0, 24);
  v4[3] = 12;
  v5 = 0;
  v3 = self;

  sub_1B9FEF9F4(self, v4);

  [(SummarySharingOnboardingChooseSelectionFlowViewController *)v3 dismissViewControllerAnimated:1 completion:0];
}

- (_TtC18HealthExperienceUI57SummarySharingOnboardingChooseSelectionFlowViewController)initWithTitle:(id)a3 detailText:(id)a4 symbolName:(id)a5 contentLayout:(int64_t)a6
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC18HealthExperienceUI57SummarySharingOnboardingChooseSelectionFlowViewController)initWithTitle:(id)a3 detailText:(id)a4 icon:(id)a5 contentLayout:(int64_t)a6
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end