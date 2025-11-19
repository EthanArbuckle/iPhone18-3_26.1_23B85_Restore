@interface HMDCameraSignificantEventBulletinNotificationRegistration
- (BOOL)isEqual:(id)a3;
- (HMDCameraSignificantEventBulletinNotificationRegistration)initWithCameraIdentifier:(id)a3 notificationModes:(unint64_t)a4 significantEventTypes:(unint64_t)a5 personFamiliarityOptions:(unint64_t)a6 conditions:(id)a7;
- (HMDCameraSignificantEventBulletinNotificationRegistration)initWithCoder:(id)a3;
- (HMDCameraSignificantEventBulletinNotificationRegistration)initWithDictionary:(id)a3;
- (id)attributeDescriptions;
- (id)predicate;
- (id)serializedRegistrationForRemoteMessage;
- (void)encodeWithCoder:(id)a3;
@end

@implementation HMDCameraSignificantEventBulletinNotificationRegistration

- (id)attributeDescriptions
{
  v22[4] = *MEMORY[0x277D85DE8];
  v21.receiver = self;
  v21.super_class = HMDCameraSignificantEventBulletinNotificationRegistration;
  v3 = [(HMDBulletinNotificationRegistration *)&v21 attributeDescriptions];
  v4 = objc_alloc(MEMORY[0x277D0F778]);
  v20 = [(HMDCameraSignificantEventBulletinNotificationRegistration *)self cameraIdentifier];
  v5 = [v4 initWithName:@"Camera Identifier" value:v20];
  v22[0] = v5;
  v6 = objc_alloc(MEMORY[0x277D0F778]);
  v19 = [(HMDCameraSignificantEventBulletinNotificationRegistration *)self notificationModes];
  v7 = NSPrintF();
  v8 = [v6 initWithName:@"Notification Modes" value:{v7, v19, &unk_22A587E90}];
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
  v16 = [v3 arrayByAddingObjectsFromArray:v15];

  v17 = *MEMORY[0x277D85DE8];

  return v16;
}

- (HMDCameraSignificantEventBulletinNotificationRegistration)initWithCoder:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [[HMDBulletinNotificationRegistration alloc] initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HMDCSEBNR.ck.ci"];
    if (v6)
    {
      v7 = [v4 decodeIntegerForKey:@"HMDCSEBNR.ck.nm"];
      v8 = [v4 decodeIntegerForKey:@"HMDCSEBNR.ck.set"];
      v9 = [v4 decodeIntegerForKey:@"HMDCSEBNR.ck.pfo"];
      v10 = [(HMDBulletinNotificationRegistration *)v5 conditions];
      self = [(HMDCameraSignificantEventBulletinNotificationRegistration *)self initWithCameraIdentifier:v6 notificationModes:v7 significantEventTypes:v8 personFamiliarityOptions:v9 conditions:v10];

      v11 = self;
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
      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
  }

  v15 = *MEMORY[0x277D85DE8];
  return v11;
}

- (void)encodeWithCoder:(id)a3
{
  v6.receiver = self;
  v6.super_class = HMDCameraSignificantEventBulletinNotificationRegistration;
  v4 = a3;
  [(HMDBulletinNotificationRegistration *)&v6 encodeWithCoder:v4];
  v5 = [(HMDCameraSignificantEventBulletinNotificationRegistration *)self cameraIdentifier:v6.receiver];
  [v4 encodeObject:v5 forKey:@"HMDCSEBNR.ck.ci"];

  [v4 encodeInteger:-[HMDCameraSignificantEventBulletinNotificationRegistration notificationModes](self forKey:{"notificationModes"), @"HMDCSEBNR.ck.nm"}];
  [v4 encodeInteger:-[HMDCameraSignificantEventBulletinNotificationRegistration significantEventTypes](self forKey:{"significantEventTypes"), @"HMDCSEBNR.ck.set"}];
  [v4 encodeInteger:-[HMDCameraSignificantEventBulletinNotificationRegistration personFamiliarityOptions](self forKey:{"personFamiliarityOptions"), @"HMDCSEBNR.ck.pfo"}];
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
  if (v6 && (v14.receiver = self, v14.super_class = HMDCameraSignificantEventBulletinNotificationRegistration, [(HMDBulletinNotificationRegistration *)&v14 isEqual:v6]))
  {
    v7 = [(HMDCameraSignificantEventBulletinNotificationRegistration *)self cameraIdentifier];
    v8 = [v6 cameraIdentifier];
    if ([v7 isEqual:v8] && (v9 = -[HMDCameraSignificantEventBulletinNotificationRegistration notificationModes](self, "notificationModes"), v9 == objc_msgSend(v6, "notificationModes")) && (v10 = -[HMDCameraSignificantEventBulletinNotificationRegistration significantEventTypes](self, "significantEventTypes"), v10 == objc_msgSend(v6, "significantEventTypes")))
    {
      v11 = [(HMDCameraSignificantEventBulletinNotificationRegistration *)self personFamiliarityOptions];
      v12 = v11 == [v6 personFamiliarityOptions];
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
  v3 = [(HMDBulletinNotificationRegistration *)&v11 serializedRegistrationForRemoteMessage];
  v4 = [v3 mutableCopy];

  v5 = [(HMDCameraSignificantEventBulletinNotificationRegistration *)self cameraIdentifier];
  v6 = [v5 UUIDString];
  [v4 setObject:v6 forKeyedSubscript:@"HMDCSEBNR.ck.ci"];

  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HMDCameraSignificantEventBulletinNotificationRegistration notificationModes](self, "notificationModes")}];
  [v4 setObject:v7 forKeyedSubscript:@"HMDCSEBNR.ck.nm"];

  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HMDCameraSignificantEventBulletinNotificationRegistration significantEventTypes](self, "significantEventTypes")}];
  [v4 setObject:v8 forKeyedSubscript:@"HMDCSEBNR.ck.set"];

  v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HMDCameraSignificantEventBulletinNotificationRegistration personFamiliarityOptions](self, "personFamiliarityOptions")}];
  [v4 setObject:v9 forKeyedSubscript:@"HMDCSEBNR.ck.pfo"];

  return v4;
}

