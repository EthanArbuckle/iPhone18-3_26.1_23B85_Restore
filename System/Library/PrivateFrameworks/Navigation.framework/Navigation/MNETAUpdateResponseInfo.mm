@interface MNETAUpdateResponseInfo
- (NSArray)alternateRoutes;
- (NSDateInterval)responseTime;
- (_TtC10Navigation23MNETAUpdateResponseInfo)init;
- (id)init:(id)init;
@end

@implementation MNETAUpdateResponseInfo

- (NSArray)alternateRoutes
{
  if (*(self + OBJC_IVAR____TtC10Navigation23MNETAUpdateResponseInfo_alternateRoutes))
  {
    sub_1D3126084(0, &qword_1EC75BDA8, off_1E8428C20);

    v2 = sub_1D3277190();
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (id)init:(id)init
{
  initCopy = init;
  v4 = sub_1D3131A3C(initCopy);

  return v4;
}

- (NSDateInterval)responseTime
{
  v3 = sub_1D3276A60();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v7, self + OBJC_IVAR____TtC10Navigation23MNETAUpdateResponseInfo_responseTime, v3);
  v8 = sub_1D3276A10();
  (*(v4 + 8))(v7, v3);

  return v8;
}

- (_TtC10Navigation23MNETAUpdateResponseInfo)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end