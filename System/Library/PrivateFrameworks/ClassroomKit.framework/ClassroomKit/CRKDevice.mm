@interface CRKDevice
+ (NSDictionary)keyTranslations;
+ (id)CRKKeyForDMFKey:(id)key;
+ (id)allPropertyKeys;
- (BOOL)isApplicationInstalled:(id)installed;
- (BOOL)isApplicationOpen:(id)open;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToDevice:(id)device;
- (CRKDevice)initWithCoder:(id)coder;
- (CRKDevice)initWithIdentifier:(id)identifier;
- (NSArray)installedApplications;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)valueForUndefinedKey:(id)key;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
- (void)setInstalledApplications:(id)applications;
- (void)setValue:(id)value forUndefinedKey:(id)key;
@end

@implementation CRKDevice

+ (NSDictionary)keyTranslations
{
  if (keyTranslations_onceToken != -1)
  {
    +[CRKDevice(Translations) keyTranslations];
  }

  v3 = keyTranslations_translations;

  return v3;
}

void __42__CRKDevice_Translations__keyTranslations__block_invoke()
{
  v39[33] = *MEMORY[0x277D85DE8];
  v0 = *MEMORY[0x277D04B08];
  v17[0] = *MEMORY[0x277D04A28];
  v17[1] = v0;
  v39[0] = @"identifier";
  v39[1] = @"serialNumber";
  v1 = *MEMORY[0x277D04AA0];
  v17[2] = *MEMORY[0x277D04AE0];
  v17[3] = v1;
  v39[2] = @"platform";
  v39[3] = @"model";
  v2 = *MEMORY[0x277D04B58];
  v17[4] = *MEMORY[0x277D04AB8];
  v17[5] = v2;
  v39[4] = @"name";
  v39[5] = @"systemName";
  v3 = *MEMORY[0x277D049B0];
  v17[6] = *MEMORY[0x277D04B60];
  v17[7] = v3;
  v39[6] = @"systemVersion";
  v39[7] = @"buildVersion";
  v4 = *MEMORY[0x277D04A58];
  v17[8] = *MEMORY[0x277D04A78];
  v17[9] = v4;
  v39[8] = @"supervised";
  v39[9] = @"ephemeralMultiUser";
  v5 = *MEMORY[0x277D049D0];
  v17[10] = *MEMORY[0x277D049A0];
  v17[11] = v5;
  v39[10] = @"batteryLevel";
  v39[11] = @"chargingState";
  v6 = *MEMORY[0x277D04AF8];
  v18 = *MEMORY[0x277D04A88];
  v19 = v6;
  v39[12] = @"lockState";
  v39[13] = @"screenState";
  v7 = *MEMORY[0x277D04988];
  v20 = *MEMORY[0x277D04BA8];
  v21 = v7;
  v39[14] = @"volume";
  v39[15] = @"availableBytes";
  v8 = *MEMORY[0x277D04A30];
  v22 = *MEMORY[0x277D049F8];
  v23 = v8;
  v39[16] = @"deviceOrientation";
  v39[17] = @"interfaceOrientation";
  v9 = *MEMORY[0x277D04B00];
  v24 = *MEMORY[0x277D04AE8];
  v25 = v9;
  v39[18] = @"primaryOpenApplication";
  v39[19] = @"secondaryOpenApplication";
  v10 = *MEMORY[0x277D04B88];
  v26 = v18;
  v27 = v10;
  v39[20] = @"lockState";
  v39[21] = @"userIdentifier";
  v11 = *MEMORY[0x277D04B80];
  v28 = *MEMORY[0x277D04B70];
  v29 = v11;
  v39[22] = @"userDisplayName";
  v39[23] = @"userGivenName";
  v12 = *MEMORY[0x277D04B90];
  v30 = *MEMORY[0x277D04B78];
  v31 = v12;
  v39[24] = @"userFamilyName";
  v39[25] = @"userImageURL";
  v13 = *MEMORY[0x277D04AC8];
  v32 = *MEMORY[0x277D04B98];
  v33 = v13;
  v39[26] = @"loginState";
  v39[27] = @"passcodeEnabled";
  v14 = *MEMORY[0x277D04980];
  v34 = *MEMORY[0x277D04970];
  v35 = v14;
  v39[28] = @"activeAirPlayRoute";
  v39[29] = @"availableAirPlayRoutes";
  v36 = *MEMORY[0x277D04A98];
  v37 = v11;
  v39[30] = @"managementLockPasscode";
  v39[31] = @"userGivenName";
  v38 = v30;
  v39[32] = @"userFamilyName";
  v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v39 forKeys:v17 count:33];
  v16 = keyTranslations_translations;
  keyTranslations_translations = v15;
}

+ (id)CRKKeyForDMFKey:(id)key
{
  keyCopy = key;
  v4 = +[CRKDevice keyTranslations];
  v5 = [v4 objectForKeyedSubscript:keyCopy];

  return v5;
}

