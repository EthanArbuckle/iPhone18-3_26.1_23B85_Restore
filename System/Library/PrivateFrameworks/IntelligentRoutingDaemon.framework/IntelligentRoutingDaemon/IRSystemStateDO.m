@interface IRSystemStateDO
+ (IRSystemStateDO)systemStateDOWithAppInFocusBundleID:(id)a3 appInFocusWindowValid:(BOOL)a4 deviceWiFiSSID:(id)a5 locationSemanticUserSpecificPlaceType:(int)a6 locationSemanticLoiIdentifier:(id)a7 iCloudId:(id)a8 avInitialRouteSharingPolicy:(id)a9 mediaRouteGroupLeaderOutputDeviceID:(id)a10 timeZoneSeconds:(int64_t)a11 outputDeviceName:(id)a12 outputDeviceType:(unint64_t)a13 outputDeviceSubType:(unint64_t)a14 predictedOutputDeviceName:(id)a15 predictedOutputDeviceType:(unint64_t)a16 predictedOutputDeviceSubType:(unint64_t)a17 appInFocusWindowScreenUnlockEvent:(BOOL)a18 pdrFenceActive:(BOOL)a19 latestPickerChoiceDate:(id)a20 isContinuityDisplay:(BOOL)a21 displayOn:(BOOL)a22;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToSystemStateDO:(id)a3;
- (BOOL)isMiLoSupportedLocation;
- (IRSystemStateDO)initWithAppInFocusBundleID:(id)a3 appInFocusWindowValid:(BOOL)a4 deviceWiFiSSID:(id)a5 locationSemanticUserSpecificPlaceType:(int)a6 locationSemanticLoiIdentifier:(id)a7 iCloudId:(id)a8 avInitialRouteSharingPolicy:(id)a9 mediaRouteGroupLeaderOutputDeviceID:(id)a10 timeZoneSeconds:(int64_t)a11 outputDeviceName:(id)a12 outputDeviceType:(unint64_t)a13 outputDeviceSubType:(unint64_t)a14 predictedOutputDeviceName:(id)a15 predictedOutputDeviceType:(unint64_t)a16 predictedOutputDeviceSubType:(unint64_t)a17 appInFocusWindowScreenUnlockEvent:(BOOL)a18 pdrFenceActive:(BOOL)a19 latestPickerChoiceDate:(id)a20 isContinuityDisplay:(BOOL)a21 displayOn:(BOOL)a22;
- (IRSystemStateDO)initWithCoder:(id)a3;
- (id)copyWithReplacementAppInFocusBundleID:(id)a3;
- (id)copyWithReplacementAppInFocusWindowScreenUnlockEvent:(BOOL)a3;
- (id)copyWithReplacementAvInitialRouteSharingPolicy:(id)a3;
- (id)copyWithReplacementDeviceWiFiSSID:(id)a3;
- (id)copyWithReplacementDisplayOn:(BOOL)a3;
- (id)copyWithReplacementICloudId:(id)a3;
- (id)copyWithReplacementIsContinuityDisplay:(BOOL)a3;
- (id)copyWithReplacementLatestPickerChoiceDate:(id)a3;
- (id)copyWithReplacementLocationSemanticLoiIdentifier:(id)a3;
- (id)copyWithReplacementMediaRouteGroupLeaderOutputDeviceID:(id)a3;
- (id)copyWithReplacementOutputDeviceName:(id)a3;
- (id)copyWithReplacementOutputDeviceSubType:(unint64_t)a3;
- (id)copyWithReplacementOutputDeviceType:(unint64_t)a3;
- (id)copyWithReplacementPdrFenceActive:(BOOL)a3;
- (id)copyWithReplacementPredictedOutputDeviceName:(id)a3;
- (id)copyWithReplacementPredictedOutputDeviceSubType:(unint64_t)a3;
- (id)copyWithReplacementPredictedOutputDeviceType:(unint64_t)a3;
- (id)copyWithReplacementTimeZoneSeconds:(int64_t)a3;
- (id)description;
- (id)exportAsDictionary;
- (id)overrideSystemStateIfNeeded:(id)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation IRSystemStateDO

- (unint64_t)hash
{
  v3 = [(NSString *)self->_appInFocusBundleID hash];
  v4 = self->_appInFocusWindowValid - v3 + 32 * v3;
  v5 = [(NSString *)self->_deviceWiFiSSID hash];
  v6 = self->_locationSemanticUserSpecificPlaceType - (v5 - v4 + 32 * v4) + 32 * (v5 - v4 + 32 * v4);
  v7 = [(NSString *)self->_locationSemanticLoiIdentifier hash]- v6 + 32 * v6;
  v8 = [(NSString *)self->_iCloudId hash]- v7 + 32 * v7;
  v9 = [(NSString *)self->_avInitialRouteSharingPolicy hash]- v8 + 32 * v8;
  v10 = [(NSString *)self->_mediaRouteGroupLeaderOutputDeviceID hash];
  v11 = self->_timeZoneSeconds - (v10 - v9 + 32 * v9) + 32 * (v10 - v9 + 32 * v9);
  v12 = [(NSString *)self->_outputDeviceName hash];
  v13 = self->_outputDeviceType - (v12 - v11 + 32 * v11) + 32 * (v12 - v11 + 32 * v11);
  v14 = self->_outputDeviceSubType - v13 + 32 * v13;
  v15 = [(NSString *)self->_predictedOutputDeviceName hash];
  v16 = self->_predictedOutputDeviceType - (v15 - v14 + 32 * v14) + 32 * (v15 - v14 + 32 * v14);
  v17 = self->_appInFocusWindowScreenUnlockEvent - (self->_predictedOutputDeviceSubType - v16 + 32 * v16) + 32 * (self->_predictedOutputDeviceSubType - v16 + 32 * v16);
  v18 = self->_pdrFenceActive - v17 + 32 * v17;
  v19 = [(NSDate *)self->_latestPickerChoiceDate hash];
  v20 = self->_isContinuityDisplay - (v19 - v18 + 32 * v18) + 32 * (v19 - v18 + 32 * v18);
  return self->_displayOn - v20 + 32 * v20;
}

- (id)exportAsDictionary
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v4 = [(IRSystemStateDO *)self appInFocusBundleID];
  if (v4)
  {
    v5 = [(IRSystemStateDO *)self appInFocusBundleID];
    [v3 setObject:v5 forKeyedSubscript:@"appInFocusBundleID"];
  }

  else
  {
    [v3 setObject:&stru_286755D18 forKeyedSubscript:@"appInFocusBundleID"];
  }

  v6 = [MEMORY[0x277CCABB0] numberWithBool:{-[IRSystemStateDO appInFocusWindowValid](self, "appInFocusWindowValid")}];
  [v3 setObject:v6 forKeyedSubscript:@"appInFocusWindowValid"];

  v7 = [(IRSystemStateDO *)self deviceWiFiSSID];
  if (v7)
  {
    v8 = [(IRSystemStateDO *)self deviceWiFiSSID];
    [v3 setObject:v8 forKeyedSubscript:@"deviceWiFiSSID"];
  }

  else
  {
    [v3 setObject:&stru_286755D18 forKeyedSubscript:@"deviceWiFiSSID"];
  }

  v9 = IRLocationSemanticUserSpecificPlaceTypeToString([(IRSystemStateDO *)self locationSemanticUserSpecificPlaceType]);
  [v3 setObject:v9 forKeyedSubscript:@"locationSemanticUserSpecificPlaceType"];

  v10 = [(IRSystemStateDO *)self locationSemanticLoiIdentifier];
  if (v10)
  {
    v11 = [(IRSystemStateDO *)self locationSemanticLoiIdentifier];
    [v3 setObject:v11 forKeyedSubscript:@"locationSemanticLoiIdentifier"];
  }

  else
  {
    [v3 setObject:&stru_286755D18 forKeyedSubscript:@"locationSemanticLoiIdentifier"];
  }

  v12 = [(IRSystemStateDO *)self avInitialRouteSharingPolicy];
  if (v12)
  {
    v13 = [(IRSystemStateDO *)self avInitialRouteSharingPolicy];
    [v3 setObject:v13 forKeyedSubscript:@"avInitialRouteSharingPolicy"];
  }

  else
  {
    [v3 setObject:&stru_286755D18 forKeyedSubscript:@"avInitialRouteSharingPolicy"];
  }

  v14 = [(IRSystemStateDO *)self iCloudId];
  if (v14)
  {
    v15 = [(IRSystemStateDO *)self iCloudId];
    [v3 setObject:v15 forKeyedSubscript:@"iCloudId"];
  }

  else
  {
    [v3 setObject:&stru_286755D18 forKeyedSubscript:@"iCloudId"];
  }

  v16 = [(IRSystemStateDO *)self mediaRouteGroupLeaderOutputDeviceID];
  if (v16)
  {
    v17 = [(IRSystemStateDO *)self mediaRouteGroupLeaderOutputDeviceID];
    [v3 setObject:v17 forKeyedSubscript:@"mediaRouteGroupLeaderOutputDeviceID"];
  }

  else
  {
    [v3 setObject:&stru_286755D18 forKeyedSubscript:@"mediaRouteGroupLeaderOutputDeviceID"];
  }

  v18 = [MEMORY[0x277CCABB0] numberWithLongLong:{-[IRSystemStateDO timeZoneSeconds](self, "timeZoneSeconds")}];
  [v3 setObject:v18 forKeyedSubscript:@"timeZoneSeconds"];

  v19 = [(IRSystemStateDO *)self outputDeviceName];
  [v3 setObject:v19 forKeyedSubscript:@"outputDeviceName"];

  v20 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[IRSystemStateDO outputDeviceType](self, "outputDeviceType")}];
  [v3 setObject:v20 forKeyedSubscript:@"outputDeviceType"];

  v21 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[IRSystemStateDO outputDeviceSubType](self, "outputDeviceSubType")}];
  [v3 setObject:v21 forKeyedSubscript:@"outputDeviceSubType"];

  v22 = [(IRSystemStateDO *)self predictedOutputDeviceName];
  [v3 setObject:v22 forKeyedSubscript:@"predictedOutputDeviceName"];

  v23 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[IRSystemStateDO predictedOutputDeviceType](self, "predictedOutputDeviceType")}];
  [v3 setObject:v23 forKeyedSubscript:@"predictedOutputDeviceType"];

  v24 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[IRSystemStateDO predictedOutputDeviceSubType](self, "predictedOutputDeviceSubType")}];
  [v3 setObject:v24 forKeyedSubscript:@"predictedOutputDeviceSubType"];

  v25 = [MEMORY[0x277CCABB0] numberWithBool:{-[IRSystemStateDO appInFocusWindowScreenUnlockEvent](self, "appInFocusWindowScreenUnlockEvent")}];
  [v3 setObject:v25 forKeyedSubscript:@"appInFocusWindowScreenUnlockEvent"];

  return v3;
}

