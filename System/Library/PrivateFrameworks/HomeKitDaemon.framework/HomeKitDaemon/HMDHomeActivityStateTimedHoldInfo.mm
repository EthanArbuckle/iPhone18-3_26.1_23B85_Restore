@interface HMDHomeActivityStateTimedHoldInfo
- (BOOL)isActiveAtDate:(id)date;
- (HMDHomeActivityStateTimedHoldInfo)initWithHomeActivityState:(unint64_t)state activationDate:(id)date duration:(double)duration;
- (HMDHomeActivityStateTimedHoldInfo)initWithHomeActivityState:(unint64_t)state activationDate:(id)date endDate:(id)endDate;
- (id)attributeDescriptions;
@end

@implementation HMDHomeActivityStateTimedHoldInfo

- (id)attributeDescriptions
{
  v13[1] = *MEMORY[0x277D85DE8];
  v12.receiver = self;
  v12.super_class = HMDHomeActivityStateTimedHoldInfo;
  attributeDescriptions = [(HMDHomeActivityStateHoldInfo *)&v12 attributeDescriptions];
  v4 = [attributeDescriptions mutableCopy];

  v5 = objc_alloc(MEMORY[0x277D0F778]);
  endDate = [(HMDHomeActivityStateTimedHoldInfo *)self endDate];
  v7 = [v5 initWithName:@"End Date" value:endDate];
  v13[0] = v7;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:1];
  [v4 addObjectsFromArray:v8];

  v9 = [v4 copy];
  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

- (BOOL)isActiveAtDate:(id)date
{
  dateCopy = date;
  endDate = [(HMDHomeActivityStateTimedHoldInfo *)self endDate];
  v6 = [dateCopy compare:endDate];

  return v6 == -1;
}

- (HMDHomeActivityStateTimedHoldInfo)initWithHomeActivityState:(unint64_t)state activationDate:(id)date endDate:(id)endDate
{
  endDateCopy = endDate;
  v13.receiver = self;
  v13.super_class = HMDHomeActivityStateTimedHoldInfo;
  v10 = [(HMDHomeActivityStateHoldInfo *)&v13 initWithHomeActivityState:state activationDate:date];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_endDate, endDate);
  }

  return v11;
}

- (HMDHomeActivityStateTimedHoldInfo)initWithHomeActivityState:(unint64_t)state activationDate:(id)date duration:(double)duration
{
  dateCopy = date;
  if (duration <= 0.0)
  {
    v13 = _HMFPreconditionFailure();
    [(HMDMatterBulletinNotificationRegistration *)v13 .cxx_destruct];
  }

  else
  {
    v9 = dateCopy;
    v10 = [dateCopy dateByAddingTimeInterval:duration];
    v11 = [(HMDHomeActivityStateTimedHoldInfo *)self initWithHomeActivityState:state activationDate:v9 endDate:v10];

    return v11;
  }

  return result;
}

@end