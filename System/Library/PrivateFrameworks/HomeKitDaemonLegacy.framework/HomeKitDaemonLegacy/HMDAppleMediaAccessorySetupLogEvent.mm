@interface HMDAppleMediaAccessorySetupLogEvent
- (HMDAppleMediaAccessorySetupLogEvent)initWithRole:(int64_t)role setupStartTime:(unint64_t)time setupEndTime:(unint64_t)endTime accessoryAddEndTime:(unint64_t)addEndTime accessoryRemoveTime:(unint64_t)removeTime configurationEndTime:(unint64_t)configurationEndTime setupSessionError:(id)error setupSessionIdentifier:(id)self0 isRepairSession:(BOOL)self1 category:(id)self2 accessorySoftwareVersion:(id)self3 setupClientBundleID:(id)self4 retryCount:(unint64_t)self5 firstSettingTime:(unint64_t)self6 languageSettingTime:(unint64_t)self7 accessoryInDefaultRoom:(BOOL)self8 selectedHomeLocationStatus:(int64_t)self9 isUserAtOtherOwnedHome:(BOOL)home lastPrimaryResidentAvailableTime:(unint64_t)availableTime numberOfTimesPrimaryResidentChanged:(unsigned int)changed lastPrimaryClientConnectedTime:(unint64_t)connectedTime numberOfTimesPrimaryClientConnected:(unsigned int)connected numberOfTimesPrimaryClientDisconnected:(unsigned int)disconnected numberOfTimesPrimaryClientConnectMessageFailed:(unsigned int)failed addAccessoryMessageReport:(unint64_t)report lastPrimaryClientConnectMessageFailError:(id)failError accessoryDiagnosticInfoFetchError:(id)fetchError primaryResidentDiagnosticInfoFetchError:(id)role0 addAccessoryOnPrimaryFailError:(id)role1;
- (NSDictionary)coreAnalyticsEventDictionary;
@end

@implementation HMDAppleMediaAccessorySetupLogEvent

