@interface HMDHomeActivityStateHoldInfo
- (HMDHomeActivityStateHoldInfo)initWithHomeActivityState:(unint64_t)state activationDate:(id)date;
- (id)attributeDescriptions;
@end

@implementation HMDHomeActivityStateHoldInfo

- (id)attributeDescriptions
{
  v12[2] = *MEMORY[0x277D85DE8];
  v3 = objc_alloc(MEMORY[0x277D0F778]);
  [(HMDHomeActivityStateHoldInfo *)self state];
  v4 = HMHomeActivityStateToString();
  v5 = [v3 initWithName:@"State" value:v4];
  v12[0] = v5;
  v6 = objc_alloc(MEMORY[0x277D0F778]);
  activationDate = [(HMDHomeActivityStateHoldInfo *)self activationDate];
  v8 = [v6 initWithName:@"Activation Date" value:activationDate];
  v12[1] = v8;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:2];

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

- (HMDHomeActivityStateHoldInfo)initWithHomeActivityState:(unint64_t)state activationDate:(id)date
{
  dateCopy = date;
  v11.receiver = self;
  v11.super_class = HMDHomeActivityStateHoldInfo;
  v8 = [(HMDHomeActivityStateHoldInfo *)&v11 init];
  v9 = v8;
  if (v8)
  {
    v8->_state = state;
    objc_storeStrong(&v8->_activationDate, date);
  }

  return v9;
}

@end