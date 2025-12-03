@interface HDStaticSyncControlServer
+ (id)requiredEntitlements;
- (id)remote_runStaticSyncExportWithOptions:(unint64_t)options storeIdentifier:(id)identifier URL:(id)l batchSize:(unint64_t)size completion:(id)completion;
- (id)remote_runStaticSyncImportWithOptions:(unint64_t)options storeIdentifier:(id)identifier URL:(id)l completion:(id)completion;
@end

@implementation HDStaticSyncControlServer

- (id)remote_runStaticSyncExportWithOptions:(unint64_t)options storeIdentifier:(id)identifier URL:(id)l batchSize:(unint64_t)size completion:(id)completion
{
  completionCopy = completion;
  lCopy = l;
  identifierCopy = identifier;
  v15 = [HDStaticSyncExportTask alloc];
  profile = [(HDStandardTaskServer *)self profile];
  v17 = [(HDStaticSyncExportTask *)v15 initWithProfile:profile options:options storeIdentifier:identifierCopy URL:lCopy batchSize:size];

  v18 = [(HDStaticSyncExportTask *)v17 runWithCompletion:completionCopy];

  return v18;
}

- (id)remote_runStaticSyncImportWithOptions:(unint64_t)options storeIdentifier:(id)identifier URL:(id)l completion:(id)completion
{
  completionCopy = completion;
  lCopy = l;
  identifierCopy = identifier;
  v13 = [HDStaticSyncImportTask alloc];
  profile = [(HDStandardTaskServer *)self profile];
  v15 = [(HDStaticSyncImportTask *)v13 initWithProfile:profile options:options storeIdentifier:identifierCopy URL:lCopy];

  v16 = [(HDStaticSyncImportTask *)v15 runWithCompletion:completionCopy];

  return v16;
}

+ (id)requiredEntitlements
{
  v5[1] = *MEMORY[0x277D85DE8];
  v5[0] = *MEMORY[0x277CCC8B0];
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:1];
  v3 = *MEMORY[0x277D85DE8];

  return v2;
}

@end