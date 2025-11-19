@interface GlobalESLService
- (void)fetchFeedItemsWithCursor:(_TtC8NewsCore16GlobalESLService *)self feedItemHandler:(SEL)a2 networkEventHandler:(FCFeedItemServiceCursor *)a3 completionHandler:(id)a4;
@end

@implementation GlobalESLService

- (void)fetchFeedItemsWithCursor:(_TtC8NewsCore16GlobalESLService *)self feedItemHandler:(SEL)a2 networkEventHandler:(FCFeedItemServiceCursor *)a3 completionHandler:(id)a4
{
  v6 = v5;
  v7 = v4;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB94A300, &qword_1B68111C0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v23 - v13;
  v15 = _Block_copy(a4);
  v16 = _Block_copy(v7);
  v17 = _Block_copy(v6);
  v18 = swift_allocObject();
  v18[2] = a3;
  v18[3] = v15;
  v18[4] = v16;
  v18[5] = v17;
  v18[6] = self;
  v19 = sub_1B67D993C();
  (*(*(v19 - 8) + 56))(v14, 1, 1, v19);
  v20 = swift_allocObject();
  v20[2] = 0;
  v20[3] = 0;
  v20[4] = &unk_1B68148E0;
  v20[5] = v18;
  v21 = swift_allocObject();
  v21[2] = 0;
  v21[3] = 0;
  v21[4] = &unk_1B68148F0;
  v21[5] = v20;
  v22 = a3;

  sub_1B64664B8(0, 0, v14, &unk_1B6814900, v21);
}

@end