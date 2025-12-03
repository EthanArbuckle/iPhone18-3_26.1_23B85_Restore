@interface HMDBulletinCategory
+ (BOOL)isSecureServiceType:(id)type;
+ (BOOL)isSensorDetectedCharacteristic:(id)characteristic;
+ (NSDictionary)targetCurrentCharacteristicTypeMap;
+ (id)_enumerationValueLocalizationKeys;
+ (id)_localizedStateForValue:(id)value characteristicType:(id)type;
+ (id)_presentationTypeForType:(id)type;
+ (id)_secureStateMap;
+ (id)_sensorMap;
+ (id)bulletinReasonForChangedCharacteristic:(id)characteristic;
+ (id)composedNameForCharacteristic:(id)characteristic;
+ (id)localizedActionForCharacteristic:(id)characteristic;
+ (id)localizedStateForCharacteristic:(id)characteristic doorbellBulletinUtilities:(id)utilities;
+ (id)presentationValueForValue:(id)value type:(id)type;
+ (id)trimLeadingAndTailingDotInName:(id)name;
+ (id)trimLeadingAndTailingSpacesInName:(id)name;
@end

@implementation HMDBulletinCategory

+ (id)presentationValueForValue:(id)value type:(id)type
{
  valueCopy = value;
  typeCopy = type;
  v8 = [self _presentationTypeForType:typeCopy];
  if (([typeCopy isEqualToString:*MEMORY[0x277CFE6B8]] & 1) != 0 || objc_msgSend(typeCopy, "isEqualToString:", *MEMORY[0x277CFE688]))
  {
    _secureStateMap = [self _secureStateMap];
    v10 = [_secureStateMap objectForKeyedSubscript:v8];
    v11 = v10;
    v12 = 1;
    goto LABEL_4;
  }

  if (([typeCopy isEqualToString:*MEMORY[0x277CFE610]] & 1) != 0 || objc_msgSend(typeCopy, "isEqualToString:", *MEMORY[0x277CFE738]))
  {
    integerValue = [valueCopy integerValue];
    v15 = &unk_283E72FC8;
    if (!integerValue)
    {
      v15 = &unk_283E72FB0;
    }

    v16 = v15;
  }

  else
  {
    if (([typeCopy isEqualToString:*MEMORY[0x277CFE620]] & 1) == 0 && (objc_msgSend(typeCopy, "isEqualToString:", *MEMORY[0x277CFE660]) & 1) == 0 && (objc_msgSend(typeCopy, "isEqualToString:", *MEMORY[0x277CFE678]) & 1) == 0 && !objc_msgSend(typeCopy, "isEqualToString:", *MEMORY[0x277CFE608]))
    {
      v18 = +[HMDBulletinCategory _secureStateMap];
      _secureStateMap = [v18 objectForKeyedSubscript:v8];

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v13 = 0;
        goto LABEL_5;
      }

      v11 = [_secureStateMap objectAtIndexedSubscript:0];
      v12 = [v11 isEqualToNumber:valueCopy] ^ 1;
      v10 = _secureStateMap;
LABEL_4:
      v13 = [v10 objectAtIndexedSubscript:v12];

LABEL_5:
      goto LABEL_17;
    }

    v16 = valueCopy;
  }

  v13 = v16;
LABEL_17:

  return v13;
}

+ (id)_presentationTypeForType:(id)type
{
  typeCopy = type;
  if (([typeCopy isEqualToString:*MEMORY[0x277CFE6B8]] & 1) != 0 || (objc_msgSend(typeCopy, "isEqualToString:", *MEMORY[0x277CFE688]) & 1) != 0 || (v4 = typeCopy, objc_msgSend(typeCopy, "isEqualToString:", *MEMORY[0x277CFE610])))
  {
    v4 = *MEMORY[0x277CFE5E8];
  }

  v5 = v4;

  return v4;
}

