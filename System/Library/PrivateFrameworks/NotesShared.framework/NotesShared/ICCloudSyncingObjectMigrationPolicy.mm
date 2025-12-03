@interface ICCloudSyncingObjectMigrationPolicy
- (BOOL)createDestinationInstancesForSourceInstance:(id)instance entityMapping:(id)mapping manager:(id)manager error:(id *)error;
@end

@implementation ICCloudSyncingObjectMigrationPolicy

- (BOOL)createDestinationInstancesForSourceInstance:(id)instance entityMapping:(id)mapping manager:(id)manager error:(id *)error
{
  v34[1] = *MEMORY[0x277D85DE8];
  instanceCopy = instance;
  mappingCopy = mapping;
  managerCopy = manager;
  v33.receiver = self;
  v33.super_class = ICCloudSyncingObjectMigrationPolicy;
  v13 = [(NSEntityMigrationPolicy *)&v33 createDestinationInstancesForSourceInstance:instanceCopy entityMapping:mappingCopy manager:managerCopy error:error];
  if (v13)
  {
    name = [mappingCopy name];
    v34[0] = instanceCopy;
    v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v34 count:1];
    v16 = [managerCopy destinationInstancesForEntityMappingNamed:name sourceInstances:v15];
    firstObject = [v16 firstObject];

    v18 = [instanceCopy valueForKey:@"serverRecord"];
    entity = [instanceCopy entity];
    propertiesByName = [entity propertiesByName];
    v21 = [propertiesByName objectForKeyedSubscript:@"serverShare"];

    if (v21)
    {
      v22 = [instanceCopy valueForKey:@"serverShare"];
    }

    else
    {
      v22 = 0;
    }

    entity2 = [instanceCopy entity];
    propertiesByName2 = [entity2 propertiesByName];
    v25 = [propertiesByName2 objectForKeyedSubscript:@"userSpecificServerRecord"];

    if (v25)
    {
      v26 = [instanceCopy valueForKey:@"userSpecificServerRecord"];
    }

    else
    {
      v26 = 0;
    }

    ic_systemFieldsValueTransformer = [MEMORY[0x277CBC5A0] ic_systemFieldsValueTransformer];
    v28 = ic_systemFieldsValueTransformer;
    if (v18)
    {
      v29 = [ic_systemFieldsValueTransformer transformedValue:v18];
      [firstObject setValue:v29 forKey:@"serverRecordData"];
    }

    if (v22)
    {
      v30 = [v28 transformedValue:v22];
      [firstObject setValue:v30 forKey:@"serverShareData"];
    }

    if (v26)
    {
      v31 = [v28 transformedValue:v26];
      [firstObject setValue:v31 forKey:@"userSpecificServerRecordData"];
    }
  }

  return v13;
}

@end