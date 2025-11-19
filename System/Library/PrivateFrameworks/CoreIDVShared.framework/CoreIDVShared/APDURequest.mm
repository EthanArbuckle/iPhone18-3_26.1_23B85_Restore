@interface APDURequest
- (_TtC13CoreIDVShared11APDURequest)init;
- (_TtC13CoreIDVShared11APDURequest)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation APDURequest

- (_TtC13CoreIDVShared11APDURequest)initWithCoder:(id)a3
{
  v3 = a3;
  v4 = sub_225C13F10();

  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = self;
  APDURequest.encode(with:)(v4);
}

- (_TtC13CoreIDVShared11APDURequest)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end