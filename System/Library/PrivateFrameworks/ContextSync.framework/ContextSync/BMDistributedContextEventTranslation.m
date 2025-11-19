@interface BMDistributedContextEventTranslation
- (BMDistributedContextEventTranslation)initWithLocalDeviceIdentifier:(id)a3;
- (id)contextSyncActivityLevelEventFromEvent:(id)a3;
- (id)contextSyncAppInFocusFromEvent:(id)a3;
- (id)contextSyncCellularStatusFromEvent:(id)a3;
- (id)contextSyncLOIFromSemanticLocationEvent:(id)a3;
- (id)contextSyncWalletTransactionFromEvent:(id)a3;
- (id)translateEvent:(id)a3;
@end

@implementation BMDistributedContextEventTranslation

- (BMDistributedContextEventTranslation)initWithLocalDeviceIdentifier:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = BMDistributedContextEventTranslation;
  v6 = [(BMDistributedContextEventTranslation *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_localDeviceIdentifier, a3);
  }

  return v7;
}

- (id)translateEvent:(id)a3
{
  v4 = a3;
  v5 = [v4 eventBody];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  v7 = [v4 eventBody];
  if (isKindOfClass)
  {
    v8 = [(BMDistributedContextEventTranslation *)self contextSyncLOIFromSemanticLocationEvent:v7];

    v9 = [v8 serialize];
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

  v15 = [v4 eventBody];
  if (v14)
  {
    v8 = [(BMDistributedContextEventTranslation *)self contextSyncActivityLevelEventFromEvent:v15];

    v9 = [v8 serialize];
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

  v19 = [v4 eventBody];
  if (v18)
  {
    v8 = [(BMDistributedContextEventTranslation *)self contextSyncCellularStatusFromEvent:v19];

    v9 = [v8 serialize];
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

  v23 = [v4 eventBody];
  if (v22)
  {
    v8 = [(BMDistributedContextEventTranslation *)self contextSyncWalletTransactionFromEvent:v23];

    v9 = [v8 serialize];
    v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(v8, "dataVersion")}];
    v11 = getBMContextSyncWalletTransactionIdentifier();
    goto LABEL_17;
  }

  getBMAppInFocusClass();
  v24 = objc_opt_isKindOfClass();

  if (v24)
  {
    v25 = [v4 eventBody];
    v8 = [(BMDistributedContextEventTranslation *)self contextSyncAppInFocusFromEvent:v25];

    v9 = [v8 serialize];
    v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(v8, "dataVersion")}];
    v11 = getBMContextSyncAppInFocusIdentifier();
    goto LABEL_17;
  }

  v10 = 0;
  v9 = 0;
  v26 = 0;
LABEL_18:
  v27 = [[BMDistributedContextTranslatedEventMessage alloc] initWithStreamIdentifier:v26 eventData:v9 eventDataVersion:v10];

  return v27;
}

- (id)contextSyncLOIFromSemanticLocationEvent:(id)a3
{
  v4 = a3;
  v5 = [v4 isStarting];
  v6 = [v4 userSpecificPlaceType];
  v7 = [v4 placeType];

  v8 = objc_alloc(getBMContextSyncLOIClass());
  localDeviceIdentifier = self->_localDeviceIdentifier;
  v10 = [MEMORY[0x277CCABB0] numberWithBool:v5];
  v11 = [v8 initWithID:@"com.apple.biome.ContextSync" deviceUUID:localDeviceIdentifier starting:v10 userSpecificPlaceType:v6 placeType:v7];

  return v11;
}

