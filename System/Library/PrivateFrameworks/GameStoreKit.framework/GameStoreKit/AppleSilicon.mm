@interface AppleSilicon
- (BOOL)isRosettaAvailable;
- (BOOL)isSupportEnabled;
- (_TtC12GameStoreKit12AppleSilicon)init;
- (void)setIsSupportEnabled:(BOOL)enabled;
@end

@implementation AppleSilicon

- (BOOL)isSupportEnabled
{
  v3 = OBJC_IVAR____TtC12GameStoreKit12AppleSilicon_isSupportEnabled;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setIsSupportEnabled:(BOOL)enabled
{
  v5 = OBJC_IVAR____TtC12GameStoreKit12AppleSilicon_isSupportEnabled;
  swift_beginAccess();
  *(&self->super.isa + v5) = enabled;
}

- (BOOL)isRosettaAvailable
{
  selfCopy = self;
  v3 = AppleSilicon.isRosettaAvailable.getter();

  return v3 & 1;
}

- (_TtC12GameStoreKit12AppleSilicon)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end