+ (id)_localizedStateForValue:(id)value characteristicType:(id)type
{
  v26 = *MEMORY[0x277D85DE8];
  valueCopy = value;
  typeCopy = type;
  if ([typeCopy isEqualToString:*MEMORY[0x277CFE610]])
  {
    v7 = HMDLocalizedStringForKey(@"BULLETIN_CATEGORY_STATE_UNKNOWN");
  }

  else
  {
    v8 = objc_autoreleasePoolPush();
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = HMFGetLogIdentifier();
      v20 = 138543874;
      v21 = v10;
      v22 = 2112;
      v23 = typeCopy;
      v24 = 2112;
      v25 = valueCopy;
      _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_INFO, "%{public}@type : %@ value = %@", &v20, 0x20u);
    }

    objc_autoreleasePoolPop(v8);
    v11 = +[HMDBulletinCategory _enumerationValueLocalizationKeys];
    v12 = [v11 objectForKeyedSubscript:typeCopy];

    if (v12 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && (v13 = [valueCopy integerValue], v13 < objc_msgSend(v12, "count")))
    {
      v14 = [v12 objectAtIndexedSubscript:v13];
    }

    else
    {
      v14 = 0;
    }

    v15 = HMDLocalizedStringForKey(v14);
    v16 = v15;
    if (v15)
    {
      v17 = v15;
    }

    else
    {
      v17 = HMDLocalizedStringForKey(@"BULLETIN_CATEGORY_STATE_UNKNOWN");
    }

    v7 = v17;
  }

  v18 = *MEMORY[0x277D85DE8];

  return v7;
}

+ (NSDictionary)targetCurrentCharacteristicTypeMap
{
  if (targetCurrentCharacteristicTypeMap_onceToken != -1)
  {
    dispatch_once(&targetCurrentCharacteristicTypeMap_onceToken, &__block_literal_global_130);
  }

  v3 = targetCurrentCharacteristicTypeMap_targetCurrentCharacteristicTypeMap;

  return v3;
}

void __57__HMDBulletinCategory_targetCurrentCharacteristicTypeMap__block_invoke()
{
  v9[4] = *MEMORY[0x277D85DE8];
  v0 = *MEMORY[0x277CFE5E8];
  v1 = *MEMORY[0x277CFE730];
  v8[0] = *MEMORY[0x277CFE710];
  v8[1] = v1;
  v2 = *MEMORY[0x277CFE608];
  v9[0] = v0;
  v9[1] = v2;
  v3 = *MEMORY[0x277CFE748];
  v8[2] = *MEMORY[0x277CFE738];
  v8[3] = v3;
  v4 = *MEMORY[0x277CFE620];
  v9[2] = *MEMORY[0x277CFE610];
  v9[3] = v4;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:v8 count:4];
  v6 = targetCurrentCharacteristicTypeMap_targetCurrentCharacteristicTypeMap;
  targetCurrentCharacteristicTypeMap_targetCurrentCharacteristicTypeMap = v5;

  v7 = *MEMORY[0x277D85DE8];
}

+ (id)bulletinReasonForChangedCharacteristic:(id)characteristic
{
  characteristicCopy = characteristic;
  service = [characteristicCopy service];
  bulletinBoardNotification = [service bulletinBoardNotification];
  notificationServiceGroup = [bulletinBoardNotification notificationServiceGroup];

  cameraProfiles = [notificationServiceGroup cameraProfiles];
  firstObject = [cameraProfiles firstObject];

  if (firstObject)
  {
    type = [characteristicCopy type];
    v10 = [type isEqualToString:*MEMORY[0x277CFE678]];

    if (v10)
    {
      v11 = MEMORY[0x277CCF368];
LABEL_4:
      v12 = *v11;
      goto LABEL_10;
    }

    type2 = [characteristicCopy type];
    if ([type2 isEqualToString:*MEMORY[0x277CFE660]])
    {
      type3 = [service type];
      v15 = [type3 isEqualToString:*MEMORY[0x277CFE840]];

      if (v15)
      {
        v11 = MEMORY[0x277CCF358];
        goto LABEL_4;
      }
    }

    else
    {
    }
  }

  v12 = 0;
LABEL_10:

  return v12;
}

+ (BOOL)isSecureServiceType:(id)type
{
  v3 = isSecureServiceType__onceToken;
  typeCopy = type;
  if (v3 != -1)
  {
    dispatch_once(&isSecureServiceType__onceToken, &__block_literal_global_127_139989);
  }

  v5 = [isSecureServiceType__secureServices containsObject:typeCopy];

  return v5;
}

