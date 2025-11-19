@interface BlastDoorAttributionInfo_PreviewGenerationConstraints
- (BlastDoorAttributionInfo_PreviewGenerationConstraints)init;
- (NSString)description;
- (double)maxPixelWidth;
- (double)minThumbSizeHeight;
- (double)minThumbSizeWidth;
- (double)scale;
@end

@implementation BlastDoorAttributionInfo_PreviewGenerationConstraints

- (NSString)description
{
  v4 = *(&self->super.isa + OBJC_IVAR___BlastDoorAttributionInfo_PreviewGenerationConstraints_attributionInfo_PreviewGenerationConstraints);
  v5 = *&self->attributionInfo_PreviewGenerationConstraints[OBJC_IVAR___BlastDoorAttributionInfo_PreviewGenerationConstraints_attributionInfo_PreviewGenerationConstraints + 8];
  *v6 = *&self->attributionInfo_PreviewGenerationConstraints[OBJC_IVAR___BlastDoorAttributionInfo_PreviewGenerationConstraints_attributionInfo_PreviewGenerationConstraints + 24];
  *&v6[10] = *&self->attributionInfo_PreviewGenerationConstraints[OBJC_IVAR___BlastDoorAttributionInfo_PreviewGenerationConstraints_attributionInfo_PreviewGenerationConstraints + 34];
  sub_2146D9608();
  v2 = sub_2146D9588();

  return v2;
}

- (double)maxPixelWidth
{
  result = *(&self->super.isa + OBJC_IVAR___BlastDoorAttributionInfo_PreviewGenerationConstraints_attributionInfo_PreviewGenerationConstraints);
  if (self->attributionInfo_PreviewGenerationConstraints[OBJC_IVAR___BlastDoorAttributionInfo_PreviewGenerationConstraints_attributionInfo_PreviewGenerationConstraints])
  {
    return 0.0;
  }

  return result;
}

- (double)minThumbSizeHeight
{
  result = *&self->attributionInfo_PreviewGenerationConstraints[OBJC_IVAR___BlastDoorAttributionInfo_PreviewGenerationConstraints_attributionInfo_PreviewGenerationConstraints + 8];
  if (self->attributionInfo_PreviewGenerationConstraints[OBJC_IVAR___BlastDoorAttributionInfo_PreviewGenerationConstraints_attributionInfo_PreviewGenerationConstraints + 16])
  {
    return 0.0;
  }

  return result;
}

- (double)minThumbSizeWidth
{
  result = *&self->attributionInfo_PreviewGenerationConstraints[OBJC_IVAR___BlastDoorAttributionInfo_PreviewGenerationConstraints_attributionInfo_PreviewGenerationConstraints + 24];
  if (self->attributionInfo_PreviewGenerationConstraints[OBJC_IVAR___BlastDoorAttributionInfo_PreviewGenerationConstraints_attributionInfo_PreviewGenerationConstraints + 32])
  {
    return 0.0;
  }

  return result;
}

- (double)scale
{
  result = *&self->attributionInfo_PreviewGenerationConstraints[OBJC_IVAR___BlastDoorAttributionInfo_PreviewGenerationConstraints_attributionInfo_PreviewGenerationConstraints + 40];
  if (self->attributionInfo_PreviewGenerationConstraints[OBJC_IVAR___BlastDoorAttributionInfo_PreviewGenerationConstraints_attributionInfo_PreviewGenerationConstraints + 48])
  {
    return 0.0;
  }

  return result;
}

- (BlastDoorAttributionInfo_PreviewGenerationConstraints)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end