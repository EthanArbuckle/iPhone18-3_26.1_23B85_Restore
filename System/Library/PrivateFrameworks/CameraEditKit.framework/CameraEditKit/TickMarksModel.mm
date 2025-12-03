@interface TickMarksModel
- (UIColor)mainTickMarkColor;
- (UIColor)secondaryTickMarkColor;
- (_TtP13CameraEditKit17TickMarksDelegate_)delegate;
- (_TtP13CameraEditKit19TickMarksDataSource_)dataSource;
- (double)absoluteValueForNormalizedValue:(double)value inAbsoluteRangeSize:(double)size;
- (double)xOffsetForNormalizedValue:(double)value;
- (double)xOffsetForTickMarkIndex:(unint64_t)index;
- (unint64_t)floorTickMarkIndexForXOffset:(double)offset;
- (void)setEndTickMarksProminent:(BOOL)prominent;
- (void)setLogarithmic:(BOOL)logarithmic;
- (void)setMainTickMarkColor:(id)color;
- (void)setMainTickMarkInterval:(int64_t)interval;
- (void)setMainTickMarkOffset:(int64_t)offset;
- (void)setSecondaryTickMarkColor:(id)color;
- (void)setTickMarkSpacing:(double)spacing;
- (void)setTickMarkWidth:(double)width;
- (void)setTickMarksCount:(unint64_t)count;
- (void)setUseTickMarkLegibilityShadows:(BOOL)shadows;
@end

@implementation TickMarksModel

- (_TtP13CameraEditKit19TickMarksDataSource_)dataSource
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (_TtP13CameraEditKit17TickMarksDelegate_)delegate
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (void)setTickMarksCount:(unint64_t)count
{
  selfCopy = self;
  sub_1B7ECC5A4(count, &OBJC_IVAR____TtC13CameraEditKit14TickMarksModel_tickMarksCount);
}

- (void)setTickMarkSpacing:(double)spacing
{
  selfCopy = self;
  sub_1B7ECC454(&OBJC_IVAR____TtC13CameraEditKit14TickMarksModel_tickMarkSpacing, spacing);
}

- (void)setTickMarkWidth:(double)width
{
  selfCopy = self;
  sub_1B7ECC454(&OBJC_IVAR____TtC13CameraEditKit14TickMarksModel_tickMarkWidth, width);
}

- (void)setMainTickMarkInterval:(int64_t)interval
{
  selfCopy = self;
  sub_1B7ECC5A4(interval, &OBJC_IVAR____TtC13CameraEditKit14TickMarksModel_mainTickMarkInterval);
}

- (void)setMainTickMarkOffset:(int64_t)offset
{
  selfCopy = self;
  sub_1B7ECC5A4(offset, &OBJC_IVAR____TtC13CameraEditKit14TickMarksModel_mainTickMarkOffset);
}

- (void)setLogarithmic:(BOOL)logarithmic
{
  logarithmicCopy = logarithmic;
  selfCopy = self;
  sub_1B7ECC778(logarithmicCopy, &OBJC_IVAR____TtC13CameraEditKit14TickMarksModel_logarithmic, &selRef_tickMarksModelDidChangeWidthForTickMarkCountWithModel_);
}

- (void)setEndTickMarksProminent:(BOOL)prominent
{
  prominentCopy = prominent;
  selfCopy = self;
  sub_1B7ECC778(prominentCopy, &OBJC_IVAR____TtC13CameraEditKit14TickMarksModel_endTickMarksProminent, &selRef_tickMarksModelDidChangeAppearanceWithModel_);
}

- (void)setUseTickMarkLegibilityShadows:(BOOL)shadows
{
  shadowsCopy = shadows;
  selfCopy = self;
  sub_1B7ECC778(shadowsCopy, &OBJC_IVAR____TtC13CameraEditKit14TickMarksModel_useTickMarkLegibilityShadows, &selRef_tickMarksModelDidChangeAppearanceWithModel_);
}

- (UIColor)mainTickMarkColor
{
  selfCopy = self;
  v3 = sub_1B7ECC838();

  return v3;
}

- (void)setMainTickMarkColor:(id)color
{
  colorCopy = color;
  selfCopy = self;
  sub_1B7ECD564(color, &OBJC_IVAR____TtC13CameraEditKit14TickMarksModel__primaryTickMarkColor);
}

- (UIColor)secondaryTickMarkColor
{
  selfCopy = self;
  v3 = sub_1B7ECC9FC();

  return v3;
}

- (void)setSecondaryTickMarkColor:(id)color
{
  colorCopy = color;
  selfCopy = self;
  sub_1B7ECD564(color, &OBJC_IVAR____TtC13CameraEditKit14TickMarksModel__secondaryTickMarkColor);
}

- (double)xOffsetForTickMarkIndex:(unint64_t)index
{
  selfCopy = self;
  sub_1B7ECCDEC(index);
  v6 = v5;

  return v6;
}

- (double)xOffsetForNormalizedValue:(double)value
{
  selfCopy = self;
  v5 = sub_1B7ECCF2C(value);

  return v5;
}

- (double)absoluteValueForNormalizedValue:(double)value inAbsoluteRangeSize:(double)size
{
  if (*(self + OBJC_IVAR____TtC13CameraEditKit14TickMarksModel_logarithmic) == 1)
  {
    selfCopy = self;
    v7 = CEKClamp(value, 0.0, 1.0);

    v8 = (__exp10(v7) + -1.0) / 9.0;
  }

  else
  {
    v8 = CEKClamp(value, 0.0, 1.0);
  }

  return v8 * size;
}

- (unint64_t)floorTickMarkIndexForXOffset:(double)offset
{
  selfCopy = self;
  sub_1B7ECD0CC(offset);
  v6 = v5;

  return v6;
}

@end