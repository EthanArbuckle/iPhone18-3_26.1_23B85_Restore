@interface MSFavoriteItemRequest
- (MSFavoriteItemRequest)init;
- (MSFavoriteItemRequest)initWithStore:(id)a3;
- (id)fetchSyncAndReturnError:(id *)a3;
- (id)fetchSyncWithOptions:(id)a3 error:(id *)a4;
- (void)fetchWithCompletionHandler:(id)a3;
- (void)fetchWithOptions:(_TtC8MapsSync20MapsSyncQueryOptions *)a3 completionHandler:(id)a4;
- (void)fetchWithSearchTerm:(NSString *)a3 sortDescriptors:(NSArray *)a4 range:(_TtC8MapsSync13MapsSyncRange *)a5 completionHandler:(id)a6;
@end

@implementation MSFavoriteItemRequest

- (MSFavoriteItemRequest)init
{
  if (qword_1EDB0F2A0 != -1)
  {
    v5 = self;
    swift_once();
    self = v5;
  }

  v3 = qword_1EDB0F2A8;

  return [(MSFavoriteItemRequest *)self initWithStore:v3];
}

- (MSFavoriteItemRequest)initWithStore:(id)a3
{
  v5 = type metadata accessor for FavoriteItem();
  *(&self->super.super.isa + OBJC_IVAR____TtC8MapsSync15MapsSyncRequest__store) = a3;
  *(&self->super.super.isa + OBJC_IVAR____TtC8MapsSync15MapsSyncRequest__type) = v5;
  v8.receiver = self;
  v8.super_class = type metadata accessor for MapsSyncRequest();
  v6 = a3;
  return [(MapsSyncRequest *)&v8 init];
}

- (void)fetchWithOptions:(_TtC8MapsSync20MapsSyncQueryOptions *)a3 completionHandler:(id)a4
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB943830, &qword_1B63C5100);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v18 - v9;
  v11 = _Block_copy(a4);
  v12 = swift_allocObject();
  v12[2] = a3;
  v12[3] = v11;
  v12[4] = self;
  v13 = sub_1B63BED34();
  (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_1B63C57F8;
  v14[5] = v12;
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_1B63C5510;
  v15[5] = v14;
  v16 = a3;
  v17 = self;
  sub_1B63BBE9C(0, 0, v10, &unk_1B63C5120, v15);
}

- (id)fetchSyncAndReturnError:(id *)a3
{
  v3 = self;
  sub_1B6297EF8();

  type metadata accessor for FavoriteItem();
  v4 = sub_1B63BEC94();

  return v4;
}

- (id)fetchSyncWithOptions:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = self;
  sub_1B6297EF8();

  type metadata accessor for FavoriteItem();
  v7 = sub_1B63BEC94();

  return v7;
}

- (void)fetchWithCompletionHandler:(id)a3
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB943830, &qword_1B63C5100);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v15 - v7;
  v9 = _Block_copy(a3);
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *(v10 + 24) = self;
  v11 = sub_1B63BED34();
  (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_1B63C5808;
  v12[5] = v10;
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_1B63C5530;
  v13[5] = v12;
  v14 = self;
  sub_1B63BBE9C(0, 0, v8, &unk_1B63C5320, v13);
}

- (void)fetchWithSearchTerm:(NSString *)a3 sortDescriptors:(NSArray *)a4 range:(_TtC8MapsSync13MapsSyncRange *)a5 completionHandler:(id)a6
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB943830, &qword_1B63C5100);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v24 - v13;
  v15 = _Block_copy(a6);
  v16 = swift_allocObject();
  v16[2] = a3;
  v16[3] = a4;
  v16[4] = a5;
  v16[5] = v15;
  v16[6] = self;
  v17 = sub_1B63BED34();
  (*(*(v17 - 8) + 56))(v14, 1, 1, v17);
  v18 = swift_allocObject();
  v18[2] = 0;
  v18[3] = 0;
  v18[4] = &unk_1B63C7070;
  v18[5] = v16;
  v19 = swift_allocObject();
  v19[2] = 0;
  v19[3] = 0;
  v19[4] = &unk_1B63C5510;
  v19[5] = v18;
  v20 = a3;
  v21 = a4;
  v22 = a5;
  v23 = self;
  sub_1B63BBE9C(0, 0, v14, &unk_1B63C5120, v19);
}

@end