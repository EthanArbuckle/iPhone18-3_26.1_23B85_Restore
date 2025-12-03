@interface CoreThemeConstantMigrationPolicy
- (BOOL)beginEntityMapping:(id)mapping manager:(id)manager error:(id *)error;
- (BOOL)createDestinationInstancesForSourceInstance:(id)instance entityMapping:(id)mapping manager:(id)manager error:(id *)error;
@end

@implementation CoreThemeConstantMigrationPolicy

- (BOOL)beginEntityMapping:(id)mapping manager:(id)manager error:(id *)error
{
  if ([mapping mappingType] != 2)
  {
    return 1;
  }

  v7 = [manager destinationEntityForEntityMapping:mapping];
  destinationContext = [manager destinationContext];

  return [TDThemeSchema loadThemeConstantsForEntity:v7 inContext:destinationContext];
}

- (BOOL)createDestinationInstancesForSourceInstance:(id)instance entityMapping:(id)mapping manager:(id)manager error:(id *)error
{
  v7.receiver = self;
  v7.super_class = CoreThemeConstantMigrationPolicy;
  return [(NSEntityMigrationPolicy *)&v7 createDestinationInstancesForSourceInstance:instance entityMapping:mapping manager:manager error:error];
}

@end