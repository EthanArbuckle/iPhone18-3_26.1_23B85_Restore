@interface HMDMediaPropertyNotificationRegistration
- (BOOL)isEqual:(id)equal;
- (HMDMediaPropertyNotificationRegistration)initWithMediaProfileUniqueIdentifier:(id)identifier mediaProperty:(id)property deviceIdsDestination:(id)destination userUUID:(id)d lastModified:(id)modified enabled:(BOOL)enabled;
- (id)attributeDescriptions;
- (unint64_t)hash;
@end

@implementation HMDMediaPropertyNotificationRegistration

- (id)attributeDescriptions
{
  v24[6] = *MEMORY[0x277D85DE8];
  v3 = objc_alloc(MEMORY[0x277D0F778]);
  mediaProfileUniqueIdentifier = [(HMDMediaPropertyNotificationRegistration *)self mediaProfileUniqueIdentifier];
  v22 = [v3 initWithName:@"Media Profile Unique Identifier" value:mediaProfileUniqueIdentifier];
  v24[0] = v22;
  v4 = objc_alloc(MEMORY[0x277D0F778]);
  mediaProperty = [(HMDMediaPropertyNotificationRegistration *)self mediaProperty];
  v5 = [v4 initWithName:@"Media Property" value:mediaProperty];
  v24[1] = v5;
  v6 = objc_alloc(MEMORY[0x277D0F778]);
  deviceIdsDestination = [(HMDMediaPropertyNotificationRegistration *)self deviceIdsDestination];
  v8 = [v6 initWithName:@"Device IDS Destination" value:deviceIdsDestination];
  v24[2] = v8;
  v9 = objc_alloc(MEMORY[0x277D0F778]);
  userUUID = [(HMDMediaPropertyNotificationRegistration *)self userUUID];
  v11 = [v9 initWithName:@"User UUID" value:userUUID];
  v24[3] = v11;
  v12 = objc_alloc(MEMORY[0x277D0F778]);
  lastModified = [(HMDMediaPropertyNotificationRegistration *)self lastModified];
  v14 = [v12 initWithName:@"Last Modified" value:lastModified];
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
  mediaProfileUniqueIdentifier = [(HMDMediaPropertyNotificationRegistration *)self mediaProfileUniqueIdentifier];
  v4 = [mediaProfileUniqueIdentifier hash];
  mediaProperty = [(HMDMediaPropertyNotificationRegistration *)self mediaProperty];
  v6 = [mediaProperty hash] ^ v4;
  deviceIdsDestination = [(HMDMediaPropertyNotificationRegistration *)self deviceIdsDestination];
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
      mediaProfileUniqueIdentifier = [(HMDMediaPropertyNotificationRegistration *)self mediaProfileUniqueIdentifier];
      mediaProfileUniqueIdentifier2 = [(HMDMediaPropertyNotificationRegistration *)v6 mediaProfileUniqueIdentifier];
      if ([mediaProfileUniqueIdentifier isEqual:mediaProfileUniqueIdentifier2])
      {
        mediaProperty = [(HMDMediaPropertyNotificationRegistration *)self mediaProperty];
        mediaProperty2 = [(HMDMediaPropertyNotificationRegistration *)v6 mediaProperty];
        if ([mediaProperty isEqual:mediaProperty2])
        {
          deviceIdsDestination = [(HMDMediaPropertyNotificationRegistration *)self deviceIdsDestination];
          deviceIdsDestination2 = [(HMDMediaPropertyNotificationRegistration *)v6 deviceIdsDestination];
          if ([deviceIdsDestination isEqual:deviceIdsDestination2])
          {
            userUUID = [(HMDMediaPropertyNotificationRegistration *)self userUUID];
            userUUID2 = [(HMDMediaPropertyNotificationRegistration *)v6 userUUID];
            v23 = userUUID;
            if ([userUUID isEqual:userUUID2])
            {
              lastModified = [(HMDMediaPropertyNotificationRegistration *)self lastModified];
              lastModified2 = [(HMDMediaPropertyNotificationRegistration *)v6 lastModified];
              v21 = lastModified;
              v16 = lastModified;
              v17 = lastModified2;
              if ([v16 isEqual:lastModified2])
              {
                enabled = [(HMDMediaPropertyNotificationRegistration *)self enabled];
                v19 = enabled ^ [(HMDMediaPropertyNotificationRegistration *)v6 enabled]^ 1;
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

- (HMDMediaPropertyNotificationRegistration)initWithMediaProfileUniqueIdentifier:(id)identifier mediaProperty:(id)property deviceIdsDestination:(id)destination userUUID:(id)d lastModified:(id)modified enabled:(BOOL)enabled
{
  identifierCopy = identifier;
  propertyCopy = property;
  destinationCopy = destination;
  dCopy = d;
  modifiedCopy = modified;
  v23.receiver = self;
  v23.super_class = HMDMediaPropertyNotificationRegistration;
  v18 = [(HMDMediaPropertyNotificationRegistration *)&v23 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_mediaProfileUniqueIdentifier, identifier);
    objc_storeStrong(&v19->_mediaProperty, property);
    objc_storeStrong(&v19->_deviceIdsDestination, destination);
    objc_storeStrong(&v19->_userUUID, d);
    objc_storeStrong(&v19->_lastModified, modified);
    v19->_enabled = enabled;
  }

  return v19;
}

@end