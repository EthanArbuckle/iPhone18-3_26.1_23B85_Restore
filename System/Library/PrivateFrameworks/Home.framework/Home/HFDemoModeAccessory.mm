@interface HFDemoModeAccessory
+ (BOOL)_hasValidKeys:(id)keys;
+ (id)_demoModeAccessoryTypeToHomeKitAccessoryType;
+ (id)accessoryWithContentsOfDictionary:(id)dictionary forHome:(id)home;
- (BOOL)_isAppleInternalAccessory;
- (BOOL)_shouldShowAppleInternalManufacturerInfo;
- (BOOL)hf_effectiveIsFavorite;
- (BOOL)hf_hasSetFavorite;
- (BOOL)hf_isFavorite;
- (BOOL)hf_isMediaAccessory;
- (HFDemoModeAccessory)initWithContentsOfDictionary:(id)dictionary forHome:(id)home;
- (HFServiceNameComponents)hf_serviceNameComponents;
- (NSString)description;
- (NSString)firmwareVersion;
- (NSString)manufacturer;
- (NSString)model;
- (NSUUID)uniqueIdentifier;
- (id)category;
- (id)copyWithZone:(_NSZone *)zone;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (id)name;
- (id)room;
- (id)serialNumber;
- (int64_t)certificationStatus;
- (void)_updateManufacturerInfoWithString:(id)string forKey:(id)key;
@end

@implementation HFDemoModeAccessory

+ (id)accessoryWithContentsOfDictionary:(id)dictionary forHome:(id)home
{
  homeCopy = home;
  dictionaryCopy = dictionary;
  v7 = [[HFDemoModeAccessory alloc] initWithContentsOfDictionary:dictionaryCopy forHome:homeCopy];

  return v7;
}

+ (BOOL)_hasValidKeys:(id)keys
{
  v19[3] = *MEMORY[0x277D85DE8];
  keysCopy = keys;
  v19[0] = @"name";
  v19[1] = @"type";
  v19[2] = @"room";
  [MEMORY[0x277CBEA60] arrayWithObjects:v19 count:3];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = v17 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v15;
    v8 = 1;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v10 = [keysCopy objectForKeyedSubscript:{*(*(&v14 + 1) + 8 * i), v14}];
        v11 = v10 != 0;

        v8 &= v11;
      }

      v6 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v6);
  }

  else
  {
    v8 = 1;
  }

  v12 = *MEMORY[0x277D85DE8];
  return v8;
}

- (NSUUID)uniqueIdentifier
{
  internalUniqueIdentifier = self->_internalUniqueIdentifier;
  if (!internalUniqueIdentifier)
  {
    applicationData = [(HFDemoModeAccessory *)self applicationData];
    v5 = [applicationData objectForKeyedSubscript:@"UUID"];

    if (v5)
    {
      v6 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:v5];
      uUIDString = self->_internalUniqueIdentifier;
      self->_internalUniqueIdentifier = v6;
    }

    else
    {
      v8 = objc_alloc_init(MEMORY[0x277CCAD78]);
      v9 = self->_internalUniqueIdentifier;
      self->_internalUniqueIdentifier = v8;

      uUIDString = [(NSUUID *)self->_internalUniqueIdentifier UUIDString];
      applicationData2 = [(HFDemoModeAccessory *)self applicationData];
      [applicationData2 setObject:uUIDString forKeyedSubscript:@"UUID"];
    }

    internalUniqueIdentifier = self->_internalUniqueIdentifier;
  }

  return internalUniqueIdentifier;
}

- (NSString)firmwareVersion
{
  applicationData = [(HFDemoModeAccessory *)self applicationData];
  v3 = [applicationData objectForKeyedSubscript:@"manufacturerInfo"];

  v4 = [v3 objectForKeyedSubscript:@"firmware"];

  return v4;
}

- (NSString)manufacturer
{
  applicationData = [(HFDemoModeAccessory *)self applicationData];
  v3 = [applicationData objectForKeyedSubscript:@"manufacturerInfo"];

  v4 = [v3 objectForKeyedSubscript:@"name"];

  return v4;
}

