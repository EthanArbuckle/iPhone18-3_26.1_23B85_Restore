@interface MTCDAlarm
- (MTCDAlarm)initWithEntity:(id)a3 insertIntoManagedObjectContext:(id)a4;
- (NSString)description;
- (id)siriContextDecoded;
@end

@implementation MTCDAlarm

- (id)siriContextDecoded
{
  v2 = self;
  v3 = sub_1B209A4E8();

  return v3;
}

- (NSString)description
{
  v2 = self;
  sub_1B209A740();

  v3 = sub_1B20A9A64();

  return v3;
}

- (MTCDAlarm)initWithEntity:(id)a3 insertIntoManagedObjectContext:(id)a4
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for MTCDAlarm();
  return [(MTCDAlarm *)&v7 initWithEntity:a3 insertIntoManagedObjectContext:a4];
}

@end