@interface FeedItemDatabaseRef
- (NSString)description;
- (_TtC8NewsCore19FeedItemDatabaseRef)init;
- (void)encodeWithCoder:(id)coder;
@end

@implementation FeedItemDatabaseRef

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  v5 = sub_1B67D858C();
  v6 = sub_1B67D963C();
  [coderCopy encodeObject:v5 forKey:v6];
}

- (_TtC8NewsCore19FeedItemDatabaseRef)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (NSString)description
{
  selfCopy = self;
  sub_1B67D857C();

  v3 = sub_1B67D963C();

  return v3;
}

@end