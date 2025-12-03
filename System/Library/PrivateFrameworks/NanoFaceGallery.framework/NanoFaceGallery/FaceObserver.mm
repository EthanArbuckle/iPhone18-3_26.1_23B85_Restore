@interface FaceObserver
- (_TtC15NanoFaceGallery12FaceObserver)init;
- (void)faceResourceDirectoryDidChange:(void *)change;
@end

@implementation FaceObserver

- (void)faceResourceDirectoryDidChange:(void *)change
{
  changeCopy = change;
  sub_25B0864D8();
}

- (_TtC15NanoFaceGallery12FaceObserver)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end