void __43__HMDBulletinCategory_isSecureServiceType___block_invoke()
{
  v0 = [MEMORY[0x277CBEB98] setWithObjects:{*MEMORY[0x277CFE838], *MEMORY[0x277CFE858], *MEMORY[0x277CFE880], *MEMORY[0x277CFE898], *MEMORY[0x277CFE920], 0}];
  v1 = isSecureServiceType__secureServices;
  isSecureServiceType__secureServices = v0;
}

+ (BOOL)isSensorDetectedCharacteristic:(id)characteristic
{
  characteristicCopy = characteristic;
  v4 = +[HMDBulletinCategory _sensorMap];
  allKeys = [v4 allKeys];
  type = [characteristicCopy type];

  LOBYTE(characteristicCopy) = [allKeys containsObject:type];
  return characteristicCopy;
}

+ (id)composedNameForCharacteristic:(id)characteristic
{
  characteristicCopy = characteristic;
  service = [characteristicCopy service];
  name = [service name];
  accessory = [characteristicCopy accessory];

  room = [accessory room];
  name2 = [room name];
  v9 = HMDLocalizedStringForKey(@"BULLETIN_ACTION_ROOM_SERVICE");
  v10 = [HMDServiceNameComponents componentsWithRawServiceName:name rawRoomName:name2 localizedFormat:v9];

  composedName = [v10 composedName];

  return composedName;
}

+ (id)trimLeadingAndTailingDotInName:(id)name
{
  v3 = MEMORY[0x277CCA900];
  nameCopy = name;
  v5 = [v3 characterSetWithCharactersInString:@"."];
  v6 = [nameCopy stringByTrimmingCharactersInSet:v5];

  return v6;
}

+ (id)trimLeadingAndTailingSpacesInName:(id)name
{
  v3 = MEMORY[0x277CCA900];
  nameCopy = name;
  whitespaceCharacterSet = [v3 whitespaceCharacterSet];
  v6 = [nameCopy stringByTrimmingCharactersInSet:whitespaceCharacterSet];

  return v6;
}

