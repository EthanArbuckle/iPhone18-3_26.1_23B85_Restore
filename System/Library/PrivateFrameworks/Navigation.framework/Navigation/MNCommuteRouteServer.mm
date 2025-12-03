@interface MNCommuteRouteServer
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (void)requestCommuteRoutesWith:(_TtC10Navigation29CommuteRouteRequestParameters *)with completionHandler:(id)handler;
@end

@implementation MNCommuteRouteServer

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  listenerCopy = listener;
  connectionCopy = connection;
  selfCopy = self;
  v9 = sub_1D3183D2C(connectionCopy);

  return v9 & 1;
}

- (void)requestCommuteRoutesWith:(_TtC10Navigation29CommuteRouteRequestParameters *)with completionHandler:(id)handler
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC75C5F0, &qword_1D328C5F0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v18 - v9;
  v11 = _Block_copy(handler);
  v12 = swift_allocObject();
  v12[2] = with;
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
  withCopy = with;
  selfCopy = self;
  sub_1D3183A70(0, 0, v10, &unk_1D328BB10, v15);
}

@end