- (BOOL)isMiLoSupportedLocation
{
  v3 = [(IRSystemStateDO *)self locationSemanticUserSpecificPlaceType];
  if (v3 != 1)
  {
    LOBYTE(v3) = [(IRSystemStateDO *)self locationSemanticUserSpecificPlaceType]== 5;
  }

  return v3;
}

- (id)overrideSystemStateIfNeeded:(id)a3
{
  v32 = a3;
  v30 = [IRSystemStateDO alloc];
  v29 = [(IRSystemStateDO *)self appInFocusBundleID];
  v28 = [(IRSystemStateDO *)self appInFocusWindowValid];
  v27 = [(IRSystemStateDO *)self deviceWiFiSSID];
  v26 = [(IRSystemStateDO *)self locationSemanticUserSpecificPlaceType];
  v25 = [(IRSystemStateDO *)self locationSemanticLoiIdentifier];
  v24 = [(IRSystemStateDO *)self iCloudId];
  v23 = [(IRSystemStateDO *)self avInitialRouteSharingPolicy];
  v22 = [(IRSystemStateDO *)self mediaRouteGroupLeaderOutputDeviceID];
  v21 = [(IRSystemStateDO *)self timeZoneSeconds];
  v4 = [(IRSystemStateDO *)self outputDeviceName];
  v20 = [(IRSystemStateDO *)self outputDeviceType];
  v5 = [(IRSystemStateDO *)self outputDeviceSubType];
  v6 = [(IRSystemStateDO *)self predictedOutputDeviceName];
  v7 = [(IRSystemStateDO *)self predictedOutputDeviceType];
  v8 = [(IRSystemStateDO *)self predictedOutputDeviceSubType];
  v9 = [(IRSystemStateDO *)self appInFocusWindowScreenUnlockEvent];
  v10 = [(IRSystemStateDO *)self pdrFenceActive];
  v11 = [(IRSystemStateDO *)self latestPickerChoiceDate];
  v12 = [(IRSystemStateDO *)self isContinuityDisplay];
  BYTE1(v19) = [(IRSystemStateDO *)self displayOn];
  LOBYTE(v19) = v12;
  BYTE1(v18) = v10;
  LOBYTE(v18) = v9;
  v31 = [IRSystemStateDO initWithAppInFocusBundleID:v30 appInFocusWindowValid:"initWithAppInFocusBundleID:appInFocusWindowValid:deviceWiFiSSID:locationSemanticUserSpecificPlaceType:locationSemanticLoiIdentifier:iCloudId:avInitialRouteSharingPolicy:mediaRouteGroupLeaderOutputDeviceID:timeZoneSeconds:outputDeviceName:outputDeviceType:outputDeviceSubType:predictedOutputDeviceName:predictedOutputDeviceType:predictedOutputDeviceSubType:appInFocusWindowScreenUnlockEvent:pdrFenceActive:latestPickerChoiceDate:isContinuityDisplay:displayOn:" deviceWiFiSSID:v29 locationSemanticUserSpecificPlaceType:v28 locationSemanticLoiIdentifier:v27 iCloudId:v26 avInitialRouteSharingPolicy:v25 mediaRouteGroupLeaderOutputDeviceID:v24 timeZoneSeconds:v23 outputDeviceName:v22 outputDeviceType:v21 outputDeviceSubType:v4 predictedOutputDeviceName:v20 predictedOutputDeviceType:v5 predictedOutputDeviceSubType:v6 appInFocusWindowScreenUnlockEvent:v7 pdrFenceActive:v8 latestPickerChoiceDate:v18 isContinuityDisplay:v11 displayOn:v19];

  if (v32)
  {
    if ([v32 overrideAppInFocusWindow])
    {
      v13 = [(IRSystemStateDO *)v31 copyWithReplacementAppInFocusWindowValid:1];
    }

    else
    {
      v13 = v31;
    }

    v14 = [v32 overrideBundleId];

    if (v14)
    {
      v15 = [v32 overrideBundleId];
      v16 = [v13 copyWithReplacementAppInFocusBundleID:v15];

      v13 = v16;
    }
  }

  else
  {
    v13 = v31;
  }

  return v13;
}

- (IRSystemStateDO)initWithAppInFocusBundleID:(id)a3 appInFocusWindowValid:(BOOL)a4 deviceWiFiSSID:(id)a5 locationSemanticUserSpecificPlaceType:(int)a6 locationSemanticLoiIdentifier:(id)a7 iCloudId:(id)a8 avInitialRouteSharingPolicy:(id)a9 mediaRouteGroupLeaderOutputDeviceID:(id)a10 timeZoneSeconds:(int64_t)a11 outputDeviceName:(id)a12 outputDeviceType:(unint64_t)a13 outputDeviceSubType:(unint64_t)a14 predictedOutputDeviceName:(id)a15 predictedOutputDeviceType:(unint64_t)a16 predictedOutputDeviceSubType:(unint64_t)a17 appInFocusWindowScreenUnlockEvent:(BOOL)a18 pdrFenceActive:(BOOL)a19 latestPickerChoiceDate:(id)a20 isContinuityDisplay:(BOOL)a21 displayOn:(BOOL)a22
{
  v42 = a3;
  obj = a5;
  v27 = a5;
  v38 = a7;
  v28 = a7;
  v41 = a8;
  v40 = a9;
  v39 = a10;
  v29 = a12;
  v30 = a15;
  v31 = a20;
  v43.receiver = self;
  v43.super_class = IRSystemStateDO;
  v32 = [(IRSystemStateDO *)&v43 init];
  v33 = v32;
  if (v32)
  {
    objc_storeStrong(&v32->_appInFocusBundleID, a3);
    v33->_appInFocusWindowValid = a4;
    objc_storeStrong(&v33->_deviceWiFiSSID, obj);
    v33->_locationSemanticUserSpecificPlaceType = a6;
    objc_storeStrong(&v33->_locationSemanticLoiIdentifier, v38);
    objc_storeStrong(&v33->_iCloudId, a8);
    objc_storeStrong(&v33->_avInitialRouteSharingPolicy, a9);
    objc_storeStrong(&v33->_mediaRouteGroupLeaderOutputDeviceID, a10);
    v33->_timeZoneSeconds = a11;
    objc_storeStrong(&v33->_outputDeviceName, a12);
    v33->_outputDeviceType = a13;
    v33->_outputDeviceSubType = a14;
    objc_storeStrong(&v33->_predictedOutputDeviceName, a15);
    v33->_predictedOutputDeviceType = a16;
    v33->_predictedOutputDeviceSubType = a17;
    v33->_appInFocusWindowScreenUnlockEvent = a18;
    v33->_pdrFenceActive = a19;
    objc_storeStrong(&v33->_latestPickerChoiceDate, a20);
    v33->_isContinuityDisplay = a21;
    v33->_displayOn = a22;
  }

  return v33;
}

+ (IRSystemStateDO)systemStateDOWithAppInFocusBundleID:(id)a3 appInFocusWindowValid:(BOOL)a4 deviceWiFiSSID:(id)a5 locationSemanticUserSpecificPlaceType:(int)a6 locationSemanticLoiIdentifier:(id)a7 iCloudId:(id)a8 avInitialRouteSharingPolicy:(id)a9 mediaRouteGroupLeaderOutputDeviceID:(id)a10 timeZoneSeconds:(int64_t)a11 outputDeviceName:(id)a12 outputDeviceType:(unint64_t)a13 outputDeviceSubType:(unint64_t)a14 predictedOutputDeviceName:(id)a15 predictedOutputDeviceType:(unint64_t)a16 predictedOutputDeviceSubType:(unint64_t)a17 appInFocusWindowScreenUnlockEvent:(BOOL)a18 pdrFenceActive:(BOOL)a19 latestPickerChoiceDate:(id)a20 isContinuityDisplay:(BOOL)a21 displayOn:(BOOL)a22
{
  v40 = a4;
  v26 = a20;
  v27 = a15;
  v28 = a12;
  v29 = a10;
  v30 = a9;
  v31 = a8;
  v32 = a7;
  v33 = a5;
  v34 = a3;
  LOWORD(v38) = __PAIR16__(a22, a21);
  LOWORD(v37) = __PAIR16__(a19, a18);
  v35 = [[a1 alloc] initWithAppInFocusBundleID:v34 appInFocusWindowValid:v40 deviceWiFiSSID:v33 locationSemanticUserSpecificPlaceType:a6 locationSemanticLoiIdentifier:v32 iCloudId:v31 avInitialRouteSharingPolicy:v30 mediaRouteGroupLeaderOutputDeviceID:v29 timeZoneSeconds:a11 outputDeviceName:v28 outputDeviceType:a13 outputDeviceSubType:a14 predictedOutputDeviceName:v27 predictedOutputDeviceType:a16 predictedOutputDeviceSubType:a17 appInFocusWindowScreenUnlockEvent:v37 pdrFenceActive:v26 latestPickerChoiceDate:v38 isContinuityDisplay:? displayOn:?];

  return v35;
}

