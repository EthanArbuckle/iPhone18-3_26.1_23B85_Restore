@interface ULContextLayerUtilities
+ (id)_getContextLayerEnumToStringMapping;
+ (id)contextLayerStringTypeFromEnum:(unint64_t)enum;
+ (id)getDefaultContextLayerForService:(id)service;
+ (unint64_t)contextLayerEnumFromStringType:(id)type;
@end

@implementation ULContextLayerUtilities

+ (id)getDefaultContextLayerForService:(id)service
{
  serviceCopy = service;
  v4 = @"ULContextLayerTypeUnknown";
  if (getDefaultContextLayerForService__onceToken != -1)
  {
    +[ULContextLayerUtilities getDefaultContextLayerForService:];
  }

  v5 = [getDefaultContextLayerForService__serviceToDefaultContextLayerMap objectForKeyedSubscript:serviceCopy];
  v6 = v5;
  if (v5)
  {
    v7 = v5;

    v4 = v7;
  }

  return v4;
}

void __60__ULContextLayerUtilities_getDefaultContextLayerForService___block_invoke()
{
  v24[20] = *MEMORY[0x277D85DE8];
  v22 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:@"00000000-0000-0000-0000-000000000017"];
  v23[0] = v22;
  v24[0] = @"ULContextLayerTypeFocusMode";
  v21 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:@"00000000-0000-0000-0000-000000000001"];
  v23[1] = v21;
  v24[1] = @"ULContextLayerTypeIRMediaRemote";
  v20 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:@"00000000-0000-0000-0000-000000000002"];
  v23[2] = v20;
  v24[2] = @"ULContextLayerTypeIRMusic";
  v19 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:@"00000000-0000-0000-0000-000000000003"];
  v23[3] = v19;
  v24[3] = @"ULContextLayerTypeIRTelephonyUtilities";
  v18 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:@"00000000-0000-0000-0000-000000000004"];
  v23[4] = v18;
  v24[4] = @"ULContextLayerTypeIRControlCenter";
  v17 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:@"00000000-0000-0000-0000-000000000005"];
  v23[5] = v17;
  v24[5] = @"ULContextLayerTypeIRRoutePickerView";
  v16 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:@"00000000-0000-0000-0000-000000000006"];
  v23[6] = v16;
  v24[6] = @"ULContextLayerTypeIRTVRemote";
  v15 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:@"00000000-0000-0000-0000-000000000007"];
  v23[7] = v15;
  v24[7] = @"ULContextLayerTypeIRNeighborhoodActivity";
  v14 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:@"00000000-0000-0000-0000-000000000008"];
  v23[8] = v14;
  v24[8] = @"ULContextLayerTypeIRMedia";
  v13 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:@"00000000-0000-0000-0000-000000000009"];
  v23[9] = v13;
  v24[9] = @"ULContextLayerTypeIRAppleTVControl";
  v0 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:@"00000000-0000-0000-0000-000000000025"];
  v23[10] = v0;
  v24[10] = @"ULContextLayerTypeIRHome";
  v1 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:@"00000000-0000-0000-0000-000000000022"];
  v23[11] = v1;
  v24[11] = @"ULContextLayerTypeIRRoverApp";
  v2 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:@"00000000-0000-0000-0000-000000000018"];
  v23[12] = v2;
  v24[12] = @"ULContextLayerTypeLslApp";
  v3 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:@"00000000-0000-0000-0000-000000000019"];
  v23[13] = v3;
  v24[13] = @"ULContextLayerTypeDataCollectionApp";
  v4 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:@"00000000-0000-0000-0000-000000000020"];
  v23[14] = v4;
  v24[14] = @"ULContextLayerTypeHomeSlamApp";
  v5 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:@"00000000-0000-0000-0000-000000000021"];
  v23[15] = v5;
  v24[15] = @"ULContextLayerTypeMiLoPlaceholderApp";
  v6 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:@"00000000-0000-0000-0000-000000000011"];
  v23[16] = v6;
  v24[16] = @"ULContextLayerTypeMiLoHostTests";
  v7 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:@"00000000-0000-0000-0000-000000000010"];
  v23[17] = v7;
  v24[17] = @"ULContextLayerTypeIRHostTestsMedia";
  v8 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:@"00000000-0000-0000-0000-000000000023"];
  v23[18] = v8;
  v24[18] = @"ULContextLayerTypeIRHostTestsAppleTVControl";
  v9 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:@"00000000-0000-0000-0000-000000000024"];
  v23[19] = v9;
  v24[19] = @"ULContextLayerTypeIRHostTestsHome";
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v24 forKeys:v23 count:20];
  v11 = getDefaultContextLayerForService__serviceToDefaultContextLayerMap;
  getDefaultContextLayerForService__serviceToDefaultContextLayerMap = v10;

  v12 = *MEMORY[0x277D85DE8];
}

+ (unint64_t)contextLayerEnumFromStringType:(id)type
{
  typeCopy = type;
  _getContextLayerEnumToStringMapping = [self _getContextLayerEnumToStringMapping];
  v6 = [_getContextLayerEnumToStringMapping keyForObject:typeCopy];

  if (v6)
  {
    unsignedIntValue = [v6 unsignedIntValue];
  }

  else
  {
    unsignedIntValue = 0;
  }

  return unsignedIntValue;
}

