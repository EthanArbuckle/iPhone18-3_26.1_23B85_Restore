@interface HDStaticSyncControlServer
+ (id)requiredEntitlements;
- (id)remote_runStaticSyncExportWithOptions:(unint64_t)a3 storeIdentifier:(id)a4 URL:(id)a5 batchSize:(unint64_t)a6 completion:(id)a7;
- (id)remote_runStaticSyncImportWithOptions:(unint64_t)a3 storeIdentifier:(id)a4 URL:(id)a5 completion:(id)a6;
@end

@implementation HDStaticSyncControlServer

- (id)remote_runStaticSyncExportWithOptions:(unint64_t)a3 storeIdentifier:(id)a4 URL:(id)a5 batchSize:(unint64_t)a6 completion:(id)a7
{
  v12 = a7;
  v13 = a5;
  v14 = a4;
  v15 = [HDStaticSyncExportTask alloc];
  v16 = [(HDStandardTaskServer *)self profile];
  v17 = [(HDStaticSyncExportTask *)v15 initWithProfile:v16 options:a3 storeIdentifier:v14 URL:v13 batchSize:a6];

  v18 = [(HDStaticSyncExportTask *)v17 runWithCompletion:v12];

  return v18;
}

- (id)remote_runStaticSyncImportWithOptions:(unint64_t)a3 storeIdentifier:(id)a4 URL:(id)a5 completion:(id)a6
{
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v13 = [HDStaticSyncImportTask alloc];
  v14 = [(HDStandardTaskServer *)self profile];
  v15 = [(HDStaticSyncImportTask *)v13 initWithProfile:v14 options:a3 storeIdentifier:v12 URL:v11];

  v16 = [(HDStaticSyncImportTask *)v15 runWithCompletion:v10];

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