- (id)copyWithReplacementAppInFocusBundleID:(id)a3
{
  v4 = a3;
  v5 = objc_alloc(objc_opt_class());
  v6 = *&self->_avInitialRouteSharingPolicy;
  v7 = *&self->_outputDeviceType;
  LOWORD(v11) = *&self->_isContinuityDisplay;
  LOWORD(v10) = *&self->_appInFocusWindowScreenUnlockEvent;
  v8 = [v5 initWithAppInFocusBundleID:v4 appInFocusWindowValid:self->_appInFocusWindowValid deviceWiFiSSID:self->_deviceWiFiSSID locationSemanticUserSpecificPlaceType:self->_locationSemanticUserSpecificPlaceType locationSemanticLoiIdentifier:self->_locationSemanticLoiIdentifier iCloudId:self->_iCloudId avInitialRouteSharingPolicy:self->_avInitialRouteSharingPolicy mediaRouteGroupLeaderOutputDeviceID:self->_mediaRouteGroupLeaderOutputDeviceID timeZoneSeconds:self->_timeZoneSeconds outputDeviceName:self->_outputDeviceName outputDeviceType:self->_outputDeviceType outputDeviceSubType:self->_outputDeviceSubType predictedOutputDeviceName:self->_predictedOutputDeviceName predictedOutputDeviceType:self->_predictedOutputDeviceType predictedOutputDeviceSubType:self->_predictedOutputDeviceSubType appInFocusWindowScreenUnlockEvent:v10 pdrFenceActive:self->_latestPickerChoiceDate latestPickerChoiceDate:v11 isContinuityDisplay:? displayOn:?];

  return v8;
}

- (id)copyWithReplacementDeviceWiFiSSID:(id)a3
{
  v4 = a3;
  v5 = objc_alloc(objc_opt_class());
  v6 = *&self->_avInitialRouteSharingPolicy;
  v7 = *&self->_outputDeviceType;
  LOWORD(v11) = *&self->_isContinuityDisplay;
  LOWORD(v10) = *&self->_appInFocusWindowScreenUnlockEvent;
  v8 = [v5 initWithAppInFocusBundleID:self->_appInFocusBundleID appInFocusWindowValid:self->_appInFocusWindowValid deviceWiFiSSID:v4 locationSemanticUserSpecificPlaceType:self->_locationSemanticUserSpecificPlaceType locationSemanticLoiIdentifier:self->_locationSemanticLoiIdentifier iCloudId:self->_iCloudId avInitialRouteSharingPolicy:self->_avInitialRouteSharingPolicy mediaRouteGroupLeaderOutputDeviceID:self->_mediaRouteGroupLeaderOutputDeviceID timeZoneSeconds:self->_timeZoneSeconds outputDeviceName:self->_outputDeviceName outputDeviceType:self->_outputDeviceType outputDeviceSubType:self->_outputDeviceSubType predictedOutputDeviceName:self->_predictedOutputDeviceName predictedOutputDeviceType:self->_predictedOutputDeviceType predictedOutputDeviceSubType:self->_predictedOutputDeviceSubType appInFocusWindowScreenUnlockEvent:v10 pdrFenceActive:self->_latestPickerChoiceDate latestPickerChoiceDate:v11 isContinuityDisplay:? displayOn:?];

  return v8;
}

- (id)copyWithReplacementLocationSemanticLoiIdentifier:(id)a3
{
  v4 = a3;
  v5 = objc_alloc(objc_opt_class());
  v6 = *&self->_avInitialRouteSharingPolicy;
  v7 = *&self->_outputDeviceType;
  LOWORD(v11) = *&self->_isContinuityDisplay;
  LOWORD(v10) = *&self->_appInFocusWindowScreenUnlockEvent;
  v8 = [v5 initWithAppInFocusBundleID:self->_appInFocusBundleID appInFocusWindowValid:self->_appInFocusWindowValid deviceWiFiSSID:self->_deviceWiFiSSID locationSemanticUserSpecificPlaceType:self->_locationSemanticUserSpecificPlaceType locationSemanticLoiIdentifier:v4 iCloudId:self->_iCloudId avInitialRouteSharingPolicy:self->_avInitialRouteSharingPolicy mediaRouteGroupLeaderOutputDeviceID:self->_mediaRouteGroupLeaderOutputDeviceID timeZoneSeconds:self->_timeZoneSeconds outputDeviceName:self->_outputDeviceName outputDeviceType:self->_outputDeviceType outputDeviceSubType:self->_outputDeviceSubType predictedOutputDeviceName:self->_predictedOutputDeviceName predictedOutputDeviceType:self->_predictedOutputDeviceType predictedOutputDeviceSubType:self->_predictedOutputDeviceSubType appInFocusWindowScreenUnlockEvent:v10 pdrFenceActive:self->_latestPickerChoiceDate latestPickerChoiceDate:v11 isContinuityDisplay:? displayOn:?];

  return v8;
}

- (id)copyWithReplacementICloudId:(id)a3
{
  v4 = a3;
  v5 = objc_alloc(objc_opt_class());
  v6 = *&self->_avInitialRouteSharingPolicy;
  v7 = *&self->_outputDeviceType;
  LOWORD(v11) = *&self->_isContinuityDisplay;
  LOWORD(v10) = *&self->_appInFocusWindowScreenUnlockEvent;
  v8 = [v5 initWithAppInFocusBundleID:self->_appInFocusBundleID appInFocusWindowValid:self->_appInFocusWindowValid deviceWiFiSSID:self->_deviceWiFiSSID locationSemanticUserSpecificPlaceType:self->_locationSemanticUserSpecificPlaceType locationSemanticLoiIdentifier:self->_locationSemanticLoiIdentifier iCloudId:v4 avInitialRouteSharingPolicy:self->_avInitialRouteSharingPolicy mediaRouteGroupLeaderOutputDeviceID:self->_mediaRouteGroupLeaderOutputDeviceID timeZoneSeconds:self->_timeZoneSeconds outputDeviceName:self->_outputDeviceName outputDeviceType:self->_outputDeviceType outputDeviceSubType:self->_outputDeviceSubType predictedOutputDeviceName:self->_predictedOutputDeviceName predictedOutputDeviceType:self->_predictedOutputDeviceType predictedOutputDeviceSubType:self->_predictedOutputDeviceSubType appInFocusWindowScreenUnlockEvent:v10 pdrFenceActive:self->_latestPickerChoiceDate latestPickerChoiceDate:v11 isContinuityDisplay:? displayOn:?];

  return v8;
}

- (id)copyWithReplacementAvInitialRouteSharingPolicy:(id)a3
{
  v4 = a3;
  v5 = objc_alloc(objc_opt_class());
  LOWORD(v9) = *&self->_isContinuityDisplay;
  LOWORD(v8) = *&self->_appInFocusWindowScreenUnlockEvent;
  v6 = [v5 initWithAppInFocusBundleID:self->_appInFocusBundleID appInFocusWindowValid:self->_appInFocusWindowValid deviceWiFiSSID:self->_deviceWiFiSSID locationSemanticUserSpecificPlaceType:self->_locationSemanticUserSpecificPlaceType locationSemanticLoiIdentifier:self->_locationSemanticLoiIdentifier iCloudId:self->_iCloudId avInitialRouteSharingPolicy:v4 mediaRouteGroupLeaderOutputDeviceID:self->_mediaRouteGroupLeaderOutputDeviceID timeZoneSeconds:self->_timeZoneSeconds outputDeviceName:self->_outputDeviceName outputDeviceType:self->_outputDeviceType outputDeviceSubType:self->_outputDeviceSubType predictedOutputDeviceName:self->_predictedOutputDeviceName predictedOutputDeviceType:self->_predictedOutputDeviceType predictedOutputDeviceSubType:self->_predictedOutputDeviceSubType appInFocusWindowScreenUnlockEvent:v8 pdrFenceActive:self->_latestPickerChoiceDate latestPickerChoiceDate:v9 isContinuityDisplay:? displayOn:?];

  return v6;
}

- (id)copyWithReplacementMediaRouteGroupLeaderOutputDeviceID:(id)a3
{
  v4 = a3;
  v5 = objc_alloc(objc_opt_class());
  v6 = *&self->_outputDeviceType;
  LOWORD(v10) = *&self->_isContinuityDisplay;
  LOWORD(v9) = *&self->_appInFocusWindowScreenUnlockEvent;
  v7 = [v5 initWithAppInFocusBundleID:self->_appInFocusBundleID appInFocusWindowValid:self->_appInFocusWindowValid deviceWiFiSSID:self->_deviceWiFiSSID locationSemanticUserSpecificPlaceType:self->_locationSemanticUserSpecificPlaceType locationSemanticLoiIdentifier:self->_locationSemanticLoiIdentifier iCloudId:self->_iCloudId avInitialRouteSharingPolicy:self->_avInitialRouteSharingPolicy mediaRouteGroupLeaderOutputDeviceID:v4 timeZoneSeconds:self->_timeZoneSeconds outputDeviceName:self->_outputDeviceName outputDeviceType:self->_outputDeviceType outputDeviceSubType:self->_outputDeviceSubType predictedOutputDeviceName:self->_predictedOutputDeviceName predictedOutputDeviceType:self->_predictedOutputDeviceType predictedOutputDeviceSubType:self->_predictedOutputDeviceSubType appInFocusWindowScreenUnlockEvent:v9 pdrFenceActive:self->_latestPickerChoiceDate latestPickerChoiceDate:v10 isContinuityDisplay:? displayOn:?];

  return v7;
}

- (id)copyWithReplacementTimeZoneSeconds:(int64_t)a3
{
  v5 = objc_alloc(objc_opt_class());
  LOWORD(v8) = *&self->_isContinuityDisplay;
  LOWORD(v7) = *&self->_appInFocusWindowScreenUnlockEvent;
  return [v5 initWithAppInFocusBundleID:self->_appInFocusBundleID appInFocusWindowValid:self->_appInFocusWindowValid deviceWiFiSSID:self->_deviceWiFiSSID locationSemanticUserSpecificPlaceType:self->_locationSemanticUserSpecificPlaceType locationSemanticLoiIdentifier:self->_locationSemanticLoiIdentifier iCloudId:self->_iCloudId avInitialRouteSharingPolicy:self->_avInitialRouteSharingPolicy mediaRouteGroupLeaderOutputDeviceID:self->_mediaRouteGroupLeaderOutputDeviceID timeZoneSeconds:a3 outputDeviceName:self->_outputDeviceName outputDeviceType:self->_outputDeviceType outputDeviceSubType:self->_outputDeviceSubType predictedOutputDeviceName:self->_predictedOutputDeviceName predictedOutputDeviceType:self->_predictedOutputDeviceType predictedOutputDeviceSubType:self->_predictedOutputDeviceSubType appInFocusWindowScreenUnlockEvent:v7 pdrFenceActive:self->_latestPickerChoiceDate latestPickerChoiceDate:v8 isContinuityDisplay:? displayOn:?];
}

