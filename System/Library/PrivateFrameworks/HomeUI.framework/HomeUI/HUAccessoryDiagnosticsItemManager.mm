@interface HUAccessoryDiagnosticsItemManager
- (BOOL)collectionInProgress;
- (HUAccessoryDiagnosticsItemManager)initWithDelegate:(id)delegate sourceItem:(id)item;
- (NSArray)collectionFailures;
- (id)_beginMatterDiagnosticCollectionForDevice:(id)device type:(int64_t)type;
- (id)_buildItemProvidersForHome:(id)home;
- (id)_buildSectionsWithDisplayedItems:(id)items;
- (id)availableLogs;
- (void)_beginHAPDiagnosticCollection:(id)collection;
- (void)_beginMatterDiagnosticCollection;
- (void)_loadDownloadedLogs;
- (void)_registerForExternalUpdates;
- (void)_setLoggingOption:(int64_t)option enable:(BOOL)enable;
- (void)_unregisterForExternalUpdates;
- (void)addCollectionFailure:(id)failure;
- (void)beginDiagnosticCollection:(id)collection;
- (void)recordDownloadedLog:(id)log;
- (void)recordDownloadedMatterLog:(id)log forType:(int64_t)type;
- (void)resetCollectionFailures;
- (void)setAudioClipLoggingEnabled:(BOOL)enabled;
- (void)setCollectionInProgress:(BOOL)progress;
- (void)setVerboseLoggingEnabled:(BOOL)enabled;
@end

@implementation HUAccessoryDiagnosticsItemManager

- (HUAccessoryDiagnosticsItemManager)initWithDelegate:(id)delegate sourceItem:(id)item
{
  v83[1] = *MEMORY[0x277D85DE8];
  delegateCopy = delegate;
  itemCopy = item;
  if (!itemCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"HUAccessoryDiagnosticsItemManager.m" lineNumber:55 description:{@"Invalid parameter not satisfying: %@", @"sourceItem"}];
  }

  v9 = [itemCopy copy];
  v81.receiver = self;
  v81.super_class = HUAccessoryDiagnosticsItemManager;
  v10 = [(HFItemManager *)&v81 initWithDelegate:delegateCopy sourceItem:v9];

  if (v10)
  {
    sourceItem = [(HFItemManager *)v10 sourceItem];
    if ([sourceItem conformsToProtocol:&unk_28251AF08])
    {
      v12 = sourceItem;
    }

    else
    {
      v12 = 0;
    }

    v13 = v12;

    accessories = [v13 accessories];

    anyObject = [accessories anyObject];
    sourceAccessory = v10->_sourceAccessory;
    v10->_sourceAccessory = anyObject;

    if (!v10->_sourceAccessory)
    {
      currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
      [currentHandler2 handleFailureInMethod:a2 object:v10 file:@"HUAccessoryDiagnosticsItemManager.m" lineNumber:72 description:@"Could not get source accessory!"];
    }

    sourceAccessory = [(HUAccessoryDiagnosticsItemManager *)v10 sourceAccessory];
    supportsCHIP = [sourceAccessory supportsCHIP];

    if ((supportsCHIP & 1) == 0)
    {
      v19 = objc_alloc(MEMORY[0x277D14B38]);
      v79[0] = MEMORY[0x277D85DD0];
      v79[1] = 3221225472;
      v79[2] = __65__HUAccessoryDiagnosticsItemManager_initWithDelegate_sourceItem___block_invoke;
      v79[3] = &unk_277DB7478;
      v20 = v10;
      v80 = v20;
      v21 = [v19 initWithResultsBlock:v79];
      fetchManufacturerSnapshotButtonItem = v20->_fetchManufacturerSnapshotButtonItem;
      v20->_fetchManufacturerSnapshotButtonItem = v21;
    }

    v23 = [HUInstructionsItem alloc];
    v77[0] = MEMORY[0x277D85DD0];
    v77[1] = 3221225472;
    v77[2] = __65__HUAccessoryDiagnosticsItemManager_initWithDelegate_sourceItem___block_invoke_2;
    v77[3] = &unk_277DB7478;
    v24 = v10;
    v78 = v24;
    v25 = [(HFStaticItem *)v23 initWithResultsBlock:v77];
    logCollectionFailedItem = v24->_logCollectionFailedItem;
    v24->_logCollectionFailedItem = v25;

    if ([MEMORY[0x277D14CE8] isInternalInstall])
    {
      v71 = accessories;
      objc_opt_class();
      sourceItem2 = [(HFItemManager *)v24 sourceItem];
      if (objc_opt_isKindOfClass())
      {
        v28 = sourceItem2;
      }

      else
      {
        v28 = 0;
      }

      v29 = v28;

      v72 = delegateCopy;
      if (v29)
      {
        accessories2 = [v29 accessories];
        if ([accessories2 count] != 1)
        {
          NSLog(&cfstr_ExpectedOneAcc_0.isa, accessories2);
        }

        anyObject2 = [accessories2 anyObject];
        services = [anyObject2 services];
        v33 = [services na_firstObjectPassingTest:&__block_literal_global_221];

        services2 = [MEMORY[0x277CBEB98] setWithObject:v33];
        valueSource = [v29 valueSource];
      }

      else
      {
        sourceItem3 = [(HFItemManager *)v24 sourceItem];
        if ([sourceItem3 conformsToProtocol:&unk_28251B0C8])
        {
          v37 = sourceItem3;
        }

        else
        {
          v37 = 0;
        }

        accessories2 = v37;

        valueSource = [accessories2 valueSource];
        services2 = [accessories2 services];
      }

      if (valueSource)
      {
        v38 = objc_alloc(MEMORY[0x277D14AF8]);
        anyObject3 = [services2 anyObject];
        [anyObject3 hf_serviceDescriptor];
        v40 = v70 = v29;
        v69 = [v38 initWithValueSource:valueSource services:services2 primaryServiceDescriptor:v40];

        v41 = objc_alloc(MEMORY[0x277D142C0]);
        v82 = *MEMORY[0x277D13FB8];
        v83[0] = MEMORY[0x277CBEC38];
        v42 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v83 forKeys:&v82 count:1];
        v43 = [v41 initWithValueSource:v69 displayResults:v42];
        diagnosticsModesItem = v24->_diagnosticsModesItem;
        v24->_diagnosticsModesItem = v43;

        v45 = objc_alloc(MEMORY[0x277D14C30]);
        v46 = [(HFAccessoryDiagnosticsControlItem *)v24->_diagnosticsModesItem copy];
        v47 = [v45 initWithSourceItem:v46 transformationBlock:&__block_literal_global_124_3];
        enableVerboseLoggingItem = v24->_enableVerboseLoggingItem;
        v24->_enableVerboseLoggingItem = v47;

        v49 = objc_alloc(MEMORY[0x277D14C30]);
        v50 = [(HFAccessoryDiagnosticsControlItem *)v24->_diagnosticsModesItem copy];
        v51 = v49;
        v29 = v70;
        v52 = [v51 initWithSourceItem:v50 transformationBlock:&__block_literal_global_129_0];
        enableAudioClipLoggingItem = v24->_enableAudioClipLoggingItem;
        v24->_enableAudioClipLoggingItem = v52;
      }

      accessories = v71;
      delegateCopy = v72;
    }

    v54 = HFPreferencesBooleanValueForKey();
    sourceAccessory2 = [(HUAccessoryDiagnosticsItemManager *)v24 sourceAccessory];
    supportsCHIP2 = [sourceAccessory2 supportsCHIP];

    if (supportsCHIP2)
    {
      v57 = dispatch_queue_create("com.apple.Home.MatterLogsQueue", 0);
      v58 = &OBJC_IVAR___HUAccessoryDiagnosticsItemManager__fetchMatterSnapshotButtonItem;
      matterDispatchQueue = v24->_matterDispatchQueue;
      v24->_matterDispatchQueue = v57;

      v60 = objc_alloc(MEMORY[0x277D14B38]);
      v75[0] = MEMORY[0x277D85DD0];
      v75[1] = 3221225472;
      v75[2] = __65__HUAccessoryDiagnosticsItemManager_initWithDelegate_sourceItem___block_invoke_4;
      v75[3] = &unk_277DB7478;
      v61 = &v76;
      v76 = v24;
      v62 = [v60 initWithResultsBlock:v75];
    }

    else
    {
      if (v54 != 2)
      {
LABEL_31:
        [(HUAccessoryDiagnosticsItemManager *)v24 _loadDownloadedLogs];

        goto LABEL_32;
      }

      v63 = objc_alloc(MEMORY[0x277D14B38]);
      v73[0] = MEMORY[0x277D85DD0];
      v73[1] = 3221225472;
      v73[2] = __65__HUAccessoryDiagnosticsItemManager_initWithDelegate_sourceItem___block_invoke_5;
      v73[3] = &unk_277DB7478;
      v61 = &v74;
      v74 = v24;
      v62 = [v63 initWithResultsBlock:v73];
      v58 = &OBJC_IVAR___HUAccessoryDiagnosticsItemManager__fetchADKSnapshotButtonItem;
    }

    v64 = *v58;
    v65 = *(&v24->super.super.isa + v64);
    *(&v24->super.super.isa + v64) = v62;

    goto LABEL_31;
  }

