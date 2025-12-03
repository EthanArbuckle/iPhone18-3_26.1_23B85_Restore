@interface SizeClassResponsiveDataSource
- (void)snapshotDidChangeWithDataSourceID:(id)d snapshot:(id)snapshot animated:(BOOL)animated;
@end

@implementation SizeClassResponsiveDataSource

- (void)snapshotDidChangeWithDataSourceID:(id)d snapshot:(id)snapshot animated:(BOOL)animated
{
  sub_1B9F12538();
  v8 = v7;
  v9 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &aBlock[-1] - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA4A45C8();
  swift_beginAccess();
  v12 = *self->changeObservers;
  v13 = swift_allocObject();
  *(v13 + 16) = self;
  *(v13 + 24) = animated;
  aBlock[4] = sub_1BA427B00;
  aBlock[5] = v13;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1B9F8A254;
  aBlock[3] = &block_descriptor_32_1;
  v14 = _Block_copy(aBlock);
  swift_retain_n();
  v15 = v12;

  [v15 notifyObservers_];
  _Block_release(v14);

  (*(v9 + 8))(v11, v8);
}

@end