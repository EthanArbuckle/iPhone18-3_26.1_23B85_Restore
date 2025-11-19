@interface HMDHomePodSetupLatencyLogEvent
- (HMDHomePodSetupLatencyLogEvent)initWithSessionSetupOpenMS_HH1:(int64_t)a3 controllerKeyExchangeMS_HH1:(int64_t)a4 newAccessoryTransferMS_HH1:(int64_t)a5 sessionSetupCloseMS_HH1:(int64_t)a6 sentinelZoneFetchMS_HH1:(int64_t)a7 totalDurationMS_HH1:(int64_t)a8 accountSettleWaitMS_HH2:(int64_t)a9 currentDeviceIDSWaitMS_HH2:(int64_t)a10 homeManagerReadyMS_HH2:(int64_t)a11 firstCoreDataImportMS_HH2:(int64_t)a12 accessoryAddMS_HH2:(int64_t)a13 settingsCreationMS_HH2:(int64_t)a14 pairingIdentityCreationMS_HH2:(int64_t)a15 siriReadyMS_HH2:(int64_t)a16 eventRouterServerConnectionMS_HH2:(int64_t)a17 primaryResidentElectionMS_HH2:(int64_t)a18 eventRouterFirstEventPushMS_HH2:(int64_t)a19 totalDurationMS_HH2:(int64_t)a20 iCloudAvailable_INT:(BOOL)a21 IDSAvailable_INT:(BOOL)a22 manateeAvailable_INT:(BOOL)a23 networkAvailable_INT:(BOOL)a24 controllerInHH2_INT:(BOOL)a25 controllerHasSentinelZone_INT:(BOOL)a26 errorCode:(int64_t)a27 errorDomain:(id)a28 underlyingErrorCode:(int64_t)a29 underlyingErrorDomain:(id)a30 errorStage_String:(id)a31 setupSessionIdentifier:(id)a32 numberOfTimesPrimaryResidentChanged_HH2:(unsigned int)a33 lastPrimaryClientConnectedTime_HH2:(int64_t)a34 numberOfTimesPrimaryClientConnected_HH2:(unsigned int)a35 numberOfTimesPrimaryClientDisconnected_HH2:(unsigned int)a36 numberOfTimesPrimaryClientConnectMessageFailed_HH2:(unsigned int)a37 currentDeviceConfirmedPrimaryResident_INT:(BOOL)a38 lastPrimaryClientConnectMessageFailErrorCode_HH2:(int64_t)a39 lastPrimaryClientConnectMessageFailErrorDomain_HH2:(id)a40 lastPrimaryClientConnectMessageFailUnderlyingErrorCode_HH2:(int64_t)a41 lastPrimaryClientConnectMessageFailUnderlyingErrorDomain_HH2:(id)a42 primaryResidentElectionPeerDeviceFutureResolvedMS_HH2:(int64_t)a43 primaryResidentElectionFirstCloudKitImportFutureResolvedMS_HH2:(int64_t)a44 primaryResidentElectionModernTransportStartedFutureResolvedMS_HH2:(int64_t)a45 primaryResidentSelectionConnectedToStatusKitFutureResolvedMS_HH2:(int64_t)a46 primaryResidentElectionJoinMeshMS_HH2:(int64_t)a47 firstCoreDataContainerSetupDurationMS_HH2:(int64_t)a48 firstCoreDataContainerSetupErrorCode_HH2:(int64_t)a49 firstCoreDataContainerSetupErrorDomain_HH2:(id)a50 firstCoreDataContainerSetupUnderlyingErrorCode_HH2:(int64_t)a51 firstCoreDataContainerSetupUnderlyingErrorDomain_HH2:(id)a52 savedEventState:(unint64_t)a53;
- (NSDictionary)coreAnalyticsEventDictionary;
- (id)initLogEventWithInitialState:(unint64_t)a3;
@end

@implementation HMDHomePodSetupLatencyLogEvent

