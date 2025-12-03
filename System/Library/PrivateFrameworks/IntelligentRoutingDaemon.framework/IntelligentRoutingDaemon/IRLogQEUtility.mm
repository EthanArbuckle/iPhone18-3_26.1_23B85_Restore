@interface IRLogQEUtility
+ (id)BOOLPropertyToString:(BOOL)string;
+ (id)datePropertyToString:(id)string timeZone:(int64_t)zone;
+ (id)getCandidateAsString:(id)string;
+ (id)getContextAsString:(id)string;
+ (id)getEventAsString:(id)string;
+ (id)getSystemStateAsString:(id)string;
+ (id)stringPropertyToString:(id)string;
@end

@implementation IRLogQEUtility

+ (id)getEventAsString:(id)string
{
  stringCopy = string;
  name = [stringCopy name];
  v5 = [IRLogQEUtility stringPropertyToString:name];

  v6 = MEMORY[0x277CCACA8];
  v7 = [MEMORY[0x277D212B0] eventTypeStringEventDO:stringCopy];
  v8 = [MEMORY[0x277D212B0] eventSubTypeStringEventDO:stringCopy];
  bundleID = [stringCopy bundleID];
  contextIdentifier = [stringCopy contextIdentifier];

  v11 = [v6 stringWithFormat:@"eventType: %@ eventSubType: %@ name: %@ bundleID: %@ contextIdentifier: %@", v7, v8, v5, bundleID, contextIdentifier];

  return v11;
}

+ (id)getSystemStateAsString:(id)string
{
  stringCopy = string;
  appInFocusBundleID = [stringCopy appInFocusBundleID];
  v38 = [IRLogQEUtility stringPropertyToString:appInFocusBundleID];

  v37 = +[IRLogQEUtility BOOLPropertyToString:](IRLogQEUtility, "BOOLPropertyToString:", [stringCopy appInFocusWindowValid]);
  deviceWiFiSSID = [stringCopy deviceWiFiSSID];
  v36 = [IRLogQEUtility stringPropertyToString:deviceWiFiSSID];

  locationSemanticLoiIdentifier = [stringCopy locationSemanticLoiIdentifier];
  v35 = [IRLogQEUtility stringPropertyToString:locationSemanticLoiIdentifier];

  iCloudId = [stringCopy iCloudId];
  v34 = [IRLogQEUtility stringPropertyToString:iCloudId];

  avInitialRouteSharingPolicy = [stringCopy avInitialRouteSharingPolicy];
  v33 = [IRLogQEUtility stringPropertyToString:avInitialRouteSharingPolicy];

  mediaRouteGroupLeaderOutputDeviceID = [stringCopy mediaRouteGroupLeaderOutputDeviceID];
  v32 = [IRLogQEUtility stringPropertyToString:mediaRouteGroupLeaderOutputDeviceID];

  outputDeviceName = [stringCopy outputDeviceName];
  v31 = [IRLogQEUtility stringPropertyToString:outputDeviceName];

  v11 = IRAVOutputDeviceTypeToString([stringCopy outputDeviceType]);
  v30 = [IRLogQEUtility stringPropertyToString:v11];

  v12 = IRAVOutputDeviceSubTypeToString([stringCopy outputDeviceSubType]);
  v29 = [IRLogQEUtility stringPropertyToString:v12];

  predictedOutputDeviceName = [stringCopy predictedOutputDeviceName];
  v28 = [IRLogQEUtility stringPropertyToString:predictedOutputDeviceName];

  v14 = IRAVOutputDeviceTypeToString([stringCopy predictedOutputDeviceType]);
  v24 = [IRLogQEUtility stringPropertyToString:v14];

  v15 = IRAVOutputDeviceSubTypeToString([stringCopy predictedOutputDeviceSubType]);
  v23 = [IRLogQEUtility stringPropertyToString:v15];

  v27 = IRLocationSemanticUserSpecificPlaceTypeToString([stringCopy locationSemanticUserSpecificPlaceType]);
  v26 = +[IRLogQEUtility BOOLPropertyToString:](IRLogQEUtility, "BOOLPropertyToString:", [stringCopy appInFocusWindowScreenUnlockEvent]);
  v22 = +[IRLogQEUtility BOOLPropertyToString:](IRLogQEUtility, "BOOLPropertyToString:", [stringCopy pdrFenceActive]);
  latestPickerChoiceDate = [stringCopy latestPickerChoiceDate];
  v17 = +[IRLogQEUtility datePropertyToString:timeZone:](IRLogQEUtility, "datePropertyToString:timeZone:", latestPickerChoiceDate, [stringCopy timeZoneSeconds]);

  v18 = +[IRLogQEUtility BOOLPropertyToString:](IRLogQEUtility, "BOOLPropertyToString:", [stringCopy isContinuityDisplay]);
  displayOn = [stringCopy displayOn];

  v20 = [IRLogQEUtility BOOLPropertyToString:displayOn];
  v25 = [MEMORY[0x277CCACA8] stringWithFormat:@"appInFocusBundleID: %@\n appInFocusWindowValid: %@\n appInFocusWindowScreenUnlockEvent: %@\n deviceWiFiSSID: %@\n locationSemanticLoiIdentifier: %@\n iCloudId: %@\n locationSemanticUserSpecificPlaceType: %@\n avInitialRouteSharingPolicy: %@\n mediaRouteGroupLeaderOutputDeviceID: %@\n outputDevice: Name - %@, Type - %@, SubType - %@\n predictedOutputDevice: Name - %@, Type - %@, SubType - %@\n pdrFenceActive: %@\n latestPickerChoiceDate: %@\n isContinuityDisplay: %@\n displayOn: %@\n", v38, v37, v26, v36, v35, v34, v27, v33, v32, v31, v30, v29, v28, v24, v23, v22, v17, v18, v20];

  return v25;
}

