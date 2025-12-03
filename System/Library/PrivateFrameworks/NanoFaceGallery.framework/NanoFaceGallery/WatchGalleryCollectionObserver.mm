@interface WatchGalleryCollectionObserver
- (_TtC15NanoFaceGalleryP33_61C3017D18ADB1D9719E0FDF1EB8939530WatchGalleryCollectionObserver)init;
- (void)galleryCollectionDidChange:(id)change shouldUpdateSnaphots:(BOOL)snaphots;
@end

@implementation WatchGalleryCollectionObserver

- (void)galleryCollectionDidChange:(id)change shouldUpdateSnaphots:(BOOL)snaphots
{
  v4 = (self + OBJC_IVAR____TtC15NanoFaceGalleryP33_61C3017D18ADB1D9719E0FDF1EB8939530WatchGalleryCollectionObserver_lock);
  selfCopy = self;
  os_unfair_lock_lock(v4);
  sub_25B099628(&v4[2]._os_unfair_lock_opaque);
  os_unfair_lock_unlock(v4);
}

- (_TtC15NanoFaceGalleryP33_61C3017D18ADB1D9719E0FDF1EB8939530WatchGalleryCollectionObserver)init
{
  ObjectType = swift_getObjectType();
  v4 = self + OBJC_IVAR____TtC15NanoFaceGalleryP33_61C3017D18ADB1D9719E0FDF1EB8939530WatchGalleryCollectionObserver_lock;
  v5 = MEMORY[0x277D84F90];
  *v4 = 0;
  *(v4 + 1) = v5;
  v7.receiver = self;
  v7.super_class = ObjectType;
  return [(WatchGalleryCollectionObserver *)&v7 init];
}

@end