@interface FTStoredMessage
- (FTStoredMessage)initWithEntity:(id)a3 insertIntoManagedObjectContext:(id)a4;
- (NSString)description;
@end

@implementation FTStoredMessage

- (FTStoredMessage)initWithEntity:(id)a3 insertIntoManagedObjectContext:(id)a4
{
  v5 = a3;
  v6 = a4;
  return FTStoredMessage.init(entity:insertInto:)(v5, a4);
}

- (NSString)description
{
  v2 = self;
  FTStoredMessage.description.getter();

  v3 = sub_1BC8F7BE4();

  return v3;
}

@end