@interface HMDAudioAnalysisEventBulletinNotificationRegistration
- (BOOL)isEqual:(id)a3;
- (HMDAudioAnalysisEventBulletinNotificationRegistration)initWithCoder:(id)a3;
- (HMDAudioAnalysisEventBulletinNotificationRegistration)initWithConditions:(id)a3 audioAnalysisClassifierOptions:(unint64_t)a4 accessoryUUID:(id)a5;
- (HMDAudioAnalysisEventBulletinNotificationRegistration)initWithDictionary:(id)a3;
- (HMDAudioAnalysisEventBulletinNotificationRegistration)initWithLocalBulletinAudioAnalysisRegistration:(id)a3;
- (HMDAudioAnalysisEventBulletinNotificationRegistration)initWithPredicate:(id)a3 accessoryUUID:(id)a4;
- (id)attributeDescriptions;
- (id)predicate;
- (id)serializedRegistrationForRemoteMessage;
- (void)encodeWithCoder:(id)a3;
@end

@implementation HMDAudioAnalysisEventBulletinNotificationRegistration

- (id)attributeDescriptions
{
  v15[2] = *MEMORY[0x277D85DE8];
  v14.receiver = self;
  v14.super_class = HMDAudioAnalysisEventBulletinNotificationRegistration;
  v3 = [(HMDBulletinNotificationRegistration *)&v14 attributeDescriptions];
  v4 = objc_alloc(MEMORY[0x277D0F778]);
  v5 = [(HMDAudioAnalysisEventBulletinNotificationRegistration *)self accessoryUUID];
  v6 = [v4 initWithName:@"accessoryUUID" value:v5];
  v15[0] = v6;
  v7 = objc_alloc(MEMORY[0x277D0F778]);
  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HMDAudioAnalysisEventBulletinNotificationRegistration audioAnalysisClassifierOptions](self, "audioAnalysisClassifierOptions")}];
  v9 = [v7 initWithName:@"classifiers" value:v8];
  v15[1] = v9;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:2];
  v11 = [v3 arrayByAddingObjectsFromArray:v10];

  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

- (HMDAudioAnalysisEventBulletinNotificationRegistration)initWithDictionary:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  v6 = [objc_opt_class() type];
  LODWORD(v5) = [v5 doesTypeMatch:v4 against:v6];

  if (v5)
  {
    v16.receiver = self;
    v16.super_class = HMDAudioAnalysisEventBulletinNotificationRegistration;
    v7 = [(HMDBulletinNotificationRegistration *)&v16 initWithDictionary:v4];
    if (v7)
    {
      v8 = [v4 hmf_UUIDForKey:@"Accessory"];
      accessoryUUID = v7->_accessoryUUID;
      v7->_accessoryUUID = v8;

      v10 = [v4 objectForKeyedSubscript:@"Classifier"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v11 = v10;
      }

      else
      {
        v11 = 0;
      }

      v12 = v11;

      v13 = [v12 unsignedIntValue];
      v7->_audioAnalysisClassifierOptions = v13;
    }

    self = v7;
    v14 = self;
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (id)serializedRegistrationForRemoteMessage
{
  v9.receiver = self;
  v9.super_class = HMDAudioAnalysisEventBulletinNotificationRegistration;
  v3 = [(HMDBulletinNotificationRegistration *)&v9 serializedRegistrationForRemoteMessage];
  v4 = [v3 mutableCopy];

  v5 = [(HMDAudioAnalysisEventBulletinNotificationRegistration *)self accessoryUUID];
  v6 = [v5 UUIDString];
  [v4 setObject:v6 forKeyedSubscript:@"Accessory"];

  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HMDAudioAnalysisEventBulletinNotificationRegistration audioAnalysisClassifierOptions](self, "audioAnalysisClassifierOptions")}];
  [v4 setObject:v7 forKeyedSubscript:@"Classifier"];

  return v4;
}

