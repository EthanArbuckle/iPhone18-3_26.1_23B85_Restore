@interface MNCommuteRouteServer
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
- (void)requestCommuteRoutesWith:(_TtC10Navigation29CommuteRouteRequestParameters *)a3 completionHandler:(id)a4;
@end

@implementation MNCommuteRouteServer

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  v9 = sub_1D3183D2C(v7);

  return v9 & 1;
}

- (void)requestCommuteRoutesWith:(_TtC10Navigation29CommuteRouteRequestParameters *)a3 completionHandler:(id)a4
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC75C5F0, &qword_1D328C5F0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v18 - v9;
  v11 = _Block_copy(a4);
  v12 = swift_allocObject();
  v12[2] = a3;
  v12[3] = v11;
  v12[4] = self;
  v13 = sub_1D3277280();
  (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_1D328CE10;
  v14[5] = v12;
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_1D328BB08;
  v15[5] = v14;
  v16 = a3;
  v17 = self;
  sub_1D3183A70(0, 0, v10, &unk_1D328BB10, v15);
}

@end