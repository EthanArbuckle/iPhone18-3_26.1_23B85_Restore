@interface HMDProcessLaunchInfoLogEvent
- (HMDProcessLaunchInfoLogEvent)initWithSubmissionState:(int64_t)a3 dataSyncState:(id)a4 timeIntervalSincePreviousProcessLaunch:(double)a5 millisecondsToHomeDataLoad:(int64_t)a6 millisecondsToXPCMessageTransportReady:(int64_t)a7 millisecondsSinceLaunchToDataSyncStateGood:(int64_t)a8 millisecondsToAccountResolved:(int64_t)a9 numUncommittedRecords:(int64_t)a10 numUncommittedAndPushedRecords:(int64_t)a11 processExitType:(id)a12 processExitReason:(id)a13 isConfigurationLoaded:(BOOL)a14 isTTSUInProgress:(BOOL)a15;
- (NSDictionary)coreAnalyticsEventDictionary;
@end

@implementation HMDProcessLaunchInfoLogEvent

- (NSDictionary)coreAnalyticsEventDictionary
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  v4 = [MEMORY[0x277CCABB0] numberWithInteger:{-[HMDProcessLaunchInfoLogEvent submissionState](self, "submissionState")}];
  [v3 setObject:v4 forKeyedSubscript:@"submissionState"];

  v5 = [(HMDProcessLaunchInfoLogEvent *)self dataSyncState];
  [v3 setObject:v5 forKeyedSubscript:@"dataSyncState"];

  v6 = +[HMDLogEventHistograms latencyHistogram];
  v7 = [v6 intervalIndexForValue:{-[HMDProcessLaunchInfoLogEvent millisecondsSinceLaunchToDataSyncStateGood](self, "millisecondsSinceLaunchToDataSyncStateGood")}];
  [v3 setObject:v7 forKeyedSubscript:@"millisecondsSinceLaunchToDataSyncStateGood"];

  [(HMDProcessLaunchInfoLogEvent *)self timeIntervalSincePreviousProcessLaunch];
  if (v8 > 0.0)
  {
    v9 = +[HMDLogEventHistograms highVolumeHistogram];
    [(HMDProcessLaunchInfoLogEvent *)self timeIntervalSincePreviousProcessLaunch];
    v11 = [v9 intervalIndexForValue:v10];
    [v3 setObject:v11 forKeyedSubscript:@"timeIntervalSincePreviousProcessLaunch"];
  }

  v12 = [MEMORY[0x277CCABB0] numberWithInteger:{-[HMDProcessLaunchInfoLogEvent homeDataLoadedMilliseconds](self, "homeDataLoadedMilliseconds")}];
  [v3 setObject:v12 forKeyedSubscript:@"homeDataLoadedMilliseconds"];

  v13 = [MEMORY[0x277CCABB0] numberWithInteger:{-[HMDProcessLaunchInfoLogEvent xpcMessageTransportReadyMilliseconds](self, "xpcMessageTransportReadyMilliseconds")}];
  [v3 setObject:v13 forKeyedSubscript:@"xpcMessageTransportReadyMilliseconds"];

  v14 = [MEMORY[0x277CCABB0] numberWithInteger:{-[HMDProcessLaunchInfoLogEvent millisecondsSinceLaunchToDataSyncStateGood](self, "millisecondsSinceLaunchToDataSyncStateGood")}];
  [v3 setObject:v14 forKeyedSubscript:@"dataSyncStateGoodMilliseconds"];

  v15 = [MEMORY[0x277CCABB0] numberWithInteger:{-[HMDProcessLaunchInfoLogEvent millisecondsToAccountResolved](self, "millisecondsToAccountResolved")}];
  [v3 setObject:v15 forKeyedSubscript:@"accountResolvedMilliseconds"];

  v16 = [MEMORY[0x277CCABB0] numberWithInteger:{-[HMDProcessLaunchInfoLogEvent numUncommittedRecords](self, "numUncommittedRecords")}];
  [v3 setObject:v16 forKeyedSubscript:@"numUncommittedRecords"];

  v17 = [MEMORY[0x277CCABB0] numberWithInteger:{-[HMDProcessLaunchInfoLogEvent numUncommittedAndPushedRecords](self, "numUncommittedAndPushedRecords")}];
  [v3 setObject:v17 forKeyedSubscript:@"numUncommittedAndPushedRecords"];

  v18 = [(HMDProcessLaunchInfoLogEvent *)self processExitType];
  [v3 setObject:v18 forKeyedSubscript:@"processExitType"];

  v19 = [(HMDProcessLaunchInfoLogEvent *)self processExitReason];
  [v3 setObject:v19 forKeyedSubscript:@"processExitReason"];

  v20 = [MEMORY[0x277CCABB0] numberWithBool:{-[HMDProcessLaunchInfoLogEvent isConfigurationLoaded](self, "isConfigurationLoaded")}];
  [v3 setObject:v20 forKeyedSubscript:@"isConfigurationLoaded_BOOL"];

  v21 = [MEMORY[0x277CCABB0] numberWithBool:{-[HMDProcessLaunchInfoLogEvent isTTSUInProgress](self, "isTTSUInProgress")}];
  [v3 setObject:v21 forKeyedSubscript:@"isTTSUInProgress_BOOL"];

  if ([(HMDProcessLaunchInfoLogEvent *)self isConfigurationLoaded])
  {
    v22 = &unk_2866287B0;
  }

  else
  {
    v22 = &unk_2866287C8;
  }

  [v3 setObject:v22 forKeyedSubscript:@"isConfigurationLoaded_INT"];
  if ([(HMDProcessLaunchInfoLogEvent *)self isTTSUInProgress])
  {
    v23 = &unk_2866287B0;
  }

  else
  {
    v23 = &unk_2866287C8;
  }

  [v3 setObject:v23 forKeyedSubscript:@"isTTSUInProgress_INT"];
  v24 = [v3 copy];

  return v24;
}

