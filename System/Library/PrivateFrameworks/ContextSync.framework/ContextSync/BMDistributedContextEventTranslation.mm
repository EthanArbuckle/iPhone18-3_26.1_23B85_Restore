@interface BMDistributedContextEventTranslation
- (BMDistributedContextEventTranslation)initWithLocalDeviceIdentifier:(id)identifier;
- (id)contextSyncActivityLevelEventFromEvent:(id)event;
- (id)contextSyncAppInFocusFromEvent:(id)event;
- (id)contextSyncCellularStatusFromEvent:(id)event;
- (id)contextSyncLOIFromSemanticLocationEvent:(id)event;
- (id)contextSyncWalletTransactionFromEvent:(id)event;
- (id)translateEvent:(id)event;
@end

@implementation BMDistributedContextEventTranslation

- (BMDistributedContextEventTranslation)initWithLocalDeviceIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v9.receiver = self;
  v9.super_class = BMDistributedContextEventTranslation;
  v6 = [(BMDistributedContextEventTranslation *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_localDeviceIdentifier, identifier);
  }

  return v7;
}

- (id)translateEvent:(id)event
{
  eventCopy = event;
  eventBody = [eventCopy eventBody];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  eventBody2 = [eventCopy eventBody];
  if (isKindOfClass)
  {
    v8 = [(BMDistributedContextEventTranslation *)self contextSyncLOIFromSemanticLocationEvent:eventBody2];

    serialize = [v8 serialize];
    v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(v8, "dataVersion")}];
    v11 = getBMContextSyncLOIIdentifier();
LABEL_17:
    v26 = v11;

    goto LABEL_18;
  }

  v34 = 0;
  v35 = &v34;
  v36 = 0x2050000000;
  v12 = getBMActivityLevelClass_softClass;
  v37 = getBMActivityLevelClass_softClass;
  if (!getBMActivityLevelClass_softClass)
  {
    v29 = MEMORY[0x277D85DD0];
    v30 = 3221225472;
    v31 = __getBMActivityLevelClass_block_invoke;
    v32 = &unk_278E07AD8;
    v33 = &v34;
    __getBMActivityLevelClass_block_invoke(&v29);
    v12 = v35[3];
  }

  v13 = v12;
  _Block_object_dispose(&v34, 8);
  v14 = objc_opt_isKindOfClass();

  eventBody3 = [eventCopy eventBody];
  if (v14)
  {
    v8 = [(BMDistributedContextEventTranslation *)self contextSyncActivityLevelEventFromEvent:eventBody3];

    serialize = [v8 serialize];
    v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(v8, "dataVersion")}];
    v11 = getBMContextSyncDeviceActivityLevelIdentifier();
    goto LABEL_17;
  }

  v34 = 0;
  v35 = &v34;
  v36 = 0x2050000000;
  v16 = getBMDeviceCellularAvailabilityStatusClass_softClass;
  v37 = getBMDeviceCellularAvailabilityStatusClass_softClass;
  if (!getBMDeviceCellularAvailabilityStatusClass_softClass)
  {
    v29 = MEMORY[0x277D85DD0];
    v30 = 3221225472;
    v31 = __getBMDeviceCellularAvailabilityStatusClass_block_invoke;
    v32 = &unk_278E07AD8;
    v33 = &v34;
    __getBMDeviceCellularAvailabilityStatusClass_block_invoke(&v29);
    v16 = v35[3];
  }

  v17 = v16;
  _Block_object_dispose(&v34, 8);
  v18 = objc_opt_isKindOfClass();

  eventBody4 = [eventCopy eventBody];
  if (v18)
  {
    v8 = [(BMDistributedContextEventTranslation *)self contextSyncCellularStatusFromEvent:eventBody4];

    serialize = [v8 serialize];
    v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(v8, "dataVersion")}];
    v11 = getBMContextSyncCellularAvailabilityStatusIdentifier();
    goto LABEL_17;
  }

  v34 = 0;
  v35 = &v34;
  v36 = 0x2050000000;
  v20 = getBMWalletTransactionClass_softClass;
  v37 = getBMWalletTransactionClass_softClass;
  if (!getBMWalletTransactionClass_softClass)
  {
    v29 = MEMORY[0x277D85DD0];
    v30 = 3221225472;
    v31 = __getBMWalletTransactionClass_block_invoke;
    v32 = &unk_278E07AD8;
    v33 = &v34;
    __getBMWalletTransactionClass_block_invoke(&v29);
    v20 = v35[3];
  }

  v21 = v20;
  _Block_object_dispose(&v34, 8);
  v22 = objc_opt_isKindOfClass();

  eventBody5 = [eventCopy eventBody];
  if (v22)
  {
    v8 = [(BMDistributedContextEventTranslation *)self contextSyncWalletTransactionFromEvent:eventBody5];

    serialize = [v8 serialize];
    v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(v8, "dataVersion")}];
    v11 = getBMContextSyncWalletTransactionIdentifier();
    goto LABEL_17;
  }

  getBMAppInFocusClass();
  v24 = objc_opt_isKindOfClass();

  if (v24)
  {
    eventBody6 = [eventCopy eventBody];
    v8 = [(BMDistributedContextEventTranslation *)self contextSyncAppInFocusFromEvent:eventBody6];

    serialize = [v8 serialize];
    v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(v8, "dataVersion")}];
    v11 = getBMContextSyncAppInFocusIdentifier();
    goto LABEL_17;
  }

  v10 = 0;
  serialize = 0;
  v26 = 0;
