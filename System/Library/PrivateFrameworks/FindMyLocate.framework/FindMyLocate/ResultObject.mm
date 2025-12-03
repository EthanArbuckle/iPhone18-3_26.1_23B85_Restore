@interface ResultObject
- (_TtC12FindMyLocate12ResultObject)init;
- (_TtC12FindMyLocate12ResultObject)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ResultObject

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  ResultObject.encode(with:)(coderCopy);
}

- (_TtC12FindMyLocate12ResultObject)initWithCoder:(id)coder
{
  coderCopy = coder;
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