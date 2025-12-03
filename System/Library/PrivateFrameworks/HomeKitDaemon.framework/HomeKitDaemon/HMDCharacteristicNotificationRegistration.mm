@interface HMDCharacteristicNotificationRegistration
- (BOOL)isEqual:(id)equal;
- (HMDCharacteristicNotificationRegistration)initWithAccessoryUUID:(id)d characteristicInstanceID:(id)iD deviceIdsDestination:(id)destination userUUID:(id)uID lastModified:(id)modified enabled:(BOOL)enabled notificationThreshold:(id)threshold;
- (id)attributeDescriptions;
- (unint64_t)hash;
@end

@implementation HMDCharacteristicNotificationRegistration

- (id)attributeDescriptions
{
  v24[6] = *MEMORY[0x277D85DE8];
  v3 = objc_alloc(MEMORY[0x277D0F778]);
  accessoryUUID = [(HMDCharacteristicNotificationRegistration *)self accessoryUUID];
  v22 = [v3 initWithName:@"Accessory UUID" value:accessoryUUID];
  v24[0] = v22;
  v4 = objc_alloc(MEMORY[0x277D0F778]);
  characteristicInstanceID = [(HMDCharacteristicNotificationRegistration *)self characteristicInstanceID];
  v5 = [v4 initWithName:@"Characteristic Instance ID" value:characteristicInstanceID];
  v24[1] = v5;
  v6 = objc_alloc(MEMORY[0x277D0F778]);
  deviceIdsDestination = [(HMDCharacteristicNotificationRegistration *)self deviceIdsDestination];
  v8 = [v6 initWithName:@"Device IDS Destination" value:deviceIdsDestination];
  v24[2] = v8;
  v9 = objc_alloc(MEMORY[0x277D0F778]);
  userUUID = [(HMDCharacteristicNotificationRegistration *)self userUUID];
  v11 = [v9 initWithName:@"User UUID" value:userUUID];
  v24[3] = v11;
  v12 = objc_alloc(MEMORY[0x277D0F778]);
  lastModified = [(HMDCharacteristicNotificationRegistration *)self lastModified];
  v14 = [v12 initWithName:@"Last Modified" value:lastModified];
  v24[4] = v14;
  v15 = objc_alloc(MEMORY[0x277D0F778]);
  [(HMDCharacteristicNotificationRegistration *)self enabled];
  v16 = HMFBooleanToString();
  v17 = [v15 initWithName:@"Enabled" value:v16];
  v24[5] = v17;
  v18 = [MEMORY[0x277CBEA60] arrayWithObjects:v24 count:6];

  v19 = *MEMORY[0x277D85DE8];

  return v18;
}

- (unint64_t)hash
{
  accessoryUUID = [(HMDCharacteristicNotificationRegistration *)self accessoryUUID];
  v4 = [accessoryUUID hash];
  characteristicInstanceID = [(HMDCharacteristicNotificationRegistration *)self characteristicInstanceID];
  v6 = [characteristicInstanceID hash] ^ v4;
  deviceIdsDestination = [(HMDCharacteristicNotificationRegistration *)self deviceIdsDestination];
  v8 = [deviceIdsDestination hash];

  return v6 ^ v8;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    LOBYTE(v19) = 1;
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
      accessoryUUID = [(HMDCharacteristicNotificationRegistration *)self accessoryUUID];
      accessoryUUID2 = [(HMDCharacteristicNotificationRegistration *)v6 accessoryUUID];
      if ([accessoryUUID isEqual:accessoryUUID2])
      {
        characteristicInstanceID = [(HMDCharacteristicNotificationRegistration *)self characteristicInstanceID];
        characteristicInstanceID2 = [(HMDCharacteristicNotificationRegistration *)v6 characteristicInstanceID];
        if ([characteristicInstanceID isEqual:characteristicInstanceID2])
        {
          deviceIdsDestination = [(HMDCharacteristicNotificationRegistration *)self deviceIdsDestination];
          deviceIdsDestination2 = [(HMDCharacteristicNotificationRegistration *)v6 deviceIdsDestination];
          if ([deviceIdsDestination isEqual:deviceIdsDestination2])
          {
            userUUID = [(HMDCharacteristicNotificationRegistration *)self userUUID];
            userUUID2 = [(HMDCharacteristicNotificationRegistration *)v6 userUUID];
            v23 = userUUID;
            if ([userUUID isEqual:userUUID2])
            {
              lastModified = [(HMDCharacteristicNotificationRegistration *)self lastModified];
              lastModified2 = [(HMDCharacteristicNotificationRegistration *)v6 lastModified];
              v21 = lastModified;
              v16 = lastModified;
              v17 = lastModified2;
              if ([v16 isEqual:lastModified2])
              {
                enabled = [(HMDCharacteristicNotificationRegistration *)self enabled];
                v19 = enabled ^ [(HMDCharacteristicNotificationRegistration *)v6 enabled]^ 1;
              }

              else
              {
                LOBYTE(v19) = 0;
              }
            }

            else
            {
              LOBYTE(v19) = 0;
            }
          }

          else
          {
            LOBYTE(v19) = 0;
          }
        }

        else
        {
          LOBYTE(v19) = 0;
        }
      }

      else
      {
        LOBYTE(v19) = 0;
      }
    }

    else
    {
      LOBYTE(v19) = 0;
    }
  }

  return v19;
}

- (HMDCharacteristicNotificationRegistration)initWithAccessoryUUID:(id)d characteristicInstanceID:(id)iD deviceIdsDestination:(id)destination userUUID:(id)uID lastModified:(id)modified enabled:(BOOL)enabled notificationThreshold:(id)threshold
{
  dCopy = d;
  iDCopy = iD;
  destinationCopy = destination;
  uIDCopy = uID;
  modifiedCopy = modified;
  thresholdCopy = threshold;
  v31.receiver = self;
  v31.super_class = HMDCharacteristicNotificationRegistration;
  v21 = [(HMDCharacteristicNotificationRegistration *)&v31 init];
  v22 = v21;
  if (v21)
  {
    objc_storeStrong(&v21->_accessoryUUID, d);
    v23 = HAPInstanceIDFromValue();
    characteristicInstanceID = v22->_characteristicInstanceID;
    v22->_characteristicInstanceID = v23;

    v25 = [destinationCopy copy];
    deviceIdsDestination = v22->_deviceIdsDestination;
    v22->_deviceIdsDestination = v25;

    objc_storeStrong(&v22->_userUUID, uID);
    objc_storeStrong(&v22->_lastModified, modified);
    v22->_enabled = enabled;
    v27 = [thresholdCopy copy];
    notificationThreshold = v22->_notificationThreshold;
    v22->_notificationThreshold = v27;
  }

  return v22;
}

@end