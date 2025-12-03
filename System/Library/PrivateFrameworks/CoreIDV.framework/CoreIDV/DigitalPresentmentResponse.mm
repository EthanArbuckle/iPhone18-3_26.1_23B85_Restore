@interface DigitalPresentmentResponse
- (_TtC7CoreIDV26DigitalPresentmentResponse)init;
- (void)encodeWithCoder:(id)coder;
@end

@implementation DigitalPresentmentResponse

- (void)encodeWithCoder:(id)coder
{
  v4 = *(&self->super.isa + OBJC_IVAR____TtC7CoreIDV26DigitalPresentmentResponse_encryptedData);
  v5 = *&self->encryptedData[OBJC_IVAR____TtC7CoreIDV26DigitalPresentmentResponse_encryptedData];
  coderCopy = coder;
  selfCopy = self;
  v7 = sub_21CD836E4();
  v8 = sub_21CD83B04();
  [coderCopy encodeObject:v7 forKey:v8];
}

- (_TtC7CoreIDV26DigitalPresentmentResponse)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end