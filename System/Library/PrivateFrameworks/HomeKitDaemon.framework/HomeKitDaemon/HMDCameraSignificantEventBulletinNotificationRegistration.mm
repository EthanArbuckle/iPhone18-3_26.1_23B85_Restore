@interface HMDCameraSignificantEventBulletinNotificationRegistration
- (BOOL)isEqual:(id)equal;
- (HMDCameraSignificantEventBulletinNotificationRegistration)initWithCameraIdentifier:(id)identifier notificationModes:(unint64_t)modes significantEventTypes:(unint64_t)types personFamiliarityOptions:(unint64_t)options conditions:(id)conditions;
- (HMDCameraSignificantEventBulletinNotificationRegistration)initWithCoder:(id)coder;
- (HMDCameraSignificantEventBulletinNotificationRegistration)initWithDictionary:(id)dictionary;
- (id)attributeDescriptions;
- (id)predicate;
- (id)serializedRegistrationForRemoteMessage;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HMDCameraSignificantEventBulletinNotificationRegistration

- (id)attributeDescriptions
{
  v22[4] = *MEMORY[0x277D85DE8];
  v21.receiver = self;
  v21.super_class = HMDCameraSignificantEventBulletinNotificationRegistration;
  attributeDescriptions = [(HMDBulletinNotificationRegistration *)&v21 attributeDescriptions];
  v4 = objc_alloc(MEMORY[0x277D0F778]);
  cameraIdentifier = [(HMDCameraSignificantEventBulletinNotificationRegistration *)self cameraIdentifier];
  v5 = [v4 initWithName:@"Camera Identifier" value:cameraIdentifier];
  v22[0] = v5;
  v6 = objc_alloc(MEMORY[0x277D0F778]);
  notificationModes = [(HMDCameraSignificantEventBulletinNotificationRegistration *)self notificationModes];
  v7 = NSPrintF();
  v8 = [v6 initWithName:@"Notification Modes" value:{v7, notificationModes, &unk_22A587E90}];
  v22[1] = v8;
  v9 = objc_alloc(MEMORY[0x277D0F778]);
  [(HMDCameraSignificantEventBulletinNotificationRegistration *)self significantEventTypes];
  v10 = HMCameraSignificantEventTypesAsString();
  v11 = [v9 initWithName:@"Significant Event Types" value:v10];
  v22[2] = v11;
  v12 = objc_alloc(MEMORY[0x277D0F778]);
  [(HMDCameraSignificantEventBulletinNotificationRegistration *)self personFamiliarityOptions];
  v13 = HMCameraSignificantEventPersonFamiliarityOptionsAsString();
  v14 = [v12 initWithName:@"Person Familiarity Options" value:v13];
  v22[3] = v14;
  v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v22 count:4];
  v16 = [attributeDescriptions arrayByAddingObjectsFromArray:v15];

  v17 = *MEMORY[0x277D85DE8];

  return v16;
}

- (HMDCameraSignificantEventBulletinNotificationRegistration)initWithCoder:(id)coder
{
  v21 = *MEMORY[0x277D85DE8];
  coderCopy = coder;
  v5 = [[HMDBulletinNotificationRegistration alloc] initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HMDCSEBNR.ck.ci"];
    if (v6)
    {
      v7 = [coderCopy decodeIntegerForKey:@"HMDCSEBNR.ck.nm"];
      v8 = [coderCopy decodeIntegerForKey:@"HMDCSEBNR.ck.set"];
      v9 = [coderCopy decodeIntegerForKey:@"HMDCSEBNR.ck.pfo"];
      conditions = [(HMDBulletinNotificationRegistration *)v5 conditions];
      self = [(HMDCameraSignificantEventBulletinNotificationRegistration *)self initWithCameraIdentifier:v6 notificationModes:v7 significantEventTypes:v8 personFamiliarityOptions:v9 conditions:conditions];

      selfCopy = self;
    }

    else
    {
      v12 = objc_autoreleasePoolPush();
      self = self;
      v13 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        v14 = HMFGetLogIdentifier();
        v17 = 138543618;
        v18 = v14;
        v19 = 2112;
        v20 = 0;
        _os_log_impl(&dword_229538000, v13, OS_LOG_TYPE_ERROR, "%{public}@Could not initialize from decoded cameraIdentifier: %@", &v17, 0x16u);
      }

      objc_autoreleasePoolPop(v12);
      selfCopy = 0;
    }
  }

  else
  {
    selfCopy = 0;
  }

  v15 = *MEMORY[0x277D85DE8];
  return selfCopy;
}

