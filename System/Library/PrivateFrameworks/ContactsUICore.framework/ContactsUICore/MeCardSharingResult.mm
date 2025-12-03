@interface MeCardSharingResult
- (_TtC14ContactsUICore19MeCardSharingResult)init;
- (void)setContactImage:(id)image;
- (void)setWallpaper:(id)wallpaper;
@end

@implementation MeCardSharingResult

- (void)setContactImage:(id)image
{
  v4 = *(self + OBJC_IVAR____TtC14ContactsUICore19MeCardSharingResult_contactImage);
  *(self + OBJC_IVAR____TtC14ContactsUICore19MeCardSharingResult_contactImage) = image;
  imageCopy = image;
}

- (void)setWallpaper:(id)wallpaper
{
  v4 = *(self + OBJC_IVAR____TtC14ContactsUICore19MeCardSharingResult_wallpaper);
  *(self + OBJC_IVAR____TtC14ContactsUICore19MeCardSharingResult_wallpaper) = wallpaper;
  wallpaperCopy = wallpaper;
}

- (_TtC14ContactsUICore19MeCardSharingResult)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end