LABEL_18:
  v27 = [[BMDistributedContextTranslatedEventMessage alloc] initWithStreamIdentifier:v26 eventData:serialize eventDataVersion:v10];

  return v27;
}

- (id)contextSyncLOIFromSemanticLocationEvent:(id)event
{
  eventCopy = event;
  isStarting = [eventCopy isStarting];
  userSpecificPlaceType = [eventCopy userSpecificPlaceType];
  placeType = [eventCopy placeType];

  v8 = objc_alloc(getBMContextSyncLOIClass());
  localDeviceIdentifier = self->_localDeviceIdentifier;
  v10 = [MEMORY[0x277CCABB0] numberWithBool:isStarting];
  v11 = [v8 initWithID:@"com.apple.biome.ContextSync" deviceUUID:localDeviceIdentifier starting:v10 userSpecificPlaceType:userSpecificPlaceType placeType:placeType];

  return v11;
}

- (id)contextSyncActivityLevelEventFromEvent:(id)event
{
  eventCopy = event;
  v5 = objc_opt_new();
  if ([eventCopy inUseStatus])
  {
    v6 = [objc_alloc(getBMContextSyncDeviceActivityLevelDeviceActivityStateClass()) initWithState:1];
    [v5 addObject:v6];
  }

  if (([eventCopy inUseStatus] & 2) != 0)
  {
    v7 = [objc_alloc(getBMContextSyncDeviceActivityLevelDeviceActivityStateClass()) initWithState:2];
    [v5 addObject:v7];
  }

  if (([eventCopy inUseStatus] & 4) != 0)
  {
    v8 = [objc_alloc(getBMContextSyncDeviceActivityLevelDeviceActivityStateClass()) initWithState:3];
    [v5 addObject:v8];
  }

  if (([eventCopy inUseStatus] & 8) != 0)
  {
    v9 = [objc_alloc(getBMContextSyncDeviceActivityLevelDeviceActivityStateClass()) initWithState:4];
    [v5 addObject:v9];
  }

  if (([eventCopy inUseStatus] & 0x10) != 0)
  {
    v10 = [objc_alloc(getBMContextSyncDeviceActivityLevelDeviceActivityStateClass()) initWithState:5];
    [v5 addObject:v10];
  }

  if (([eventCopy inUseStatus] & 0x20) != 0)
  {
    v11 = [objc_alloc(getBMContextSyncDeviceActivityLevelDeviceActivityStateClass()) initWithState:6];
    [v5 addObject:v11];
  }

  v12 = [objc_alloc(getBMContextSyncDeviceActivityLevelClass()) initWithID:@"com.apple.biome.ContextSync" deviceUUID:self->_localDeviceIdentifier deviceActivityState:v5];

  return v12;
}

