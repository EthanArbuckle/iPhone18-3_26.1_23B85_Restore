@interface iOSLinkAcceleratorCollectionViewController
- (_TtC11NotesEditor42iOSLinkAcceleratorCollectionViewController)initWithCoder:(id)a3;
- (_TtC11NotesEditor42iOSLinkAcceleratorCollectionViewController)initWithCollectionViewLayout:(id)a3;
- (_TtC11NotesEditor42iOSLinkAcceleratorCollectionViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4;
@end

@implementation iOSLinkAcceleratorCollectionViewController

- (_TtC11NotesEditor42iOSLinkAcceleratorCollectionViewController)initWithCoder:(id)a3
{
  v4 = OBJC_IVAR____TtC11NotesEditor42iOSLinkAcceleratorCollectionViewController_sizingCell;
  type metadata accessor for iOSLinkAcceleratorCollectionViewCell(0);
  *(&self->super.super.super.super.isa + v4) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC11NotesEditor42iOSLinkAcceleratorCollectionViewController_dataSource) = 0;
  v5 = OBJC_IVAR____TtC11NotesEditor42iOSLinkAcceleratorCollectionViewController_currentSuggestionsContainer;
  v6 = sub_21549F8CC();
  (*(*(v6 - 8) + 56))(self + v5, 1, 1, v6);
  result = sub_2154A2EDC();
  __break(1u);
  return result;
}

- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4
{
  v5 = sub_21549E83C();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21549E7CC();
  v9 = *((*MEMORY[0x277D85000] & **(&self->super.super.super.super.isa + OBJC_IVAR____TtC11NotesEditor42iOSLinkAcceleratorCollectionViewController_linkAcceleratorViewController)) + 0x120);
  v10 = self;
  v9(v8);
  (*(v6 + 8))(v8, v5);
}

- (_TtC11NotesEditor42iOSLinkAcceleratorCollectionViewController)initWithCollectionViewLayout:(id)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC11NotesEditor42iOSLinkAcceleratorCollectionViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end