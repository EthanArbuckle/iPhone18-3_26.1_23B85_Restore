@interface IRLogQEUtility
+ (id)BOOLPropertyToString:(BOOL)a3;
+ (id)datePropertyToString:(id)a3 timeZone:(int64_t)a4;
+ (id)getCandidateAsString:(id)a3;
+ (id)getContextAsString:(id)a3;
+ (id)getEventAsString:(id)a3;
+ (id)getSystemStateAsString:(id)a3;
+ (id)stringPropertyToString:(id)a3;
@end

@implementation IRLogQEUtility

+ (id)getEventAsString:(id)a3
{
  v3 = a3;
  v4 = [v3 name];
  v5 = [IRLogQEUtility stringPropertyToString:v4];

  v6 = MEMORY[0x277CCACA8];
  v7 = [MEMORY[0x277D212B0] eventTypeStringEventDO:v3];
  v8 = [MEMORY[0x277D212B0] eventSubTypeStringEventDO:v3];
  v9 = [v3 bundleID];
  v10 = [v3 contextIdentifier];

  v11 = [v6 stringWithFormat:@"eventType: %@ eventSubType: %@ name: %@ bundleID: %@ contextIdentifier: %@", v7, v8, v5, v9, v10];

  return v11;
}

+ (id)getSystemStateAsString:(id)a3
{
  v3 = a3;
  v4 = [v3 appInFocusBundleID];
  v38 = [IRLogQEUtility stringPropertyToString:v4];

  v37 = +[IRLogQEUtility BOOLPropertyToString:](IRLogQEUtility, "BOOLPropertyToString:", [v3 appInFocusWindowValid]);
  v5 = [v3 deviceWiFiSSID];
  v36 = [IRLogQEUtility stringPropertyToString:v5];

  v6 = [v3 locationSemanticLoiIdentifier];
  v35 = [IRLogQEUtility stringPropertyToString:v6];

  v7 = [v3 iCloudId];
  v34 = [IRLogQEUtility stringPropertyToString:v7];

  v8 = [v3 avInitialRouteSharingPolicy];
  v33 = [IRLogQEUtility stringPropertyToString:v8];

  v9 = [v3 mediaRouteGroupLeaderOutputDeviceID];
  v32 = [IRLogQEUtility stringPropertyToString:v9];

  v10 = [v3 outputDeviceName];
  v31 = [IRLogQEUtility stringPropertyToString:v10];

  v11 = IRAVOutputDeviceTypeToString([v3 outputDeviceType]);
  v30 = [IRLogQEUtility stringPropertyToString:v11];

  v12 = IRAVOutputDeviceSubTypeToString([v3 outputDeviceSubType]);
  v29 = [IRLogQEUtility stringPropertyToString:v12];

  v13 = [v3 predictedOutputDeviceName];
  v28 = [IRLogQEUtility stringPropertyToString:v13];

  v14 = IRAVOutputDeviceTypeToString([v3 predictedOutputDeviceType]);
  v24 = [IRLogQEUtility stringPropertyToString:v14];

  v15 = IRAVOutputDeviceSubTypeToString([v3 predictedOutputDeviceSubType]);
  v23 = [IRLogQEUtility stringPropertyToString:v15];

  v27 = IRLocationSemanticUserSpecificPlaceTypeToString([v3 locationSemanticUserSpecificPlaceType]);
  v26 = +[IRLogQEUtility BOOLPropertyToString:](IRLogQEUtility, "BOOLPropertyToString:", [v3 appInFocusWindowScreenUnlockEvent]);
  v22 = +[IRLogQEUtility BOOLPropertyToString:](IRLogQEUtility, "BOOLPropertyToString:", [v3 pdrFenceActive]);
  v16 = [v3 latestPickerChoiceDate];
  v17 = +[IRLogQEUtility datePropertyToString:timeZone:](IRLogQEUtility, "datePropertyToString:timeZone:", v16, [v3 timeZoneSeconds]);

  v18 = +[IRLogQEUtility BOOLPropertyToString:](IRLogQEUtility, "BOOLPropertyToString:", [v3 isContinuityDisplay]);
  v19 = [v3 displayOn];

  v20 = [IRLogQEUtility BOOLPropertyToString:v19];
  v25 = [MEMORY[0x277CCACA8] stringWithFormat:@"appInFocusBundleID: %@\n appInFocusWindowValid: %@\n appInFocusWindowScreenUnlockEvent: %@\n deviceWiFiSSID: %@\n locationSemanticLoiIdentifier: %@\n iCloudId: %@\n locationSemanticUserSpecificPlaceType: %@\n avInitialRouteSharingPolicy: %@\n mediaRouteGroupLeaderOutputDeviceID: %@\n outputDevice: Name - %@, Type - %@, SubType - %@\n predictedOutputDevice: Name - %@, Type - %@, SubType - %@\n pdrFenceActive: %@\n latestPickerChoiceDate: %@\n isContinuityDisplay: %@\n displayOn: %@\n", v38, v37, v26, v36, v35, v34, v27, v33, v32, v31, v30, v29, v28, v24, v23, v22, v17, v18, v20];

  return v25;
}

