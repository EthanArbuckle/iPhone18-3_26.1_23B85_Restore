@interface EDSearchableMessageFlags
- (EDSearchableMessageFlags)init;
- (void)addToAttributes:(id)a3;
@end

@implementation EDSearchableMessageFlags

- (void)addToAttributes:(id)a3
{
  sub_1C640DBAC(self + OBJC_IVAR___EDSearchableMessageFlags__underlying, v7);
  v5 = a3;
  v6 = self;
  swift_dynamicCast();
  v7[0] = v7[37];
  v7[1] = v7[38];
  v7[2] = v7[39];
  sub_1C6441258(v5);
}

- (EDSearchableMessageFlags)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end