- (NSDictionary)coreAnalyticsEventDictionary
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
  if ([(HMDAppleMediaAccessorySetupLogEvent *)self configurationEndTime])
  {
    v4 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{-[HMDAppleMediaAccessorySetupLogEvent configurationEndTime](self, "configurationEndTime") - -[HMDAppleMediaAccessorySetupLogEvent setupStartTime](self, "setupStartTime")}];
    [v3 setObject:v4 forKeyedSubscript:@"configurationDuration"];
  }

  if ([(HMDAppleMediaAccessorySetupLogEvent *)self setupEndTime])
  {
    v5 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{-[HMDAppleMediaAccessorySetupLogEvent setupEndTime](self, "setupEndTime") - -[HMDAppleMediaAccessorySetupLogEvent setupStartTime](self, "setupStartTime")}];
    [v3 setObject:v5 forKeyedSubscript:@"setupDuration"];
  }

  if ([(HMDAppleMediaAccessorySetupLogEvent *)self accessoryAddEndTime])
  {
    v6 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{-[HMDAppleMediaAccessorySetupLogEvent accessoryAddEndTime](self, "accessoryAddEndTime") - -[HMDAppleMediaAccessorySetupLogEvent setupStartTime](self, "setupStartTime")}];
    [v3 setObject:v6 forKeyedSubscript:@"hmd_latencyAccessoryAddComplete"];
  }

  if ([(HMDAppleMediaAccessorySetupLogEvent *)self firstSettingTime])
  {
    v7 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{-[HMDAppleMediaAccessorySetupLogEvent firstSettingTime](self, "firstSettingTime") - -[HMDAppleMediaAccessorySetupLogEvent setupStartTime](self, "setupStartTime")}];
    [v3 setObject:v7 forKeyedSubscript:@"hmd_latencyFirstSettingObserved"];
  }

  if ([(HMDAppleMediaAccessorySetupLogEvent *)self languageSettingTime])
  {
    v8 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{-[HMDAppleMediaAccessorySetupLogEvent languageSettingTime](self, "languageSettingTime") - -[HMDAppleMediaAccessorySetupLogEvent setupStartTime](self, "setupStartTime")}];
    [v3 setObject:v8 forKeyedSubscript:@"hmd_latencyLanguageSettingObserved"];
  }

  if ([(HMDAppleMediaAccessorySetupLogEvent *)self accessoryRemoveTime])
  {
    v9 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{-[HMDAppleMediaAccessorySetupLogEvent accessoryRemoveTime](self, "accessoryRemoveTime") - -[HMDAppleMediaAccessorySetupLogEvent setupStartTime](self, "setupStartTime")}];
    [v3 setObject:v9 forKeyedSubscript:@"accessoryRemoveTime"];
  }

  if ([(HMDAppleMediaAccessorySetupLogEvent *)self lastPrimaryResidentAvailableTime])
  {
    v10 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{-[HMDAppleMediaAccessorySetupLogEvent lastPrimaryResidentAvailableTime](self, "lastPrimaryResidentAvailableTime") - -[HMDAppleMediaAccessorySetupLogEvent accessoryAddEndTime](self, "accessoryAddEndTime")}];
    [v3 setObject:v10 forKeyedSubscript:@"hmd_latencyLastPrimaryResidentAvailableTime"];

    v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{-[HMDAppleMediaAccessorySetupLogEvent numberOfTimesPrimaryResidentChanged](self, "numberOfTimesPrimaryResidentChanged")}];
    [v3 setObject:v11 forKeyedSubscript:@"hmd_numberOfTimesPrimaryResidentChanged"];
  }

  if ([(HMDAppleMediaAccessorySetupLogEvent *)self lastPrimaryClientConnectedTime])
  {
    v12 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{-[HMDAppleMediaAccessorySetupLogEvent lastPrimaryClientConnectedTime](self, "lastPrimaryClientConnectedTime") - -[HMDAppleMediaAccessorySetupLogEvent accessoryAddEndTime](self, "accessoryAddEndTime")}];
    [v3 setObject:v12 forKeyedSubscript:@"hmd_latencyLastPrimaryClientConnectedTime"];

    v13 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{-[HMDAppleMediaAccessorySetupLogEvent numberOfTimesPrimaryClientConnected](self, "numberOfTimesPrimaryClientConnected")}];
    [v3 setObject:v13 forKeyedSubscript:@"hmd_numberOfTimesPrimaryClientConnected"];

    v14 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{-[HMDAppleMediaAccessorySetupLogEvent numberOfTimesPrimaryClientDisconnected](self, "numberOfTimesPrimaryClientDisconnected")}];
    [v3 setObject:v14 forKeyedSubscript:@"hmd_numberOfTimesPrimaryClientDisconnected"];
  }

  v15 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{-[HMDAppleMediaAccessorySetupLogEvent numberOfTimesPrimaryClientConnectMessageFailed](self, "numberOfTimesPrimaryClientConnectMessageFailed")}];
  [v3 setObject:v15 forKeyedSubscript:@"hmd_numberOfTimesPrimaryClientConnectMessageFailed"];

  lastPrimaryClientConnectMessageFailError = [(HMDAppleMediaAccessorySetupLogEvent *)self lastPrimaryClientConnectMessageFailError];

  if (lastPrimaryClientConnectMessageFailError)
  {
    v17 = MEMORY[0x277CCABB0];
    lastPrimaryClientConnectMessageFailError2 = [(HMDAppleMediaAccessorySetupLogEvent *)self lastPrimaryClientConnectMessageFailError];
    v19 = [v17 numberWithInteger:{objc_msgSend(lastPrimaryClientConnectMessageFailError2, "code")}];
    [v3 setObject:v19 forKeyedSubscript:@"hmd_primaryClientConnectMessageErrorCode"];

    lastPrimaryClientConnectMessageFailError3 = [(HMDAppleMediaAccessorySetupLogEvent *)self lastPrimaryClientConnectMessageFailError];
    domain = [lastPrimaryClientConnectMessageFailError3 domain];
    [v3 setObject:domain forKeyedSubscript:@"hmd_primaryClientConnectMessageErrorDomain"];

    lastPrimaryClientConnectMessageFailError4 = [(HMDAppleMediaAccessorySetupLogEvent *)self lastPrimaryClientConnectMessageFailError];
    underlyingErrors = [lastPrimaryClientConnectMessageFailError4 underlyingErrors];
    firstObject = [underlyingErrors firstObject];

    if (firstObject)
    {
      v25 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(firstObject, "code")}];
      [v3 setObject:v25 forKeyedSubscript:@"hmd_primaryClientConnectMessageUnderlyingErrorCode"];

      domain2 = [firstObject domain];
      [v3 setObject:domain2 forKeyedSubscript:@"hmd_primaryClientConnectMessageUnderlyingErrorDomain"];
    }
  }

  accessoryDiagnosticInfoFetchError = [(HMDAppleMediaAccessorySetupLogEvent *)self accessoryDiagnosticInfoFetchError];

  if (accessoryDiagnosticInfoFetchError)
  {
    v28 = MEMORY[0x277CCABB0];
    accessoryDiagnosticInfoFetchError2 = [(HMDAppleMediaAccessorySetupLogEvent *)self accessoryDiagnosticInfoFetchError];
    v30 = [v28 numberWithInteger:{objc_msgSend(accessoryDiagnosticInfoFetchError2, "code")}];
    [v3 setObject:v30 forKeyedSubscript:@"hmd_accessoryDiagnosticInfoFetchErrorCode"];

    accessoryDiagnosticInfoFetchError3 = [(HMDAppleMediaAccessorySetupLogEvent *)self accessoryDiagnosticInfoFetchError];
    domain3 = [accessoryDiagnosticInfoFetchError3 domain];
    [v3 setObject:domain3 forKeyedSubscript:@"hmd_accessoryDiagnosticInfoFetchErrorDomain"];

    accessoryDiagnosticInfoFetchError4 = [(HMDAppleMediaAccessorySetupLogEvent *)self accessoryDiagnosticInfoFetchError];
    underlyingErrors2 = [accessoryDiagnosticInfoFetchError4 underlyingErrors];
    firstObject2 = [underlyingErrors2 firstObject];

    if (firstObject2)
    {
      v36 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(firstObject2, "code")}];
      [v3 setObject:v36 forKeyedSubscript:@"hmd_accessoryDiagnosticInfoFetchUnderlyingErrorCode"];

      domain4 = [firstObject2 domain];
      [v3 setObject:domain4 forKeyedSubscript:@"hmd_accessoryDiagnosticInfoFetchUnderlyingErrorDomain"];
    }
  }

  primaryResidentDiagnosticInfoFetchError = [(HMDAppleMediaAccessorySetupLogEvent *)self primaryResidentDiagnosticInfoFetchError];

  if (primaryResidentDiagnosticInfoFetchError)
  {
    v39 = MEMORY[0x277CCABB0];
    primaryResidentDiagnosticInfoFetchError2 = [(HMDAppleMediaAccessorySetupLogEvent *)self primaryResidentDiagnosticInfoFetchError];
    v41 = [v39 numberWithInteger:{objc_msgSend(primaryResidentDiagnosticInfoFetchError2, "code")}];
    [v3 setObject:v41 forKeyedSubscript:@"hmd_primaryResidentDiagnosticInfoFetchErrorCode"];

    primaryResidentDiagnosticInfoFetchError3 = [(HMDAppleMediaAccessorySetupLogEvent *)self primaryResidentDiagnosticInfoFetchError];
    domain5 = [primaryResidentDiagnosticInfoFetchError3 domain];
    [v3 setObject:domain5 forKeyedSubscript:@"hmd_primaryResidentDiagnosticInfoFetchErrorDomain"];

    primaryResidentDiagnosticInfoFetchError4 = [(HMDAppleMediaAccessorySetupLogEvent *)self primaryResidentDiagnosticInfoFetchError];
    underlyingErrors3 = [primaryResidentDiagnosticInfoFetchError4 underlyingErrors];
    firstObject3 = [underlyingErrors3 firstObject];

    if (firstObject3)
    {
      v47 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(firstObject3, "code")}];
      [v3 setObject:v47 forKeyedSubscript:@"hmd_primaryResidentDiagnosticInfoFetchUnderlyingErrorCode"];

      domain6 = [firstObject3 domain];
      [v3 setObject:domain6 forKeyedSubscript:@"hmd_primaryResidentDiagnosticInfoFetchUnderlyingErrorDomain"];
    }
  }

  addAccessoryOnPrimaryFailError = [(HMDAppleMediaAccessorySetupLogEvent *)self addAccessoryOnPrimaryFailError];

  if (addAccessoryOnPrimaryFailError)
  {
    v50 = MEMORY[0x277CCABB0];
    addAccessoryOnPrimaryFailError2 = [(HMDAppleMediaAccessorySetupLogEvent *)self addAccessoryOnPrimaryFailError];
    v52 = [v50 numberWithInteger:{objc_msgSend(addAccessoryOnPrimaryFailError2, "code")}];
    [v3 setObject:v52 forKeyedSubscript:@"addAccessoryErrorCode"];

    addAccessoryOnPrimaryFailError3 = [(HMDAppleMediaAccessorySetupLogEvent *)self addAccessoryOnPrimaryFailError];
    domain7 = [addAccessoryOnPrimaryFailError3 domain];
    [v3 setObject:domain7 forKeyedSubscript:@"addAccessoryErrorDomain"];

    addAccessoryOnPrimaryFailError4 = [(HMDAppleMediaAccessorySetupLogEvent *)self addAccessoryOnPrimaryFailError];
    underlyingErrors4 = [addAccessoryOnPrimaryFailError4 underlyingErrors];
    firstObject4 = [underlyingErrors4 firstObject];

    if (firstObject4)
    {
      v58 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(firstObject4, "code")}];
      [v3 setObject:v58 forKeyedSubscript:@"addAccessoryUnderlyingErrorCode"];

      domain8 = [firstObject4 domain];
      [v3 setObject:domain8 forKeyedSubscript:@"addAccessoryUnderlyingErrorDomain"];
    }
  }

  v60 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HMDAppleMediaAccessorySetupLogEvent addAccessoryMessageReport](self, "addAccessoryMessageReport")}];
  [v3 setObject:v60 forKeyedSubscript:@"addAccessoryMessageReport"];

  v61 = [MEMORY[0x277CCABB0] numberWithBool:{-[HMDAppleMediaAccessorySetupLogEvent isRepairSession](self, "isRepairSession")}];
  [v3 setObject:v61 forKeyedSubscript:@"isRepairSession"];

  setupClientBundleID = [(HMDAppleMediaAccessorySetupLogEvent *)self setupClientBundleID];
  [v3 setObject:setupClientBundleID forKeyedSubscript:@"setupClientBundleID"];

  setupSessionIdentifier = [(HMDAppleMediaAccessorySetupLogEvent *)self setupSessionIdentifier];
  [v3 setObject:setupSessionIdentifier forKeyedSubscript:@"setupSessionIdentifier"];

  v64 = [MEMORY[0x277CCABB0] numberWithBool:{-[HMDAppleMediaAccessorySetupLogEvent accessoryInDefaultRoom](self, "accessoryInDefaultRoom")}];
  [v3 setObject:v64 forKeyedSubscript:@"accessoryInDefaultRoom"];

  if ([(HMDAppleMediaAccessorySetupLogEvent *)self selectedHomeLocationStatus]== 3)
  {
    selectedHomeLocationStatus = 2;
  }

  else
  {
    selectedHomeLocationStatus = [(HMDAppleMediaAccessorySetupLogEvent *)self selectedHomeLocationStatus];
  }

  v66 = [MEMORY[0x277CCABB0] numberWithInteger:selectedHomeLocationStatus];
  [v3 setObject:v66 forKeyedSubscript:@"selectedHomeLocationStatus"];

  v67 = [MEMORY[0x277CCABB0] numberWithBool:{-[HMDAppleMediaAccessorySetupLogEvent isUserAtOtherOwnedHome](self, "isUserAtOtherOwnedHome")}];
  [v3 setObject:v67 forKeyedSubscript:@"isUserAtOtherOwnedHome"];

  role = [(HMDAppleMediaAccessorySetupLogEvent *)self role];
  [v3 setObject:role forKeyedSubscript:@"role"];

  category = [(HMDAppleMediaAccessorySetupLogEvent *)self category];
  [v3 setObject:category forKeyedSubscript:@"category"];

  accessorySoftwareVersion = [(HMDAppleMediaAccessorySetupLogEvent *)self accessorySoftwareVersion];
  [v3 setObject:accessorySoftwareVersion forKeyedSubscript:@"accessorySoftwareVersion"];

  setupSessionError = [(HMDAppleMediaAccessorySetupLogEvent *)self setupSessionError];

  if (setupSessionError)
  {
    v72 = MEMORY[0x277CCABB0];
    setupSessionError2 = [(HMDAppleMediaAccessorySetupLogEvent *)self setupSessionError];
    v74 = [v72 numberWithInteger:{objc_msgSend(setupSessionError2, "code")}];
    [v3 setObject:v74 forKeyedSubscript:@"setupSessionErrorCode"];

    setupSessionError3 = [(HMDAppleMediaAccessorySetupLogEvent *)self setupSessionError];
    domain9 = [setupSessionError3 domain];
    [v3 setObject:domain9 forKeyedSubscript:@"setupSessionErrorDomain"];
  }

  error = [(HMMLogEvent *)self error];

  if (error)
  {
    v78 = MEMORY[0x277CCABB0];
    error2 = [(HMMLogEvent *)self error];
    v80 = [v78 numberWithInteger:{objc_msgSend(error2, "code")}];
    [v3 setObject:v80 forKeyedSubscript:@"configurationErrorCode"];

    error3 = [(HMMLogEvent *)self error];
    domain10 = [error3 domain];
    [v3 setObject:domain10 forKeyedSubscript:@"configurationErrorDomain"];
  }

  category2 = [(HMDAppleMediaAccessorySetupLogEvent *)self category];
  [v3 setObject:category2 forKeyedSubscript:@"category"];

  retryCount = [(HMDAppleMediaAccessorySetupLogEvent *)self retryCount];
  [v3 setObject:retryCount forKeyedSubscript:@"retryCount"];

  v85 = [v3 copy];

  return v85;
}

