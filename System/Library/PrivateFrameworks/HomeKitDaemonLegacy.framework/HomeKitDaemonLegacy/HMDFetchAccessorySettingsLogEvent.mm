@interface HMDFetchAccessorySettingsLogEvent
- (HMDFetchAccessorySettingsLogEvent)initWithKeyPaths:(id)paths startTime:(unint64_t)time requestingClientName:(id)name error:(id)error;
- (NSDictionary)coreAnalyticsEventDictionary;
@end

@implementation HMDFetchAccessorySettingsLogEvent

- (NSDictionary)coreAnalyticsEventDictionary
{
  v3 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:9];
  error = [(HMMLogEvent *)self error];
  v5 = error;
  if (error)
  {
    v6 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(error, "code")}];
    [v3 setObject:v6 forKeyedSubscript:@"errorCode"];

    domain = [v5 domain];
    [v3 setObject:domain forKeyedSubscript:@"errorDomain"];
  }

  v8 = +[HMDLogEventHistograms lowVolumeHistogram];
  keyPaths = [(HMDFetchAccessorySettingsLogEvent *)self keyPaths];
  v10 = [v8 intervalForValue:{objc_msgSend(keyPaths, "count")}];
  start = [v10 start];
  [v3 setObject:start forKeyedSubscript:@"keyPathCount"];

  v12 = +[HMDLogEventHistograms lowVolumeHistogram];
  failedKeyPaths = [(HMDFetchAccessorySettingsLogEvent *)self failedKeyPaths];
  v14 = [v12 intervalForValue:{objc_msgSend(failedKeyPaths, "count")}];
  start2 = [v14 start];
  [v3 setObject:start2 forKeyedSubscript:@"failedKeyPaths"];

  v16 = +[HMDLogEventHistograms lowVolumeHistogram];
  succeededKeyPaths = [(HMDFetchAccessorySettingsLogEvent *)self succeededKeyPaths];
  v18 = [v16 intervalForValue:{objc_msgSend(succeededKeyPaths, "count")}];
  start3 = [v18 start];
  [v3 setObject:start3 forKeyedSubscript:@"succeededKeyPaths"];

  if ([(HMDFetchAccessorySettingsLogEvent *)self responseTimeStamp])
  {
    responseTimeStamp = [(HMDFetchAccessorySettingsLogEvent *)self responseTimeStamp];
    v21 = responseTimeStamp - [(HMDFetchAccessorySettingsLogEvent *)self startTimeStamp];
  }

  else
  {
    v21 = 0;
  }

  v22 = +[HMDLogEventHistograms latencyHistogram];
  v23 = [v22 intervalForValue:v21];
  start4 = [v23 start];
  [v3 setObject:start4 forKeyedSubscript:@"responseTime"];

  requestingClientName = [(HMDFetchAccessorySettingsLogEvent *)self requestingClientName];
  [v3 setObject:requestingClientName forKeyedSubscript:@"requestingClientName"];

  return v3;
}

- (HMDFetchAccessorySettingsLogEvent)initWithKeyPaths:(id)paths startTime:(unint64_t)time requestingClientName:(id)name error:(id)error
{
  pathsCopy = paths;
  nameCopy = name;
  errorCopy = error;
  v23.receiver = self;
  v23.super_class = HMDFetchAccessorySettingsLogEvent;
  v13 = [(HMMLogEvent *)&v23 init];
  v14 = v13;
  if (v13)
  {
    [(HMMLogEvent *)v13 setError:errorCopy];
    v15 = [pathsCopy copy];
    keyPaths = v14->_keyPaths;
    v14->_keyPaths = v15;

    v14->_startTimeStamp = time;
    v17 = [nameCopy copy];
    requestingClientName = v14->_requestingClientName;
    v14->_requestingClientName = v17;

    succeededKeyPaths = v14->_succeededKeyPaths;
    v20 = MEMORY[0x277CBEBF8];
    v14->_succeededKeyPaths = MEMORY[0x277CBEBF8];

    failedKeyPaths = v14->_failedKeyPaths;
    v14->_failedKeyPaths = v20;
  }

  return v14;
}

@end