@interface HUInformationalAccessoryGridViewController
- (BOOL)collectionView:(id)a3 shouldHighlightItemAtIndexPath:(id)a4;
- (HUInformationalAccessoryGridViewController)initWithItemManager:(id)a3 collectionViewLayout:(id)a4;
- (HUInformationalAccessoryGridViewController)initWithVisibleAccessories:(id)a3;
- (NSSet)visibleAccessories;
- (id)buildItemModuleControllerForModule:(id)a3;
- (id)initUsingCompositionalLayoutWithItemManager:(id)a3;
- (id)layoutSectionForSection:(int64_t)a3 layoutEnvironment:(id)a4;
- (void)setVisibleAccessories:(id)a3;
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

- (void)setVisibleAccessories:(id)a3
{
  v3 = a3;
  if (a3)
  {
    sub_20CECF940(0, &unk_27C81BF40);
    sub_20CFE165C();
    v3 = sub_20D567D08();
  }

  v5 = OBJC_IVAR___HUInformationalAccessoryGridViewController_visibleAccessories;
  swift_beginAccess();
  *(self + v5) = v3;
  v6 = self;

  sub_20CFE0224();
}

- (HUInformationalAccessoryGridViewController)initWithVisibleAccessories:(id)a3
{
  if (a3)
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
  v2 = self;
  sub_20CFE0B9C();
}

- (BOOL)collectionView:(id)a3 shouldHighlightItemAtIndexPath:(id)a4
{
  v4 = sub_20D5638C8();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20D563878();
  (*(v5 + 8))(v7, v4);
  return 0;
}

- (id)buildItemModuleControllerForModule:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = sub_20CFE0DB8();

  return v6;
}

- (id)layoutSectionForSection:(int64_t)a3 layoutEnvironment:(id)a4
{
  swift_unknownObjectRetain();
  v7 = self;
  v8 = sub_20CFE0F48(a3, a4);
  swift_unknownObjectRelease();

  return v8;
}

- (HUInformationalAccessoryGridViewController)initWithItemManager:(id)a3 collectionViewLayout:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (id)initUsingCompositionalLayoutWithItemManager:(id)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end