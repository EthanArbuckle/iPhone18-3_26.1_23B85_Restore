@interface HUContainedSpeakersViewController
- (BOOL)requiresPresentingViewControllerDismissal;
- (Class)cellClassForItem:(id)a3 indexPath:(id)a4;
- (HUContainedSpeakersViewController)initWithItemManager:(id)a3 tableViewStyle:(int64_t)a4;
- (HUContainedSpeakersViewController)initWithMediaItem:(id)a3;
- (HUPresentationDelegate)presentationDelegate;
- (id)buildItemModuleControllerForModule:(id)a3;
- (id)contentConfigurationForHeaderViewAtSectionIndex:(int64_t)a3;
- (id)finishPresentation:(id)a3 animated:(BOOL)a4;
- (void)editWithSender:(id)a3;
- (void)itemManagerDidUpdate:(id)a3;
- (void)setRequiresPresentingViewControllerDismissal:(BOOL)a3;
- (void)setupCell:(id)a3 forItem:(id)a4 indexPath:(id)a5;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)viewDidLoad;
@end

@implementation HUContainedSpeakersViewController

- (BOOL)requiresPresentingViewControllerDismissal
{
  v3 = OBJC_IVAR___HUContainedSpeakersViewController_requiresPresentingViewControllerDismissal;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setRequiresPresentingViewControllerDismissal:(BOOL)a3
{
  v5 = OBJC_IVAR___HUContainedSpeakersViewController_requiresPresentingViewControllerDismissal;
  swift_beginAccess();
  *(self + v5) = a3;
}

- (HUPresentationDelegate)presentationDelegate
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (HUContainedSpeakersViewController)initWithMediaItem:(id)a3
{
  *(self + OBJC_IVAR___HUContainedSpeakersViewController_requiresPresentingViewControllerDismissal) = 0;
  swift_unknownObjectWeakInit();
  v5 = objc_allocWithZone(type metadata accessor for ContainedSpeakersItemManager());
  v6 = a3;
  v7 = sub_20CF8B04C(v6);
  v10.receiver = self;
  v10.super_class = type metadata accessor for ContainedSpeakersViewController();
  v8 = [(HUItemTableViewController *)&v10 initWithItemManager:v7 tableViewStyle:2];

  return v8;
}

- (void)viewDidLoad
{
  v2 = self;
  sub_20CFF231C();
}

- (Class)cellClassForItem:(id)a3 indexPath:(id)a4
{
  v6 = sub_20D5638C8();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20D563878();
  v10 = a3;
  v11 = self;
  v12 = sub_20CFF247C(v10);

  (*(v7 + 8))(v9, v6);
  if (v12)
  {
    return swift_getObjCClassFromMetadata();
  }

  else
  {
    return 0;
  }
}

- (void)setupCell:(id)a3 forItem:(id)a4 indexPath:(id)a5
{
  v8 = sub_20D5638C8();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20D563878();
  v12 = a3;
  v13 = a4;
  v14 = self;
  v15 = sub_20D563868();
  v16 = type metadata accessor for ContainedSpeakersViewController();
  v17.receiver = v14;
  v17.super_class = v16;
  [(HUItemTableViewController *)&v17 setupCell:v12 forItem:v13 indexPath:v15];

  (*(v9 + 8))(v11, v8);
}

- (id)buildItemModuleControllerForModule:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = sub_20CFF280C(v4);

  return v6;
}

- (id)contentConfigurationForHeaderViewAtSectionIndex:(int64_t)a3
{
  v4 = self;
  v5 = sub_20CFF2A1C(a3);

  return v5;
}

- (void)itemManagerDidUpdate:(id)a3
{
  v8.receiver = self;
  v8.super_class = type metadata accessor for ContainedSpeakersViewController();
  v4 = a3;
  v5 = v8.receiver;
  [(HUItemTableViewController *)&v8 itemManagerDidUpdate:v4];
  v6 = [v5 itemManager];
  v7 = [v6 home];

  [v7 hf_currentUserIsAdministrator];
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v6 = sub_20D5638C8();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20D563878();
  v10 = a3;
  v11 = self;
  sub_20CFF2C60(v10);

  (*(v7 + 8))(v9, v6);
}

- (id)finishPresentation:(id)a3 animated:(BOOL)a4
{
  v6 = a3;
  v7 = self;
  v8 = sub_20CFF2F60(v6, a4);

  return v8;
}

- (HUContainedSpeakersViewController)initWithItemManager:(id)a3 tableViewStyle:(int64_t)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)editWithSender:(id)a3
{
  swift_unknownObjectRetain();
  v4 = self;
  sub_20D568628();
  swift_unknownObjectRelease();
  v5 = [(HUItemTableViewController *)v4 itemManager];
  v6 = [(HFItemManager *)v5 home];

  __swift_destroy_boxed_opaque_existential_1(&v7);
}

@end