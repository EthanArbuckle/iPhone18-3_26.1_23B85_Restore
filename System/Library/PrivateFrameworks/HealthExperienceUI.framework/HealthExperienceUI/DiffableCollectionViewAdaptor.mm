@interface DiffableCollectionViewAdaptor
- (void)snapshotDidChangeWithDataSourceID:(id)d snapshot:(id)snapshot animated:(BOOL)animated;
@end

@implementation DiffableCollectionViewAdaptor

- (void)snapshotDidChangeWithDataSourceID:(id)d snapshot:(id)snapshot animated:(BOOL)animated
{
  animatedCopy = animated;
  sub_1B9F11824(0, &qword_1EDC5F8A0, MEMORY[0x1E69E6168], MEMORY[0x1E69DC168]);
  v7 = v6;
  v8 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v11 - v9;
  sub_1BA4A45C8();

  sub_1B9F82DC8(v10, animatedCopy);

  (*(v8 + 8))(v10, v7);
}

@end