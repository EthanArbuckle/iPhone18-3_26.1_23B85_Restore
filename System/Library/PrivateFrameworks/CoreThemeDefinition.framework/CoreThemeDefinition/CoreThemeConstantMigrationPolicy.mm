@interface CoreThemeConstantMigrationPolicy
- (BOOL)beginEntityMapping:(id)a3 manager:(id)a4 error:(id *)a5;
- (BOOL)createDestinationInstancesForSourceInstance:(id)a3 entityMapping:(id)a4 manager:(id)a5 error:(id *)a6;
@end

@implementation CoreThemeConstantMigrationPolicy

- (BOOL)beginEntityMapping:(id)a3 manager:(id)a4 error:(id *)a5
{
  if ([a3 mappingType] != 2)
  {
    return 1;
  }

  v7 = [a4 destinationEntityForEntityMapping:a3];
  v8 = [a4 destinationContext];

  return [TDThemeSchema loadThemeConstantsForEntity:v7 inContext:v8];
}

- (BOOL)createDestinationInstancesForSourceInstance:(id)a3 entityMapping:(id)a4 manager:(id)a5 error:(id *)a6
{
  v7.receiver = self;
  v7.super_class = CoreThemeConstantMigrationPolicy;
  return [(NSEntityMigrationPolicy *)&v7 createDestinationInstancesForSourceInstance:a3 entityMapping:a4 manager:a5 error:a6];
}

@end