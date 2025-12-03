@interface HMDAudioAnalysisEventBulletinNotificationRegistration
- (BOOL)isEqual:(id)equal;
- (HMDAudioAnalysisEventBulletinNotificationRegistration)initWithCoder:(id)coder;
- (HMDAudioAnalysisEventBulletinNotificationRegistration)initWithConditions:(id)conditions audioAnalysisClassifierOptions:(unint64_t)options accessoryUUID:(id)d;
- (HMDAudioAnalysisEventBulletinNotificationRegistration)initWithDictionary:(id)dictionary;
- (HMDAudioAnalysisEventBulletinNotificationRegistration)initWithLocalBulletinAudioAnalysisRegistration:(id)registration;
- (HMDAudioAnalysisEventBulletinNotificationRegistration)initWithPredicate:(id)predicate accessoryUUID:(id)d;
- (id)attributeDescriptions;
- (id)predicate;
- (id)serializedRegistrationForRemoteMessage;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HMDAudioAnalysisEventBulletinNotificationRegistration

- (id)attributeDescriptions
{
  v15[2] = *MEMORY[0x277D85DE8];
  v14.receiver = self;
  v14.super_class = HMDAudioAnalysisEventBulletinNotificationRegistration;
  attributeDescriptions = [(HMDBulletinNotificationRegistration *)&v14 attributeDescriptions];
  v4 = objc_alloc(MEMORY[0x277D0F778]);
  accessoryUUID = [(HMDAudioAnalysisEventBulletinNotificationRegistration *)self accessoryUUID];
  v6 = [v4 initWithName:@"accessoryUUID" value:accessoryUUID];
  v15[0] = v6;
  v7 = objc_alloc(MEMORY[0x277D0F778]);
  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HMDAudioAnalysisEventBulletinNotificationRegistration audioAnalysisClassifierOptions](self, "audioAnalysisClassifierOptions")}];
  v9 = [v7 initWithName:@"classifiers" value:v8];
  v15[1] = v9;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:2];
  v11 = [attributeDescriptions arrayByAddingObjectsFromArray:v10];

  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

- (HMDAudioAnalysisEventBulletinNotificationRegistration)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v5 = objc_opt_class();
  type = [objc_opt_class() type];
  LODWORD(v5) = [v5 doesTypeMatch:dictionaryCopy against:type];

  if (v5)
  {
    v16.receiver = self;
    v16.super_class = HMDAudioAnalysisEventBulletinNotificationRegistration;
    v7 = [(HMDBulletinNotificationRegistration *)&v16 initWithDictionary:dictionaryCopy];
    if (v7)
    {
      v8 = [dictionaryCopy hmf_UUIDForKey:@"Accessory"];
      accessoryUUID = v7->_accessoryUUID;
      v7->_accessoryUUID = v8;

      v10 = [dictionaryCopy objectForKeyedSubscript:@"Classifier"];
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

      unsignedIntValue = [v12 unsignedIntValue];
      v7->_audioAnalysisClassifierOptions = unsignedIntValue;
    }

    self = v7;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (id)serializedRegistrationForRemoteMessage
{
  v9.receiver = self;
  v9.super_class = HMDAudioAnalysisEventBulletinNotificationRegistration;
  serializedRegistrationForRemoteMessage = [(HMDBulletinNotificationRegistration *)&v9 serializedRegistrationForRemoteMessage];
  v4 = [serializedRegistrationForRemoteMessage mutableCopy];

  accessoryUUID = [(HMDAudioAnalysisEventBulletinNotificationRegistration *)self accessoryUUID];
  uUIDString = [accessoryUUID UUIDString];
  [v4 setObject:uUIDString forKeyedSubscript:@"Accessory"];

  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HMDAudioAnalysisEventBulletinNotificationRegistration audioAnalysisClassifierOptions](self, "audioAnalysisClassifierOptions")}];
  [v4 setObject:v7 forKeyedSubscript:@"Classifier"];

  return v4;
}