- (NSDictionary)coreAnalyticsEventDictionary
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v4 = [MEMORY[0x277CCABB0] numberWithLongLong:{-[HMDHomePodSetupLatencyLogEvent sessionSetupOpenMS_HH1](self, "sessionSetupOpenMS_HH1")}];
  [v3 setObject:v4 forKeyedSubscript:@"sessionSetupOpenMS_HH1"];

  v5 = [MEMORY[0x277CCABB0] numberWithLongLong:{-[HMDHomePodSetupLatencyLogEvent controllerKeyExchangeMS_HH1](self, "controllerKeyExchangeMS_HH1")}];
  [v3 setObject:v5 forKeyedSubscript:@"controllerKeyExchangeMS_HH1"];

  v6 = [MEMORY[0x277CCABB0] numberWithLongLong:{-[HMDHomePodSetupLatencyLogEvent newAccessoryTransferMS_HH1](self, "newAccessoryTransferMS_HH1")}];
  [v3 setObject:v6 forKeyedSubscript:@"newAccessoryTransferMS_HH1"];

  v7 = [MEMORY[0x277CCABB0] numberWithLongLong:{-[HMDHomePodSetupLatencyLogEvent sessionSetupCloseMS_HH1](self, "sessionSetupCloseMS_HH1")}];
  [v3 setObject:v7 forKeyedSubscript:@"sessionSetupCloseMS_HH1"];

  v8 = [MEMORY[0x277CCABB0] numberWithLongLong:{-[HMDHomePodSetupLatencyLogEvent sentinelZoneFetchMS_HH1](self, "sentinelZoneFetchMS_HH1")}];
  [v3 setObject:v8 forKeyedSubscript:@"sentinelZoneFetchMS_HH1"];

  v9 = [MEMORY[0x277CCABB0] numberWithLongLong:{-[HMDHomePodSetupLatencyLogEvent totalDurationMS_HH1](self, "totalDurationMS_HH1")}];
  [v3 setObject:v9 forKeyedSubscript:@"totalDurationMS_HH1"];

  v10 = [MEMORY[0x277CCABB0] numberWithLongLong:{-[HMDHomePodSetupLatencyLogEvent accountSettleWaitMS_HH2](self, "accountSettleWaitMS_HH2")}];
  [v3 setObject:v10 forKeyedSubscript:@"accountSettleWaitMS_HH2"];

  v11 = [MEMORY[0x277CCABB0] numberWithLongLong:{-[HMDHomePodSetupLatencyLogEvent currentDeviceIDSWaitMS_HH2](self, "currentDeviceIDSWaitMS_HH2")}];
  [v3 setObject:v11 forKeyedSubscript:@"currentDeviceIDSWaitMS_HH2"];

  v12 = [MEMORY[0x277CCABB0] numberWithLongLong:{-[HMDHomePodSetupLatencyLogEvent homeManagerReadyMS_HH2](self, "homeManagerReadyMS_HH2")}];
  [v3 setObject:v12 forKeyedSubscript:@"homeManagerReadyMS_HH2"];

  v13 = [MEMORY[0x277CCABB0] numberWithLongLong:{-[HMDHomePodSetupLatencyLogEvent firstCoreDataImportMS_HH2](self, "firstCoreDataImportMS_HH2")}];
  [v3 setObject:v13 forKeyedSubscript:@"firstCoreDataImportMS_HH2"];

  v14 = [MEMORY[0x277CCABB0] numberWithLongLong:{-[HMDHomePodSetupLatencyLogEvent accessoryAddMS_HH2](self, "accessoryAddMS_HH2")}];
  [v3 setObject:v14 forKeyedSubscript:@"accessoryAddMS_HH2"];

  v15 = [MEMORY[0x277CCABB0] numberWithLongLong:{-[HMDHomePodSetupLatencyLogEvent settingsCreationMS_HH2](self, "settingsCreationMS_HH2")}];
  [v3 setObject:v15 forKeyedSubscript:@"settingsCreationMS_HH2"];

  v16 = [MEMORY[0x277CCABB0] numberWithLongLong:{-[HMDHomePodSetupLatencyLogEvent pairingIdentityCreationMS_HH2](self, "pairingIdentityCreationMS_HH2")}];
  [v3 setObject:v16 forKeyedSubscript:@"pairingIdentityCreationMS_HH2"];

  v17 = [MEMORY[0x277CCABB0] numberWithLongLong:{-[HMDHomePodSetupLatencyLogEvent siriReadyMS_HH2](self, "siriReadyMS_HH2")}];
  [v3 setObject:v17 forKeyedSubscript:@"siriReadyMS_HH2"];

  v18 = [MEMORY[0x277CCABB0] numberWithLongLong:{-[HMDHomePodSetupLatencyLogEvent eventRouterServerConnectionMS_HH2](self, "eventRouterServerConnectionMS_HH2")}];
  [v3 setObject:v18 forKeyedSubscript:@"eventRouterServerConnectionMS_HH2"];

  v19 = [MEMORY[0x277CCABB0] numberWithLongLong:{-[HMDHomePodSetupLatencyLogEvent primaryResidentElectionMS_HH2](self, "primaryResidentElectionMS_HH2")}];
  [v3 setObject:v19 forKeyedSubscript:@"primaryResidentElectionMS_HH2"];

  v20 = [MEMORY[0x277CCABB0] numberWithLongLong:{-[HMDHomePodSetupLatencyLogEvent eventRouterFirstEventPushMS_HH2](self, "eventRouterFirstEventPushMS_HH2")}];
  [v3 setObject:v20 forKeyedSubscript:@"eventRouterFirstEventPushMS_HH2"];

  v21 = [MEMORY[0x277CCABB0] numberWithLongLong:{-[HMDHomePodSetupLatencyLogEvent totalDurationMS_HH2](self, "totalDurationMS_HH2")}];
  [v3 setObject:v21 forKeyedSubscript:@"totalDurationMS_HH2"];

  v22 = [MEMORY[0x277CCABB0] numberWithBool:{-[HMDHomePodSetupLatencyLogEvent iCloudAvailable_INT](self, "iCloudAvailable_INT")}];
  [v3 setObject:v22 forKeyedSubscript:@"iCloudAvailable_INT"];

  v23 = [MEMORY[0x277CCABB0] numberWithBool:{-[HMDHomePodSetupLatencyLogEvent IDSAvailable_INT](self, "IDSAvailable_INT")}];
  [v3 setObject:v23 forKeyedSubscript:@"IDSAvailable_INT"];

  v24 = [MEMORY[0x277CCABB0] numberWithInteger:{-[HMDHomePodSetupLatencyLogEvent IDSRegistrationStatus_INT](self, "IDSRegistrationStatus_INT")}];
  [v3 setObject:v24 forKeyedSubscript:@"IDSRegistrationStatus_INT"];

  v25 = [MEMORY[0x277CCABB0] numberWithInteger:{-[HMDHomePodSetupLatencyLogEvent IDSRegistrationError_INT](self, "IDSRegistrationError_INT")}];
  [v3 setObject:v25 forKeyedSubscript:@"IDSRegistrationError_INT"];

  v26 = [MEMORY[0x277CCABB0] numberWithBool:{-[HMDHomePodSetupLatencyLogEvent manateeAvailable_INT](self, "manateeAvailable_INT")}];
  [v3 setObject:v26 forKeyedSubscript:@"manateeAvailable_INT"];

  v27 = [MEMORY[0x277CCABB0] numberWithBool:{-[HMDHomePodSetupLatencyLogEvent networkAvailable_INT](self, "networkAvailable_INT")}];
  [v3 setObject:v27 forKeyedSubscript:@"networkAvailable_INT"];

  v28 = [MEMORY[0x277CCABB0] numberWithBool:{-[HMDHomePodSetupLatencyLogEvent controllerInHH2_INT](self, "controllerInHH2_INT")}];
  [v3 setObject:v28 forKeyedSubscript:@"controllerInHH2_INT"];

  v29 = [MEMORY[0x277CCABB0] numberWithBool:{-[HMDHomePodSetupLatencyLogEvent controllerHasSentinelZone_INT](self, "controllerHasSentinelZone_INT")}];
  [v3 setObject:v29 forKeyedSubscript:@"controllerHasSentinelZone_INT"];

  v30 = [(HMDHomePodSetupLatencyLogEvent *)self errorStage_String];
  [v3 setObject:v30 forKeyedSubscript:@"errorStage_String"];

  v31 = [(HMDHomePodSetupLatencyLogEvent *)self setupSessionIdentifier];

  if (v31)
  {
    v32 = [(HMDHomePodSetupLatencyLogEvent *)self setupSessionIdentifier];
    [v3 setObject:v32 forKeyedSubscript:@"setupSessionIdentifier"];
  }

  v33 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{-[HMDHomePodSetupLatencyLogEvent numberOfTimesPrimaryResidentChanged_HH2](self, "numberOfTimesPrimaryResidentChanged_HH2")}];
  [v3 setObject:v33 forKeyedSubscript:@"numberOfTimesPrimaryResidentChanged"];

  v34 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{-[HMDHomePodSetupLatencyLogEvent lastPrimaryClientConnectedTime_HH2](self, "lastPrimaryClientConnectedTime_HH2")}];
  [v3 setObject:v34 forKeyedSubscript:@"lastPrimaryClientConnectedTime"];

  v35 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{-[HMDHomePodSetupLatencyLogEvent numberOfTimesPrimaryClientConnected_HH2](self, "numberOfTimesPrimaryClientConnected_HH2")}];
  [v3 setObject:v35 forKeyedSubscript:@"numberOfTimesPrimaryClientConnected"];

  v36 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{-[HMDHomePodSetupLatencyLogEvent numberOfTimesPrimaryClientDisconnected_HH2](self, "numberOfTimesPrimaryClientDisconnected_HH2")}];
  [v3 setObject:v36 forKeyedSubscript:@"numberOfTimesPrimaryClientDisconnected"];

  v37 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{-[HMDHomePodSetupLatencyLogEvent numberOfTimesPrimaryClientConnectMessageFailed_HH2](self, "numberOfTimesPrimaryClientConnectMessageFailed_HH2")}];
  [v3 setObject:v37 forKeyedSubscript:@"numberOfTimesPrimaryClientConnectMessageFailed"];

  v38 = [MEMORY[0x277CCABB0] numberWithBool:{-[HMDHomePodSetupLatencyLogEvent currentDeviceConfirmedPrimaryResident_INT](self, "currentDeviceConfirmedPrimaryResident_INT")}];
  [v3 setObject:v38 forKeyedSubscript:@"currentDeviceConfirmedPrimaryResident_INT"];

  v39 = [MEMORY[0x277CCABB0] numberWithInteger:{-[HMDHomePodSetupLatencyLogEvent lastPrimaryClientConnectMessageFailErrorCode_HH2](self, "lastPrimaryClientConnectMessageFailErrorCode_HH2")}];
  [v3 setObject:v39 forKeyedSubscript:@"lastPrimaryClientConnectMessageFailErrorCode"];

  v40 = [(HMDHomePodSetupLatencyLogEvent *)self lastPrimaryClientConnectMessageFailErrorDomain_HH2];
  [v3 setObject:v40 forKeyedSubscript:@"lastPrimaryClientConnectMessageFailErrorDomain"];

  v41 = [MEMORY[0x277CCABB0] numberWithInteger:{-[HMDHomePodSetupLatencyLogEvent lastPrimaryClientConnectMessageFailUnderlyingErrorCode_HH2](self, "lastPrimaryClientConnectMessageFailUnderlyingErrorCode_HH2")}];
  [v3 setObject:v41 forKeyedSubscript:@"lastPrimaryClientConnectMessageFailUnderlyingErrorCode"];

  v42 = [(HMDHomePodSetupLatencyLogEvent *)self lastPrimaryClientConnectMessageFailUnderlyingErrorDomain_HH2];
  [v3 setObject:v42 forKeyedSubscript:@"lastPrimaryClientConnectMessageFailUnderlyingErrorDomain"];

  v43 = [MEMORY[0x277CCABB0] numberWithLongLong:{-[HMDHomePodSetupLatencyLogEvent primaryResidentElectionPeerDeviceFutureResolvedMS_HH2](self, "primaryResidentElectionPeerDeviceFutureResolvedMS_HH2")}];
  [v3 setObject:v43 forKeyedSubscript:@"primaryResidentElectionPeerDeviceFutureResolvedMS_HH2"];

  v44 = [MEMORY[0x277CCABB0] numberWithLongLong:{-[HMDHomePodSetupLatencyLogEvent primaryResidentElectionFirstCloudKitImportFutureResolvedMS_HH2](self, "primaryResidentElectionFirstCloudKitImportFutureResolvedMS_HH2")}];
  [v3 setObject:v44 forKeyedSubscript:@"primaryResidentElectionFirstCloudKitImportFutureResolvedMS_HH2"];

  v45 = [MEMORY[0x277CCABB0] numberWithLongLong:{-[HMDHomePodSetupLatencyLogEvent primaryResidentElectionModernTransportStartedFutureResolvedMS_HH2](self, "primaryResidentElectionModernTransportStartedFutureResolvedMS_HH2")}];
  [v3 setObject:v45 forKeyedSubscript:@"primaryResidentElectionModernTransportStartedFutureResolvedMS_HH2"];

  v46 = [MEMORY[0x277CCABB0] numberWithLongLong:{-[HMDHomePodSetupLatencyLogEvent primaryResidentSelectionConnectedToStatusKitFutureResolvedMS_HH2](self, "primaryResidentSelectionConnectedToStatusKitFutureResolvedMS_HH2")}];
  [v3 setObject:v46 forKeyedSubscript:@"primaryResidentSelectionConnectedToStatusKitFutureResolvedMS_HH2"];

  v47 = [MEMORY[0x277CCABB0] numberWithLongLong:{-[HMDHomePodSetupLatencyLogEvent primaryResidentElectionJoinMeshMS_HH2](self, "primaryResidentElectionJoinMeshMS_HH2")}];
  [v3 setObject:v47 forKeyedSubscript:@"primaryResidentElectionJoinMeshMS_HH2"];

  v48 = [MEMORY[0x277CCABB0] numberWithLongLong:{-[HMDHomePodSetupLatencyLogEvent firstCoreDataContainerSetupDurationMS_HH2](self, "firstCoreDataContainerSetupDurationMS_HH2")}];
  [v3 setObject:v48 forKeyedSubscript:@"firstCoreDataContainerSetupDurationMS_HH2"];

  v49 = [MEMORY[0x277CCABB0] numberWithInteger:{-[HMDHomePodSetupLatencyLogEvent firstCoreDataContainerSetupErrorCode_HH2](self, "firstCoreDataContainerSetupErrorCode_HH2")}];
  [v3 setObject:v49 forKeyedSubscript:@"firstCoreDataContainerSetupErrorCode_HH2"];

  v50 = [(HMDHomePodSetupLatencyLogEvent *)self firstCoreDataContainerSetupErrorDomain_HH2];
  [v3 setObject:v50 forKeyedSubscript:@"firstCoreDataContainerSetupErrorDomain_HH2"];

  v51 = [MEMORY[0x277CCABB0] numberWithInteger:{-[HMDHomePodSetupLatencyLogEvent firstCoreDataContainerSetupUnderlyingErrorCode_HH2](self, "firstCoreDataContainerSetupUnderlyingErrorCode_HH2")}];
  [v3 setObject:v51 forKeyedSubscript:@"firstCoreDataContainerSetupUnderlyingErrorCode_HH2"];

  v52 = [(HMDHomePodSetupLatencyLogEvent *)self firstCoreDataContainerSetupUnderlyingErrorDomain_HH2];
  [v3 setObject:v52 forKeyedSubscript:@"firstCoreDataContainerSetupUnderlyingErrorDomain_HH2"];

  v53 = [v3 copy];

  return v53;
}

