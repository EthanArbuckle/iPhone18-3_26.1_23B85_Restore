@interface CKTextEffectsDisplayLinkToken
- (_TtC7ChatKit29CKTextEffectsDisplayLinkToken)init;
- (void)dealloc;
- (void)invalidate;
@end

@implementation CKTextEffectsDisplayLinkToken

- (void)dealloc
{
  selfCopy = self;
  [(CKTextEffectsDisplayLinkToken *)selfCopy invalidate];
  v3.receiver = selfCopy;
  v3.super_class = type metadata accessor for CKTextEffectsDisplayLinkToken();
  [(CKTextEffectsDisplayLinkToken *)&v3 dealloc];
}

- (_TtC7ChatKit29CKTextEffectsDisplayLinkToken)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)invalidate
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    selfCopy = self;
    sub_190A7B444(selfCopy, v4);
  }
}

@end