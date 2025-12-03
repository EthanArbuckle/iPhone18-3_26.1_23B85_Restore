@interface HFSymptomFixManagerItem
- (HFSymptomFixManagerItem)initWithSymptom:(id)symptom fixSession:(id)session accessory:(id)accessory;
- (id)description;
@end

@implementation HFSymptomFixManagerItem

- (HFSymptomFixManagerItem)initWithSymptom:(id)symptom fixSession:(id)session accessory:(id)accessory
{
  symptomCopy = symptom;
  sessionCopy = session;
  accessoryCopy = accessory;
  v17.receiver = self;
  v17.super_class = HFSymptomFixManagerItem;
  v12 = [(HFSymptomFixManagerItem *)&v17 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_symptom, symptom);
    objc_storeStrong(&v13->_fixSession, session);
    objc_storeStrong(&v13->_accessory, accessory);
    uUID = [MEMORY[0x277CCAD78] UUID];
    identifier = v13->_identifier;
    v13->_identifier = uUID;
  }

  return v13;
}

- (id)description
{
  v3 = [MEMORY[0x277D2C8F8] builderWithObject:self];
  symptom = [(HFSymptomFixManagerItem *)self symptom];
  v5 = [v3 appendObject:symptom withName:@"symptom"];

  fixSession = [(HFSymptomFixManagerItem *)self fixSession];
  v7 = [v3 appendObject:fixSession withName:@"fixSession"];

  accessory = [(HFSymptomFixManagerItem *)self accessory];
  v9 = [v3 appendObject:accessory withName:@"accessory"];

  identifier = [(HFSymptomFixManagerItem *)self identifier];
  v11 = [v3 appendObject:identifier withName:@"identifier"];

  build = [v3 build];

  return build;
}

@end