@interface HMDHomeActivityStateDetails
- (BOOL)isEqual:(id)a3;
- (HMDHomeActivityStateDetails)initWithHomeActivityState:(unint64_t)a3 holdInPlace:(BOOL)a4 holdExpiryTime:(id)a5 transitionalStateEndDate:(id)a6;
- (id)attributeDescriptions;
- (id)generatePayload;
@end

@implementation HMDHomeActivityStateDetails

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
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

  v7 = [(HMDHomeActivityStateDetails *)self state];
  if (v7 != [v6 state])
  {
    goto LABEL_9;
  }

  v8 = [(HMDHomeActivityStateDetails *)self isHoldActive];
  if (v8 != [v6 isHoldActive])
  {
    goto LABEL_9;
  }

  v9 = [(HMDHomeActivityStateDetails *)self holdExpiryTime];
  v10 = [v6 holdExpiryTime];
  v11 = HMFEqualObjects();

  if (v11)
  {
    v12 = [(HMDHomeActivityStateDetails *)self transitionalStateEndDate];
    v13 = [v6 transitionalStateEndDate];
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
  v3 = [MEMORY[0x277CBEB38] dictionary];
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HMDHomeActivityStateDetails state](self, "state")}];
  [v3 setObject:v4 forKeyedSubscript:*MEMORY[0x277CCFDD8]];

  v5 = [MEMORY[0x277CCABB0] numberWithBool:{-[HMDHomeActivityStateDetails isHoldActive](self, "isHoldActive")}];
  [v3 setObject:v5 forKeyedSubscript:*MEMORY[0x277CCFDD0]];

  v6 = [(HMDHomeActivityStateDetails *)self holdExpiryTime];
  [v3 setObject:v6 forKeyedSubscript:*MEMORY[0x277CCFDC8]];

  v7 = [(HMDHomeActivityStateDetails *)self transitionalStateEndDate];
  [v3 setObject:v7 forKeyedSubscript:*MEMORY[0x277CCFE08]];

  v8 = [v3 copy];

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
  v7 = [(HMDHomeActivityStateDetails *)self transitionalStateEndDate];
  v8 = [v6 initWithName:@"transitionalStateEndDate" value:v7];
  v18[1] = v8;
  v9 = objc_alloc(MEMORY[0x277D0F778]);
  [(HMDHomeActivityStateDetails *)self isHoldActive];
  v10 = HMFBooleanToString();
  v11 = [v9 initWithName:@"isActivityStateHoldActive" value:v10];
  v18[2] = v11;
  v12 = objc_alloc(MEMORY[0x277D0F778]);
  v13 = [(HMDHomeActivityStateDetails *)self holdExpiryTime];
  v14 = [v12 initWithName:@"activityStateHoldEndDate" value:v13];
  v18[3] = v14;
  v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v18 count:4];

  v16 = *MEMORY[0x277D85DE8];

  return v15;
}

- (HMDHomeActivityStateDetails)initWithHomeActivityState:(unint64_t)a3 holdInPlace:(BOOL)a4 holdExpiryTime:(id)a5 transitionalStateEndDate:(id)a6
{
  v11 = a5;
  v12 = a6;
  v16.receiver = self;
  v16.super_class = HMDHomeActivityStateDetails;
  v13 = [(HMDHomeActivityStateDetails *)&v16 init];
  v14 = v13;
  if (v13)
  {
    v13->_state = a3;
    objc_storeStrong(&v13->_transitionalStateEndDate, a6);
    v14->_holdActive = a4;
    objc_storeStrong(&v14->_holdExpiryTime, a5);
  }

  return v14;
}

@end