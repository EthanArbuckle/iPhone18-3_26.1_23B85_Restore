@interface MCMResultAuthorize
- (BOOL)encodeResultOntoReply:(id)reply;
- (_TtC22ContainerManagerCommon18MCMResultAuthorize)init;
- (_TtC22ContainerManagerCommon18MCMResultAuthorize)initWithError:(id)error;
@end

@implementation MCMResultAuthorize

- (_TtC22ContainerManagerCommon18MCMResultAuthorize)initWithError:(id)error
{
  *(&self->super.super.isa + OBJC_IVAR____TtC22ContainerManagerCommon18MCMResultAuthorize_authResult) = 0;
  v5.receiver = self;
  v5.super_class = type metadata accessor for MCMResultAuthorize();
  return [(MCMResultBase *)&v5 initWithError:error];
}

- (BOOL)encodeResultOntoReply:(id)reply
{
  v5 = *(&self->super.super.isa + OBJC_IVAR____TtC22ContainerManagerCommon18MCMResultAuthorize_authResult);
  swift_unknownObjectRetain();
  selfCopy = self;
  xpc_dictionary_set_uint64(reply, "ReplyAuthorized", v5);
  v8.receiver = selfCopy;
  v8.super_class = type metadata accessor for MCMResultAuthorize();
  LOBYTE(v5) = [(MCMResultBase *)&v8 encodeResultOntoReply:reply];
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