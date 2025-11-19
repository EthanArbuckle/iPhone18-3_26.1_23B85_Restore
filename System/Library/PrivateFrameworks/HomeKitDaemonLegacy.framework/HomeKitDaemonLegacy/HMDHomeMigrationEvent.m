@interface HMDHomeMigrationEvent
- (HMDHomeMigrationEvent)initWithModel:(id)a3 reason:(id)a4;
- (NSDictionary)coreAnalyticsEventDictionary;
- (id)attributeDescriptions;
@end

@implementation HMDHomeMigrationEvent

- (id)attributeDescriptions
{
  v12[2] = *MEMORY[0x277D85DE8];
  v3 = objc_alloc(MEMORY[0x277D0F778]);
  v4 = [(HMDHomeMigrationEvent *)self model];
  v5 = [v3 initWithName:@"model" value:v4];
  v12[0] = v5;
  v6 = objc_alloc(MEMORY[0x277D0F778]);
  v7 = [(HMDHomeMigrationEvent *)self reason];
  v8 = [v6 initWithName:@"reason" value:v7];
  v12[1] = v8;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:2];

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

- (NSDictionary)coreAnalyticsEventDictionary
{
  v9[2] = *MEMORY[0x277D85DE8];
  v8[0] = @"modelClass";
  v3 = [(HMDHomeMigrationEvent *)self model];
  v8[1] = @"reason";
  v9[0] = v3;
  v4 = [(HMDHomeMigrationEvent *)self reason];
  v9[1] = v4;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:v8 count:2];

  v6 = *MEMORY[0x277D85DE8];

  return v5;
}

- (HMDHomeMigrationEvent)initWithModel:(id)a3 reason:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (!v6)
  {
    _HMFPreconditionFailure();
    goto LABEL_7;
  }

  v8 = v7;
  if (!v7)
  {
LABEL_7:
    v14 = _HMFPreconditionFailure();
    return [(HAPCharacteristicValueActiveTransitionContext(Validator) *)v14 isValid];
  }

  v9 = objc_opt_class();
  v10 = NSStringFromClass(v9);
  v15.receiver = self;
  v15.super_class = HMDHomeMigrationEvent;
  v11 = [(HMMLogEvent *)&v15 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_model, v10);
    objc_storeStrong(&v12->_reason, a4);
  }

  return v12;
}

@end