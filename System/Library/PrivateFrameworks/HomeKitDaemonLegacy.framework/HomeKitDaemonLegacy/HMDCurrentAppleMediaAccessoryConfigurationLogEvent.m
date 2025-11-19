@interface HMDCurrentAppleMediaAccessoryConfigurationLogEvent
- (HMDCurrentAppleMediaAccessoryConfigurationLogEvent)initWithNumPairedSensors:(id)a3 sensorStatus:(id)a4 numPairedSensorAutomations:(id)a5 numMediaAutomations:(id)a6;
- (NSDictionary)coreAnalyticsEventDictionary;
@end

@implementation HMDCurrentAppleMediaAccessoryConfigurationLogEvent

- (NSDictionary)coreAnalyticsEventDictionary
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  v4 = [(HMDCurrentAppleMediaAccessoryConfigurationLogEvent *)self numPairedSensors];
  [v3 setObject:v4 forKeyedSubscript:@"numPairedHomePodSensors"];

  v5 = [(HMDCurrentAppleMediaAccessoryConfigurationLogEvent *)self sensorStatus];
  [v3 setObject:v5 forKeyedSubscript:@"homePodSensorStatus"];

  v6 = [(HMDCurrentAppleMediaAccessoryConfigurationLogEvent *)self numPairedSensorAutomations];
  [v3 setObject:v6 forKeyedSubscript:@"numPairedHomePodSensorAutomations"];

  v7 = [(HMDCurrentAppleMediaAccessoryConfigurationLogEvent *)self numMediaAutomations];
  [v3 setObject:v7 forKeyedSubscript:@"numMediaAutomations"];

  v8 = [v3 copy];

  return v8;
}

- (HMDCurrentAppleMediaAccessoryConfigurationLogEvent)initWithNumPairedSensors:(id)a3 sensorStatus:(id)a4 numPairedSensorAutomations:(id)a5 numMediaAutomations:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v24.receiver = self;
  v24.super_class = HMDCurrentAppleMediaAccessoryConfigurationLogEvent;
  v14 = [(HMMLogEvent *)&v24 init];
  if (v14)
  {
    v15 = [v10 copy];
    numPairedSensors = v14->_numPairedSensors;
    v14->_numPairedSensors = v15;

    v17 = [v11 copy];
    sensorStatus = v14->_sensorStatus;
    v14->_sensorStatus = v17;

    v19 = [v12 copy];
    numPairedSensorAutomations = v14->_numPairedSensorAutomations;
    v14->_numPairedSensorAutomations = v19;

    v21 = [v13 copy];
    numMediaAutomations = v14->_numMediaAutomations;
    v14->_numMediaAutomations = v21;
  }

  return v14;
}

@end