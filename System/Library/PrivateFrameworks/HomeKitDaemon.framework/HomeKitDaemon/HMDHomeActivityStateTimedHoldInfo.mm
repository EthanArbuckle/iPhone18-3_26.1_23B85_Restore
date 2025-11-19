@interface HMDHomeActivityStateTimedHoldInfo
- (BOOL)isActiveAtDate:(id)a3;
- (HMDHomeActivityStateTimedHoldInfo)initWithHomeActivityState:(unint64_t)a3 activationDate:(id)a4 duration:(double)a5;
- (HMDHomeActivityStateTimedHoldInfo)initWithHomeActivityState:(unint64_t)a3 activationDate:(id)a4 endDate:(id)a5;
- (id)attributeDescriptions;
@end

@implementation HMDHomeActivityStateTimedHoldInfo

- (id)attributeDescriptions
{
  v13[1] = *MEMORY[0x277D85DE8];
  v12.receiver = self;
  v12.super_class = HMDHomeActivityStateTimedHoldInfo;
  v3 = [(HMDHomeActivityStateHoldInfo *)&v12 attributeDescriptions];
  v4 = [v3 mutableCopy];

  v5 = objc_alloc(MEMORY[0x277D0F778]);
  v6 = [(HMDHomeActivityStateTimedHoldInfo *)self endDate];
  v7 = [v5 initWithName:@"End Date" value:v6];
  v13[0] = v7;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:1];
  [v4 addObjectsFromArray:v8];

  v9 = [v4 copy];
  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

- (BOOL)isActiveAtDate:(id)a3
{
  v4 = a3;
  v5 = [(HMDHomeActivityStateTimedHoldInfo *)self endDate];
  v6 = [v4 compare:v5];

  return v6 == -1;
}

- (HMDHomeActivityStateTimedHoldInfo)initWithHomeActivityState:(unint64_t)a3 activationDate:(id)a4 endDate:(id)a5
{
  v9 = a5;
  v13.receiver = self;
  v13.super_class = HMDHomeActivityStateTimedHoldInfo;
  v10 = [(HMDHomeActivityStateHoldInfo *)&v13 initWithHomeActivityState:a3 activationDate:a4];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_endDate, a5);
  }

  return v11;
}

- (HMDHomeActivityStateTimedHoldInfo)initWithHomeActivityState:(unint64_t)a3 activationDate:(id)a4 duration:(double)a5
{
  v8 = a4;
  if (a5 <= 0.0)
  {
    v13 = _HMFPreconditionFailure();
    [(HMDMatterBulletinNotificationRegistration *)v13 .cxx_destruct];
  }

  else
  {
    v9 = v8;
    v10 = [v8 dateByAddingTimeInterval:a5];
    v11 = [(HMDHomeActivityStateTimedHoldInfo *)self initWithHomeActivityState:a3 activationDate:v9 endDate:v10];

    return v11;
  }

  return result;
}

@end