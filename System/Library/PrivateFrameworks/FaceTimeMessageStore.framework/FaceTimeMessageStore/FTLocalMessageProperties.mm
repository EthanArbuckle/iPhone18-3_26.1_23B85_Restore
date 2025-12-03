@interface FTLocalMessageProperties
- (FTLocalMessageProperties)initWithEntity:(id)entity insertIntoManagedObjectContext:(id)context;
@end

@implementation FTLocalMessageProperties

- (FTLocalMessageProperties)initWithEntity:(id)entity insertIntoManagedObjectContext:(id)context
{
  entityCopy = entity;
  contextCopy = context;
  return FTLocalMessageProperties.init(entity:insertInto:)(entityCopy, context);
}

@end