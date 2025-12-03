@interface MTCDAlarm
- (MTCDAlarm)initWithEntity:(id)entity insertIntoManagedObjectContext:(id)context;
- (NSString)description;
- (id)siriContextDecoded;
@end

@implementation MTCDAlarm

- (id)siriContextDecoded
{
  selfCopy = self;
  v3 = sub_1B209A4E8();

  return v3;
}

- (NSString)description
{
  selfCopy = self;
  sub_1B209A740();

  v3 = sub_1B20A9A64();

  return v3;
}

- (MTCDAlarm)initWithEntity:(id)entity insertIntoManagedObjectContext:(id)context
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for MTCDAlarm();
  return [(MTCDAlarm *)&v7 initWithEntity:entity insertIntoManagedObjectContext:context];
}

@end