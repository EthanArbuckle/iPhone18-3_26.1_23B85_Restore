@interface APDURequest
- (_TtC13CoreIDVShared11APDURequest)init;
- (_TtC13CoreIDVShared11APDURequest)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation APDURequest

- (_TtC13CoreIDVShared11APDURequest)initWithCoder:(id)coder
{
  coderCopy = coder;
  v4 = sub_225C13F10();

  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  APDURequest.encode(with:)(coderCopy);
}

- (_TtC13CoreIDVShared11APDURequest)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end