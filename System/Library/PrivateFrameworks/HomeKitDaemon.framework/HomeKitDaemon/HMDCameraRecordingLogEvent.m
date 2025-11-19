@interface HMDCameraRecordingLogEvent
- (HMDCameraRecordingLogEvent)initWithSessionID:(id)a3 cameraID:(id)a4 sequenceNumber:(unint64_t)a5;
- (NSUUID)ephemeralCameraID;
- (id)attributeDescriptions;
@end

@implementation HMDCameraRecordingLogEvent

- (id)attributeDescriptions
{
  v15[3] = *MEMORY[0x277D85DE8];
  v3 = objc_alloc(MEMORY[0x277D0F778]);
  v4 = [(HMDCameraRecordingLogEvent *)self cameraID];
  v5 = [v3 initWithName:@"cameraID" value:v4];
  v6 = objc_alloc(MEMORY[0x277D0F778]);
  v7 = [(HMDCameraRecordingLogEvent *)self sessionID];
  v8 = [v6 initWithName:@"sessionID" value:v7];
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
  v2 = [(HMDCameraRecordingLogEvent *)self cameraID];
  v3 = [HMDCameraRecordingMetricUUIDUtilities currentEphemeralUUIDWithUUID:v2 rotationScheduleDays:1];

  return v3;
}

- (HMDCameraRecordingLogEvent)initWithSessionID:(id)a3 cameraID:(id)a4 sequenceNumber:(unint64_t)a5
{
  v9 = a3;
  v10 = a4;
  v14.receiver = self;
  v14.super_class = HMDCameraRecordingLogEvent;
  v11 = [(HMMLogEvent *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_sessionID, a3);
    objc_storeStrong(&v12->_cameraID, a4);
    v12->_sequenceNumber = a5;
  }

  return v12;
}

@end