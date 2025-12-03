@interface DSFolderCustomizationNavigationController
- (_TtC17DesktopServicesUI41DSFolderCustomizationNavigationController)initWithCoder:(id)coder;
- (_TtC17DesktopServicesUI41DSFolderCustomizationNavigationController)initWithNavigationBarClass:(Class)class toolbarClass:(Class)toolbarClass;
- (_TtC17DesktopServicesUI41DSFolderCustomizationNavigationController)initWithNibName:(id)name bundle:(id)bundle;
- (_TtC17DesktopServicesUI41DSFolderCustomizationNavigationController)initWithRootViewController:(id)controller;
- (void)prepareForPopoverPresentation:(id)presentation;
- (void)presentationController:(id)controller willPresentWithAdaptiveStyle:(int64_t)style transitionCoordinator:(id)coordinator;
@end

@implementation DSFolderCustomizationNavigationController

- (void)presentationController:(id)controller willPresentWithAdaptiveStyle:(int64_t)style transitionCoordinator:(id)coordinator
{
  if (style != 7)
  {
    *(&self->super.super.super.super.isa + OBJC_IVAR____TtC17DesktopServicesUI41DSFolderCustomizationNavigationController_isPresentedAsPopover) = 0;
    selfCopy = self;
    if (sub_24884261C())
    {
      [(DSFolderCustomizationNavigationController *)selfCopy setNavigationBarHidden:0 animated:0];
    }
  }
}

- (void)prepareForPopoverPresentation:(id)presentation
{
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC17DesktopServicesUI41DSFolderCustomizationNavigationController_isPresentedAsPopover) = 1;
  selfCopy = self;
  if (sub_24884261C())
  {
    [(DSFolderCustomizationNavigationController *)selfCopy setNavigationBarHidden:1 animated:0];
  }
}

- (_TtC17DesktopServicesUI41DSFolderCustomizationNavigationController)initWithNavigationBarClass:(Class)class toolbarClass:(Class)toolbarClass
{
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC17DesktopServicesUI41DSFolderCustomizationNavigationController_isPresentedAsPopover) = 0;
  v7.receiver = self;
  v7.super_class = type metadata accessor for DSFolderCustomizationNavigationController();
  return [(DSFolderCustomizationNavigationController *)&v7 initWithNavigationBarClass:class toolbarClass:toolbarClass];
}

- (_TtC17DesktopServicesUI41DSFolderCustomizationNavigationController)initWithRootViewController:(id)controller
{
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC17DesktopServicesUI41DSFolderCustomizationNavigationController_isPresentedAsPopover) = 0;
  v5.receiver = self;
  v5.super_class = type metadata accessor for DSFolderCustomizationNavigationController();
  return [(DSFolderCustomizationNavigationController *)&v5 initWithRootViewController:controller];
}

- (_TtC17DesktopServicesUI41DSFolderCustomizationNavigationController)initWithNibName:(id)name bundle:(id)bundle
{
  if (name)
  {
    sub_2488A56DC();
    *(&self->super.super.super.super.isa + OBJC_IVAR____TtC17DesktopServicesUI41DSFolderCustomizationNavigationController_isPresentedAsPopover) = 0;
    bundleCopy = bundle;
    v7 = sub_2488A56CC();
  }

  else
  {
    *(&self->super.super.super.super.isa + OBJC_IVAR____TtC17DesktopServicesUI41DSFolderCustomizationNavigationController_isPresentedAsPopover) = 0;
    bundleCopy2 = bundle;
    v7 = 0;
  }

  v11.receiver = self;
  v11.super_class = type metadata accessor for DSFolderCustomizationNavigationController();
  v9 = [(DSFolderCustomizationNavigationController *)&v11 initWithNibName:v7 bundle:bundle];

  return v9;
}

- (_TtC17DesktopServicesUI41DSFolderCustomizationNavigationController)initWithCoder:(id)coder
{
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC17DesktopServicesUI41DSFolderCustomizationNavigationController_isPresentedAsPopover) = 0;
  v7.receiver = self;
  v7.super_class = type metadata accessor for DSFolderCustomizationNavigationController();
  coderCopy = coder;
  v5 = [(DSFolderCustomizationNavigationController *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

@end