- (id)copyWithReplacementOutputDeviceName:(id)a3
{
  v4 = a3;
  v5 = objc_alloc(objc_opt_class());
  v6 = *&self->_outputDeviceType;
  LOWORD(v10) = *&self->_isContinuityDisplay;
  LOWORD(v9) = *&self->_appInFocusWindowScreenUnlockEvent;
  v7 = [v5 initWithAppInFocusBundleID:self->_appInFocusBundleID appInFocusWindowValid:self->_appInFocusWindowValid deviceWiFiSSID:self->_deviceWiFiSSID locationSemanticUserSpecificPlaceType:self->_locationSemanticUserSpecificPlaceType locationSemanticLoiIdentifier:self->_locationSemanticLoiIdentifier iCloudId:self->_iCloudId avInitialRouteSharingPolicy:self->_avInitialRouteSharingPolicy mediaRouteGroupLeaderOutputDeviceID:self->_mediaRouteGroupLeaderOutputDeviceID timeZoneSeconds:self->_timeZoneSeconds outputDeviceName:v4 outputDeviceType:self->_outputDeviceType outputDeviceSubType:self->_outputDeviceSubType predictedOutputDeviceName:self->_predictedOutputDeviceName predictedOutputDeviceType:self->_predictedOutputDeviceType predictedOutputDeviceSubType:self->_predictedOutputDeviceSubType appInFocusWindowScreenUnlockEvent:v9 pdrFenceActive:self->_latestPickerChoiceDate latestPickerChoiceDate:v10 isContinuityDisplay:? displayOn:?];

  return v7;
}

- (id)copyWithReplacementOutputDeviceType:(unint64_t)a3
{
  v5 = objc_alloc(objc_opt_class());
  LOWORD(v8) = *&self->_isContinuityDisplay;
  LOWORD(v7) = *&self->_appInFocusWindowScreenUnlockEvent;
  return [v5 initWithAppInFocusBundleID:self->_appInFocusBundleID appInFocusWindowValid:self->_appInFocusWindowValid deviceWiFiSSID:self->_deviceWiFiSSID locationSemanticUserSpecificPlaceType:self->_locationSemanticUserSpecificPlaceType locationSemanticLoiIdentifier:self->_locationSemanticLoiIdentifier iCloudId:self->_iCloudId avInitialRouteSharingPolicy:self->_avInitialRouteSharingPolicy mediaRouteGroupLeaderOutputDeviceID:self->_mediaRouteGroupLeaderOutputDeviceID timeZoneSeconds:self->_timeZoneSeconds outputDeviceName:self->_outputDeviceName outputDeviceType:a3 outputDeviceSubType:self->_outputDeviceSubType predictedOutputDeviceName:self->_predictedOutputDeviceName predictedOutputDeviceType:self->_predictedOutputDeviceType predictedOutputDeviceSubType:self->_predictedOutputDeviceSubType appInFocusWindowScreenUnlockEvent:v7 pdrFenceActive:self->_latestPickerChoiceDate latestPickerChoiceDate:v8 isContinuityDisplay:? displayOn:?];
}

- (id)copyWithReplacementOutputDeviceSubType:(unint64_t)a3
{
  v5 = objc_alloc(objc_opt_class());
  v6 = *&self->_avInitialRouteSharingPolicy;
  LOWORD(v9) = *&self->_isContinuityDisplay;
  LOWORD(v8) = *&self->_appInFocusWindowScreenUnlockEvent;
  return [v5 initWithAppInFocusBundleID:self->_appInFocusBundleID appInFocusWindowValid:self->_appInFocusWindowValid deviceWiFiSSID:self->_deviceWiFiSSID locationSemanticUserSpecificPlaceType:self->_locationSemanticUserSpecificPlaceType locationSemanticLoiIdentifier:self->_locationSemanticLoiIdentifier iCloudId:self->_iCloudId avInitialRouteSharingPolicy:self->_avInitialRouteSharingPolicy mediaRouteGroupLeaderOutputDeviceID:self->_mediaRouteGroupLeaderOutputDeviceID timeZoneSeconds:self->_timeZoneSeconds outputDeviceName:self->_outputDeviceName outputDeviceType:self->_outputDeviceType outputDeviceSubType:a3 predictedOutputDeviceName:self->_predictedOutputDeviceName predictedOutputDeviceType:self->_predictedOutputDeviceType predictedOutputDeviceSubType:self->_predictedOutputDeviceSubType appInFocusWindowScreenUnlockEvent:v8 pdrFenceActive:self->_latestPickerChoiceDate latestPickerChoiceDate:v9 isContinuityDisplay:? displayOn:?];
}

- (id)copyWithReplacementPredictedOutputDeviceName:(id)a3
{
  v4 = a3;
  v5 = objc_alloc(objc_opt_class());
  v6 = *&self->_avInitialRouteSharingPolicy;
  LOWORD(v10) = *&self->_isContinuityDisplay;
  LOWORD(v9) = *&self->_appInFocusWindowScreenUnlockEvent;
  v7 = [v5 initWithAppInFocusBundleID:self->_appInFocusBundleID appInFocusWindowValid:self->_appInFocusWindowValid deviceWiFiSSID:self->_deviceWiFiSSID locationSemanticUserSpecificPlaceType:self->_locationSemanticUserSpecificPlaceType locationSemanticLoiIdentifier:self->_locationSemanticLoiIdentifier iCloudId:self->_iCloudId avInitialRouteSharingPolicy:self->_avInitialRouteSharingPolicy mediaRouteGroupLeaderOutputDeviceID:self->_mediaRouteGroupLeaderOutputDeviceID timeZoneSeconds:self->_timeZoneSeconds outputDeviceName:self->_outputDeviceName outputDeviceType:self->_outputDeviceType outputDeviceSubType:self->_outputDeviceSubType predictedOutputDeviceName:v4 predictedOutputDeviceType:self->_predictedOutputDeviceType predictedOutputDeviceSubType:self->_predictedOutputDeviceSubType appInFocusWindowScreenUnlockEvent:v9 pdrFenceActive:self->_latestPickerChoiceDate latestPickerChoiceDate:v10 isContinuityDisplay:? displayOn:?];

  return v7;
}

- (id)copyWithReplacementPredictedOutputDeviceType:(unint64_t)a3
{
  v5 = objc_alloc(objc_opt_class());
  v6 = *&self->_timeZoneSeconds;
  LOWORD(v9) = *&self->_isContinuityDisplay;
  LOWORD(v8) = *&self->_appInFocusWindowScreenUnlockEvent;
  return [v5 initWithAppInFocusBundleID:self->_appInFocusBundleID appInFocusWindowValid:self->_appInFocusWindowValid deviceWiFiSSID:self->_deviceWiFiSSID locationSemanticUserSpecificPlaceType:self->_locationSemanticUserSpecificPlaceType locationSemanticLoiIdentifier:self->_locationSemanticLoiIdentifier iCloudId:self->_iCloudId avInitialRouteSharingPolicy:self->_avInitialRouteSharingPolicy mediaRouteGroupLeaderOutputDeviceID:self->_mediaRouteGroupLeaderOutputDeviceID timeZoneSeconds:self->_timeZoneSeconds outputDeviceName:self->_outputDeviceName outputDeviceType:self->_outputDeviceType outputDeviceSubType:self->_outputDeviceSubType predictedOutputDeviceName:self->_predictedOutputDeviceName predictedOutputDeviceType:a3 predictedOutputDeviceSubType:self->_predictedOutputDeviceSubType appInFocusWindowScreenUnlockEvent:v8 pdrFenceActive:self->_latestPickerChoiceDate latestPickerChoiceDate:v9 isContinuityDisplay:? displayOn:?];
}

- (id)copyWithReplacementPredictedOutputDeviceSubType:(unint64_t)a3
{
  v5 = objc_alloc(objc_opt_class());
  v6 = *&self->_timeZoneSeconds;
  LOWORD(v9) = *&self->_isContinuityDisplay;
  LOWORD(v8) = *&self->_appInFocusWindowScreenUnlockEvent;
  return [v5 initWithAppInFocusBundleID:self->_appInFocusBundleID appInFocusWindowValid:self->_appInFocusWindowValid deviceWiFiSSID:self->_deviceWiFiSSID locationSemanticUserSpecificPlaceType:self->_locationSemanticUserSpecificPlaceType locationSemanticLoiIdentifier:self->_locationSemanticLoiIdentifier iCloudId:self->_iCloudId avInitialRouteSharingPolicy:self->_avInitialRouteSharingPolicy mediaRouteGroupLeaderOutputDeviceID:self->_mediaRouteGroupLeaderOutputDeviceID timeZoneSeconds:self->_timeZoneSeconds outputDeviceName:self->_outputDeviceName outputDeviceType:self->_outputDeviceType outputDeviceSubType:self->_outputDeviceSubType predictedOutputDeviceName:self->_predictedOutputDeviceName predictedOutputDeviceType:self->_predictedOutputDeviceType predictedOutputDeviceSubType:a3 appInFocusWindowScreenUnlockEvent:v8 pdrFenceActive:self->_latestPickerChoiceDate latestPickerChoiceDate:v9 isContinuityDisplay:? displayOn:?];
}

