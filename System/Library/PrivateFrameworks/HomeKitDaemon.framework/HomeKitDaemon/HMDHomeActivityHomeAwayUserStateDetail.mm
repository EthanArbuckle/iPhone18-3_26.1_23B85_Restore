@interface HMDHomeActivityHomeAwayUserStateDetail
- (HMDHomeActivityHomeAwayUserStateDetail)initWithUser:(id)user state:(unint64_t)state device:(id)device;
- (id)attributeDescriptions;
@end

@implementation HMDHomeActivityHomeAwayUserStateDetail

- (id)attributeDescriptions
{
  v20[4] = *MEMORY[0x277D85DE8];
  v3 = objc_alloc(MEMORY[0x277D0F778]);
  user = [(HMDHomeActivityHomeAwayUserStateDetail *)self user];
  shortDescription = [user shortDescription];
  v5 = [v3 initWithName:@"user" value:shortDescription];
  v20[0] = v5;
  v6 = objc_alloc(MEMORY[0x277D0F778]);
  deviceWhichUpdatedUserPresence = [(HMDHomeActivityHomeAwayUserStateDetail *)self deviceWhichUpdatedUserPresence];
  shortDescription2 = [deviceWhichUpdatedUserPresence shortDescription];
  v9 = [v6 initWithName:@"device" value:shortDescription2];
  v20[1] = v9;
  v10 = objc_alloc(MEMORY[0x277D0F778]);
  [(HMDHomeActivityHomeAwayUserStateDetail *)self isAtHome];
  v11 = HMFBooleanToString();
  v12 = [v10 initWithName:@"atHome" value:v11];
  v20[2] = v12;
  v13 = objc_alloc(MEMORY[0x277D0F778]);
  [(HMDHomeActivityHomeAwayUserStateDetail *)self isNotAtHome];
  v14 = HMFBooleanToString();
  v15 = [v13 initWithName:@"notAtHome" value:v14];
  v20[3] = v15;
  v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v20 count:4];

  v17 = *MEMORY[0x277D85DE8];

  return v16;
}

- (HMDHomeActivityHomeAwayUserStateDetail)initWithUser:(id)user state:(unint64_t)state device:(id)device
{
  userCopy = user;
  deviceCopy = device;
  v14.receiver = self;
  v14.super_class = HMDHomeActivityHomeAwayUserStateDetail;
  v11 = [(HMDHomeActivityHomeAwayUserStateDetail *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_user, user);
    v12->_atHome = state == 2;
    v12->_notAtHome = state == 3;
    objc_storeStrong(&v12->_deviceWhichUpdatedUserPresence, device);
  }

  return v12;
}

@end