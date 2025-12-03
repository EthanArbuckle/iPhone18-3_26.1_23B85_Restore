@interface IRSystemStateMO
+ (IRSystemStateMO)systemStateMOWithSystemStateDO:(id)o historyEventMO:(id)mO inManagedObjectContext:(id)context;
+ (IRSystemStateMO)systemStateMOWithSystemStateDO:(id)o replayEventMO:(id)mO inManagedObjectContext:(id)context;
+ (void)setPropertiesOfSystemStateMO:(id)o withSystemState:(id)state;
- (id)convert;
@end

@implementation IRSystemStateMO

+ (IRSystemStateMO)systemStateMOWithSystemStateDO:(id)o historyEventMO:(id)mO inManagedObjectContext:(id)context
{
  contextCopy = context;
  mOCopy = mO;
  oCopy = o;
  v10 = [[IRSystemStateMO alloc] initWithContext:contextCopy];

  [(IRSystemStateMO *)v10 setHistoryEvent:mOCopy];
  [IRSystemStateMO setPropertiesOfSystemStateMO:v10 withSystemState:oCopy];

  return v10;
}

+ (IRSystemStateMO)systemStateMOWithSystemStateDO:(id)o replayEventMO:(id)mO inManagedObjectContext:(id)context
{
  contextCopy = context;
  mOCopy = mO;
  oCopy = o;
  v10 = [[IRSystemStateMO alloc] initWithContext:contextCopy];

  [(IRSystemStateMO *)v10 setReplayEvent:mOCopy];
  [IRSystemStateMO setPropertiesOfSystemStateMO:v10 withSystemState:oCopy];

  return v10;
}

+ (void)setPropertiesOfSystemStateMO:(id)o withSystemState:(id)state
{
  stateCopy = state;
  oCopy = o;
  appInFocusBundleID = [stateCopy appInFocusBundleID];
  [oCopy setAppInFocusBundleID:appInFocusBundleID];

  [oCopy setAppInFocusWindowValid:{objc_msgSend(stateCopy, "appInFocusWindowValid")}];
  deviceWiFiSSID = [stateCopy deviceWiFiSSID];
  [oCopy setDeviceWiFiSSID:deviceWiFiSSID];

  [oCopy setLocationSemanticUserSpecificPlaceType:{objc_msgSend(stateCopy, "locationSemanticUserSpecificPlaceType")}];
  iCloudId = [stateCopy iCloudId];
  [oCopy setICloudId:iCloudId];

  locationSemanticLoiIdentifier = [stateCopy locationSemanticLoiIdentifier];
  [oCopy setLocationSemanticLoiIdentifier:locationSemanticLoiIdentifier];

  avInitialRouteSharingPolicy = [stateCopy avInitialRouteSharingPolicy];
  [oCopy setAvInitialRouteSharingPolicy:avInitialRouteSharingPolicy];

  mediaRouteGroupLeaderOutputDeviceID = [stateCopy mediaRouteGroupLeaderOutputDeviceID];
  [oCopy setMediaRouteGroupLeaderOutputDeviceID:mediaRouteGroupLeaderOutputDeviceID];

  [oCopy setTimeZoneSeconds:{objc_msgSend(stateCopy, "timeZoneSeconds")}];
  outputDeviceName = [stateCopy outputDeviceName];
  [oCopy setOutputDeviceName:outputDeviceName];

  [oCopy setOutputDeviceType:{objc_msgSend(stateCopy, "outputDeviceType")}];
  [oCopy setOutputDeviceSubType:{objc_msgSend(stateCopy, "outputDeviceSubType")}];
  predictedOutputDeviceName = [stateCopy predictedOutputDeviceName];
  [oCopy setPredictedOutputDeviceName:predictedOutputDeviceName];

  [oCopy setPredictedOutputDeviceType:{objc_msgSend(stateCopy, "predictedOutputDeviceType")}];
  [oCopy setPredictedOutputDeviceSubType:{objc_msgSend(stateCopy, "predictedOutputDeviceSubType")}];
  [oCopy setAppInFocusWindowScreenUnlockEvent:{objc_msgSend(stateCopy, "appInFocusWindowScreenUnlockEvent")}];
  [oCopy setPdrFenceActive:{objc_msgSend(stateCopy, "pdrFenceActive")}];
  latestPickerChoiceDate = [stateCopy latestPickerChoiceDate];
  [oCopy setLatestPickerChoiceDate:latestPickerChoiceDate];

  [oCopy setIsContinuityDisplay:{objc_msgSend(stateCopy, "isContinuityDisplay")}];
  displayOn = [stateCopy displayOn];

  [oCopy setDisplayOn:displayOn];
}

