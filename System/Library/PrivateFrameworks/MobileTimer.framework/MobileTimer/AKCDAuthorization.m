@interface AKCDAuthorization
- (AKCDAuthorization)initWithEntity:(id)a3 insertIntoManagedObjectContext:(id)a4;
- (NSString)description;
@end

@implementation AKCDAuthorization

- (NSString)description
{
  v2 = self;
  sub_1B205F190();

  v3 = sub_1B20A9A64();

  return v3;
}

- (AKCDAuthorization)initWithEntity:(id)a3 insertIntoManagedObjectContext:(id)a4
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for AKCDAuthorization();
  return [(AKCDAuthorization *)&v7 initWithEntity:a3 insertIntoManagedObjectContext:a4];
}

@end