LABEL_32:

  return v10;
}

id __65__HUAccessoryDiagnosticsItemManager_initWithDelegate_sourceItem___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277CBEB38] dictionary];
  v3 = _HULocalizedStringWithDefaultValue(@"HUAccessoryDiagnosticsGenerateButtonTitle", @"HUAccessoryDiagnosticsGenerateButtonTitle", 1);
  [v2 setObject:v3 forKeyedSubscript:*MEMORY[0x277D13F60]];

  v4 = [*(a1 + 32) sourceAccessory];
  v5 = [v4 supportedDiagnostics];
  v6 = [v5 supportedTypes];

  v7 = [MEMORY[0x277CCABB0] numberWithInt:(v6 & 1) == 0];
  [v2 setObject:v7 forKeyedSubscript:*MEMORY[0x277D13FB8]];

  v8 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(*(a1 + 32), "collectionInProgress")}];
  [v2 setObject:v8 forKeyedSubscript:@"HUAccessoryDiagnosticsInProgress"];

  v9 = [MEMORY[0x277D2C900] futureWithResult:v2];

  return v9;
}

id __65__HUAccessoryDiagnosticsItemManager_initWithDelegate_sourceItem___block_invoke_2(uint64_t a1)
{
  v2 = [MEMORY[0x277CBEB38] dictionary];
  v3 = _HULocalizedStringWithDefaultValue(@"HUAccessoryDiagnosticsDownloadFailedMessage", @"HUAccessoryDiagnosticsDownloadFailedMessage", 1);
  if ([MEMORY[0x277D14CE8] isInternalInstall])
  {
    v4 = [*(a1 + 32) collectionFailures];
    v5 = [v4 count];
    v6 = [*(a1 + 32) collectionFailures];
    v7 = [v6 valueForKey:@"description"];
    v8 = [v3 stringByAppendingFormat:@"\n[INTERNAL] Encountered %lu errors: %@", v5, v7];

    v3 = v8;
  }

  [v2 setObject:&unk_282491E68 forKeyedSubscript:@"instructionsStyle"];
  [v2 setObject:v3 forKeyedSubscript:*MEMORY[0x277D13E20]];
  v9 = MEMORY[0x277CCABB0];
  v10 = [*(a1 + 32) collectionFailures];
  v11 = [v9 numberWithInt:{objc_msgSend(v10, "count") == 0}];
  [v2 setObject:v11 forKeyedSubscript:*MEMORY[0x277D13FB8]];

  v12 = [MEMORY[0x277D2C900] futureWithResult:v2];

  return v12;
}

