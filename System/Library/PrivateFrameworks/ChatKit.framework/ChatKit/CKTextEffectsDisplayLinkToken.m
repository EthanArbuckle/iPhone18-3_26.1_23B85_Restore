@interface CKTextEffectsDisplayLinkToken
- (_TtC7ChatKit29CKTextEffectsDisplayLinkToken)init;
- (void)dealloc;
- (void)invalidate;
@end

@implementation CKTextEffectsDisplayLinkToken

- (void)dealloc
{
  v2 = self;
  [(CKTextEffectsDisplayLinkToken *)v2 invalidate];
  v3.receiver = v2;
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
    v5 = self;
    sub_190A7B444(v5, v4);
  }
}

@end