- (id)convert
{
  appInFocusBundleID = [(IRSystemStateMO *)self appInFocusBundleID];
  appInFocusWindowValid = [(IRSystemStateMO *)self appInFocusWindowValid];
  deviceWiFiSSID = [(IRSystemStateMO *)self deviceWiFiSSID];
  locationSemanticUserSpecificPlaceType = [(IRSystemStateMO *)self locationSemanticUserSpecificPlaceType];
  locationSemanticLoiIdentifier = [(IRSystemStateMO *)self locationSemanticLoiIdentifier];
  iCloudId = [(IRSystemStateMO *)self iCloudId];
  avInitialRouteSharingPolicy = [(IRSystemStateMO *)self avInitialRouteSharingPolicy];
  mediaRouteGroupLeaderOutputDeviceID = [(IRSystemStateMO *)self mediaRouteGroupLeaderOutputDeviceID];
  timeZoneSeconds = [(IRSystemStateMO *)self timeZoneSeconds];
  outputDeviceName = [(IRSystemStateMO *)self outputDeviceName];
  outputDeviceType = [(IRSystemStateMO *)self outputDeviceType];
  outputDeviceSubType = [(IRSystemStateMO *)self outputDeviceSubType];
  predictedOutputDeviceName = [(IRSystemStateMO *)self predictedOutputDeviceName];
  predictedOutputDeviceType = [(IRSystemStateMO *)self predictedOutputDeviceType];
  predictedOutputDeviceSubType = [(IRSystemStateMO *)self predictedOutputDeviceSubType];
  appInFocusWindowScreenUnlockEvent = [(IRSystemStateMO *)self appInFocusWindowScreenUnlockEvent];
  pdrFenceActive = [(IRSystemStateMO *)self pdrFenceActive];
  latestPickerChoiceDate = [(IRSystemStateMO *)self latestPickerChoiceDate];
  isContinuityDisplay = [(IRSystemStateMO *)self isContinuityDisplay];
  BYTE1(v15) = [(IRSystemStateMO *)self displayOn];
  LOBYTE(v15) = isContinuityDisplay;
  BYTE1(v14) = pdrFenceActive;
  LOBYTE(v14) = appInFocusWindowScreenUnlockEvent;
  v12 = [IRSystemStateDO systemStateDOWithAppInFocusBundleID:"systemStateDOWithAppInFocusBundleID:appInFocusWindowValid:deviceWiFiSSID:locationSemanticUserSpecificPlaceType:locationSemanticLoiIdentifier:iCloudId:avInitialRouteSharingPolicy:mediaRouteGroupLeaderOutputDeviceID:timeZoneSeconds:outputDeviceName:outputDeviceType:outputDeviceSubType:predictedOutputDeviceName:predictedOutputDeviceType:predictedOutputDeviceSubType:appInFocusWindowScreenUnlockEvent:pdrFenceActive:latestPickerChoiceDate:isContinuityDisplay:displayOn:" appInFocusWindowValid:appInFocusBundleID deviceWiFiSSID:appInFocusWindowValid locationSemanticUserSpecificPlaceType:deviceWiFiSSID locationSemanticLoiIdentifier:locationSemanticUserSpecificPlaceType iCloudId:locationSemanticLoiIdentifier avInitialRouteSharingPolicy:iCloudId mediaRouteGroupLeaderOutputDeviceID:avInitialRouteSharingPolicy timeZoneSeconds:mediaRouteGroupLeaderOutputDeviceID outputDeviceName:timeZoneSeconds outputDeviceType:outputDeviceName outputDeviceSubType:outputDeviceType predictedOutputDeviceName:outputDeviceSubType predictedOutputDeviceType:predictedOutputDeviceName predictedOutputDeviceSubType:predictedOutputDeviceType appInFocusWindowScreenUnlockEvent:predictedOutputDeviceSubType pdrFenceActive:v14 latestPickerChoiceDate:latestPickerChoiceDate isContinuityDisplay:v15 displayOn:?];

  return v12;
}

@end