uint64_t __65__HUAccessoryDiagnosticsItemManager_initWithDelegate_sourceItem___block_invoke_85(uint64_t a1, void *a2)
{
  v2 = [a2 serviceType];
  v3 = [v2 isEqualToString:*MEMORY[0x277CD0E28]];

  return v3;
}

id __65__HUAccessoryDiagnosticsItemManager_initWithDelegate_sourceItem___block_invoke_2_121(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277CBEB38];
  v3 = a2;
  v4 = [v2 dictionary];
  v5 = [v3 objectForKeyedSubscript:*MEMORY[0x277D13810]];
  v6 = ([v5 integerValue] & 2) == 0;
  v7 = [MEMORY[0x277CCABB0] numberWithInt:v6];
  [v4 setObject:v7 forKeyedSubscript:*MEMORY[0x277D13FB8]];

  v8 = _HULocalizedStringWithDefaultValue(@"HUAccessoryDiagnosticsLoggingOptionVerboseLabel", @"HUAccessoryDiagnosticsLoggingOptionVerboseLabel", 1);
  [v4 setObject:v8 forKeyedSubscript:*MEMORY[0x277D13F60]];

  v9 = [v3 objectForKeyedSubscript:*MEMORY[0x277D13818]];

  if (([v9 integerValue] & 2) != 0)
  {
    v10 = 2;
  }

  else
  {
    v10 = 1;
  }

  v11 = [MEMORY[0x277CCABB0] numberWithInteger:v10];
  [v4 setObject:v11 forKeyedSubscript:*MEMORY[0x277D14068]];

  return v4;
}

id __65__HUAccessoryDiagnosticsItemManager_initWithDelegate_sourceItem___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = objc_opt_new();
  v4 = [v2 objectForKeyedSubscript:*MEMORY[0x277D13810]];
  v5 = [v4 integerValue];
  v6 = [MEMORY[0x277CCABB0] numberWithInt:(v5 & 1) == 0];
  [v3 setObject:v6 forKeyedSubscript:*MEMORY[0x277D13FB8]];

  v7 = _HULocalizedStringWithDefaultValue(@"HUAccessoryDiagnosticsLoggingOptionIncludeAudioClipsLabel", @"HUAccessoryDiagnosticsLoggingOptionIncludeAudioClipsLabel", 1);
  [v3 setObject:v7 forKeyedSubscript:*MEMORY[0x277D13F60]];

  v8 = [v2 objectForKeyedSubscript:*MEMORY[0x277D13818]];

  if ([v8 integerValue])
  {
    v9 = 2;
  }

  else
  {
    v9 = 1;
  }

  v10 = [MEMORY[0x277CCABB0] numberWithInteger:v9];
  [v3 setObject:v10 forKeyedSubscript:*MEMORY[0x277D14068]];

  return v3;
}

id __65__HUAccessoryDiagnosticsItemManager_initWithDelegate_sourceItem___block_invoke_4(uint64_t a1)
{
  v2 = [MEMORY[0x277CBEB38] dictionary];
  v3 = _HULocalizedStringWithDefaultValue(@"HUAccessoryDiagnosticsFetchMatterSnapshotButtonTitle", @"HUAccessoryDiagnosticsFetchMatterSnapshotButtonTitle", 1);
  [v2 setObject:v3 forKeyedSubscript:*MEMORY[0x277D13F60]];

  [v2 setObject:MEMORY[0x277CBEC28] forKeyedSubscript:*MEMORY[0x277D13FB8]];
  v4 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(*(a1 + 32), "collectionInProgress")}];
  [v2 setObject:v4 forKeyedSubscript:@"HUAccessoryDiagnosticsInProgress"];

  v5 = [MEMORY[0x277D2C900] futureWithResult:v2];

  return v5;
}

id __65__HUAccessoryDiagnosticsItemManager_initWithDelegate_sourceItem___block_invoke_5(uint64_t a1)
{
  v2 = [MEMORY[0x277CBEB38] dictionary];
  v3 = _HULocalizedStringWithDefaultValue(@"HUAccessoryDiagnosticsFetchADKSnapshotButtonTitle", @"HUAccessoryDiagnosticsFetchADKSnapshotButtonTitle", 1);
  [v2 setObject:v3 forKeyedSubscript:*MEMORY[0x277D13F60]];

  v4 = [*(a1 + 32) sourceAccessory];
  v5 = [v4 supportedDiagnostics];
  v6 = ([v5 supportedTypes] & 2) == 0;

  v7 = [MEMORY[0x277CCABB0] numberWithInt:v6];
  [v2 setObject:v7 forKeyedSubscript:*MEMORY[0x277D13FB8]];

  v8 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(*(a1 + 32), "collectionInProgress")}];
  [v2 setObject:v8 forKeyedSubscript:@"HUAccessoryDiagnosticsInProgress"];

  v9 = [MEMORY[0x277D2C900] futureWithResult:v2];

  return v9;
}

