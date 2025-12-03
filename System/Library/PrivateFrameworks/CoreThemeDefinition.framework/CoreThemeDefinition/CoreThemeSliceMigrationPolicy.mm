@interface CoreThemeSliceMigrationPolicy
- (BOOL)createDestinationInstancesForSourceInstance:(id)instance entityMapping:(id)mapping manager:(id)manager error:(id *)error;
- (BOOL)createRelationshipsForDestinationInstance:(id)instance entityMapping:(id)mapping manager:(id)manager error:(id *)error;
@end

@implementation CoreThemeSliceMigrationPolicy

- (BOOL)createDestinationInstancesForSourceInstance:(id)instance entityMapping:(id)mapping manager:(id)manager error:(id *)error
{
  v17[1] = *MEMORY[0x277D85DE8];
  v16.receiver = self;
  v16.super_class = CoreThemeSliceMigrationPolicy;
  v9 = [(NSEntityMigrationPolicy *)&v16 createDestinationInstancesForSourceInstance:instance entityMapping:mapping manager:manager error:error];
  name = [mapping name];
  v17[0] = instance;
  v11 = [objc_msgSend(manager destinationInstancesForEntityMappingNamed:name sourceInstances:{objc_msgSend(MEMORY[0x277CBEA60], "arrayWithObjects:count:", v17, 1)), "firstObject"}];
  v12 = [instance valueForKey:@"sliceRectString"];
  v13 = MEMORY[0x277CCAE60];
  v18 = NSRectFromString(v12);
  [v11 setValue:objc_msgSend(v13 forKey:{"valueWithRect:", v18.origin.x, v18.origin.y, v18.size.width, v18.size.height), @"sliceRect"}];
  v14 = *MEMORY[0x277D85DE8];
  return v9;
}

- (BOOL)createRelationshipsForDestinationInstance:(id)instance entityMapping:(id)mapping manager:(id)manager error:(id *)error
{
  v7.receiver = self;
  v7.super_class = CoreThemeSliceMigrationPolicy;
  return [(NSEntityMigrationPolicy *)&v7 createRelationshipsForDestinationInstance:instance entityMapping:mapping manager:manager error:error];
}

@end