- (HMDAppleMediaAccessorySetupLogEvent)initWithRole:(int64_t)role setupStartTime:(unint64_t)time setupEndTime:(unint64_t)endTime accessoryAddEndTime:(unint64_t)addEndTime accessoryRemoveTime:(unint64_t)removeTime configurationEndTime:(unint64_t)configurationEndTime setupSessionError:(id)error setupSessionIdentifier:(id)self0 isRepairSession:(BOOL)self1 category:(id)self2 accessorySoftwareVersion:(id)self3 setupClientBundleID:(id)self4 retryCount:(unint64_t)self5 firstSettingTime:(unint64_t)self6 languageSettingTime:(unint64_t)self7 accessoryInDefaultRoom:(BOOL)self8 selectedHomeLocationStatus:(int64_t)self9 isUserAtOtherOwnedHome:(BOOL)home lastPrimaryResidentAvailableTime:(unint64_t)availableTime numberOfTimesPrimaryResidentChanged:(unsigned int)changed lastPrimaryClientConnectedTime:(unint64_t)connectedTime numberOfTimesPrimaryClientConnected:(unsigned int)connected numberOfTimesPrimaryClientDisconnected:(unsigned int)disconnected numberOfTimesPrimaryClientConnectMessageFailed:(unsigned int)failed addAccessoryMessageReport:(unint64_t)report lastPrimaryClientConnectMessageFailError:(id)failError accessoryDiagnosticInfoFetchError:(id)fetchError primaryResidentDiagnosticInfoFetchError:(id)role0 addAccessoryOnPrimaryFailError:(id)role1
{
  errorCopy = error;
  identifierCopy = identifier;
  categoryCopy = category;
  versionCopy = version;
  dCopy = d;
  failErrorCopy = failError;
  fetchErrorCopy = fetchError;
  infoFetchErrorCopy = infoFetchError;
  primaryFailErrorCopy = primaryFailError;
  v59.receiver = self;
  v59.super_class = HMDAppleMediaAccessorySetupLogEvent;
  v37 = [(HMMLogEvent *)&v59 init];
  if (v37)
  {
    v38 = [MEMORY[0x277CCABB0] numberWithInteger:role];
    role = v37->_role;
    v37->_role = v38;

    v37->_setupStartTime = time;
    v37->_setupEndTime = endTime;
    v37->_accessoryAddEndTime = addEndTime;
    v37->_accessoryRemoveTime = removeTime;
    v37->_configurationEndTime = configurationEndTime;
    v40 = [errorCopy copy];
    setupSessionError = v37->_setupSessionError;
    v37->_setupSessionError = v40;

    v37->_isRepairSession = session;
    v42 = [categoryCopy copy];
    category = v37->_category;
    v37->_category = v42;

    v44 = [versionCopy copy];
    accessorySoftwareVersion = v37->_accessorySoftwareVersion;
    v37->_accessorySoftwareVersion = v44;

    objc_storeStrong(&v37->_setupClientBundleID, d);
    objc_storeStrong(&v37->_setupSessionIdentifier, identifier);
    v46 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:count];
    retryCount = v37->_retryCount;
    v37->_retryCount = v46;

    v37->_languageSettingTime = languageSettingTime;
    v37->_firstSettingTime = settingTime;
    v37->_accessoryInDefaultRoom = room;
    v37->_selectedHomeLocationStatus = status;
    v37->_isUserAtOtherOwnedHome = home;
    v37->_lastPrimaryResidentAvailableTime = availableTime;
    v37->_numberOfTimesPrimaryResidentChanged = changed;
    v37->_lastPrimaryClientConnectedTime = connectedTime;
    v37->_numberOfTimesPrimaryClientConnected = connected;
    v37->_numberOfTimesPrimaryClientDisconnected = disconnected;
    v37->_numberOfTimesPrimaryClientConnectMessageFailed = failed;
    v37->_addAccessoryMessageReport = report;
    objc_storeStrong(&v37->_lastPrimaryClientConnectMessageFailError, failError);
    objc_storeStrong(&v37->_accessoryDiagnosticInfoFetchError, fetchError);
    objc_storeStrong(&v37->_primaryResidentDiagnosticInfoFetchError, infoFetchError);
    objc_storeStrong(&v37->_addAccessoryOnPrimaryFailError, primaryFailError);
  }

  return v37;
}

@end