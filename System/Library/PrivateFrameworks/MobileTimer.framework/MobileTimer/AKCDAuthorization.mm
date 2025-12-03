@interface AKCDAuthorization
- (AKCDAuthorization)initWithEntity:(id)entity insertIntoManagedObjectContext:(id)context;
- (NSString)description;
@end

@implementation AKCDAuthorization

- (NSString)description
{
  selfCopy = self;
  sub_1B205F190();

  v3 = sub_1B20A9A64();

  return v3;
}

- (AKCDAuthorization)initWithEntity:(id)entity insertIntoManagedObjectContext:(id)context
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for AKCDAuthorization();
  return [(AKCDAuthorization *)&v7 initWithEntity:entity insertIntoManagedObjectContext:context];
}

@end