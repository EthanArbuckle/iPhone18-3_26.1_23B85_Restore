@interface HMDCameraSignificantEventBulletinParams
- (HMDCameraSignificantEventBulletinParams)init;
- (HMDCameraSignificantEventBulletinParams)initWithSignificantEvent:(id)event cameraProfileUUID:(id)d;
- (HMDCameraSignificantEventBulletinParams)initWithUUID:(id)d reason:(unint64_t)reason dateOfOccurrence:(id)occurrence confidenceLevel:(unint64_t)level faceClassifications:(id)classifications cameraProfileUUID:(id)iD;
@end

@implementation HMDCameraSignificantEventBulletinParams

- (HMDCameraSignificantEventBulletinParams)initWithSignificantEvent:(id)event cameraProfileUUID:(id)d
{
  dCopy = d;
  eventCopy = event;
  uUID = [eventCopy UUID];
  reason = [eventCopy reason];
  dateOfOccurrence = [eventCopy dateOfOccurrence];
  confidenceLevel = [eventCopy confidenceLevel];
  faceClassifications = [eventCopy faceClassifications];

  v13 = [(HMDCameraSignificantEventBulletinParams *)self initWithUUID:uUID reason:reason dateOfOccurrence:dateOfOccurrence confidenceLevel:confidenceLevel faceClassifications:faceClassifications cameraProfileUUID:dCopy];
  return v13;
}

- (HMDCameraSignificantEventBulletinParams)initWithUUID:(id)d reason:(unint64_t)reason dateOfOccurrence:(id)occurrence confidenceLevel:(unint64_t)level faceClassifications:(id)classifications cameraProfileUUID:(id)iD
{
  dCopy = d;
  occurrenceCopy = occurrence;
  classificationsCopy = classifications;
  iDCopy = iD;
  v22.receiver = self;
  v22.super_class = HMDCameraSignificantEventBulletinParams;
  v18 = [(HMDCameraSignificantEventBulletinParams *)&v22 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_UUID, d);
    v19->_reason = reason;
    objc_storeStrong(&v19->_dateOfOccurrence, occurrence);
    v19->_confidenceLevel = level;
    objc_storeStrong(&v19->_faceClassifications, classifications);
    objc_storeStrong(&v19->_cameraProfileUUID, iD);
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