@interface HKMeasureDisplayType
- (HKObjectType)objectType;
- (void)setMeasureGraphSeries:(id)a3;
@end

@implementation HKMeasureDisplayType

- (void)setMeasureGraphSeries:(id)a3
{
  v4 = *(&self->super.super.super.isa + OBJC_IVAR___HKMeasureDisplayType_measureGraphSeries);
  *(&self->super.super.super.isa + OBJC_IVAR___HKMeasureDisplayType_measureGraphSeries) = a3;
  v3 = a3;
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