- (id)_buildItemProvidersForHome:(id)home
{
  v16[2] = *MEMORY[0x277D85DE8];
  v4 = [MEMORY[0x277CBEB58] set];
  fetchManufacturerSnapshotButtonItem = [(HUAccessoryDiagnosticsItemManager *)self fetchManufacturerSnapshotButtonItem];
  [v4 na_safeAddObject:fetchManufacturerSnapshotButtonItem];

  logCollectionFailedItem = [(HUAccessoryDiagnosticsItemManager *)self logCollectionFailedItem];
  [v4 na_safeAddObject:logCollectionFailedItem];

  fetchADKSnapshotButtonItem = [(HUAccessoryDiagnosticsItemManager *)self fetchADKSnapshotButtonItem];
  [v4 na_safeAddObject:fetchADKSnapshotButtonItem];

  fetchMatterSnapshotButtonItem = [(HUAccessoryDiagnosticsItemManager *)self fetchMatterSnapshotButtonItem];
  [v4 na_safeAddObject:fetchMatterSnapshotButtonItem];

  diagnosticsModesItem = [(HUAccessoryDiagnosticsItemManager *)self diagnosticsModesItem];
  [v4 na_safeAddObject:diagnosticsModesItem];

  enableVerboseLoggingItem = [(HUAccessoryDiagnosticsItemManager *)self enableVerboseLoggingItem];
  [v4 na_safeAddObject:enableVerboseLoggingItem];

  enableAudioClipLoggingItem = [(HUAccessoryDiagnosticsItemManager *)self enableAudioClipLoggingItem];
  [v4 na_safeAddObject:enableAudioClipLoggingItem];

  v12 = [objc_alloc(MEMORY[0x277D14B40]) initWithItems:v4];
  v16[0] = v12;
  v13 = [[HUAccessoryDiagnosticsItemProvider alloc] initWithItemManager:self];
  v16[1] = v13;
  v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:2];

  return v14;
}

- (id)_buildSectionsWithDisplayedItems:(id)items
{
  v37[1] = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x277CBEB18];
  itemsCopy = items;
  allObjects = [itemsCopy allObjects];
  v6 = [v4 arrayWithArray:allObjects];

  v7 = objc_alloc_init(MEMORY[0x277CBEB18]);
  fetchManufacturerSnapshotButtonItem = [(HUAccessoryDiagnosticsItemManager *)self fetchManufacturerSnapshotButtonItem];
  [v7 na_safeAddObject:fetchManufacturerSnapshotButtonItem];

  logCollectionFailedItem = [(HUAccessoryDiagnosticsItemManager *)self logCollectionFailedItem];
  [v7 na_safeAddObject:logCollectionFailedItem];

  enableVerboseLoggingItem = [(HUAccessoryDiagnosticsItemManager *)self enableVerboseLoggingItem];
  [v7 na_safeAddObject:enableVerboseLoggingItem];

  enableAudioClipLoggingItem = [(HUAccessoryDiagnosticsItemManager *)self enableAudioClipLoggingItem];
  [v7 na_safeAddObject:enableAudioClipLoggingItem];

  fetchADKSnapshotButtonItem = [(HUAccessoryDiagnosticsItemManager *)self fetchADKSnapshotButtonItem];
  [v7 na_safeAddObject:fetchADKSnapshotButtonItem];

  fetchMatterSnapshotButtonItem = [(HUAccessoryDiagnosticsItemManager *)self fetchMatterSnapshotButtonItem];
  [v7 na_safeAddObject:fetchMatterSnapshotButtonItem];

  [v6 removeObjectsInArray:v7];
  defaultItemComparator = [MEMORY[0x277D14778] defaultItemComparator];
  [v6 sortUsingComparator:defaultItemComparator];

  v15 = [objc_alloc(MEMORY[0x277D14850]) initWithIdentifier:@"Logs"];
  [v15 setItems:v6];
  v16 = _HULocalizedStringWithDefaultValue(@"HUAccessoryAvailableDiagnosticForShareFooter", @"HUAccessoryAvailableDiagnosticForShareFooter", 1);
  [v15 setFooterTitle:v16];

  v17 = [objc_alloc(MEMORY[0x277D14850]) initWithIdentifier:@"GenerateButton"];
  v18 = objc_alloc_init(MEMORY[0x277CBEB18]);
  fetchManufacturerSnapshotButtonItem2 = [(HUAccessoryDiagnosticsItemManager *)self fetchManufacturerSnapshotButtonItem];
  [v18 na_safeAddObject:fetchManufacturerSnapshotButtonItem2];

  fetchADKSnapshotButtonItem2 = [(HUAccessoryDiagnosticsItemManager *)self fetchADKSnapshotButtonItem];
  [v18 na_safeAddObject:fetchADKSnapshotButtonItem2];

  fetchMatterSnapshotButtonItem2 = [(HUAccessoryDiagnosticsItemManager *)self fetchMatterSnapshotButtonItem];
  [v18 na_safeAddObject:fetchMatterSnapshotButtonItem2];

  [v17 setItems:v18];
  v22 = _HULocalizedStringWithDefaultValue(@"HUAccessoryDiagnosticsGenerateButtonFooter", @"HUAccessoryDiagnosticsGenerateButtonFooter", 1);
  [v17 setFooterTitle:v22];

  v23 = [objc_alloc(MEMORY[0x277D14850]) initWithIdentifier:@"CollectionFailed"];
  logCollectionFailedItem2 = [(HUAccessoryDiagnosticsItemManager *)self logCollectionFailedItem];
  v37[0] = logCollectionFailedItem2;
  v25 = [MEMORY[0x277CBEA60] arrayWithObjects:v37 count:1];
  [v23 setItems:v25];

  v26 = [objc_alloc(MEMORY[0x277D14850]) initWithIdentifier:@"LoggingOptions"];
  if ([MEMORY[0x277D14CE8] isInternalInstall])
  {
    v27 = _HULocalizedStringWithDefaultValue(@"HUAccessoryDiagnosticsInternalSettingsHeader", @"HUAccessoryDiagnosticsInternalSettingsHeader", 1);
    [v26 setHeaderTitle:v27];

    v28 = _HULocalizedStringWithDefaultValue(@"HUAccessoryDiagnosticsInternalSettingsFooter", @"HUAccessoryDiagnosticsInternalSettingsFooter", 1);
    [v26 setFooterTitle:v28];

    array = [MEMORY[0x277CBEB18] array];
    enableVerboseLoggingItem2 = [(HUAccessoryDiagnosticsItemManager *)self enableVerboseLoggingItem];
    [array na_safeAddObject:enableVerboseLoggingItem2];

    enableAudioClipLoggingItem2 = [(HUAccessoryDiagnosticsItemManager *)self enableAudioClipLoggingItem];
    [array na_safeAddObject:enableAudioClipLoggingItem2];

    [v26 setItems:array];
  }

  v36[0] = v15;
  v36[1] = v17;
  v36[2] = v23;
  v36[3] = v26;
  v32 = [MEMORY[0x277CBEA60] arrayWithObjects:v36 count:4];
  v33 = [MEMORY[0x277D14778] filterSections:v32 toDisplayedItems:itemsCopy];

  return v33;
}

