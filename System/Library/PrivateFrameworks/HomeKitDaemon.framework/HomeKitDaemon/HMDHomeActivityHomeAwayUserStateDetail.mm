@interface HMDHomeActivityHomeAwayUserStateDetail
- (HMDHomeActivityHomeAwayUserStateDetail)initWithUser:(id)a3 state:(unint64_t)a4 device:(id)a5;
- (id)attributeDescriptions;
@end

@implementation HMDHomeActivityHomeAwayUserStateDetail

- (id)attributeDescriptions
{
  v20[4] = *MEMORY[0x277D85DE8];
  v3 = objc_alloc(MEMORY[0x277D0F778]);
  v19 = [(HMDHomeActivityHomeAwayUserStateDetail *)self user];
  v4 = [v19 shortDescription];
  v5 = [v3 initWithName:@"user" value:v4];
  v20[0] = v5;
  v6 = objc_alloc(MEMORY[0x277D0F778]);
  v7 = [(HMDHomeActivityHomeAwayUserStateDetail *)self deviceWhichUpdatedUserPresence];
  v8 = [v7 shortDescription];
  v9 = [v6 initWithName:@"device" value:v8];
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

- (HMDHomeActivityHomeAwayUserStateDetail)initWithUser:(id)a3 state:(unint64_t)a4 device:(id)a5
{
  v9 = a3;
  v10 = a5;
  v14.receiver = self;
  v14.super_class = HMDHomeActivityHomeAwayUserStateDetail;
  v11 = [(HMDHomeActivityHomeAwayUserStateDetail *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_user, a3);
    v12->_atHome = a4 == 2;
    v12->_notAtHome = a4 == 3;
    objc_storeStrong(&v12->_deviceWhichUpdatedUserPresence, a5);
  }

  return v12;
}

@end