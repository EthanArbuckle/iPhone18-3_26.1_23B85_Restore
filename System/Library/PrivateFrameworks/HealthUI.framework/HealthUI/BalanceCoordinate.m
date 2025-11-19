@interface BalanceCoordinate
- (HKGraphSeriesBlockCoordinateInfo)userInfo;
- (_TtC8HealthUI17BalanceCoordinate)init;
- (id)copyWithTransform:(CGAffineTransform *)a3 roundToViewScale:(BOOL)a4;
@end

@implementation BalanceCoordinate

- (HKGraphSeriesBlockCoordinateInfo)userInfo
{
  v2 = swift_unknownObjectRetain();

  return v2;
}

- (_TtC8HealthUI17BalanceCoordinate)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (id)copyWithTransform:(CGAffineTransform *)a3 roundToViewScale:(BOOL)a4
{
  v4 = *&a3->c;
  v8[0] = *&a3->a;
  v8[1] = v4;
  v8[2] = *&a3->tx;
  v5 = self;
  v6 = sub_1C3CD898C(v8);

  return v6;
}

@end