- (id)copyWithReplacementAppInFocusWindowScreenUnlockEvent:(BOOL)a3
{
  v5 = objc_alloc(objc_opt_class());
  v6 = *&self->_avInitialRouteSharingPolicy;
  v7 = *&self->_outputDeviceType;
  LOWORD(v10) = *&self->_isContinuityDisplay;
  BYTE1(v9) = self->_pdrFenceActive;
  LOBYTE(v9) = a3;
  return [v5 initWithAppInFocusBundleID:self->_appInFocusBundleID appInFocusWindowValid:self->_appInFocusWindowValid deviceWiFiSSID:self->_deviceWiFiSSID locationSemanticUserSpecificPlaceType:self->_locationSemanticUserSpecificPlaceType locationSemanticLoiIdentifier:self->_locationSemanticLoiIdentifier iCloudId:self->_iCloudId avInitialRouteSharingPolicy:self->_avInitialRouteSharingPolicy mediaRouteGroupLeaderOutputDeviceID:self->_mediaRouteGroupLeaderOutputDeviceID timeZoneSeconds:self->_timeZoneSeconds outputDeviceName:self->_outputDeviceName outputDeviceType:self->_outputDeviceType outputDeviceSubType:self->_outputDeviceSubType predictedOutputDeviceName:self->_predictedOutputDeviceName predictedOutputDeviceType:self->_predictedOutputDeviceType predictedOutputDeviceSubType:self->_predictedOutputDeviceSubType appInFocusWindowScreenUnlockEvent:v9 pdrFenceActive:self->_latestPickerChoiceDate latestPickerChoiceDate:v10 isContinuityDisplay:? displayOn:?];
}

- (id)copyWithReplacementPdrFenceActive:(BOOL)a3
{
  v5 = objc_alloc(objc_opt_class());
  v6 = *&self->_avInitialRouteSharingPolicy;
  v7 = *&self->_outputDeviceType;
  LOWORD(v10) = *&self->_isContinuityDisplay;
  BYTE1(v9) = a3;
  LOBYTE(v9) = self->_appInFocusWindowScreenUnlockEvent;
  return [v5 initWithAppInFocusBundleID:self->_appInFocusBundleID appInFocusWindowValid:self->_appInFocusWindowValid deviceWiFiSSID:self->_deviceWiFiSSID locationSemanticUserSpecificPlaceType:self->_locationSemanticUserSpecificPlaceType locationSemanticLoiIdentifier:self->_locationSemanticLoiIdentifier iCloudId:self->_iCloudId avInitialRouteSharingPolicy:self->_avInitialRouteSharingPolicy mediaRouteGroupLeaderOutputDeviceID:self->_mediaRouteGroupLeaderOutputDeviceID timeZoneSeconds:self->_timeZoneSeconds outputDeviceName:self->_outputDeviceName outputDeviceType:self->_outputDeviceType outputDeviceSubType:self->_outputDeviceSubType predictedOutputDeviceName:self->_predictedOutputDeviceName predictedOutputDeviceType:self->_predictedOutputDeviceType predictedOutputDeviceSubType:self->_predictedOutputDeviceSubType appInFocusWindowScreenUnlockEvent:v9 pdrFenceActive:self->_latestPickerChoiceDate latestPickerChoiceDate:v10 isContinuityDisplay:? displayOn:?];
}

- (id)copyWithReplacementLatestPickerChoiceDate:(id)a3
{
  v4 = a3;
  v5 = objc_alloc(objc_opt_class());
  v6 = *&self->_avInitialRouteSharingPolicy;
  v7 = *&self->_outputDeviceType;
  LOWORD(v11) = *&self->_isContinuityDisplay;
  LOWORD(v10) = *&self->_appInFocusWindowScreenUnlockEvent;
  v8 = [v5 initWithAppInFocusBundleID:self->_appInFocusBundleID appInFocusWindowValid:self->_appInFocusWindowValid deviceWiFiSSID:self->_deviceWiFiSSID locationSemanticUserSpecificPlaceType:self->_locationSemanticUserSpecificPlaceType locationSemanticLoiIdentifier:self->_locationSemanticLoiIdentifier iCloudId:self->_iCloudId avInitialRouteSharingPolicy:self->_avInitialRouteSharingPolicy mediaRouteGroupLeaderOutputDeviceID:self->_mediaRouteGroupLeaderOutputDeviceID timeZoneSeconds:self->_timeZoneSeconds outputDeviceName:self->_outputDeviceName outputDeviceType:self->_outputDeviceType outputDeviceSubType:self->_outputDeviceSubType predictedOutputDeviceName:self->_predictedOutputDeviceName predictedOutputDeviceType:self->_predictedOutputDeviceType predictedOutputDeviceSubType:self->_predictedOutputDeviceSubType appInFocusWindowScreenUnlockEvent:v10 pdrFenceActive:v4 latestPickerChoiceDate:v11 isContinuityDisplay:? displayOn:?];

  return v8;
}

- (id)copyWithReplacementIsContinuityDisplay:(BOOL)a3
{
  v5 = objc_alloc(objc_opt_class());
  v6 = *&self->_avInitialRouteSharingPolicy;
  v7 = *&self->_outputDeviceType;
  BYTE1(v10) = self->_displayOn;
  LOBYTE(v10) = a3;
  LOWORD(v9) = *&self->_appInFocusWindowScreenUnlockEvent;
  return [v5 initWithAppInFocusBundleID:self->_appInFocusBundleID appInFocusWindowValid:self->_appInFocusWindowValid deviceWiFiSSID:self->_deviceWiFiSSID locationSemanticUserSpecificPlaceType:self->_locationSemanticUserSpecificPlaceType locationSemanticLoiIdentifier:self->_locationSemanticLoiIdentifier iCloudId:self->_iCloudId avInitialRouteSharingPolicy:self->_avInitialRouteSharingPolicy mediaRouteGroupLeaderOutputDeviceID:self->_mediaRouteGroupLeaderOutputDeviceID timeZoneSeconds:self->_timeZoneSeconds outputDeviceName:self->_outputDeviceName outputDeviceType:self->_outputDeviceType outputDeviceSubType:self->_outputDeviceSubType predictedOutputDeviceName:self->_predictedOutputDeviceName predictedOutputDeviceType:self->_predictedOutputDeviceType predictedOutputDeviceSubType:self->_predictedOutputDeviceSubType appInFocusWindowScreenUnlockEvent:v9 pdrFenceActive:self->_latestPickerChoiceDate latestPickerChoiceDate:v10 isContinuityDisplay:? displayOn:?];
}

- (id)copyWithReplacementDisplayOn:(BOOL)a3
{
  v5 = objc_alloc(objc_opt_class());
  v6 = *&self->_avInitialRouteSharingPolicy;
  v7 = *&self->_outputDeviceType;
  BYTE1(v10) = a3;
  LOBYTE(v10) = self->_isContinuityDisplay;
  LOWORD(v9) = *&self->_appInFocusWindowScreenUnlockEvent;
  return [v5 initWithAppInFocusBundleID:self->_appInFocusBundleID appInFocusWindowValid:self->_appInFocusWindowValid deviceWiFiSSID:self->_deviceWiFiSSID locationSemanticUserSpecificPlaceType:self->_locationSemanticUserSpecificPlaceType locationSemanticLoiIdentifier:self->_locationSemanticLoiIdentifier iCloudId:self->_iCloudId avInitialRouteSharingPolicy:self->_avInitialRouteSharingPolicy mediaRouteGroupLeaderOutputDeviceID:self->_mediaRouteGroupLeaderOutputDeviceID timeZoneSeconds:self->_timeZoneSeconds outputDeviceName:self->_outputDeviceName outputDeviceType:self->_outputDeviceType outputDeviceSubType:self->_outputDeviceSubType predictedOutputDeviceName:self->_predictedOutputDeviceName predictedOutputDeviceType:self->_predictedOutputDeviceType predictedOutputDeviceSubType:self->_predictedOutputDeviceSubType appInFocusWindowScreenUnlockEvent:v9 pdrFenceActive:self->_latestPickerChoiceDate latestPickerChoiceDate:v10 isContinuityDisplay:? displayOn:?];
}