+ (id)allPropertyKeys
{
  v4[52] = *MEMORY[0x277D85DE8];
  v4[0] = @"identifier";
  v4[1] = @"serialNumber";
  v4[2] = @"trustedExchangeIdentifier";
  v4[3] = @"platform";
  v4[4] = @"model";
  v4[5] = @"name";
  v4[6] = @"systemName";
  v4[7] = @"systemVersion";
  v4[8] = @"buildVersion";
  v4[9] = @"supervised";
  v4[10] = @"ephemeralMultiUser";
  v4[11] = @"batteryLevel";
  v4[12] = @"chargingState";
  v4[13] = @"lockState";
  v4[14] = @"screenState";
  v4[15] = @"screenSaverActive";
  v4[16] = @"volume";
  v4[17] = @"muted";
  v4[18] = @"availableBytes";
  v4[19] = @"deviceOrientation";
  v4[20] = @"interfaceOrientation";
  v4[21] = @"displays";
  v4[22] = @"displayBackingScaleFactor";
  v4[23] = @"displayHeight";
  v4[24] = @"displayWidth";
  v4[25] = @"primaryOpenApplication";
  v4[26] = @"secondaryOpenApplication";
  v4[27] = @"allOpenApplications";
  v4[28] = @"appLocked";
  v4[29] = @"installedApplications";
  v4[30] = @"installedApplicationInfo";
  v4[31] = @"userIdentifier";
  v4[32] = @"userDisplayName";
  v4[33] = @"userGivenName";
  v4[34] = @"userFamilyName";
  v4[35] = @"userImageURL";
  v4[36] = @"loginState";
  v4[37] = @"passcodeEnabled";
  v4[38] = @"studentImageIdentifier";
  v4[39] = @"instructorImageIdentifier";
  v4[40] = @"activeAirPlayRoute";
  v4[41] = @"availableAirPlayRoutes";
  v4[42] = @"managementLockPasscode";
  v4[43] = @"stagedAdHocIdentityCertificateFingerprint";
  v4[44] = @"trustedAnchorCertificateFingerprints";
  v4[45] = @"userPhoneticGivenName";
  v4[46] = @"userPhoneticFamilyName";
  v4[47] = @"studentImageIdentifier";
  v4[48] = @"instructorImageIdentifier";
  v4[49] = @"requestingUnenroll";
  v4[50] = @"currentLocaleIdentifier";
  v4[51] = @"lowBattery";
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v4 count:52];

  return v2;
}

- (NSArray)installedApplications
{
  installedApplicationInfo = [(CRKDevice *)self installedApplicationInfo];
  v3 = [CRKApplicationInfo bundleIdentifiersFromDictionaryRepresentations:installedApplicationInfo];

  return v3;
}

- (void)setInstalledApplications:(id)applications
{
  applicationsCopy = applications;
  v5 = [objc_opt_class() applicationInfoFromBundleIdentifiers:applicationsCopy];

  [(CRKDevice *)self setInstalledApplicationInfo:v5];
}

- (BOOL)isApplicationOpen:(id)open
{
  openCopy = open;
  allOpenApplications = [(CRKDevice *)self allOpenApplications];
  v6 = [allOpenApplications containsObject:openCopy];

  return v6;
}

- (BOOL)isApplicationInstalled:(id)installed
{
  v17 = *MEMORY[0x277D85DE8];
  installedCopy = installed;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  installedApplicationInfo = [(CRKDevice *)self installedApplicationInfo];
  v6 = [installedApplicationInfo countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = *v13;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(installedApplicationInfo);
        }

        v9 = [CRKApplicationInfo bundleIdentifierFromDictionaryRepresentation:*(*(&v12 + 1) + 8 * i)];
        v10 = [v9 isEqualToString:installedCopy];

        if (v10)
        {
          LOBYTE(v6) = 1;
          goto LABEL_11;
        }
      }

      v6 = [installedApplicationInfo countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v6;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v9.receiver = self;
  v9.super_class = CRKDevice;
  v4 = [(CRKDevice *)&v9 description];
  identifier = [(CRKDevice *)self identifier];
  name = [(CRKDevice *)self name];
  v7 = [v3 stringWithFormat:@"%@ (identifier: %@ name: %@)", v4, identifier, name];

  return v7;
}

- (unint64_t)hash
{
  identifier = [(CRKDevice *)self identifier];
  v3 = [identifier hash];

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(CRKDevice *)self isEqualToDevice:equalCopy];
  }

  return v5;
}

- (BOOL)isEqualToDevice:(id)device
{
  deviceCopy = device;
  identifier = [(CRKDevice *)self identifier];
  identifier2 = [deviceCopy identifier];

  if (identifier | identifier2)
  {
    v7 = [identifier isEqual:identifier2];
  }

  else
  {
    v7 = 1;
  }

  return v7;
}