- (void)encodeWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = HMDCameraSignificantEventBulletinNotificationRegistration;
  coderCopy = coder;
  [(HMDBulletinNotificationRegistration *)&v6 encodeWithCoder:coderCopy];
  v5 = [(HMDCameraSignificantEventBulletinNotificationRegistration *)self cameraIdentifier:v6.receiver];
  [coderCopy encodeObject:v5 forKey:@"HMDCSEBNR.ck.ci"];

  [coderCopy encodeInteger:-[HMDCameraSignificantEventBulletinNotificationRegistration notificationModes](self forKey:{"notificationModes"), @"HMDCSEBNR.ck.nm"}];
  [coderCopy encodeInteger:-[HMDCameraSignificantEventBulletinNotificationRegistration significantEventTypes](self forKey:{"significantEventTypes"), @"HMDCSEBNR.ck.set"}];
  [coderCopy encodeInteger:-[HMDCameraSignificantEventBulletinNotificationRegistration personFamiliarityOptions](self forKey:{"personFamiliarityOptions"), @"HMDCSEBNR.ck.pfo"}];
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
  if (v6 && (v14.receiver = self, v14.super_class = HMDCameraSignificantEventBulletinNotificationRegistration, [(HMDBulletinNotificationRegistration *)&v14 isEqual:v6]))
  {
    cameraIdentifier = [(HMDCameraSignificantEventBulletinNotificationRegistration *)self cameraIdentifier];
    cameraIdentifier2 = [v6 cameraIdentifier];
    if ([cameraIdentifier isEqual:cameraIdentifier2] && (v9 = -[HMDCameraSignificantEventBulletinNotificationRegistration notificationModes](self, "notificationModes"), v9 == objc_msgSend(v6, "notificationModes")) && (v10 = -[HMDCameraSignificantEventBulletinNotificationRegistration significantEventTypes](self, "significantEventTypes"), v10 == objc_msgSend(v6, "significantEventTypes")))
    {
      personFamiliarityOptions = [(HMDCameraSignificantEventBulletinNotificationRegistration *)self personFamiliarityOptions];
      v12 = personFamiliarityOptions == [v6 personFamiliarityOptions];
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (id)serializedRegistrationForRemoteMessage
{
  v11.receiver = self;
  v11.super_class = HMDCameraSignificantEventBulletinNotificationRegistration;
  serializedRegistrationForRemoteMessage = [(HMDBulletinNotificationRegistration *)&v11 serializedRegistrationForRemoteMessage];
  v4 = [serializedRegistrationForRemoteMessage mutableCopy];

  cameraIdentifier = [(HMDCameraSignificantEventBulletinNotificationRegistration *)self cameraIdentifier];
  uUIDString = [cameraIdentifier UUIDString];
  [v4 setObject:uUIDString forKeyedSubscript:@"HMDCSEBNR.ck.ci"];

  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HMDCameraSignificantEventBulletinNotificationRegistration notificationModes](self, "notificationModes")}];
  [v4 setObject:v7 forKeyedSubscript:@"HMDCSEBNR.ck.nm"];

  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HMDCameraSignificantEventBulletinNotificationRegistration significantEventTypes](self, "significantEventTypes")}];
  [v4 setObject:v8 forKeyedSubscript:@"HMDCSEBNR.ck.set"];

  v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HMDCameraSignificantEventBulletinNotificationRegistration personFamiliarityOptions](self, "personFamiliarityOptions")}];
  [v4 setObject:v9 forKeyedSubscript:@"HMDCSEBNR.ck.pfo"];

  return v4;
}

