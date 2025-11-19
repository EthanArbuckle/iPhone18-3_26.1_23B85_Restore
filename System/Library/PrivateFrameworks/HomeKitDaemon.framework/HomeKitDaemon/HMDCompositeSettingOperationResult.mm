@interface HMDCompositeSettingOperationResult
- (HMDCompositeSettingOperationResult)initWithKeyPath:(id)a3 setting:(id)a4 metadata:(id)a5 error:(id)a6;
- (id)attributeDescriptions;
@end

@implementation HMDCompositeSettingOperationResult

- (id)attributeDescriptions
{
  v18[4] = *MEMORY[0x277D85DE8];
  v3 = objc_alloc(MEMORY[0x277D0F778]);
  v4 = [(HMDCompositeSettingOperationResult *)self keyPath];
  v5 = [v3 initWithName:@"keyPath" value:v4];
  v18[0] = v5;
  v6 = objc_alloc(MEMORY[0x277D0F778]);
  v7 = [(HMDCompositeSettingOperationResult *)self setting];
  v8 = [v6 initWithName:@"setting" value:v7];
  v18[1] = v8;
  v9 = objc_alloc(MEMORY[0x277D0F778]);
  v10 = [(HMDCompositeSettingOperationResult *)self error];
  v11 = [v9 initWithName:@"error" value:v10];
  v18[2] = v11;
  v12 = objc_alloc(MEMORY[0x277D0F778]);
  v13 = [(HMDCompositeSettingOperationResult *)self metadata];
  v14 = [v12 initWithName:@"metadata" value:v13];
  v18[3] = v14;
  v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v18 count:4];

  v16 = *MEMORY[0x277D85DE8];

  return v15;
}

- (HMDCompositeSettingOperationResult)initWithKeyPath:(id)a3 setting:(id)a4 metadata:(id)a5 error:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v18.receiver = self;
  v18.super_class = HMDCompositeSettingOperationResult;
  v15 = [(HMDCompositeSettingOperationResult *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_error, a6);
    objc_storeStrong(&v16->_setting, a4);
    objc_storeStrong(&v16->_metadata, a5);
    objc_storeStrong(&v16->_keyPath, a3);
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