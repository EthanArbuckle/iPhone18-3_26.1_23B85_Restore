@interface HMDSettingsControllerDependency
- (HMDSettingTransactionReceiverProtocol)transactionReceiver;
- (HMDSettingsControllerDependency)initWithParentUUID:(id)a3 logName:(id)a4 queue:(id)a5 metadataFileName:(id)a6 codingKey:(id)a7 messageHandler:(id)a8 migrationProvider:(id)a9 keyPathsToPrune:(id)a10;
- (HMDSettingsMessageHandlerProtocol)messageHandler;
- (HMDUserSettingsInitialValueProviding)migrationProvider;
- (id)createSettingGroupModelWithName:(id)a3 parent:(id)a4;
- (id)createSettingModelWithName:(id)a3 parent:(id)a4 type:(id)a5 properties:(id)a6;
- (id)createSettingRootGroupModelWithParentModelID:(id)a3;
- (id)loadMetadata;
- (id)settingModelForUpdateWithIdentifier:(id)a3 parentIdentifier:(id)a4 value:(id)a5;
- (id)settingValueForValue:(id)a3 type:(id)a4 constraintModels:(id)a5 error:(id *)a6;
- (void)configureWithHome:(id)a3 messageDispatcher:(id)a4 backingStoreController:(id)a5;
@end

@implementation HMDSettingsControllerDependency

- (HMDUserSettingsInitialValueProviding)migrationProvider
{
  WeakRetained = objc_loadWeakRetained(&self->_migrationProvider);

  return WeakRetained;
}

- (HMDSettingTransactionReceiverProtocol)transactionReceiver
{
  WeakRetained = objc_loadWeakRetained(&self->_transactionReceiver);

  return WeakRetained;
}

- (id)createSettingModelWithName:(id)a3 parent:(id)a4 type:(id)a5 properties:(id)a6
{
  v9 = a6;
  v10 = a5;
  v11 = a4;
  v12 = a3;
  v13 = [HMDSettingModel alloc];
  v14 = [MEMORY[0x277CCAD78] UUID];
  v15 = [(HMBModel *)v13 initWithModelID:v14 parentModelID:v11];

  [(HMDSettingModel *)v15 setName:v12];
  [(HMDSettingModel *)v15 setType:v10];

  [(HMDSettingModel *)v15 setProperties:v9];

  return v15;
}

- (id)createSettingGroupModelWithName:(id)a3 parent:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [HMDSettingGroupModel alloc];
  v8 = [MEMORY[0x277CCAD78] UUID];
  v9 = [(HMBModel *)v7 initWithModelID:v8 parentModelID:v5];

  [(HMDSettingGroupModel *)v9 setName:v6];

  return v9;
}

- (id)createSettingRootGroupModelWithParentModelID:(id)a3
{
  v3 = a3;
  v4 = [HMDSettingRootGroupModel alloc];
  v5 = [MEMORY[0x277CCAD78] UUID];
  v6 = [(HMDSettingRootGroupModel *)v4 initWithModelID:v5 parentModelID:v3];

  return v6;
}

- (id)loadMetadata
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v5 = [v3 resourceURL];
  if (self)
  {
    Property = objc_getProperty(self, v4, 72, 1);
  }

  else
  {
    Property = 0;
  }

  v7 = [v5 URLByAppendingPathComponent:Property];

  v8 = [MEMORY[0x277CCAA00] defaultManager];
  v9 = [v7 path];
  v10 = [v8 fileExistsAtPath:v9];

  if (v10)
  {
    v11 = [MEMORY[0x277CBEAC0] dictionaryWithContentsOfURL:v7];
  }

  else
  {
    v12 = objc_autoreleasePoolPush();
    v13 = self;
    v14 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = HMFGetLogIdentifier();
      v18 = 138543618;
      v19 = v15;
      v20 = 2112;
      v21 = v7;
      _os_log_impl(&dword_2531F8000, v14, OS_LOG_TYPE_DEFAULT, "%{public}@Cannot find user settings resource at: %@", &v18, 0x16u);
    }

    objc_autoreleasePoolPop(v12);
    v11 = 0;
  }

  v16 = *MEMORY[0x277D85DE8];

  return v11;
}

