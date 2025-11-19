@interface HMDBulletinCategory
+ (BOOL)isSecureServiceType:(id)a3;
+ (BOOL)isSensorDetectedCharacteristic:(id)a3;
+ (NSDictionary)targetCurrentCharacteristicTypeMap;
+ (id)_enumerationValueLocalizationKeys;
+ (id)_localizedStateForValue:(id)a3 characteristicType:(id)a4;
+ (id)_presentationTypeForType:(id)a3;
+ (id)_secureStateMap;
+ (id)_sensorMap;
+ (id)bulletinReasonForChangedCharacteristic:(id)a3;
+ (id)composedNameForCharacteristic:(id)a3;
+ (id)localizedActionForCharacteristic:(id)a3;
+ (id)localizedStateForCharacteristic:(id)a3 doorbellBulletinUtilities:(id)a4;
+ (id)presentationValueForValue:(id)a3 type:(id)a4;
+ (id)trimLeadingAndTailingDotInName:(id)a3;
+ (id)trimLeadingAndTailingSpacesInName:(id)a3;
@end

@implementation HMDBulletinCategory

+ (id)presentationValueForValue:(id)a3 type:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [a1 _presentationTypeForType:v7];
  if (([v7 isEqualToString:*MEMORY[0x277CFE6B8]] & 1) != 0 || objc_msgSend(v7, "isEqualToString:", *MEMORY[0x277CFE688]))
  {
    v9 = [a1 _secureStateMap];
    v10 = [v9 objectForKeyedSubscript:v8];
    v11 = v10;
    v12 = 1;
    goto LABEL_4;
  }

  if (([v7 isEqualToString:*MEMORY[0x277CFE610]] & 1) != 0 || objc_msgSend(v7, "isEqualToString:", *MEMORY[0x277CFE738]))
  {
    v14 = [v6 integerValue];
    v15 = &unk_283E72FC8;
    if (!v14)
    {
      v15 = &unk_283E72FB0;
    }

    v16 = v15;
  }

  else
  {
    if (([v7 isEqualToString:*MEMORY[0x277CFE620]] & 1) == 0 && (objc_msgSend(v7, "isEqualToString:", *MEMORY[0x277CFE660]) & 1) == 0 && (objc_msgSend(v7, "isEqualToString:", *MEMORY[0x277CFE678]) & 1) == 0 && !objc_msgSend(v7, "isEqualToString:", *MEMORY[0x277CFE608]))
    {
      v18 = +[HMDBulletinCategory _secureStateMap];
      v9 = [v18 objectForKeyedSubscript:v8];

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v13 = 0;
        goto LABEL_5;
      }

      v11 = [v9 objectAtIndexedSubscript:0];
      v12 = [v11 isEqualToNumber:v6] ^ 1;
      v10 = v9;
LABEL_4:
      v13 = [v10 objectAtIndexedSubscript:v12];

LABEL_5:
      goto LABEL_17;
    }

    v16 = v6;
  }

  v13 = v16;
LABEL_17:

  return v13;
}

