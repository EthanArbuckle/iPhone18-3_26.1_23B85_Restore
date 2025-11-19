@interface DSFolderCustomizationNavigationController
- (_TtC17DesktopServicesUI41DSFolderCustomizationNavigationController)initWithCoder:(id)a3;
- (_TtC17DesktopServicesUI41DSFolderCustomizationNavigationController)initWithNavigationBarClass:(Class)a3 toolbarClass:(Class)a4;
- (_TtC17DesktopServicesUI41DSFolderCustomizationNavigationController)initWithNibName:(id)a3 bundle:(id)a4;
- (_TtC17DesktopServicesUI41DSFolderCustomizationNavigationController)initWithRootViewController:(id)a3;
- (void)prepareForPopoverPresentation:(id)a3;
- (void)presentationController:(id)a3 willPresentWithAdaptiveStyle:(int64_t)a4 transitionCoordinator:(id)a5;
@end

@implementation DSFolderCustomizationNavigationController

- (void)presentationController:(id)a3 willPresentWithAdaptiveStyle:(int64_t)a4 transitionCoordinator:(id)a5
{
  if (a4 != 7)
  {
    *(&self->super.super.super.super.isa + OBJC_IVAR____TtC17DesktopServicesUI41DSFolderCustomizationNavigationController_isPresentedAsPopover) = 0;
    v6 = self;
    if (sub_24884261C())
    {
      [(DSFolderCustomizationNavigationController *)v6 setNavigationBarHidden:0 animated:0];
    }
  }
}

- (void)prepareForPopoverPresentation:(id)a3
{
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC17DesktopServicesUI41DSFolderCustomizationNavigationController_isPresentedAsPopover) = 1;
  v3 = self;
  if (sub_24884261C())
  {
    [(DSFolderCustomizationNavigationController *)v3 setNavigationBarHidden:1 animated:0];
  }
}

- (_TtC17DesktopServicesUI41DSFolderCustomizationNavigationController)initWithNavigationBarClass:(Class)a3 toolbarClass:(Class)a4
{
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC17DesktopServicesUI41DSFolderCustomizationNavigationController_isPresentedAsPopover) = 0;
  v7.receiver = self;
  v7.super_class = type metadata accessor for DSFolderCustomizationNavigationController();
  return [(DSFolderCustomizationNavigationController *)&v7 initWithNavigationBarClass:a3 toolbarClass:a4];
}

- (_TtC17DesktopServicesUI41DSFolderCustomizationNavigationController)initWithRootViewController:(id)a3
{
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC17DesktopServicesUI41DSFolderCustomizationNavigationController_isPresentedAsPopover) = 0;
  v5.receiver = self;
  v5.super_class = type metadata accessor for DSFolderCustomizationNavigationController();
  return [(DSFolderCustomizationNavigationController *)&v5 initWithRootViewController:a3];
}

- (_TtC17DesktopServicesUI41DSFolderCustomizationNavigationController)initWithNibName:(id)a3 bundle:(id)a4
{
  if (a3)
  {
    sub_2488A56DC();
    *(&self->super.super.super.super.isa + OBJC_IVAR____TtC17DesktopServicesUI41DSFolderCustomizationNavigationController_isPresentedAsPopover) = 0;
    v6 = a4;
    v7 = sub_2488A56CC();
  }

  else
  {
    *(&self->super.super.super.super.isa + OBJC_IVAR____TtC17DesktopServicesUI41DSFolderCustomizationNavigationController_isPresentedAsPopover) = 0;
    v8 = a4;
    v7 = 0;
  }

  v11.receiver = self;
  v11.super_class = type metadata accessor for DSFolderCustomizationNavigationController();
  v9 = [(DSFolderCustomizationNavigationController *)&v11 initWithNibName:v7 bundle:a4];

  return v9;
}

- (_TtC17DesktopServicesUI41DSFolderCustomizationNavigationController)initWithCoder:(id)a3
{
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC17DesktopServicesUI41DSFolderCustomizationNavigationController_isPresentedAsPopover) = 0;
  v7.receiver = self;
  v7.super_class = type metadata accessor for DSFolderCustomizationNavigationController();
  v4 = a3;
  v5 = [(DSFolderCustomizationNavigationController *)&v7 initWithCoder:v4];

  if (v5)
  {
  }

  return v5;
}

@end