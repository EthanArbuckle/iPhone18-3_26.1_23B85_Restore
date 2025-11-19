@interface MCMResultAuthorize
- (BOOL)encodeResultOntoReply:(id)a3;
- (_TtC22ContainerManagerCommon18MCMResultAuthorize)init;
- (_TtC22ContainerManagerCommon18MCMResultAuthorize)initWithError:(id)a3;
@end

@implementation MCMResultAuthorize

- (_TtC22ContainerManagerCommon18MCMResultAuthorize)initWithError:(id)a3
{
  *(&self->super.super.isa + OBJC_IVAR____TtC22ContainerManagerCommon18MCMResultAuthorize_authResult) = 0;
  v5.receiver = self;
  v5.super_class = type metadata accessor for MCMResultAuthorize();
  return [(MCMResultBase *)&v5 initWithError:a3];
}

- (BOOL)encodeResultOntoReply:(id)a3
{
  v5 = *(&self->super.super.isa + OBJC_IVAR____TtC22ContainerManagerCommon18MCMResultAuthorize_authResult);
  swift_unknownObjectRetain();
  v6 = self;
  xpc_dictionary_set_uint64(a3, "ReplyAuthorized", v5);
  v8.receiver = v6;
  v8.super_class = type metadata accessor for MCMResultAuthorize();
  LOBYTE(v5) = [(MCMResultBase *)&v8 encodeResultOntoReply:a3];
  swift_unknownObjectRelease();

  return v5;
}

- (_TtC22ContainerManagerCommon18MCMResultAuthorize)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end