+ (id)_presentationTypeForType:(id)a3
{
  v3 = a3;
  if (([v3 isEqualToString:*MEMORY[0x277CFE6B8]] & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", *MEMORY[0x277CFE688]) & 1) != 0 || (v4 = v3, objc_msgSend(v3, "isEqualToString:", *MEMORY[0x277CFE610])))
  {
    v4 = *MEMORY[0x277CFE5E8];
  }

  v5 = v4;

  return v4;
}

+ (id)_localizedStateForValue:(id)a3 characteristicType:(id)a4
{
  v26 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  if ([v6 isEqualToString:*MEMORY[0x277CFE610]])
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
      v23 = v6;
      v24 = 2112;
      v25 = v5;
      _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_INFO, "%{public}@type : %@ value = %@", &v20, 0x20u);
    }

    objc_autoreleasePoolPop(v8);
    v11 = +[HMDBulletinCategory _enumerationValueLocalizationKeys];
    v12 = [v11 objectForKeyedSubscript:v6];

    if (v12 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && (v13 = [v5 integerValue], v13 < objc_msgSend(v12, "count")))
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

+ (id)bulletinReasonForChangedCharacteristic:(id)a3
{
  v3 = a3;
  v4 = [v3 service];
  v5 = [v4 bulletinBoardNotification];
  v6 = [v5 notificationServiceGroup];

  v7 = [v6 cameraProfiles];
  v8 = [v7 firstObject];

  if (v8)
  {
    v9 = [v3 type];
    v10 = [v9 isEqualToString:*MEMORY[0x277CFE678]];

    if (v10)
    {
      v11 = MEMORY[0x277CCF368];
LABEL_4:
      v12 = *v11;
      goto LABEL_10;
    }

    v13 = [v3 type];
    if ([v13 isEqualToString:*MEMORY[0x277CFE660]])
    {
      v14 = [v4 type];
      v15 = [v14 isEqualToString:*MEMORY[0x277CFE840]];

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

+ (BOOL)isSecureServiceType:(id)a3
{
  v3 = isSecureServiceType__onceToken;
  v4 = a3;
  if (v3 != -1)
  {
    dispatch_once(&isSecureServiceType__onceToken, &__block_literal_global_127_139989);
  }

  v5 = [isSecureServiceType__secureServices containsObject:v4];

  return v5;
}

void __43__HMDBulletinCategory_isSecureServiceType___block_invoke()
{
  v0 = [MEMORY[0x277CBEB98] setWithObjects:{*MEMORY[0x277CFE838], *MEMORY[0x277CFE858], *MEMORY[0x277CFE880], *MEMORY[0x277CFE898], *MEMORY[0x277CFE920], 0}];
  v1 = isSecureServiceType__secureServices;
  isSecureServiceType__secureServices = v0;
}

+ (BOOL)isSensorDetectedCharacteristic:(id)a3
{
  v3 = a3;
  v4 = +[HMDBulletinCategory _sensorMap];
  v5 = [v4 allKeys];
  v6 = [v3 type];

  LOBYTE(v3) = [v5 containsObject:v6];
  return v3;
}

+ (id)composedNameForCharacteristic:(id)a3
{
  v3 = a3;
  v4 = [v3 service];
  v5 = [v4 name];
  v6 = [v3 accessory];

  v7 = [v6 room];
  v8 = [v7 name];
  v9 = HMDLocalizedStringForKey(@"BULLETIN_ACTION_ROOM_SERVICE");
  v10 = [HMDServiceNameComponents componentsWithRawServiceName:v5 rawRoomName:v8 localizedFormat:v9];

  v11 = [v10 composedName];

  return v11;
}

+ (id)trimLeadingAndTailingDotInName:(id)a3
{
  v3 = MEMORY[0x277CCA900];
  v4 = a3;
  v5 = [v3 characterSetWithCharactersInString:@"."];
  v6 = [v4 stringByTrimmingCharactersInSet:v5];

  return v6;
}

+ (id)trimLeadingAndTailingSpacesInName:(id)a3
{
  v3 = MEMORY[0x277CCA900];
  v4 = a3;
  v5 = [v3 whitespaceCharacterSet];
  v6 = [v4 stringByTrimmingCharactersInSet:v5];

  return v6;
}

+ (id)localizedStateForCharacteristic:(id)a3 doorbellBulletinUtilities:(id)a4
{
  v92 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [v6 accessory];
  v9 = [v6 service];
  v10 = [v6 type];
  v11 = [v10 isEqualToString:*MEMORY[0x277CFE660]];

  if (!v11)
  {
    if ([HMDBulletinCategory isSensorDetectedCharacteristic:v6])
    {
      v80 = v7;
      v16 = [v8 room];
      v17 = [v16 name];

      v18 = [v6 type];
      v19 = [v18 isEqualToString:*MEMORY[0x277CFE678]];

      if (v19)
      {
        v20 = [v9 name];
        v21 = HMDLocalizedStringForKey(@"BULLETIN_ACTION_ROOM_SERVICE");
        v22 = [HMDServiceNameComponents componentsWithRawServiceName:v20 rawRoomName:v17 localizedFormat:v21];

        v23 = [v22 composedName];

        v17 = v23;
      }

      v24 = MEMORY[0x277CCACA8];
      v25 = +[HMDBulletinCategory _sensorMap];
      v26 = [v6 type];
      v27 = [v25 valueForKey:v26];
      v28 = HMDLocalizedStringForKey(v27);
      v83 = 0;
      v76 = v17;
      v29 = [HMDBulletinCategory trimLeadingAndTailingSpacesInName:v17];
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
          v52 = [v6 type];
          v53 = [v51 valueForKey:v52];
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
        v55 = [v6 type];
        v15 = [v54 valueForKey:v55];
      }

      v7 = v80;

      goto LABEL_32;
    }

    v32 = [v6 type];
    if ([v32 isEqualToString:*MEMORY[0x277CFE5B0]])
    {
      v33 = [v9 type];
      v34 = [v33 isEqualToString:@"00000260-0000-1000-8000-0026BB765291"];

      if (v34)
      {
        v14 = HMDLocalizedStringForKey(@"BULLETIN_KEYPAD_DISABLED_MESSAGE");
        goto LABEL_4;
      }
    }

    else
    {
    }

    v35 = [v6 type];
    v36 = [a1 _presentationTypeForType:v35];

    v37 = [v6 value];
    v38 = [v6 type];
    v39 = [a1 presentationValueForValue:v37 type:v38];

    v74 = v39;
    v77 = v36;
    v40 = [a1 _localizedStateForValue:v39 characteristicType:v36];
    v41 = [v9 name];
    v42 = [v8 room];
    v43 = [v42 name];
    v44 = HMDLocalizedStringForKey(@"BULLETIN_ACTION_ROOM_SERVICE");
    v79 = [HMDServiceNameComponents componentsWithRawServiceName:v41 rawRoomName:v43 localizedFormat:v44];

    v45 = [v9 type];
    v46 = *MEMORY[0x277CFE928];
    v81 = v7;
    v75 = v8;
    if ([v45 isEqualToString:*MEMORY[0x277CFE928]])
    {

LABEL_17:
      v47 = @"BULLETIN_ACTION_WINDOW_COVERING";
LABEL_27:
      v59 = v79;
      v60 = MEMORY[0x277CCACA8];
      v61 = HMDLocalizedStringForKey(v47);
      v82 = 0;
      v62 = [v79 composedName];
      [v60 localizedStringWithValidatedFormat:v61 validFormatSpecifiers:@"%@ %@" error:&v82, v62, v40];
      v64 = v63 = v40;
      v65 = v82;

      v66 = v64;
      v7 = v81;
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

      v8 = v75;
      goto LABEL_32;
    }

    v56 = [v9 type];
    if ([v56 isEqualToString:*MEMORY[0x277CFE8B8]])
    {
      v57 = [v9 associatedServiceType];
      v58 = [v57 isEqualToString:v46];

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

  v12 = [v9 type];
  v13 = [v12 isEqualToString:*MEMORY[0x277CFE840]];

  if (v13)
  {
    v14 = [v7 localizedMessageForCharacteristic:v6];
LABEL_4:
    v15 = v14;
    goto LABEL_32;
  }

  v31 = [v9 name];
  v15 = [HMDBulletinCategory trimLeadingAndTailingSpacesInName:v31];

LABEL_32:
  v71 = *MEMORY[0x277D85DE8];

  return v15;
}

+ (id)localizedActionForCharacteristic:(id)a3
{
  v4 = a3;
  v5 = [v4 type];
  v6 = [a1 _presentationTypeForType:v5];

  v7 = [v4 value];
  v8 = [v4 type];

  v9 = [a1 presentationValueForValue:v7 type:v8];

  v10 = [a1 _localizedStateForValue:v9 characteristicType:v6];
  v11 = [v10 stringByCapitalizingFirstWord];

  return v11;
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