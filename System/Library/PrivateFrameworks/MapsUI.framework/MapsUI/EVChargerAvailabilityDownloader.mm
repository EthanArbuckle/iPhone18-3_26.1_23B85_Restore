@interface EVChargerAvailabilityDownloader
- (BOOL)isActive;
- (_TtC6MapsUI31EVChargerAvailabilityDownloader)init;
- (_TtC6MapsUI31EVChargerAvailabilityDownloader)initWithMapItemIdentifier:(id)a3;
- (_TtP6MapsUI39EVChargerAvailabilityDownloaderDelegate_)delegate;
- (void)setIsActive:(BOOL)a3;
@end

@implementation EVChargerAvailabilityDownloader

- (_TtP6MapsUI39EVChargerAvailabilityDownloaderDelegate_)delegate
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (BOOL)isActive
{
  v3 = OBJC_IVAR____TtC6MapsUI31EVChargerAvailabilityDownloader_isActive;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setIsActive:(BOOL)a3
{
  v5 = OBJC_IVAR____TtC6MapsUI31EVChargerAvailabilityDownloader_isActive;
  swift_beginAccess();
  *(self + v5) = a3;
  v6 = self;
  sub_1C57443D8();
}

- (_TtC6MapsUI31EVChargerAvailabilityDownloader)initWithMapItemIdentifier:(id)a3
{
  ObjectType = swift_getObjectType();
  swift_unknownObjectWeakInit();
  *(self + OBJC_IVAR____TtC6MapsUI31EVChargerAvailabilityDownloader_isActive) = 0;
  *(self + OBJC_IVAR____TtC6MapsUI31EVChargerAvailabilityDownloader_timer) = 0;
  *(self + OBJC_IVAR____TtC6MapsUI31EVChargerAvailabilityDownloader_isDownloadInProgress) = 0;
  *(self + OBJC_IVAR____TtC6MapsUI31EVChargerAvailabilityDownloader_mapItemIdentifier) = a3;
  v8.receiver = self;
  v8.super_class = ObjectType;
  v6 = a3;
  return [(EVChargerAvailabilityDownloader *)&v8 init];
}

- (_TtC6MapsUI31EVChargerAvailabilityDownloader)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end