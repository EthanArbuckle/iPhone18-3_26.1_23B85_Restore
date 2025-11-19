@interface FTLocalMessageProperties
- (FTLocalMessageProperties)initWithEntity:(id)a3 insertIntoManagedObjectContext:(id)a4;
@end

@implementation FTLocalMessageProperties

- (FTLocalMessageProperties)initWithEntity:(id)a3 insertIntoManagedObjectContext:(id)a4
{
  v5 = a3;
  v6 = a4;
  return FTLocalMessageProperties.init(entity:insertInto:)(v5, a4);
}

@end