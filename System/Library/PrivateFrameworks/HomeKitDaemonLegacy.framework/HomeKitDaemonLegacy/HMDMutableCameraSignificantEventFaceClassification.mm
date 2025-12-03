@interface HMDMutableCameraSignificantEventFaceClassification
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation HMDMutableCameraSignificantEventFaceClassification

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [HMDCameraSignificantEventFaceClassification allocWithZone:zone];
  uUID = [(HMDCameraSignificantEventFaceClassification *)self UUID];
  personManagerUUID = [(HMDCameraSignificantEventFaceClassification *)self personManagerUUID];
  v7 = [(HMDCameraSignificantEventFaceClassification *)v4 initWithUUID:uUID personManagerUUID:personManagerUUID];

  personUUID = [(HMDCameraSignificantEventFaceClassification *)self personUUID];
  [(HMDCameraSignificantEventFaceClassification *)v7 setPersonUUID:personUUID];

  personName = [(HMDCameraSignificantEventFaceClassification *)self personName];
  [(HMDCameraSignificantEventFaceClassification *)v7 setPersonName:personName];

  unassociatedFaceCropUUID = [(HMDCameraSignificantEventFaceClassification *)self unassociatedFaceCropUUID];
  [(HMDCameraSignificantEventFaceClassification *)v7 setUnassociatedFaceCropUUID:unassociatedFaceCropUUID];

  return v7;
}

@end