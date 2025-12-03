@interface HMDAudioAnalysisEventBulletinNotificationRegistrationRemote
- (HMDAudioAnalysisEventBulletinNotificationRegistrationRemote)initWithAudioAnalysisEventBulletinNotificationRegistration:(id)registration source:(id)source;
- (id)attributeDescriptions;
@end

@implementation HMDAudioAnalysisEventBulletinNotificationRegistrationRemote

- (id)attributeDescriptions
{
  v12[2] = *MEMORY[0x277D85DE8];
  v3 = objc_alloc(MEMORY[0x277D0F778]);
  registration = [(HMDAudioAnalysisEventBulletinNotificationRegistrationRemote *)self registration];
  v5 = [v3 initWithName:@"registration" value:registration];
  v12[0] = v5;
  v6 = objc_alloc(MEMORY[0x277D0F778]);
  source = [(HMDAudioAnalysisEventBulletinNotificationRegistrationRemote *)self source];
  v8 = [v6 initWithName:@"source" value:source];
  v12[1] = v8;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:2];

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

- (HMDAudioAnalysisEventBulletinNotificationRegistrationRemote)initWithAudioAnalysisEventBulletinNotificationRegistration:(id)registration source:(id)source
{
  registrationCopy = registration;
  sourceCopy = source;
  v12.receiver = self;
  v12.super_class = HMDAudioAnalysisEventBulletinNotificationRegistrationRemote;
  v9 = [(HMDAudioAnalysisEventBulletinNotificationRegistrationRemote *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_registration, registration);
    objc_storeStrong(&v10->_source, source);
  }

  return v10;
}

@end