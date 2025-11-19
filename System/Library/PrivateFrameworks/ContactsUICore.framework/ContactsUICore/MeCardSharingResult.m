@interface MeCardSharingResult
- (_TtC14ContactsUICore19MeCardSharingResult)init;
- (void)setContactImage:(id)a3;
- (void)setWallpaper:(id)a3;
@end

@implementation MeCardSharingResult

- (void)setContactImage:(id)a3
{
  v4 = *(self + OBJC_IVAR____TtC14ContactsUICore19MeCardSharingResult_contactImage);
  *(self + OBJC_IVAR____TtC14ContactsUICore19MeCardSharingResult_contactImage) = a3;
  v3 = a3;
}

- (void)setWallpaper:(id)a3
{
  v4 = *(self + OBJC_IVAR____TtC14ContactsUICore19MeCardSharingResult_wallpaper);
  *(self + OBJC_IVAR____TtC14ContactsUICore19MeCardSharingResult_wallpaper) = a3;
  v3 = a3;
}

- (_TtC14ContactsUICore19MeCardSharingResult)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end