@interface HFSymptomFixManagerItem
- (HFSymptomFixManagerItem)initWithSymptom:(id)a3 fixSession:(id)a4 accessory:(id)a5;
- (id)description;
@end

@implementation HFSymptomFixManagerItem

- (HFSymptomFixManagerItem)initWithSymptom:(id)a3 fixSession:(id)a4 accessory:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v17.receiver = self;
  v17.super_class = HFSymptomFixManagerItem;
  v12 = [(HFSymptomFixManagerItem *)&v17 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_symptom, a3);
    objc_storeStrong(&v13->_fixSession, a4);
    objc_storeStrong(&v13->_accessory, a5);
    v14 = [MEMORY[0x277CCAD78] UUID];
    identifier = v13->_identifier;
    v13->_identifier = v14;
  }

  return v13;
}

- (id)description
{
  v3 = [MEMORY[0x277D2C8F8] builderWithObject:self];
  v4 = [(HFSymptomFixManagerItem *)self symptom];
  v5 = [v3 appendObject:v4 withName:@"symptom"];

  v6 = [(HFSymptomFixManagerItem *)self fixSession];
  v7 = [v3 appendObject:v6 withName:@"fixSession"];

  v8 = [(HFSymptomFixManagerItem *)self accessory];
  v9 = [v3 appendObject:v8 withName:@"accessory"];

  v10 = [(HFSymptomFixManagerItem *)self identifier];
  v11 = [v3 appendObject:v10 withName:@"identifier"];

  v12 = [v3 build];

  return v12;
}

@end