@interface MNCommuteRouteSet
- (MNCommuteRouteSet)init;
- (MNCommuteRouteSet)initWith:(id)a3 fetchDate:(id)a4 internalInfo:(id)a5;
- (NSArray)routes;
- (NSDate)fetchDate;
- (void)encodeWithCoder:(id)a3;
@end

@implementation MNCommuteRouteSet

- (MNCommuteRouteSet)initWith:(id)a3 fetchDate:(id)a4 internalInfo:(id)a5
{
  v7 = sub_1D3276D30();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D3126084(0, &unk_1EC75BDC8, 0x1E69A1C68);
  v12 = sub_1D32771A0();
  sub_1D3276D00();
  *(self + OBJC_IVAR___MNCommuteRouteSet_routes) = v12;
  v13 = a5;
  *(self + OBJC_IVAR___MNCommuteRouteSet__fetchDate) = sub_1D3276CD0();
  *(self + OBJC_IVAR___MNCommuteRouteSet__internalInfo) = a5;
  v16.receiver = self;
  v16.super_class = MNCommuteRouteSet;
  v14 = [(MNCommuteRouteSet *)&v16 init];
  (*(v8 + 8))(v11, v7);
  return v14;
}

- (NSArray)routes
{
  v2 = *(self + OBJC_IVAR___MNCommuteRouteSet_routes);
  sub_1D3126084(0, &unk_1EC75BDC8, 0x1E69A1C68);

  v3 = sub_1D3277190();

  return v3;
}

- (NSDate)fetchDate
{
  v3 = sub_1D3276D30();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(self + OBJC_IVAR___MNCommuteRouteSet__fetchDate);
  sub_1D3276D00();
  v9 = sub_1D3276CD0();
  (*(v4 + 8))(v7, v3);

  return v9;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = self;
  MNCommuteRouteSet.encode(with:)(v4);
}

- (MNCommuteRouteSet)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end