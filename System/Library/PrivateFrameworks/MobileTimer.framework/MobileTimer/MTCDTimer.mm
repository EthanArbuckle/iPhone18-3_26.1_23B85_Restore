@interface MTCDTimer
- (MTCDTimer)initWithEntity:(id)entity insertIntoManagedObjectContext:(id)context;
- (NSString)description;
- (id)siriContextDecoded;
- (id)timerContextDecoded;
@end

@implementation MTCDTimer

- (id)siriContextDecoded
{
  selfCopy = self;
  v3 = sub_1B2099158();

  return v3;
}

- (id)timerContextDecoded
{
  selfCopy = self;
  v3 = sub_1B20991F4();

  return v3;
}

- (NSString)description
{
  selfCopy = self;
  sub_1B20993E8();

  v3 = sub_1B20A9A64();

  return v3;
}

- (MTCDTimer)initWithEntity:(id)entity insertIntoManagedObjectContext:(id)context
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for MTCDTimer();
  return [(MTCDTimer *)&v7 initWithEntity:entity insertIntoManagedObjectContext:context];
}

@end