+ (id)localizedStateForCharacteristic:(id)characteristic doorbellBulletinUtilities:(id)utilities
{
  v92 = *MEMORY[0x277D85DE8];
  characteristicCopy = characteristic;
  utilitiesCopy = utilities;
  accessory = [characteristicCopy accessory];
  service = [characteristicCopy service];
  type = [characteristicCopy type];
  v11 = [type isEqualToString:*MEMORY[0x277CFE660]];

  if (!v11)
  {
    if ([HMDBulletinCategory isSensorDetectedCharacteristic:characteristicCopy])
    {
      v80 = utilitiesCopy;
      room = [accessory room];
      name = [room name];

      type2 = [characteristicCopy type];
      v19 = [type2 isEqualToString:*MEMORY[0x277CFE678]];

      if (v19)
      {
        name2 = [service name];
        v21 = HMDLocalizedStringForKey(@"BULLETIN_ACTION_ROOM_SERVICE");
        v22 = [HMDServiceNameComponents componentsWithRawServiceName:name2 rawRoomName:name localizedFormat:v21];

        composedName = [v22 composedName];

        name = composedName;
      }

      v24 = MEMORY[0x277CCACA8];
      v25 = +[HMDBulletinCategory _sensorMap];
      type3 = [characteristicCopy type];
      v27 = [v25 valueForKey:type3];
      v28 = HMDLocalizedStringForKey(v27);
      v83 = 0;
      v76 = name;
      v29 = [HMDBulletinCategory trimLeadingAndTailingSpacesInName:name];
      v30 = [v24 localizedStringWithValidatedFormat:v28 validFormatSpecifiers:@"%@" error:&v83, v29];
      v78 = v83;

      if (v30)
      {
        v15 = v30;
      }

      else
      {
        v48 = objc_autoreleasePoolPush();
        v49 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
        {
          v50 = HMFGetLogIdentifier();
          v51 = +[HMDBulletinCategory _sensorMap];
          type4 = [characteristicCopy type];
          v53 = [v51 valueForKey:type4];
          *buf = 138544130;
          v85 = v50;
          v86 = 2112;
          v87 = v53;
          v88 = 2112;
          v89 = @"%@";
          v90 = 2112;
          v91 = v78;
          _os_log_impl(&dword_229538000, v49, OS_LOG_TYPE_ERROR, "%{public}@Failed to determined localized string for format key %@ and valid format specifiers %@: %@", buf, 0x2Au);
        }

        objc_autoreleasePoolPop(v48);
        v54 = +[HMDBulletinCategory _sensorMap];
        type5 = [characteristicCopy type];
        v15 = [v54 valueForKey:type5];
      }

      utilitiesCopy = v80;

      goto LABEL_32;
    }

    type6 = [characteristicCopy type];
    if ([type6 isEqualToString:*MEMORY[0x277CFE5B0]])
    {
      type7 = [service type];
      v34 = [type7 isEqualToString:@"00000260-0000-1000-8000-0026BB765291"];

      if (v34)
      {
        v14 = HMDLocalizedStringForKey(@"BULLETIN_KEYPAD_DISABLED_MESSAGE");
        goto LABEL_4;
      }
    }

    else
    {
    }

    type8 = [characteristicCopy type];
    v36 = [self _presentationTypeForType:type8];

    value = [characteristicCopy value];
    type9 = [characteristicCopy type];
    v39 = [self presentationValueForValue:value type:type9];

    v74 = v39;
    v77 = v36;
    v40 = [self _localizedStateForValue:v39 characteristicType:v36];
    name3 = [service name];
    room2 = [accessory room];
    name4 = [room2 name];
    v44 = HMDLocalizedStringForKey(@"BULLETIN_ACTION_ROOM_SERVICE");
    v79 = [HMDServiceNameComponents componentsWithRawServiceName:name3 rawRoomName:name4 localizedFormat:v44];

    type10 = [service type];
    v46 = *MEMORY[0x277CFE928];
    v81 = utilitiesCopy;
    v75 = accessory;
    if ([type10 isEqualToString:*MEMORY[0x277CFE928]])
    {

LABEL_17:
      v47 = @"BULLETIN_ACTION_WINDOW_COVERING";
LABEL_27:
      v59 = v79;
      v60 = MEMORY[0x277CCACA8];
      v61 = HMDLocalizedStringForKey(v47);
      v82 = 0;
      composedName2 = [v79 composedName];
      [v60 localizedStringWithValidatedFormat:v61 validFormatSpecifiers:@"%@ %@" error:&v82, composedName2, v40];
      v64 = v63 = v40;
      v65 = v82;

      v66 = v64;
      utilitiesCopy = v81;
      if (!v64)
      {
        v67 = v47;
        v73 = v63;
        v68 = objc_autoreleasePoolPush();
        v69 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v69, OS_LOG_TYPE_ERROR))
        {
          v70 = HMFGetLogIdentifier();
          *buf = 138544130;
          v85 = v70;
          v86 = 2112;
          v87 = v67;
          v88 = 2112;
          v89 = @"%@ %@";
          v90 = 2112;
          v91 = v65;
          _os_log_impl(&dword_229538000, v69, OS_LOG_TYPE_ERROR, "%{public}@Failed to determined localized string for format key %@ and valid format specifiers %@: %@", buf, 0x2Au);
        }

        objc_autoreleasePoolPop(v68);
        v66 = v67;
        v63 = v73;
        v59 = v79;
      }

      v15 = v66;

      accessory = v75;
      goto LABEL_32;
    }

    type11 = [service type];
    if ([type11 isEqualToString:*MEMORY[0x277CFE8B8]])
    {
      associatedServiceType = [service associatedServiceType];
      v58 = [associatedServiceType isEqualToString:v46];

      if (v58)
      {
        goto LABEL_17;
      }
    }

    else
    {
    }

    v47 = @"BULLETIN_ACTION_DEFAULT";
    goto LABEL_27;
  }

  type12 = [service type];
  v13 = [type12 isEqualToString:*MEMORY[0x277CFE840]];

  if (v13)
  {
    v14 = [utilitiesCopy localizedMessageForCharacteristic:characteristicCopy];
LABEL_4:
    v15 = v14;
    goto LABEL_32;
  }

  name5 = [service name];
  v15 = [HMDBulletinCategory trimLeadingAndTailingSpacesInName:name5];

LABEL_32:
  v71 = *MEMORY[0x277D85DE8];

  return v15;
}