- (HMDHomePodSetupLatencyLogEvent)initWithSessionSetupOpenMS_HH1:(int64_t)a3 controllerKeyExchangeMS_HH1:(int64_t)a4 newAccessoryTransferMS_HH1:(int64_t)a5 sessionSetupCloseMS_HH1:(int64_t)a6 sentinelZoneFetchMS_HH1:(int64_t)a7 totalDurationMS_HH1:(int64_t)a8 accountSettleWaitMS_HH2:(int64_t)a9 currentDeviceIDSWaitMS_HH2:(int64_t)a10 homeManagerReadyMS_HH2:(int64_t)a11 firstCoreDataImportMS_HH2:(int64_t)a12 accessoryAddMS_HH2:(int64_t)a13 settingsCreationMS_HH2:(int64_t)a14 pairingIdentityCreationMS_HH2:(int64_t)a15 siriReadyMS_HH2:(int64_t)a16 eventRouterServerConnectionMS_HH2:(int64_t)a17 primaryResidentElectionMS_HH2:(int64_t)a18 eventRouterFirstEventPushMS_HH2:(int64_t)a19 totalDurationMS_HH2:(int64_t)a20 iCloudAvailable_INT:(BOOL)a21 IDSAvailable_INT:(BOOL)a22 manateeAvailable_INT:(BOOL)a23 networkAvailable_INT:(BOOL)a24 controllerInHH2_INT:(BOOL)a25 controllerHasSentinelZone_INT:(BOOL)a26 errorCode:(int64_t)a27 errorDomain:(id)a28 underlyingErrorCode:(int64_t)a29 underlyingErrorDomain:(id)a30 errorStage_String:(id)a31 setupSessionIdentifier:(id)a32 numberOfTimesPrimaryResidentChanged_HH2:(unsigned int)a33 lastPrimaryClientConnectedTime_HH2:(int64_t)a34 numberOfTimesPrimaryClientConnected_HH2:(unsigned int)a35 numberOfTimesPrimaryClientDisconnected_HH2:(unsigned int)a36 numberOfTimesPrimaryClientConnectMessageFailed_HH2:(unsigned int)a37 currentDeviceConfirmedPrimaryResident_INT:(BOOL)a38 lastPrimaryClientConnectMessageFailErrorCode_HH2:(int64_t)a39 lastPrimaryClientConnectMessageFailErrorDomain_HH2:(id)a40 lastPrimaryClientConnectMessageFailUnderlyingErrorCode_HH2:(int64_t)a41 lastPrimaryClientConnectMessageFailUnderlyingErrorDomain_HH2:(id)a42 primaryResidentElectionPeerDeviceFutureResolvedMS_HH2:(int64_t)a43 primaryResidentElectionFirstCloudKitImportFutureResolvedMS_HH2:(int64_t)a44 primaryResidentElectionModernTransportStartedFutureResolvedMS_HH2:(int64_t)a45 primaryResidentSelectionConnectedToStatusKitFutureResolvedMS_HH2:(int64_t)a46 primaryResidentElectionJoinMeshMS_HH2:(int64_t)a47 firstCoreDataContainerSetupDurationMS_HH2:(int64_t)a48 firstCoreDataContainerSetupErrorCode_HH2:(int64_t)a49 firstCoreDataContainerSetupErrorDomain_HH2:(id)a50 firstCoreDataContainerSetupUnderlyingErrorCode_HH2:(int64_t)a51 firstCoreDataContainerSetupUnderlyingErrorDomain_HH2:(id)a52 savedEventState:(unint64_t)a53
{
  v77[1] = *MEMORY[0x277D85DE8];
  v55 = a28;
  v74 = a30;
  v73 = a31;
  v72 = a32;
  v71 = a40;
  v70 = a42;
  v69 = a50;
  v68 = a52;
  v75.receiver = self;
  v75.super_class = HMDHomePodSetupLatencyLogEvent;
  v56 = [(HMMLogEvent *)&v75 init];
  v57 = v56;
  if (v56)
  {
    v56->_sessionSetupOpenMS_HH1 = a3;
    v56->_controllerKeyExchangeMS_HH1 = a4;
    v56->_newAccessoryTransferMS_HH1 = a5;
    v56->_sessionSetupCloseMS_HH1 = a6;
    v56->_sentinelZoneFetchMS_HH1 = a7;
    v56->_totalDurationMS_HH1 = a8;
    v56->_accountSettleWaitMS_HH2 = a9;
    v56->_currentDeviceIDSWaitMS_HH2 = a10;
    v56->_homeManagerReadyMS_HH2 = a11;
    v56->_firstCoreDataImportMS_HH2 = a12;
    v56->_accessoryAddMS_HH2 = a13;
    v56->_settingsCreationMS_HH2 = a14;
    v56->_pairingIdentityCreationMS_HH2 = a15;
    v56->_siriReadyMS_HH2 = a16;
    v56->_eventRouterServerConnectionMS_HH2 = a17;
    v56->_primaryResidentElectionMS_HH2 = a18;
    v56->_eventRouterFirstEventPushMS_HH2 = a19;
    v56->_totalDurationMS_HH2 = a20;
    v56->_iCloudAvailable_INT = a21;
    v56->_IDSAvailable_INT = a22;
    v56->_manateeAvailable_INT = a23;
    v56->_networkAvailable_INT = a24;
    v56->_controllerInHH2_INT = a25;
    v56->_controllerHasSentinelZone_INT = a26;
    objc_storeStrong(&v56->_errorStage_String, a31);
    objc_storeStrong(&v57->_setupSessionIdentifier, a32);
    v57->_numberOfTimesPrimaryResidentChanged_HH2 = a33;
    v57->_lastPrimaryClientConnectedTime_HH2 = a34;
    v57->_numberOfTimesPrimaryClientConnected_HH2 = a35;
    v57->_numberOfTimesPrimaryClientDisconnected_HH2 = a36;
    v57->_numberOfTimesPrimaryClientConnectMessageFailed_HH2 = a37;
    v57->_currentDeviceConfirmedPrimaryResident_INT = a38;
    v57->_lastPrimaryClientConnectMessageFailErrorCode_HH2 = a39;
    objc_storeStrong(&v57->_lastPrimaryClientConnectMessageFailErrorDomain_HH2, a40);
    v57->_lastPrimaryClientConnectMessageFailUnderlyingErrorCode_HH2 = a41;
    objc_storeStrong(&v57->_lastPrimaryClientConnectMessageFailUnderlyingErrorDomain_HH2, a42);
    v57->_primaryResidentElectionPeerDeviceFutureResolvedMS_HH2 = a43;
    v57->_primaryResidentElectionFirstCloudKitImportFutureResolvedMS_HH2 = a44;
    v57->_primaryResidentElectionModernTransportStartedFutureResolvedMS_HH2 = a45;
    v57->_primaryResidentSelectionConnectedToStatusKitFutureResolvedMS_HH2 = a46;
    v57->_primaryResidentElectionJoinMeshMS_HH2 = a47;
    v57->_firstCoreDataContainerSetupDurationMS_HH2 = a48;
    v57->_firstCoreDataContainerSetupErrorCode_HH2 = a49;
    objc_storeStrong(&v57->_firstCoreDataContainerSetupErrorDomain_HH2, a50);
    v57->_firstCoreDataContainerSetupUnderlyingErrorCode_HH2 = a51;
    objc_storeStrong(&v57->_firstCoreDataContainerSetupUnderlyingErrorDomain_HH2, a52);
    v57->_savedEventState = a53;
    if (v55)
    {
      if (v74)
      {
        v58 = [MEMORY[0x277CCA9B8] errorWithDomain:v74 code:a29 userInfo:0];
        v76 = *MEMORY[0x277CCA7E8];
        v77[0] = v58;
        v59 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v77 forKeys:&v76 count:1];
      }

      else
      {
        v59 = 0;
      }

      v60 = [MEMORY[0x277CCA9B8] errorWithDomain:v55 code:a27 userInfo:{v59, a39}];
      [(HMMLogEvent *)v57 setError:v60];
    }
  }

  v61 = *MEMORY[0x277D85DE8];
  return v57;
}

