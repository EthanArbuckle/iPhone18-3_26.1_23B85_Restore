@interface HMDCompositeSettingOperationResult
- (HMDCompositeSettingOperationResult)initWithKeyPath:(id)path setting:(id)setting metadata:(id)metadata error:(id)error;
- (id)attributeDescriptions;
@end

@implementation HMDCompositeSettingOperationResult

- (id)attributeDescriptions
{
  v18[4] = *MEMORY[0x277D85DE8];
  v3 = objc_alloc(MEMORY[0x277D0F778]);
  keyPath = [(HMDCompositeSettingOperationResult *)self keyPath];
  v5 = [v3 initWithName:@"keyPath" value:keyPath];
  v18[0] = v5;
  v6 = objc_alloc(MEMORY[0x277D0F778]);
  setting = [(HMDCompositeSettingOperationResult *)self setting];
  v8 = [v6 initWithName:@"setting" value:setting];
  v18[1] = v8;
  v9 = objc_alloc(MEMORY[0x277D0F778]);
  error = [(HMDCompositeSettingOperationResult *)self error];
  v11 = [v9 initWithName:@"error" value:error];
  v18[2] = v11;
  v12 = objc_alloc(MEMORY[0x277D0F778]);
  metadata = [(HMDCompositeSettingOperationResult *)self metadata];
  v14 = [v12 initWithName:@"metadata" value:metadata];
  v18[3] = v14;
  v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v18 count:4];

  v16 = *MEMORY[0x277D85DE8];

  return v15;
}

- (HMDCompositeSettingOperationResult)initWithKeyPath:(id)path setting:(id)setting metadata:(id)metadata error:(id)error
{
  pathCopy = path;
  settingCopy = setting;
  metadataCopy = metadata;
  errorCopy = error;
  v18.receiver = self;
  v18.super_class = HMDCompositeSettingOperationResult;
  v15 = [(HMDCompositeSettingOperationResult *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_error, error);
    objc_storeStrong(&v16->_setting, setting);
    objc_storeStrong(&v16->_metadata, metadata);
    objc_storeStrong(&v16->_keyPath, path);
  }

  return v16;
}

id __80__HMDCompositeSettingOperationResult_frameWorkFetchResultsWithOperationResults___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [HMDCompositeSettingsControllerManager immutableSettingFromFetchReturn:v2];
  v4 = objc_alloc(MEMORY[0x277CD1788]);
  v5 = v4;
  if (v3)
  {
    v6 = [v4 initWithSetting:v3];
  }

  else
  {
    v7 = [v2 keyPath];
    v6 = [v5 initWithKeyPath:v7 failureType:1];
  }

  return v6;
}

@end