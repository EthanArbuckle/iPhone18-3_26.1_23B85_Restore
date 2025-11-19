@interface HMDCameraSignificantEventBulletinParams
- (HMDCameraSignificantEventBulletinParams)init;
- (HMDCameraSignificantEventBulletinParams)initWithSignificantEvent:(id)a3 cameraProfileUUID:(id)a4;
- (HMDCameraSignificantEventBulletinParams)initWithUUID:(id)a3 reason:(unint64_t)a4 dateOfOccurrence:(id)a5 confidenceLevel:(unint64_t)a6 faceClassifications:(id)a7 cameraProfileUUID:(id)a8;
@end

@implementation HMDCameraSignificantEventBulletinParams

- (HMDCameraSignificantEventBulletinParams)initWithSignificantEvent:(id)a3 cameraProfileUUID:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [v7 UUID];
  v9 = [v7 reason];
  v10 = [v7 dateOfOccurrence];
  v11 = [v7 confidenceLevel];
  v12 = [v7 faceClassifications];

  v13 = [(HMDCameraSignificantEventBulletinParams *)self initWithUUID:v8 reason:v9 dateOfOccurrence:v10 confidenceLevel:v11 faceClassifications:v12 cameraProfileUUID:v6];
  return v13;
}

- (HMDCameraSignificantEventBulletinParams)initWithUUID:(id)a3 reason:(unint64_t)a4 dateOfOccurrence:(id)a5 confidenceLevel:(unint64_t)a6 faceClassifications:(id)a7 cameraProfileUUID:(id)a8
{
  v14 = a3;
  v15 = a5;
  v16 = a7;
  v17 = a8;
  v22.receiver = self;
  v22.super_class = HMDCameraSignificantEventBulletinParams;
  v18 = [(HMDCameraSignificantEventBulletinParams *)&v22 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_UUID, a3);
    v19->_reason = a4;
    objc_storeStrong(&v19->_dateOfOccurrence, a5);
    v19->_confidenceLevel = a6;
    objc_storeStrong(&v19->_faceClassifications, a7);
    objc_storeStrong(&v19->_cameraProfileUUID, a8);
  }

  return v19;
}

- (HMDCameraSignificantEventBulletinParams)init
{
  v2 = MEMORY[0x277CBEAD8];
  v3 = *MEMORY[0x277CBE658];
  v4 = MEMORY[0x277CCACA8];
  v5 = NSStringFromSelector(a2);
  v6 = [v4 stringWithFormat:@"%@ is unavailable", v5];
  v7 = [v2 exceptionWithName:v3 reason:v6 userInfo:0];
  v8 = v7;

  objc_exception_throw(v7);
}

@end