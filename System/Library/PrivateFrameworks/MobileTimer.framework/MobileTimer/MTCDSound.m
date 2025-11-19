@interface MTCDSound
- (MTCDSound)initWithEntity:(id)a3 insertIntoManagedObjectContext:(id)a4;
- (NSString)description;
@end

@implementation MTCDSound

- (NSString)description
{
  v2 = self;
  sub_1B205FCC4();

  v3 = sub_1B20A9A64();

  return v3;
}

- (MTCDSound)initWithEntity:(id)a3 insertIntoManagedObjectContext:(id)a4
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for MTCDSound();
  return [(MTCDSound *)&v7 initWithEntity:a3 insertIntoManagedObjectContext:a4];
}

@end