- (HMDAudioAnalysisEventBulletinNotificationRegistration)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [[HMDBulletinNotificationRegistration alloc] initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"Accessory"];
    v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"Classifier"];
    v8 = [v7 unsignedIntegerValue];
    v9 = [(HMDBulletinNotificationRegistration *)v5 conditions];
    self = [(HMDAudioAnalysisEventBulletinNotificationRegistration *)self initWithConditions:v9 audioAnalysisClassifierOptions:v8 accessoryUUID:v6];

    v10 = self;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (void)encodeWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = HMDAudioAnalysisEventBulletinNotificationRegistration;
  v4 = a3;
  [(HMDBulletinNotificationRegistration *)&v7 encodeWithCoder:v4];
  v5 = [(HMDAudioAnalysisEventBulletinNotificationRegistration *)self accessoryUUID:v7.receiver];
  [v4 encodeObject:v5 forKey:@"Accessory"];

  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HMDAudioAnalysisEventBulletinNotificationRegistration audioAnalysisClassifierOptions](self, "audioAnalysisClassifierOptions")}];
  [v4 encodeObject:v6 forKey:@"Classifier"];
}

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
  v7 = v6;
  if (v6 == self)
  {
    v13 = 1;
  }

  else
  {
    v8 = [(HMDBulletinNotificationRegistration *)v6 conditions];
    v9 = [(HMDBulletinNotificationRegistration *)self conditions];
    if ([v8 isEqual:v9])
    {
      v10 = [(HMDAudioAnalysisEventBulletinNotificationRegistration *)v7 accessoryUUID];
      v11 = [(HMDAudioAnalysisEventBulletinNotificationRegistration *)self accessoryUUID];
      if ([v10 isEqual:v11])
      {
        v12 = [(HMDAudioAnalysisEventBulletinNotificationRegistration *)v7 audioAnalysisClassifierOptions];
        v13 = v12 == [(HMDAudioAnalysisEventBulletinNotificationRegistration *)self audioAnalysisClassifierOptions];
      }

      else
      {
        v13 = 0;
      }
    }

    else
    {
      v13 = 0;
    }
  }

  return v13;
}

- (HMDAudioAnalysisEventBulletinNotificationRegistration)initWithPredicate:(id)a3 accessoryUUID:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [HMDNotificationConditionConverter conditionsFromPredicate:v7];
  v9 = [MEMORY[0x277CD1D18] audioAnalysisNotificationOptionsInPredicate:v7];

  LODWORD(v7) = [v9 unsignedIntValue];
  v10 = [(HMDAudioAnalysisEventBulletinNotificationRegistration *)self initWithConditions:v8 audioAnalysisClassifierOptions:v7 accessoryUUID:v6];

  return v10;
}

- (HMDAudioAnalysisEventBulletinNotificationRegistration)initWithLocalBulletinAudioAnalysisRegistration:(id)a3
{
  v4 = a3;
  v5 = [v4 conditions];
  if (v5)
  {
    v6 = [HMDBulletinNotificationRegistrationUtilities conditionsFromLocalConditions:v5];
  }

  else
  {
    v7 = [MEMORY[0x277CBEB98] set];
    v6 = [HMDBulletinNotificationRegistrationUtilities conditionsFromLocalConditions:v7];
  }

  v8 = [v4 classifierOptions];
  v9 = [v4 accessoryModelID];

  v10 = [(HMDAudioAnalysisEventBulletinNotificationRegistration *)self initWithConditions:v6 audioAnalysisClassifierOptions:v8 accessoryUUID:v9];
  return v10;
}

- (HMDAudioAnalysisEventBulletinNotificationRegistration)initWithConditions:(id)a3 audioAnalysisClassifierOptions:(unint64_t)a4 accessoryUUID:(id)a5
{
  v9 = a5;
  v13.receiver = self;
  v13.super_class = HMDAudioAnalysisEventBulletinNotificationRegistration;
  v10 = [(HMDBulletinNotificationRegistration *)&v13 initWithConditions:a3];
  v11 = v10;
  if (v10)
  {
    v10->_audioAnalysisClassifierOptions = a4;
    objc_storeStrong(&v10->_accessoryUUID, a5);
  }

  return v11;
}

- (id)predicate
{
  v3 = [(HMDBulletinNotificationRegistration *)self conditions];
  v4 = [HMDNotificationConditionConverter predicatesFromConditions:v3];
  v5 = [v4 allObjects];

  v6 = [MEMORY[0x277CD1858] predicateForAudioAnalysisOptions:{-[HMDAudioAnalysisEventBulletinNotificationRegistration audioAnalysisClassifierOptions](self, "audioAnalysisClassifierOptions")}];
  v7 = [v5 arrayByAddingObject:v6];

  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __66__HMDAudioAnalysisEventBulletinNotificationRegistration_predicate__block_invoke;
  v11[3] = &unk_2786842B0;
  v12 = v7;
  v8 = v7;
  v9 = __66__HMDAudioAnalysisEventBulletinNotificationRegistration_predicate__block_invoke(v11);

  return v9;
}

id __66__HMDAudioAnalysisEventBulletinNotificationRegistration_predicate__block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) count] < 2)
  {
    if ([*(a1 + 32) count] == 1)
    {
      v2 = [*(a1 + 32) firstObject];
    }

    else
    {
      v2 = 0;
    }
  }

  else
  {
    v2 = [objc_alloc(MEMORY[0x277CCA920]) initWithType:1 subpredicates:*(a1 + 32)];
  }

  return v2;
}

@end