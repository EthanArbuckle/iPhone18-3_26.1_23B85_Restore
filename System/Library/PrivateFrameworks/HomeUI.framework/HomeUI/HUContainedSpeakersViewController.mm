@interface HUContainedSpeakersViewController
- (BOOL)requiresPresentingViewControllerDismissal;
- (Class)cellClassForItem:(id)item indexPath:(id)path;
- (HUContainedSpeakersViewController)initWithItemManager:(id)manager tableViewStyle:(int64_t)style;
- (HUContainedSpeakersViewController)initWithMediaItem:(id)item;
- (HUPresentationDelegate)presentationDelegate;
- (id)buildItemModuleControllerForModule:(id)module;
- (id)contentConfigurationForHeaderViewAtSectionIndex:(int64_t)index;
- (id)finishPresentation:(id)presentation animated:(BOOL)animated;
- (void)editWithSender:(id)sender;
- (void)itemManagerDidUpdate:(id)update;
- (void)setRequiresPresentingViewControllerDismissal:(BOOL)dismissal;
- (void)setupCell:(id)cell forItem:(id)item indexPath:(id)path;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)viewDidLoad;
@end

@implementation HUContainedSpeakersViewController

- (BOOL)requiresPresentingViewControllerDismissal
{
  v3 = OBJC_IVAR___HUContainedSpeakersViewController_requiresPresentingViewControllerDismissal;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setRequiresPresentingViewControllerDismissal:(BOOL)dismissal
{
  v5 = OBJC_IVAR___HUContainedSpeakersViewController_requiresPresentingViewControllerDismissal;
  swift_beginAccess();
  *(self + v5) = dismissal;
}

- (HUPresentationDelegate)presentationDelegate
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (HUContainedSpeakersViewController)initWithMediaItem:(id)item
{
  *(self + OBJC_IVAR___HUContainedSpeakersViewController_requiresPresentingViewControllerDismissal) = 0;
  swift_unknownObjectWeakInit();
  v5 = objc_allocWithZone(type metadata accessor for ContainedSpeakersItemManager());
  itemCopy = item;
  v7 = sub_20CF8B04C(itemCopy);
  v10.receiver = self;
  v10.super_class = type metadata accessor for ContainedSpeakersViewController();
  v8 = [(HUItemTableViewController *)&v10 initWithItemManager:v7 tableViewStyle:2];

  return v8;
}

- (void)viewDidLoad
{
  selfCopy = self;
  sub_20CFF231C();
}

- (Class)cellClassForItem:(id)item indexPath:(id)path
{
  v6 = sub_20D5638C8();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20D563878();
  itemCopy = item;
  selfCopy = self;
  v12 = sub_20CFF247C(itemCopy);

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

- (void)setupCell:(id)cell forItem:(id)item indexPath:(id)path
{
  v8 = sub_20D5638C8();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20D563878();
  cellCopy = cell;
  itemCopy = item;
  selfCopy = self;
  v15 = sub_20D563868();
  v16 = type metadata accessor for ContainedSpeakersViewController();
  v17.receiver = selfCopy;
  v17.super_class = v16;
  [(HUItemTableViewController *)&v17 setupCell:cellCopy forItem:itemCopy indexPath:v15];

  (*(v9 + 8))(v11, v8);
}

- (id)buildItemModuleControllerForModule:(id)module
{
  moduleCopy = module;
  selfCopy = self;
  v6 = sub_20CFF280C(moduleCopy);

  return v6;
}

- (id)contentConfigurationForHeaderViewAtSectionIndex:(int64_t)index
{
  selfCopy = self;
  v5 = sub_20CFF2A1C(index);

  return v5;
}

- (void)itemManagerDidUpdate:(id)update
{
  v8.receiver = self;
  v8.super_class = type metadata accessor for ContainedSpeakersViewController();
  updateCopy = update;
  v5 = v8.receiver;
  [(HUItemTableViewController *)&v8 itemManagerDidUpdate:updateCopy];
  itemManager = [v5 itemManager];
  home = [itemManager home];

  [home hf_currentUserIsAdministrator];
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  v6 = sub_20D5638C8();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20D563878();
  viewCopy = view;
  selfCopy = self;
  sub_20CFF2C60(viewCopy);

  (*(v7 + 8))(v9, v6);
}

- (id)finishPresentation:(id)presentation animated:(BOOL)animated
{
  presentationCopy = presentation;
  selfCopy = self;
  v8 = sub_20CFF2F60(presentationCopy, animated);

  return v8;
}

- (HUContainedSpeakersViewController)initWithItemManager:(id)manager tableViewStyle:(int64_t)style
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)editWithSender:(id)sender
{
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_20D568628();
  swift_unknownObjectRelease();
  itemManager = [(HUItemTableViewController *)selfCopy itemManager];
  home = [(HFItemManager *)itemManager home];

  __swift_destroy_boxed_opaque_existential_1(&v7);
}

@end