- (void)_registerForExternalUpdates
{
  v5.receiver = self;
  v5.super_class = HUAccessoryDiagnosticsItemManager;
  [(HFItemManager *)&v5 _registerForExternalUpdates];
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  sourceAccessory = [(HUAccessoryDiagnosticsItemManager *)self sourceAccessory];
  [defaultCenter addObserver:self selector:sel_didChangeNotification_ name:@"HUAccessoryDiagnosticsDidChange" object:sourceAccessory];
}

- (void)_unregisterForExternalUpdates
{
  v5.receiver = self;
  v5.super_class = HUAccessoryDiagnosticsItemManager;
  [(HFItemManager *)&v5 _unregisterForExternalUpdates];
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  sourceAccessory = [(HUAccessoryDiagnosticsItemManager *)self sourceAccessory];
  [defaultCenter removeObserver:self name:@"HUAccessoryDiagnosticsDidChange" object:sourceAccessory];
}

- (BOOL)collectionInProgress
{
  sourceAccessory = [(HUAccessoryDiagnosticsItemManager *)self sourceAccessory];
  v3 = objc_getAssociatedObject(sourceAccessory, "hu_diagnosticLogsInProgress");

  LOBYTE(sourceAccessory) = [v3 BOOLValue];
  return sourceAccessory;
}

- (void)setCollectionInProgress:(BOOL)progress
{
  progressCopy = progress;
  object = [(HUAccessoryDiagnosticsItemManager *)self sourceAccessory];
  v4 = [MEMORY[0x277CCABB0] numberWithBool:progressCopy];
  objc_setAssociatedObject(object, "hu_diagnosticLogsInProgress", v4, 0x301);
}

- (NSArray)collectionFailures
{
  sourceAccessory = [(HUAccessoryDiagnosticsItemManager *)self sourceAccessory];
  v3 = objc_getAssociatedObject(sourceAccessory, "hu_diagnosticLogsLastDownloadFailed");

  return v3;
}

- (void)addCollectionFailure:(id)failure
{
  v9[1] = *MEMORY[0x277D85DE8];
  failureCopy = failure;
  sourceAccessory = [(HUAccessoryDiagnosticsItemManager *)self sourceAccessory];
  v6 = objc_getAssociatedObject(sourceAccessory, "hu_diagnosticLogsLastDownloadFailed");

  if (v6)
  {
    v7 = [v6 arrayByAddingObject:failureCopy];
  }

  else
  {
    v9[0] = failureCopy;
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:1];
  }

  sourceAccessory2 = [(HUAccessoryDiagnosticsItemManager *)self sourceAccessory];
  objc_setAssociatedObject(sourceAccessory2, "hu_diagnosticLogsLastDownloadFailed", v7, 0x301);
}

- (void)resetCollectionFailures
{
  sourceAccessory = [(HUAccessoryDiagnosticsItemManager *)self sourceAccessory];
  objc_setAssociatedObject(sourceAccessory, "hu_diagnosticLogsLastDownloadFailed", 0, 0x301);
}

