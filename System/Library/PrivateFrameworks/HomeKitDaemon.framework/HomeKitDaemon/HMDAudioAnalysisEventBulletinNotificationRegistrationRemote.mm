@interface HMDAudioAnalysisEventBulletinNotificationRegistrationRemote
- (HMDAudioAnalysisEventBulletinNotificationRegistrationRemote)initWithAudioAnalysisEventBulletinNotificationRegistration:(id)a3 source:(id)a4;
- (id)attributeDescriptions;
@end

@implementation HMDAudioAnalysisEventBulletinNotificationRegistrationRemote

- (id)attributeDescriptions
{
  v12[2] = *MEMORY[0x277D85DE8];
  v3 = objc_alloc(MEMORY[0x277D0F778]);
  v4 = [(HMDAudioAnalysisEventBulletinNotificationRegistrationRemote *)self registration];
  v5 = [v3 initWithName:@"registration" value:v4];
  v12[0] = v5;
  v6 = objc_alloc(MEMORY[0x277D0F778]);
  v7 = [(HMDAudioAnalysisEventBulletinNotificationRegistrationRemote *)self source];
  v8 = [v6 initWithName:@"source" value:v7];
  v12[1] = v8;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:2];

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

- (HMDAudioAnalysisEventBulletinNotificationRegistrationRemote)initWithAudioAnalysisEventBulletinNotificationRegistration:(id)a3 source:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = HMDAudioAnalysisEventBulletinNotificationRegistrationRemote;
  v9 = [(HMDAudioAnalysisEventBulletinNotificationRegistrationRemote *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_registration, a3);
    objc_storeStrong(&v10->_source, a4);
  }

  return v10;
}

@end