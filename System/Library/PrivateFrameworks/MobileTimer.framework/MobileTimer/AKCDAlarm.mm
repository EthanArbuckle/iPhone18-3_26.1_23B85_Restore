@interface AKCDAlarm
- (AKCDAlarm)initWithEntity:(id)entity insertIntoManagedObjectContext:(id)context;
- (NSString)description;
@end

@implementation AKCDAlarm

- (NSString)description
{
  selfCopy = self;
  sub_1B2062B2C();

  v3 = sub_1B20A9A64();

  return v3;
}

- (AKCDAlarm)initWithEntity:(id)entity insertIntoManagedObjectContext:(id)context
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for AKCDAlarm();
  return [(AKCDAlarm *)&v7 initWithEntity:entity insertIntoManagedObjectContext:context];
}

@end