- (HMDCameraSignificantEventBulletinNotificationRegistration)initWithDictionary:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  v6 = [objc_opt_class() type];
  LODWORD(v5) = [v5 doesTypeMatch:v4 against:v6];

  if (!v5)
  {
    v15 = 0;
    goto LABEL_7;
  }

  v19.receiver = self;
  v19.super_class = HMDCameraSignificantEventBulletinNotificationRegistration;
  v7 = [(HMDBulletinNotificationRegistration *)&v19 initWithDictionary:v4];
  if (!v7)
  {
LABEL_5:
    self = v7;
    v15 = self;
LABEL_7:

    return v15;
  }

  v8 = [v4 objectForKeyedSubscript:@"HMDCSEBNR.ck.ci"];
  if (v8)
  {
    v9 = v8;
    v10 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:v8];
    cameraIdentifier = v7->_cameraIdentifier;
    v7->_cameraIdentifier = v10;

    v12 = [v4 objectForKeyedSubscript:@"HMDCSEBNR.ck.nm"];
    v7->_notificationModes = [v12 integerValue];

    v13 = [v4 objectForKeyedSubscript:@"HMDCSEBNR.ck.set"];
    v7->_significantEventTypes = [v13 integerValue];

    v14 = [v4 objectForKeyedSubscript:@"HMDCSEBNR.ck.pfo"];
    v7->_personFamiliarityOptions = [v14 integerValue];

    goto LABEL_5;
  }

  v17 = _HMFPreconditionFailure();
  return [(HMDCameraSignificantEventBulletinNotificationRegistration *)v17 predicate];
}

- (id)predicate
{
  v3 = [(HMDBulletinNotificationRegistration *)self conditions];
  v4 = [HMDNotificationConditionConverter predicatesFromConditions:v3];
  v5 = [v4 allObjects];

  if (([(HMDCameraSignificantEventBulletinNotificationRegistration *)self notificationModes]& 1) != 0 || ([(HMDCameraSignificantEventBulletinNotificationRegistration *)self significantEventTypes]& 0x1F) != 0)
  {
    v6 = [MEMORY[0x277CD18C0] predicateForSignificantEventTypes:{-[HMDCameraSignificantEventBulletinNotificationRegistration significantEventTypes](self, "significantEventTypes")}];
    v7 = [v5 arrayByAddingObject:v6];

    v5 = v7;
  }

  if (([(HMDCameraSignificantEventBulletinNotificationRegistration *)self personFamiliarityOptions]& 7) != 0)
  {
    v8 = [MEMORY[0x277CD18C0] predicateForPersonFamiliarityOptions:{-[HMDCameraSignificantEventBulletinNotificationRegistration personFamiliarityOptions](self, "personFamiliarityOptions")}];
    v9 = [v5 arrayByAddingObject:v8];

    v5 = v9;
  }

  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __70__HMDCameraSignificantEventBulletinNotificationRegistration_predicate__block_invoke;
  v13[3] = &unk_2786842B0;
  v14 = v5;
  v10 = v5;
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

- (HMDCameraSignificantEventBulletinNotificationRegistration)initWithCameraIdentifier:(id)a3 notificationModes:(unint64_t)a4 significantEventTypes:(unint64_t)a5 personFamiliarityOptions:(unint64_t)a6 conditions:(id)a7
{
  v12 = a3;
  v13 = a7;
  if (v12)
  {
    v14 = v13;
    v21.receiver = self;
    v21.super_class = HMDCameraSignificantEventBulletinNotificationRegistration;
    v15 = [(HMDBulletinNotificationRegistration *)&v21 initWithConditions:v13];
    if (v15)
    {
      v16 = [v12 copy];
      cameraIdentifier = v15->_cameraIdentifier;
      v15->_cameraIdentifier = v16;

      v15->_notificationModes = a4;
      v15->_significantEventTypes = a5;
      v15->_personFamiliarityOptions = a6;
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