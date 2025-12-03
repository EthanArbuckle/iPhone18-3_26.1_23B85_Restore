@interface IconListFolderController
+ (Class)_contentViewClass;
+ (NSString)iconLocation;
- (_TtC15ControlCenterUI18IconListFolderView)folderView;
- (_TtC15ControlCenterUI24IconListFolderController)initWithConfiguration:(id)configuration;
- (void)iconListView:(id)view didAddIconView:(id)iconView;
- (void)iconListView:(id)view didRemoveIconView:(id)iconView;
- (void)iconView:(id)view didChangeCustomImageViewController:(id)controller;
@end

@implementation IconListFolderController

- (_TtC15ControlCenterUI18IconListFolderView)folderView
{
  v5.receiver = self;
  v5.super_class = type metadata accessor for IconListFolderController();
  folderView = [(SBFolderController *)&v5 folderView];
  type metadata accessor for IconListFolderView();
  v3 = swift_dynamicCastClassUnconditional();

  return v3;
}

+ (NSString)iconLocation
{
  if (qword_28125B828 != -1)
  {
    swift_once();
  }

  v3 = qword_28125C600;

  return v3;
}

+ (Class)_contentViewClass
{
  type metadata accessor for IconListFolderView();

  return swift_getObjCClassFromMetadata();
}

- (void)iconListView:(id)view didAddIconView:(id)iconView
{
  v9.receiver = self;
  v9.super_class = type metadata accessor for IconListFolderController();
  viewCopy = view;
  iconViewCopy = iconView;
  v8 = v9.receiver;
  [(SBFolderController *)&v9 iconListView:viewCopy didAddIconView:iconViewCopy];
  if (swift_unknownObjectWeakLoadStrong())
  {
    sub_21EA82ABC(iconViewCopy, viewCopy);
    swift_unknownObjectRelease();
  }

  (*((*MEMORY[0x277D85000] & *v8) + 0xB0))(iconViewCopy);
}

- (void)iconView:(id)view didChangeCustomImageViewController:(id)controller
{
  v10.receiver = self;
  v10.super_class = type metadata accessor for IconListFolderController();
  viewCopy = view;
  controllerCopy = controller;
  v8 = v10.receiver;
  [(SBFolderController *)&v10 iconView:viewCopy didChangeCustomImageViewController:controllerCopy];
  v9 = MEMORY[0x277D85000];
  (*((*MEMORY[0x277D85000] & *v8) + 0xB8))(controller, viewCopy);
  (*((*v9 & *v8) + 0xB0))(viewCopy);
}

- (void)iconListView:(id)view didRemoveIconView:(id)iconView
{
  v10.receiver = self;
  v10.super_class = type metadata accessor for IconListFolderController();
  viewCopy = view;
  iconViewCopy = iconView;
  v8 = v10.receiver;
  [(SBFolderController *)&v10 iconListView:viewCopy didRemoveIconView:iconViewCopy];
  customIconImageViewController = [iconViewCopy customIconImageViewController];
  (*((*MEMORY[0x277D85000] & *v8) + 0xB8))();
}

- (_TtC15ControlCenterUI24IconListFolderController)initWithConfiguration:(id)configuration
{
  *(&self->super.super.super.super._responderFlags + OBJC_IVAR____TtC15ControlCenterUI24IconListFolderController_iconListFolderDelegate) = 0;
  swift_unknownObjectWeakInit();
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC15ControlCenterUI24IconListFolderController_allowsIconAdornments) = 1;
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC15ControlCenterUI24IconListFolderController_wantsSubduedIconBackgrounds) = 0;
  v6.receiver = self;
  v6.super_class = type metadata accessor for IconListFolderController();
  return [(SBFolderController *)&v6 initWithConfiguration:configuration];
}

@end