+ (id)localizedActionForCharacteristic:(id)characteristic
{
  characteristicCopy = characteristic;
  type = [characteristicCopy type];
  v6 = [self _presentationTypeForType:type];

  value = [characteristicCopy value];
  type2 = [characteristicCopy type];

  v9 = [self presentationValueForValue:value type:type2];

  v10 = [self _localizedStateForValue:v9 characteristicType:v6];
  stringByCapitalizingFirstWord = [v10 stringByCapitalizingFirstWord];

  return stringByCapitalizingFirstWord;
}

+ (id)_sensorMap
{
  if (_sensorMap_onceToken != -1)
  {
    dispatch_once(&_sensorMap_onceToken, &__block_literal_global_82);
  }

  v3 = _sensorMap_sensorMap;

  return v3;
}

void __33__HMDBulletinCategory__sensorMap__block_invoke()
{
  v7[6] = *MEMORY[0x277D85DE8];
  v0 = *MEMORY[0x277CFE5D0];
  v6[0] = *MEMORY[0x277CFE678];
  v6[1] = v0;
  v7[0] = @"BULLETIN_ACTION_SENSOR_MOTION";
  v7[1] = @"BULLETIN_ACTION_SENSOR_CO";
  v1 = *MEMORY[0x277CFE6E8];
  v6[2] = *MEMORY[0x277CFE5C8];
  v6[3] = v1;
  v7[2] = @"BULLETIN_ACTION_SENSOR_CO2";
  v7[3] = @"BULLETIN_ACTION_SENSOR_SMOKE";
  v2 = *MEMORY[0x277CFE690];
  v6[4] = *MEMORY[0x277CFE668];
  v6[5] = v2;
  v7[4] = @"BULLETIN_ACTION_SENSOR_LEAK";
  v7[5] = @"BULLETIN_ACTION_SENSOR_OCCUPANCY";
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:v6 count:6];
  v4 = _sensorMap_sensorMap;
  _sensorMap_sensorMap = v3;

  v5 = *MEMORY[0x277D85DE8];
}

+ (id)_secureStateMap
{
  if (_secureStateMap_onceToken != -1)
  {
    dispatch_once(&_secureStateMap_onceToken, &__block_literal_global_63_140036);
  }

  v3 = _secureStateMap_secureStateMap;

  return v3;
}

void __38__HMDBulletinCategory__secureStateMap__block_invoke()
{
  v6[4] = *MEMORY[0x277D85DE8];
  v0 = *MEMORY[0x277CFE610];
  v5[0] = *MEMORY[0x277CFE5E8];
  v5[1] = v0;
  v6[0] = &unk_283E75998;
  v6[1] = &unk_283E759B0;
  v1 = *MEMORY[0x277CFE5D8];
  v5[2] = *MEMORY[0x277CFE620];
  v5[3] = v1;
  v6[2] = &unk_283E759C8;
  v6[3] = &unk_283E759E0;
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v6 forKeys:v5 count:4];
  v3 = _secureStateMap_secureStateMap;
  _secureStateMap_secureStateMap = v2;

  v4 = *MEMORY[0x277D85DE8];
}

+ (id)_enumerationValueLocalizationKeys
{
  if (_enumerationValueLocalizationKeys_onceToken != -1)
  {
    dispatch_once(&_enumerationValueLocalizationKeys_onceToken, &__block_literal_global_140038);
  }

  v3 = _enumerationValueLocalizationKeys_localizationKeys;

  return v3;
}

void __56__HMDBulletinCategory__enumerationValueLocalizationKeys__block_invoke()
{
  v7[6] = *MEMORY[0x277D85DE8];
  v0 = *MEMORY[0x277CFE608];
  v6[0] = *MEMORY[0x277CFE5E8];
  v6[1] = v0;
  v7[0] = &unk_283E75908;
  v7[1] = &unk_283E75920;
  v1 = *MEMORY[0x277CFE660];
  v6[2] = *MEMORY[0x277CFE620];
  v6[3] = v1;
  v7[2] = &unk_283E75938;
  v7[3] = &unk_283E75950;
  v2 = *MEMORY[0x277CFE5D8];
  v6[4] = *MEMORY[0x277CFE678];
  v6[5] = v2;
  v7[4] = &unk_283E75968;
  v7[5] = &unk_283E75980;
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:v6 count:6];
  v4 = _enumerationValueLocalizationKeys_localizationKeys;
  _enumerationValueLocalizationKeys_localizationKeys = v3;

  v5 = *MEMORY[0x277D85DE8];
}

@end