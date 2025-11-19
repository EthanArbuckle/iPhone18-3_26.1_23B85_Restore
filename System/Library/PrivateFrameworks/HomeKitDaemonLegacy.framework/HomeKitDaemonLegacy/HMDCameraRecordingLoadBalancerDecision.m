@interface HMDCameraRecordingLoadBalancerDecision
- (BOOL)isExpired;
- (HMDCameraRecordingLoadBalancerDecision)initWithCameraUUID:(id)a3 numberOfAvailableDevices:(int64_t)a4 totalNumberOfJobSlots:(int64_t)a5 remainingNumberOfJobSlots:(int64_t)a6 analysisNode:(id)a7 decisionDate:(id)a8 deviceWithSessionToHandOff:(id)a9;
- (NSUUID)deviceUUID;
- (id)attributeDescriptions;
@end

@implementation HMDCameraRecordingLoadBalancerDecision

- (id)attributeDescriptions
{
  v28[7] = *MEMORY[0x277D85DE8];
  v3 = objc_alloc(MEMORY[0x277D0F778]);
  v27 = [(HMDCameraRecordingLoadBalancerDecision *)self cameraUUID];
  v26 = [v3 initWithName:@"Camera UUID" value:v27];
  v28[0] = v26;
  v4 = objc_alloc(MEMORY[0x277D0F778]);
  v25 = [(HMDCameraRecordingLoadBalancerDecision *)self deviceUUID];
  v24 = [v4 initWithName:@"Device UUID" value:v25];
  v28[1] = v24;
  v5 = objc_alloc(MEMORY[0x277D0F778]);
  v23 = [MEMORY[0x277CCABB0] numberWithInteger:{-[HMDCameraRecordingLoadBalancerDecision numberOfAvailableDevices](self, "numberOfAvailableDevices")}];
  v22 = [v5 initWithName:@"Available Devices Count" value:v23];
  v28[2] = v22;
  v6 = objc_alloc(MEMORY[0x277D0F778]);
  v7 = [MEMORY[0x277CCABB0] numberWithInteger:{-[HMDCameraRecordingLoadBalancerDecision totalNumberOfJobSlots](self, "totalNumberOfJobSlots")}];
  v8 = [v6 initWithName:@"Total Job Slots Count" value:v7];
  v28[3] = v8;
  v9 = objc_alloc(MEMORY[0x277D0F778]);
  v10 = [MEMORY[0x277CCABB0] numberWithInteger:{-[HMDCameraRecordingLoadBalancerDecision remainingNumberOfJobSlots](self, "remainingNumberOfJobSlots")}];
  v11 = [v9 initWithName:@"Remaining Job Slots Count" value:v10];
  v28[4] = v11;
  v12 = objc_alloc(MEMORY[0x277D0F778]);
  v13 = [(HMDCameraRecordingLoadBalancerDecision *)self decisionDate];
  v14 = [v12 initWithName:@"Decision Date" value:v13];
  v28[5] = v14;
  v15 = objc_alloc(MEMORY[0x277D0F778]);
  v16 = [(HMDCameraRecordingLoadBalancerDecision *)self deviceWithSessionToHandOff];
  v17 = [v16 identifier];
  v18 = [v15 initWithName:@"HandOff Device UUID" value:v17];
  v28[6] = v18;
  v19 = [MEMORY[0x277CBEA60] arrayWithObjects:v28 count:7];

  v20 = *MEMORY[0x277D85DE8];

  return v19;
}

- (BOOL)isExpired
{
  v2 = [(HMDCameraRecordingLoadBalancerDecision *)self decisionDate];
  [v2 timeIntervalSinceNow];
  v4 = v3 < -15.0;

  return v4;
}

- (NSUUID)deviceUUID
{
  v2 = [(HMDCameraRecordingLoadBalancerDecision *)self analysisNode];
  v3 = [v2 residentDevice];
  v4 = [v3 device];
  v5 = [v4 identifier];

  return v5;
}

- (HMDCameraRecordingLoadBalancerDecision)initWithCameraUUID:(id)a3 numberOfAvailableDevices:(int64_t)a4 totalNumberOfJobSlots:(int64_t)a5 remainingNumberOfJobSlots:(int64_t)a6 analysisNode:(id)a7 decisionDate:(id)a8 deviceWithSessionToHandOff:(id)a9
{
  v15 = a3;
  v25 = a7;
  v16 = a8;
  v17 = a9;
  if (!v15)
  {
    _HMFPreconditionFailure();
    goto LABEL_7;
  }

  if (!v16)
  {
LABEL_7:
    v22 = _HMFPreconditionFailure();
    [(HMDUnpairedHAPAccessoryConfiguration *)v22 .cxx_destruct];
    return result;
  }

  v18 = v17;
  v26.receiver = self;
  v26.super_class = HMDCameraRecordingLoadBalancerDecision;
  v19 = [(HMDCameraRecordingLoadBalancerDecision *)&v26 init];
  v20 = v19;
  if (v19)
  {
    objc_storeStrong(&v19->_cameraUUID, a3);
    v20->_numberOfAvailableDevices = a4;
    v20->_totalNumberOfJobSlots = a5;
    v20->_remainingNumberOfJobSlots = a6;
    objc_storeStrong(&v20->_analysisNode, a7);
    objc_storeStrong(&v20->_decisionDate, a8);
    objc_storeStrong(&v20->_deviceWithSessionToHandOff, a9);
  }

  return v20;
}

@end