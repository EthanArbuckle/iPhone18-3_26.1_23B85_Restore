@interface CameraScannerOverlayWithButtonsViewController
- (_TtC18HealthExperienceUI45CameraScannerOverlayWithButtonsViewController)initWithTitle:(id)title detailText:(id)text icon:(id)icon contentLayout:(int64_t)layout;
- (_TtC18HealthExperienceUI45CameraScannerOverlayWithButtonsViewController)initWithTitle:(id)title detailText:(id)text symbolName:(id)name contentLayout:(int64_t)layout;
- (void)hxui_primaryFooterButtonTapped;
- (void)hxui_secondaryFooterButtonTapped;
- (void)viewDidLoad;
@end

@implementation CameraScannerOverlayWithButtonsViewController

- (void)viewDidLoad
{
  selfCopy = self;
  sub_1BA0C5A44();
  sub_1BA0C4168(&OBJC_IVAR____TtC18HealthExperienceUI45CameraScannerOverlayWithButtonsViewController_overlayView);
  sub_1BA0C5588();
  v3.receiver = selfCopy;
  v3.super_class = type metadata accessor for CameraScannerOverlayWithButtonsViewController();
  [(OBWelcomeFullCenterContentController *)&v3 viewDidLoad];
}

- (void)hxui_primaryFooterButtonTapped
{
  selfCopy = self;
  sub_1BA0C5328(&OBJC_IVAR____TtC18HealthExperienceUI45CameraScannerOverlayWithButtonsViewController_actionHandler, "[%{public}s] Primary button pressed without a handler");
}

- (void)hxui_secondaryFooterButtonTapped
{
  selfCopy = self;
  sub_1BA0C5328(&OBJC_IVAR____TtC18HealthExperienceUI45CameraScannerOverlayWithButtonsViewController_cancelHandler, "[%{public}s] Cancel button pressed without a handler");
}

- (_TtC18HealthExperienceUI45CameraScannerOverlayWithButtonsViewController)initWithTitle:(id)title detailText:(id)text symbolName:(id)name contentLayout:(int64_t)layout
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC18HealthExperienceUI45CameraScannerOverlayWithButtonsViewController)initWithTitle:(id)title detailText:(id)text icon:(id)icon contentLayout:(int64_t)layout
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end