+ (id)getCandidateAsString:(id)string
{
  v57 = *MEMORY[0x277D85DE8];
  stringCopy = string;
  candidateIdentifier = [stringCopy candidateIdentifier];
  v5 = [IRLogQEUtility stringPropertyToString:candidateIdentifier];

  v6 = +[IRLogQEUtility BOOLPropertyToString:](IRLogQEUtility, "BOOLPropertyToString:", [stringCopy isSameWiFi]);
  v7 = MEMORY[0x277CCACA8];
  lastSeenDate = [stringCopy lastSeenDate];
  lastUsedDate = [stringCopy lastUsedDate];
  firstSeenDate = [stringCopy firstSeenDate];
  name = [stringCopy name];
  v36 = v6;
  v37 = v5;
  v12 = [v7 stringWithFormat:@"candidateIdentifier: %@\nlastSeen: %@\nlastUsed: %@\nfirstSeen: %@\nname: %@\nisSameWiFi: %@\n", v5, lastSeenDate, lastUsedDate, firstSeenDate, name, v6];

  v54 = 0u;
  v55 = 0u;
  v52 = 0u;
  v53 = 0u;
  v38 = stringCopy;
  obj = [stringCopy nodes];
  v41 = [obj countByEnumeratingWithState:&v52 objects:v56 count:16];
  if (v41)
  {
    v13 = &unk_2867690D0;
    v40 = *v53;
    do
    {
      v14 = 0;
      v15 = v13;
      v16 = v12;
      do
      {
        if (*v53 != v40)
        {
          objc_enumerationMutation(obj);
        }

        v17 = *(*(&v52 + 1) + 8 * v14);
        avOutpuDeviceIdentifier = [v17 avOutpuDeviceIdentifier];
        v47 = [IRLogQEUtility stringPropertyToString:avOutpuDeviceIdentifier];

        rapportIdentifier = [v17 rapportIdentifier];
        v51 = [IRLogQEUtility stringPropertyToString:rapportIdentifier];

        idsIdentifier = [v17 idsIdentifier];
        v50 = [IRLogQEUtility stringPropertyToString:idsIdentifier];

        avOutputDevice = [v17 avOutputDevice];
        modelID = [avOutputDevice modelID];
        v49 = [IRLogQEUtility stringPropertyToString:modelID];

        avOutputDevice2 = [v17 avOutputDevice];
        deviceName = [avOutputDevice2 deviceName];
        v48 = [IRLogQEUtility stringPropertyToString:deviceName];

        v46 = MEMORY[0x277CCACA8];
        stringValue = [v15 stringValue];
        avOutputDevice3 = [v17 avOutputDevice];
        if (avOutputDevice3)
        {
          avOutputDevice4 = [v17 avOutputDevice];
          v27 = IRAVOutputDeviceTypeToString([avOutputDevice4 deviceType]);
          v43 = v27;
        }

        else
        {
          v27 = @"Invalid";
        }

        avOutputDevice5 = [v17 avOutputDevice];
        if (avOutputDevice5)
        {
          avOutputDevice6 = [v17 avOutputDevice];
          v29 = IRAVOutputDeviceSubTypeToString([avOutputDevice6 deviceSubType]);
          v42 = v29;
        }

        else
        {
          v29 = @"Invalid";
        }

        rapportDevice = [v17 rapportDevice];
        iCloudId = [rapportDevice iCloudId];
        v32 = [v46 stringWithFormat:@" device%@:\n  avOutpuDeviceIdentifier: %@\n  rapportIdentifier: %@\n  idsIdentifier: %@\n  modelID: %@\n  deviceName: %@\n  deviceType: %@\n  deviceSubType: %@\n  iCloudId: %@\n", stringValue, v47, v51, v50, v49, v48, v27, v29, iCloudId];

        if (avOutputDevice5)
        {
        }

        if (avOutputDevice3)
        {
        }

        v33 = [v16 stringByAppendingString:v32];
        v12 = [v33 stringByAppendingString:@"\n"];

        v13 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v15, "intValue") + 1}];

        ++v14;
        v15 = v13;
        v16 = v12;
      }

      while (v41 != v14);
      v41 = [obj countByEnumeratingWithState:&v52 objects:v56 count:16];
    }

    while (v41);
  }

  else
  {
    v13 = &unk_2867690D0;
  }

  v34 = *MEMORY[0x277D85DE8];

  return v12;
}

