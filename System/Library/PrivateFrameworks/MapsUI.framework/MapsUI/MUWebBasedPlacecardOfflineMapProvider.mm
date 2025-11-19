@interface MUWebBasedPlacecardOfflineMapProvider
- (MUOfflineMapProvider)nativeOfflineMapProvider;
- (NSProgress)downloadProgress;
- (_TtC6MapsUI37MUWebBasedPlacecardOfflineMapProvider)init;
- (int64_t)downloadState;
- (void)offlineMapProviderUpdated:(id)a3;
- (void)setNativeOfflineMapProvider:(id)a3;
@end

@implementation MUWebBasedPlacecardOfflineMapProvider

- (MUOfflineMapProvider)nativeOfflineMapProvider
{
  v3 = OBJC_IVAR____TtC6MapsUI37MUWebBasedPlacecardOfflineMapProvider_nativeOfflineMapProvider;
  swift_beginAccess();
  v4 = *(&self->super.isa + v3);
  v5 = swift_unknownObjectRetain();

  return v5;
}

- (void)setNativeOfflineMapProvider:(id)a3
{
  swift_unknownObjectRetain();
  v5 = self;
  sub_1C570D570(a3);

  swift_unknownObjectRelease();
}

- (int64_t)downloadState
{
  v3 = OBJC_IVAR____TtC6MapsUI37MUWebBasedPlacecardOfflineMapProvider_nativeOfflineMapProvider;
  swift_beginAccess();
  result = *(&self->super.isa + v3);
  if (result)
  {
    return [result downloadState];
  }

  return result;
}

- (NSProgress)downloadProgress
{
  v3 = OBJC_IVAR____TtC6MapsUI37MUWebBasedPlacecardOfflineMapProvider_nativeOfflineMapProvider;
  swift_beginAccess();
  v4 = *(&self->super.isa + v3);
  if (v4)
  {
    v4 = [v4 downloadProgress];
  }

  return v4;
}

- (_TtC6MapsUI37MUWebBasedPlacecardOfflineMapProvider)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)offlineMapProviderUpdated:(id)a3
{
  swift_getObjectType();
  swift_unknownObjectRetain();
  v4 = self;
  sub_1C570D42C(v4);
  swift_unknownObjectRelease();
}

@end