@interface ICCloudSyncingObjectMigrationPolicy
- (BOOL)createDestinationInstancesForSourceInstance:(id)a3 entityMapping:(id)a4 manager:(id)a5 error:(id *)a6;
@end

@implementation ICCloudSyncingObjectMigrationPolicy

- (BOOL)createDestinationInstancesForSourceInstance:(id)a3 entityMapping:(id)a4 manager:(id)a5 error:(id *)a6
{
  v34[1] = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v33.receiver = self;
  v33.super_class = ICCloudSyncingObjectMigrationPolicy;
  v13 = [(NSEntityMigrationPolicy *)&v33 createDestinationInstancesForSourceInstance:v10 entityMapping:v11 manager:v12 error:a6];
  if (v13)
  {
    v14 = [v11 name];
    v34[0] = v10;
    v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v34 count:1];
    v16 = [v12 destinationInstancesForEntityMappingNamed:v14 sourceInstances:v15];
    v17 = [v16 firstObject];

    v18 = [v10 valueForKey:@"serverRecord"];
    v19 = [v10 entity];
    v20 = [v19 propertiesByName];
    v21 = [v20 objectForKeyedSubscript:@"serverShare"];

    if (v21)
    {
      v22 = [v10 valueForKey:@"serverShare"];
    }

    else
    {
      v22 = 0;
    }

    v23 = [v10 entity];
    v24 = [v23 propertiesByName];
    v25 = [v24 objectForKeyedSubscript:@"userSpecificServerRecord"];

    if (v25)
    {
      v26 = [v10 valueForKey:@"userSpecificServerRecord"];
    }

    else
    {
      v26 = 0;
    }

    v27 = [MEMORY[0x277CBC5A0] ic_systemFieldsValueTransformer];
    v28 = v27;
    if (v18)
    {
      v29 = [v27 transformedValue:v18];
      [v17 setValue:v29 forKey:@"serverRecordData"];
    }

    if (v22)
    {
      v30 = [v28 transformedValue:v22];
      [v17 setValue:v30 forKey:@"serverShareData"];
    }

    if (v26)
    {
      v31 = [v28 transformedValue:v26];
      [v17 setValue:v31 forKey:@"userSpecificServerRecordData"];
    }
  }

  return v13;
}

@end