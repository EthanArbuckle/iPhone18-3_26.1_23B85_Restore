@interface HFSymptomResultContextProvider
- (BOOL)contextSupportsNetworkDiagnostics;
- (BOOL)shouldDisplayManualFixOptionForSymptom:(id)a3;
- (HFSymptomResultContextProvider)init;
- (HFSymptomResultContextProvider)initWithAccessory:(id)a3 mediaSystem:(id)a4;
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
- (int64_t)fixStateForSymptom:(id)a3;
- (unint64_t)lastSeenBatteryStatus;
@end

@implementation HFSymptomResultContextProvider

- (HFSymptomResultContextProvider)init
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  v5 = NSStringFromSelector(sel_initWithAccessory_mediaSystem_);
  [v4 handleFailureInMethod:a2 object:self file:@"HFErrorResultComponent.m" lineNumber:950 description:{@"%s is unavailable; use %@ instead", "-[HFSymptomResultContextProvider init]", v5}];

  return 0;
}

- (HFSymptomResultContextProvider)initWithAccessory:(id)a3 mediaSystem:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = HFSymptomResultContextProvider;
  v9 = [(HFSymptomResultContextProvider *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_accessory, a3);
    objc_storeStrong(&v10->_mediaSystem, a4);
  }

  return v10;
}

- (NSDate)lastSeenDate
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEAA8] distantPast];
  v4 = [(HFSymptomResultContextProvider *)self accessory];

  if (v4)
  {
    v5 = [(HFSymptomResultContextProvider *)self accessory];
    v6 = [v5 lastSeenStatus];
    v7 = [v6 lastSeenDate];

    v8 = HFLogForCategory(0);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = [(HFSymptomResultContextProvider *)self accessory];
      v16 = 138412546;
      v17 = v7;
      v18 = 2112;
      v19 = v9;
      _os_log_impl(&dword_20D9BF000, v8, OS_LOG_TYPE_INFO, "HFSymptomResultContextProvider lastSeenDate: %@, for accessory: %@", &v16, 0x16u);
    }

    v3 = v7;
  }

  else
  {
    v10 = [(HFSymptomResultContextProvider *)self mediaSystem];

    v8 = HFLogForCategory(0x3DuLL);
    v11 = os_log_type_enabled(v8, OS_LOG_TYPE_ERROR);
    if (v10)
    {
      if (v11)
      {
        v12 = [(HFSymptomResultContextProvider *)self mediaSystem];
        v16 = 138412802;
        v17 = self;
        v18 = 2112;
        v19 = v12;
        v20 = 2112;
        v21 = v3;
        _os_log_error_impl(&dword_20D9BF000, v8, OS_LOG_TYPE_ERROR, "No accessory found for HFSymptomResultContextProvider: %@. MediaSystem is present: %@. Using distant past: %@", &v16, 0x20u);
      }
    }

    else if (v11)
    {
      v16 = 138412546;
      v17 = self;
      v18 = 2112;
      v19 = v3;
      _os_log_error_impl(&dword_20D9BF000, v8, OS_LOG_TYPE_ERROR, "No accessory found for HFSymptomResultContextProvider: %@. Using distant past: %@", &v16, 0x16u);
    }
  }

  v13 = v3;
  v14 = *MEMORY[0x277D85DE8];
  return v3;
}

- (unint64_t)lastSeenBatteryStatus
{
  v3 = [(HFSymptomResultContextProvider *)self accessory];

  if (!v3)
  {
    return 0;
  }

  v4 = [(HFSymptomResultContextProvider *)self accessory];
  v5 = [v4 lastSeenStatus];
  v6 = [v5 lowBatteryStatus];

  if (v6 == 2)
  {
    return 2;
  }

  else
  {
    return v6 == 1;
  }
}

- (NSUUID)accessoryUUID
{
  v2 = [(HFSymptomResultContextProvider *)self accessory];
  v3 = [v2 uniqueIdentifier];

  return v3;
}

- (NSString)primaryResidentName
{
  v2 = [(HFSymptomResultContextProvider *)self accessory];
  v3 = [v2 home];
  v4 = [v3 hf_primaryResidentDevice];
  v5 = [v4 name];

  return v5;
}

- (NSString)accessoryName
{
  v2 = [(HFSymptomResultContextProvider *)self accessory];
  v3 = [v2 name];

  return v3;
}

- (NSString)accessoryCategory
{
  v2 = [(HFSymptomResultContextProvider *)self accessory];
  v3 = [v2 category];
  v4 = [v3 localizedDescription];

  return v4;
}

- (NSString)homeKitObjectName
{
  v3 = [(HFSymptomResultContextProvider *)self mediaSystem];
  v4 = [v3 name];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v7 = [(HFSymptomResultContextProvider *)self accessory];
    v6 = [v7 name];
  }

  return v6;
}

- (NSString)accessoryNetworkSSID
{
  v2 = [(HFSymptomResultContextProvider *)self accessory];
  v3 = [v2 wifiNetworkInfo];
  v4 = [v3 SSID];

  return v4;
}

- (NSString)currentUserID
{
  v2 = [(HFSymptomResultContextProvider *)self accessory];
  v3 = [v2 home];
  v4 = [v3 currentUser];
  v5 = [v4 userID];

  return v5;
}

- (NSString)currentAppleMusicAccountName
{
  v2 = [(HFSymptomResultContextProvider *)self accessory];
  v3 = [v2 mediaProfile];
  v4 = [v3 hf_appleMusicCurrentLoggedInAccount];

  v5 = [v4 username];

  return v5;
}

- (BOOL)contextSupportsNetworkDiagnostics
{
  v3 = [(HFSymptomResultContextProvider *)self accessory];
  if ([v3 hf_isHomePod])
  {
    v4 = 1;
  }

  else
  {
    v5 = [(HFSymptomResultContextProvider *)self mediaSystem];
    v4 = v5 != 0;
  }

  return v4;
}

- (BOOL)shouldDisplayManualFixOptionForSymptom:(id)a3
{
  v4 = a3;
  v5 = [(HFSymptomResultContextProvider *)self accessory];
  v6 = [v4 type];

  LOBYTE(v4) = [v5 hf_shouldDisplayManualFixOptionForSymptom:v6];
  return v4;
}

- (NSString)detailedErrorDescriptionForiCloudSymptom
{
  v3 = [(HFSymptomResultContextProvider *)self accessory];
  v4 = [v3 hf_isHomePod];

  if (v4)
  {
    v5 = @"HFSymptomLongDescriptionNeediCloudCredential_HomePod";
  }

  else
  {
    v6 = [(HFSymptomResultContextProvider *)self accessory];
    v7 = [v6 hf_isAppleTV];

    if (v7)
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

- (int64_t)fixStateForSymptom:(id)a3
{
  v4 = a3;
  v5 = +[HFSymptomFixManager sharedManager];
  v6 = [(HFSymptomResultContextProvider *)self accessory];
  v7 = [v5 fixStateForSymptom:v4 accessory:v6];

  return v7;
}

@end