- (NSString)model
{
  applicationData = [(HFDemoModeAccessory *)self applicationData];
  v4 = [applicationData objectForKeyedSubscript:@"manufacturerInfo"];

  v5 = [v4 objectForKeyedSubscript:@"model"];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else if ([(HFDemoModeAccessory *)self _isAppleInternalAccessory]&& [(HFDemoModeAccessory *)self _shouldShowAppleInternalManufacturerInfo])
  {
    uniqueIdentifier = [(HFDemoModeAccessory *)self uniqueIdentifier];
    uUIDString = [uniqueIdentifier UUIDString];

    v10 = [uUIDString substringWithRange:{objc_msgSend(uUIDString, "length") - 7, 7}];
    v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"993-%@/A", v10];
    [(HFDemoModeAccessory *)self _updateManufacturerInfoWithString:v7 forKey:@"model"];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)serialNumber
{
  applicationData = [(HFDemoModeAccessory *)self applicationData];
  v4 = [applicationData objectForKeyedSubscript:@"manufacturerInfo"];

  v5 = [v4 objectForKeyedSubscript:@"serialNumber"];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else if ([(HFDemoModeAccessory *)self _isAppleInternalAccessory]&& [(HFDemoModeAccessory *)self _shouldShowAppleInternalManufacturerInfo])
  {
    uniqueIdentifier = [(HFDemoModeAccessory *)self uniqueIdentifier];
    uUIDString = [uniqueIdentifier UUIDString];
    v10 = [uUIDString stringByReplacingOccurrencesOfString:@"-" withString:&stru_2824B1A78];

    v7 = [v10 substringWithRange:{0, 12}];
    [(HFDemoModeAccessory *)self _updateManufacturerInfoWithString:v7 forKey:@"serialNumber"];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)room
{
  v3 = +[HFHomeKitDispatcher sharedDispatcher];
  home = [v3 home];

  rooms = [home rooms];
  v6 = MEMORY[0x277CCAC30];
  applicationData = [(HFDemoModeAccessory *)self applicationData];
  v8 = [applicationData objectForKeyedSubscript:@"room"];
  v9 = [v6 predicateWithFormat:@"name = %@", v8];

  v10 = [rooms filteredArrayUsingPredicate:v9];

  if ([v10 count] == 1)
  {
    [v10 objectAtIndexedSubscript:0];
  }

  else
  {
    [home roomForEntireHome];
  }
  v11 = ;

  return v11;
}

- (id)name
{
  hf_serviceNameComponents = [(HFDemoModeAccessory *)self hf_serviceNameComponents];
  serviceName = [hf_serviceNameComponents serviceName];

  return serviceName;
}

- (id)category
{
  applicationData = [(HFDemoModeAccessory *)self applicationData];
  v4 = [applicationData objectForKeyedSubscript:@"type"];
  v5 = v4;
  v6 = @"Other";
  if (v4)
  {
    v6 = v4;
  }

  v7 = v6;

  _demoModeAccessoryTypeToHomeKitAccessoryType = [objc_opt_class() _demoModeAccessoryTypeToHomeKitAccessoryType];
  applicationData2 = [(HFDemoModeAccessory *)self applicationData];
  v10 = [applicationData2 objectForKeyedSubscript:@"type"];
  v11 = [_demoModeAccessoryTypeToHomeKitAccessoryType objectForKeyedSubscript:v10];
  v12 = v11;
  v13 = *MEMORY[0x277CCE8C8];
  if (v11)
  {
    v13 = v11;
  }

  v14 = v13;

  v15 = [objc_alloc(MEMORY[0x277CD1680]) initWithType:v14 name:v7];

  return v15;
}

- (int64_t)certificationStatus
{
  if ([(HFDemoModeAccessory *)self isInternallyCertified])
  {
    return 2;
  }

  else
  {
    return 1;
  }
}

- (BOOL)hf_isMediaAccessory
{
  if ([(HMAccessory *)self hf_isHomePod])
  {
    return 1;
  }

  return [(HMAccessory *)self hf_isAppleTV];
}

- (BOOL)hf_isFavorite
{
  applicationData = [(HFDemoModeAccessory *)self applicationData];
  v3 = [applicationData objectForKeyedSubscript:@"HFApplicationDataAccessoryIsFavoriteKey"];
  bOOLValue = [v3 BOOLValue];

  return bOOLValue;
}

- (BOOL)hf_hasSetFavorite
{
  applicationData = [(HFDemoModeAccessory *)self applicationData];
  v3 = [applicationData objectForKeyedSubscript:@"HFApplicationDataAccessoryIsFavoriteKey"];
  v4 = v3 != 0;

  return v4;
}

- (BOOL)hf_effectiveIsFavorite
{
  if ([(HFDemoModeAccessory *)self hf_isFavorite])
  {
    return 1;
  }

  else
  {
    return ![(HFDemoModeAccessory *)self hf_hasSetFavorite];
  }
}

- (HFServiceNameComponents)hf_serviceNameComponents
{
  applicationData = [(HFDemoModeAccessory *)self applicationData];
  v4 = [applicationData objectForKeyedSubscript:@"name"];

  applicationData2 = [(HFDemoModeAccessory *)self applicationData];
  v6 = [applicationData2 objectForKeyedSubscript:@"room"];

  v7 = [[HFServiceNameComponents alloc] initWithRawServiceName:v4 rawRoomName:v6];

  return v7;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [HFDemoModeAccessory alloc];
  applicationData = [(HFDemoModeAccessory *)self applicationData];
  dictionary = [applicationData dictionary];
  home = [(HFDemoModeAccessory *)self home];
  v8 = [(HFDemoModeAccessory *)v4 initWithContentsOfDictionary:dictionary forHome:home];

  return v8;
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v4 = [HFDemoModeAccessory alloc];
  applicationData = [(HFDemoModeAccessory *)self applicationData];
  dictionary = [applicationData dictionary];
  home = [(HFDemoModeAccessory *)self home];
  v8 = [(HFDemoModeAccessory *)v4 initWithContentsOfDictionary:dictionary forHome:home];

  return v8;
}

- (HFDemoModeAccessory)initWithContentsOfDictionary:(id)dictionary forHome:(id)home
{
  dictionaryCopy = dictionary;
  homeCopy = home;
  if ([objc_opt_class() _hasValidKeys:dictionaryCopy])
  {
    v16.receiver = self;
    v16.super_class = HFDemoModeAccessory;
    v8 = [(HFDemoModeAccessory *)&v16 init];
    v9 = v8;
    if (v8)
    {
      v14[0] = MEMORY[0x277D85DD0];
      v14[1] = 3221225472;
      v14[2] = __60__HFDemoModeAccessory_initWithContentsOfDictionary_forHome___block_invoke;
      v14[3] = &unk_277DFDD58;
      v10 = v8;
      v15 = v10;
      [dictionaryCopy enumerateKeysAndObjectsUsingBlock:v14];
      objc_storeStrong(v10 + 86, home);
      v11 = [dictionaryCopy objectForKeyedSubscript:@"type"];
      if ([HFDemoModeAccessoryManager isInternalAccessoryType:v11])
      {
        [v10 setIsInternallyCertified:1];
      }
    }

    self = v9;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

void __60__HFDemoModeAccessory_initWithContentsOfDictionary_forHome___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a3;
  v6 = a2;
  v7 = [v4 applicationData];
  [v7 setObject:v5 forKey:v6];
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  name = [(HFDemoModeAccessory *)self name];
  uniqueIdentifier = [(HFDemoModeAccessory *)self uniqueIdentifier];
  uUIDString = [uniqueIdentifier UUIDString];
  isReachable = [(HFDemoModeAccessory *)self isReachable];
  v9 = @"NO";
  if (isReachable)
  {
    v9 = @"YES";
  }

  v10 = [v3 stringWithFormat:@"<%@, Name = %@, Identifier = %@, Reachable = %@>", v4, name, uUIDString, v9];

  return v10;
}

+ (id)_demoModeAccessoryTypeToHomeKitAccessoryType
{
  if (_MergedGlobals_2_2 != -1)
  {
    dispatch_once(&_MergedGlobals_2_2, &__block_literal_global_54_3);
  }

  v3 = qword_280E025E8;

  return v3;
}

void __67__HFDemoModeAccessory__demoModeAccessoryTypeToHomeKitAccessoryType__block_invoke_2()
{
  v6[5] = *MEMORY[0x277D85DE8];
  v0 = *MEMORY[0x277CCE870];
  v5[0] = @"AppleTV";
  v5[1] = @"HomePod";
  v1 = *MEMORY[0x277CCE8B0];
  v6[0] = v0;
  v6[1] = v1;
  v5[2] = @"HomePodMini";
  v5[3] = @"MediaSystem-HomePod";
  v6[2] = v1;
  v6[3] = v1;
  v5[4] = @"MediaSystem-HomePodMini";
  v6[4] = v1;
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v6 forKeys:v5 count:5];
  v3 = qword_280E025E8;
  qword_280E025E8 = v2;

  v4 = *MEMORY[0x277D85DE8];
}

- (void)_updateManufacturerInfoWithString:(id)string forKey:(id)key
{
  keyCopy = key;
  stringCopy = string;
  applicationData = [(HFDemoModeAccessory *)self applicationData];
  v11 = [applicationData objectForKeyedSubscript:@"manufacturerInfo"];

  v9 = [MEMORY[0x277CBEB38] dictionaryWithDictionary:v11];
  [v9 setObject:stringCopy forKeyedSubscript:keyCopy];

  applicationData2 = [(HFDemoModeAccessory *)self applicationData];
  [applicationData2 setObject:v9 forKeyedSubscript:@"manufacturerInfo"];
}

- (BOOL)_isAppleInternalAccessory
{
  applicationData = [(HFDemoModeAccessory *)self applicationData];
  v3 = [applicationData objectForKeyedSubscript:@"type"];

  v4 = v3 && (([v3 isEqualToString:@"HomePod"] & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", @"HomePodMini") & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", @"MediaSystem-HomePod") & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", @"MediaSystem-HomePodMini") & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", @"AppleTV") & 1) != 0);
  return v4;
}

- (BOOL)_shouldShowAppleInternalManufacturerInfo
{
  applicationData = [(HFDemoModeAccessory *)self applicationData];
  v4 = [applicationData objectForKeyedSubscript:@"type"];
  if ([v4 isEqualToString:@"MediaSystem-HomePod"])
  {
    applicationData2 = [(HFDemoModeAccessory *)self applicationData];
    v6 = [applicationData2 objectForKeyedSubscript:@"type"];
    v7 = [v6 isEqualToString:@"MediaSystem-HomePodMini"] ^ 1;
  }

  else
  {
    LOBYTE(v7) = 1;
  }

  return v7;
}

@end