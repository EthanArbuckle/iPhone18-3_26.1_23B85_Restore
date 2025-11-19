@interface MapsSyncExpression
- (_TtC8MapsSync18MapsSyncExpression)init;
- (_TtC8MapsSync18MapsSyncExpression)initWithExpression:(id)a3 key:(id)a4 returnType:(int64_t)a5;
@end

@implementation MapsSyncExpression

- (_TtC8MapsSync18MapsSyncExpression)initWithExpression:(id)a3 key:(id)a4 returnType:(int64_t)a5
{
  v7 = sub_1B63BEBD4();
  v9 = v8;
  v10 = a3;
  v11 = sub_1B639ECE0(v10, v7, v9, a5);

  return v11;
}

- (_TtC8MapsSync18MapsSyncExpression)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end