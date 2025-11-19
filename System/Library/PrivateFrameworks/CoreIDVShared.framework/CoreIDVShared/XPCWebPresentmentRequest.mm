@interface XPCWebPresentmentRequest
- (_TtC13CoreIDVShared24XPCWebPresentmentRequest)init;
- (_TtC13CoreIDVShared24XPCWebPresentmentRequest)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation XPCWebPresentmentRequest

- (_TtC13CoreIDVShared24XPCWebPresentmentRequest)initWithCoder:(id)a3
{
  swift_getObjectType();
  v4 = sub_225C58704(a3);
  swift_deallocPartialClassInstance();
  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = self;
  _s13CoreIDVShared24XPCWebPresentmentRequestC6encode4withySo7NSCoderC_tF_0(v4);
}

- (_TtC13CoreIDVShared24XPCWebPresentmentRequest)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end