@interface HMDApplicationDataModel
+ (id)modelWithAppDataPayload:(id)payload existingAppData:(id)data parentUUID:(id)d;
+ (id)properties;
@end

@implementation HMDApplicationDataModel

+ (id)properties
{
  if (properties_onceToken_11524 != -1)
  {
    dispatch_once(&properties_onceToken_11524, &__block_literal_global_128);
  }

  v3 = properties__properties_11525;

  return v3;
}

void __37__HMDApplicationDataModel_properties__block_invoke()
{
  v5[1] = *MEMORY[0x277D85DE8];
  v4 = @"appDataDictionary";
  v0 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v5[0] = v0;
  v1 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v5 forKeys:&v4 count:1];
  v2 = properties__properties_11525;
  properties__properties_11525 = v1;

  v3 = *MEMORY[0x277D85DE8];
}

+ (id)modelWithAppDataPayload:(id)payload existingAppData:(id)data parentUUID:(id)d
{
  payloadCopy = payload;
  dataCopy = data;
  dCopy = d;
  if ([payloadCopy count])
  {
    if (!dataCopy)
    {
      v10 = [[HMDApplicationData alloc] initWithParentUUID:dCopy];
      [(HMDApplicationData *)v10 setApplicationData:payloadCopy forIdentifier:@"com.apple.homekit-entitledclient.identifer"];
      v11 = v10;
      v12 = 1;
      goto LABEL_8;
    }

    v10 = [dataCopy copy];
    [(HMDApplicationData *)v10 setApplicationData:payloadCopy forIdentifier:@"com.apple.homekit-entitledclient.identifer"];
LABEL_6:
    v11 = v10;
    v12 = 2;
LABEL_8:
    v13 = [(HMDApplicationData *)v11 modelObjectWithChangeType:v12];

    goto LABEL_9;
  }

  if (dataCopy)
  {
    v10 = [dataCopy copy];
    [(HMDApplicationData *)v10 removeApplicationDataForIdentifier:@"com.apple.homekit-entitledclient.identifer"];
    goto LABEL_6;
  }

  v13 = 0;
LABEL_9:

  return v13;
}

@end