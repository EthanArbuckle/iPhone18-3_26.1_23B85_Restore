@interface HMDLegacyMetadataModel
+ (id)createWithLegacyRecord:(id)record modelContainer:(id)container error:(id *)error;
+ (id)hmbProperties;
- (HMDLegacyMetadataModel)init;
- (id)encodeWithExistingRecord:(id)record cloudZone:(id)zone modelContainer:(id)container error:(id *)error;
@end

@implementation HMDLegacyMetadataModel

- (id)encodeWithExistingRecord:(id)record cloudZone:(id)zone modelContainer:(id)container error:(id *)error
{
  recordCopy = record;
  zoneCopy = zone;
  containerCopy = container;
  if (recordCopy)
  {
    recordID = [recordCopy recordID];
    recordName = [recordID recordName];
    v14 = [recordName isEqual:@"9C3BF4D1-C7CF-4217-BCD2-0F7E96D5B300"];

    if (v14)
    {
      goto LABEL_9;
    }

    _HMFPreconditionFailure();
  }

  zoneID = [zoneCopy zoneID];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v16 = zoneID;
  }

  else
  {
    v16 = 0;
  }

  v17 = v16;

  if (!v17)
  {
    v23 = _HMFPreconditionFailure();
    return [(HMDLegacyMetadataModel *)v23 init];
  }

  v18 = objc_alloc(MEMORY[0x277CBC5D0]);
  zoneID2 = [v17 zoneID];
  v20 = [v18 initWithRecordName:@"9C3BF4D1-C7CF-4217-BCD2-0F7E96D5B300" zoneID:zoneID2];

  recordCopy = [objc_alloc(MEMORY[0x277CBC5A0]) initWithRecordType:@"MetadataBlob" recordID:v20];
LABEL_9:
  cloudMetadata = [(HMDLegacyMetadataModel *)self cloudMetadata];
  [recordCopy setObject:cloudMetadata forKeyedSubscript:@"kRecordEncodedDataBlobKey"];

  return recordCopy;
}

- (HMDLegacyMetadataModel)init
{
  v3 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:@"457C009B-1DA4-4B71-BD69-93D344A81A8B"];
  v4 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:@"1CAEDC10-E3E5-41A4-BB17-A9EEBA14A938"];
  v7.receiver = self;
  v7.super_class = HMDLegacyMetadataModel;
  v5 = [(HMBModel *)&v7 initWithModelID:v3 parentModelID:v4];

  return v5;
}

+ (id)createWithLegacyRecord:(id)record modelContainer:(id)container error:(id *)error
{
  recordCopy = record;
  recordType = [recordCopy recordType];
  v9 = [recordType isEqual:@"MetadataBlob"];

  if (v9)
  {
    v10 = objc_alloc_init(self);
    if (v10)
    {
      v11 = [recordCopy objectForKeyedSubscript:@"kRecordEncodedDataBlobKey"];

      if (v11)
      {
        v12 = [recordCopy objectForKeyedSubscript:@"kRecordEncodedDataBlobKey"];
        [v10 setCloudMetadata:v12];
      }
    }
  }

  else if (error)
  {
    [MEMORY[0x277CCA9B8] hmfErrorWithCode:15];
    *error = v10 = 0;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

+ (id)hmbProperties
{
  if (hmbProperties_onceToken_245616 != -1)
  {
    dispatch_once(&hmbProperties_onceToken_245616, &__block_literal_global_245617);
  }

  v3 = hmbProperties__properties_245618;

  return v3;
}

void __39__HMDLegacyMetadataModel_hmbProperties__block_invoke()
{
  v5[1] = *MEMORY[0x277D85DE8];
  v4 = @"cloudMetadata";
  v0 = [MEMORY[0x277D170B8] fieldWithClass:objc_opt_class()];
  v5[0] = v0;
  v1 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v5 forKeys:&v4 count:1];
  v2 = hmbProperties__properties_245618;
  hmbProperties__properties_245618 = v1;

  v3 = *MEMORY[0x277D85DE8];
}

@end