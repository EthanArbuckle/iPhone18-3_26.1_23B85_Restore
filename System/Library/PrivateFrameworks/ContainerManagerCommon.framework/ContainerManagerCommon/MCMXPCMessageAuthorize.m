@interface MCMXPCMessageAuthorize
- (_TtC22ContainerManagerCommon22MCMXPCMessageAuthorize)init;
- (_TtC22ContainerManagerCommon22MCMXPCMessageAuthorize)initWithContext:(id)a3;
- (_TtC22ContainerManagerCommon22MCMXPCMessageAuthorize)initWithXPCObject:(id)a3 context:(id)a4 error:(unint64_t *)a5;
@end

@implementation MCMXPCMessageAuthorize

- (_TtC22ContainerManagerCommon22MCMXPCMessageAuthorize)initWithXPCObject:(id)a3 context:(id)a4 error:(unint64_t *)a5
{
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  return sub_1DF2DE5A0(a3, a4, a5);
}

- (_TtC22ContainerManagerCommon22MCMXPCMessageAuthorize)initWithContext:(id)a3
{
  v4 = (self + OBJC_IVAR____TtC22ContainerManagerCommon22MCMXPCMessageAuthorize_auditToken);
  *v4 = 0u;
  v4[1] = 0u;
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC22ContainerManagerCommon22MCMXPCMessageAuthorize_flags) = 0;
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC22ContainerManagerCommon22MCMXPCMessageAuthorize_onBehalfOfSelf) = 0;
  v7.receiver = self;
  v7.super_class = type metadata accessor for MCMXPCMessageAuthorize();
  swift_unknownObjectRetain();
  v5 = [(MCMXPCMessageBase *)&v7 initWithContext:a3];
  swift_unknownObjectRelease();
  if (v5)
  {
  }

  return v5;
}

- (_TtC22ContainerManagerCommon22MCMXPCMessageAuthorize)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end