- (id)settingValueForValue:(id)a3 type:(id)a4 constraintModels:(id)a5 error:(id *)a6
{
  v32 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a5;
  v11 = v9;
  v12 = v10;
  v13 = [a4 integerValue];
  v14 = 0;
  v15 = 0;
  if (v13 <= 2)
  {
    if (v13 == 1)
    {
      v16 = [objc_alloc(MEMORY[0x277CD1DD0]) initDataSettingWithValue:v11];
    }

    else
    {
      if (v13 != 2)
      {
        goto LABEL_23;
      }

      v16 = [objc_alloc(MEMORY[0x277CD1DD0]) initNumberSettingWithValue:v11];
    }

LABEL_21:
    v15 = v16;
    goto LABEL_29;
  }

  if (v13 == 3)
  {
    v16 = [objc_alloc(MEMORY[0x277CD1DD0]) initStringSettingWithValue:v11];
    goto LABEL_21;
  }

  if (v13 != 4)
  {
    if (v13 == 5)
    {
      goto LABEL_29;
    }

LABEL_23:
    if (!a6)
    {
      goto LABEL_29;
    }

    goto LABEL_27;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v15 = 0;
    v14 = 0;
    goto LABEL_23;
  }

  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v17 = v12;
  v15 = [v17 countByEnumeratingWithState:&v27 objects:v31 count:16];
  if (v15)
  {
    v18 = *v28;
    while (2)
    {
      for (i = 0; i != v15; i = i + 1)
      {
        if (*v28 != v18)
        {
          objc_enumerationMutation(v17);
        }

        v20 = *(*(&v27 + 1) + 8 * i);
        v21 = [v20 stringValue];
        v22 = [v21 isEqualToString:v11];

        if (v22)
        {
          v23 = objc_alloc(MEMORY[0x277CD1DD0]);
          v24 = [v20 hmbModelID];
          v15 = [v23 initWithType:4 stringValue:0 numberValue:0 dataValue:0 selectionIdentifier:v24 selectionValue:v11];

          v14 = 1;
          goto LABEL_26;
        }
      }

      v15 = [v17 countByEnumeratingWithState:&v27 objects:v31 count:16];
      if (v15)
      {
        continue;
      }

      break;
    }
  }

  v14 = 0;
LABEL_26:

  if (a6)
  {
LABEL_27:
    if ((v14 & 1) == 0)
    {
      *a6 = [MEMORY[0x277CCA9B8] hmErrorWithCode:3 description:@"Unable to create setting value" reason:@"Could not determine type" suggestion:0];
    }
  }

LABEL_29:

  v25 = *MEMORY[0x277D85DE8];

  return v15;
}

- (id)settingModelForUpdateWithIdentifier:(id)a3 parentIdentifier:(id)a4 value:(id)a5
{
  v21 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(HMBModel *)[HMDSettingModel alloc] initWithModelID:v8 parentModelID:v9];
  if ([(HMDSettingModel *)v11 setSettingValue:v10])
  {
    v12 = v11;
  }

  else
  {
    v13 = objc_autoreleasePoolPush();
    v14 = self;
    v15 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v16 = HMFGetLogIdentifier();
      v19 = 138543362;
      v20 = v16;
      _os_log_impl(&dword_2531F8000, v15, OS_LOG_TYPE_ERROR, "%{public}@Unable to set value on model", &v19, 0xCu);
    }

    objc_autoreleasePoolPop(v13);
    v12 = 0;
  }

  v17 = *MEMORY[0x277D85DE8];

  return v12;
}

- (HMDSettingsMessageHandlerProtocol)messageHandler
{
  if (self)
  {
    self = objc_getProperty(self, a2, 96, 1);
    v2 = vars8;
  }

  return self;
}

- (void)configureWithHome:(id)a3 messageDispatcher:(id)a4 backingStoreController:(id)a5
{
  v14 = a3;
  v8 = a4;
  if (self)
  {
    v9 = a5;
    objc_setProperty_atomic(self, v10, v8, 88);
    objc_setProperty_atomic(self, v11, v9, 40);

    Property = objc_getProperty(self, v12, 96, 1);
  }

  else
  {
    Property = 0;
  }

  [Property configureWithMessageDispatcher:v8 home:v14];
}

- (HMDSettingsControllerDependency)initWithParentUUID:(id)a3 logName:(id)a4 queue:(id)a5 metadataFileName:(id)a6 codingKey:(id)a7 messageHandler:(id)a8 migrationProvider:(id)a9 keyPathsToPrune:(id)a10
{
  v35 = a3;
  v17 = a4;
  v34 = a5;
  v33 = a6;
  v32 = a7;
  v18 = a8;
  v19 = a9;
  v20 = a10;
  v36.receiver = self;
  v36.super_class = HMDSettingsControllerDependency;
  v21 = [(HMDSettingsControllerDependency *)&v36 init];
  v22 = v21;
  if (v21)
  {
    objc_storeStrong(&v21->_internalMessageHandler, a8);
    messageDispatcher = v22->_messageDispatcher;
    v22->_messageDispatcher = 0;

    objc_storeStrong(&v22->_parentIdentifier, a3);
    v24 = [v35 UUIDString];
    v25 = [v17 stringByAppendingString:v24];
    logIdentifier = v22->_logIdentifier;
    v22->_logIdentifier = v25;

    objc_storeStrong(&v22->_queue, a5);
    v27 = [[HMDSettingsMetadataParser alloc] initWithDependency:v22];
    metadataParser = v22->_metadataParser;
    v22->_metadataParser = v27;

    objc_storeStrong(&v22->_metadataFileName, a6);
    objc_storeStrong(&v22->_codingKey, a7);
    objc_storeWeak(&v22->_migrationProvider, v19);
    v29 = [v20 copy];
    keyPathsToPrune = v22->_keyPathsToPrune;
    v22->_keyPathsToPrune = v29;
  }

  return v22;
}

@end