- (void)beginDiagnosticCollection:(id)collection
{
  collectionCopy = collection;
  fetchManufacturerSnapshotButtonItem = [(HUAccessoryDiagnosticsItemManager *)self fetchManufacturerSnapshotButtonItem];
  if (fetchManufacturerSnapshotButtonItem == collectionCopy)
  {
    goto LABEL_6;
  }

  fetchADKSnapshotButtonItem = [(HUAccessoryDiagnosticsItemManager *)self fetchADKSnapshotButtonItem];
  v8 = fetchADKSnapshotButtonItem;
  if (fetchADKSnapshotButtonItem == collectionCopy)
  {

LABEL_6:
    goto LABEL_7;
  }

  fetchMatterSnapshotButtonItem = [(HUAccessoryDiagnosticsItemManager *)self fetchMatterSnapshotButtonItem];

  if (fetchMatterSnapshotButtonItem != collectionCopy)
  {
    v10 = NSStringFromSelector(a2);
    NSLog(&cfstr_CalledWithUnex.isa, v10, collectionCopy);
LABEL_10:

    goto LABEL_15;
  }

LABEL_7:
  if ([(HUAccessoryDiagnosticsItemManager *)self collectionInProgress])
  {
    v10 = HFLogForCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_20CEB6000, v10, OS_LOG_TYPE_DEFAULT, "Ignoring request to begin diagnostic collection because a collection is already in progress", buf, 2u);
    }

    goto LABEL_10;
  }

  [(HUAccessoryDiagnosticsItemManager *)self setCollectionInProgress:1];
  v11 = [(HFItemManager *)self reloadAndUpdateAllItemsFromSenderSelector:a2];
  [(HUAccessoryDiagnosticsItemManager *)self resetCollectionFailures];
  mEMORY[0x277D146E8] = [MEMORY[0x277D146E8] sharedDispatcher];
  homeManager = [mEMORY[0x277D146E8] homeManager];
  hasOptedToHH2 = [homeManager hasOptedToHH2];

  sourceAccessory = [(HUAccessoryDiagnosticsItemManager *)self sourceAccessory];
  LODWORD(homeManager) = [sourceAccessory supportsCHIP];

  if (homeManager && hasOptedToHH2)
  {
    [(HUAccessoryDiagnosticsItemManager *)self _beginMatterDiagnosticCollection];
  }

  else
  {
    [(HUAccessoryDiagnosticsItemManager *)self _beginHAPDiagnosticCollection:collectionCopy];
  }

LABEL_15:
}

- (void)_beginHAPDiagnosticCollection:(id)collection
{
  v12 = *MEMORY[0x277D85DE8];
  collectionCopy = collection;
  fetchADKSnapshotButtonItem = [(HUAccessoryDiagnosticsItemManager *)self fetchADKSnapshotButtonItem];

  if (fetchADKSnapshotButtonItem == collectionCopy)
  {
    v6 = [objc_alloc(MEMORY[0x277CD16E8]) initWithLogSizeBytes:0 delaySeconds:0 snapshotType:2 recordAudio:0 enableAudioClips:0 cloudkitMetadataRequired:0];
  }

  else
  {
    v6 = 0;
  }

  v7 = HFLogForCategory();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v11 = v6;
    _os_log_impl(&dword_20CEB6000, v7, OS_LOG_TYPE_DEFAULT, "Starting diagnostic collection with options %@", buf, 0xCu);
  }

  sourceAccessory = [(HUAccessoryDiagnosticsItemManager *)self sourceAccessory];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __67__HUAccessoryDiagnosticsItemManager__beginHAPDiagnosticCollection___block_invoke;
  v9[3] = &unk_277DC1C60;
  v9[4] = self;
  [sourceAccessory initiateDiagnosticsTransferWithOptions:v6 completionHandler:v9];
}

void __67__HUAccessoryDiagnosticsItemManager__beginHAPDiagnosticCollection___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v15 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = HFLogForCategory();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138412546;
    v12 = v5;
    v13 = 2112;
    v14 = v6;
    _os_log_impl(&dword_20CEB6000, v7, OS_LOG_TYPE_DEFAULT, "Diagnostic collection completed with error: %@\n %@", &v11, 0x16u);
  }

  [*(a1 + 32) setCollectionInProgress:0];
  v8 = *(a1 + 32);
  if (v5)
  {
    [v8 addCollectionFailure:v5];
  }

  else
  {
    [v8 recordDownloadedLog:v6];
  }

  v9 = [MEMORY[0x277CCAB98] defaultCenter];
  v10 = [*(a1 + 32) sourceAccessory];
  [v9 postNotificationName:@"HUAccessoryDiagnosticsDidChange" object:v10];
}

- (void)_beginMatterDiagnosticCollection
{
  v23 = *MEMORY[0x277D85DE8];
  [(HUAccessoryDiagnosticsItemManager *)self setCollectionInProgress:1];
  sourceAccessory = [(HUAccessoryDiagnosticsItemManager *)self sourceAccessory];
  home = [sourceAccessory home];

  hdm_sharedMatterController = [home hdm_sharedMatterController];
  v6 = MEMORY[0x277CD5310];
  sourceAccessory2 = [(HUAccessoryDiagnosticsItemManager *)self sourceAccessory];
  matterNodeID = [sourceAccessory2 matterNodeID];
  v9 = [v6 deviceWithNodeID:matterNodeID controller:hdm_sharedMatterController];

  v10 = HFLogForCategory();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v20 = "[HUAccessoryDiagnosticsItemManager _beginMatterDiagnosticCollection]";
    v21 = 2112;
    v22 = v9;
    _os_log_impl(&dword_20CEB6000, v10, OS_LOG_TYPE_DEFAULT, "%s: device: %@", buf, 0x16u);
  }

  v11 = [(HUAccessoryDiagnosticsItemManager *)self _beginMatterDiagnosticCollectionForDevice:v9 type:2];
  v18[0] = v11;
  v12 = [(HUAccessoryDiagnosticsItemManager *)self _beginMatterDiagnosticCollectionForDevice:v9 type:0];
  v18[1] = v12;
  v13 = [(HUAccessoryDiagnosticsItemManager *)self _beginMatterDiagnosticCollectionForDevice:v9 type:1];
  v18[2] = v13;
  v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v18 count:3];

  v15 = [MEMORY[0x277D2C900] chainFutures:v14];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __69__HUAccessoryDiagnosticsItemManager__beginMatterDiagnosticCollection__block_invoke;
  v17[3] = &unk_277DB7628;
  v17[4] = self;
  v16 = [v15 addCompletionBlock:v17];
}