- (id)contextSyncActivityLevelEventFromEvent:(id)a3
{
  v4 = a3;
  v5 = objc_opt_new();
  if ([v4 inUseStatus])
  {
    v6 = [objc_alloc(getBMContextSyncDeviceActivityLevelDeviceActivityStateClass()) initWithState:1];
    [v5 addObject:v6];
  }

  if (([v4 inUseStatus] & 2) != 0)
  {
    v7 = [objc_alloc(getBMContextSyncDeviceActivityLevelDeviceActivityStateClass()) initWithState:2];
    [v5 addObject:v7];
  }

  if (([v4 inUseStatus] & 4) != 0)
  {
    v8 = [objc_alloc(getBMContextSyncDeviceActivityLevelDeviceActivityStateClass()) initWithState:3];
    [v5 addObject:v8];
  }

  if (([v4 inUseStatus] & 8) != 0)
  {
    v9 = [objc_alloc(getBMContextSyncDeviceActivityLevelDeviceActivityStateClass()) initWithState:4];
    [v5 addObject:v9];
  }

  if (([v4 inUseStatus] & 0x10) != 0)
  {
    v10 = [objc_alloc(getBMContextSyncDeviceActivityLevelDeviceActivityStateClass()) initWithState:5];
    [v5 addObject:v10];
  }

  if (([v4 inUseStatus] & 0x20) != 0)
  {
    v11 = [objc_alloc(getBMContextSyncDeviceActivityLevelDeviceActivityStateClass()) initWithState:6];
    [v5 addObject:v11];
  }

  v12 = [objc_alloc(getBMContextSyncDeviceActivityLevelClass()) initWithID:@"com.apple.biome.ContextSync" deviceUUID:self->_localDeviceIdentifier deviceActivityState:v5];

  return v12;
}

- (id)contextSyncCellularStatusFromEvent:(id)a3
{
  v4 = a3;
  v5 = [v4 deviceType];
  LODWORD(v6) = [v4 deviceRegistrationStatus];
  LODWORD(v7) = [v4 previousDeviceRegistrationStatus];
  if ([v4 hasAboveThreshold])
  {
    v8 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v4, "aboveThreshold")}];
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

  if (v5 == 2)
  {
    v9 = 2;
  }

  else
  {
    v9 = v5 == 1;
  }

  v10 = objc_alloc(getBMContextSyncCellularAvailabilityStatusClass());
  localDeviceIdentifier = self->_localDeviceIdentifier;
  v12 = [v4 timeStamp];
  v13 = [v4 latestStrongTimeStamp];
  v14 = [v10 initWithID:@"com.apple.biome.ContextSync" deviceUUID:localDeviceIdentifier timeStamp:v12 deviceType:v9 deviceRegistrationStatus:v6 previousDeviceRegistrationStatus:v7 aboveThreshold:v8 latestStrongTimeStamp:v13];

  return v14;
}

- (id)contextSyncWalletTransactionFromEvent:(id)a3
{
  v4 = a3;
  v5 = [v4 transactionType];
  if (v5 - 1 >= 6)
  {
    v6 = 0;
  }

  else
  {
    v6 = v5;
  }

  v7 = [v4 merchantType];
  if ((v7 - 1) >= 7)
  {
    v8 = 0;
  }

  else
  {
    v8 = v7;
  }

  v9 = objc_alloc(getBMContextSyncWalletTransactionClass());
  localDeviceIdentifier = self->_localDeviceIdentifier;
  v11 = [v4 passUniqueID];
  v12 = [v4 passLocalizedDescription];
  v13 = [v4 transactionID];
  v14 = [v4 poiCategory];
  LODWORD(v17) = v8;
  v15 = [v9 initWithID:@"com.apple.biome.ContextSync" deviceUUID:localDeviceIdentifier passUniqueID:v11 passLocalizedDescription:v12 transactionType:v6 transactionID:v13 merchantType:v17 poiCategory:v14];

  return v15;
}

- (id)contextSyncAppInFocusFromEvent:(id)a3
{
  v3 = a3;
  v4 = objc_alloc(getBMAppInFocusClass());
  v5 = [v3 launchReason];
  v6 = [v3 type];
  v20 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v3, "starting")}];
  v19 = [v3 absoluteTimestamp];
  v18 = [v3 bundleID];
  v17 = [v3 parentBundleID];
  v7 = [v3 extensionHostID];
  v8 = [v3 shortVersionString];
  v9 = [v3 exactVersionString];
  v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(v3, "dyldPlatform")}];
  v11 = MEMORY[0x277CCABB0];
  v12 = [v3 isNativeArchitecture];

  v13 = [v11 numberWithBool:v12];
  v16 = [v4 initWithLaunchReason:v5 type:v6 starting:v20 absoluteTimestamp:v19 bundleID:v18 parentBundleID:v17 extensionHostID:v7 shortVersionString:v8 exactVersionString:v9 dyldPlatform:v10 isNativeArchitecture:v13];

  v14 = [objc_alloc(getBMContextSyncAppInFocusClass()) initWithID:@"com.apple.biome.ContextSync" deviceUUID:self->_localDeviceIdentifier AppInFocus:v16];

  return v14;
}

@end