- (HMDCameraSignificantEventBulletinNotificationRegistration)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v5 = objc_opt_class();
  type = [objc_opt_class() type];
  LODWORD(v5) = [v5 doesTypeMatch:dictionaryCopy against:type];

  if (!v5)
  {
    selfCopy = 0;
    goto LABEL_7;
  }

  v19.receiver = self;
  v19.super_class = HMDCameraSignificantEventBulletinNotificationRegistration;
  v7 = [(HMDBulletinNotificationRegistration *)&v19 initWithDictionary:dictionaryCopy];
  if (!v7)
  {
LABEL_5:
    self = v7;
    selfCopy = self;
LABEL_7:

    return selfCopy;
  }

  v8 = [dictionaryCopy objectForKeyedSubscript:@"HMDCSEBNR.ck.ci"];
  if (v8)
  {
    v9 = v8;
    v10 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:v8];
    cameraIdentifier = v7->_cameraIdentifier;
    v7->_cameraIdentifier = v10;

    v12 = [dictionaryCopy objectForKeyedSubscript:@"HMDCSEBNR.ck.nm"];
    v7->_notificationModes = [v12 integerValue];

    v13 = [dictionaryCopy objectForKeyedSubscript:@"HMDCSEBNR.ck.set"];
    v7->_significantEventTypes = [v13 integerValue];

    v14 = [dictionaryCopy objectForKeyedSubscript:@"HMDCSEBNR.ck.pfo"];
    v7->_personFamiliarityOptions = [v14 integerValue];

    goto LABEL_5;
  }

  v17 = _HMFPreconditionFailure();
  return [(HMDCameraSignificantEventBulletinNotificationRegistration *)v17 predicate];
}

- (id)predicate
{
  conditions = [(HMDBulletinNotificationRegistration *)self conditions];
  v4 = [HMDNotificationConditionConverter predicatesFromConditions:conditions];
  allObjects = [v4 allObjects];

  if (([(HMDCameraSignificantEventBulletinNotificationRegistration *)self notificationModes]& 1) != 0 || ([(HMDCameraSignificantEventBulletinNotificationRegistration *)self significantEventTypes]& 0x1F) != 0)
  {
    v6 = [MEMORY[0x277CD18C0] predicateForSignificantEventTypes:{-[HMDCameraSignificantEventBulletinNotificationRegistration significantEventTypes](self, "significantEventTypes")}];
    v7 = [allObjects arrayByAddingObject:v6];

    allObjects = v7;
  }

  if (([(HMDCameraSignificantEventBulletinNotificationRegistration *)self personFamiliarityOptions]& 7) != 0)
  {
    v8 = [MEMORY[0x277CD18C0] predicateForPersonFamiliarityOptions:{-[HMDCameraSignificantEventBulletinNotificationRegistration personFamiliarityOptions](self, "personFamiliarityOptions")}];
    v9 = [allObjects arrayByAddingObject:v8];

    allObjects = v9;
  }

  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __70__HMDCameraSignificantEventBulletinNotificationRegistration_predicate__block_invoke;
  v13[3] = &unk_2786842B0;
  v14 = allObjects;
  v10 = allObjects;
  v11 = __70__HMDCameraSignificantEventBulletinNotificationRegistration_predicate__block_invoke(v13);

  return v11;
}

id __70__HMDCameraSignificantEventBulletinNotificationRegistration_predicate__block_invoke(uint64_t a1)
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

- (HMDCameraSignificantEventBulletinNotificationRegistration)initWithCameraIdentifier:(id)identifier notificationModes:(unint64_t)modes significantEventTypes:(unint64_t)types personFamiliarityOptions:(unint64_t)options conditions:(id)conditions
{
  identifierCopy = identifier;
  conditionsCopy = conditions;
  if (identifierCopy)
  {
    v14 = conditionsCopy;
    v21.receiver = self;
    v21.super_class = HMDCameraSignificantEventBulletinNotificationRegistration;
    v15 = [(HMDBulletinNotificationRegistration *)&v21 initWithConditions:conditionsCopy];
    if (v15)
    {
      v16 = [identifierCopy copy];
      cameraIdentifier = v15->_cameraIdentifier;
      v15->_cameraIdentifier = v16;

      v15->_notificationModes = modes;
      v15->_significantEventTypes = types;
      v15->_personFamiliarityOptions = options;
    }

    return v15;
  }

  else
  {
    v19 = _HMFPreconditionFailure();
    return +[(HMDCameraSignificantEventBulletinNotificationRegistration *)v19];
  }
}

@end