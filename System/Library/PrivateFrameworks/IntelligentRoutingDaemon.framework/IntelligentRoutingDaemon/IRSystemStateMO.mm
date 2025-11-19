@interface IRSystemStateMO
+ (IRSystemStateMO)systemStateMOWithSystemStateDO:(id)a3 historyEventMO:(id)a4 inManagedObjectContext:(id)a5;
+ (IRSystemStateMO)systemStateMOWithSystemStateDO:(id)a3 replayEventMO:(id)a4 inManagedObjectContext:(id)a5;
+ (void)setPropertiesOfSystemStateMO:(id)a3 withSystemState:(id)a4;
- (id)convert;
@end

@implementation IRSystemStateMO

+ (IRSystemStateMO)systemStateMOWithSystemStateDO:(id)a3 historyEventMO:(id)a4 inManagedObjectContext:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = a3;
  v10 = [[IRSystemStateMO alloc] initWithContext:v7];

  [(IRSystemStateMO *)v10 setHistoryEvent:v8];
  [IRSystemStateMO setPropertiesOfSystemStateMO:v10 withSystemState:v9];

  return v10;
}

+ (IRSystemStateMO)systemStateMOWithSystemStateDO:(id)a3 replayEventMO:(id)a4 inManagedObjectContext:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = a3;
  v10 = [[IRSystemStateMO alloc] initWithContext:v7];

  [(IRSystemStateMO *)v10 setReplayEvent:v8];
  [IRSystemStateMO setPropertiesOfSystemStateMO:v10 withSystemState:v9];

  return v10;
}

+ (void)setPropertiesOfSystemStateMO:(id)a3 withSystemState:(id)a4
{
  v5 = a4;
  v16 = a3;
  v6 = [v5 appInFocusBundleID];
  [v16 setAppInFocusBundleID:v6];

  [v16 setAppInFocusWindowValid:{objc_msgSend(v5, "appInFocusWindowValid")}];
  v7 = [v5 deviceWiFiSSID];
  [v16 setDeviceWiFiSSID:v7];

  [v16 setLocationSemanticUserSpecificPlaceType:{objc_msgSend(v5, "locationSemanticUserSpecificPlaceType")}];
  v8 = [v5 iCloudId];
  [v16 setICloudId:v8];

  v9 = [v5 locationSemanticLoiIdentifier];
  [v16 setLocationSemanticLoiIdentifier:v9];

  v10 = [v5 avInitialRouteSharingPolicy];
  [v16 setAvInitialRouteSharingPolicy:v10];

  v11 = [v5 mediaRouteGroupLeaderOutputDeviceID];
  [v16 setMediaRouteGroupLeaderOutputDeviceID:v11];

  [v16 setTimeZoneSeconds:{objc_msgSend(v5, "timeZoneSeconds")}];
  v12 = [v5 outputDeviceName];
  [v16 setOutputDeviceName:v12];

  [v16 setOutputDeviceType:{objc_msgSend(v5, "outputDeviceType")}];
  [v16 setOutputDeviceSubType:{objc_msgSend(v5, "outputDeviceSubType")}];
  v13 = [v5 predictedOutputDeviceName];
  [v16 setPredictedOutputDeviceName:v13];

  [v16 setPredictedOutputDeviceType:{objc_msgSend(v5, "predictedOutputDeviceType")}];
  [v16 setPredictedOutputDeviceSubType:{objc_msgSend(v5, "predictedOutputDeviceSubType")}];
  [v16 setAppInFocusWindowScreenUnlockEvent:{objc_msgSend(v5, "appInFocusWindowScreenUnlockEvent")}];
  [v16 setPdrFenceActive:{objc_msgSend(v5, "pdrFenceActive")}];
  v14 = [v5 latestPickerChoiceDate];
  [v16 setLatestPickerChoiceDate:v14];

  [v16 setIsContinuityDisplay:{objc_msgSend(v5, "isContinuityDisplay")}];
  v15 = [v5 displayOn];

  [v16 setDisplayOn:v15];
}

- (id)convert
{
  v25 = [(IRSystemStateMO *)self appInFocusBundleID];
  v24 = [(IRSystemStateMO *)self appInFocusWindowValid];
  v23 = [(IRSystemStateMO *)self deviceWiFiSSID];
  v22 = [(IRSystemStateMO *)self locationSemanticUserSpecificPlaceType];
  v21 = [(IRSystemStateMO *)self locationSemanticLoiIdentifier];
  v20 = [(IRSystemStateMO *)self iCloudId];
  v19 = [(IRSystemStateMO *)self avInitialRouteSharingPolicy];
  v18 = [(IRSystemStateMO *)self mediaRouteGroupLeaderOutputDeviceID];
  v17 = [(IRSystemStateMO *)self timeZoneSeconds];
  v3 = [(IRSystemStateMO *)self outputDeviceName];
  v16 = [(IRSystemStateMO *)self outputDeviceType];
  v4 = [(IRSystemStateMO *)self outputDeviceSubType];
  v5 = [(IRSystemStateMO *)self predictedOutputDeviceName];
  v6 = [(IRSystemStateMO *)self predictedOutputDeviceType];
  v7 = [(IRSystemStateMO *)self predictedOutputDeviceSubType];
  v8 = [(IRSystemStateMO *)self appInFocusWindowScreenUnlockEvent];
  v9 = [(IRSystemStateMO *)self pdrFenceActive];
  v10 = [(IRSystemStateMO *)self latestPickerChoiceDate];
  v11 = [(IRSystemStateMO *)self isContinuityDisplay];
  BYTE1(v15) = [(IRSystemStateMO *)self displayOn];
  LOBYTE(v15) = v11;
  BYTE1(v14) = v9;
  LOBYTE(v14) = v8;
  v12 = [IRSystemStateDO systemStateDOWithAppInFocusBundleID:"systemStateDOWithAppInFocusBundleID:appInFocusWindowValid:deviceWiFiSSID:locationSemanticUserSpecificPlaceType:locationSemanticLoiIdentifier:iCloudId:avInitialRouteSharingPolicy:mediaRouteGroupLeaderOutputDeviceID:timeZoneSeconds:outputDeviceName:outputDeviceType:outputDeviceSubType:predictedOutputDeviceName:predictedOutputDeviceType:predictedOutputDeviceSubType:appInFocusWindowScreenUnlockEvent:pdrFenceActive:latestPickerChoiceDate:isContinuityDisplay:displayOn:" appInFocusWindowValid:v25 deviceWiFiSSID:v24 locationSemanticUserSpecificPlaceType:v23 locationSemanticLoiIdentifier:v22 iCloudId:v21 avInitialRouteSharingPolicy:v20 mediaRouteGroupLeaderOutputDeviceID:v19 timeZoneSeconds:v18 outputDeviceName:v17 outputDeviceType:v3 outputDeviceSubType:v16 predictedOutputDeviceName:v4 predictedOutputDeviceType:v5 predictedOutputDeviceSubType:v6 appInFocusWindowScreenUnlockEvent:v7 pdrFenceActive:v14 latestPickerChoiceDate:v10 isContinuityDisplay:v15 displayOn:?];

  return v12;
}

@end