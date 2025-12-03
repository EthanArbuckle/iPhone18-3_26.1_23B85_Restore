@interface HMDCameraRecordingLogEvent
- (HMDCameraRecordingLogEvent)initWithSessionID:(id)d cameraID:(id)iD sequenceNumber:(unint64_t)number;
- (NSUUID)ephemeralCameraID;
- (id)attributeDescriptions;
@end

@implementation HMDCameraRecordingLogEvent

- (id)attributeDescriptions
{
  v15[3] = *MEMORY[0x277D85DE8];
  v3 = objc_alloc(MEMORY[0x277D0F778]);
  cameraID = [(HMDCameraRecordingLogEvent *)self cameraID];
  v5 = [v3 initWithName:@"cameraID" value:cameraID];
  v6 = objc_alloc(MEMORY[0x277D0F778]);
  sessionID = [(HMDCameraRecordingLogEvent *)self sessionID];
  v8 = [v6 initWithName:@"sessionID" value:sessionID];
  v15[1] = v8;
  v9 = objc_alloc(MEMORY[0x277D0F778]);
  v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HMDCameraRecordingLogEvent sequenceNumber](self, "sequenceNumber")}];
  v11 = [v9 initWithName:@"sequenceNumber" value:v10];
  v15[2] = v11;
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:3];

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

- (NSUUID)ephemeralCameraID
{
  cameraID = [(HMDCameraRecordingLogEvent *)self cameraID];
  v3 = [HMDCameraRecordingMetricUUIDUtilities currentEphemeralUUIDWithUUID:cameraID rotationScheduleDays:1];

  return v3;
}

- (HMDCameraRecordingLogEvent)initWithSessionID:(id)d cameraID:(id)iD sequenceNumber:(unint64_t)number
{
  dCopy = d;
  iDCopy = iD;
  v14.receiver = self;
  v14.super_class = HMDCameraRecordingLogEvent;
  v11 = [(HMMLogEvent *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_sessionID, d);
    objc_storeStrong(&v12->_cameraID, iD);
    v12->_sequenceNumber = number;
  }

  return v12;
}

@end