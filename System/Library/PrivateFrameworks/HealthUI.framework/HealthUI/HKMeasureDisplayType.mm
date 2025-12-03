@interface HKMeasureDisplayType
- (HKObjectType)objectType;
- (void)setMeasureGraphSeries:(id)series;
@end

@implementation HKMeasureDisplayType

- (void)setMeasureGraphSeries:(id)series
{
  v4 = *(&self->super.super.super.isa + OBJC_IVAR___HKMeasureDisplayType_measureGraphSeries);
  *(&self->super.super.super.isa + OBJC_IVAR___HKMeasureDisplayType_measureGraphSeries) = series;
  seriesCopy = series;
}

- (HKObjectType)objectType
{
  v3 = *(&self->super.super.super.isa + OBJC_IVAR___HKMeasureDisplayType_underlyingObjectType);
  if (v3)
  {

    return v3;
  }

  else
  {
    result = sub_1C3D20944();
    __break(1u);
  }

  return result;
}

@end