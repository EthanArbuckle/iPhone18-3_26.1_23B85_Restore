@interface CoreThemeSliceMigrationPolicy
- (BOOL)createDestinationInstancesForSourceInstance:(id)a3 entityMapping:(id)a4 manager:(id)a5 error:(id *)a6;
- (BOOL)createRelationshipsForDestinationInstance:(id)a3 entityMapping:(id)a4 manager:(id)a5 error:(id *)a6;
@end

@implementation CoreThemeSliceMigrationPolicy

- (BOOL)createDestinationInstancesForSourceInstance:(id)a3 entityMapping:(id)a4 manager:(id)a5 error:(id *)a6
{
  v17[1] = *MEMORY[0x277D85DE8];
  v16.receiver = self;
  v16.super_class = CoreThemeSliceMigrationPolicy;
  v9 = [(NSEntityMigrationPolicy *)&v16 createDestinationInstancesForSourceInstance:a3 entityMapping:a4 manager:a5 error:a6];
  v10 = [a4 name];
  v17[0] = a3;
  v11 = [objc_msgSend(a5 destinationInstancesForEntityMappingNamed:v10 sourceInstances:{objc_msgSend(MEMORY[0x277CBEA60], "arrayWithObjects:count:", v17, 1)), "firstObject"}];
  v12 = [a3 valueForKey:@"sliceRectString"];
  v13 = MEMORY[0x277CCAE60];
  v18 = NSRectFromString(v12);
  [v11 setValue:objc_msgSend(v13 forKey:{"valueWithRect:", v18.origin.x, v18.origin.y, v18.size.width, v18.size.height), @"sliceRect"}];
  v14 = *MEMORY[0x277D85DE8];
  return v9;
}

- (BOOL)createRelationshipsForDestinationInstance:(id)a3 entityMapping:(id)a4 manager:(id)a5 error:(id *)a6
{
  v7.receiver = self;
  v7.super_class = CoreThemeSliceMigrationPolicy;
  return [(NSEntityMigrationPolicy *)&v7 createRelationshipsForDestinationInstance:a3 entityMapping:a4 manager:a5 error:a6];
}

@end