- (BOOL)isEqualToSystemStateDO:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (!v4)
  {
    goto LABEL_40;
  }

  v6 = self->_appInFocusBundleID == 0;
  v7 = [v4 appInFocusBundleID];
  v8 = v7 != 0;

  if (v6 == v8)
  {
    goto LABEL_40;
  }

  appInFocusBundleID = self->_appInFocusBundleID;
  if (appInFocusBundleID)
  {
    v10 = [v5 appInFocusBundleID];
    v11 = [(NSString *)appInFocusBundleID isEqual:v10];

    if (!v11)
    {
      goto LABEL_40;
    }
  }

  appInFocusWindowValid = self->_appInFocusWindowValid;
  if (appInFocusWindowValid != [v5 appInFocusWindowValid])
  {
    goto LABEL_40;
  }

  v13 = self->_deviceWiFiSSID == 0;
  v14 = [v5 deviceWiFiSSID];
  v15 = v14 != 0;

  if (v13 == v15)
  {
    goto LABEL_40;
  }

  deviceWiFiSSID = self->_deviceWiFiSSID;
  if (deviceWiFiSSID)
  {
    v17 = [v5 deviceWiFiSSID];
    v18 = [(NSString *)deviceWiFiSSID isEqual:v17];

    if (!v18)
    {
      goto LABEL_40;
    }
  }

  locationSemanticUserSpecificPlaceType = self->_locationSemanticUserSpecificPlaceType;
  if (locationSemanticUserSpecificPlaceType != [v5 locationSemanticUserSpecificPlaceType])
  {
    goto LABEL_40;
  }

  v20 = self->_locationSemanticLoiIdentifier == 0;
  v21 = [v5 locationSemanticLoiIdentifier];
  v22 = v21 != 0;

  if (v20 == v22)
  {
    goto LABEL_40;
  }

  locationSemanticLoiIdentifier = self->_locationSemanticLoiIdentifier;
  if (locationSemanticLoiIdentifier)
  {
    v24 = [v5 locationSemanticLoiIdentifier];
    v25 = [(NSString *)locationSemanticLoiIdentifier isEqual:v24];

    if (!v25)
    {
      goto LABEL_40;
    }
  }

  v26 = self->_iCloudId == 0;
  v27 = [v5 iCloudId];
  v28 = v27 != 0;

  if (v26 == v28)
  {
    goto LABEL_40;
  }

  iCloudId = self->_iCloudId;
  if (iCloudId)
  {
    v30 = [v5 iCloudId];
    v31 = [(NSString *)iCloudId isEqual:v30];

    if (!v31)
    {
      goto LABEL_40;
    }
  }

  v32 = self->_avInitialRouteSharingPolicy == 0;
  v33 = [v5 avInitialRouteSharingPolicy];
  v34 = v33 != 0;

  if (v32 == v34)
  {
    goto LABEL_40;
  }

  avInitialRouteSharingPolicy = self->_avInitialRouteSharingPolicy;
  if (avInitialRouteSharingPolicy)
  {
    v36 = [v5 avInitialRouteSharingPolicy];
    v37 = [(NSString *)avInitialRouteSharingPolicy isEqual:v36];

    if (!v37)
    {
      goto LABEL_40;
    }
  }

  v38 = self->_mediaRouteGroupLeaderOutputDeviceID == 0;
  v39 = [v5 mediaRouteGroupLeaderOutputDeviceID];
  v40 = v39 != 0;

  if (v38 == v40)
  {
    goto LABEL_40;
  }

  mediaRouteGroupLeaderOutputDeviceID = self->_mediaRouteGroupLeaderOutputDeviceID;
  if (mediaRouteGroupLeaderOutputDeviceID)
  {
    v42 = [v5 mediaRouteGroupLeaderOutputDeviceID];
    v43 = [(NSString *)mediaRouteGroupLeaderOutputDeviceID isEqual:v42];

    if (!v43)
    {
      goto LABEL_40;
    }
  }

  timeZoneSeconds = self->_timeZoneSeconds;
  if (timeZoneSeconds != [v5 timeZoneSeconds])
  {
    goto LABEL_40;
  }

  v45 = self->_outputDeviceName == 0;
  v46 = [v5 outputDeviceName];
  v47 = v46 != 0;

  if (v45 == v47)
  {
    goto LABEL_40;
  }

  outputDeviceName = self->_outputDeviceName;
  if (outputDeviceName)
  {
    v49 = [v5 outputDeviceName];
    v50 = [(NSString *)outputDeviceName isEqual:v49];

    if (!v50)
    {
      goto LABEL_40;
    }
  }

  outputDeviceType = self->_outputDeviceType;
  if (outputDeviceType != [v5 outputDeviceType])
  {
    goto LABEL_40;
  }

  outputDeviceSubType = self->_outputDeviceSubType;
  if (outputDeviceSubType != [v5 outputDeviceSubType])
  {
    goto LABEL_40;
  }

  v53 = self->_predictedOutputDeviceName == 0;
  v54 = [v5 predictedOutputDeviceName];
  v55 = v54 != 0;

  if (v53 == v55)
  {
    goto LABEL_40;
  }

  predictedOutputDeviceName = self->_predictedOutputDeviceName;
  if (predictedOutputDeviceName)
  {
    v57 = [v5 predictedOutputDeviceName];
    v58 = [(NSString *)predictedOutputDeviceName isEqual:v57];

    if (!v58)
    {
      goto LABEL_40;
    }
  }

  predictedOutputDeviceType = self->_predictedOutputDeviceType;
  if (predictedOutputDeviceType != [v5 predictedOutputDeviceType])
  {
    goto LABEL_40;
  }

  predictedOutputDeviceSubType = self->_predictedOutputDeviceSubType;
  if (predictedOutputDeviceSubType != [v5 predictedOutputDeviceSubType])
  {
    goto LABEL_40;
  }

  appInFocusWindowScreenUnlockEvent = self->_appInFocusWindowScreenUnlockEvent;
  if (appInFocusWindowScreenUnlockEvent != [v5 appInFocusWindowScreenUnlockEvent])
  {
    goto LABEL_40;
  }

  pdrFenceActive = self->_pdrFenceActive;
  if (pdrFenceActive != [v5 pdrFenceActive])
  {
    goto LABEL_40;
  }

  v63 = self->_latestPickerChoiceDate == 0;
  v64 = [v5 latestPickerChoiceDate];
  v65 = v64 != 0;

  if (v63 == v65)
  {
    goto LABEL_40;
  }

  latestPickerChoiceDate = self->_latestPickerChoiceDate;
  if (latestPickerChoiceDate)
  {
    v67 = [v5 latestPickerChoiceDate];
    v68 = [(NSDate *)latestPickerChoiceDate isEqual:v67];

    if (!v68)
    {
      goto LABEL_40;
    }
  }

  isContinuityDisplay = self->_isContinuityDisplay;
  if (isContinuityDisplay == [v5 isContinuityDisplay])
  {
    displayOn = self->_displayOn;
    v71 = displayOn == [v5 displayOn];
  }

  else
  {
LABEL_40:
    v71 = 0;
  }

  return v71;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(IRSystemStateDO *)self isEqualToSystemStateDO:v5];
  }

  return v6;
}

- (IRSystemStateDO)initWithCoder:(id)a3
{
  v156[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"appInFocusBundleID"];
  if (v5)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v6 = objc_opt_class();
      v7 = NSStringFromClass(v6);
      v8 = objc_opt_class();
      v9 = NSStringFromClass(v8);
      v10 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Unarchived unexpected class for IRSystemStateDO key appInFocusBundleID (expected %@, decoded %@)", v7, v9, 0];
      v155 = *MEMORY[0x277CCA450];
      v156[0] = v10;
      v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v156 forKeys:&v155 count:1];
      v12 = [objc_alloc(MEMORY[0x277CCA9B8]) initWithDomain:@"IRSystemStateDOOCNTErrorDomain" code:3 userInfo:v11];
      [v4 failWithError:v12];

LABEL_4:
      v13 = 0;
LABEL_39:

      goto LABEL_40;
    }
  }

  else
  {
    v14 = [v4 error];

    if (v14)
    {
      goto LABEL_12;
    }
  }

  v15 = [v4 decodeInt64ForKey:@"appInFocusWindowValid"];
  if (v15)
  {
    goto LABEL_7;
  }

  v22 = [v4 error];

  if (!v22)
  {
    if (([v4 containsValueForKey:@"appInFocusWindowValid"] & 1) == 0)
    {
      v153 = *MEMORY[0x277CCA450];
      v154 = @"Missing serialized value for IRSystemStateDO.appInFocusWindowValid";
      v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v154 forKeys:&v153 count:1];
      v9 = [objc_alloc(MEMORY[0x277CCA9B8]) initWithDomain:@"IRSystemStateDOOCNTErrorDomain" code:1 userInfo:v7];
      [v4 failWithError:v9];
      goto LABEL_4;
    }

LABEL_7:
    v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"deviceWiFiSSID"];
    if (v7)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v16 = objc_opt_class();
        v9 = NSStringFromClass(v16);
        v17 = objc_opt_class();
        v18 = NSStringFromClass(v17);
        v19 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Unarchived unexpected class for IRSystemStateDO key deviceWiFiSSID (expected %@, decoded %@)", v9, v18, 0];
        v151 = *MEMORY[0x277CCA450];
        v152 = v19;
        v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v152 forKeys:&v151 count:1];
        v21 = [objc_alloc(MEMORY[0x277CCA9B8]) initWithDomain:@"IRSystemStateDOOCNTErrorDomain" code:3 userInfo:v20];
        [v4 failWithError:v21];

LABEL_10:
        v13 = 0;
LABEL_38:

        goto LABEL_39;
      }
    }

    else
    {
      v23 = [v4 error];

      if (v23)
      {
        goto LABEL_21;
      }
    }

    v24 = [v4 decodeInt64ForKey:@"locationSemanticUserSpecificPlaceType"];
    if (v24)
    {
      goto LABEL_15;
    }

    v30 = [v4 error];

    if (!v30)
    {
      if (([v4 containsValueForKey:@"locationSemanticUserSpecificPlaceType"] & 1) == 0)
      {
        v149 = *MEMORY[0x277CCA450];
        v150 = @"Missing serialized value for IRSystemStateDO.locationSemanticUserSpecificPlaceType";
        v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v150 forKeys:&v149 count:1];
        v18 = [objc_alloc(MEMORY[0x277CCA9B8]) initWithDomain:@"IRSystemStateDOOCNTErrorDomain" code:1 userInfo:v9];
        [v4 failWithError:v18];
        goto LABEL_10;
      }

LABEL_15:
      v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"locationSemanticLoiIdentifier"];
      if (v9)
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          v25 = objc_opt_class();
          v18 = NSStringFromClass(v25);
          v26 = objc_opt_class();
          v116 = NSStringFromClass(v26);
          v27 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Unarchived unexpected class for IRSystemStateDO key locationSemanticLoiIdentifier (expected %@, decoded %@)", v18, v116, 0];
          v147 = *MEMORY[0x277CCA450];
          v148 = v27;
          v28 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v148 forKeys:&v147 count:1];
          v29 = [objc_alloc(MEMORY[0x277CCA9B8]) initWithDomain:@"IRSystemStateDOOCNTErrorDomain" code:3 userInfo:v28];
          [v4 failWithError:v29];
LABEL_33:
          v13 = 0;
LABEL_34:

          v37 = v116;
LABEL_35:

LABEL_36:
LABEL_37:

          goto LABEL_38;
        }
      }

      else
      {
        v31 = [v4 error];

        if (v31)
        {
          goto LABEL_4;
        }
      }

      v18 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"iCloudId"];
      if (v18)
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          v32 = objc_opt_class();
          v33 = NSStringFromClass(v32);
          v34 = objc_opt_class();
          v27 = NSStringFromClass(v34);
          v116 = v33;
          v28 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Unarchived unexpected class for IRSystemStateDO key iCloudId (expected %@, decoded %@)", v33, v27, 0];
          v145 = *MEMORY[0x277CCA450];
          v146 = v28;
          v29 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v146 forKeys:&v145 count:1];
          v35 = [objc_alloc(MEMORY[0x277CCA9B8]) initWithDomain:@"IRSystemStateDOOCNTErrorDomain" code:3 userInfo:v29];
          [v4 failWithError:v35];
