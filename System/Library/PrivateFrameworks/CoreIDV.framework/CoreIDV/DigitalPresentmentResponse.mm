@interface DigitalPresentmentResponse
- (_TtC7CoreIDV26DigitalPresentmentResponse)init;
- (void)encodeWithCoder:(id)a3;
@end

@implementation DigitalPresentmentResponse

- (void)encodeWithCoder:(id)a3
{
  v4 = *(&self->super.isa + OBJC_IVAR____TtC7CoreIDV26DigitalPresentmentResponse_encryptedData);
  v5 = *&self->encryptedData[OBJC_IVAR____TtC7CoreIDV26DigitalPresentmentResponse_encryptedData];
  v6 = a3;
  v9 = self;
  v7 = sub_21CD836E4();
  v8 = sub_21CD83B04();
  [v6 encodeObject:v7 forKey:v8];
}

- (_TtC7CoreIDV26DigitalPresentmentResponse)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end