- (HMDProcessLaunchInfoLogEvent)initWithSubmissionState:(int64_t)a3 dataSyncState:(id)a4 timeIntervalSincePreviousProcessLaunch:(double)a5 millisecondsToHomeDataLoad:(int64_t)a6 millisecondsToXPCMessageTransportReady:(int64_t)a7 millisecondsSinceLaunchToDataSyncStateGood:(int64_t)a8 millisecondsToAccountResolved:(int64_t)a9 numUncommittedRecords:(int64_t)a10 numUncommittedAndPushedRecords:(int64_t)a11 processExitType:(id)a12 processExitReason:(id)a13 isConfigurationLoaded:(BOOL)a14 isTTSUInProgress:(BOOL)a15
{
  v21 = a4;
  v22 = a12;
  v23 = a13;
  v29.receiver = self;
  v29.super_class = HMDProcessLaunchInfoLogEvent;
  v24 = [(HMMLogEvent *)&v29 init];
  v25 = v24;
  if (v24)
  {
    v24->_submissionState = a3;
    objc_storeStrong(&v24->_dataSyncState, a4);
    v25->_timeIntervalSincePreviousProcessLaunch = a5;
    v25->_homeDataLoadedMilliseconds = a6;
    v25->_xpcMessageTransportReadyMilliseconds = a7;
    v25->_millisecondsSinceLaunchToDataSyncStateGood = a8;
    v25->_millisecondsToAccountResolved = a9;
    v25->_numUncommittedRecords = a10;
    v25->_numUncommittedAndPushedRecords = a11;
    objc_storeStrong(&v25->_processExitType, a12);
    objc_storeStrong(&v25->_processExitReason, a13);
    v25->_isConfigurationLoaded = a14;
    v25->_isTTSUInProgress = a15;
  }

  return v25;
}

@end