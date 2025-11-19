@interface DAKeySharingConfiguration
- (DAKeySharingConfiguration)init;
- (DAKeySharingConfiguration)initWithCoder:(id)a3;
- (DAKeySharingConfiguration)initWithProfile:(unint64_t)a3 displayName:(id)a4 metaData:(id)a5 targetDeviceType:(int64_t)a6;
- (DAKeySharingConfiguration)initWithProfile:(unint64_t)a3 displayName:(id)a4 metaData:(id)a5 targetDeviceType:(int64_t)a6 enableVehiclePasscode:(BOOL)a7 maxRetriesForDevicePasscode:(unint64_t)a8 deviceEnteredPasscode:(id)a9 proprietaryEntitlements:(id)a10;
- (id)description;
- (void)encodeWithCoder:(id)a3;
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

- (DAKeySharingConfiguration)initWithProfile:(unint64_t)a3 displayName:(id)a4 metaData:(id)a5 targetDeviceType:(int64_t)a6
{
  v11 = a4;
  v12 = a5;
  v18.receiver = self;
  v18.super_class = DAKeySharingConfiguration;
  v13 = [(DAKeySharingConfiguration *)&v18 init];
  v14 = v13;
  if (v13)
  {
    v13->_profile = a3;
    objc_storeStrong(&v13->_displayName, a4);
    objc_storeStrong(&v14->_metaData, a5);
    v14->_enableVehicleEnteredPasscode = 0;
    v14->_targetDeviceType = a6;
    v14->_maxRetriesForDeviceEnteredPasscode = 0;
    deviceEnteredPasscode = v14->_deviceEnteredPasscode;
    v14->_deviceEnteredPasscode = 0;

    proprietaryEntitlements = v14->_proprietaryEntitlements;
    v14->_proprietaryEntitlements = 0;

    v14->_mockRefreshInstanceCA = 0;
  }

  return v14;
}

- (DAKeySharingConfiguration)initWithProfile:(unint64_t)a3 displayName:(id)a4 metaData:(id)a5 targetDeviceType:(int64_t)a6 enableVehiclePasscode:(BOOL)a7 maxRetriesForDevicePasscode:(unint64_t)a8 deviceEnteredPasscode:(id)a9 proprietaryEntitlements:(id)a10
{
  v23 = a4;
  v15 = a5;
  v16 = a9;
  v17 = a10;
  v24.receiver = self;
  v24.super_class = DAKeySharingConfiguration;
  v18 = [(DAKeySharingConfiguration *)&v24 init];
  v19 = v18;
  if (v18)
  {
    v18->_profile = a3;
    objc_storeStrong(&v18->_displayName, a4);
    objc_storeStrong(&v19->_metaData, a5);
    v19->_enableVehicleEnteredPasscode = a7;
    v19->_targetDeviceType = a6;
    v19->_maxRetriesForDeviceEnteredPasscode = a8;
    objc_storeStrong(&v19->_deviceEnteredPasscode, a9);
    objc_storeStrong(&v19->_proprietaryEntitlements, a10);
    v19->_mockRefreshInstanceCA = 0;
    v19->_keyRole = 0;
    v19->_sharingFlow = 0;
  }

  return v19;
}

- (void)encodeWithCoder:(id)a3
{
  v8 = a3;
  [v8 encodeInteger:-[DAKeySharingConfiguration profile](self forKey:{"profile"), @"profile"}];
  [v8 encodeInteger:-[DAKeySharingConfiguration keyRole](self forKey:{"keyRole"), @"keyRole"}];
  v4 = [(DAKeySharingConfiguration *)self displayName];
  [v8 encodeObject:v4 forKey:@"displayName"];

  v5 = [(DAKeySharingConfiguration *)self metaData];
  [v8 encodeObject:v5 forKey:@"metaData"];

  [v8 encodeInteger:-[DAKeySharingConfiguration targetDeviceType](self forKey:{"targetDeviceType"), @"targetDeviceType"}];
  [v8 encodeBool:-[DAKeySharingConfiguration enableVehicleEnteredPasscode](self forKey:{"enableVehicleEnteredPasscode"), @"enableVehicleEnteredPasscode"}];
  [v8 encodeInteger:-[DAKeySharingConfiguration maxRetriesForDeviceEnteredPasscode](self forKey:{"maxRetriesForDeviceEnteredPasscode"), @"maxRetriesForDeviceEnteredPasscode"}];
  v6 = [(DAKeySharingConfiguration *)self deviceEnteredPasscode];
  [v8 encodeObject:v6 forKey:@"deviceEnteredPasscode"];

  v7 = [(DAKeySharingConfiguration *)self proprietaryEntitlements];
  [v8 encodeObject:v7 forKey:@"proprietaryEntitlements"];

  [v8 encodeBool:-[DAKeySharingConfiguration mockRefreshInstanceCA](self forKey:{"mockRefreshInstanceCA"), @"mockRefreshInstanceCA"}];
}

- (DAKeySharingConfiguration)initWithCoder:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = DAKeySharingConfiguration;
  v5 = [(DAKeySharingConfiguration *)&v15 init];
  if (v5)
  {
    v5->_profile = [v4 decodeIntegerForKey:@"profile"];
    v5->_keyRole = [v4 decodeIntegerForKey:@"keyRole"];
    v5->_sharingFlow = 0;
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"displayName"];
    displayName = v5->_displayName;
    v5->_displayName = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"metaData"];
    metaData = v5->_metaData;
    v5->_metaData = v8;

    v5->_targetDeviceType = [v4 decodeIntegerForKey:@"targetDeviceType"];
    v5->_enableVehicleEnteredPasscode = [v4 decodeBoolForKey:@"enableVehicleEnteredPasscode"];
    v5->_maxRetriesForDeviceEnteredPasscode = [v4 decodeIntegerForKey:@"maxRetriesForDeviceEnteredPasscode"];
    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"deviceEnteredPasscode"];
    deviceEnteredPasscode = v5->_deviceEnteredPasscode;
    v5->_deviceEnteredPasscode = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"proprietaryEntitlements"];
    proprietaryEntitlements = v5->_proprietaryEntitlements;
    v5->_proprietaryEntitlements = v12;

    v5->_mockRefreshInstanceCA = [v4 decodeBoolForKey:@"mockRefreshInstanceCA"];
  }

  return v5;
}

- (id)description
{
  v3 = [MEMORY[0x277CCAB68] string];
  v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"Sharing Profile       : %ld\n", self->_profile];
  [v3 appendString:v4];

  v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"Key Role              : %ld\n", self->_keyRole];
  [v3 appendString:v5];

  v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"Display Name          : %@\n", self->_displayName];
  [v3 appendString:v6];

  v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"Meta Data             : %@\n", self->_metaData];
  [v3 appendString:v7];

  v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"Target Device         : %ld\n", self->_targetDeviceType];
  [v3 appendString:v8];

  v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"Enable VEP            : %d\n", self->_enableVehicleEnteredPasscode];
  [v3 appendString:v9];

  v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"Max PIN retries       : %ld\n", self->_maxRetriesForDeviceEnteredPasscode];
  [v3 appendString:v10];

  v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"PIN length            : %lu\n", -[NSString length](self->_deviceEnteredPasscode, "length")];
  [v3 appendString:v11];

  v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"Prop. Entitlements    : %@\n", self->_proprietaryEntitlements];
  [v3 appendString:v12];

  if (self->_mockRefreshInstanceCA)
  {
    [v3 appendString:@"Mock Refresh of Instance CA requested"];
  }

  return v3;
}

@end