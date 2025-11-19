@interface HMDBackgroundTask
- (HMDBackgroundTask)initWithIdentifier:(id)a3 expectedFireDate:(id)a4 scheduledDate:(id)a5;
- (id)attributeDescriptions;
@end

@implementation HMDBackgroundTask

- (id)attributeDescriptions
{
  v17[3] = *MEMORY[0x277D85DE8];
  v3 = objc_alloc(MEMORY[0x277D0F778]);
  v4 = [(HMDBackgroundTask *)self identifier];
  v5 = [v3 initWithName:@"identifier" value:v4];
  v6 = objc_alloc(MEMORY[0x277D0F778]);
  v7 = [(HMDBackgroundTask *)self expectedFireDate];
  v8 = [v7 hmf_localTimeDescription];
  v9 = [v6 initWithName:@"expected fire date" value:v8];
  v17[1] = v9;
  v10 = objc_alloc(MEMORY[0x277D0F778]);
  v11 = [(HMDBackgroundTask *)self scheduledDate];
  v12 = [v11 hmf_localTimeDescription];
  v13 = [v10 initWithName:@"scheduled date" value:v12];
  v17[2] = v13;
  v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:3];

  v15 = *MEMORY[0x277D85DE8];

  return v14;
}

- (HMDBackgroundTask)initWithIdentifier:(id)a3 expectedFireDate:(id)a4 scheduledDate:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = HMDBackgroundTask;
  v12 = [(HMDBackgroundTask *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_identifier, a3);
    objc_storeStrong(&v13->_expectedFireDate, a4);
    objc_storeStrong(&v13->_scheduledDate, a5);
  }

  return v13;
}

@end