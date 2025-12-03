@interface HFSymptomResultContextProvider
- (BOOL)contextSupportsNetworkDiagnostics;
- (BOOL)shouldDisplayManualFixOptionForSymptom:(id)symptom;
- (HFSymptomResultContextProvider)init;
- (HFSymptomResultContextProvider)initWithAccessory:(id)accessory mediaSystem:(id)system;
- (NSDate)lastSeenDate;
- (NSString)accessoryCategory;
- (NSString)accessoryName;
- (NSString)accessoryNetworkSSID;
- (NSString)currentAppleMusicAccountName;
- (NSString)currentUserID;
- (NSString)detailedErrorDescriptionForiCloudSymptom;
- (NSString)homeKitObjectName;
- (NSString)primaryResidentName;
- (NSUUID)accessoryUUID;
- (int64_t)fixStateForSymptom:(id)symptom;
- (unint64_t)lastSeenBatteryStatus;
@end

@implementation HFSymptomResultContextProvider

- (HFSymptomResultContextProvider)init
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  v5 = NSStringFromSelector(sel_initWithAccessory_mediaSystem_);
  [currentHandler handleFailureInMethod:a2 object:self file:@"HFErrorResultComponent.m" lineNumber:950 description:{@"%s is unavailable; use %@ instead", "-[HFSymptomResultContextProvider init]", v5}];

  return 0;
}

- (HFSymptomResultContextProvider)initWithAccessory:(id)accessory mediaSystem:(id)system
{
  accessoryCopy = accessory;
  systemCopy = system;
  v12.receiver = self;
  v12.super_class = HFSymptomResultContextProvider;
  v9 = [(HFSymptomResultContextProvider *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_accessory, accessory);
    objc_storeStrong(&v10->_mediaSystem, system);
  }

  return v10;
}

- (NSDate)lastSeenDate
{
  v22 = *MEMORY[0x277D85DE8];
  distantPast = [MEMORY[0x277CBEAA8] distantPast];
  accessory = [(HFSymptomResultContextProvider *)self accessory];

  if (accessory)
  {
    accessory2 = [(HFSymptomResultContextProvider *)self accessory];
    lastSeenStatus = [accessory2 lastSeenStatus];
    lastSeenDate = [lastSeenStatus lastSeenDate];

    v8 = HFLogForCategory(0);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      accessory3 = [(HFSymptomResultContextProvider *)self accessory];
      v16 = 138412546;
      selfCopy2 = lastSeenDate;
      v18 = 2112;
      v19 = accessory3;
      _os_log_impl(&dword_20D9BF000, v8, OS_LOG_TYPE_INFO, "HFSymptomResultContextProvider lastSeenDate: %@, for accessory: %@", &v16, 0x16u);
    }

    distantPast = lastSeenDate;
  }

  else
  {
    mediaSystem = [(HFSymptomResultContextProvider *)self mediaSystem];

    v8 = HFLogForCategory(0x3DuLL);
    v11 = os_log_type_enabled(v8, OS_LOG_TYPE_ERROR);
    if (mediaSystem)
    {
      if (v11)
      {
        mediaSystem2 = [(HFSymptomResultContextProvider *)self mediaSystem];
        v16 = 138412802;
        selfCopy2 = self;
        v18 = 2112;
        v19 = mediaSystem2;
        v20 = 2112;
        v21 = distantPast;
        _os_log_error_impl(&dword_20D9BF000, v8, OS_LOG_TYPE_ERROR, "No accessory found for HFSymptomResultContextProvider: %@. MediaSystem is present: %@. Using distant past: %@", &v16, 0x20u);
      }
    }

    else if (v11)
    {
      v16 = 138412546;
      selfCopy2 = self;
      v18 = 2112;
      v19 = distantPast;
      _os_log_error_impl(&dword_20D9BF000, v8, OS_LOG_TYPE_ERROR, "No accessory found for HFSymptomResultContextProvider: %@. Using distant past: %@", &v16, 0x16u);
    }
  }

  v13 = distantPast;
  v14 = *MEMORY[0x277D85DE8];
  return distantPast;
}

