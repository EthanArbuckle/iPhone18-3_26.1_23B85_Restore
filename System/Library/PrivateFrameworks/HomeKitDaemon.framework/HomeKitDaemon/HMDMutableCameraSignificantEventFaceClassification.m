@interface HMDMutableCameraSignificantEventFaceClassification
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation HMDMutableCameraSignificantEventFaceClassification

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [HMDCameraSignificantEventFaceClassification allocWithZone:a3];
  v5 = [(HMDCameraSignificantEventFaceClassification *)self UUID];
  v6 = [(HMDCameraSignificantEventFaceClassification *)self personManagerUUID];
  v7 = [(HMDCameraSignificantEventFaceClassification *)v4 initWithUUID:v5 personManagerUUID:v6];

  v8 = [(HMDCameraSignificantEventFaceClassification *)self personUUID];
  [(HMDCameraSignificantEventFaceClassification *)v7 setPersonUUID:v8];

  v9 = [(HMDCameraSignificantEventFaceClassification *)self personName];
  [(HMDCameraSignificantEventFaceClassification *)v7 setPersonName:v9];

  v10 = [(HMDCameraSignificantEventFaceClassification *)self unassociatedFaceCropUUID];
  [(HMDCameraSignificantEventFaceClassification *)v7 setUnassociatedFaceCropUUID:v10];

  return v7;
}

@end