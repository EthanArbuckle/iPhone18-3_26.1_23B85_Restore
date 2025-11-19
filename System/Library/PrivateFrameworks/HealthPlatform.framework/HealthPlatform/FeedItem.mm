@interface FeedItem
- (NSString)description;
- (_TtC14HealthPlatform8FeedItem)initWithEntity:(id)a3 insertIntoManagedObjectContext:(id)a4;
@end

@implementation FeedItem

- (_TtC14HealthPlatform8FeedItem)initWithEntity:(id)a3 insertIntoManagedObjectContext:(id)a4
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for FeedItem();
  return [(FeedItem *)&v7 initWithEntity:a3 insertIntoManagedObjectContext:a4];
}

- (NSString)description
{
  v2 = self;
  FeedItem.description.getter();

  v3 = sub_22855D17C();

  return v3;
}

@end