@interface HMDSettingsControllerDependency
- (HMDSettingTransactionReceiverProtocol)transactionReceiver;
- (HMDSettingsControllerDependency)initWithParentUUID:(id)d logName:(id)name queue:(id)queue metadataFileName:(id)fileName codingKey:(id)key messageHandler:(id)handler migrationProvider:(id)provider keyPathsToPrune:(id)self0;
- (HMDSettingsMessageHandlerProtocol)messageHandler;
- (HMDUserSettingsInitialValueProviding)migrationProvider;
- (id)createSettingGroupModelWithName:(id)name parent:(id)parent;
- (id)createSettingModelWithName:(id)name parent:(id)parent type:(id)type properties:(id)properties;
- (id)createSettingRootGroupModelWithParentModelID:(id)d;
- (id)loadMetadata;
- (id)settingModelForUpdateWithIdentifier:(id)identifier parentIdentifier:(id)parentIdentifier value:(id)value;
- (id)settingValueForValue:(id)value type:(id)type constraintModels:(id)models error:(id *)error;
- (void)configureWithHome:(id)home messageDispatcher:(id)dispatcher backingStoreController:(id)controller;
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

- (id)createSettingModelWithName:(id)name parent:(id)parent type:(id)type properties:(id)properties
{
  propertiesCopy = properties;
  typeCopy = type;
  parentCopy = parent;
  nameCopy = name;
  v13 = [HMDSettingModel alloc];
  uUID = [MEMORY[0x277CCAD78] UUID];
  v15 = [(HMBModel *)v13 initWithModelID:uUID parentModelID:parentCopy];

  [(HMDSettingModel *)v15 setName:nameCopy];
  [(HMDSettingModel *)v15 setType:typeCopy];

  [(HMDSettingModel *)v15 setProperties:propertiesCopy];

  return v15;
}

- (id)createSettingGroupModelWithName:(id)name parent:(id)parent
{
  parentCopy = parent;
  nameCopy = name;
  v7 = [HMDSettingGroupModel alloc];
  uUID = [MEMORY[0x277CCAD78] UUID];
  v9 = [(HMBModel *)v7 initWithModelID:uUID parentModelID:parentCopy];

  [(HMDSettingGroupModel *)v9 setName:nameCopy];

  return v9;
}

- (id)createSettingRootGroupModelWithParentModelID:(id)d
{
  dCopy = d;
  v4 = [HMDSettingRootGroupModel alloc];
  uUID = [MEMORY[0x277CCAD78] UUID];
  v6 = [(HMDSettingRootGroupModel *)v4 initWithModelID:uUID parentModelID:dCopy];

  return v6;
}

