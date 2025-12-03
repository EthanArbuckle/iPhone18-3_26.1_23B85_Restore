@interface DAKeySharingConfiguration
- (DAKeySharingConfiguration)init;
- (DAKeySharingConfiguration)initWithCoder:(id)coder;
- (DAKeySharingConfiguration)initWithProfile:(unint64_t)profile displayName:(id)name metaData:(id)data targetDeviceType:(int64_t)type;
- (DAKeySharingConfiguration)initWithProfile:(unint64_t)profile displayName:(id)name metaData:(id)data targetDeviceType:(int64_t)type enableVehiclePasscode:(BOOL)passcode maxRetriesForDevicePasscode:(unint64_t)devicePasscode deviceEnteredPasscode:(id)enteredPasscode proprietaryEntitlements:(id)self0;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation DAKeySharingConfiguration

- (DAKeySharingConfiguration)init
{
  v9.receiver = self;
  v9.super_class = DAKeySharingConfiguration;
  v2 = [(DAKeySharingConfiguration *)&v9 init];
  v3 = v2;
  if (v2)
  {
    v2->_profile = 0;
    displayName = v2->_displayName;
    v2->_displayName = &stru_285B97268;

    metaData = v3->_metaData;
    v3->_metaData = 0;

    v3->_enableVehicleEnteredPasscode = 0;
    v3->_targetDeviceType = 255;
    v3->_maxRetriesForDeviceEnteredPasscode = 0;
    deviceEnteredPasscode = v3->_deviceEnteredPasscode;
    v3->_deviceEnteredPasscode = 0;

    proprietaryEntitlements = v3->_proprietaryEntitlements;
    v3->_proprietaryEntitlements = 0;

    v3->_mockRefreshInstanceCA = 0;
    v3->_keyRole = 0;
    v3->_sharingFlow = 0;
  }

  return v3;
}

- (DAKeySharingConfiguration)initWithProfile:(unint64_t)profile displayName:(id)name metaData:(id)data targetDeviceType:(int64_t)type
{
  nameCopy = name;
  dataCopy = data;
  v18.receiver = self;
  v18.super_class = DAKeySharingConfiguration;
  v13 = [(DAKeySharingConfiguration *)&v18 init];
  v14 = v13;
  if (v13)
  {
    v13->_profile = profile;
    objc_storeStrong(&v13->_displayName, name);
    objc_storeStrong(&v14->_metaData, data);
    v14->_enableVehicleEnteredPasscode = 0;
    v14->_targetDeviceType = type;
    v14->_maxRetriesForDeviceEnteredPasscode = 0;
    deviceEnteredPasscode = v14->_deviceEnteredPasscode;
    v14->_deviceEnteredPasscode = 0;

    proprietaryEntitlements = v14->_proprietaryEntitlements;
    v14->_proprietaryEntitlements = 0;

    v14->_mockRefreshInstanceCA = 0;
  }

  return v14;
}

