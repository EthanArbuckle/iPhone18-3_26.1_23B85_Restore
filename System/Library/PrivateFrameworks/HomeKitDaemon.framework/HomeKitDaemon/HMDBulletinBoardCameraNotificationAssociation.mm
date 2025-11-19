@interface HMDBulletinBoardCameraNotificationAssociation
- (HMDBulletinBoardCameraNotificationAssociation)initWithCameraProfile:(id)a3;
- (id)description;
@end

@implementation HMDBulletinBoardCameraNotificationAssociation

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(HMDBulletinBoardCameraNotificationAssociation *)self cameraProfile];
  v5 = [(HMDBulletinBoardCameraNotificationAssociation *)self notificationGeneratingServicesWithCamera];
  v6 = [v3 stringWithFormat:@"Camera %@, Notification Services with Camera %@", v4, v5];

  return v6;
}

- (HMDBulletinBoardCameraNotificationAssociation)initWithCameraProfile:(id)a3
{
  v5 = a3;
  v11.receiver = self;
  v11.super_class = HMDBulletinBoardCameraNotificationAssociation;
  v6 = [(HMDBulletinBoardCameraNotificationAssociation *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_cameraProfile, a3);
    v8 = [MEMORY[0x277CBEB58] set];
    notificationGeneratingServicesWithCamera = v7->_notificationGeneratingServicesWithCamera;
    v7->_notificationGeneratingServicesWithCamera = v8;
  }

  return v7;
}

@end