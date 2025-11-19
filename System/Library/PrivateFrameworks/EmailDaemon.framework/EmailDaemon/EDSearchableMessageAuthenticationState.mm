@interface EDSearchableMessageAuthenticationState
- (EDSearchableMessageAuthenticationState)init;
- (EDSearchableMessageAuthenticationState)initWithAuthenticationState:(int64_t)a3;
- (void)addToAttributes:(id)a3;
@end

@implementation EDSearchableMessageAuthenticationState

- (EDSearchableMessageAuthenticationState)initWithAuthenticationState:(int64_t)a3
{
  v3 = (self + OBJC_IVAR___EDSearchableMessageAuthenticationState__underlying);
  v3[3] = &type metadata for SearchableMessageAuthenticationState;
  *v3 = a3;
  v5.receiver = self;
  v5.super_class = EDSearchableMessageAuthenticationState;
  return [(EDSearchableMessageAuthenticationState *)&v5 init];
}

- (void)addToAttributes:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1C64345D4(v4);
}

- (EDSearchableMessageAuthenticationState)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end