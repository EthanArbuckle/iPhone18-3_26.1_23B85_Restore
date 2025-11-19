@interface BlastDoorPreviewAudio
- (BlastDoorPreviewAudio)init;
- (NSString)description;
@end

@implementation BlastDoorPreviewAudio

- (NSString)description
{
  v4 = *(&self->super.isa + OBJC_IVAR___BlastDoorPreviewAudio_previewAudio);
  v5 = *&self->previewAudio[OBJC_IVAR___BlastDoorPreviewAudio_previewAudio];

  sub_2146D9608();
  v2 = sub_2146D9588();

  return v2;
}

- (BlastDoorPreviewAudio)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end