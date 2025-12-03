@interface HUInformationalAccessoryGridViewController
- (BOOL)collectionView:(id)view shouldHighlightItemAtIndexPath:(id)path;
- (HUInformationalAccessoryGridViewController)initWithItemManager:(id)manager collectionViewLayout:(id)layout;
- (HUInformationalAccessoryGridViewController)initWithVisibleAccessories:(id)accessories;
- (NSSet)visibleAccessories;
- (id)buildItemModuleControllerForModule:(id)module;
- (id)initUsingCompositionalLayoutWithItemManager:(id)manager;
- (id)layoutSectionForSection:(int64_t)section layoutEnvironment:(id)environment;
- (void)setVisibleAccessories:(id)accessories;
- (void)viewDidLoad;
@end

@implementation HUInformationalAccessoryGridViewController

- (NSSet)visibleAccessories
{
  v3 = OBJC_IVAR___HUInformationalAccessoryGridViewController_visibleAccessories;
  swift_beginAccess();
  if (*(self + v3))
  {
    sub_20CECF940(0, &unk_27C81BF40);
    sub_20CFE165C();
    sub_20D5663C8();
    v4 = sub_20D567CD8();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setVisibleAccessories:(id)accessories
{
  accessoriesCopy = accessories;
  if (accessories)
  {
    sub_20CECF940(0, &unk_27C81BF40);
    sub_20CFE165C();
    accessoriesCopy = sub_20D567D08();
  }

  v5 = OBJC_IVAR___HUInformationalAccessoryGridViewController_visibleAccessories;
  swift_beginAccess();
  *(self + v5) = accessoriesCopy;
  selfCopy = self;

  sub_20CFE0224();
}

- (HUInformationalAccessoryGridViewController)initWithVisibleAccessories:(id)accessories
{
  if (accessories)
  {
    sub_20CECF940(0, &unk_27C81BF40);
    sub_20CFE165C();
    v3 = sub_20D567D08();
  }

  else
  {
    v3 = 0;
  }

  return InformationalAccessoryGridViewController.init(visibleAccessories:)(v3);
}

- (void)viewDidLoad
{
  selfCopy = self;
  sub_20CFE0B9C();
}

- (BOOL)collectionView:(id)view shouldHighlightItemAtIndexPath:(id)path
{
  v4 = sub_20D5638C8();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20D563878();
  (*(v5 + 8))(v7, v4);
  return 0;
}

- (id)buildItemModuleControllerForModule:(id)module
{
  moduleCopy = module;
  selfCopy = self;
  v6 = sub_20CFE0DB8();

  return v6;
}

- (id)layoutSectionForSection:(int64_t)section layoutEnvironment:(id)environment
{
  swift_unknownObjectRetain();
  selfCopy = self;
  v8 = sub_20CFE0F48(section, environment);
  swift_unknownObjectRelease();

  return v8;
}

- (HUInformationalAccessoryGridViewController)initWithItemManager:(id)manager collectionViewLayout:(id)layout
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (id)initUsingCompositionalLayoutWithItemManager:(id)manager
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end