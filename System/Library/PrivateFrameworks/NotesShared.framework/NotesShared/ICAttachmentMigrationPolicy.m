@interface ICAttachmentMigrationPolicy
- (BOOL)createDestinationInstancesForSourceInstance:(id)a3 entityMapping:(id)a4 manager:(id)a5 error:(id *)a6;
@end

@implementation ICAttachmentMigrationPolicy

- (BOOL)createDestinationInstancesForSourceInstance:(id)a3 entityMapping:(id)a4 manager:(id)a5 error:(id *)a6
{
  v23[1] = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v22.receiver = self;
  v22.super_class = ICAttachmentMigrationPolicy;
  v13 = [(ICCloudSyncingObjectMigrationPolicy *)&v22 createDestinationInstancesForSourceInstance:v10 entityMapping:v11 manager:v12 error:a6];
  if (v13)
  {
    v14 = [v11 name];
    v23[0] = v10;
    v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v23 count:1];
    v16 = [v12 destinationInstancesForEntityMappingNamed:v14 sourceInstances:v15];
    v17 = [v16 firstObject];

    v18 = [v10 valueForKey:@"remoteFileURL"];
    v19 = v18;
    if (v18)
    {
      v20 = [v18 absoluteString];
      [v17 setValue:v20 forKey:@"remoteFileURLString"];
    }
  }

  return v13;
}

@end