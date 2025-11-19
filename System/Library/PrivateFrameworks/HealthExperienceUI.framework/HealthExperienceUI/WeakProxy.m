@interface WeakProxy
- (BOOL)respondsToSelector:(SEL)a3;
- (_TtC18HealthExperienceUIP33_6AFCBB489F4B745EBBFAE39AEAF00FBF9WeakProxy)init;
- (id)forwardingTargetForSelector:(SEL)a3;
@end

@implementation WeakProxy

- (BOOL)respondsToSelector:(SEL)a3
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = [Strong respondsToSelector_];
    swift_unknownObjectRelease();
    return v6;
  }

  else
  {
    v8.receiver = self;
    v8.super_class = type metadata accessor for WeakProxy();
    return [(WeakProxy *)&v8 respondsToSelector:a3];
  }
}

- (id)forwardingTargetForSelector:(SEL)a3
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v7[3] = swift_getObjectType();
    v7[0] = v4;
    v5 = sub_1BA4A8328();
    __swift_destroy_boxed_opaque_existential_1(v7);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (_TtC18HealthExperienceUIP33_6AFCBB489F4B745EBBFAE39AEAF00FBF9WeakProxy)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end