@interface BlastDoorPreviewImage
- (BlastDoorImage)image;
- (BlastDoorPreviewImage)init;
- (CGSize)alignmentInset;
- (NSString)description;
- (NSString)stickerEffect;
- (NSString)utTypeString;
- (double)frameDuration;
@end

@implementation BlastDoorPreviewImage

- (NSString)description
{
  sub_214592A08(self + OBJC_IVAR___BlastDoorPreviewImage_previewImage, v4);
  sub_2146D9608();
  v2 = sub_2146D9588();

  return v2;
}

- (BlastDoorImage)image
{
  v2 = self;
  v3 = sub_21456E86C();

  return v3;
}

- (double)frameDuration
{
  result = *&self->previewImage[OBJC_IVAR___BlastDoorPreviewImage_previewImage + 440];
  if (self->previewImage[OBJC_IVAR___BlastDoorPreviewImage_previewImage + 448])
  {
    return 0.0;
  }

  return result;
}

- (NSString)stickerEffect
{
  self->previewImage[OBJC_IVAR___BlastDoorPreviewImage_previewImage + 450];
  self->previewImage[OBJC_IVAR___BlastDoorPreviewImage_previewImage + 450];
  v2 = self;
  v3 = sub_2146D9588();

  return v3;
}

- (NSString)utTypeString
{
  if (*&self->previewImage[OBJC_IVAR___BlastDoorPreviewImage_previewImage + 464])
  {
    v2 = *&self->previewImage[OBJC_IVAR___BlastDoorPreviewImage_previewImage + 456];
    v3 = *&self->previewImage[OBJC_IVAR___BlastDoorPreviewImage_previewImage + 464];

    v4 = sub_2146D9588();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (CGSize)alignmentInset
{
  v2 = *&self->previewImage[OBJC_IVAR___BlastDoorPreviewImage_previewImage + 480];
  v3 = *&self->previewImage[OBJC_IVAR___BlastDoorPreviewImage_previewImage + 488];
  result.height = v3;
  result.width = v2;
  return result;
}

- (BlastDoorPreviewImage)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end