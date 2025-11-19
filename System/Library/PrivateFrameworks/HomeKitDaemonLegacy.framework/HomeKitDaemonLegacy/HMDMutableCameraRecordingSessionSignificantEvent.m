@interface HMDMutableCameraRecordingSessionSignificantEvent
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation HMDMutableCameraRecordingSessionSignificantEvent

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [HMDCameraRecordingSessionSignificantEvent allocWithZone:a3];
  v5 = [(HMDCameraRecordingSessionSignificantEvent *)self UUID];
  v6 = [(HMDCameraRecordingSessionSignificantEvent *)v4 initWithUUID:v5];

  [(HMDCameraRecordingSessionSignificantEvent *)v6 setReason:[(HMDCameraRecordingSessionSignificantEvent *)self reason]];
  v7 = [(HMDCameraRecordingSessionSignificantEvent *)self dateOfOccurrence];
  [(HMDCameraRecordingSessionSignificantEvent *)v6 setDateOfOccurrence:v7];

  [(HMDCameraRecordingSessionSignificantEvent *)v6 setConfidenceLevel:[(HMDCameraRecordingSessionSignificantEvent *)self confidenceLevel]];
  v8 = [(HMDCameraRecordingSessionSignificantEvent *)self sessionEntityUUID];
  [(HMDCameraRecordingSessionSignificantEvent *)v6 setSessionEntityUUID:v8];

  v9 = [(HMDCameraRecordingSessionSignificantEvent *)self faceClassifications];
  [(HMDCameraRecordingSessionSignificantEvent *)v6 setFaceClassifications:v9];

  v10 = [(HMDCameraRecordingSessionSignificantEvent *)self heroFrameData];
  [(HMDCameraRecordingSessionSignificantEvent *)v6 setHeroFrameData:v10];

  v11 = [(HMDCameraRecordingSessionSignificantEvent *)self faceCropData];
  [(HMDCameraRecordingSessionSignificantEvent *)v6 setFaceCropData:v11];

  [(HMDCameraRecordingSessionSignificantEvent *)self timeOffsetWithinClip];
  [(HMDCameraRecordingSessionSignificantEvent *)v6 setTimeOffsetWithinClip:?];
  return v6;
}

@end