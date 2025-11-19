@interface HMDActionSetNotificationRegistration
- (BOOL)isEqual:(id)a3;
- (HMDActionSetNotificationRegistration)initWithActionSetUUID:(id)a3 deviceIdsDestination:(id)a4 userUUID:(id)a5 lastModified:(id)a6 enabled:(BOOL)a7;
- (id)attributeDescriptions;
- (unint64_t)hash;
@end

@implementation HMDActionSetNotificationRegistration

- (id)attributeDescriptions
{
  v21[5] = *MEMORY[0x277D85DE8];
  v3 = objc_alloc(MEMORY[0x277D0F778]);
  v20 = [(HMDActionSetNotificationRegistration *)self actionSetUUID];
  v4 = [v3 initWithName:@"Action Set UUID" value:v20];
  v21[0] = v4;
  v5 = objc_alloc(MEMORY[0x277D0F778]);
  v6 = [(HMDActionSetNotificationRegistration *)self deviceIdsDestination];
  v7 = [v5 initWithName:@"Device IDS Destination" value:v6];
  v21[1] = v7;
  v8 = objc_alloc(MEMORY[0x277D0F778]);
  v9 = [(HMDActionSetNotificationRegistration *)self userUUID];
  v10 = [v8 initWithName:@"User UUID" value:v9];
  v21[2] = v10;
  v11 = objc_alloc(MEMORY[0x277D0F778]);
  v12 = [(HMDActionSetNotificationRegistration *)self lastModified];
  v13 = [v11 initWithName:@"Last Modified" value:v12];
  v21[3] = v13;
  v14 = objc_alloc(MEMORY[0x277D0F778]);
  [(HMDActionSetNotificationRegistration *)self enabled];
  v15 = HMFBooleanToString();
  v16 = [v14 initWithName:@"Enabled" value:v15];
  v21[4] = v16;
  v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v21 count:5];

  v18 = *MEMORY[0x277D85DE8];

  return v17;
}

- (unint64_t)hash
{
  v3 = [(HMDActionSetNotificationRegistration *)self actionSetUUID];
  v4 = [v3 hash];
  v5 = [(HMDActionSetNotificationRegistration *)self deviceIdsDestination];
  v6 = [v5 hash];

  return v6 ^ v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    LOBYTE(v18) = 1;
  }

  else
  {
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
    if (v6)
    {
      v7 = [(HMDActionSetNotificationRegistration *)self actionSetUUID];
      v8 = [(HMDActionSetNotificationRegistration *)v6 actionSetUUID];
      if ([v7 isEqual:v8])
      {
        v9 = [(HMDActionSetNotificationRegistration *)self deviceIdsDestination];
        v10 = [(HMDActionSetNotificationRegistration *)v6 deviceIdsDestination];
        if ([v9 isEqual:v10])
        {
          v11 = [(HMDActionSetNotificationRegistration *)self userUUID];
          v12 = [(HMDActionSetNotificationRegistration *)v6 userUUID];
          if ([v11 isEqual:v12])
          {
            v13 = [(HMDActionSetNotificationRegistration *)self lastModified];
            v14 = [(HMDActionSetNotificationRegistration *)v6 lastModified];
            v20 = v13;
            v15 = v13;
            v16 = v14;
            if ([v15 isEqual:v14])
            {
              v17 = [(HMDActionSetNotificationRegistration *)self enabled];
              v18 = v17 ^ [(HMDActionSetNotificationRegistration *)v6 enabled]^ 1;
            }

            else
            {
              LOBYTE(v18) = 0;
            }
          }

          else
          {
            LOBYTE(v18) = 0;
          }
        }

        else
        {
          LOBYTE(v18) = 0;
        }
      }

      else
      {
        LOBYTE(v18) = 0;
      }
    }

    else
    {
      LOBYTE(v18) = 0;
    }
  }

  return v18;
}

- (HMDActionSetNotificationRegistration)initWithActionSetUUID:(id)a3 deviceIdsDestination:(id)a4 userUUID:(id)a5 lastModified:(id)a6 enabled:(BOOL)a7
{
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v20.receiver = self;
  v20.super_class = HMDActionSetNotificationRegistration;
  v17 = [(HMDActionSetNotificationRegistration *)&v20 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_actionSetUUID, a3);
    objc_storeStrong(&v18->_deviceIdsDestination, a4);
    objc_storeStrong(&v18->_userUUID, a5);
    objc_storeStrong(&v18->_lastModified, a6);
    v18->_enabled = a7;
  }

  return v18;
}

@end