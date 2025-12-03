@interface HKMultiLineSeriesBlockCoordinate
- (HKGraphSeriesBlockCoordinateInfo)userInfo;
- (_TtC8HealthUI32HKMultiLineSeriesBlockCoordinate)init;
- (id)copyWithTransform:(CGAffineTransform *)transform roundToViewScale:(BOOL)scale;
@end

@implementation HKMultiLineSeriesBlockCoordinate

- (HKGraphSeriesBlockCoordinateInfo)userInfo
{
  v2 = swift_unknownObjectRetain();

  return v2;
}

- (id)copyWithTransform:(CGAffineTransform *)transform roundToViewScale:(BOOL)scale
{
  v5 = *&transform->c;
  v9[0] = *&transform->a;
  v9[1] = v5;
  v9[2] = *&transform->tx;
  selfCopy = self;
  v7 = sub_1C3CF6FB8(v9, scale);

  return v7;
}

- (_TtC8HealthUI32HKMultiLineSeriesBlockCoordinate)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end