@interface FTStoredMessage
- (FTStoredMessage)initWithEntity:(id)entity insertIntoManagedObjectContext:(id)context;
- (NSString)description;
@end

@implementation FTStoredMessage

- (FTStoredMessage)initWithEntity:(id)entity insertIntoManagedObjectContext:(id)context
{
  entityCopy = entity;
  contextCopy = context;
  return FTStoredMessage.init(entity:insertInto:)(entityCopy, context);
}

- (NSString)description
{
  selfCopy = self;
  FTStoredMessage.description.getter();

  v3 = sub_1BC8F7BE4();

  return v3;
}

@end