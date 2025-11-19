@interface DOCBrowserContainedViewController
- (BOOL)allowsPickingMultipleItems;
- (BOOL)forceEditingMode;
- (BOOL)hidesNavigationBackButton;
- (BOOL)isInUserTriggeredSelectionMode;
- (_TtC26DocumentManagerExecutables33DOCBrowserContainedViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (_TtP26DocumentManagerExecutables34DOCBrowserContainedActionReporting_)actionReporting;
- (void)effectiveAppearanceDidChange:(id)a3;
- (void)setAllowsPickingMultipleItems:(BOOL)a3;
- (void)setEditing:(BOOL)a3 animated:(BOOL)a4;
- (void)setForceEditingMode:(BOOL)a3;
- (void)viewDidLoad;
@end

@implementation DOCBrowserContainedViewController

- (_TtP26DocumentManagerExecutables34DOCBrowserContainedActionReporting_)actionReporting
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (BOOL)allowsPickingMultipleItems
{
  v3 = OBJC_IVAR____TtC26DocumentManagerExecutables33DOCBrowserContainedViewController_allowsPickingMultipleItems;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setAllowsPickingMultipleItems:(BOOL)a3
{
  v4 = self;
  DOCBrowserContainedViewController.allowsPickingMultipleItems.setter(a3);
}

- (BOOL)forceEditingMode
{
  v3 = OBJC_IVAR____TtC26DocumentManagerExecutables33DOCBrowserContainedViewController_forceEditingMode;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setForceEditingMode:(BOOL)a3
{
  v3 = a3;
  v5 = OBJC_IVAR____TtC26DocumentManagerExecutables33DOCBrowserContainedViewController_forceEditingMode;
  swift_beginAccess();
  *(self + v5) = v3;
  if (v3)
  {
    [(DOCBrowserContainedViewController *)self setEditing:1 animated:0];
  }
}

- (BOOL)isInUserTriggeredSelectionMode
{
  v2 = self;
  if ([(DOCBrowserContainedViewController *)v2 isEditing])
  {
    v3 = (*((*MEMORY[0x277D85000] & *v2) + 0x148))();

    v4 = v3 ^ 1;
  }

  else
  {

    v4 = 0;
  }

  return v4 & 1;
}

- (void)viewDidLoad
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for DOCBrowserContainedViewController();
  v2 = v3.receiver;
  [(DOCBrowserContainedViewController *)&v3 viewDidLoad];
  DOCBrowserContainedViewController.updateOverlayIfNeeded()();
  DOCBrowserContainedViewController.updateUIPDocLandingBackground(appearance:)(0);
}

- (void)effectiveAppearanceDidChange:(id)a3
{
  v4 = a3;
  v5 = self;
  DOCBrowserContainedViewController.effectiveAppearanceDidChange(_:)(v4);
}

- (_TtC26DocumentManagerExecutables33DOCBrowserContainedViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)setEditing:(BOOL)a3 animated:(BOOL)a4
{
  v6 = self;
  DOCBrowserContainedViewController.setEditing(_:animated:)(a3, a4);
}

- (BOOL)hidesNavigationBackButton
{
  v2 = *((*MEMORY[0x277D85000] & *self) + 0x100);
  v3 = self;
  if (!v2())
  {
    v7 = MEMORY[0x277D84F90];
    if (!(MEMORY[0x277D84F90] >> 62))
    {
      goto LABEL_3;
    }

LABEL_6:
    v8 = __CocoaSet.count.getter();
    goto LABEL_4;
  }

  v5 = v4;
  ObjectType = swift_getObjectType();
  v7 = (*(v5 + 56))(ObjectType, v5);
  swift_unknownObjectRelease();
  if (v7 >> 62)
  {
    goto LABEL_6;
  }

LABEL_3:
  v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_4:

  return v8 > 0;
}

@end