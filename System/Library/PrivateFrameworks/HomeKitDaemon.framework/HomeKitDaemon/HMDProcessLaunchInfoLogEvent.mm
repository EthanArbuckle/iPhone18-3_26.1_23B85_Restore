@interface HMDProcessLaunchInfoLogEvent
- (HMDProcessLaunchInfoLogEvent)initWithSubmissionState:(int64_t)state dataSyncState:(id)syncState timeIntervalSincePreviousProcessLaunch:(double)launch millisecondsToHomeDataLoad:(int64_t)load millisecondsToXPCMessageTransportReady:(int64_t)ready millisecondsSinceLaunchToDataSyncStateGood:(int64_t)good millisecondsToAccountResolved:(int64_t)resolved numUncommittedRecords:(int64_t)self0 numUncommittedAndPushedRecords:(int64_t)self1 processExitType:(id)self2 processExitReason:(id)self3 isConfigurationLoaded:(BOOL)self4 isTTSUInProgress:(BOOL)self5;
- (NSDictionary)coreAnalyticsEventDictionary;
@end

@implementation HMDProcessLaunchInfoLogEvent

- (NSDictionary)coreAnalyticsEventDictionary
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v4 = [MEMORY[0x277CCABB0] numberWithInteger:{-[HMDProcessLaunchInfoLogEvent submissionState](self, "submissionState")}];
  [dictionary setObject:v4 forKeyedSubscript:@"submissionState"];

  dataSyncState = [(HMDProcessLaunchInfoLogEvent *)self dataSyncState];
  [dictionary setObject:dataSyncState forKeyedSubscript:@"dataSyncState"];

  v6 = +[HMDLogEventHistograms latencyHistogram];
  v7 = [v6 intervalIndexForValue:{-[HMDProcessLaunchInfoLogEvent millisecondsSinceLaunchToDataSyncStateGood](self, "millisecondsSinceLaunchToDataSyncStateGood")}];
  [dictionary setObject:v7 forKeyedSubscript:@"millisecondsSinceLaunchToDataSyncStateGood"];

  [(HMDProcessLaunchInfoLogEvent *)self timeIntervalSincePreviousProcessLaunch];
  if (v8 > 0.0)
  {
    v9 = +[HMDLogEventHistograms highVolumeHistogram];
    [(HMDProcessLaunchInfoLogEvent *)self timeIntervalSincePreviousProcessLaunch];
    v11 = [v9 intervalIndexForValue:v10];
    [dictionary setObject:v11 forKeyedSubscript:@"timeIntervalSincePreviousProcessLaunch"];
  }

  v12 = [MEMORY[0x277CCABB0] numberWithInteger:{-[HMDProcessLaunchInfoLogEvent homeDataLoadedMilliseconds](self, "homeDataLoadedMilliseconds")}];
  [dictionary setObject:v12 forKeyedSubscript:@"homeDataLoadedMilliseconds"];

  v13 = [MEMORY[0x277CCABB0] numberWithInteger:{-[HMDProcessLaunchInfoLogEvent xpcMessageTransportReadyMilliseconds](self, "xpcMessageTransportReadyMilliseconds")}];
  [dictionary setObject:v13 forKeyedSubscript:@"xpcMessageTransportReadyMilliseconds"];

  v14 = [MEMORY[0x277CCABB0] numberWithInteger:{-[HMDProcessLaunchInfoLogEvent millisecondsSinceLaunchToDataSyncStateGood](self, "millisecondsSinceLaunchToDataSyncStateGood")}];
  [dictionary setObject:v14 forKeyedSubscript:@"dataSyncStateGoodMilliseconds"];

  v15 = [MEMORY[0x277CCABB0] numberWithInteger:{-[HMDProcessLaunchInfoLogEvent millisecondsToAccountResolved](self, "millisecondsToAccountResolved")}];
  [dictionary setObject:v15 forKeyedSubscript:@"accountResolvedMilliseconds"];

  v16 = [MEMORY[0x277CCABB0] numberWithInteger:{-[HMDProcessLaunchInfoLogEvent numUncommittedRecords](self, "numUncommittedRecords")}];
  [dictionary setObject:v16 forKeyedSubscript:@"numUncommittedRecords"];

  v17 = [MEMORY[0x277CCABB0] numberWithInteger:{-[HMDProcessLaunchInfoLogEvent numUncommittedAndPushedRecords](self, "numUncommittedAndPushedRecords")}];
  [dictionary setObject:v17 forKeyedSubscript:@"numUncommittedAndPushedRecords"];

  processExitType = [(HMDProcessLaunchInfoLogEvent *)self processExitType];
  [dictionary setObject:processExitType forKeyedSubscript:@"processExitType"];

  processExitReason = [(HMDProcessLaunchInfoLogEvent *)self processExitReason];
  [dictionary setObject:processExitReason forKeyedSubscript:@"processExitReason"];

  v20 = [MEMORY[0x277CCABB0] numberWithBool:{-[HMDProcessLaunchInfoLogEvent isConfigurationLoaded](self, "isConfigurationLoaded")}];
  [dictionary setObject:v20 forKeyedSubscript:@"isConfigurationLoaded_BOOL"];

  v21 = [MEMORY[0x277CCABB0] numberWithBool:{-[HMDProcessLaunchInfoLogEvent isTTSUInProgress](self, "isTTSUInProgress")}];
  [dictionary setObject:v21 forKeyedSubscript:@"isTTSUInProgress_BOOL"];

  if ([(HMDProcessLaunchInfoLogEvent *)self isConfigurationLoaded])
  {
    v22 = &unk_283E73250;
  }

  else
  {
    v22 = &unk_283E73268;
  }

  [dictionary setObject:v22 forKeyedSubscript:@"isConfigurationLoaded_INT"];
  if ([(HMDProcessLaunchInfoLogEvent *)self isTTSUInProgress])
  {
    v23 = &unk_283E73250;
  }

  else
  {
    v23 = &unk_283E73268;
  }

  [dictionary setObject:v23 forKeyedSubscript:@"isTTSUInProgress_INT"];
  v24 = [dictionary copy];

  return v24;
}

