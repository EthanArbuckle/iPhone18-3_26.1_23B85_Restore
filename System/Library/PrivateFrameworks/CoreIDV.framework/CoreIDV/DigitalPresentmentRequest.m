@interface DigitalPresentmentRequest
- (_TtC7CoreIDV25DigitalPresentmentRequest)init;
- (_TtC7CoreIDV25DigitalPresentmentRequest)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation DigitalPresentmentRequest

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = self;
  DigitalPresentmentRequest.encode(with:)(v4);
}

- (_TtC7CoreIDV25DigitalPresentmentRequest)initWithCoder:(id)a3
{
  v3 = a3;
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