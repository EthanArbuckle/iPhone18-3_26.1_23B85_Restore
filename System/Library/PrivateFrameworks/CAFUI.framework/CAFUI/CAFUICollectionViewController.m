@interface CAFUICollectionViewController
- (BOOL)collectionView:(id)a3 shouldSelectItemAtIndexPath:(id)a4;
- (CGSize)collectionView:(id)a3 layout:(id)a4 sizeForItemAtIndexPath:(id)a5;
- (UIEdgeInsets)collectionView:(id)a3 layout:(id)a4 insetForSectionAtIndex:(int64_t)a5;
- (_TtC5CAFUI29CAFUICollectionViewController)initWithCollectionViewLayout:(id)a3;
- (_TtC5CAFUI29CAFUICollectionViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (double)collectionView:(id)a3 layout:(id)a4 minimumInteritemSpacingForSectionAtIndex:(int64_t)a5;
- (id)collectionView:(id)a3 cellForItemAtIndexPath:(id)a4;
- (int64_t)collectionView:(id)a3 numberOfItemsInSection:(int64_t)a4;
- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4;
- (void)viewDidLoad;
- (void)viewWillDisappear:(BOOL)a3;
@end

@implementation CAFUICollectionViewController

- (void)viewDidLoad
{
  v2 = self;
  CAFUICollectionViewController.viewDidLoad()();
}

- (void)viewWillDisappear:(BOOL)a3
{
  v3 = a3;
  v6.receiver = self;
  v6.super_class = type metadata accessor for CAFUICollectionViewController();
  v4 = v6.receiver;
  [(CAFUICollectionViewController *)&v6 viewWillDisappear:v3];
  v5 = [v4 navigationItem];
  [v5 setRightBarButtonItem_];
}

- (int64_t)collectionView:(id)a3 numberOfItemsInSection:(int64_t)a4
{
  v5 = OBJC_IVAR____TtC5CAFUI29CAFUICollectionViewController_items;
  swift_beginAccess();
  return (*(&self->super.super.super.super.isa + v5))[2];
}

- (id)collectionView:(id)a3 cellForItemAtIndexPath:(id)a4
{
  v6 = type metadata accessor for IndexPath();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = a3;
  v11 = self;
  v12 = CAFUICollectionViewController.collectionView(_:cellForItemAt:)(v10);

  (*(v7 + 8))(v9, v6);

  return v12;
}

- (BOOL)collectionView:(id)a3 shouldSelectItemAtIndexPath:(id)a4
{
  v5 = type metadata accessor for IndexPath();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = self;
  v10 = IndexPath.row.getter();
  v11 = OBJC_IVAR____TtC5CAFUI29CAFUICollectionViewController_items;
  result = swift_beginAccess();
  if ((v10 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v13 = *(&v9->super.super.super.super.isa + v11);
    if (v10 < *(v13 + 16))
    {
      outlined init with copy of CAFUIImageRepresentableItemProtocol(v13 + 40 * v10 + 32, v17);
      v14 = v18;
      v15 = v19;
      __swift_project_boxed_opaque_existential_1(v17, v18);
      v16 = (*(v15 + 32))(v14, v15);

      (*(v6 + 8))(v8, v5);
      __swift_destroy_boxed_opaque_existential_0(v17);
      return v16 & 1;
    }
  }

  __break(1u);
  return result;
}

- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4
{
  v6 = type metadata accessor for IndexPath();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = a3;
  v11 = self;
  specialized CAFUICollectionViewController.collectionView(_:didSelectItemAt:)();

  (*(v7 + 8))(v9, v6);
}

- (UIEdgeInsets)collectionView:(id)a3 layout:(id)a4 insetForSectionAtIndex:(int64_t)a5
{
  if (*(&self->super.super.super._responderFlags + OBJC_IVAR____TtC5CAFUI29CAFUICollectionViewController_minimumInteritemSpacing))
  {
    v5 = 45.0;
  }

  else
  {
    v6 = *(&self->super.super.super.super.isa + OBJC_IVAR____TtC5CAFUI29CAFUICollectionViewController_minimumInteritemSpacing);
    v5 = 45.0;
    if (v6 > 45.0)
    {
      v5 = trunc(v6);
    }
  }

  v7 = 0.0;
  v8 = 0.0;
  v9 = v5;
  result.right = v9;
  result.bottom = v8;
  result.left = v5;
  result.top = v7;
  return result;
}

- (CGSize)collectionView:(id)a3 layout:(id)a4 sizeForItemAtIndexPath:(id)a5
{
  v7 = type metadata accessor for IndexPath();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = a4;
  v12 = self;
  specialized CAFUICollectionViewController.calculateItemSizeAndInterItemSpacing(layout:)();
  v15 = (v12 + OBJC_IVAR____TtC5CAFUI29CAFUICollectionViewController_itemSize);
  if (*(&v12->super.super._overrideTransitioningDelegate + OBJC_IVAR____TtC5CAFUI29CAFUICollectionViewController_itemSize))
  {
    __break(1u);
  }

  else
  {
    v17 = *v15;
    v16 = v15[1];

    (*(v8 + 8))(v10, v7);
    v13 = v17;
    v14 = v16;
  }

  result.height = v14;
  result.width = v13;
  return result;
}

- (double)collectionView:(id)a3 layout:(id)a4 minimumInteritemSpacingForSectionAtIndex:(int64_t)a5
{
  v6 = a4;
  v7 = self;
  specialized CAFUICollectionViewController.calculateItemSizeAndInterItemSpacing(layout:)();
  if (*(&v7->super.super.super._responderFlags + OBJC_IVAR____TtC5CAFUI29CAFUICollectionViewController_minimumInteritemSpacing))
  {
    __break(1u);
  }

  else
  {
    v9 = *(&v7->super.super.super.super.isa + OBJC_IVAR____TtC5CAFUI29CAFUICollectionViewController_minimumInteritemSpacing);

    return v9;
  }

  return result;
}

- (_TtC5CAFUI29CAFUICollectionViewController)initWithCollectionViewLayout:(id)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC5CAFUI29CAFUICollectionViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end