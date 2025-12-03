@interface FTLocalMessage
- (FTLocalMessage)initWithEntity:(id)entity insertIntoManagedObjectContext:(id)context;
- (NSString)description;
@end

@implementation FTLocalMessage

- (NSString)description
{
  selfCopy = self;
  FTLocalMessage.description.getter();

  v3 = sub_1BC8F7BE4();

  return v3;
}

- (FTLocalMessage)initWithEntity:(id)entity insertIntoManagedObjectContext:(id)context
{
  entityCopy = entity;
  contextCopy = context;
  return FTLocalMessage.init(entity:insertInto:)(entityCopy, context);
}

@end