@interface HMDActionSetNotificationRegistration
- (BOOL)isEqual:(id)equal;
- (HMDActionSetNotificationRegistration)initWithActionSetUUID:(id)d deviceIdsDestination:(id)destination userUUID:(id)iD lastModified:(id)modified enabled:(BOOL)enabled;
- (id)attributeDescriptions;
- (unint64_t)hash;
@end

@implementation HMDActionSetNotificationRegistration

- (id)attributeDescriptions
{
  v21[5] = *MEMORY[0x277D85DE8];
  v3 = objc_alloc(MEMORY[0x277D0F778]);
  actionSetUUID = [(HMDActionSetNotificationRegistration *)self actionSetUUID];
  v4 = [v3 initWithName:@"Action Set UUID" value:actionSetUUID];
  v21[0] = v4;
  v5 = objc_alloc(MEMORY[0x277D0F778]);
  deviceIdsDestination = [(HMDActionSetNotificationRegistration *)self deviceIdsDestination];
  v7 = [v5 initWithName:@"Device IDS Destination" value:deviceIdsDestination];
  v21[1] = v7;
  v8 = objc_alloc(MEMORY[0x277D0F778]);
  userUUID = [(HMDActionSetNotificationRegistration *)self userUUID];
  v10 = [v8 initWithName:@"User UUID" value:userUUID];
  v21[2] = v10;
  v11 = objc_alloc(MEMORY[0x277D0F778]);
  lastModified = [(HMDActionSetNotificationRegistration *)self lastModified];
  v13 = [v11 initWithName:@"Last Modified" value:lastModified];
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
  actionSetUUID = [(HMDActionSetNotificationRegistration *)self actionSetUUID];
  v4 = [actionSetUUID hash];
  deviceIdsDestination = [(HMDActionSetNotificationRegistration *)self deviceIdsDestination];
  v6 = [deviceIdsDestination hash];

  return v6 ^ v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    LOBYTE(v18) = 1;
  }

  else
  {
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
    if (v6)
    {
      actionSetUUID = [(HMDActionSetNotificationRegistration *)self actionSetUUID];
      actionSetUUID2 = [(HMDActionSetNotificationRegistration *)v6 actionSetUUID];
      if ([actionSetUUID isEqual:actionSetUUID2])
      {
        deviceIdsDestination = [(HMDActionSetNotificationRegistration *)self deviceIdsDestination];
        deviceIdsDestination2 = [(HMDActionSetNotificationRegistration *)v6 deviceIdsDestination];
        if ([deviceIdsDestination isEqual:deviceIdsDestination2])
        {
          userUUID = [(HMDActionSetNotificationRegistration *)self userUUID];
          userUUID2 = [(HMDActionSetNotificationRegistration *)v6 userUUID];
          if ([userUUID isEqual:userUUID2])
          {
            lastModified = [(HMDActionSetNotificationRegistration *)self lastModified];
            lastModified2 = [(HMDActionSetNotificationRegistration *)v6 lastModified];
            v20 = lastModified;
            v15 = lastModified;
            v16 = lastModified2;
            if ([v15 isEqual:lastModified2])
            {
              enabled = [(HMDActionSetNotificationRegistration *)self enabled];
              v18 = enabled ^ [(HMDActionSetNotificationRegistration *)v6 enabled]^ 1;
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

- (HMDActionSetNotificationRegistration)initWithActionSetUUID:(id)d deviceIdsDestination:(id)destination userUUID:(id)iD lastModified:(id)modified enabled:(BOOL)enabled
{
  dCopy = d;
  destinationCopy = destination;
  iDCopy = iD;
  modifiedCopy = modified;
  v20.receiver = self;
  v20.super_class = HMDActionSetNotificationRegistration;
  v17 = [(HMDActionSetNotificationRegistration *)&v20 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_actionSetUUID, d);
    objc_storeStrong(&v18->_deviceIdsDestination, destination);
    objc_storeStrong(&v18->_userUUID, iD);
    objc_storeStrong(&v18->_lastModified, modified);
    v18->_enabled = enabled;
  }

  return v18;
}

@end