- (void)setValue:(id)value forUndefinedKey:(id)key
{
  keyCopy = key;
  valueCopy = value;
  v8 = [CRKDevice CRKKeyForDMFKey:keyCopy];
  if (v8)
  {
    [(CRKDevice *)self setValue:valueCopy forKey:v8];
  }

  else
  {
    v9.receiver = self;
    v9.super_class = CRKDevice;
    [(CRKDevice *)&v9 setValue:valueCopy forUndefinedKey:keyCopy];
  }
}

- (id)valueForUndefinedKey:(id)key
{
  keyCopy = key;
  v5 = [CRKDevice CRKKeyForDMFKey:keyCopy];
  if (v5)
  {
    v6 = [(CRKDevice *)self valueForKey:v5];
  }

  else
  {
    v9.receiver = self;
    v9.super_class = CRKDevice;
    v6 = [(CRKDevice *)&v9 valueForUndefinedKey:keyCopy];
  }

  v7 = v6;

  return v7;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc(objc_opt_class());
  identifier = [(CRKDevice *)self identifier];
  v6 = [v4 initWithIdentifier:identifier];

  if (v6)
  {
    serialNumber = [(CRKDevice *)self serialNumber];
    [v6 setSerialNumber:serialNumber];

    trustedExchangeIdentifier = [(CRKDevice *)self trustedExchangeIdentifier];
    [v6 setTrustedExchangeIdentifier:trustedExchangeIdentifier];

    [v6 setPlatform:{-[CRKDevice platform](self, "platform")}];
    model = [(CRKDevice *)self model];
    [v6 setModel:model];

    name = [(CRKDevice *)self name];
    [v6 setName:name];

    systemName = [(CRKDevice *)self systemName];
    [v6 setSystemName:systemName];

    systemVersion = [(CRKDevice *)self systemVersion];
    [v6 setSystemVersion:systemVersion];

    buildVersion = [(CRKDevice *)self buildVersion];
    [v6 setBuildVersion:buildVersion];

    [v6 setSupervised:{-[CRKDevice isSupervised](self, "isSupervised")}];
    [v6 setEphemeralMultiUser:{-[CRKDevice isEphemeralMultiUser](self, "isEphemeralMultiUser")}];
    [(CRKDevice *)self batteryLevel];
    [v6 setBatteryLevel:?];
    [v6 setLowBattery:{-[CRKDevice isLowBattery](self, "isLowBattery")}];
    [v6 setChargingState:{-[CRKDevice chargingState](self, "chargingState")}];
    [v6 setLockState:{-[CRKDevice lockState](self, "lockState")}];
    [v6 setScreenState:{-[CRKDevice screenState](self, "screenState")}];
    [v6 setScreenSaverActive:{-[CRKDevice isScreenSaverActive](self, "isScreenSaverActive")}];
    [(CRKDevice *)self volume];
    [v6 setVolume:?];
    [v6 setMuted:{-[CRKDevice isMuted](self, "isMuted")}];
    [v6 setAvailableBytes:{-[CRKDevice availableBytes](self, "availableBytes")}];
    [v6 setDeviceOrientation:{-[CRKDevice deviceOrientation](self, "deviceOrientation")}];
    [v6 setInterfaceOrientation:{-[CRKDevice interfaceOrientation](self, "interfaceOrientation")}];
    displays = [(CRKDevice *)self displays];
    [v6 setDisplays:displays];

    [(CRKDevice *)self displayBackingScaleFactor];
    [v6 setDisplayBackingScaleFactor:?];
    [(CRKDevice *)self displayWidth];
    [v6 setDisplayWidth:?];
    [(CRKDevice *)self displayHeight];
    [v6 setDisplayHeight:?];
    primaryOpenApplication = [(CRKDevice *)self primaryOpenApplication];
    [v6 setPrimaryOpenApplication:primaryOpenApplication];

    secondaryOpenApplication = [(CRKDevice *)self secondaryOpenApplication];
    [v6 setSecondaryOpenApplication:secondaryOpenApplication];

    pipOpenApplication = [(CRKDevice *)self pipOpenApplication];
    [v6 setPipOpenApplication:pipOpenApplication];

    allOpenApplications = [(CRKDevice *)self allOpenApplications];
    [v6 setAllOpenApplications:allOpenApplications];

    [v6 setAppLocked:{-[CRKDevice isAppLocked](self, "isAppLocked")}];
    installedApplicationInfo = [(CRKDevice *)self installedApplicationInfo];
    [v6 setInstalledApplicationInfo:installedApplicationInfo];

    stagedAdHocIdentityCertificateFingerprint = [(CRKDevice *)self stagedAdHocIdentityCertificateFingerprint];
    [v6 setStagedAdHocIdentityCertificateFingerprint:stagedAdHocIdentityCertificateFingerprint];

    trustedAnchorCertificateFingerprints = [(CRKDevice *)self trustedAnchorCertificateFingerprints];
    [v6 setTrustedAnchorCertificateFingerprints:trustedAnchorCertificateFingerprints];

    userIdentifier = [(CRKDevice *)self userIdentifier];
    [v6 setUserIdentifier:userIdentifier];

    userDisplayName = [(CRKDevice *)self userDisplayName];
    [v6 setUserDisplayName:userDisplayName];

    userGivenName = [(CRKDevice *)self userGivenName];
    [v6 setUserGivenName:userGivenName];

    userFamilyName = [(CRKDevice *)self userFamilyName];
    [v6 setUserFamilyName:userFamilyName];

    userPhoneticGivenName = [(CRKDevice *)self userPhoneticGivenName];
    [v6 setUserPhoneticGivenName:userPhoneticGivenName];

    userPhoneticFamilyName = [(CRKDevice *)self userPhoneticFamilyName];
    [v6 setUserPhoneticFamilyName:userPhoneticFamilyName];

    userImageURL = [(CRKDevice *)self userImageURL];
    [v6 setUserImageURL:userImageURL];

    [v6 setLoginState:{-[CRKDevice loginState](self, "loginState")}];
    [v6 setPasscodeEnabled:{-[CRKDevice isPasscodeEnabled](self, "isPasscodeEnabled")}];
    studentImageIdentifier = [(CRKDevice *)self studentImageIdentifier];
    [v6 setStudentImageIdentifier:studentImageIdentifier];

    instructorImageIdentifier = [(CRKDevice *)self instructorImageIdentifier];
    [v6 setInstructorImageIdentifier:instructorImageIdentifier];

    [v6 setRequestingUnenroll:{-[CRKDevice isRequestingUnenroll](self, "isRequestingUnenroll")}];
    currentLocaleIdentifier = [(CRKDevice *)self currentLocaleIdentifier];
    [v6 setCurrentLocaleIdentifier:currentLocaleIdentifier];

    activeAirPlayRoute = [(CRKDevice *)self activeAirPlayRoute];
    [v6 setActiveAirPlayRoute:activeAirPlayRoute];

    availableAirPlayRoutes = [(CRKDevice *)self availableAirPlayRoutes];
    [v6 setAvailableAirPlayRoutes:availableAirPlayRoutes];

    managementLockPasscode = [(CRKDevice *)self managementLockPasscode];
    [v6 setManagementLockPasscode:managementLockPasscode];
  }

  return v6;
}

