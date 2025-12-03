@interface CoreThemeRenditionKeyMigrationPolicy
- (BOOL)createDestinationInstancesForSourceInstance:(id)instance entityMapping:(id)mapping manager:(id)manager error:(id *)error;
- (BOOL)createRelationshipsForDestinationInstance:(id)instance entityMapping:(id)mapping manager:(id)manager error:(id *)error;
@end

@implementation CoreThemeRenditionKeyMigrationPolicy

- (BOOL)createDestinationInstancesForSourceInstance:(id)instance entityMapping:(id)mapping manager:(id)manager error:(id *)error
{
  v7.receiver = self;
  v7.super_class = CoreThemeRenditionKeyMigrationPolicy;
  return [(NSEntityMigrationPolicy *)&v7 createDestinationInstancesForSourceInstance:instance entityMapping:mapping manager:manager error:error];
}

- (BOOL)createRelationshipsForDestinationInstance:(id)instance entityMapping:(id)mapping manager:(id)manager error:(id *)error
{
  v21.receiver = self;
  v21.super_class = CoreThemeRenditionKeyMigrationPolicy;
  v10 = [NSEntityMigrationPolicy createRelationshipsForDestinationInstance:sel_createRelationshipsForDestinationInstance_entityMapping_manager_error_ entityMapping:? manager:? error:?];
  name = [mapping name];
  v12 = [objc_msgSend(objc_msgSend(manager sourceInstancesForEntityMappingNamed:name destinationInstances:{objc_msgSend(MEMORY[0x277CBEA60], "arrayWithObject:", instance)), "objectAtIndex:", 0), "valueForKey:", @"tint"}];
  if (!v12)
  {
    return 1;
  }

  v13 = [v12 integerValue] > 0;
  destinationContext = [manager destinationContext];
  v15 = [MEMORY[0x277CCAC30] predicateWithFormat:@"identifier = %d", v13];
  v16 = [objc_msgSend(objc_msgSend(objc_msgSend(manager destinationEntityForEntityMapping:{mapping), "relationshipsByName"), "objectForKey:", @"presentationState", "destinationEntity"}];
  v17 = [MEMORY[0x277CBE428] fetchRequestWithEntityName:{objc_msgSend(v16, "name")}];
  [v17 setPredicate:v15];
  v20 = 0;
  v18 = [objc_msgSend(destinationContext executeFetchRequest:v17 error:{&v20), "objectAtIndex:", 0}];
  if (!v18 || v20)
  {
    v10 = 0;
    if (error)
    {
      *error = v20;
    }
  }

  else
  {
    [instance setValue:v18 forKey:@"presentationState"];
  }

  return v10;
}

@end