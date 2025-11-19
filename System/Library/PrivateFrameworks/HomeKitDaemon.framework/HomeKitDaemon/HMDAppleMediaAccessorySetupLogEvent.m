@interface HMDAppleMediaAccessorySetupLogEvent
- (HMDAppleMediaAccessorySetupLogEvent)initWithRole:(int64_t)a3 setupStartTime:(unint64_t)a4 setupEndTime:(unint64_t)a5 accessoryAddEndTime:(unint64_t)a6 accessoryRemoveTime:(unint64_t)a7 configurationEndTime:(unint64_t)a8 setupSessionError:(id)a9 setupSessionIdentifier:(id)a10 isRepairSession:(BOOL)a11 category:(id)a12 accessorySoftwareVersion:(id)a13 setupClientBundleID:(id)a14 retryCount:(unint64_t)a15 firstSettingTime:(unint64_t)a16 languageSettingTime:(unint64_t)a17 accessoryInDefaultRoom:(BOOL)a18 selectedHomeLocationStatus:(int64_t)a19 isUserAtOtherOwnedHome:(BOOL)a20 lastPrimaryResidentAvailableTime:(unint64_t)a21 numberOfTimesPrimaryResidentChanged:(unsigned int)a22 lastPrimaryClientConnectedTime:(unint64_t)a23 numberOfTimesPrimaryClientConnected:(unsigned int)a24 numberOfTimesPrimaryClientDisconnected:(unsigned int)a25 numberOfTimesPrimaryClientConnectMessageFailed:(unsigned int)a26 addAccessoryMessageReport:(unint64_t)a27 lastPrimaryClientConnectMessageFailError:(id)a28 accessoryDiagnosticInfoFetchError:(id)a29 primaryResidentDiagnosticInfoFetchError:(id)a30 addAccessoryOnPrimaryFailError:(id)a31;
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

  v16 = [(HMDAppleMediaAccessorySetupLogEvent *)self lastPrimaryClientConnectMessageFailError];

  if (v16)
  {
    v17 = MEMORY[0x277CCABB0];
    v18 = [(HMDAppleMediaAccessorySetupLogEvent *)self lastPrimaryClientConnectMessageFailError];
    v19 = [v17 numberWithInteger:{objc_msgSend(v18, "code")}];
    [v3 setObject:v19 forKeyedSubscript:@"hmd_primaryClientConnectMessageErrorCode"];

    v20 = [(HMDAppleMediaAccessorySetupLogEvent *)self lastPrimaryClientConnectMessageFailError];
    v21 = [v20 domain];
    [v3 setObject:v21 forKeyedSubscript:@"hmd_primaryClientConnectMessageErrorDomain"];

    v22 = [(HMDAppleMediaAccessorySetupLogEvent *)self lastPrimaryClientConnectMessageFailError];
    v23 = [v22 underlyingErrors];
    v24 = [v23 firstObject];

    if (v24)
    {
      v25 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v24, "code")}];
      [v3 setObject:v25 forKeyedSubscript:@"hmd_primaryClientConnectMessageUnderlyingErrorCode"];

      v26 = [v24 domain];
      [v3 setObject:v26 forKeyedSubscript:@"hmd_primaryClientConnectMessageUnderlyingErrorDomain"];
    }
  }

  v27 = [(HMDAppleMediaAccessorySetupLogEvent *)self accessoryDiagnosticInfoFetchError];

  if (v27)
  {
    v28 = MEMORY[0x277CCABB0];
    v29 = [(HMDAppleMediaAccessorySetupLogEvent *)self accessoryDiagnosticInfoFetchError];
    v30 = [v28 numberWithInteger:{objc_msgSend(v29, "code")}];
    [v3 setObject:v30 forKeyedSubscript:@"hmd_accessoryDiagnosticInfoFetchErrorCode"];

    v31 = [(HMDAppleMediaAccessorySetupLogEvent *)self accessoryDiagnosticInfoFetchError];
    v32 = [v31 domain];
    [v3 setObject:v32 forKeyedSubscript:@"hmd_accessoryDiagnosticInfoFetchErrorDomain"];

    v33 = [(HMDAppleMediaAccessorySetupLogEvent *)self accessoryDiagnosticInfoFetchError];
    v34 = [v33 underlyingErrors];
    v35 = [v34 firstObject];

    if (v35)
    {
      v36 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v35, "code")}];
      [v3 setObject:v36 forKeyedSubscript:@"hmd_accessoryDiagnosticInfoFetchUnderlyingErrorCode"];

      v37 = [v35 domain];
      [v3 setObject:v37 forKeyedSubscript:@"hmd_accessoryDiagnosticInfoFetchUnderlyingErrorDomain"];
    }
  }

  v38 = [(HMDAppleMediaAccessorySetupLogEvent *)self primaryResidentDiagnosticInfoFetchError];

  if (v38)
  {
    v39 = MEMORY[0x277CCABB0];
    v40 = [(HMDAppleMediaAccessorySetupLogEvent *)self primaryResidentDiagnosticInfoFetchError];
    v41 = [v39 numberWithInteger:{objc_msgSend(v40, "code")}];
    [v3 setObject:v41 forKeyedSubscript:@"hmd_primaryResidentDiagnosticInfoFetchErrorCode"];

    v42 = [(HMDAppleMediaAccessorySetupLogEvent *)self primaryResidentDiagnosticInfoFetchError];
    v43 = [v42 domain];
    [v3 setObject:v43 forKeyedSubscript:@"hmd_primaryResidentDiagnosticInfoFetchErrorDomain"];

    v44 = [(HMDAppleMediaAccessorySetupLogEvent *)self primaryResidentDiagnosticInfoFetchError];
    v45 = [v44 underlyingErrors];
    v46 = [v45 firstObject];

    if (v46)
    {
      v47 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v46, "code")}];
      [v3 setObject:v47 forKeyedSubscript:@"hmd_primaryResidentDiagnosticInfoFetchUnderlyingErrorCode"];

      v48 = [v46 domain];
      [v3 setObject:v48 forKeyedSubscript:@"hmd_primaryResidentDiagnosticInfoFetchUnderlyingErrorDomain"];
    }
  }

  v49 = [(HMDAppleMediaAccessorySetupLogEvent *)self addAccessoryOnPrimaryFailError];

  if (v49)
  {
    v50 = MEMORY[0x277CCABB0];
    v51 = [(HMDAppleMediaAccessorySetupLogEvent *)self addAccessoryOnPrimaryFailError];
    v52 = [v50 numberWithInteger:{objc_msgSend(v51, "code")}];
    [v3 setObject:v52 forKeyedSubscript:@"addAccessoryErrorCode"];

    v53 = [(HMDAppleMediaAccessorySetupLogEvent *)self addAccessoryOnPrimaryFailError];
    v54 = [v53 domain];
    [v3 setObject:v54 forKeyedSubscript:@"addAccessoryErrorDomain"];

    v55 = [(HMDAppleMediaAccessorySetupLogEvent *)self addAccessoryOnPrimaryFailError];
    v56 = [v55 underlyingErrors];
    v57 = [v56 firstObject];

    if (v57)
    {
      v58 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v57, "code")}];
      [v3 setObject:v58 forKeyedSubscript:@"addAccessoryUnderlyingErrorCode"];

      v59 = [v57 domain];
      [v3 setObject:v59 forKeyedSubscript:@"addAccessoryUnderlyingErrorDomain"];
    }
  }

  v60 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HMDAppleMediaAccessorySetupLogEvent addAccessoryMessageReport](self, "addAccessoryMessageReport")}];
  [v3 setObject:v60 forKeyedSubscript:@"addAccessoryMessageReport"];

  v61 = [MEMORY[0x277CCABB0] numberWithBool:{-[HMDAppleMediaAccessorySetupLogEvent isRepairSession](self, "isRepairSession")}];
  [v3 setObject:v61 forKeyedSubscript:@"isRepairSession"];

  v62 = [(HMDAppleMediaAccessorySetupLogEvent *)self setupClientBundleID];
  [v3 setObject:v62 forKeyedSubscript:@"setupClientBundleID"];

  v63 = [(HMDAppleMediaAccessorySetupLogEvent *)self setupSessionIdentifier];
  [v3 setObject:v63 forKeyedSubscript:@"setupSessionIdentifier"];

  v64 = [MEMORY[0x277CCABB0] numberWithBool:{-[HMDAppleMediaAccessorySetupLogEvent accessoryInDefaultRoom](self, "accessoryInDefaultRoom")}];
  [v3 setObject:v64 forKeyedSubscript:@"accessoryInDefaultRoom"];

  if ([(HMDAppleMediaAccessorySetupLogEvent *)self selectedHomeLocationStatus]== 3)
  {
    v65 = 2;
  }

  else
  {
    v65 = [(HMDAppleMediaAccessorySetupLogEvent *)self selectedHomeLocationStatus];
  }

  v66 = [MEMORY[0x277CCABB0] numberWithInteger:v65];
  [v3 setObject:v66 forKeyedSubscript:@"selectedHomeLocationStatus"];

  v67 = [MEMORY[0x277CCABB0] numberWithBool:{-[HMDAppleMediaAccessorySetupLogEvent isUserAtOtherOwnedHome](self, "isUserAtOtherOwnedHome")}];
  [v3 setObject:v67 forKeyedSubscript:@"isUserAtOtherOwnedHome"];

  v68 = [(HMDAppleMediaAccessorySetupLogEvent *)self role];
  [v3 setObject:v68 forKeyedSubscript:@"role"];

  v69 = [(HMDAppleMediaAccessorySetupLogEvent *)self category];
  [v3 setObject:v69 forKeyedSubscript:@"category"];

  v70 = [(HMDAppleMediaAccessorySetupLogEvent *)self accessorySoftwareVersion];
  [v3 setObject:v70 forKeyedSubscript:@"accessorySoftwareVersion"];

  v71 = [(HMDAppleMediaAccessorySetupLogEvent *)self setupSessionError];

  if (v71)
  {
    v72 = MEMORY[0x277CCABB0];
    v73 = [(HMDAppleMediaAccessorySetupLogEvent *)self setupSessionError];
    v74 = [v72 numberWithInteger:{objc_msgSend(v73, "code")}];
    [v3 setObject:v74 forKeyedSubscript:@"setupSessionErrorCode"];

    v75 = [(HMDAppleMediaAccessorySetupLogEvent *)self setupSessionError];
    v76 = [v75 domain];
    [v3 setObject:v76 forKeyedSubscript:@"setupSessionErrorDomain"];
  }

  v77 = [(HMMLogEvent *)self error];

  if (v77)
  {
    v78 = MEMORY[0x277CCABB0];
    v79 = [(HMMLogEvent *)self error];
    v80 = [v78 numberWithInteger:{objc_msgSend(v79, "code")}];
    [v3 setObject:v80 forKeyedSubscript:@"configurationErrorCode"];

    v81 = [(HMMLogEvent *)self error];
    v82 = [v81 domain];
    [v3 setObject:v82 forKeyedSubscript:@"configurationErrorDomain"];
  }

  v83 = [(HMDAppleMediaAccessorySetupLogEvent *)self category];
  [v3 setObject:v83 forKeyedSubscript:@"category"];

  v84 = [(HMDAppleMediaAccessorySetupLogEvent *)self retryCount];
  [v3 setObject:v84 forKeyedSubscript:@"retryCount"];

  v85 = [v3 copy];

  return v85;
}