+ (id)contextLayerStringTypeFromEnum:(unint64_t)enum
{
  v5 = @"ULContextLayerTypeUnknown";
  _getContextLayerEnumToStringMapping = [self _getContextLayerEnumToStringMapping];
  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:enum];
  v8 = [_getContextLayerEnumToStringMapping objectForKey:v7];

  if (v8)
  {
    v9 = v8;

    v5 = v9;
  }

  return v5;
}

+ (id)_getContextLayerEnumToStringMapping
{
  if (_getContextLayerEnumToStringMapping_onceToken != -1)
  {
    +[ULContextLayerUtilities _getContextLayerEnumToStringMapping];
  }

  v3 = _getContextLayerEnumToStringMapping_contextLayerEnumToStringMap;

  return v3;
}

uint64_t __62__ULContextLayerUtilities__getContextLayerEnumToStringMapping__block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x277D28848]);
  v1 = _getContextLayerEnumToStringMapping_contextLayerEnumToStringMap;
  _getContextLayerEnumToStringMapping_contextLayerEnumToStringMap = v0;

  [_getContextLayerEnumToStringMapping_contextLayerEnumToStringMap setObject:@"ULContextLayerTypeUnknown" forKey:&unk_286A52870];
  [_getContextLayerEnumToStringMapping_contextLayerEnumToStringMap setObject:@"ULContextLayerTypeWiFi" forKey:&unk_286A52888];
  [_getContextLayerEnumToStringMapping_contextLayerEnumToStringMap setObject:@"ULContextLayerTypeRoomClass" forKey:&unk_286A528A0];
  [_getContextLayerEnumToStringMapping_contextLayerEnumToStringMap setObject:@"ULContextLayerTypeFocusMode" forKey:&unk_286A528B8];
  [_getContextLayerEnumToStringMapping_contextLayerEnumToStringMap setObject:@"ULContextLayerTypeIRMediaRemote" forKey:&unk_286A528D0];
  [_getContextLayerEnumToStringMapping_contextLayerEnumToStringMap setObject:@"ULContextLayerTypeIRMusic" forKey:&unk_286A528E8];
  [_getContextLayerEnumToStringMapping_contextLayerEnumToStringMap setObject:@"ULContextLayerTypeIRTelephonyUtilities" forKey:&unk_286A52900];
  [_getContextLayerEnumToStringMapping_contextLayerEnumToStringMap setObject:@"ULContextLayerTypeIRControlCenter" forKey:&unk_286A52918];
  [_getContextLayerEnumToStringMapping_contextLayerEnumToStringMap setObject:@"ULContextLayerTypeIRRoutePickerView" forKey:&unk_286A52930];
  [_getContextLayerEnumToStringMapping_contextLayerEnumToStringMap setObject:@"ULContextLayerTypeIRTVRemote" forKey:&unk_286A52948];
  [_getContextLayerEnumToStringMapping_contextLayerEnumToStringMap setObject:@"ULContextLayerTypeIRNeighborhoodActivity" forKey:&unk_286A52960];
  [_getContextLayerEnumToStringMapping_contextLayerEnumToStringMap setObject:@"ULContextLayerTypeIRMedia" forKey:&unk_286A52978];
  [_getContextLayerEnumToStringMapping_contextLayerEnumToStringMap setObject:@"ULContextLayerTypeIRAppleTVControl" forKey:&unk_286A52990];
  [_getContextLayerEnumToStringMapping_contextLayerEnumToStringMap setObject:@"ULContextLayerTypeIRHome" forKey:&unk_286A529A8];
  [_getContextLayerEnumToStringMapping_contextLayerEnumToStringMap setObject:@"ULContextLayerTypeIRRoverApp" forKey:&unk_286A529C0];
  [_getContextLayerEnumToStringMapping_contextLayerEnumToStringMap setObject:@"ULContextLayerTypeLslApp" forKey:&unk_286A529D8];
  [_getContextLayerEnumToStringMapping_contextLayerEnumToStringMap setObject:@"ULContextLayerTypeDataCollectionApp" forKey:&unk_286A529F0];
  [_getContextLayerEnumToStringMapping_contextLayerEnumToStringMap setObject:@"ULContextLayerTypeHomeSlamApp" forKey:&unk_286A52A08];
  [_getContextLayerEnumToStringMapping_contextLayerEnumToStringMap setObject:@"ULContextLayerTypeMiLoPlaceholderApp" forKey:&unk_286A52A20];
  [_getContextLayerEnumToStringMapping_contextLayerEnumToStringMap setObject:@"ULContextLayerTypeMiLoHostTests" forKey:&unk_286A52A38];
  [_getContextLayerEnumToStringMapping_contextLayerEnumToStringMap setObject:@"ULContextLayerTypeIRHostTestsMedia" forKey:&unk_286A52A50];
  [_getContextLayerEnumToStringMapping_contextLayerEnumToStringMap setObject:@"ULContextLayerTypeIRHostTestsAppleTVControl" forKey:&unk_286A52A68];
  [_getContextLayerEnumToStringMapping_contextLayerEnumToStringMap setObject:@"ULContextLayerTypeIRHostTestsHome" forKey:&unk_286A52A80];
  v2 = _getContextLayerEnumToStringMapping_contextLayerEnumToStringMap;

  return [v2 setObject:@"ULContextLayerTypeMiLoDebug" forKey:&unk_286A52A98];
}

@end