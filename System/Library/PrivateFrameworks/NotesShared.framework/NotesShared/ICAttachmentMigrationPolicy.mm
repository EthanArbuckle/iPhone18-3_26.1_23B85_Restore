@interface ICAttachmentMigrationPolicy
- (BOOL)createDestinationInstancesForSourceInstance:(id)instance entityMapping:(id)mapping manager:(id)manager error:(id *)error;
@end

@implementation ICAttachmentMigrationPolicy

- (BOOL)createDestinationInstancesForSourceInstance:(id)instance entityMapping:(id)mapping manager:(id)manager error:(id *)error
{
  v23[1] = *MEMORY[0x277D85DE8];
  instanceCopy = instance;
  mappingCopy = mapping;
  managerCopy = manager;
  v22.receiver = self;
  v22.super_class = ICAttachmentMigrationPolicy;
  v13 = [(ICCloudSyncingObjectMigrationPolicy *)&v22 createDestinationInstancesForSourceInstance:instanceCopy entityMapping:mappingCopy manager:managerCopy error:error];
  if (v13)
  {
    name = [mappingCopy name];
    v23[0] = instanceCopy;
    v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v23 count:1];
    v16 = [managerCopy destinationInstancesForEntityMappingNamed:name sourceInstances:v15];
    firstObject = [v16 firstObject];

    v18 = [instanceCopy valueForKey:@"remoteFileURL"];
    v19 = v18;
    if (v18)
    {
      absoluteString = [v18 absoluteString];
      [firstObject setValue:absoluteString forKey:@"remoteFileURLString"];
    }
  }

  return v13;
}

@end