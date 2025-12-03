@interface MUWebBasedPlacecardOfflineMapProvider
- (MUOfflineMapProvider)nativeOfflineMapProvider;
- (NSProgress)downloadProgress;
- (_TtC6MapsUI37MUWebBasedPlacecardOfflineMapProvider)init;
- (int64_t)downloadState;
- (void)offlineMapProviderUpdated:(id)updated;
- (void)setNativeOfflineMapProvider:(id)provider;
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

- (void)setNativeOfflineMapProvider:(id)provider
{
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_1C570D570(provider);

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
  downloadProgress = *(&self->super.isa + v3);
  if (downloadProgress)
  {
    downloadProgress = [downloadProgress downloadProgress];
  }

  return downloadProgress;
}

- (_TtC6MapsUI37MUWebBasedPlacecardOfflineMapProvider)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)offlineMapProviderUpdated:(id)updated
{
  swift_getObjectType();
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_1C570D42C(selfCopy);
  swift_unknownObjectRelease();
}

@end