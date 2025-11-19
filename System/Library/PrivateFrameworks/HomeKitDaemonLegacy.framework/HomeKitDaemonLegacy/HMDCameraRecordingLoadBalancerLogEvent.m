@interface HMDCameraRecordingLoadBalancerLogEvent
- (HMDCameraRecordingLoadBalancerLogEvent)initWithNumberOfResidents:(id)a3 numberOfRetries:(id)a4 totalNumberOfJobSlots:(id)a5 remainingNumberOfJobSlots:(id)a6 selectedResidentDeviceType:(id)a7 selectedResidentNumberOfActiveStreams:(id)a8 selectedResidentSystemResourceUsageLevel:(id)a9 selectedResidentJobSlots:(id)a10 selectedResidentPartialJobSlots:(id)a11 selectedResidentHasActiveSessionWithCamera:(BOOL)a12;
- (NSDictionary)coreAnalyticsEventDictionary;
@end

@implementation HMDCameraRecordingLoadBalancerLogEvent

- (NSDictionary)coreAnalyticsEventDictionary
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  v4 = [(HMDCameraRecordingLoadBalancerLogEvent *)self numberOfResidents];
  [v3 setObject:v4 forKeyedSubscript:@"numberOfResidents"];

  v5 = [(HMDCameraRecordingLoadBalancerLogEvent *)self numberOfRetries];
  [v3 setObject:v5 forKeyedSubscript:@"numberOfRetries"];

  v6 = [(HMDCameraRecordingLoadBalancerLogEvent *)self totalNumberOfJobSlots];
  [v3 setObject:v6 forKeyedSubscript:@"totalNumberOfJobSlots"];

  v7 = [(HMDCameraRecordingLoadBalancerLogEvent *)self remainingNumberOfJobSlots];
  [v3 setObject:v7 forKeyedSubscript:@"remainingNumberOfJobSlots"];

  v8 = [(HMDCameraRecordingLoadBalancerLogEvent *)self selectedResidentDeviceType];
  [v3 setObject:v8 forKeyedSubscript:@"selectedResidentDeviceType"];

  v9 = [(HMDCameraRecordingLoadBalancerLogEvent *)self selectedResidentNumberOfActiveStreams];
  [v3 setObject:v9 forKeyedSubscript:@"selectedResidentNumberOfActiveStreams"];

  v10 = [(HMDCameraRecordingLoadBalancerLogEvent *)self selectedResidentSystemResourceUsageLevel];
  [v3 setObject:v10 forKeyedSubscript:@"selectedResidentSystemResourceUsageLevel"];

  v11 = [(HMDCameraRecordingLoadBalancerLogEvent *)self selectedResidentJobSlots];
  [v3 setObject:v11 forKeyedSubscript:@"selectedResidentFullJobSlots"];

  v12 = [(HMDCameraRecordingLoadBalancerLogEvent *)self selectedResidentPartialJobSlots];
  [v3 setObject:v12 forKeyedSubscript:@"selectedResidentPartialJobSlots"];

  v13 = [MEMORY[0x277CCABB0] numberWithBool:{-[HMDCameraRecordingLoadBalancerLogEvent selectedResidentHasActiveSessionWithCamera](self, "selectedResidentHasActiveSessionWithCamera")}];
  [v3 setObject:v13 forKeyedSubscript:@"selectedResidentHasActiveSessionWithCamera"];

  v14 = [v3 copy];

  return v14;
}

- (HMDCameraRecordingLoadBalancerLogEvent)initWithNumberOfResidents:(id)a3 numberOfRetries:(id)a4 totalNumberOfJobSlots:(id)a5 remainingNumberOfJobSlots:(id)a6 selectedResidentDeviceType:(id)a7 selectedResidentNumberOfActiveStreams:(id)a8 selectedResidentSystemResourceUsageLevel:(id)a9 selectedResidentJobSlots:(id)a10 selectedResidentPartialJobSlots:(id)a11 selectedResidentHasActiveSessionWithCamera:(BOOL)a12
{
  v18 = a3;
  v19 = a4;
  v20 = a5;
  v21 = a6;
  v22 = a7;
  v23 = a8;
  v24 = a9;
  v25 = a10;
  v26 = a11;
  v47.receiver = self;
  v47.super_class = HMDCameraRecordingLoadBalancerLogEvent;
  v27 = [(HMMLogEvent *)&v47 init];
  if (v27)
  {
    v28 = [v18 copy];
    numberOfResidents = v27->_numberOfResidents;
    v27->_numberOfResidents = v28;

    v30 = [v19 copy];
    numberOfRetries = v27->_numberOfRetries;
    v27->_numberOfRetries = v30;

    v32 = [v20 copy];
    totalNumberOfJobSlots = v27->_totalNumberOfJobSlots;
    v27->_totalNumberOfJobSlots = v32;

    v34 = [v21 copy];
    remainingNumberOfJobSlots = v27->_remainingNumberOfJobSlots;
    v27->_remainingNumberOfJobSlots = v34;

    v36 = [v22 copy];
    selectedResidentDeviceType = v27->_selectedResidentDeviceType;
    v27->_selectedResidentDeviceType = v36;

    v38 = [v23 copy];
    selectedResidentNumberOfActiveStreams = v27->_selectedResidentNumberOfActiveStreams;
    v27->_selectedResidentNumberOfActiveStreams = v38;

    v40 = [v24 copy];
    selectedResidentSystemResourceUsageLevel = v27->_selectedResidentSystemResourceUsageLevel;
    v27->_selectedResidentSystemResourceUsageLevel = v40;

    v42 = [v25 copy];
    selectedResidentJobSlots = v27->_selectedResidentJobSlots;
    v27->_selectedResidentJobSlots = v42;

    v44 = [v26 copy];
    selectedResidentPartialJobSlots = v27->_selectedResidentPartialJobSlots;
    v27->_selectedResidentPartialJobSlots = v44;

    v27->_selectedResidentHasActiveSessionWithCamera = a12;
  }

  return v27;
}

@end