- (id)loadMetadata
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  resourceURL = [v3 resourceURL];
  if (self)
  {
    Property = objc_getProperty(self, v4, 72, 1);
  }

  else
  {
    Property = 0;
  }

  v7 = [resourceURL URLByAppendingPathComponent:Property];

  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  path = [v7 path];
  v10 = [defaultManager fileExistsAtPath:path];

  if (v10)
  {
    v11 = [MEMORY[0x277CBEAC0] dictionaryWithContentsOfURL:v7];
  }

  else
  {
    v12 = objc_autoreleasePoolPush();
    selfCopy = self;
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

- (id)settingValueForValue:(id)value type:(id)type constraintModels:(id)models error:(id *)error
{
  v32 = *MEMORY[0x277D85DE8];
  valueCopy = value;
  modelsCopy = models;
  v11 = valueCopy;
  v12 = modelsCopy;
  integerValue = [type integerValue];
  v14 = 0;
  v15 = 0;
  if (integerValue <= 2)
  {
    if (integerValue == 1)
    {
      v16 = [objc_alloc(MEMORY[0x277CD1DD0]) initDataSettingWithValue:v11];
    }

    else
    {
      if (integerValue != 2)
      {
        goto LABEL_23;
      }

      v16 = [objc_alloc(MEMORY[0x277CD1DD0]) initNumberSettingWithValue:v11];
    }

LABEL_21:
    v15 = v16;
    goto LABEL_29;
  }

  if (integerValue == 3)
  {
    v16 = [objc_alloc(MEMORY[0x277CD1DD0]) initStringSettingWithValue:v11];
    goto LABEL_21;
  }

  if (integerValue != 4)
  {
    if (integerValue == 5)
    {
      goto LABEL_29;
    }

LABEL_23:
    if (!error)
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
        stringValue = [v20 stringValue];
        v22 = [stringValue isEqualToString:v11];

        if (v22)
        {
          v23 = objc_alloc(MEMORY[0x277CD1DD0]);
          hmbModelID = [v20 hmbModelID];
          v15 = [v23 initWithType:4 stringValue:0 numberValue:0 dataValue:0 selectionIdentifier:hmbModelID selectionValue:v11];

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

  if (error)
  {
LABEL_27:
    if ((v14 & 1) == 0)
    {
      *error = [MEMORY[0x277CCA9B8] hmErrorWithCode:3 description:@"Unable to create setting value" reason:@"Could not determine type" suggestion:0];
    }
  }

LABEL_29:

  v25 = *MEMORY[0x277D85DE8];

  return v15;
}

- (id)settingModelForUpdateWithIdentifier:(id)identifier parentIdentifier:(id)parentIdentifier value:(id)value
{
  v21 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  parentIdentifierCopy = parentIdentifier;
  valueCopy = value;
  v11 = [(HMBModel *)[HMDSettingModel alloc] initWithModelID:identifierCopy parentModelID:parentIdentifierCopy];
  if ([(HMDSettingModel *)v11 setSettingValue:valueCopy])
  {
    v12 = v11;
  }

  else
  {
    v13 = objc_autoreleasePoolPush();
    selfCopy = self;
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

- (void)configureWithHome:(id)home messageDispatcher:(id)dispatcher backingStoreController:(id)controller
{
  homeCopy = home;
  dispatcherCopy = dispatcher;
  if (self)
  {
    controllerCopy = controller;
    objc_setProperty_atomic(self, v10, dispatcherCopy, 88);
    objc_setProperty_atomic(self, v11, controllerCopy, 40);

    Property = objc_getProperty(self, v12, 96, 1);
  }

  else
  {
    Property = 0;
  }

  [Property configureWithMessageDispatcher:dispatcherCopy home:homeCopy];
}

- (HMDSettingsControllerDependency)initWithParentUUID:(id)d logName:(id)name queue:(id)queue metadataFileName:(id)fileName codingKey:(id)key messageHandler:(id)handler migrationProvider:(id)provider keyPathsToPrune:(id)self0
{
  dCopy = d;
  nameCopy = name;
  queueCopy = queue;
  fileNameCopy = fileName;
  keyCopy = key;
  handlerCopy = handler;
  providerCopy = provider;
  pruneCopy = prune;
  v36.receiver = self;
  v36.super_class = HMDSettingsControllerDependency;
  v21 = [(HMDSettingsControllerDependency *)&v36 init];
  v22 = v21;
  if (v21)
  {
    objc_storeStrong(&v21->_internalMessageHandler, handler);
    messageDispatcher = v22->_messageDispatcher;
    v22->_messageDispatcher = 0;

    objc_storeStrong(&v22->_parentIdentifier, d);
    uUIDString = [dCopy UUIDString];
    v25 = [nameCopy stringByAppendingString:uUIDString];
    logIdentifier = v22->_logIdentifier;
    v22->_logIdentifier = v25;

    objc_storeStrong(&v22->_queue, queue);
    v27 = [[HMDSettingsMetadataParser alloc] initWithDependency:v22];
    metadataParser = v22->_metadataParser;
    v22->_metadataParser = v27;

    objc_storeStrong(&v22->_metadataFileName, fileName);
    objc_storeStrong(&v22->_codingKey, key);
    objc_storeWeak(&v22->_migrationProvider, providerCopy);
    v29 = [pruneCopy copy];
    keyPathsToPrune = v22->_keyPathsToPrune;
    v22->_keyPathsToPrune = v29;
  }

  return v22;
}

@end