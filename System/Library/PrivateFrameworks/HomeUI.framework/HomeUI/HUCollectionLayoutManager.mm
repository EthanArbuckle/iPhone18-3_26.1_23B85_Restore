@interface HUCollectionLayoutManager
- (HUCollectionLayoutManager)init;
- (HUGridSize)gridSizeForItem:(id)a3;
- (id)buildAdaptiveTileSectionFor:(id)a3 layoutEnvironment:(id)a4;
@end

@implementation HUCollectionLayoutManager

- (id)buildAdaptiveTileSectionFor:(id)a3 layoutEnvironment:(id)a4
{
  sub_20CECF940(0, &qword_281120AC0);
  v6 = sub_20D567A78();
  swift_unknownObjectRetain();
  v7 = self;
  v8 = sub_20CEFABF8(v6, a4);
  swift_unknownObjectRelease();

  return v8;
}

- (HUGridSize)gridSizeForItem:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = sub_20CEFC9BC(v4);
  v8 = v7;

  v9 = v6;
  v10 = v8;
  result.columnsAcross = v10;
  result.rowsDown = v9;
  return result;
}

- (HUCollectionLayoutManager)init
{
  swift_unknownObjectWeakInit();
  *(&self->super.isa + OBJC_IVAR___HUCollectionLayoutManager_adaptiveTilesUsesPrefixes) = 0;
  *(&self->super.isa + OBJC_IVAR___HUCollectionLayoutManager_layoutOptions) = 0;
  v4.receiver = self;
  v4.super_class = type metadata accessor for CollectionLayoutManager();
  return [(HUCollectionLayoutManager *)&v4 init];
}

@end