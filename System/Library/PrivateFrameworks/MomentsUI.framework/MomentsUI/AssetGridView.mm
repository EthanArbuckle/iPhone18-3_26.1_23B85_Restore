@interface AssetGridView
- (void)collectionView:(id)view didEndDisplayingCell:(id)cell forItemAtIndexPath:(id)path;
@end

@implementation AssetGridView

- (void)collectionView:(id)view didEndDisplayingCell:(id)cell forItemAtIndexPath:(id)path
{
  v6 = type metadata accessor for IndexPath();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  type metadata accessor for CollectionViewAssetCell();
  v10 = swift_dynamicCastClass();
  if (v10)
  {
    v11 = *((*MEMORY[0x277D85000] & *v10) + 0x138);
    cellCopy = cell;
    v11();
  }

  (*(v7 + 8))(v9, v6);
}

@end