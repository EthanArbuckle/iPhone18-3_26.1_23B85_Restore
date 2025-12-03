@interface DigitalPresentmentRequest
- (_TtC7CoreIDV25DigitalPresentmentRequest)init;
- (_TtC7CoreIDV25DigitalPresentmentRequest)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation DigitalPresentmentRequest

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  DigitalPresentmentRequest.encode(with:)(coderCopy);
}

- (_TtC7CoreIDV25DigitalPresentmentRequest)initWithCoder:(id)coder
{
  coderCopy = coder;
  v4 = sub_21CCC53C0();

  return v4;
}

- (_TtC7CoreIDV25DigitalPresentmentRequest)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end