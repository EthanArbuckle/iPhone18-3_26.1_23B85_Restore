@interface CoreThemeAlignmentMigrationPolicy
- (BOOL)createDestinationInstancesForSourceInstance:(id)a3 entityMapping:(id)a4 manager:(id)a5 error:(id *)a6;
- (BOOL)createRelationshipsForDestinationInstance:(id)a3 entityMapping:(id)a4 manager:(id)a5 error:(id *)a6;
@end

@implementation CoreThemeAlignmentMigrationPolicy

- (BOOL)createDestinationInstancesForSourceInstance:(id)a3 entityMapping:(id)a4 manager:(id)a5 error:(id *)a6
{
  v24[1] = *MEMORY[0x277D85DE8];
  v23.receiver = self;
  v23.super_class = CoreThemeAlignmentMigrationPolicy;
  v9 = [(NSEntityMigrationPolicy *)&v23 createDestinationInstancesForSourceInstance:a3 entityMapping:a4 manager:a5 error:a6];
  v10 = [a4 name];
  v24[0] = a3;
  v11 = [objc_msgSend(a5 destinationInstancesForEntityMappingNamed:v10 sourceInstances:{objc_msgSend(MEMORY[0x277CBEA60], "arrayWithObjects:count:", v24, 1)), "firstObject"}];
  v12 = [a3 valueForKey:@"production"];
  if ([objc_msgSend(v12 "entity")])
  {
    v13 = [v12 valueForKey:@"alignmentRectString"];
    v14 = MEMORY[0x277CCAE60];
    v25 = NSRectFromString(v13);
    v15 = v14;
  }

  else
  {
    v16 = *MEMORY[0x277CCA868];
    v17 = *(MEMORY[0x277CCA868] + 8);
    v18 = *(MEMORY[0x277CCA868] + 16);
    v19 = *(MEMORY[0x277CCA868] + 24);
    v26.origin.x = *MEMORY[0x277CCA868];
    v26.origin.y = v17;
    v26.size.width = v18;
    v26.size.height = v19;
    v13 = NSStringFromRect(v26);
    v15 = MEMORY[0x277CCAE60];
    v25.origin.x = v16;
    v25.origin.y = v17;
    v25.size.width = v18;
    v25.size.height = v19;
  }

  v20 = [v15 valueWithRect:{v25.origin.x, v25.origin.y, v25.size.width, v25.size.height}];
  [v11 setValue:v13 forKey:@"alignmentRectString"];
  [v11 setValue:v20 forKey:@"alignmentRect"];
  v21 = *MEMORY[0x277D85DE8];
  return v9;
}

- (BOOL)createRelationshipsForDestinationInstance:(id)a3 entityMapping:(id)a4 manager:(id)a5 error:(id *)a6
{
  v7.receiver = self;
  v7.super_class = CoreThemeAlignmentMigrationPolicy;
  return [(NSEntityMigrationPolicy *)&v7 createRelationshipsForDestinationInstance:a3 entityMapping:a4 manager:a5 error:a6];
}

@end