@interface HMDMediaPropertyNotificationRegistration
- (BOOL)isEqual:(id)a3;
- (HMDMediaPropertyNotificationRegistration)initWithMediaProfileUniqueIdentifier:(id)a3 mediaProperty:(id)a4 deviceIdsDestination:(id)a5 userUUID:(id)a6 lastModified:(id)a7 enabled:(BOOL)a8;
- (id)attributeDescriptions;
- (unint64_t)hash;
@end

@implementation HMDMediaPropertyNotificationRegistration

- (id)attributeDescriptions
{
  v24[6] = *MEMORY[0x277D85DE8];
  v3 = objc_alloc(MEMORY[0x277D0F778]);
  v23 = [(HMDMediaPropertyNotificationRegistration *)self mediaProfileUniqueIdentifier];
  v22 = [v3 initWithName:@"Media Profile Unique Identifier" value:v23];
  v24[0] = v22;
  v4 = objc_alloc(MEMORY[0x277D0F778]);
  v21 = [(HMDMediaPropertyNotificationRegistration *)self mediaProperty];
  v5 = [v4 initWithName:@"Media Property" value:v21];
  v24[1] = v5;
  v6 = objc_alloc(MEMORY[0x277D0F778]);
  v7 = [(HMDMediaPropertyNotificationRegistration *)self deviceIdsDestination];
  v8 = [v6 initWithName:@"Device IDS Destination" value:v7];
  v24[2] = v8;
  v9 = objc_alloc(MEMORY[0x277D0F778]);
  v10 = [(HMDMediaPropertyNotificationRegistration *)self userUUID];
  v11 = [v9 initWithName:@"User UUID" value:v10];
  v24[3] = v11;
  v12 = objc_alloc(MEMORY[0x277D0F778]);
  v13 = [(HMDMediaPropertyNotificationRegistration *)self lastModified];
  v14 = [v12 initWithName:@"Last Modified" value:v13];
  v24[4] = v14;
  v15 = objc_alloc(MEMORY[0x277D0F778]);
  [(HMDMediaPropertyNotificationRegistration *)self enabled];
  v16 = HMFBooleanToString();
  v17 = [v15 initWithName:@"Enabled" value:v16];
  v24[5] = v17;
  v18 = [MEMORY[0x277CBEA60] arrayWithObjects:v24 count:6];

  v19 = *MEMORY[0x277D85DE8];

  return v18;
}

- (unint64_t)hash
{
  v3 = [(HMDMediaPropertyNotificationRegistration *)self mediaProfileUniqueIdentifier];
  v4 = [v3 hash];
  v5 = [(HMDMediaPropertyNotificationRegistration *)self mediaProperty];
  v6 = [v5 hash] ^ v4;
  v7 = [(HMDMediaPropertyNotificationRegistration *)self deviceIdsDestination];
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
      v7 = [(HMDMediaPropertyNotificationRegistration *)self mediaProfileUniqueIdentifier];
      v8 = [(HMDMediaPropertyNotificationRegistration *)v6 mediaProfileUniqueIdentifier];
      if ([v7 isEqual:v8])
      {
        v9 = [(HMDMediaPropertyNotificationRegistration *)self mediaProperty];
        v10 = [(HMDMediaPropertyNotificationRegistration *)v6 mediaProperty];
        if ([v9 isEqual:v10])
        {
          v11 = [(HMDMediaPropertyNotificationRegistration *)self deviceIdsDestination];
          v12 = [(HMDMediaPropertyNotificationRegistration *)v6 deviceIdsDestination];
          if ([v11 isEqual:v12])
          {
            v13 = [(HMDMediaPropertyNotificationRegistration *)self userUUID];
            v22 = [(HMDMediaPropertyNotificationRegistration *)v6 userUUID];
            v23 = v13;
            if ([v13 isEqual:v22])
            {
              v14 = [(HMDMediaPropertyNotificationRegistration *)self lastModified];
              v15 = [(HMDMediaPropertyNotificationRegistration *)v6 lastModified];
              v21 = v14;
              v16 = v14;
              v17 = v15;
              if ([v16 isEqual:v15])
              {
                v18 = [(HMDMediaPropertyNotificationRegistration *)self enabled];
                v19 = v18 ^ [(HMDMediaPropertyNotificationRegistration *)v6 enabled]^ 1;
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

- (HMDMediaPropertyNotificationRegistration)initWithMediaProfileUniqueIdentifier:(id)a3 mediaProperty:(id)a4 deviceIdsDestination:(id)a5 userUUID:(id)a6 lastModified:(id)a7 enabled:(BOOL)a8
{
  v22 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v17 = a7;
  v23.receiver = self;
  v23.super_class = HMDMediaPropertyNotificationRegistration;
  v18 = [(HMDMediaPropertyNotificationRegistration *)&v23 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_mediaProfileUniqueIdentifier, a3);
    objc_storeStrong(&v19->_mediaProperty, a4);
    objc_storeStrong(&v19->_deviceIdsDestination, a5);
    objc_storeStrong(&v19->_userUUID, a6);
    objc_storeStrong(&v19->_lastModified, a7);
    v19->_enabled = a8;
  }

  return v19;
}

@end