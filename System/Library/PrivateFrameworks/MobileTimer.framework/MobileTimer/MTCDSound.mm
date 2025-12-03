@interface MTCDSound
- (MTCDSound)initWithEntity:(id)entity insertIntoManagedObjectContext:(id)context;
- (NSString)description;
@end

@implementation MTCDSound

- (NSString)description
{
  selfCopy = self;
  sub_1B205FCC4();

  v3 = sub_1B20A9A64();

  return v3;
}

- (MTCDSound)initWithEntity:(id)entity insertIntoManagedObjectContext:(id)context
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for MTCDSound();
  return [(MTCDSound *)&v7 initWithEntity:entity insertIntoManagedObjectContext:context];
}

@end