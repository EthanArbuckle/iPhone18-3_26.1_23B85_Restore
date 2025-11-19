@interface CoreThemeTemplateMigrationPolicy
- (BOOL)createDestinationInstancesForSourceInstance:(id)a3 entityMapping:(id)a4 manager:(id)a5 error:(id *)a6;
- (BOOL)createRelationshipsForDestinationInstance:(id)a3 entityMapping:(id)a4 manager:(id)a5 error:(id *)a6;
@end

@implementation CoreThemeTemplateMigrationPolicy

- (BOOL)createDestinationInstancesForSourceInstance:(id)a3 entityMapping:(id)a4 manager:(id)a5 error:(id *)a6
{
  v7.receiver = self;
  v7.super_class = CoreThemeTemplateMigrationPolicy;
  return [(NSEntityMigrationPolicy *)&v7 createDestinationInstancesForSourceInstance:a3 entityMapping:a4 manager:a5 error:a6];
}

- (BOOL)createRelationshipsForDestinationInstance:(id)a3 entityMapping:(id)a4 manager:(id)a5 error:(id *)a6
{
  v15[1] = *MEMORY[0x277D85DE8];
  v14.receiver = self;
  v14.super_class = CoreThemeTemplateMigrationPolicy;
  v9 = [(NSEntityMigrationPolicy *)&v14 createRelationshipsForDestinationInstance:a3 entityMapping:a4 manager:a5 error:a6];
  v10 = [a4 name];
  v15[0] = a3;
  LODWORD(v10) = [objc_msgSend(objc_msgSend(objc_msgSend(a5 sourceInstancesForEntityMappingNamed:v10 destinationInstances:{objc_msgSend(MEMORY[0x277CBEA60], "arrayWithObjects:count:", v15, 1)), "objectAtIndex:", 0), "valueForKey:", @"template", "BOOLValue"}];
  v11 = [MEMORY[0x277CBE428] fetchRequestWithEntityName:@"RenderingMode"];
  [v11 setPredicate:{objc_msgSend(MEMORY[0x277CCAC30], "predicateWithFormat:", @"identifier = %d", v10 ^ 1)}];
  [a3 setValue:objc_msgSend(objc_msgSend(objc_msgSend(a5 forKey:{"destinationContext"), "executeFetchRequest:error:", v11, 0), "firstObject"), @"templateRenderingMode"}];
  v12 = *MEMORY[0x277D85DE8];
  return v9;
}

@end