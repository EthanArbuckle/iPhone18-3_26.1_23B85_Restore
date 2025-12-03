@interface CAProxyImage
- (_TtC14ContactsUICore12CAProxyImage)init;
- (void)CA_copyRenderValue;
- (void)CA_copyRenderValueWithColorspace:(CGColorSpace *)colorspace;
@end

@implementation CAProxyImage

- (void)CA_copyRenderValue
{
  v2 = *(&self->super.isa + OBJC_IVAR____TtC14ContactsUICore12CAProxyImage_state);
  selfCopy = self;
  os_unfair_lock_lock((v2 + 24));
  v4 = *(v2 + 16);
  sub_1A328B81C(v4);
  os_unfair_lock_unlock((v2 + 24));
  if (v4 >= 2)
  {
    sub_1A34C9010();
    sub_1A34CCF10();
    sub_1A328B72C(v4);
    sub_1A328B72C(v4);
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    v7 = swift_dynamicCastObjCProtocolConditional();
    if (v7)
    {
      cA_copyRenderValue = [v7 CA_copyRenderValue];

      return cA_copyRenderValue;
    }
  }

  else
  {
  }

  return 0;
}

- (void)CA_copyRenderValueWithColorspace:(CGColorSpace *)colorspace
{
  colorspaceCopy = colorspace;
  selfCopy = self;
  v6 = sub_1A328B73C();

  return v6;
}

- (_TtC14ContactsUICore12CAProxyImage)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end