+ (id)getCandidateAsString:(id)a3
{
  v57 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [v3 candidateIdentifier];
  v5 = [IRLogQEUtility stringPropertyToString:v4];

  v6 = +[IRLogQEUtility BOOLPropertyToString:](IRLogQEUtility, "BOOLPropertyToString:", [v3 isSameWiFi]);
  v7 = MEMORY[0x277CCACA8];
  v8 = [v3 lastSeenDate];
  v9 = [v3 lastUsedDate];
  v10 = [v3 firstSeenDate];
  v11 = [v3 name];
  v36 = v6;
  v37 = v5;
  v12 = [v7 stringWithFormat:@"candidateIdentifier: %@\nlastSeen: %@\nlastUsed: %@\nfirstSeen: %@\nname: %@\nisSameWiFi: %@\n", v5, v8, v9, v10, v11, v6];

  v54 = 0u;
  v55 = 0u;
  v52 = 0u;
  v53 = 0u;
  v38 = v3;
  obj = [v3 nodes];
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
        v18 = [v17 avOutpuDeviceIdentifier];
        v47 = [IRLogQEUtility stringPropertyToString:v18];

        v19 = [v17 rapportIdentifier];
        v51 = [IRLogQEUtility stringPropertyToString:v19];

        v20 = [v17 idsIdentifier];
        v50 = [IRLogQEUtility stringPropertyToString:v20];

        v21 = [v17 avOutputDevice];
        v22 = [v21 modelID];
        v49 = [IRLogQEUtility stringPropertyToString:v22];

        v23 = [v17 avOutputDevice];
        v24 = [v23 deviceName];
        v48 = [IRLogQEUtility stringPropertyToString:v24];

        v46 = MEMORY[0x277CCACA8];
        v25 = [v15 stringValue];
        v26 = [v17 avOutputDevice];
        if (v26)
        {
          v45 = [v17 avOutputDevice];
          v27 = IRAVOutputDeviceTypeToString([v45 deviceType]);
          v43 = v27;
        }

        else
        {
          v27 = @"Invalid";
        }

        v28 = [v17 avOutputDevice];
        if (v28)
        {
          v44 = [v17 avOutputDevice];
          v29 = IRAVOutputDeviceSubTypeToString([v44 deviceSubType]);
          v42 = v29;
        }

        else
        {
          v29 = @"Invalid";
        }

        v30 = [v17 rapportDevice];
        v31 = [v30 iCloudId];
        v32 = [v46 stringWithFormat:@" device%@:\n  avOutpuDeviceIdentifier: %@\n  rapportIdentifier: %@\n  idsIdentifier: %@\n  modelID: %@\n  deviceName: %@\n  deviceType: %@\n  deviceSubType: %@\n  iCloudId: %@\n", v25, v47, v51, v50, v49, v48, v27, v29, v31];

        if (v28)
        {
        }

        if (v26)
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

+ (id)stringPropertyToString:(id)a3
{
  if (a3)
  {
    return a3;
  }

  else
  {
    return @"nil";
  }
}

+ (id)BOOLPropertyToString:(BOOL)a3
{
  if (a3)
  {
    return @"YES";
  }

  else
  {
    return @"NO";
  }
}

+ (id)datePropertyToString:(id)a3 timeZone:(int64_t)a4
{
  if (a3)
  {
    v5 = MEMORY[0x277CCA968];
    v6 = a3;
    v7 = objc_alloc_init(v5);
    [v7 setDateFormat:@"yyyy-MM-dd HH:mm:ss (Z)"];
    v8 = [MEMORY[0x277CBEBB0] timeZoneForSecondsFromGMT:a4];
    [v7 setTimeZone:v8];

    v9 = [v7 stringFromDate:v6];
  }

  else
  {
    v9 = @"nil";
  }

  return v9;
}

+ (id)getContextAsString:(id)a3
{
  v40 = *MEMORY[0x277D85DE8];
  v3 = [a3 candidateResults];
  v4 = [v3 allObjects];
  v5 = [v4 sortedArrayUsingComparator:&__block_literal_global_19];

  v6 = [MEMORY[0x277CCAB68] string];
  [v6 appendString:@"{\n"];
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
        [v6 appendString:@"    {\n"];
        v9 = [v8 candidate];
        v10 = [v9 candidateIdentifier];
        [v8 classification];
        v11 = IRCandidateClassificationToString();
        v12 = [v8 classificationDescription];
        [v6 appendFormat:@"        candidateIdentifier: %@, classification: %@, desc: %@\n", v10, v11, v12];

        v32 = 0u;
        v33 = 0u;
        v30 = 0u;
        v31 = 0u;
        v13 = [v8 candidate];
        v14 = [v13 nodes];

        v15 = [v14 countByEnumeratingWithState:&v30 objects:v38 count:16];
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
                objc_enumerationMutation(v14);
              }

              v19 = *(*(&v30 + 1) + 8 * i);
              v20 = [v19 name];
              v21 = [v19 avOutpuDeviceIdentifier];
              v22 = [v19 rapportIdentifier];
              v23 = [v19 idsIdentifier];
              [v6 appendFormat:@"        node: name: %@, avOutpuDeviceIdentifier: %@, rapportIdentifier: %@, idsIdentifier: %@\n", v20, v21, v22, v23];
            }

            v16 = [v14 countByEnumeratingWithState:&v30 objects:v38 count:16];
          }

          while (v16);
        }

        [v6 appendString:@"    \n    }\n"];
        v7 = v29 + 1;
      }

      while (v29 + 1 != v28);
      v28 = [obj countByEnumeratingWithState:&v34 objects:v39 count:16];
    }

    while (v28);
  }

  [v6 appendString:@"}\n"];
  v24 = *MEMORY[0x277D85DE8];

  return v6;
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