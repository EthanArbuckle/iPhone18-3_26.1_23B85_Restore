@interface ICLocationMigrationPolicy
- (BOOL)createDestinationInstancesForSourceInstance:(id)instance entityMapping:(id)mapping manager:(id)manager error:(id *)error;
@end

@implementation ICLocationMigrationPolicy

- (BOOL)createDestinationInstancesForSourceInstance:(id)instance entityMapping:(id)mapping manager:(id)manager error:(id *)error
{
  v23[1] = *MEMORY[0x277D85DE8];
  instanceCopy = instance;
  mappingCopy = mapping;
  managerCopy = manager;
  v22.receiver = self;
  v22.super_class = ICLocationMigrationPolicy;
  v13 = [(NSEntityMigrationPolicy *)&v22 createDestinationInstancesForSourceInstance:instanceCopy entityMapping:mappingCopy manager:managerCopy error:error];
  if (v13)
  {
    name = [mappingCopy name];
    v23[0] = instanceCopy;
    v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v23 count:1];
    v16 = [managerCopy destinationInstancesForEntityMappingNamed:name sourceInstances:v15];
    firstObject = [v16 firstObject];

    v18 = [instanceCopy valueForKey:@"placemark"];
    if (v18)
    {
      v19 = [objc_alloc(MEMORY[0x277CCAAB0]) initRequiringSecureCoding:1];
      [v19 encodeObject:v18 forKey:@"placemark"];
      encodedData = [v19 encodedData];
      [firstObject setValue:encodedData forKey:@"placemarkData"];
    }
  }

  return v13;
}

@end