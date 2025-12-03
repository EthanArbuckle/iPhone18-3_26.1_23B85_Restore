@interface SFTabSwitcherDropIntent
- (SFTabSwitcherDropDestination)destination;
- (SFTabSwitcherDropIntent)init;
- (UIDropProposal)proposal;
- (UIDropSession)session;
@end

@implementation SFTabSwitcherDropIntent

- (SFTabSwitcherDropDestination)destination
{
  selfCopy = self;
  v3 = sub_18BA8A710();

  return v3;
}

- (UIDropProposal)proposal
{
  v2 = *(&self->super.isa + OBJC_IVAR___SFTabSwitcherDropIntent__internal) + OBJC_IVAR____TtC12MobileSafari31SFTabSwitcherDropIntentInternal_wrapped;
  v3 = *&v2[*(_s10DropIntentVMa_0(0) + 20)];

  return v3;
}

- (UIDropSession)session
{
  _s10DropIntentVMa_0(0);
  v2 = swift_unknownObjectRetain();

  return v2;
}

- (SFTabSwitcherDropIntent)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end