- (id)contextSyncCellularStatusFromEvent:(id)event
{
  eventCopy = event;
  deviceType = [eventCopy deviceType];
  LODWORD(v6) = [eventCopy deviceRegistrationStatus];
  LODWORD(v7) = [eventCopy previousDeviceRegistrationStatus];
  if ([eventCopy hasAboveThreshold])
  {
    v8 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(eventCopy, "aboveThreshold")}];
  }

  else
  {
    v8 = 0;
  }

  if ((v7 - 1) >= 4)
  {
    v7 = 0;
  }

  else
  {
    v7 = v7;
  }

  if ((v6 - 1) >= 4)
  {
    v6 = 0;
  }

  else
  {
    v6 = v6;
  }

  if (deviceType == 2)
  {
    v9 = 2;
  }

  else
  {
    v9 = deviceType == 1;
  }

  v10 = objc_alloc(getBMContextSyncCellularAvailabilityStatusClass());
  localDeviceIdentifier = self->_localDeviceIdentifier;
  timeStamp = [eventCopy timeStamp];
  latestStrongTimeStamp = [eventCopy latestStrongTimeStamp];
  v14 = [v10 initWithID:@"com.apple.biome.ContextSync" deviceUUID:localDeviceIdentifier timeStamp:timeStamp deviceType:v9 deviceRegistrationStatus:v6 previousDeviceRegistrationStatus:v7 aboveThreshold:v8 latestStrongTimeStamp:latestStrongTimeStamp];

  return v14;
}

- (id)contextSyncWalletTransactionFromEvent:(id)event
{
  eventCopy = event;
  transactionType = [eventCopy transactionType];
  if (transactionType - 1 >= 6)
  {
    v6 = 0;
  }

  else
  {
    v6 = transactionType;
  }

  merchantType = [eventCopy merchantType];
  if ((merchantType - 1) >= 7)
  {
    v8 = 0;
  }

  else
  {
    v8 = merchantType;
  }

  v9 = objc_alloc(getBMContextSyncWalletTransactionClass());
  localDeviceIdentifier = self->_localDeviceIdentifier;
  passUniqueID = [eventCopy passUniqueID];
  passLocalizedDescription = [eventCopy passLocalizedDescription];
  transactionID = [eventCopy transactionID];
  poiCategory = [eventCopy poiCategory];
  LODWORD(v17) = v8;
  v15 = [v9 initWithID:@"com.apple.biome.ContextSync" deviceUUID:localDeviceIdentifier passUniqueID:passUniqueID passLocalizedDescription:passLocalizedDescription transactionType:v6 transactionID:transactionID merchantType:v17 poiCategory:poiCategory];

  return v15;
}

- (id)contextSyncAppInFocusFromEvent:(id)event
{
  eventCopy = event;
  v4 = objc_alloc(getBMAppInFocusClass());
  launchReason = [eventCopy launchReason];
  type = [eventCopy type];
  v20 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(eventCopy, "starting")}];
  absoluteTimestamp = [eventCopy absoluteTimestamp];
  bundleID = [eventCopy bundleID];
  parentBundleID = [eventCopy parentBundleID];
  extensionHostID = [eventCopy extensionHostID];
  shortVersionString = [eventCopy shortVersionString];
  exactVersionString = [eventCopy exactVersionString];
  v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(eventCopy, "dyldPlatform")}];
  v11 = MEMORY[0x277CCABB0];
  isNativeArchitecture = [eventCopy isNativeArchitecture];

  v13 = [v11 numberWithBool:isNativeArchitecture];
  v16 = [v4 initWithLaunchReason:launchReason type:type starting:v20 absoluteTimestamp:absoluteTimestamp bundleID:bundleID parentBundleID:parentBundleID extensionHostID:extensionHostID shortVersionString:shortVersionString exactVersionString:exactVersionString dyldPlatform:v10 isNativeArchitecture:v13];

  v14 = [objc_alloc(getBMContextSyncAppInFocusClass()) initWithID:@"com.apple.biome.ContextSync" deviceUUID:self->_localDeviceIdentifier AppInFocus:v16];

  return v14;
}

@end