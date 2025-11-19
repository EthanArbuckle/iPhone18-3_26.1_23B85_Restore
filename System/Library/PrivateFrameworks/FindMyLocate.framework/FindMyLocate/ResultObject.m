@interface ResultObject
- (_TtC12FindMyLocate12ResultObject)init;
- (_TtC12FindMyLocate12ResultObject)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation ResultObject

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = self;
  ResultObject.encode(with:)(v4);
}

- (_TtC12FindMyLocate12ResultObject)initWithCoder:(id)a3
{
  v3 = a3;
  v4 = sub_1B80C2C80();

  return v4;
}

- (_TtC12FindMyLocate12ResultObject)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end