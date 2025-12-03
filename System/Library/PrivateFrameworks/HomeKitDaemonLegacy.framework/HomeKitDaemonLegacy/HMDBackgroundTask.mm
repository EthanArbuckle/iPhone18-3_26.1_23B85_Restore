@interface HMDBackgroundTask
- (HMDBackgroundTask)initWithIdentifier:(id)identifier expectedFireDate:(id)date scheduledDate:(id)scheduledDate;
- (id)attributeDescriptions;
@end

@implementation HMDBackgroundTask

- (id)attributeDescriptions
{
  v17[3] = *MEMORY[0x277D85DE8];
  v3 = objc_alloc(MEMORY[0x277D0F778]);
  identifier = [(HMDBackgroundTask *)self identifier];
  v5 = [v3 initWithName:@"identifier" value:identifier];
  v6 = objc_alloc(MEMORY[0x277D0F778]);
  expectedFireDate = [(HMDBackgroundTask *)self expectedFireDate];
  hmf_localTimeDescription = [expectedFireDate hmf_localTimeDescription];
  v9 = [v6 initWithName:@"expected fire date" value:hmf_localTimeDescription];
  v17[1] = v9;
  v10 = objc_alloc(MEMORY[0x277D0F778]);
  scheduledDate = [(HMDBackgroundTask *)self scheduledDate];
  hmf_localTimeDescription2 = [scheduledDate hmf_localTimeDescription];
  v13 = [v10 initWithName:@"scheduled date" value:hmf_localTimeDescription2];
  v17[2] = v13;
  v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:3];

  v15 = *MEMORY[0x277D85DE8];

  return v14;
}

- (HMDBackgroundTask)initWithIdentifier:(id)identifier expectedFireDate:(id)date scheduledDate:(id)scheduledDate
{
  identifierCopy = identifier;
  dateCopy = date;
  scheduledDateCopy = scheduledDate;
  v15.receiver = self;
  v15.super_class = HMDBackgroundTask;
  v12 = [(HMDBackgroundTask *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_identifier, identifier);
    objc_storeStrong(&v13->_expectedFireDate, date);
    objc_storeStrong(&v13->_scheduledDate, scheduledDate);
  }

  return v13;
}

@end