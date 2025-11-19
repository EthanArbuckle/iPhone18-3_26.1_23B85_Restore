@interface MTCDTimer
- (MTCDTimer)initWithEntity:(id)a3 insertIntoManagedObjectContext:(id)a4;
- (NSString)description;
- (id)siriContextDecoded;
- (id)timerContextDecoded;
@end

@implementation MTCDTimer

- (id)siriContextDecoded
{
  v2 = self;
  v3 = sub_1B2099158();

  return v3;
}

- (id)timerContextDecoded
{
  v2 = self;
  v3 = sub_1B20991F4();

  return v3;
}

- (NSString)description
{
  v2 = self;
  sub_1B20993E8();

  v3 = sub_1B20A9A64();

  return v3;
}

- (MTCDTimer)initWithEntity:(id)a3 insertIntoManagedObjectContext:(id)a4
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for MTCDTimer();
  return [(MTCDTimer *)&v7 initWithEntity:a3 insertIntoManagedObjectContext:a4];
}

@end