- (HMDAppleMediaAccessorySetupLogEvent)initWithRole:(int64_t)a3 setupStartTime:(unint64_t)a4 setupEndTime:(unint64_t)a5 accessoryAddEndTime:(unint64_t)a6 accessoryRemoveTime:(unint64_t)a7 configurationEndTime:(unint64_t)a8 setupSessionError:(id)a9 setupSessionIdentifier:(id)a10 isRepairSession:(BOOL)a11 category:(id)a12 accessorySoftwareVersion:(id)a13 setupClientBundleID:(id)a14 retryCount:(unint64_t)a15 firstSettingTime:(unint64_t)a16 languageSettingTime:(unint64_t)a17 accessoryInDefaultRoom:(BOOL)a18 selectedHomeLocationStatus:(int64_t)a19 isUserAtOtherOwnedHome:(BOOL)a20 lastPrimaryResidentAvailableTime:(unint64_t)a21 numberOfTimesPrimaryResidentChanged:(unsigned int)a22 lastPrimaryClientConnectedTime:(unint64_t)a23 numberOfTimesPrimaryClientConnected:(unsigned int)a24 numberOfTimesPrimaryClientDisconnected:(unsigned int)a25 numberOfTimesPrimaryClientConnectMessageFailed:(unsigned int)a26 addAccessoryMessageReport:(unint64_t)a27 lastPrimaryClientConnectMessageFailError:(id)a28 accessoryDiagnosticInfoFetchError:(id)a29 primaryResidentDiagnosticInfoFetchError:(id)a30 addAccessoryOnPrimaryFailError:(id)a31
{
  v58 = a9;
  v56 = a10;
  v33 = a12;
  v57 = a13;
  v55 = a14;
  v34 = a28;
  v35 = a29;
  v36 = a30;
  v54 = a31;
  v59.receiver = self;
  v59.super_class = HMDAppleMediaAccessorySetupLogEvent;
  v37 = [(HMMLogEvent *)&v59 init];
  if (v37)
  {
    v38 = [MEMORY[0x277CCABB0] numberWithInteger:a3];
    role = v37->_role;
    v37->_role = v38;

    v37->_setupStartTime = a4;
    v37->_setupEndTime = a5;
    v37->_accessoryAddEndTime = a6;
    v37->_accessoryRemoveTime = a7;
    v37->_configurationEndTime = a8;
    v40 = [v58 copy];
    setupSessionError = v37->_setupSessionError;
    v37->_setupSessionError = v40;

    v37->_isRepairSession = a11;
    v42 = [v33 copy];
    category = v37->_category;
    v37->_category = v42;

    v44 = [v57 copy];
    accessorySoftwareVersion = v37->_accessorySoftwareVersion;
    v37->_accessorySoftwareVersion = v44;

    objc_storeStrong(&v37->_setupClientBundleID, a14);
    objc_storeStrong(&v37->_setupSessionIdentifier, a10);
    v46 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a15];
    retryCount = v37->_retryCount;
    v37->_retryCount = v46;

    v37->_languageSettingTime = a17;
    v37->_firstSettingTime = a16;
    v37->_accessoryInDefaultRoom = a18;
    v37->_selectedHomeLocationStatus = a19;
    v37->_isUserAtOtherOwnedHome = a20;
    v37->_lastPrimaryResidentAvailableTime = a21;
    v37->_numberOfTimesPrimaryResidentChanged = a22;
    v37->_lastPrimaryClientConnectedTime = a23;
    v37->_numberOfTimesPrimaryClientConnected = a24;
    v37->_numberOfTimesPrimaryClientDisconnected = a25;
    v37->_numberOfTimesPrimaryClientConnectMessageFailed = a26;
    v37->_addAccessoryMessageReport = a27;
    objc_storeStrong(&v37->_lastPrimaryClientConnectMessageFailError, a28);
    objc_storeStrong(&v37->_accessoryDiagnosticInfoFetchError, a29);
    objc_storeStrong(&v37->_primaryResidentDiagnosticInfoFetchError, a30);
    objc_storeStrong(&v37->_addAccessoryOnPrimaryFailError, a31);
  }

  return v37;
}

@end