@interface EDSearchableMessageFlags
- (EDSearchableMessageFlags)init;
- (void)addToAttributes:(id)attributes;
@end

@implementation EDSearchableMessageFlags

- (void)addToAttributes:(id)attributes
{
  sub_1C640DBAC(self + OBJC_IVAR___EDSearchableMessageFlags__underlying, v7);
  attributesCopy = attributes;
  selfCopy = self;
  swift_dynamicCast();
  v7[0] = v7[37];
  v7[1] = v7[38];
  v7[2] = v7[39];
  sub_1C6441258(attributesCopy);
}

- (EDSearchableMessageFlags)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end