@interface HMDCharacteristicNotificationRegistration
- (BOOL)isEqual:(id)a3;
- (HMDCharacteristicNotificationRegistration)initWithAccessoryUUID:(id)a3 characteristicInstanceID:(id)a4 deviceIdsDestination:(id)a5 userUUID:(id)a6 lastModified:(id)a7 enabled:(BOOL)a8 notificationThreshold:(id)a9;
- (id)attributeDescriptions;
- (unint64_t)hash;
@end

@implementation HMDCharacteristicNotificationRegistration

- (id)attributeDescriptions
{
  v24[6] = *MEMORY[0x277D85DE8];
  v3 = objc_alloc(MEMORY[0x277D0F778]);
  v23 = [(HMDCharacteristicNotificationRegistration *)self accessoryUUID];
  v22 = [v3 initWithName:@"Accessory UUID" value:v23];
  v24[0] = v22;
  v4 = objc_alloc(MEMORY[0x277D0F778]);
  v21 = [(HMDCharacteristicNotificationRegistration *)self characteristicInstanceID];
  v5 = [v4 initWithName:@"Characteristic Instance ID" value:v21];
  v24[1] = v5;
  v6 = objc_alloc(MEMORY[0x277D0F778]);
  v7 = [(HMDCharacteristicNotificationRegistration *)self deviceIdsDestination];
  v8 = [v6 initWithName:@"Device IDS Destination" value:v7];
  v24[2] = v8;
  v9 = objc_alloc(MEMORY[0x277D0F778]);
  v10 = [(HMDCharacteristicNotificationRegistration *)self userUUID];
  v11 = [v9 initWithName:@"User UUID" value:v10];
  v24[3] = v11;
  v12 = objc_alloc(MEMORY[0x277D0F778]);
  v13 = [(HMDCharacteristicNotificationRegistration *)self lastModified];
  v14 = [v12 initWithName:@"Last Modified" value:v13];
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
  v3 = [(HMDCharacteristicNotificationRegistration *)self accessoryUUID];
  v4 = [v3 hash];
  v5 = [(HMDCharacteristicNotificationRegistration *)self characteristicInstanceID];
  v6 = [v5 hash] ^ v4;
  v7 = [(HMDCharacteristicNotificationRegistration *)self deviceIdsDestination];
  v8 = [v7 hash];

  return v6 ^ v8;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    LOBYTE(v19) = 1;
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
      v7 = [(HMDCharacteristicNotificationRegistration *)self accessoryUUID];
      v8 = [(HMDCharacteristicNotificationRegistration *)v6 accessoryUUID];
      if ([v7 isEqual:v8])
      {
        v9 = [(HMDCharacteristicNotificationRegistration *)self characteristicInstanceID];
        v10 = [(HMDCharacteristicNotificationRegistration *)v6 characteristicInstanceID];
        if ([v9 isEqual:v10])
        {
          v11 = [(HMDCharacteristicNotificationRegistration *)self deviceIdsDestination];
          v12 = [(HMDCharacteristicNotificationRegistration *)v6 deviceIdsDestination];
          if ([v11 isEqual:v12])
          {
            v13 = [(HMDCharacteristicNotificationRegistration *)self userUUID];
            v22 = [(HMDCharacteristicNotificationRegistration *)v6 userUUID];
            v23 = v13;
            if ([v13 isEqual:v22])
            {
              v14 = [(HMDCharacteristicNotificationRegistration *)self lastModified];
              v15 = [(HMDCharacteristicNotificationRegistration *)v6 lastModified];
              v21 = v14;
              v16 = v14;
              v17 = v15;
              if ([v16 isEqual:v15])
              {
                v18 = [(HMDCharacteristicNotificationRegistration *)self enabled];
                v19 = v18 ^ [(HMDCharacteristicNotificationRegistration *)v6 enabled]^ 1;
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

- (HMDCharacteristicNotificationRegistration)initWithAccessoryUUID:(id)a3 characteristicInstanceID:(id)a4 deviceIdsDestination:(id)a5 userUUID:(id)a6 lastModified:(id)a7 enabled:(BOOL)a8 notificationThreshold:(id)a9
{
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v18 = a6;
  v19 = a7;
  v20 = a9;
  v31.receiver = self;
  v31.super_class = HMDCharacteristicNotificationRegistration;
  v21 = [(HMDCharacteristicNotificationRegistration *)&v31 init];
  v22 = v21;
  if (v21)
  {
    objc_storeStrong(&v21->_accessoryUUID, a3);
    v23 = HAPInstanceIDFromValue();
    characteristicInstanceID = v22->_characteristicInstanceID;
    v22->_characteristicInstanceID = v23;

    v25 = [v17 copy];
    deviceIdsDestination = v22->_deviceIdsDestination;
    v22->_deviceIdsDestination = v25;

    objc_storeStrong(&v22->_userUUID, a6);
    objc_storeStrong(&v22->_lastModified, a7);
    v22->_enabled = a8;
    v27 = [v20 copy];
    notificationThreshold = v22->_notificationThreshold;
    v22->_notificationThreshold = v27;
  }

  return v22;
}

@end