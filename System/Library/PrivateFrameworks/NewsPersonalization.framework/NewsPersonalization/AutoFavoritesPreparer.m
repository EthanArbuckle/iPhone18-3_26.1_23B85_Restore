@interface AutoFavoritesPreparer
- (void)prepareFavorites:(id)a3;
@end

@implementation AutoFavoritesPreparer

- (void)prepareFavorites:(id)a3
{
  sub_1C6B1ABB8();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = _Block_copy(a3);
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *(v10 + 24) = self;
  v11 = sub_1C6D79880();
  (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_1C6D94778;
  v12[5] = v10;
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_1C6D92A90;
  v13[5] = v12;

  sub_1C6D309F8(0, 0, v8, &unk_1C6D92A98, v13);
}

@end