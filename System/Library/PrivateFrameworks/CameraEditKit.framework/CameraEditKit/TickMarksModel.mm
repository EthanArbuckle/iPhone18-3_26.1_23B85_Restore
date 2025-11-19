@interface TickMarksModel
- (UIColor)mainTickMarkColor;
- (UIColor)secondaryTickMarkColor;
- (_TtP13CameraEditKit17TickMarksDelegate_)delegate;
- (_TtP13CameraEditKit19TickMarksDataSource_)dataSource;
- (double)absoluteValueForNormalizedValue:(double)a3 inAbsoluteRangeSize:(double)a4;
- (double)xOffsetForNormalizedValue:(double)a3;
- (double)xOffsetForTickMarkIndex:(unint64_t)a3;
- (unint64_t)floorTickMarkIndexForXOffset:(double)a3;
- (void)setEndTickMarksProminent:(BOOL)a3;
- (void)setLogarithmic:(BOOL)a3;
- (void)setMainTickMarkColor:(id)a3;
- (void)setMainTickMarkInterval:(int64_t)a3;
- (void)setMainTickMarkOffset:(int64_t)a3;
- (void)setSecondaryTickMarkColor:(id)a3;
- (void)setTickMarkSpacing:(double)a3;
- (void)setTickMarkWidth:(double)a3;
- (void)setTickMarksCount:(unint64_t)a3;
- (void)setUseTickMarkLegibilityShadows:(BOOL)a3;
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

- (void)setTickMarksCount:(unint64_t)a3
{
  v4 = self;
  sub_1B7ECC5A4(a3, &OBJC_IVAR____TtC13CameraEditKit14TickMarksModel_tickMarksCount);
}

- (void)setTickMarkSpacing:(double)a3
{
  v4 = self;
  sub_1B7ECC454(&OBJC_IVAR____TtC13CameraEditKit14TickMarksModel_tickMarkSpacing, a3);
}

- (void)setTickMarkWidth:(double)a3
{
  v4 = self;
  sub_1B7ECC454(&OBJC_IVAR____TtC13CameraEditKit14TickMarksModel_tickMarkWidth, a3);
}

- (void)setMainTickMarkInterval:(int64_t)a3
{
  v4 = self;
  sub_1B7ECC5A4(a3, &OBJC_IVAR____TtC13CameraEditKit14TickMarksModel_mainTickMarkInterval);
}

- (void)setMainTickMarkOffset:(int64_t)a3
{
  v4 = self;
  sub_1B7ECC5A4(a3, &OBJC_IVAR____TtC13CameraEditKit14TickMarksModel_mainTickMarkOffset);
}

- (void)setLogarithmic:(BOOL)a3
{
  v3 = a3;
  v4 = self;
  sub_1B7ECC778(v3, &OBJC_IVAR____TtC13CameraEditKit14TickMarksModel_logarithmic, &selRef_tickMarksModelDidChangeWidthForTickMarkCountWithModel_);
}

- (void)setEndTickMarksProminent:(BOOL)a3
{
  v3 = a3;
  v4 = self;
  sub_1B7ECC778(v3, &OBJC_IVAR____TtC13CameraEditKit14TickMarksModel_endTickMarksProminent, &selRef_tickMarksModelDidChangeAppearanceWithModel_);
}

- (void)setUseTickMarkLegibilityShadows:(BOOL)a3
{
  v3 = a3;
  v4 = self;
  sub_1B7ECC778(v3, &OBJC_IVAR____TtC13CameraEditKit14TickMarksModel_useTickMarkLegibilityShadows, &selRef_tickMarksModelDidChangeAppearanceWithModel_);
}

- (UIColor)mainTickMarkColor
{
  v2 = self;
  v3 = sub_1B7ECC838();

  return v3;
}

- (void)setMainTickMarkColor:(id)a3
{
  v6 = a3;
  v5 = self;
  sub_1B7ECD564(a3, &OBJC_IVAR____TtC13CameraEditKit14TickMarksModel__primaryTickMarkColor);
}

- (UIColor)secondaryTickMarkColor
{
  v2 = self;
  v3 = sub_1B7ECC9FC();

  return v3;
}

- (void)setSecondaryTickMarkColor:(id)a3
{
  v6 = a3;
  v5 = self;
  sub_1B7ECD564(a3, &OBJC_IVAR____TtC13CameraEditKit14TickMarksModel__secondaryTickMarkColor);
}

- (double)xOffsetForTickMarkIndex:(unint64_t)a3
{
  v4 = self;
  sub_1B7ECCDEC(a3);
  v6 = v5;

  return v6;
}

- (double)xOffsetForNormalizedValue:(double)a3
{
  v4 = self;
  v5 = sub_1B7ECCF2C(a3);

  return v5;
}

- (double)absoluteValueForNormalizedValue:(double)a3 inAbsoluteRangeSize:(double)a4
{
  if (*(self + OBJC_IVAR____TtC13CameraEditKit14TickMarksModel_logarithmic) == 1)
  {
    v6 = self;
    v7 = CEKClamp(a3, 0.0, 1.0);

    v8 = (__exp10(v7) + -1.0) / 9.0;
  }

  else
  {
    v8 = CEKClamp(a3, 0.0, 1.0);
  }

  return v8 * a4;
}

- (unint64_t)floorTickMarkIndexForXOffset:(double)a3
{
  v4 = self;
  sub_1B7ECD0CC(a3);
  v6 = v5;

  return v6;
}

@end