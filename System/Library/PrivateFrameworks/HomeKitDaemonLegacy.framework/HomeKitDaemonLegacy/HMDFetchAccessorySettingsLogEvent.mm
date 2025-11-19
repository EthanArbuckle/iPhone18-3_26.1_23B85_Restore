@interface HMDFetchAccessorySettingsLogEvent
- (HMDFetchAccessorySettingsLogEvent)initWithKeyPaths:(id)a3 startTime:(unint64_t)a4 requestingClientName:(id)a5 error:(id)a6;
- (NSDictionary)coreAnalyticsEventDictionary;
@end

@implementation HMDFetchAccessorySettingsLogEvent

- (NSDictionary)coreAnalyticsEventDictionary
{
  v3 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:9];
  v4 = [(HMMLogEvent *)self error];
  v5 = v4;
  if (v4)
  {
    v6 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v4, "code")}];
    [v3 setObject:v6 forKeyedSubscript:@"errorCode"];

    v7 = [v5 domain];
    [v3 setObject:v7 forKeyedSubscript:@"errorDomain"];
  }

  v8 = +[HMDLogEventHistograms lowVolumeHistogram];
  v9 = [(HMDFetchAccessorySettingsLogEvent *)self keyPaths];
  v10 = [v8 intervalForValue:{objc_msgSend(v9, "count")}];
  v11 = [v10 start];
  [v3 setObject:v11 forKeyedSubscript:@"keyPathCount"];

  v12 = +[HMDLogEventHistograms lowVolumeHistogram];
  v13 = [(HMDFetchAccessorySettingsLogEvent *)self failedKeyPaths];
  v14 = [v12 intervalForValue:{objc_msgSend(v13, "count")}];
  v15 = [v14 start];
  [v3 setObject:v15 forKeyedSubscript:@"failedKeyPaths"];

  v16 = +[HMDLogEventHistograms lowVolumeHistogram];
  v17 = [(HMDFetchAccessorySettingsLogEvent *)self succeededKeyPaths];
  v18 = [v16 intervalForValue:{objc_msgSend(v17, "count")}];
  v19 = [v18 start];
  [v3 setObject:v19 forKeyedSubscript:@"succeededKeyPaths"];

  if ([(HMDFetchAccessorySettingsLogEvent *)self responseTimeStamp])
  {
    v20 = [(HMDFetchAccessorySettingsLogEvent *)self responseTimeStamp];
    v21 = v20 - [(HMDFetchAccessorySettingsLogEvent *)self startTimeStamp];
  }

  else
  {
    v21 = 0;
  }

  v22 = +[HMDLogEventHistograms latencyHistogram];
  v23 = [v22 intervalForValue:v21];
  v24 = [v23 start];
  [v3 setObject:v24 forKeyedSubscript:@"responseTime"];

  v25 = [(HMDFetchAccessorySettingsLogEvent *)self requestingClientName];
  [v3 setObject:v25 forKeyedSubscript:@"requestingClientName"];

  return v3;
}

- (HMDFetchAccessorySettingsLogEvent)initWithKeyPaths:(id)a3 startTime:(unint64_t)a4 requestingClientName:(id)a5 error:(id)a6
{
  v10 = a3;
  v11 = a5;
  v12 = a6;
  v23.receiver = self;
  v23.super_class = HMDFetchAccessorySettingsLogEvent;
  v13 = [(HMMLogEvent *)&v23 init];
  v14 = v13;
  if (v13)
  {
    [(HMMLogEvent *)v13 setError:v12];
    v15 = [v10 copy];
    keyPaths = v14->_keyPaths;
    v14->_keyPaths = v15;

    v14->_startTimeStamp = a4;
    v17 = [v11 copy];
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