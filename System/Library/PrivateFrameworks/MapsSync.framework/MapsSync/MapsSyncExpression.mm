@interface MapsSyncExpression
- (_TtC8MapsSync18MapsSyncExpression)init;
- (_TtC8MapsSync18MapsSyncExpression)initWithExpression:(id)expression key:(id)key returnType:(int64_t)type;
@end

@implementation MapsSyncExpression

- (_TtC8MapsSync18MapsSyncExpression)initWithExpression:(id)expression key:(id)key returnType:(int64_t)type
{
  v7 = sub_1B63BEBD4();
  v9 = v8;
  expressionCopy = expression;
  v11 = sub_1B639ECE0(expressionCopy, v7, v9, type);

  return v11;
}

- (_TtC8MapsSync18MapsSyncExpression)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end