@interface FeedItemDatabaseRef
- (NSString)description;
- (_TtC8NewsCore19FeedItemDatabaseRef)init;
- (void)encodeWithCoder:(id)a3;
@end

@implementation FeedItemDatabaseRef

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v7 = self;
  v5 = sub_1B67D858C();
  v6 = sub_1B67D963C();
  [v4 encodeObject:v5 forKey:v6];
}

- (_TtC8NewsCore19FeedItemDatabaseRef)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (NSString)description
{
  v2 = self;
  sub_1B67D857C();

  v3 = sub_1B67D963C();

  return v3;
}

@end