void __69__HUAccessoryDiagnosticsItemManager__beginMatterDiagnosticCollection__block_invoke(uint64_t a1)
{
  [*(a1 + 32) setCollectionInProgress:0];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __69__HUAccessoryDiagnosticsItemManager__beginMatterDiagnosticCollection__block_invoke_2;
  block[3] = &unk_277DB8488;
  block[4] = *(a1 + 32);
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __69__HUAccessoryDiagnosticsItemManager__beginMatterDiagnosticCollection__block_invoke_2(uint64_t a1)
{
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  v2 = [*(a1 + 32) sourceAccessory];
  [v3 postNotificationName:@"HUAccessoryDiagnosticsDidChange" object:v2];
}

- (id)_beginMatterDiagnosticCollectionForDevice:(id)device type:(int64_t)type
{
  deviceCopy = device;
  objc_initWeak(&location, self);
  v7 = MEMORY[0x277D2C900];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __84__HUAccessoryDiagnosticsItemManager__beginMatterDiagnosticCollectionForDevice_type___block_invoke;
  v11[3] = &unk_277DC1CB0;
  v13[1] = type;
  v8 = deviceCopy;
  v12 = v8;
  objc_copyWeak(v13, &location);
  v9 = [v7 lazyFutureWithBlock:v11];
  objc_destroyWeak(v13);

  objc_destroyWeak(&location);

  return v9;
}

void __84__HUAccessoryDiagnosticsItemManager__beginMatterDiagnosticCollectionForDevice_type___block_invoke(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = HFLogForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 48);
    v6 = *(a1 + 32);
    *buf = 134218242;
    v17 = v5;
    v18 = 2112;
    v19 = v6;
    _os_log_impl(&dword_20CEB6000, v4, OS_LOG_TYPE_DEFAULT, "Collecting logs of type: %ld for device: %@", buf, 0x16u);
  }

  v8 = *(a1 + 48);
  v7 = (a1 + 48);
  v9 = *(v7 - 2);
  WeakRetained = objc_loadWeakRetained(v7 - 1);
  v11 = [WeakRetained matterDispatchQueue];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __84__HUAccessoryDiagnosticsItemManager__beginMatterDiagnosticCollectionForDevice_type___block_invoke_189;
  v13[3] = &unk_277DC1C88;
  objc_copyWeak(v15, v7 - 1);
  v15[1] = *v7;
  v12 = v3;
  v14 = v12;
  [v9 downloadLogOfType:v8 timeout:v11 queue:v13 completion:600.0];

  objc_destroyWeak(v15);
}

void __84__HUAccessoryDiagnosticsItemManager__beginMatterDiagnosticCollectionForDevice_type___block_invoke_189(uint64_t a1, void *a2, void *a3)
{
  v22 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v8 = HFLogForCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = *(a1 + 48);
    *buf = 134218242;
    v19 = v9;
    v20 = 2112;
    v21 = v6;
    _os_log_impl(&dword_20CEB6000, v8, OS_LOG_TYPE_DEFAULT, "Finished collecting logs of type: %ld error: %@", buf, 0x16u);
  }

  v10 = [v6 domain];
  if ([v10 isEqualToString:*MEMORY[0x277CD5120]])
  {
    v11 = [v6 code] == 19;
  }

  else
  {
    v11 = 0;
  }

  if (v6 && !v11)
  {
    v12 = MEMORY[0x277D85DD0];
    v13 = 3221225472;
    v14 = __84__HUAccessoryDiagnosticsItemManager__beginMatterDiagnosticCollectionForDevice_type___block_invoke_190;
    v15 = &unk_277DB7558;
    v16 = WeakRetained;
    v17 = v6;
    dispatch_async(MEMORY[0x277D85CD0], &v12);
  }

  if (v5)
  {
    [WeakRetained recordDownloadedMatterLog:v5 forType:*(a1 + 48)];
  }

  [*(a1 + 32) finishWithNoResult];
}

- (void)_loadDownloadedLogs
{
  v28 = *MEMORY[0x277D85DE8];
  sourceAccessory = [(HUAccessoryDiagnosticsItemManager *)self sourceAccessory];
  v3 = objc_getAssociatedObject(sourceAccessory, "hu_diagnosticLogs");

  v4 = HFLogForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v27 = v3;
    _os_log_impl(&dword_20CEB6000, v4, OS_LOG_TYPE_DEFAULT, "Loading diagnostic logs: %@.", buf, 0xCu);
  }

  array = [MEMORY[0x277CBEB18] array];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v6 = v3;
  v7 = [v6 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v22;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v22 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v21 + 1) + 8 * i);
        snapshotPath = [v11 snapshotPath];
        defaultManager = [MEMORY[0x277CCAA00] defaultManager];
        v14 = [defaultManager fileExistsAtPath:snapshotPath];

        if (v14)
        {
          [(NSMutableArray *)array addObject:v11];
        }

        else
        {
          v15 = HFLogForCategory();
          if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v27 = snapshotPath;
            _os_log_impl(&dword_20CEB6000, v15, OS_LOG_TYPE_DEFAULT, "Removing diagnostic log because it no longer exists: %@", buf, 0xCu);
          }
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v8);
  }

  v16 = [v6 count];
  if (v16 != [(NSMutableArray *)array count])
  {
    v17 = [(NSMutableArray *)array copy];
    sourceAccessory2 = [(HUAccessoryDiagnosticsItemManager *)self sourceAccessory];
    objc_setAssociatedObject(sourceAccessory2, "hu_diagnosticLogs", v17, 0x301);
  }

  downloadedLogs = self->_downloadedLogs;
  self->_downloadedLogs = array;
}

