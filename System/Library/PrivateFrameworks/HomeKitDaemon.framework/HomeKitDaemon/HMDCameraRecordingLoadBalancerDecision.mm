@interface HMDCameraRecordingLoadBalancerDecision
- (BOOL)isExpired;
- (HMDCameraRecordingLoadBalancerDecision)initWithCameraUUID:(id)d numberOfAvailableDevices:(int64_t)devices totalNumberOfJobSlots:(int64_t)slots remainingNumberOfJobSlots:(int64_t)jobSlots analysisNode:(id)node decisionDate:(id)date deviceWithSessionToHandOff:(id)off;
- (NSUUID)deviceUUID;
- (id)attributeDescriptions;
@end

@implementation HMDCameraRecordingLoadBalancerDecision

- (id)attributeDescriptions
{
  v28[7] = *MEMORY[0x277D85DE8];
  v3 = objc_alloc(MEMORY[0x277D0F778]);
  cameraUUID = [(HMDCameraRecordingLoadBalancerDecision *)self cameraUUID];
  v26 = [v3 initWithName:@"Camera UUID" value:cameraUUID];
  v28[0] = v26;
  v4 = objc_alloc(MEMORY[0x277D0F778]);
  deviceUUID = [(HMDCameraRecordingLoadBalancerDecision *)self deviceUUID];
  v24 = [v4 initWithName:@"Device UUID" value:deviceUUID];
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
  decisionDate = [(HMDCameraRecordingLoadBalancerDecision *)self decisionDate];
  v14 = [v12 initWithName:@"Decision Date" value:decisionDate];
  v28[5] = v14;
  v15 = objc_alloc(MEMORY[0x277D0F778]);
  deviceWithSessionToHandOff = [(HMDCameraRecordingLoadBalancerDecision *)self deviceWithSessionToHandOff];
  identifier = [deviceWithSessionToHandOff identifier];
  v18 = [v15 initWithName:@"HandOff Device UUID" value:identifier];
  v28[6] = v18;
  v19 = [MEMORY[0x277CBEA60] arrayWithObjects:v28 count:7];

  v20 = *MEMORY[0x277D85DE8];

  return v19;
}

- (BOOL)isExpired
{
  decisionDate = [(HMDCameraRecordingLoadBalancerDecision *)self decisionDate];
  [decisionDate timeIntervalSinceNow];
  v4 = v3 < -15.0;

  return v4;
}

- (NSUUID)deviceUUID
{
  analysisNode = [(HMDCameraRecordingLoadBalancerDecision *)self analysisNode];
  residentDevice = [analysisNode residentDevice];
  device = [residentDevice device];
  identifier = [device identifier];

  return identifier;
}

- (HMDCameraRecordingLoadBalancerDecision)initWithCameraUUID:(id)d numberOfAvailableDevices:(int64_t)devices totalNumberOfJobSlots:(int64_t)slots remainingNumberOfJobSlots:(int64_t)jobSlots analysisNode:(id)node decisionDate:(id)date deviceWithSessionToHandOff:(id)off
{
  dCopy = d;
  nodeCopy = node;
  dateCopy = date;
  offCopy = off;
  if (!dCopy)
  {
    _HMFPreconditionFailure();
    goto LABEL_7;
  }

  if (!dateCopy)
  {
LABEL_7:
    v22 = _HMFPreconditionFailure();
    return +[(_MKFMatterCommandAction *)v22];
  }

  v18 = offCopy;
  v26.receiver = self;
  v26.super_class = HMDCameraRecordingLoadBalancerDecision;
  v19 = [(HMDCameraRecordingLoadBalancerDecision *)&v26 init];
  v20 = v19;
  if (v19)
  {
    objc_storeStrong(&v19->_cameraUUID, d);
    v20->_numberOfAvailableDevices = devices;
    v20->_totalNumberOfJobSlots = slots;
    v20->_remainingNumberOfJobSlots = jobSlots;
    objc_storeStrong(&v20->_analysisNode, node);
    objc_storeStrong(&v20->_decisionDate, date);
    objc_storeStrong(&v20->_deviceWithSessionToHandOff, off);
  }

  return v20;
}

@end