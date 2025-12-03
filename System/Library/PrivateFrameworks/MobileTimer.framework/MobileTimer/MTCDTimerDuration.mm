@interface MTCDTimerDuration
- (MTCDTimerDuration)initWithEntity:(id)entity insertIntoManagedObjectContext:(id)context;
- (NSString)description;
@end

@implementation MTCDTimerDuration

- (NSString)description
{
  selfCopy = self;
  sub_1B2060578();

  v3 = sub_1B20A9A64();

  return v3;
}

- (MTCDTimerDuration)initWithEntity:(id)entity insertIntoManagedObjectContext:(id)context
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for MTCDTimerDuration();
  return [(MTCDTimerDuration *)&v7 initWithEntity:entity insertIntoManagedObjectContext:context];
}

@end