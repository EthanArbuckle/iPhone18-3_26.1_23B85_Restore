@interface EDSearchableMessageAuthenticationState
- (EDSearchableMessageAuthenticationState)init;
- (EDSearchableMessageAuthenticationState)initWithAuthenticationState:(int64_t)state;
- (void)addToAttributes:(id)attributes;
@end

@implementation EDSearchableMessageAuthenticationState

- (EDSearchableMessageAuthenticationState)initWithAuthenticationState:(int64_t)state
{
  v3 = (self + OBJC_IVAR___EDSearchableMessageAuthenticationState__underlying);
  v3[3] = &type metadata for SearchableMessageAuthenticationState;
  *v3 = state;
  v5.receiver = self;
  v5.super_class = EDSearchableMessageAuthenticationState;
  return [(EDSearchableMessageAuthenticationState *)&v5 init];
}

- (void)addToAttributes:(id)attributes
{
  attributesCopy = attributes;
  selfCopy = self;
  sub_1C64345D4(attributesCopy);
}

- (EDSearchableMessageAuthenticationState)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end