- (HMDAudioAnalysisEventBulletinNotificationRegistration)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [[HMDBulletinNotificationRegistration alloc] initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"Accessory"];
    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"Classifier"];
    unsignedIntegerValue = [v7 unsignedIntegerValue];
    conditions = [(HMDBulletinNotificationRegistration *)v5 conditions];
    self = [(HMDAudioAnalysisEventBulletinNotificationRegistration *)self initWithConditions:conditions audioAnalysisClassifierOptions:unsignedIntegerValue accessoryUUID:v6];

    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (void)encodeWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = HMDAudioAnalysisEventBulletinNotificationRegistration;
  coderCopy = coder;
  [(HMDBulletinNotificationRegistration *)&v7 encodeWithCoder:coderCopy];
  v5 = [(HMDAudioAnalysisEventBulletinNotificationRegistration *)self accessoryUUID:v7.receiver];
  [coderCopy encodeObject:v5 forKey:@"Accessory"];

  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HMDAudioAnalysisEventBulletinNotificationRegistration audioAnalysisClassifierOptions](self, "audioAnalysisClassifierOptions")}];
  [coderCopy encodeObject:v6 forKey:@"Classifier"];
}

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
  v7 = v6;
  if (v6 == self)
  {
    v13 = 1;
  }

  else
  {
    conditions = [(HMDBulletinNotificationRegistration *)v6 conditions];
    conditions2 = [(HMDBulletinNotificationRegistration *)self conditions];
    if ([conditions isEqual:conditions2])
    {
      accessoryUUID = [(HMDAudioAnalysisEventBulletinNotificationRegistration *)v7 accessoryUUID];
      accessoryUUID2 = [(HMDAudioAnalysisEventBulletinNotificationRegistration *)self accessoryUUID];
      if ([accessoryUUID isEqual:accessoryUUID2])
      {
        audioAnalysisClassifierOptions = [(HMDAudioAnalysisEventBulletinNotificationRegistration *)v7 audioAnalysisClassifierOptions];
        v13 = audioAnalysisClassifierOptions == [(HMDAudioAnalysisEventBulletinNotificationRegistration *)self audioAnalysisClassifierOptions];
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

- (HMDAudioAnalysisEventBulletinNotificationRegistration)initWithPredicate:(id)predicate accessoryUUID:(id)d
{
  dCopy = d;
  predicateCopy = predicate;
  v8 = [HMDNotificationConditionConverter conditionsFromPredicate:predicateCopy];
  v9 = [MEMORY[0x277CD1D18] audioAnalysisNotificationOptionsInPredicate:predicateCopy];

  LODWORD(predicateCopy) = [v9 unsignedIntValue];
  v10 = [(HMDAudioAnalysisEventBulletinNotificationRegistration *)self initWithConditions:v8 audioAnalysisClassifierOptions:predicateCopy accessoryUUID:dCopy];

  return v10;
}

- (HMDAudioAnalysisEventBulletinNotificationRegistration)initWithLocalBulletinAudioAnalysisRegistration:(id)registration
{
  registrationCopy = registration;
  conditions = [registrationCopy conditions];
  if (conditions)
  {
    v6 = [HMDBulletinNotificationRegistrationUtilities conditionsFromLocalConditions:conditions];
  }

  else
  {
    v7 = [MEMORY[0x277CBEB98] set];
    v6 = [HMDBulletinNotificationRegistrationUtilities conditionsFromLocalConditions:v7];
  }

  classifierOptions = [registrationCopy classifierOptions];
  accessoryModelID = [registrationCopy accessoryModelID];

  v10 = [(HMDAudioAnalysisEventBulletinNotificationRegistration *)self initWithConditions:v6 audioAnalysisClassifierOptions:classifierOptions accessoryUUID:accessoryModelID];
  return v10;
}

- (HMDAudioAnalysisEventBulletinNotificationRegistration)initWithConditions:(id)conditions audioAnalysisClassifierOptions:(unint64_t)options accessoryUUID:(id)d
{
  dCopy = d;
  v13.receiver = self;
  v13.super_class = HMDAudioAnalysisEventBulletinNotificationRegistration;
  v10 = [(HMDBulletinNotificationRegistration *)&v13 initWithConditions:conditions];
  v11 = v10;
  if (v10)
  {
    v10->_audioAnalysisClassifierOptions = options;
    objc_storeStrong(&v10->_accessoryUUID, d);
  }

  return v11;
}

- (id)predicate
{
  conditions = [(HMDBulletinNotificationRegistration *)self conditions];
  v4 = [HMDNotificationConditionConverter predicatesFromConditions:conditions];
  allObjects = [v4 allObjects];

  v6 = [MEMORY[0x277CD1858] predicateForAudioAnalysisOptions:{-[HMDAudioAnalysisEventBulletinNotificationRegistration audioAnalysisClassifierOptions](self, "audioAnalysisClassifierOptions")}];
  v7 = [allObjects arrayByAddingObject:v6];

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