+ (id)stringPropertyToString:(id)string
{
  if (string)
  {
    return string;
  }

  else
  {
    return @"nil";
  }
}

+ (id)BOOLPropertyToString:(BOOL)string
{
  if (string)
  {
    return @"YES";
  }

  else
  {
    return @"NO";
  }
}

+ (id)datePropertyToString:(id)string timeZone:(int64_t)zone
{
  if (string)
  {
    v5 = MEMORY[0x277CCA968];
    stringCopy = string;
    v7 = objc_alloc_init(v5);
    [v7 setDateFormat:@"yyyy-MM-dd HH:mm:ss (Z)"];
    v8 = [MEMORY[0x277CBEBB0] timeZoneForSecondsFromGMT:zone];
    [v7 setTimeZone:v8];

    v9 = [v7 stringFromDate:stringCopy];
  }

  else
  {
    v9 = @"nil";
  }

  return v9;
}

+ (id)getContextAsString:(id)string
{
  v40 = *MEMORY[0x277D85DE8];
  candidateResults = [string candidateResults];
  allObjects = [candidateResults allObjects];
  v5 = [allObjects sortedArrayUsingComparator:&__block_literal_global_19];

  string = [MEMORY[0x277CCAB68] string];
  [string appendString:@"{\n"];
  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  obj = v5;
  v28 = [obj countByEnumeratingWithState:&v34 objects:v39 count:16];
  if (v28)
  {
    v27 = *v35;
    do
    {
      v7 = 0;
      do
      {
        if (*v35 != v27)
        {
          objc_enumerationMutation(obj);
        }

        v29 = v7;
        v8 = *(*(&v34 + 1) + 8 * v7);
        [string appendString:@"    {\n"];
        candidate = [v8 candidate];
        candidateIdentifier = [candidate candidateIdentifier];
        [v8 classification];
        v11 = IRCandidateClassificationToString();
        classificationDescription = [v8 classificationDescription];
        [string appendFormat:@"        candidateIdentifier: %@, classification: %@, desc: %@\n", candidateIdentifier, v11, classificationDescription];

        v32 = 0u;
        v33 = 0u;
        v30 = 0u;
        v31 = 0u;
        candidate2 = [v8 candidate];
        nodes = [candidate2 nodes];

        v15 = [nodes countByEnumeratingWithState:&v30 objects:v38 count:16];
        if (v15)
        {
          v16 = v15;
          v17 = *v31;
          do
          {
            for (i = 0; i != v16; ++i)
            {
              if (*v31 != v17)
              {
                objc_enumerationMutation(nodes);
              }

              v19 = *(*(&v30 + 1) + 8 * i);
              name = [v19 name];
              avOutpuDeviceIdentifier = [v19 avOutpuDeviceIdentifier];
              rapportIdentifier = [v19 rapportIdentifier];
              idsIdentifier = [v19 idsIdentifier];
              [string appendFormat:@"        node: name: %@, avOutpuDeviceIdentifier: %@, rapportIdentifier: %@, idsIdentifier: %@\n", name, avOutpuDeviceIdentifier, rapportIdentifier, idsIdentifier];
            }

            v16 = [nodes countByEnumeratingWithState:&v30 objects:v38 count:16];
          }

          while (v16);
        }

        [string appendString:@"    \n    }\n"];
        v7 = v29 + 1;
      }

      while (v29 + 1 != v28);
      v28 = [obj countByEnumeratingWithState:&v34 objects:v39 count:16];
    }

    while (v28);
  }

  [string appendString:@"}\n"];
  v24 = *MEMORY[0x277D85DE8];

  return string;
}

uint64_t __37__IRLogQEUtility_getContextAsString___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = [v4 classification];
  if (v6 <= [v5 classification])
  {
    v8 = [v4 classification];
    v7 = v8 < [v5 classification];
  }

  else
  {
    v7 = -1;
  }

  return v7;
}

@end