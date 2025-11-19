@interface CompoundSectionedDataSource
- (void)snapshotDidChangeWithDataSourceID:(id)a3 snapshot:(id)a4 animated:(BOOL)a5;
@end

@implementation CompoundSectionedDataSource

- (void)snapshotDidChangeWithDataSourceID:(id)a3 snapshot:(id)a4 animated:(BOOL)a5
{
  sub_1B9F117BC(0, &qword_1EDC5F8A0, MEMORY[0x1E69E6168], MEMORY[0x1E69DC168]);
  v8 = v7;
  v9 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &aBlock[-1] - v10;
  sub_1BA4A45C8();

  sub_1B9F264E0();
  swift_beginAccess();
  v12 = *self->changeObservers;
  v13 = swift_allocObject();
  *(v13 + 16) = self;
  *(v13 + 24) = a5;
  aBlock[4] = sub_1B9F8C0D8;
  aBlock[5] = v13;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1B9F8A254;
  aBlock[3] = &block_descriptor_35_0;
  v14 = _Block_copy(aBlock);

  v15 = v12;

  [v15 notifyObservers_];
  _Block_release(v14);

  (*(v9 + 8))(v11, v8);
}

@end