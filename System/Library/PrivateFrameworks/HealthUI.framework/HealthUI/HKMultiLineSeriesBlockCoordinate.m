@interface HKMultiLineSeriesBlockCoordinate
- (HKGraphSeriesBlockCoordinateInfo)userInfo;
- (_TtC8HealthUI32HKMultiLineSeriesBlockCoordinate)init;
- (id)copyWithTransform:(CGAffineTransform *)a3 roundToViewScale:(BOOL)a4;
@end

@implementation HKMultiLineSeriesBlockCoordinate

- (HKGraphSeriesBlockCoordinateInfo)userInfo
{
  v2 = swift_unknownObjectRetain();

  return v2;
}

- (id)copyWithTransform:(CGAffineTransform *)a3 roundToViewScale:(BOOL)a4
{
  v5 = *&a3->c;
  v9[0] = *&a3->a;
  v9[1] = v5;
  v9[2] = *&a3->tx;
  v6 = self;
  v7 = sub_1C3CF6FB8(v9, a4);

  return v7;
}

- (_TtC8HealthUI32HKMultiLineSeriesBlockCoordinate)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end