- (DAKeySharingConfiguration)initWithProfile:(unint64_t)profile displayName:(id)name metaData:(id)data targetDeviceType:(int64_t)type enableVehiclePasscode:(BOOL)passcode maxRetriesForDevicePasscode:(unint64_t)devicePasscode deviceEnteredPasscode:(id)enteredPasscode proprietaryEntitlements:(id)self0
{
  nameCopy = name;
  dataCopy = data;
  enteredPasscodeCopy = enteredPasscode;
  entitlementsCopy = entitlements;
  v24.receiver = self;
  v24.super_class = DAKeySharingConfiguration;
  v18 = [(DAKeySharingConfiguration *)&v24 init];
  v19 = v18;
  if (v18)
  {
    v18->_profile = profile;
    objc_storeStrong(&v18->_displayName, name);
    objc_storeStrong(&v19->_metaData, data);
    v19->_enableVehicleEnteredPasscode = passcode;
    v19->_targetDeviceType = type;
    v19->_maxRetriesForDeviceEnteredPasscode = devicePasscode;
    objc_storeStrong(&v19->_deviceEnteredPasscode, enteredPasscode);
    objc_storeStrong(&v19->_proprietaryEntitlements, entitlements);
    v19->_mockRefreshInstanceCA = 0;
    v19->_keyRole = 0;
    v19->_sharingFlow = 0;
  }

  return v19;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeInteger:-[DAKeySharingConfiguration profile](self forKey:{"profile"), @"profile"}];
  [coderCopy encodeInteger:-[DAKeySharingConfiguration keyRole](self forKey:{"keyRole"), @"keyRole"}];
  displayName = [(DAKeySharingConfiguration *)self displayName];
  [coderCopy encodeObject:displayName forKey:@"displayName"];

  metaData = [(DAKeySharingConfiguration *)self metaData];
  [coderCopy encodeObject:metaData forKey:@"metaData"];

  [coderCopy encodeInteger:-[DAKeySharingConfiguration targetDeviceType](self forKey:{"targetDeviceType"), @"targetDeviceType"}];
  [coderCopy encodeBool:-[DAKeySharingConfiguration enableVehicleEnteredPasscode](self forKey:{"enableVehicleEnteredPasscode"), @"enableVehicleEnteredPasscode"}];
  [coderCopy encodeInteger:-[DAKeySharingConfiguration maxRetriesForDeviceEnteredPasscode](self forKey:{"maxRetriesForDeviceEnteredPasscode"), @"maxRetriesForDeviceEnteredPasscode"}];
  deviceEnteredPasscode = [(DAKeySharingConfiguration *)self deviceEnteredPasscode];
  [coderCopy encodeObject:deviceEnteredPasscode forKey:@"deviceEnteredPasscode"];

  proprietaryEntitlements = [(DAKeySharingConfiguration *)self proprietaryEntitlements];
  [coderCopy encodeObject:proprietaryEntitlements forKey:@"proprietaryEntitlements"];

  [coderCopy encodeBool:-[DAKeySharingConfiguration mockRefreshInstanceCA](self forKey:{"mockRefreshInstanceCA"), @"mockRefreshInstanceCA"}];
}

- (DAKeySharingConfiguration)initWithCoder:(id)coder
{
  coderCopy = coder;
  v15.receiver = self;
  v15.super_class = DAKeySharingConfiguration;
  v5 = [(DAKeySharingConfiguration *)&v15 init];
  if (v5)
  {
    v5->_profile = [coderCopy decodeIntegerForKey:@"profile"];
    v5->_keyRole = [coderCopy decodeIntegerForKey:@"keyRole"];
    v5->_sharingFlow = 0;
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"displayName"];
    displayName = v5->_displayName;
    v5->_displayName = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"metaData"];
    metaData = v5->_metaData;
    v5->_metaData = v8;

    v5->_targetDeviceType = [coderCopy decodeIntegerForKey:@"targetDeviceType"];
    v5->_enableVehicleEnteredPasscode = [coderCopy decodeBoolForKey:@"enableVehicleEnteredPasscode"];
    v5->_maxRetriesForDeviceEnteredPasscode = [coderCopy decodeIntegerForKey:@"maxRetriesForDeviceEnteredPasscode"];
    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"deviceEnteredPasscode"];
    deviceEnteredPasscode = v5->_deviceEnteredPasscode;
    v5->_deviceEnteredPasscode = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"proprietaryEntitlements"];
    proprietaryEntitlements = v5->_proprietaryEntitlements;
    v5->_proprietaryEntitlements = v12;

    v5->_mockRefreshInstanceCA = [coderCopy decodeBoolForKey:@"mockRefreshInstanceCA"];
  }

  return v5;
}

- (id)description
{
  string = [MEMORY[0x277CCAB68] string];
  v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"Sharing Profile       : %ld\n", self->_profile];
  [string appendString:v4];

  v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"Key Role              : %ld\n", self->_keyRole];
  [string appendString:v5];

  v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"Display Name          : %@\n", self->_displayName];
  [string appendString:v6];

  v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"Meta Data             : %@\n", self->_metaData];
  [string appendString:v7];

  v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"Target Device         : %ld\n", self->_targetDeviceType];
  [string appendString:v8];

  v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"Enable VEP            : %d\n", self->_enableVehicleEnteredPasscode];
  [string appendString:v9];

  v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"Max PIN retries       : %ld\n", self->_maxRetriesForDeviceEnteredPasscode];
  [string appendString:v10];

  v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"PIN length            : %lu\n", -[NSString length](self->_deviceEnteredPasscode, "length")];
  [string appendString:v11];

  v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"Prop. Entitlements    : %@\n", self->_proprietaryEntitlements];
  [string appendString:v12];

  if (self->_mockRefreshInstanceCA)
  {
    [string appendString:@"Mock Refresh of Instance CA requested"];
  }

  return string;
}

@end