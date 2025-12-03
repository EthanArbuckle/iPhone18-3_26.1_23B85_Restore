@interface HMDHomeManagerModel
+ (id)properties;
- (id)cd_generateValueForModelObjectFromManagedObject:(id)object modelObjectField:(id)field modelFieldInfo:(id)info;
- (id)cd_generateValueForProperty:(id)property managedObjectField:(id)field context:(id)context;
@end

@implementation HMDHomeManagerModel

+ (id)properties
{
  if (properties_onceToken_149195 != -1)
  {
    dispatch_once(&properties_onceToken_149195, &__block_literal_global_149196);
  }

  v3 = properties__properties_149197;

  return v3;
}

void __33__HMDHomeManagerModel_properties__block_invoke()
{
  v7[3] = *MEMORY[0x277D85DE8];
  v6[0] = @"controllerKeyIdentifier";
  v0 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v7[0] = v0;
  v6[1] = @"primaryHomeUUID";
  v1 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v7[1] = v1;
  v6[2] = @"cloudZoneInformation";
  v2 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v7[2] = v2;
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:v6 count:3];
  v4 = properties__properties_149197;
  properties__properties_149197 = v3;

  v5 = *MEMORY[0x277D85DE8];
}

- (id)cd_generateValueForProperty:(id)property managedObjectField:(id)field context:(id)context
{
  v35 = *MEMORY[0x277D85DE8];
  propertyCopy = property;
  fieldCopy = field;
  contextCopy = context;
  if (![fieldCopy isEqualToString:@"primaryHome"])
  {
    v27.receiver = self;
    v27.super_class = HMDHomeManagerModel;
    null = [(HMDBackingStoreModelObject *)&v27 cd_generateValueForProperty:propertyCopy managedObjectField:fieldCopy context:contextCopy];
LABEL_9:
    v16 = null;
    goto LABEL_14;
  }

  if (![(HMDBackingStoreModelObject *)self propertyWasSet:@"primaryHomeUUID"])
  {
    v16 = 0;
    goto LABEL_14;
  }

  primaryHomeUUID = [(HMDHomeManagerModel *)self primaryHomeUUID];

  if (!primaryHomeUUID)
  {
    null = [MEMORY[0x277CBEB68] null];
    goto LABEL_9;
  }

  v12 = objc_alloc(MEMORY[0x277CCAD78]);
  primaryHomeUUID2 = [(HMDHomeManagerModel *)self primaryHomeUUID];
  v14 = [v12 initWithUUIDString:primaryHomeUUID2];

  if (v14)
  {
    v15 = [HMDHomeManagerHomeModel deriveUUIDFromHomeUUID:v14];
    v28 = 0;
    v16 = [HMDBackingStore cdlsFetchManagedObjectWithUUID:v15 ofModelType:objc_opt_class() error:&v28];
    v17 = v28;

    if (!v16 || v17)
    {
      v21 = objc_autoreleasePoolPush();
      selfCopy = self;
      v23 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_FAULT))
      {
        v24 = HMFGetLogIdentifier();
        *buf = 138543874;
        v30 = v24;
        v31 = 2112;
        v32 = v14;
        v33 = 2112;
        v34 = v17;
        _os_log_impl(&dword_229538000, v23, OS_LOG_TYPE_FAULT, "%{public}@Submitting ABC event for failure: Unable to find NSManagedObject for home manager home with UUID %@: %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v21);
      v25 = [[HMDAssertionLogEvent alloc] initWithReason:@"Unable to find NSManagedObject for home manager home with UUID %@: %@", v14, v17];
      v26 = +[HMDMetricsManager sharedLogEventSubmitter];
      [v26 submitLogEvent:v25];
    }
  }

  else
  {
    v16 = 0;
  }

LABEL_14:
  v19 = *MEMORY[0x277D85DE8];

  return v16;
}

- (id)cd_generateValueForModelObjectFromManagedObject:(id)object modelObjectField:(id)field modelFieldInfo:(id)info
{
  objectCopy = object;
  fieldCopy = field;
  infoCopy = info;
  if ([fieldCopy isEqualToString:@"primaryHomeUUID"])
  {
    primaryHome = [objectCopy primaryHome];
    handle = [primaryHome handle];
    homeUUID = [handle homeUUID];
    uUIDString = [homeUUID UUIDString];
    v15 = uUIDString;
    v16 = *MEMORY[0x277CBEEE8];
    if (uUIDString)
    {
      v16 = uUIDString;
    }

    v17 = v16;
  }

  else if ([fieldCopy isEqualToString:@"cloudZoneInformation"])
  {
    v17 = 0;
  }

  else
  {
    v19.receiver = self;
    v19.super_class = HMDHomeManagerModel;
    v17 = [(HMDBackingStoreModelObject *)&v19 cd_generateValueForModelObjectFromManagedObject:objectCopy modelObjectField:fieldCopy modelFieldInfo:infoCopy];
  }

  return v17;
}

@end