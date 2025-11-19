@interface CoreThemeRenditionKeyMigrationPolicy
- (BOOL)createDestinationInstancesForSourceInstance:(id)a3 entityMapping:(id)a4 manager:(id)a5 error:(id *)a6;
- (BOOL)createRelationshipsForDestinationInstance:(id)a3 entityMapping:(id)a4 manager:(id)a5 error:(id *)a6;
@end

@implementation CoreThemeRenditionKeyMigrationPolicy

- (BOOL)createDestinationInstancesForSourceInstance:(id)a3 entityMapping:(id)a4 manager:(id)a5 error:(id *)a6
{
  v7.receiver = self;
  v7.super_class = CoreThemeRenditionKeyMigrationPolicy;
  return [(NSEntityMigrationPolicy *)&v7 createDestinationInstancesForSourceInstance:a3 entityMapping:a4 manager:a5 error:a6];
}

- (BOOL)createRelationshipsForDestinationInstance:(id)a3 entityMapping:(id)a4 manager:(id)a5 error:(id *)a6
{
  v21.receiver = self;
  v21.super_class = CoreThemeRenditionKeyMigrationPolicy;
  v10 = [NSEntityMigrationPolicy createRelationshipsForDestinationInstance:sel_createRelationshipsForDestinationInstance_entityMapping_manager_error_ entityMapping:? manager:? error:?];
  v11 = [a4 name];
  v12 = [objc_msgSend(objc_msgSend(a5 sourceInstancesForEntityMappingNamed:v11 destinationInstances:{objc_msgSend(MEMORY[0x277CBEA60], "arrayWithObject:", a3)), "objectAtIndex:", 0), "valueForKey:", @"tint"}];
  if (!v12)
  {
    return 1;
  }

  v13 = [v12 integerValue] > 0;
  v14 = [a5 destinationContext];
  v15 = [MEMORY[0x277CCAC30] predicateWithFormat:@"identifier = %d", v13];
  v16 = [objc_msgSend(objc_msgSend(objc_msgSend(a5 destinationEntityForEntityMapping:{a4), "relationshipsByName"), "objectForKey:", @"presentationState", "destinationEntity"}];
  v17 = [MEMORY[0x277CBE428] fetchRequestWithEntityName:{objc_msgSend(v16, "name")}];
  [v17 setPredicate:v15];
  v20 = 0;
  v18 = [objc_msgSend(v14 executeFetchRequest:v17 error:{&v20), "objectAtIndex:", 0}];
  if (!v18 || v20)
  {
    v10 = 0;
    if (a6)
    {
      *a6 = v20;
    }
  }

  else
  {
    [a3 setValue:v18 forKey:@"presentationState"];
  }

  return v10;
}

@end