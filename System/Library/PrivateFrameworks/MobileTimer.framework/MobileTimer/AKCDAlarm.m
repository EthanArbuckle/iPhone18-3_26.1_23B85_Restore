@interface AKCDAlarm
- (AKCDAlarm)initWithEntity:(id)a3 insertIntoManagedObjectContext:(id)a4;
- (NSString)description;
@end

@implementation AKCDAlarm

- (NSString)description
{
  v2 = self;
  sub_1B2062B2C();

  v3 = sub_1B20A9A64();

  return v3;
}

- (AKCDAlarm)initWithEntity:(id)a3 insertIntoManagedObjectContext:(id)a4
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for AKCDAlarm();
  return [(AKCDAlarm *)&v7 initWithEntity:a3 insertIntoManagedObjectContext:a4];
}

@end