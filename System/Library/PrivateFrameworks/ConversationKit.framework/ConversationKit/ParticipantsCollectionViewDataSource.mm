@interface ParticipantsCollectionViewDataSource
- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path;
@end

@implementation ParticipantsCollectionViewDataSource

- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path
{
  v6 = type metadata accessor for IndexPath();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  viewCopy = view;
  selfCopy = self;
  v12 = ParticipantsCollectionViewDataSource.collectionView(_:cellForItemAt:)(viewCopy, v9);

  (*(v7 + 8))(v9, v6);

  return v12;
}

@end