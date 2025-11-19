@interface BlastDoorMediaMetadata_LargeImageContextualInfo
- (BlastDoorMediaMetadata_LargeImageContextualInfo)init;
- (NSString)description;
@end

@implementation BlastDoorMediaMetadata_LargeImageContextualInfo

- (NSString)description
{
  v4 = *(&self->super.isa + OBJC_IVAR___BlastDoorMediaMetadata_LargeImageContextualInfo_mediaMetadata_LargeImageContextualInfo);
  v5 = *&self->mediaMetadata_LargeImageContextualInfo[OBJC_IVAR___BlastDoorMediaMetadata_LargeImageContextualInfo_mediaMetadata_LargeImageContextualInfo + 8];
  sub_2146D9608();
  v2 = sub_2146D9588();

  return v2;
}

- (BlastDoorMediaMetadata_LargeImageContextualInfo)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end