@interface CoreThemeAssetMigrationPolicy
- (BOOL)createDestinationInstancesForSourceInstance:(id)a3 entityMapping:(id)a4 manager:(id)a5 error:(id *)a6;
- (BOOL)createRelationshipsForDestinationInstance:(id)a3 entityMapping:(id)a4 manager:(id)a5 error:(id *)a6;
@end

@implementation CoreThemeAssetMigrationPolicy

- (BOOL)createDestinationInstancesForSourceInstance:(id)a3 entityMapping:(id)a4 manager:(id)a5 error:(id *)a6
{
  v7.receiver = self;
  v7.super_class = CoreThemeAssetMigrationPolicy;
  return [(NSEntityMigrationPolicy *)&v7 createDestinationInstancesForSourceInstance:a3 entityMapping:a4 manager:a5 error:a6];
}

- (BOOL)createRelationshipsForDestinationInstance:(id)a3 entityMapping:(id)a4 manager:(id)a5 error:(id *)a6
{
  v17[1] = *MEMORY[0x277D85DE8];
  v16.receiver = self;
  v16.super_class = CoreThemeAssetMigrationPolicy;
  v9 = [(NSEntityMigrationPolicy *)&v16 createRelationshipsForDestinationInstance:a3 entityMapping:a4 manager:a5 error:a6];
  v10 = [a4 name];
  v17[0] = a3;
  v11 = [objc_msgSend(a5 sourceInstancesForEntityMappingNamed:v10 destinationInstances:{objc_msgSend(MEMORY[0x277CBEA60], "arrayWithObjects:count:", v17, 1)), "objectAtIndex:", 0}];
  if ([objc_msgSend(objc_msgSend(objc_msgSend(v11 "entity")])
  {
    v12 = [objc_msgSend(v11 valueForKey:{@"template", "BOOLValue"}];
    v13 = [MEMORY[0x277CBE428] fetchRequestWithEntityName:@"RenderingMode"];
    [v13 setPredicate:{objc_msgSend(MEMORY[0x277CCAC30], "predicateWithFormat:", @"identifier = %d", v12 ^ 1u)}];
    [a3 setValue:objc_msgSend(objc_msgSend(objc_msgSend(a5 forKey:{"destinationContext"), "executeFetchRequest:error:", v13, 0), "firstObject"), @"templateRenderingMode"}];
  }

  v14 = *MEMORY[0x277D85DE8];
  return v9;
}

@end