@interface HMDBulletinBoardCameraNotificationAssociation
- (HMDBulletinBoardCameraNotificationAssociation)initWithCameraProfile:(id)profile;
- (id)description;
@end

@implementation HMDBulletinBoardCameraNotificationAssociation

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  cameraProfile = [(HMDBulletinBoardCameraNotificationAssociation *)self cameraProfile];
  notificationGeneratingServicesWithCamera = [(HMDBulletinBoardCameraNotificationAssociation *)self notificationGeneratingServicesWithCamera];
  v6 = [v3 stringWithFormat:@"Camera %@, Notification Services with Camera %@", cameraProfile, notificationGeneratingServicesWithCamera];

  return v6;
}

- (HMDBulletinBoardCameraNotificationAssociation)initWithCameraProfile:(id)profile
{
  profileCopy = profile;
  v11.receiver = self;
  v11.super_class = HMDBulletinBoardCameraNotificationAssociation;
  v6 = [(HMDBulletinBoardCameraNotificationAssociation *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_cameraProfile, profile);
    v8 = [MEMORY[0x277CBEB58] set];
    notificationGeneratingServicesWithCamera = v7->_notificationGeneratingServicesWithCamera;
    v7->_notificationGeneratingServicesWithCamera = v8;
  }

  return v7;
}

@end