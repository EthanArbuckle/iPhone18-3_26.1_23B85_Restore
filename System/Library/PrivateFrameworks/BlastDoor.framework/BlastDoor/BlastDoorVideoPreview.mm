@interface BlastDoorVideoPreview
- (BlastDoorImage)image;
- (BlastDoorVideoPreview)init;
- (BlastDoorVideoPreview_AudioFormat)audioFormat;
- (BlastDoorVideoPreview_VideoFormat)videoFormat;
- (NSString)description;
@end

@implementation BlastDoorVideoPreview

- (NSString)description
{
  sub_2140A4F3C(self + OBJC_IVAR___BlastDoorVideoPreview_videoPreview, &v4);
  sub_2146D9608();
  v2 = sub_2146D9588();

  return v2;
}

- (BlastDoorImage)image
{
  v2 = self;
  v3 = sub_2145834C0();

  return v3;
}

- (BlastDoorVideoPreview_VideoFormat)videoFormat
{
  v3 = *&self->videoPreview[OBJC_IVAR___BlastDoorVideoPreview_videoPreview + 464];
  v2 = *&self->videoPreview[OBJC_IVAR___BlastDoorVideoPreview_videoPreview + 472];
  v5 = *&self->videoPreview[OBJC_IVAR___BlastDoorVideoPreview_videoPreview + 480];
  v4 = *&self->videoPreview[OBJC_IVAR___BlastDoorVideoPreview_videoPreview + 488];
  v6 = type metadata accessor for _ObjCVideoPreview_VideoFormatWrapper();
  v7 = objc_allocWithZone(v6);
  v8 = &v7[OBJC_IVAR___BlastDoorVideoPreview_VideoFormat_videoPreview_VideoFormat];
  *v8 = v3;
  *(v8 + 1) = v2;
  *(v8 + 2) = v5;
  *(v8 + 3) = v4;
  v11.receiver = v7;
  v11.super_class = v6;

  v9 = [(BlastDoorVideoPreview *)&v11 init];

  return v9;
}

- (BlastDoorVideoPreview_AudioFormat)audioFormat
{
  v3 = *&self->videoPreview[OBJC_IVAR___BlastDoorVideoPreview_videoPreview + 496];
  v2 = *&self->videoPreview[OBJC_IVAR___BlastDoorVideoPreview_videoPreview + 504];
  v4 = *&self->videoPreview[OBJC_IVAR___BlastDoorVideoPreview_videoPreview + 512];
  v5 = *&self->videoPreview[OBJC_IVAR___BlastDoorVideoPreview_videoPreview + 520];
  v6 = type metadata accessor for _ObjCVideoPreview_AudioFormatWrapper();
  v7 = objc_allocWithZone(v6);
  v8 = &v7[OBJC_IVAR___BlastDoorVideoPreview_AudioFormat_videoPreview_AudioFormat];
  *v8 = v3;
  *(v8 + 1) = v2;
  *(v8 + 2) = v4;
  *(v8 + 3) = v5;
  v11.receiver = v7;
  v11.super_class = v6;

  v9 = [(BlastDoorVideoPreview *)&v11 init];

  return v9;
}

- (BlastDoorVideoPreview)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end