- (id)initLogEventWithInitialState:(unint64_t)a3
{
  BYTE4(v6) = 0;
  LODWORD(v6) = 0;
  LODWORD(v5) = 0;
  WORD2(v4) = 0;
  LODWORD(v4) = 0;
  return [HMDHomePodSetupLatencyLogEvent initWithSessionSetupOpenMS_HH1:"initWithSessionSetupOpenMS_HH1:controllerKeyExchangeMS_HH1:newAccessoryTransferMS_HH1:sessionSetupCloseMS_HH1:sentinelZoneFetchMS_HH1:totalDurationMS_HH1:accountSettleWaitMS_HH2:currentDeviceIDSWaitMS_HH2:homeManagerReadyMS_HH2:firstCoreDataImportMS_HH2:accessoryAddMS_HH2:settingsCreationMS_HH2:pairingIdentityCreationMS_HH2:siriReadyMS_HH2:eventRouterServerConnectionMS_HH2:primaryResidentElectionMS_HH2:eventRouterFirstEventPushMS_HH2:totalDurationMS_HH2:iCloudAvailable_INT:IDSAvailable_INT:manateeAvailable_INT:networkAvailable_INT:controllerInHH2_INT:controllerHasSentinelZone_INT:errorCode:errorDomain:underlyingErrorCode:underlyingErrorDomain:errorStage_String:setupSessionIdentifier:numberOfTimesPrimaryResidentChanged_HH2:lastPrimaryClientConnectedTime_HH2:numberOfTimesPrimaryClientConnected_HH2:numberOfTimesPrimaryClientDisconnected_HH2:numberOfTimesPrimaryClientConnectMessageFailed_HH2:currentDeviceConfirmedPrimaryResident_INT:lastPrimaryClientConnectMessageFailErrorCode_HH2:lastPrimaryClientConnectMessageFailErrorDomain_HH2:lastPrimaryClientConnectMessageFailUnderlyingErrorCode_HH2:lastPrimaryClientConnectMessageFailUnderlyingErrorDomain_HH2:primaryResidentElectionPeerDeviceFutureResolvedMS_HH2:primaryResidentElectionFirstCloudKitImportFutureResolvedMS_HH2:primaryResidentElectionModernTransportStartedFutureResolvedMS_HH2:primaryResidentSelectionConnectedToStatusKitFutureResolvedMS_HH2:primaryResidentElectionJoinMeshMS_HH2:firstCoreDataContainerSetupDurationMS_HH2:firstCoreDataContainerSetupErrorCode_HH2:firstCoreDataContainerSetupErrorDomain_HH2:firstCoreDataContainerSetupUnderlyingErrorCode_HH2:firstCoreDataContainerSetupUnderlyingErrorDomain_HH2:savedEventState:" controllerKeyExchangeMS_HH1:0 newAccessoryTransferMS_HH1:0 sessionSetupCloseMS_HH1:0 sentinelZoneFetchMS_HH1:0 totalDurationMS_HH1:0 accountSettleWaitMS_HH2:0 currentDeviceIDSWaitMS_HH2:0 homeManagerReadyMS_HH2:0 firstCoreDataImportMS_HH2:0 accessoryAddMS_HH2:0 settingsCreationMS_HH2:0 pairingIdentityCreationMS_HH2:0 siriReadyMS_HH2:0 eventRouterServerConnectionMS_HH2:0 primaryResidentElectionMS_HH2:0 eventRouterFirstEventPushMS_HH2:0 totalDurationMS_HH2:0 iCloudAvailable_INT:0 IDSAvailable_INT:v4 manateeAvailable_INT:0 networkAvailable_INT:*MEMORY[0x277CCFD28] controllerInHH2_INT:0 controllerHasSentinelZone_INT:*MEMORY[0x277CCFD28] errorCode:&stru_286509E58 errorDomain:&stru_286509E58 underlyingErrorCode:v5 underlyingErrorDomain:0 errorStage_String:0 setupSessionIdentifier:v6 numberOfTimesPrimaryResidentChanged_HH2:0 lastPrimaryClientConnectedTime_HH2:*MEMORY[0x277CCFD28] numberOfTimesPrimaryClientConnected_HH2:0 numberOfTimesPrimaryClientDisconnected_HH2:*MEMORY[0x277CCFD28] numberOfTimesPrimaryClientConnectMessageFailed_HH2:0 currentDeviceConfirmedPrimaryResident_INT:0 lastPrimaryClientConnectMessageFailErrorCode_HH2:0 lastPrimaryClientConnectMessageFailErrorDomain_HH2:0 lastPrimaryClientConnectMessageFailUnderlyingErrorCode_HH2:0 lastPrimaryClientConnectMessageFailUnderlyingErrorDomain_HH2:0 primaryResidentElectionPeerDeviceFutureResolvedMS_HH2:0 primaryResidentElectionFirstCloudKitImportFutureResolvedMS_HH2:*MEMORY[0x277CCFD28] primaryResidentElectionModernTransportStartedFutureResolvedMS_HH2:0 primaryResidentSelectionConnectedToStatusKitFutureResolvedMS_HH2:*MEMORY[0x277CCFD28] primaryResidentElectionJoinMeshMS_HH2:a3 firstCoreDataContainerSetupDurationMS_HH2:? firstCoreDataContainerSetupErrorCode_HH2:? firstCoreDataContainerSetupErrorDomain_HH2:? firstCoreDataContainerSetupUnderlyingErrorCode_HH2:? firstCoreDataContainerSetupUnderlyingErrorDomain_HH2:? savedEventState:?];
}

@end