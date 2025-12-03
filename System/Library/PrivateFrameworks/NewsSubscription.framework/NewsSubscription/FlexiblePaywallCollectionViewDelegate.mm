@interface FlexiblePaywallCollectionViewDelegate
- (_TtC16NewsSubscription37FlexiblePaywallCollectionViewDelegate)init;
- (void)collectionView:(id)view didEndDisplayingCell:(id)cell forItemAtIndexPath:(id)path;
- (void)collectionView:(id)view didEndDisplayingSupplementaryView:(id)supplementaryView forElementOfKind:(id)kind atIndexPath:(id)path;
- (void)collectionView:(id)view willDisplayCell:(id)cell forItemAtIndexPath:(id)path;
- (void)collectionView:(id)view willDisplaySupplementaryView:(id)supplementaryView forElementKind:(id)kind atIndexPath:(id)path;
@end

@implementation FlexiblePaywallCollectionViewDelegate

- (void)collectionView:(id)view willDisplayCell:(id)cell forItemAtIndexPath:(id)path
{
  v8 = sub_1D78B34F4();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D78B34C4();
  swift_getObjectType();
  if (swift_conformsToProtocol2() && cell)
  {
    cellCopy = cell;
    viewCopy = view;
    selfCopy = self;
    sub_1D78B4AE4();
    swift_getObjectType();
    sub_1D78B4E34();
    sub_1D78B4E24();
    sub_1D78B4D84();

    (*(v9 + 8))(v11, v8);
  }

  else
  {
    (*(v9 + 8))(v11, v8);
  }
}

- (void)collectionView:(id)view didEndDisplayingCell:(id)cell forItemAtIndexPath:(id)path
{
  v7 = sub_1D78B34F4();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D78B34C4();
  swift_getObjectType();
  if (swift_conformsToProtocol2() && cell)
  {
    cellCopy = cell;
    selfCopy = self;
    sub_1D78B4B04();
    swift_getObjectType();
    sub_1D78B4E34();
    sub_1D78B4E24();
    sub_1D78B4D94();

    (*(v8 + 8))(v10, v7);
  }

  else
  {
    (*(v8 + 8))(v10, v7);
  }
}

- (void)collectionView:(id)view willDisplaySupplementaryView:(id)supplementaryView forElementKind:(id)kind atIndexPath:(id)path
{
  v9 = sub_1D78B34F4();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D78B34C4();
  swift_getObjectType();
  if (swift_conformsToProtocol2() && supplementaryView)
  {
    viewCopy = view;
    supplementaryViewCopy = supplementaryView;
    selfCopy = self;
    sub_1D78B4AE4();
    swift_getObjectType();
    sub_1D78B4DA4();

    (*(v10 + 8))(v12, v9);
  }

  else
  {
    (*(v10 + 8))(v12, v9);
  }
}

- (void)collectionView:(id)view didEndDisplayingSupplementaryView:(id)supplementaryView forElementOfKind:(id)kind atIndexPath:(id)path
{
  v8 = sub_1D78B34F4();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D78B34C4();
  swift_getObjectType();
  if (swift_conformsToProtocol2() && supplementaryView)
  {
    supplementaryViewCopy = supplementaryView;
    selfCopy = self;
    sub_1D78B4B04();
    swift_getObjectType();
    sub_1D78B4DB4();

    (*(v9 + 8))(v11, v8);
  }

  else
  {
    (*(v9 + 8))(v11, v8);
  }
}

- (_TtC16NewsSubscription37FlexiblePaywallCollectionViewDelegate)init
{
  ObjectType = swift_getObjectType();
  v4 = sub_1D78B4B14();
  MEMORY[0x1EEE9AC00](v4);
  v5 = OBJC_IVAR____TtC16NewsSubscription37FlexiblePaywallCollectionViewDelegate_viewportMonitor;
  v9 = MEMORY[0x1E69E7CC0];
  sub_1D78AE0A4(&unk_1EE0903B0, MEMORY[0x1E69D7F80]);
  sub_1D78AE04C();
  sub_1D78AE0A4(qword_1EE090050, sub_1D78AE04C);
  sub_1D78B6324();
  v6 = objc_allocWithZone(sub_1D78B4B34());
  *(&self->super.isa + v5) = sub_1D78B4B24();
  v8.receiver = self;
  v8.super_class = ObjectType;
  return [(FlexiblePaywallCollectionViewDelegate *)&v8 init];
}

@end