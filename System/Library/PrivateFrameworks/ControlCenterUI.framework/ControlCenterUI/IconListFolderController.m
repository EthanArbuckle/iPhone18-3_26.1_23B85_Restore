@interface IconListFolderController
+ (Class)_contentViewClass;
+ (NSString)iconLocation;
- (_TtC15ControlCenterUI18IconListFolderView)folderView;
- (_TtC15ControlCenterUI24IconListFolderController)initWithConfiguration:(id)a3;
- (void)iconListView:(id)a3 didAddIconView:(id)a4;
- (void)iconListView:(id)a3 didRemoveIconView:(id)a4;
- (void)iconView:(id)a3 didChangeCustomImageViewController:(id)a4;
@end

@implementation IconListFolderController

- (_TtC15ControlCenterUI18IconListFolderView)folderView
{
  v5.receiver = self;
  v5.super_class = type metadata accessor for IconListFolderController();
  v2 = [(SBFolderController *)&v5 folderView];
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

- (void)iconListView:(id)a3 didAddIconView:(id)a4
{
  v9.receiver = self;
  v9.super_class = type metadata accessor for IconListFolderController();
  v6 = a3;
  v7 = a4;
  v8 = v9.receiver;
  [(SBFolderController *)&v9 iconListView:v6 didAddIconView:v7];
  if (swift_unknownObjectWeakLoadStrong())
  {
    sub_21EA82ABC(v7, v6);
    swift_unknownObjectRelease();
  }

  (*((*MEMORY[0x277D85000] & *v8) + 0xB0))(v7);
}

- (void)iconView:(id)a3 didChangeCustomImageViewController:(id)a4
{
  v10.receiver = self;
  v10.super_class = type metadata accessor for IconListFolderController();
  v6 = a3;
  v7 = a4;
  v8 = v10.receiver;
  [(SBFolderController *)&v10 iconView:v6 didChangeCustomImageViewController:v7];
  v9 = MEMORY[0x277D85000];
  (*((*MEMORY[0x277D85000] & *v8) + 0xB8))(a4, v6);
  (*((*v9 & *v8) + 0xB0))(v6);
}

- (void)iconListView:(id)a3 didRemoveIconView:(id)a4
{
  v10.receiver = self;
  v10.super_class = type metadata accessor for IconListFolderController();
  v6 = a3;
  v7 = a4;
  v8 = v10.receiver;
  [(SBFolderController *)&v10 iconListView:v6 didRemoveIconView:v7];
  v9 = [v7 customIconImageViewController];
  (*((*MEMORY[0x277D85000] & *v8) + 0xB8))();
}

- (_TtC15ControlCenterUI24IconListFolderController)initWithConfiguration:(id)a3
{
  *(&self->super.super.super.super._responderFlags + OBJC_IVAR____TtC15ControlCenterUI24IconListFolderController_iconListFolderDelegate) = 0;
  swift_unknownObjectWeakInit();
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC15ControlCenterUI24IconListFolderController_allowsIconAdornments) = 1;
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC15ControlCenterUI24IconListFolderController_wantsSubduedIconBackgrounds) = 0;
  v6.receiver = self;
  v6.super_class = type metadata accessor for IconListFolderController();
  return [(SBFolderController *)&v6 initWithConfiguration:a3];
}

@end