- (void)recordDownloadedMatterLog:(id)log forType:(int64_t)type
{
  v29 = *MEMORY[0x277D85DE8];
  logCopy = log;
  v7 = objc_alloc_init(MEMORY[0x277CCA968]);
  [v7 setDateFormat:@"yyyy-MM-dd_HH:mm:ss"];
  date = [MEMORY[0x277CBEAA8] date];
  v9 = [v7 stringFromDate:date];

  if (type > 2)
  {
    v10 = 0;
  }

  else
  {
    v10 = off_277DC1CD0[type];
  }

  v11 = MEMORY[0x277CCACA8];
  sourceAccessory = [(HUAccessoryDiagnosticsItemManager *)self sourceAccessory];
  name = [sourceAccessory name];
  v14 = [v11 stringWithFormat:@"%@-%@-%@.log", v9, name, v10];

  v15 = NSTemporaryDirectory();
  v16 = [v15 stringByAppendingPathComponent:v14];

  v17 = [MEMORY[0x277CBEBC0] fileURLWithPath:v16 isDirectory:0];
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v22 = 0;
  v19 = [defaultManager copyItemAtURL:logCopy toURL:v17 error:&v22];
  v20 = v22;
  if (v19)
  {
    v21 = [objc_alloc(MEMORY[0x277CD16E0]) initWithSnapshotPath:v16 urlParameters:0 privacyPolicyURL:0 uploadDestination:0 consentVersion:0 uploadType:0];
    [(HUAccessoryDiagnosticsItemManager *)self recordDownloadedLog:v21];
  }

  else
  {
    v21 = HFLogForCategory();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412802;
      v24 = logCopy;
      v25 = 2112;
      v26 = v16;
      v27 = 2112;
      v28 = v20;
      _os_log_error_impl(&dword_20CEB6000, v21, OS_LOG_TYPE_ERROR, "Copying MTRDevice log %@ to %@ failed:%@", buf, 0x20u);
    }
  }
}

- (void)recordDownloadedLog:(id)log
{
  logCopy = log;
  downloadedLogs = [(HUAccessoryDiagnosticsItemManager *)self downloadedLogs];
  [downloadedLogs addObject:logCopy];

  downloadedLogs2 = [(HUAccessoryDiagnosticsItemManager *)self downloadedLogs];
  value = [downloadedLogs2 copy];

  sourceAccessory = [(HUAccessoryDiagnosticsItemManager *)self sourceAccessory];
  objc_setAssociatedObject(sourceAccessory, "hu_diagnosticLogs", value, 0x301);
}

- (id)availableLogs
{
  downloadedLogs = [(HUAccessoryDiagnosticsItemManager *)self downloadedLogs];
  v3 = [downloadedLogs copy];

  return v3;
}

- (void)_setLoggingOption:(int64_t)option enable:(BOOL)enable
{
  enableCopy = enable;
  v18 = *MEMORY[0x277D85DE8];
  diagnosticsModesItem = [(HUAccessoryDiagnosticsItemManager *)self diagnosticsModesItem];
  latestResults = [diagnosticsModesItem latestResults];
  v9 = [latestResults objectForKeyedSubscript:*MEMORY[0x277D13818]];

  unsignedIntegerValue = [v9 unsignedIntegerValue];
  if (((option & ~unsignedIntegerValue) == 0) != enableCopy)
  {
    if (enableCopy)
    {
      v11 = unsignedIntegerValue | option;
    }

    else
    {
      v11 = unsignedIntegerValue & ~option;
    }

    v12 = HFLogForCategory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v16 = 134217984;
      v17 = v11;
      _os_log_impl(&dword_20CEB6000, v12, OS_LOG_TYPE_DEFAULT, "Attempting to write accessory diagnostic options: %lx", &v16, 0xCu);
    }

    diagnosticsModesItem2 = [(HUAccessoryDiagnosticsItemManager *)self diagnosticsModesItem];
    v14 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v11];
    v15 = [diagnosticsModesItem2 writeValue:v14];
  }
}

- (void)setVerboseLoggingEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  v7 = *MEMORY[0x277D85DE8];
  v5 = HFLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6[0] = 67109120;
    v6[1] = enabledCopy;
    _os_log_impl(&dword_20CEB6000, v5, OS_LOG_TYPE_DEFAULT, "Attempting to set accessory diagnostic verbose logging to: %{BOOL}d", v6, 8u);
  }

  [(HUAccessoryDiagnosticsItemManager *)self _setLoggingOption:2 enable:enabledCopy];
}

- (void)setAudioClipLoggingEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  v7 = *MEMORY[0x277D85DE8];
  v5 = HFLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6[0] = 67109120;
    v6[1] = enabledCopy;
    _os_log_impl(&dword_20CEB6000, v5, OS_LOG_TYPE_DEFAULT, "Attempting to set accessory diagnostic audio clip logging to: %{BOOL}d", v6, 8u);
  }

  [(HUAccessoryDiagnosticsItemManager *)self _setLoggingOption:1 enable:enabledCopy];
}

@end