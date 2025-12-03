@interface HMDHomeActivityStateDetails
- (BOOL)isEqual:(id)equal;
- (HMDHomeActivityStateDetails)initWithHomeActivityState:(unint64_t)state holdInPlace:(BOOL)place holdExpiryTime:(id)time transitionalStateEndDate:(id)date;
- (id)attributeDescriptions;
- (id)generatePayload;
@end

@implementation HMDHomeActivityStateDetails

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  if (!v6)
  {
    goto LABEL_9;
  }

  state = [(HMDHomeActivityStateDetails *)self state];
  if (state != [v6 state])
  {
    goto LABEL_9;
  }

  isHoldActive = [(HMDHomeActivityStateDetails *)self isHoldActive];
  if (isHoldActive != [v6 isHoldActive])
  {
    goto LABEL_9;
  }

  holdExpiryTime = [(HMDHomeActivityStateDetails *)self holdExpiryTime];
  holdExpiryTime2 = [v6 holdExpiryTime];
  v11 = HMFEqualObjects();

  if (v11)
  {
    transitionalStateEndDate = [(HMDHomeActivityStateDetails *)self transitionalStateEndDate];
    transitionalStateEndDate2 = [v6 transitionalStateEndDate];
    v14 = HMFEqualObjects();
  }

  else
  {
LABEL_9:
    v14 = 0;
  }

  return v14;
}

- (id)generatePayload
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HMDHomeActivityStateDetails state](self, "state")}];
  [dictionary setObject:v4 forKeyedSubscript:*MEMORY[0x277CCFDD8]];

  v5 = [MEMORY[0x277CCABB0] numberWithBool:{-[HMDHomeActivityStateDetails isHoldActive](self, "isHoldActive")}];
  [dictionary setObject:v5 forKeyedSubscript:*MEMORY[0x277CCFDD0]];

  holdExpiryTime = [(HMDHomeActivityStateDetails *)self holdExpiryTime];
  [dictionary setObject:holdExpiryTime forKeyedSubscript:*MEMORY[0x277CCFDC8]];

  transitionalStateEndDate = [(HMDHomeActivityStateDetails *)self transitionalStateEndDate];
  [dictionary setObject:transitionalStateEndDate forKeyedSubscript:*MEMORY[0x277CCFE08]];

  v8 = [dictionary copy];

  return v8;
}

- (id)attributeDescriptions
{
  v18[4] = *MEMORY[0x277D85DE8];
  v3 = objc_alloc(MEMORY[0x277D0F778]);
  [(HMDHomeActivityStateDetails *)self state];
  v4 = HMHomeActivityStateToString();
  v5 = [v3 initWithName:@"activityState" value:v4];
  v18[0] = v5;
  v6 = objc_alloc(MEMORY[0x277D0F778]);
  transitionalStateEndDate = [(HMDHomeActivityStateDetails *)self transitionalStateEndDate];
  v8 = [v6 initWithName:@"transitionalStateEndDate" value:transitionalStateEndDate];
  v18[1] = v8;
  v9 = objc_alloc(MEMORY[0x277D0F778]);
  [(HMDHomeActivityStateDetails *)self isHoldActive];
  v10 = HMFBooleanToString();
  v11 = [v9 initWithName:@"isActivityStateHoldActive" value:v10];
  v18[2] = v11;
  v12 = objc_alloc(MEMORY[0x277D0F778]);
  holdExpiryTime = [(HMDHomeActivityStateDetails *)self holdExpiryTime];
  v14 = [v12 initWithName:@"activityStateHoldEndDate" value:holdExpiryTime];
  v18[3] = v14;
  v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v18 count:4];

  v16 = *MEMORY[0x277D85DE8];

  return v15;
}

- (HMDHomeActivityStateDetails)initWithHomeActivityState:(unint64_t)state holdInPlace:(BOOL)place holdExpiryTime:(id)time transitionalStateEndDate:(id)date
{
  timeCopy = time;
  dateCopy = date;
  v16.receiver = self;
  v16.super_class = HMDHomeActivityStateDetails;
  v13 = [(HMDHomeActivityStateDetails *)&v16 init];
  v14 = v13;
  if (v13)
  {
    v13->_state = state;
    objc_storeStrong(&v13->_transitionalStateEndDate, date);
    v14->_holdActive = place;
    objc_storeStrong(&v14->_holdExpiryTime, time);
  }

  return v14;
}

@end