- (HMDProcessLaunchInfoLogEvent)initWithSubmissionState:(int64_t)state dataSyncState:(id)syncState timeIntervalSincePreviousProcessLaunch:(double)launch millisecondsToHomeDataLoad:(int64_t)load millisecondsToXPCMessageTransportReady:(int64_t)ready millisecondsSinceLaunchToDataSyncStateGood:(int64_t)good millisecondsToAccountResolved:(int64_t)resolved numUncommittedRecords:(int64_t)self0 numUncommittedAndPushedRecords:(int64_t)self1 processExitType:(id)self2 processExitReason:(id)self3 isConfigurationLoaded:(BOOL)self4 isTTSUInProgress:(BOOL)self5
{
  syncStateCopy = syncState;
  typeCopy = type;
  reasonCopy = reason;
  v29.receiver = self;
  v29.super_class = HMDProcessLaunchInfoLogEvent;
  v24 = [(HMMLogEvent *)&v29 init];
  v25 = v24;
  if (v24)
  {
    v24->_submissionState = state;
    objc_storeStrong(&v24->_dataSyncState, syncState);
    v25->_timeIntervalSincePreviousProcessLaunch = launch;
    v25->_homeDataLoadedMilliseconds = load;
    v25->_xpcMessageTransportReadyMilliseconds = ready;
    v25->_millisecondsSinceLaunchToDataSyncStateGood = good;
    v25->_millisecondsToAccountResolved = resolved;
    v25->_numUncommittedRecords = records;
    v25->_numUncommittedAndPushedRecords = pushedRecords;
    objc_storeStrong(&v25->_processExitType, type);
    objc_storeStrong(&v25->_processExitReason, reason);
    v25->_isConfigurationLoaded = loaded;
    v25->_isTTSUInProgress = progress;
  }

  return v25;
}

@end