- (CRKDevice)initWithCoder:(id)coder
{
  v167[2] = *MEMORY[0x277D85DE8];
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
  if (v5)
  {
    v6 = [(CRKDevice *)self initWithIdentifier:v5];
    if (v6)
    {
      v166 = v5;
      v7 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
      v8 = [coderCopy decodeObjectOfClasses:v7 forKey:@"serialNumber"];
      serialNumber = v6->_serialNumber;
      v6->_serialNumber = v8;

      v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"platform"];
      v6->_platform = [v10 integerValue];

      v11 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
      v12 = [coderCopy decodeObjectOfClasses:v11 forKey:@"model"];
      model = v6->_model;
      v6->_model = v12;

      v14 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
      v15 = [coderCopy decodeObjectOfClasses:v14 forKey:@"name"];
      name = v6->_name;
      v6->_name = v15;

      v17 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
      v18 = [coderCopy decodeObjectOfClasses:v17 forKey:@"systemName"];
      systemName = v6->_systemName;
      v6->_systemName = v18;

      v20 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
      v21 = [coderCopy decodeObjectOfClasses:v20 forKey:@"systemVersion"];
      systemVersion = v6->_systemVersion;
      v6->_systemVersion = v21;

      v23 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
      v24 = [coderCopy decodeObjectOfClasses:v23 forKey:@"buildVersion"];
      buildVersion = v6->_buildVersion;
      v6->_buildVersion = v24;

      v26 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"supervised"];
      v6->_supervised = [v26 BOOLValue];

      v27 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"ephemeralMultiUser"];
      v6->_ephemeralMultiUser = [v27 BOOLValue];

      v28 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"batteryLevel"];
      [v28 doubleValue];
      *&v29 = v29;
      v6->_batteryLevel = *&v29;

      v30 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"lowBattery"];
      v6->_lowBattery = [v30 BOOLValue];

      v31 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"chargingState"];
      v6->_chargingState = [v31 integerValue];

      v32 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"lockState"];
      v6->_lockState = [v32 integerValue];

      v33 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"screenState"];
      v6->_screenState = [v33 integerValue];

      v34 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"screenSaverActive"];
      v6->_screenSaverActive = [v34 BOOLValue];

      v35 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"volume"];
      [v35 doubleValue];
      *&v36 = v36;
      v6->_volume = *&v36;

      v37 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"muted"];
      v6->_muted = [v37 BOOLValue];

      v38 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"availableBytes"];
      v6->_availableBytes = [v38 unsignedLongLongValue];

      v39 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"deviceOrientation"];
      v6->_deviceOrientation = [v39 integerValue];

      v40 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"interfaceOrientation"];
      v6->_interfaceOrientation = [v40 integerValue];

      v41 = MEMORY[0x277CBEB98];
      v42 = objc_opt_class();
      v43 = objc_opt_class();
      v44 = objc_opt_class();
      v45 = [v41 setWithObjects:{v42, v43, v44, objc_opt_class(), 0}];
      v46 = [coderCopy decodeObjectOfClasses:v45 forKey:@"displays"];
      displays = v6->_displays;
      v6->_displays = v46;

      v48 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"displayBackingScaleFactor"];
      [v48 doubleValue];
      *&v49 = v49;
      v6->_displayBackingScaleFactor = *&v49;

      v50 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"displayWidth"];
      [v50 doubleValue];
      *&v51 = v51;
      v6->_displayWidth = *&v51;

      v52 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"displayHeight"];
      [v52 doubleValue];
      *&v53 = v53;
      v6->_displayHeight = *&v53;

      v54 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
      v55 = [coderCopy decodeObjectOfClasses:v54 forKey:@"primaryOpenApplication"];
      primaryOpenApplication = v6->_primaryOpenApplication;
      v6->_primaryOpenApplication = v55;

      v57 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
      v58 = [coderCopy decodeObjectOfClasses:v57 forKey:@"secondaryOpenApplication"];
      secondaryOpenApplication = v6->_secondaryOpenApplication;
      v6->_secondaryOpenApplication = v58;

      v60 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
      v61 = [coderCopy decodeObjectOfClasses:v60 forKey:@"pipOpenApplication"];
      pipOpenApplication = v6->_pipOpenApplication;
      v6->_pipOpenApplication = v61;

      v63 = MEMORY[0x277CBEB98];
      v64 = objc_opt_class();
      v65 = [v63 setWithObjects:{v64, objc_opt_class(), 0}];
      v66 = [coderCopy decodeObjectOfClasses:v65 forKey:@"allOpenApplications"];
      allOpenApplications = v6->_allOpenApplications;
      v6->_allOpenApplications = v66;

      v68 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"appLocked"];
      v6->_appLocked = [v68 BOOLValue];

      if ([coderCopy containsValueForKey:@"installedApplicationInfo"])
      {
        v163 = MEMORY[0x277CBEB98];
        v160 = objc_opt_class();
        v157 = objc_opt_class();
        v154 = objc_opt_class();
        v69 = objc_opt_class();
        v70 = objc_opt_class();
        v71 = objc_opt_class();
        v72 = objc_opt_class();
        v73 = objc_opt_class();
        v74 = objc_opt_class();
        v75 = objc_opt_class();
        v76 = [v163 setWithObjects:{v160, v157, v154, v69, v70, v71, v72, v73, v74, v75, objc_opt_class(), 0}];
        v77 = [coderCopy decodeObjectOfClasses:v76 forKey:@"installedApplicationInfo"];
        installedApplicationInfo = v6->_installedApplicationInfo;
        v6->_installedApplicationInfo = v77;
      }

      if (!v6->_installedApplicationInfo)
      {
        v79 = MEMORY[0x277CBEB98];
        v167[0] = objc_opt_class();
        v167[1] = objc_opt_class();
        v80 = [MEMORY[0x277CBEA60] arrayWithObjects:v167 count:2];
        v81 = [v79 setWithArray:v80];
        v82 = [coderCopy decodeObjectOfClasses:v81 forKey:@"installedApplications"];

        v83 = [objc_opt_class() applicationInfoFromBundleIdentifiers:v82];
        v84 = v6->_installedApplicationInfo;
        v6->_installedApplicationInfo = v83;
      }

      v85 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
      v86 = [coderCopy decodeObjectOfClasses:v85 forKey:@"stagedAdHocIdentityCertificateFingerprint"];
      stagedAdHocIdentityCertificateFingerprint = v6->_stagedAdHocIdentityCertificateFingerprint;
      v6->_stagedAdHocIdentityCertificateFingerprint = v86;

      v88 = MEMORY[0x277CBEB98];
      v89 = objc_opt_class();
      v90 = [v88 setWithObjects:{v89, objc_opt_class(), 0}];
      v91 = [coderCopy decodeObjectOfClasses:v90 forKey:@"trustedAnchorCertificateFingerprints"];
      trustedAnchorCertificateFingerprints = v6->_trustedAnchorCertificateFingerprints;
      v6->_trustedAnchorCertificateFingerprints = v91;

      v93 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
      v94 = [coderCopy decodeObjectOfClasses:v93 forKey:@"userIdentifier"];
      userIdentifier = v6->_userIdentifier;
      v6->_userIdentifier = v94;

      v96 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
      v97 = [coderCopy decodeObjectOfClasses:v96 forKey:@"userDisplayName"];
      userDisplayName = v6->_userDisplayName;
      v6->_userDisplayName = v97;

      v99 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
      v100 = [coderCopy decodeObjectOfClasses:v99 forKey:@"userGivenName"];
      userGivenName = v6->_userGivenName;
      v6->_userGivenName = v100;

      v102 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
      v103 = [coderCopy decodeObjectOfClasses:v102 forKey:@"userFamilyName"];
      userFamilyName = v6->_userFamilyName;
      v6->_userFamilyName = v103;

      v105 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
      v106 = [coderCopy decodeObjectOfClasses:v105 forKey:@"userPhoneticGivenName"];
      userPhoneticGivenName = v6->_userPhoneticGivenName;
      v6->_userPhoneticGivenName = v106;

      v108 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
      v109 = [coderCopy decodeObjectOfClasses:v108 forKey:@"userPhoneticFamilyName"];
      userPhoneticFamilyName = v6->_userPhoneticFamilyName;
      v6->_userPhoneticFamilyName = v109;

      v111 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
      v112 = [coderCopy decodeObjectOfClasses:v111 forKey:@"userImageURL"];
      userImageURL = v6->_userImageURL;
      v6->_userImageURL = v112;

      v114 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"loginState"];
      v6->_loginState = [v114 integerValue];

      v115 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"passcodeEnabled"];
      v6->_passcodeEnabled = [v115 BOOLValue];

      v116 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
      v117 = [coderCopy decodeObjectOfClasses:v116 forKey:@"studentImageIdentifier"];
      studentImageIdentifier = v6->_studentImageIdentifier;
      v6->_studentImageIdentifier = v117;

      v119 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
      v120 = [coderCopy decodeObjectOfClasses:v119 forKey:@"instructorImageIdentifier"];
      instructorImageIdentifier = v6->_instructorImageIdentifier;
      v6->_instructorImageIdentifier = v120;

      v122 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"requestingUnenroll"];
      v6->_requestingUnenroll = [v122 BOOLValue];

      v123 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
      v124 = [coderCopy decodeObjectOfClasses:v123 forKey:@"currentLocaleIdentifier"];
      currentLocaleIdentifier = v6->_currentLocaleIdentifier;
      v6->_currentLocaleIdentifier = v124;

      v164 = MEMORY[0x277CBEB98];
      v161 = objc_opt_class();
      v158 = objc_opt_class();
      v155 = objc_opt_class();
      v126 = objc_opt_class();
      v127 = objc_opt_class();
      v128 = objc_opt_class();
      v129 = objc_opt_class();
      v130 = objc_opt_class();
      v131 = objc_opt_class();
      v132 = objc_opt_class();
      v133 = [v164 setWithObjects:{v161, v158, v155, v126, v127, v128, v129, v130, v131, v132, objc_opt_class(), 0}];
      v134 = [coderCopy decodeObjectOfClasses:v133 forKey:@"activeAirPlayRoute"];
      activeAirPlayRoute = v6->_activeAirPlayRoute;
      v6->_activeAirPlayRoute = v134;

      v165 = MEMORY[0x277CBEB98];
      v162 = objc_opt_class();
      v159 = objc_opt_class();
      v156 = objc_opt_class();
      v136 = objc_opt_class();
      v137 = objc_opt_class();
      v138 = objc_opt_class();
      v139 = objc_opt_class();
      v140 = objc_opt_class();
      v141 = objc_opt_class();
      v142 = objc_opt_class();
      v143 = [v165 setWithObjects:{v162, v159, v156, v136, v137, v138, v139, v140, v141, v142, objc_opt_class(), 0}];
      v144 = [coderCopy decodeObjectOfClasses:v143 forKey:@"availableAirPlayRoutes"];
      availableAirPlayRoutes = v6->_availableAirPlayRoutes;
      v6->_availableAirPlayRoutes = v144;

      v146 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
      v147 = [coderCopy decodeObjectOfClasses:v146 forKey:@"managementLockPasscode"];
      managementLockPasscode = v6->_managementLockPasscode;
      v6->_managementLockPasscode = v147;

      v149 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
      v150 = [coderCopy decodeObjectOfClasses:v149 forKey:@"trustedExchangeIdentifier"];
      trustedExchangeIdentifier = v6->_trustedExchangeIdentifier;
      v6->_trustedExchangeIdentifier = v150;

      v5 = v166;
    }

    self = v6;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  identifier = [(CRKDevice *)self identifier];
  [coderCopy encodeObject:identifier forKey:@"identifier"];

  serialNumber = [(CRKDevice *)self serialNumber];
  [coderCopy encodeObject:serialNumber forKey:@"serialNumber"];

  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[CRKDevice platform](self, "platform")}];
  [coderCopy encodeObject:v7 forKey:@"platform"];

  model = [(CRKDevice *)self model];
  [coderCopy encodeObject:model forKey:@"model"];

  name = [(CRKDevice *)self name];
  [coderCopy encodeObject:name forKey:@"name"];

  systemName = [(CRKDevice *)self systemName];
  [coderCopy encodeObject:systemName forKey:@"systemName"];

  systemVersion = [(CRKDevice *)self systemVersion];
  [coderCopy encodeObject:systemVersion forKey:@"systemVersion"];

  buildVersion = [(CRKDevice *)self buildVersion];
  [coderCopy encodeObject:buildVersion forKey:@"buildVersion"];

  v13 = [MEMORY[0x277CCABB0] numberWithBool:{-[CRKDevice isSupervised](self, "isSupervised")}];
  [coderCopy encodeObject:v13 forKey:@"supervised"];

  v14 = [MEMORY[0x277CCABB0] numberWithBool:{-[CRKDevice isEphemeralMultiUser](self, "isEphemeralMultiUser")}];
  [coderCopy encodeObject:v14 forKey:@"ephemeralMultiUser"];

  v15 = MEMORY[0x277CCABB0];
  [(CRKDevice *)self batteryLevel];
  v16 = [v15 numberWithFloat:?];
  [coderCopy encodeObject:v16 forKey:@"batteryLevel"];

  v17 = [MEMORY[0x277CCABB0] numberWithBool:{-[CRKDevice isLowBattery](self, "isLowBattery")}];
  [coderCopy encodeObject:v17 forKey:@"lowBattery"];

  v18 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[CRKDevice chargingState](self, "chargingState")}];
  [coderCopy encodeObject:v18 forKey:@"chargingState"];

  v19 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[CRKDevice lockState](self, "lockState")}];
  [coderCopy encodeObject:v19 forKey:@"lockState"];

  v20 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[CRKDevice screenState](self, "screenState")}];
  [coderCopy encodeObject:v20 forKey:@"screenState"];

  v21 = [MEMORY[0x277CCABB0] numberWithBool:{-[CRKDevice isScreenSaverActive](self, "isScreenSaverActive")}];
  [coderCopy encodeObject:v21 forKey:@"screenSaverActive"];

  v22 = MEMORY[0x277CCABB0];
  [(CRKDevice *)self volume];
  v23 = [v22 numberWithFloat:?];
  [coderCopy encodeObject:v23 forKey:@"volume"];

  v24 = [MEMORY[0x277CCABB0] numberWithBool:{-[CRKDevice isMuted](self, "isMuted")}];
  [coderCopy encodeObject:v24 forKey:@"muted"];

  v25 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{-[CRKDevice availableBytes](self, "availableBytes")}];
  [coderCopy encodeObject:v25 forKey:@"availableBytes"];

  v26 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[CRKDevice deviceOrientation](self, "deviceOrientation")}];
  [coderCopy encodeObject:v26 forKey:@"deviceOrientation"];

  v27 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[CRKDevice interfaceOrientation](self, "interfaceOrientation")}];
  [coderCopy encodeObject:v27 forKey:@"interfaceOrientation"];

  displays = [(CRKDevice *)self displays];
  [coderCopy encodeObject:displays forKey:@"displays"];

  v29 = MEMORY[0x277CCABB0];
  [(CRKDevice *)self displayBackingScaleFactor];
  v30 = [v29 numberWithFloat:?];
  [coderCopy encodeObject:v30 forKey:@"displayBackingScaleFactor"];

  v31 = MEMORY[0x277CCABB0];
  [(CRKDevice *)self displayWidth];
  v32 = [v31 numberWithFloat:?];
  [coderCopy encodeObject:v32 forKey:@"displayWidth"];

  v33 = MEMORY[0x277CCABB0];
  [(CRKDevice *)self displayHeight];
  v34 = [v33 numberWithFloat:?];
  [coderCopy encodeObject:v34 forKey:@"displayHeight"];

  primaryOpenApplication = [(CRKDevice *)self primaryOpenApplication];
  [coderCopy encodeObject:primaryOpenApplication forKey:@"primaryOpenApplication"];

  secondaryOpenApplication = [(CRKDevice *)self secondaryOpenApplication];
  [coderCopy encodeObject:secondaryOpenApplication forKey:@"secondaryOpenApplication"];

  pipOpenApplication = [(CRKDevice *)self pipOpenApplication];
  [coderCopy encodeObject:pipOpenApplication forKey:@"pipOpenApplication"];

  allOpenApplications = [(CRKDevice *)self allOpenApplications];
  [coderCopy encodeObject:allOpenApplications forKey:@"allOpenApplications"];

  v39 = [MEMORY[0x277CCABB0] numberWithBool:{-[CRKDevice isAppLocked](self, "isAppLocked")}];
  [coderCopy encodeObject:v39 forKey:@"appLocked"];

  installedApplications = [(CRKDevice *)self installedApplications];
  [coderCopy encodeObject:installedApplications forKey:@"installedApplications"];

  installedApplicationInfo = [(CRKDevice *)self installedApplicationInfo];
  [coderCopy encodeObject:installedApplicationInfo forKey:@"installedApplicationInfo"];

  stagedAdHocIdentityCertificateFingerprint = [(CRKDevice *)self stagedAdHocIdentityCertificateFingerprint];
  [coderCopy encodeObject:stagedAdHocIdentityCertificateFingerprint forKey:@"stagedAdHocIdentityCertificateFingerprint"];

  trustedAnchorCertificateFingerprints = [(CRKDevice *)self trustedAnchorCertificateFingerprints];
  [coderCopy encodeObject:trustedAnchorCertificateFingerprints forKey:@"trustedAnchorCertificateFingerprints"];

  userIdentifier = [(CRKDevice *)self userIdentifier];
  [coderCopy encodeObject:userIdentifier forKey:@"userIdentifier"];

  userDisplayName = [(CRKDevice *)self userDisplayName];
  [coderCopy encodeObject:userDisplayName forKey:@"userDisplayName"];

  userGivenName = [(CRKDevice *)self userGivenName];
  [coderCopy encodeObject:userGivenName forKey:@"userGivenName"];

  userFamilyName = [(CRKDevice *)self userFamilyName];
  [coderCopy encodeObject:userFamilyName forKey:@"userFamilyName"];

  userPhoneticGivenName = [(CRKDevice *)self userPhoneticGivenName];
  [coderCopy encodeObject:userPhoneticGivenName forKey:@"userPhoneticGivenName"];

  userPhoneticFamilyName = [(CRKDevice *)self userPhoneticFamilyName];
  [coderCopy encodeObject:userPhoneticFamilyName forKey:@"userPhoneticFamilyName"];

  userImageURL = [(CRKDevice *)self userImageURL];
  [coderCopy encodeObject:userImageURL forKey:@"userImageURL"];

  v51 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[CRKDevice loginState](self, "loginState")}];
  [coderCopy encodeObject:v51 forKey:@"loginState"];

  v52 = [MEMORY[0x277CCABB0] numberWithBool:{-[CRKDevice isPasscodeEnabled](self, "isPasscodeEnabled")}];
  [coderCopy encodeObject:v52 forKey:@"passcodeEnabled"];

  studentImageIdentifier = [(CRKDevice *)self studentImageIdentifier];
  [coderCopy encodeObject:studentImageIdentifier forKey:@"studentImageIdentifier"];

  instructorImageIdentifier = [(CRKDevice *)self instructorImageIdentifier];
  [coderCopy encodeObject:instructorImageIdentifier forKey:@"instructorImageIdentifier"];

  v55 = [MEMORY[0x277CCABB0] numberWithBool:{-[CRKDevice isRequestingUnenroll](self, "isRequestingUnenroll")}];
  [coderCopy encodeObject:v55 forKey:@"requestingUnenroll"];

  currentLocaleIdentifier = [(CRKDevice *)self currentLocaleIdentifier];
  [coderCopy encodeObject:currentLocaleIdentifier forKey:@"currentLocaleIdentifier"];

  activeAirPlayRoute = [(CRKDevice *)self activeAirPlayRoute];
  [coderCopy encodeObject:activeAirPlayRoute forKey:@"activeAirPlayRoute"];

  availableAirPlayRoutes = [(CRKDevice *)self availableAirPlayRoutes];
  [coderCopy encodeObject:availableAirPlayRoutes forKey:@"availableAirPlayRoutes"];

  managementLockPasscode = [(CRKDevice *)self managementLockPasscode];
  [coderCopy encodeObject:managementLockPasscode forKey:@"managementLockPasscode"];

  trustedExchangeIdentifier = [(CRKDevice *)self trustedExchangeIdentifier];
  [coderCopy encodeObject:trustedExchangeIdentifier forKey:@"trustedExchangeIdentifier"];
}

id __50__CRKDevice_applicationInfoFromBundleIdentifiers___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[CRKApplicationInfo alloc] initWithBundleIdentifier:v2 shortVersionString:0];

  v4 = [(CRKApplicationInfo *)v3 dictionaryRepresentation];

  return v4;
}

- (CRKDevice)initWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if (!identifierCopy)
  {
    [(CRKDevice(Private) *)a2 initWithIdentifier:?];
  }

  v10.receiver = self;
  v10.super_class = CRKDevice;
  v6 = [(CRKDevice *)&v10 init];
  if (v6)
  {
    v7 = [identifierCopy copy];
    identifier = v6->_identifier;
    v6->_identifier = v7;
  }

  return v6;
}

@end