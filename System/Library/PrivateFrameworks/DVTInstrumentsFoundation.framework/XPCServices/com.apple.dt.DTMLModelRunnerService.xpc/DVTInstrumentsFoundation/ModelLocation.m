@interface ModelLocation
- (_TtC35com_apple_dt_DTMLModelRunnerService13ModelLocation)init;
- (_TtC35com_apple_dt_DTMLModelRunnerService13ModelLocation)initWithTempFolderGuid:(id)a3 fileName:(id)a4;
@end

@implementation ModelLocation

- (_TtC35com_apple_dt_DTMLModelRunnerService13ModelLocation)initWithTempFolderGuid:(id)a3 fileName:(id)a4
{
  v5 = sub_1000268A0();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100026890();
  v10 = sub_100026CC0();
  v12 = v11;
  (*(v6 + 16))(self + OBJC_IVAR____TtC35com_apple_dt_DTMLModelRunnerService13ModelLocation_tempFolderGuid, v9, v5);
  v13 = (self + OBJC_IVAR____TtC35com_apple_dt_DTMLModelRunnerService13ModelLocation_fileName);
  *v13 = v10;
  v13[1] = v12;
  v14 = type metadata accessor for ModelLocation();
  v17.receiver = self;
  v17.super_class = v14;
  v15 = [(ModelLocation *)&v17 init];
  (*(v6 + 8))(v9, v5);
  return v15;
}

- (_TtC35com_apple_dt_DTMLModelRunnerService13ModelLocation)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end