- (unint64_t)lastSeenBatteryStatus
{
  accessory = [(HFSymptomResultContextProvider *)self accessory];

  if (!accessory)
  {
    return 0;
  }

  accessory2 = [(HFSymptomResultContextProvider *)self accessory];
  lastSeenStatus = [accessory2 lastSeenStatus];
  lowBatteryStatus = [lastSeenStatus lowBatteryStatus];

  if (lowBatteryStatus == 2)
  {
    return 2;
  }

  else
  {
    return lowBatteryStatus == 1;
  }
}

- (NSUUID)accessoryUUID
{
  accessory = [(HFSymptomResultContextProvider *)self accessory];
  uniqueIdentifier = [accessory uniqueIdentifier];

  return uniqueIdentifier;
}

- (NSString)primaryResidentName
{
  accessory = [(HFSymptomResultContextProvider *)self accessory];
  home = [accessory home];
  hf_primaryResidentDevice = [home hf_primaryResidentDevice];
  name = [hf_primaryResidentDevice name];

  return name;
}

- (NSString)accessoryName
{
  accessory = [(HFSymptomResultContextProvider *)self accessory];
  name = [accessory name];

  return name;
}

- (NSString)accessoryCategory
{
  accessory = [(HFSymptomResultContextProvider *)self accessory];
  category = [accessory category];
  localizedDescription = [category localizedDescription];

  return localizedDescription;
}

- (NSString)homeKitObjectName
{
  mediaSystem = [(HFSymptomResultContextProvider *)self mediaSystem];
  name = [mediaSystem name];
  v5 = name;
  if (name)
  {
    name2 = name;
  }

  else
  {
    accessory = [(HFSymptomResultContextProvider *)self accessory];
    name2 = [accessory name];
  }

  return name2;
}

- (NSString)accessoryNetworkSSID
{
  accessory = [(HFSymptomResultContextProvider *)self accessory];
  wifiNetworkInfo = [accessory wifiNetworkInfo];
  sSID = [wifiNetworkInfo SSID];

  return sSID;
}

- (NSString)currentUserID
{
  accessory = [(HFSymptomResultContextProvider *)self accessory];
  home = [accessory home];
  currentUser = [home currentUser];
  userID = [currentUser userID];

  return userID;
}

- (NSString)currentAppleMusicAccountName
{
  accessory = [(HFSymptomResultContextProvider *)self accessory];
  mediaProfile = [accessory mediaProfile];
  hf_appleMusicCurrentLoggedInAccount = [mediaProfile hf_appleMusicCurrentLoggedInAccount];

  username = [hf_appleMusicCurrentLoggedInAccount username];

  return username;
}

- (BOOL)contextSupportsNetworkDiagnostics
{
  accessory = [(HFSymptomResultContextProvider *)self accessory];
  if ([accessory hf_isHomePod])
  {
    v4 = 1;
  }

  else
  {
    mediaSystem = [(HFSymptomResultContextProvider *)self mediaSystem];
    v4 = mediaSystem != 0;
  }

  return v4;
}

- (BOOL)shouldDisplayManualFixOptionForSymptom:(id)symptom
{
  symptomCopy = symptom;
  accessory = [(HFSymptomResultContextProvider *)self accessory];
  type = [symptomCopy type];

  LOBYTE(symptomCopy) = [accessory hf_shouldDisplayManualFixOptionForSymptom:type];
  return symptomCopy;
}

- (NSString)detailedErrorDescriptionForiCloudSymptom
{
  accessory = [(HFSymptomResultContextProvider *)self accessory];
  hf_isHomePod = [accessory hf_isHomePod];

  if (hf_isHomePod)
  {
    v5 = @"HFSymptomLongDescriptionNeediCloudCredential_HomePod";
  }

  else
  {
    accessory2 = [(HFSymptomResultContextProvider *)self accessory];
    hf_isAppleTV = [accessory2 hf_isAppleTV];

    if (hf_isAppleTV)
    {
      v5 = @"HFSymptomLongDescriptionNeediCloudCredential_AppleTV";
    }

    else
    {
      v5 = @"HFSymptomLongDescriptionNeediCloudCredential_Accessory";
    }
  }

  v8 = _HFLocalizedStringWithDefaultValue(v5, v5, 1);

  return v8;
}

- (int64_t)fixStateForSymptom:(id)symptom
{
  symptomCopy = symptom;
  v5 = +[HFSymptomFixManager sharedManager];
  accessory = [(HFSymptomResultContextProvider *)self accessory];
  v7 = [v5 fixStateForSymptom:symptomCopy accessory:accessory];

  return v7;
}

@end