LABEL_32:

          goto LABEL_33;
        }
      }

      else
      {
        v36 = [v4 error];

        if (v36)
        {
          goto LABEL_10;
        }
      }

      v110 = v24;
      v37 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"avInitialRouteSharingPolicy"];
      if (v37)
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          v38 = objc_opt_class();
          v114 = NSStringFromClass(v38);
          v116 = v37;
          v39 = objc_opt_class();
          v28 = NSStringFromClass(v39);
          v29 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Unarchived unexpected class for IRSystemStateDO key avInitialRouteSharingPolicy (expected %@, decoded %@)", v114, v28, 0];
          v143 = *MEMORY[0x277CCA450];
          v144 = v29;
          v35 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v144 forKeys:&v143 count:1];
          v40 = [objc_alloc(MEMORY[0x277CCA9B8]) initWithDomain:@"IRSystemStateDOOCNTErrorDomain" code:3 userInfo:v35];
          [v4 failWithError:v40];

          v27 = v114;
          goto LABEL_32;
        }
      }

      else
      {
        v43 = [v4 error];

        if (v43)
        {
          v13 = 0;
          goto LABEL_37;
        }
      }

      v116 = v37;
      v115 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"mediaRouteGroupLeaderOutputDeviceID"];
      if (v115)
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          v44 = objc_opt_class();
          v28 = NSStringFromClass(v44);
          v45 = objc_opt_class();
          v29 = NSStringFromClass(v45);
          v111 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Unarchived unexpected class for IRSystemStateDO key mediaRouteGroupLeaderOutputDeviceID (expected %@, decoded %@)", v28, v29, 0];
          v141 = *MEMORY[0x277CCA450];
          v142 = v111;
          v46 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v142 forKeys:&v141 count:1];
          v47 = [objc_alloc(MEMORY[0x277CCA9B8]) initWithDomain:@"IRSystemStateDOOCNTErrorDomain" code:3 userInfo:v46];
          [v4 failWithError:v47];

          v27 = v115;
          goto LABEL_33;
        }
      }

      else
      {
        v48 = [v4 error];

        if (v48)
        {
          v13 = 0;
          v27 = 0;
          goto LABEL_36;
        }
      }

      v106 = [v4 decodeInt64ForKey:@"timeZoneSeconds"];
      if (!v106)
      {
        v56 = [v4 error];

        if (v56)
        {
          v13 = 0;
          v27 = v115;
          goto LABEL_36;
        }

        if (([v4 containsValueForKey:@"timeZoneSeconds"] & 1) == 0)
        {
          v139 = *MEMORY[0x277CCA450];
          v140 = @"Missing serialized value for IRSystemStateDO.timeZoneSeconds";
          v28 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v140 forKeys:&v139 count:1];
          v29 = [objc_alloc(MEMORY[0x277CCA9B8]) initWithDomain:@"IRSystemStateDOOCNTErrorDomain" code:1 userInfo:v28];
          [v4 failWithError:v29];
          v13 = 0;
          v27 = v115;
          goto LABEL_34;
        }
      }

      v109 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"outputDeviceName"];
      if (v109)
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          v49 = objc_opt_class();
          v50 = NSStringFromClass(v49);
          v28 = v109;
          v51 = objc_opt_class();
          v102 = NSStringFromClass(v51);
          v105 = v50;
          v52 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Unarchived unexpected class for IRSystemStateDO key outputDeviceName (expected %@, decoded %@)", v50, v102, 0];
          v137 = *MEMORY[0x277CCA450];
          v138 = v52;
          v53 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v138 forKeys:&v137 count:1];
          v54 = [objc_alloc(MEMORY[0x277CCA9B8]) initWithDomain:@"IRSystemStateDOOCNTErrorDomain" code:3 userInfo:v53];
          [v4 failWithError:v54];

          v55 = v102;
LABEL_53:
          v13 = 0;
          v27 = v115;
LABEL_54:

LABEL_55:
          v29 = v105;
          goto LABEL_34;
        }
      }

      else
      {
        v57 = [v4 error];

        if (v57)
        {
          goto LABEL_70;
        }
      }

      v101 = [v4 decodeInt64ForKey:@"outputDeviceType"];
      if (!v101)
      {
        v62 = [v4 error];

        if (v62)
        {
          goto LABEL_70;
        }

        if (([v4 containsValueForKey:@"outputDeviceType"] & 1) == 0)
        {
          v135 = *MEMORY[0x277CCA450];
          v136 = @"Missing serialized value for IRSystemStateDO.outputDeviceType";
          v63 = MEMORY[0x277CBEAC0];
          v64 = &v136;
          v65 = &v135;
          goto LABEL_81;
        }
      }

      v100 = [v4 decodeInt64ForKey:@"outputDeviceSubType"];
      if (v100)
      {
        goto LABEL_61;
      }

      v66 = [v4 error];

      if (!v66)
      {
        if ([v4 containsValueForKey:@"outputDeviceSubType"])
        {
LABEL_61:
          v105 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"predictedOutputDeviceName"];
          if (v105)
          {
            objc_opt_class();
            v28 = v109;
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              v58 = objc_opt_class();
              v55 = NSStringFromClass(v58);
              v59 = objc_opt_class();
              v112 = NSStringFromClass(v59);
              v107 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Unarchived unexpected class for IRSystemStateDO key predictedOutputDeviceName (expected %@, decoded %@)", v55, v112, 0];
              v131 = *MEMORY[0x277CCA450];
              v132 = v107;
              v60 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v132 forKeys:&v131 count:1];
              v61 = [objc_alloc(MEMORY[0x277CCA9B8]) initWithDomain:@"IRSystemStateDOOCNTErrorDomain" code:3 userInfo:v60];
              [v4 failWithError:v61];

              goto LABEL_53;
            }
          }

          else
          {
            v67 = [v4 error];

            v28 = v109;
            if (v67)
            {
              goto LABEL_90;
            }
          }

          v68 = [v4 decodeInt64ForKey:@"predictedOutputDeviceType"];
          if (!v68)
          {
            v104 = [v4 error];

            if (v104)
            {
              goto LABEL_90;
            }

            if (([v4 containsValueForKey:@"predictedOutputDeviceType"] & 1) == 0)
            {
              v129 = *MEMORY[0x277CCA450];
              v130 = @"Missing serialized value for IRSystemStateDO.predictedOutputDeviceType";
              v74 = MEMORY[0x277CBEAC0];
              v75 = &v130;
              v76 = &v129;
              goto LABEL_99;
            }
          }

          v98 = [v4 decodeInt64ForKey:@"predictedOutputDeviceSubType"];
          v99 = v68;
          if (!v98)
          {
            v77 = [v4 error];

            if (v77)
            {
              goto LABEL_90;
            }

            if (([v4 containsValueForKey:@"predictedOutputDeviceSubType"] & 1) == 0)
            {
              v127 = *MEMORY[0x277CCA450];
              v128 = @"Missing serialized value for IRSystemStateDO.predictedOutputDeviceSubType";
              v74 = MEMORY[0x277CBEAC0];
              v75 = &v128;
              v76 = &v127;
              goto LABEL_99;
            }
          }

          v97 = [v4 decodeInt64ForKey:@"appInFocusWindowScreenUnlockEvent"];
          if (v97)
          {
LABEL_75:
            v96 = [v4 decodeInt64ForKey:@"pdrFenceActive"];
            if (!v96)
            {
              v79 = [v4 error];

              if (v79)
              {
                v13 = 0;
                v27 = v115;
                v28 = v109;
                goto LABEL_55;
              }

              if (([v4 containsValueForKey:@"pdrFenceActive"] & 1) == 0)
              {
                v123 = *MEMORY[0x277CCA450];
                v124 = @"Missing serialized value for IRSystemStateDO.pdrFenceActive";
                v55 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v124 forKeys:&v123 count:1];
                v86 = [objc_alloc(MEMORY[0x277CCA9B8]) initWithDomain:@"IRSystemStateDOOCNTErrorDomain" code:1 userInfo:v55];
                [v4 failWithError:v86];

                goto LABEL_82;
              }
            }

            v103 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"latestPickerChoiceDate"];
            if (v103)
            {
              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) == 0)
              {
                v69 = objc_opt_class();
                v113 = NSStringFromClass(v69);
                v55 = v103;
                v70 = objc_opt_class();
                v108 = NSStringFromClass(v70);
                v71 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Unarchived unexpected class for IRSystemStateDO key latestPickerChoiceDate (expected %@, decoded %@)", v113, v108, 0];
                v121 = *MEMORY[0x277CCA450];
                v122 = v71;
                v72 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v122 forKeys:&v121 count:1];
                v73 = [objc_alloc(MEMORY[0x277CCA9B8]) initWithDomain:@"IRSystemStateDOOCNTErrorDomain" code:3 userInfo:v72];
                [v4 failWithError:v73];

