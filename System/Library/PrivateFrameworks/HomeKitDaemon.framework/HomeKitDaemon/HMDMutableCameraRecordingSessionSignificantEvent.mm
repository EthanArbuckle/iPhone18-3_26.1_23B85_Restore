@interface HMDMutableCameraRecordingSessionSignificantEvent
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation HMDMutableCameraRecordingSessionSignificantEvent

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [HMDCameraRecordingSessionSignificantEvent allocWithZone:zone];
  uUID = [(HMDCameraRecordingSessionSignificantEvent *)self UUID];
  v6 = [(HMDCameraRecordingSessionSignificantEvent *)v4 initWithUUID:uUID];

  [(HMDCameraRecordingSessionSignificantEvent *)v6 setReason:[(HMDCameraRecordingSessionSignificantEvent *)self reason]];
  dateOfOccurrence = [(HMDCameraRecordingSessionSignificantEvent *)self dateOfOccurrence];
  [(HMDCameraRecordingSessionSignificantEvent *)v6 setDateOfOccurrence:dateOfOccurrence];

  [(HMDCameraRecordingSessionSignificantEvent *)v6 setConfidenceLevel:[(HMDCameraRecordingSessionSignificantEvent *)self confidenceLevel]];
  sessionEntityUUID = [(HMDCameraRecordingSessionSignificantEvent *)self sessionEntityUUID];
  [(HMDCameraRecordingSessionSignificantEvent *)v6 setSessionEntityUUID:sessionEntityUUID];

  faceClassifications = [(HMDCameraRecordingSessionSignificantEvent *)self faceClassifications];
  [(HMDCameraRecordingSessionSignificantEvent *)v6 setFaceClassifications:faceClassifications];

  heroFrameData = [(HMDCameraRecordingSessionSignificantEvent *)self heroFrameData];
  [(HMDCameraRecordingSessionSignificantEvent *)v6 setHeroFrameData:heroFrameData];

  faceCropData = [(HMDCameraRecordingSessionSignificantEvent *)self faceCropData];
  [(HMDCameraRecordingSessionSignificantEvent *)v6 setFaceCropData:faceCropData];

  [(HMDCameraRecordingSessionSignificantEvent *)self timeOffsetWithinClip];
  [(HMDCameraRecordingSessionSignificantEvent *)v6 setTimeOffsetWithinClip:?];
  return v6;
}

@end