LABEL_82:
                v13 = 0;
                v27 = v115;
                v28 = v109;
                goto LABEL_54;
              }
            }

            else
            {
              v80 = [v4 error];

              if (v80)
              {
                goto LABEL_109;
              }
            }

            v81 = [v4 decodeInt64ForKey:@"isContinuityDisplay"];
            if (!v81)
            {
              v87 = [v4 error];

              if (v87)
              {
                goto LABEL_109;
              }

              if (([v4 containsValueForKey:@"isContinuityDisplay"] & 1) == 0)
              {
                v119 = *MEMORY[0x277CCA450];
                v120 = @"Missing serialized value for IRSystemStateDO.isContinuityDisplay";
                v88 = MEMORY[0x277CBEAC0];
                v89 = &v120;
                v90 = &v119;
LABEL_108:
                v92 = [v88 dictionaryWithObjects:v89 forKeys:v90 count:1];
                v93 = [objc_alloc(MEMORY[0x277CCA9B8]) initWithDomain:@"IRSystemStateDOOCNTErrorDomain" code:1 userInfo:v92];
                [v4 failWithError:v93];

                goto LABEL_109;
              }
            }

            v82 = [v4 decodeInt64ForKey:@"displayOn"];
            if (v82)
            {
LABEL_96:
              v83 = v82 != 0;
              v84 = v81 != 0;
              v55 = v103;
              v28 = v109;
              v27 = v115;
              BYTE1(v95) = v83;
              LOBYTE(v95) = v84;
              BYTE1(v94) = v96 != 0;
              LOBYTE(v94) = v97 != 0;
              self = [IRSystemStateDO initWithAppInFocusBundleID:"initWithAppInFocusBundleID:appInFocusWindowValid:deviceWiFiSSID:locationSemanticUserSpecificPlaceType:locationSemanticLoiIdentifier:iCloudId:avInitialRouteSharingPolicy:mediaRouteGroupLeaderOutputDeviceID:timeZoneSeconds:outputDeviceName:outputDeviceType:outputDeviceSubType:predictedOutputDeviceName:predictedOutputDeviceType:predictedOutputDeviceSubType:appInFocusWindowScreenUnlockEvent:pdrFenceActive:latestPickerChoiceDate:isContinuityDisplay:displayOn:" appInFocusWindowValid:v5 deviceWiFiSSID:v15 != 0 locationSemanticUserSpecificPlaceType:v7 locationSemanticLoiIdentifier:v110 iCloudId:v9 avInitialRouteSharingPolicy:v18 mediaRouteGroupLeaderOutputDeviceID:v116 timeZoneSeconds:v115 outputDeviceName:v106 outputDeviceType:v109 outputDeviceSubType:v101 predictedOutputDeviceName:v100 predictedOutputDeviceType:v105 predictedOutputDeviceSubType:v99 appInFocusWindowScreenUnlockEvent:v98 pdrFenceActive:v94 latestPickerChoiceDate:v103 isContinuityDisplay:v95 displayOn:?];
              v13 = self;
              goto LABEL_54;
            }

            v91 = [v4 error];

            if (!v91)
            {
              if ([v4 containsValueForKey:@"displayOn"])
              {
                goto LABEL_96;
              }

              v117 = *MEMORY[0x277CCA450];
              v118 = @"Missing serialized value for IRSystemStateDO.displayOn";
              v88 = MEMORY[0x277CBEAC0];
              v89 = &v118;
              v90 = &v117;
              goto LABEL_108;
            }

LABEL_109:
            v13 = 0;
            v27 = v115;
            v28 = v109;
            v55 = v103;
            goto LABEL_54;
          }

          v78 = [v4 error];

          if (!v78)
          {
            if ([v4 containsValueForKey:@"appInFocusWindowScreenUnlockEvent"])
            {
              goto LABEL_75;
            }

            v125 = *MEMORY[0x277CCA450];
            v126 = @"Missing serialized value for IRSystemStateDO.appInFocusWindowScreenUnlockEvent";
            v74 = MEMORY[0x277CBEAC0];
            v75 = &v126;
            v76 = &v125;
LABEL_99:
            v55 = [v74 dictionaryWithObjects:v75 forKeys:v76 count:1];
            v85 = [objc_alloc(MEMORY[0x277CCA9B8]) initWithDomain:@"IRSystemStateDOOCNTErrorDomain" code:1 userInfo:v55];
            [v4 failWithError:v85];

            goto LABEL_53;
          }

LABEL_90:
          v13 = 0;
          v27 = v115;
          goto LABEL_55;
        }

        v133 = *MEMORY[0x277CCA450];
        v134 = @"Missing serialized value for IRSystemStateDO.outputDeviceSubType";
        v63 = MEMORY[0x277CBEAC0];
        v64 = &v134;
        v65 = &v133;
LABEL_81:
        v105 = [v63 dictionaryWithObjects:v64 forKeys:v65 count:1];
        v55 = [objc_alloc(MEMORY[0x277CCA9B8]) initWithDomain:@"IRSystemStateDOOCNTErrorDomain" code:1 userInfo:v105];
        [v4 failWithError:v55];
        goto LABEL_82;
      }

LABEL_70:
      v13 = 0;
      v27 = v115;
      v28 = v109;
      goto LABEL_35;
    }

LABEL_21:
    v13 = 0;
LABEL_40:

    goto LABEL_41;
  }

LABEL_12:
  v13 = 0;
LABEL_41:

  v41 = *MEMORY[0x277D85DE8];
  return v13;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  appInFocusBundleID = self->_appInFocusBundleID;
  v15 = v4;
  if (appInFocusBundleID)
  {
    [v4 encodeObject:appInFocusBundleID forKey:@"appInFocusBundleID"];
    v4 = v15;
  }

  [v4 encodeInt64:self->_appInFocusWindowValid forKey:@"appInFocusWindowValid"];
  deviceWiFiSSID = self->_deviceWiFiSSID;
  if (deviceWiFiSSID)
  {
    [v15 encodeObject:deviceWiFiSSID forKey:@"deviceWiFiSSID"];
  }

  [v15 encodeInt64:self->_locationSemanticUserSpecificPlaceType forKey:@"locationSemanticUserSpecificPlaceType"];
  locationSemanticLoiIdentifier = self->_locationSemanticLoiIdentifier;
  if (locationSemanticLoiIdentifier)
  {
    [v15 encodeObject:locationSemanticLoiIdentifier forKey:@"locationSemanticLoiIdentifier"];
  }

  iCloudId = self->_iCloudId;
  if (iCloudId)
  {
    [v15 encodeObject:iCloudId forKey:@"iCloudId"];
  }

  avInitialRouteSharingPolicy = self->_avInitialRouteSharingPolicy;
  v10 = v15;
  if (avInitialRouteSharingPolicy)
  {
    [v15 encodeObject:avInitialRouteSharingPolicy forKey:@"avInitialRouteSharingPolicy"];
    v10 = v15;
  }

  mediaRouteGroupLeaderOutputDeviceID = self->_mediaRouteGroupLeaderOutputDeviceID;
  if (mediaRouteGroupLeaderOutputDeviceID)
  {
    [v15 encodeObject:mediaRouteGroupLeaderOutputDeviceID forKey:@"mediaRouteGroupLeaderOutputDeviceID"];
    v10 = v15;
  }

  [v10 encodeInt64:self->_timeZoneSeconds forKey:@"timeZoneSeconds"];
  outputDeviceName = self->_outputDeviceName;
  if (outputDeviceName)
  {
    [v15 encodeObject:outputDeviceName forKey:@"outputDeviceName"];
  }

  [v15 encodeInt64:self->_outputDeviceType forKey:@"outputDeviceType"];
  [v15 encodeInt64:self->_outputDeviceSubType forKey:@"outputDeviceSubType"];
  predictedOutputDeviceName = self->_predictedOutputDeviceName;
  if (predictedOutputDeviceName)
  {
    [v15 encodeObject:predictedOutputDeviceName forKey:@"predictedOutputDeviceName"];
  }

  [v15 encodeInt64:self->_predictedOutputDeviceType forKey:@"predictedOutputDeviceType"];
  [v15 encodeInt64:self->_predictedOutputDeviceSubType forKey:@"predictedOutputDeviceSubType"];
  [v15 encodeInt64:self->_appInFocusWindowScreenUnlockEvent forKey:@"appInFocusWindowScreenUnlockEvent"];
  [v15 encodeInt64:self->_pdrFenceActive forKey:@"pdrFenceActive"];
  latestPickerChoiceDate = self->_latestPickerChoiceDate;
  if (latestPickerChoiceDate)
  {
    [v15 encodeObject:latestPickerChoiceDate forKey:@"latestPickerChoiceDate"];
  }

  [v15 encodeInt64:self->_isContinuityDisplay forKey:@"isContinuityDisplay"];
  [v15 encodeInt64:self->_displayOn forKey:@"displayOn"];
}

- (id)description
{
  v3 = objc_alloc(MEMORY[0x277CCACA8]);
  appInFocusBundleID = self->_appInFocusBundleID;
  v25 = v3;
  v4 = [MEMORY[0x277CCABB0] numberWithBool:self->_appInFocusWindowValid];
  deviceWiFiSSID = self->_deviceWiFiSSID;
  v23 = v4;
  v21 = [MEMORY[0x277CCABB0] numberWithInt:self->_locationSemanticUserSpecificPlaceType];
  v20 = *&self->_locationSemanticLoiIdentifier;
  mediaRouteGroupLeaderOutputDeviceID = self->_mediaRouteGroupLeaderOutputDeviceID;
  avInitialRouteSharingPolicy = self->_avInitialRouteSharingPolicy;
  v17 = [MEMORY[0x277CCABB0] numberWithLongLong:self->_timeZoneSeconds];
  outputDeviceName = self->_outputDeviceName;
  v14 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_outputDeviceType];
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_outputDeviceSubType];
  predictedOutputDeviceName = self->_predictedOutputDeviceName;
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_predictedOutputDeviceType];
  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_predictedOutputDeviceSubType];
  v8 = [MEMORY[0x277CCABB0] numberWithBool:self->_appInFocusWindowScreenUnlockEvent];
  v9 = [MEMORY[0x277CCABB0] numberWithBool:self->_pdrFenceActive];
  latestPickerChoiceDate = self->_latestPickerChoiceDate;
  v11 = [MEMORY[0x277CCABB0] numberWithBool:self->_isContinuityDisplay];
  v12 = [MEMORY[0x277CCABB0] numberWithBool:self->_displayOn];
  v26 = [v25 initWithFormat:@"<IRSystemStateDO | appInFocusBundleID:%@ appInFocusWindowValid:%@ deviceWiFiSSID:%@ locationSemanticUserSpecificPlaceType:%@ locationSemanticLoiIdentifier:%@ iCloudId:%@ avInitialRouteSharingPolicy:%@ mediaRouteGroupLeaderOutputDeviceID:%@ timeZoneSeconds:%@ outputDeviceName:%@ outputDeviceType:%@ outputDeviceSubType:%@ predictedOutputDeviceName:%@ predictedOutputDeviceType:%@ predictedOutputDeviceSubType:%@ appInFocusWindowScreenUnlockEvent:%@ pdrFenceActive:%@ latestPickerChoiceDate:%@ isContinuityDisplay:%@ displayOn:%@>", appInFocusBundleID, v23, deviceWiFiSSID, v21, v20, avInitialRouteSharingPolicy, mediaRouteGroupLeaderOutputDeviceID, v17, outputDeviceName, v14, v5, predictedOutputDeviceName, v6, v7, v8, v9, latestPickerChoiceDate, v11, v12];

  return v26;
}

@end