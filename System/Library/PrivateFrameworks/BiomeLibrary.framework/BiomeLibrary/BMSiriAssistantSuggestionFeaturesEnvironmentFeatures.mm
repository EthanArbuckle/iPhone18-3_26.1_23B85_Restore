@interface BMSiriAssistantSuggestionFeaturesEnvironmentFeatures
+ (id)columns;
+ (id)eventWithData:(id)data dataVersion:(unsigned int)version;
+ (id)protoFields;
- (BMSiriAssistantSuggestionFeaturesEnvironmentFeatures)initWithFocusMode:(id)mode deviceMotion:(id)motion location:(int)location isPlayingMedia:(id)media isAirplaneMode:(id)airplaneMode isTimerRunning:(id)running isConnectedToWifi:(id)wifi hasInternetConnection:(id)self0 isScreenSharing:(id)self1 audioIsMuted:(id)self2 screenBrightness:(id)self3 homeGraph:(id)self4 batteryIsCharging:(id)self5 isLowBatteryMode:(id)self6;
- (BMSiriAssistantSuggestionFeaturesEnvironmentFeatures)initWithJSONDictionary:(id)dictionary error:(id *)error;
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (id)initByReadFrom:(id)from;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)to;
@end

@implementation BMSiriAssistantSuggestionFeaturesEnvironmentFeatures

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    focusMode = [(BMSiriAssistantSuggestionFeaturesEnvironmentFeatures *)self focusMode];
    focusMode2 = [v5 focusMode];
    v8 = focusMode2;
    if (focusMode == focusMode2)
    {
    }

    else
    {
      focusMode3 = [(BMSiriAssistantSuggestionFeaturesEnvironmentFeatures *)self focusMode];
      focusMode4 = [v5 focusMode];
      v11 = [focusMode3 isEqual:focusMode4];

      if (!v11)
      {
        goto LABEL_65;
      }
    }

    deviceMotion = [(BMSiriAssistantSuggestionFeaturesEnvironmentFeatures *)self deviceMotion];
    deviceMotion2 = [v5 deviceMotion];
    v15 = deviceMotion2;
    if (deviceMotion == deviceMotion2)
    {
    }

    else
    {
      deviceMotion3 = [(BMSiriAssistantSuggestionFeaturesEnvironmentFeatures *)self deviceMotion];
      deviceMotion4 = [v5 deviceMotion];
      v18 = [deviceMotion3 isEqual:deviceMotion4];

      if (!v18)
      {
        goto LABEL_65;
      }
    }

    location = [(BMSiriAssistantSuggestionFeaturesEnvironmentFeatures *)self location];
    if (location == [v5 location])
    {
      isPlayingMedia = [(BMSiriAssistantSuggestionFeaturesEnvironmentFeatures *)self isPlayingMedia];
      isPlayingMedia2 = [v5 isPlayingMedia];
      v22 = isPlayingMedia2;
      if (isPlayingMedia == isPlayingMedia2)
      {
      }

      else
      {
        isPlayingMedia3 = [(BMSiriAssistantSuggestionFeaturesEnvironmentFeatures *)self isPlayingMedia];
        isPlayingMedia4 = [v5 isPlayingMedia];
        v25 = [isPlayingMedia3 isEqual:isPlayingMedia4];

        if (!v25)
        {
          goto LABEL_65;
        }
      }

      if (-[BMSiriAssistantSuggestionFeaturesEnvironmentFeatures hasIsAirplaneMode](self, "hasIsAirplaneMode") || [v5 hasIsAirplaneMode])
      {
        if (![(BMSiriAssistantSuggestionFeaturesEnvironmentFeatures *)self hasIsAirplaneMode])
        {
          goto LABEL_65;
        }

        if (![v5 hasIsAirplaneMode])
        {
          goto LABEL_65;
        }

        isAirplaneMode = [(BMSiriAssistantSuggestionFeaturesEnvironmentFeatures *)self isAirplaneMode];
        if (isAirplaneMode != [v5 isAirplaneMode])
        {
          goto LABEL_65;
        }
      }

      if (-[BMSiriAssistantSuggestionFeaturesEnvironmentFeatures hasIsTimerRunning](self, "hasIsTimerRunning") || [v5 hasIsTimerRunning])
      {
        if (![(BMSiriAssistantSuggestionFeaturesEnvironmentFeatures *)self hasIsTimerRunning])
        {
          goto LABEL_65;
        }

        if (![v5 hasIsTimerRunning])
        {
          goto LABEL_65;
        }

        isTimerRunning = [(BMSiriAssistantSuggestionFeaturesEnvironmentFeatures *)self isTimerRunning];
        if (isTimerRunning != [v5 isTimerRunning])
        {
          goto LABEL_65;
        }
      }

      if (-[BMSiriAssistantSuggestionFeaturesEnvironmentFeatures hasIsConnectedToWifi](self, "hasIsConnectedToWifi") || [v5 hasIsConnectedToWifi])
      {
        if (![(BMSiriAssistantSuggestionFeaturesEnvironmentFeatures *)self hasIsConnectedToWifi])
        {
          goto LABEL_65;
        }

        if (![v5 hasIsConnectedToWifi])
        {
          goto LABEL_65;
        }

        isConnectedToWifi = [(BMSiriAssistantSuggestionFeaturesEnvironmentFeatures *)self isConnectedToWifi];
        if (isConnectedToWifi != [v5 isConnectedToWifi])
        {
          goto LABEL_65;
        }
      }

      if (-[BMSiriAssistantSuggestionFeaturesEnvironmentFeatures hasHasInternetConnection](self, "hasHasInternetConnection") || [v5 hasHasInternetConnection])
      {
        if (![(BMSiriAssistantSuggestionFeaturesEnvironmentFeatures *)self hasHasInternetConnection])
        {
          goto LABEL_65;
        }

        if (![v5 hasHasInternetConnection])
        {
          goto LABEL_65;
        }

        hasInternetConnection = [(BMSiriAssistantSuggestionFeaturesEnvironmentFeatures *)self hasInternetConnection];
        if (hasInternetConnection != [v5 hasInternetConnection])
        {
          goto LABEL_65;
        }
      }

      if (-[BMSiriAssistantSuggestionFeaturesEnvironmentFeatures hasIsScreenSharing](self, "hasIsScreenSharing") || [v5 hasIsScreenSharing])
      {
        if (![(BMSiriAssistantSuggestionFeaturesEnvironmentFeatures *)self hasIsScreenSharing])
        {
          goto LABEL_65;
        }

        if (![v5 hasIsScreenSharing])
        {
          goto LABEL_65;
        }

        isScreenSharing = [(BMSiriAssistantSuggestionFeaturesEnvironmentFeatures *)self isScreenSharing];
        if (isScreenSharing != [v5 isScreenSharing])
        {
          goto LABEL_65;
        }
      }

      if (-[BMSiriAssistantSuggestionFeaturesEnvironmentFeatures hasAudioIsMuted](self, "hasAudioIsMuted") || [v5 hasAudioIsMuted])
      {
        if (![(BMSiriAssistantSuggestionFeaturesEnvironmentFeatures *)self hasAudioIsMuted])
        {
          goto LABEL_65;
        }

        if (![v5 hasAudioIsMuted])
        {
          goto LABEL_65;
        }

        audioIsMuted = [(BMSiriAssistantSuggestionFeaturesEnvironmentFeatures *)self audioIsMuted];
        if (audioIsMuted != [v5 audioIsMuted])
        {
          goto LABEL_65;
        }
      }

      if (-[BMSiriAssistantSuggestionFeaturesEnvironmentFeatures hasScreenBrightness](self, "hasScreenBrightness") || [v5 hasScreenBrightness])
      {
        if (![(BMSiriAssistantSuggestionFeaturesEnvironmentFeatures *)self hasScreenBrightness])
        {
          goto LABEL_65;
        }

        if (![v5 hasScreenBrightness])
        {
          goto LABEL_65;
        }

        screenBrightness = [(BMSiriAssistantSuggestionFeaturesEnvironmentFeatures *)self screenBrightness];
        if (screenBrightness != [v5 screenBrightness])
        {
          goto LABEL_65;
        }
      }

      homeGraph = [(BMSiriAssistantSuggestionFeaturesEnvironmentFeatures *)self homeGraph];
      homeGraph2 = [v5 homeGraph];
      v35 = homeGraph2;
      if (homeGraph == homeGraph2)
      {
      }

      else
      {
        homeGraph3 = [(BMSiriAssistantSuggestionFeaturesEnvironmentFeatures *)self homeGraph];
        homeGraph4 = [v5 homeGraph];
        v38 = [homeGraph3 isEqual:homeGraph4];

        if (!v38)
        {
          goto LABEL_65;
        }
      }

      if (!-[BMSiriAssistantSuggestionFeaturesEnvironmentFeatures hasBatteryIsCharging](self, "hasBatteryIsCharging") && ![v5 hasBatteryIsCharging] || -[BMSiriAssistantSuggestionFeaturesEnvironmentFeatures hasBatteryIsCharging](self, "hasBatteryIsCharging") && objc_msgSend(v5, "hasBatteryIsCharging") && (v39 = -[BMSiriAssistantSuggestionFeaturesEnvironmentFeatures batteryIsCharging](self, "batteryIsCharging"), v39 == objc_msgSend(v5, "batteryIsCharging")))
      {
        if (!-[BMSiriAssistantSuggestionFeaturesEnvironmentFeatures hasIsLowBatteryMode](self, "hasIsLowBatteryMode") && ![v5 hasIsLowBatteryMode])
        {
          LOBYTE(v12) = 1;
          goto LABEL_66;
        }

        if (-[BMSiriAssistantSuggestionFeaturesEnvironmentFeatures hasIsLowBatteryMode](self, "hasIsLowBatteryMode") && [v5 hasIsLowBatteryMode])
        {
          isLowBatteryMode = [(BMSiriAssistantSuggestionFeaturesEnvironmentFeatures *)self isLowBatteryMode];
          v12 = isLowBatteryMode ^ [v5 isLowBatteryMode] ^ 1;
LABEL_66:

          goto LABEL_67;
        }
      }
    }

LABEL_65:
    LOBYTE(v12) = 0;
    goto LABEL_66;
  }

  LOBYTE(v12) = 0;
LABEL_67:

  return v12;
}

- (id)jsonDictionary
{
  v48[14] = *MEMORY[0x1E69E9840];
  focusMode = [(BMSiriAssistantSuggestionFeaturesEnvironmentFeatures *)self focusMode];
  deviceMotion = [(BMSiriAssistantSuggestionFeaturesEnvironmentFeatures *)self deviceMotion];
  v5 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMSiriAssistantSuggestionFeaturesEnvironmentFeatures location](self, "location")}];
  isPlayingMedia = [(BMSiriAssistantSuggestionFeaturesEnvironmentFeatures *)self isPlayingMedia];
  if ([(BMSiriAssistantSuggestionFeaturesEnvironmentFeatures *)self hasIsAirplaneMode])
  {
    v7 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMSiriAssistantSuggestionFeaturesEnvironmentFeatures isAirplaneMode](self, "isAirplaneMode")}];
  }

  else
  {
    v7 = 0;
  }

  if ([(BMSiriAssistantSuggestionFeaturesEnvironmentFeatures *)self hasIsTimerRunning])
  {
    v46 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMSiriAssistantSuggestionFeaturesEnvironmentFeatures isTimerRunning](self, "isTimerRunning")}];
  }

  else
  {
    v46 = 0;
  }

  if ([(BMSiriAssistantSuggestionFeaturesEnvironmentFeatures *)self hasIsConnectedToWifi])
  {
    v45 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMSiriAssistantSuggestionFeaturesEnvironmentFeatures isConnectedToWifi](self, "isConnectedToWifi")}];
  }

  else
  {
    v45 = 0;
  }

  if ([(BMSiriAssistantSuggestionFeaturesEnvironmentFeatures *)self hasHasInternetConnection])
  {
    v44 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMSiriAssistantSuggestionFeaturesEnvironmentFeatures hasInternetConnection](self, "hasInternetConnection")}];
  }

  else
  {
    v44 = 0;
  }

  if ([(BMSiriAssistantSuggestionFeaturesEnvironmentFeatures *)self hasIsScreenSharing])
  {
    v43 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMSiriAssistantSuggestionFeaturesEnvironmentFeatures isScreenSharing](self, "isScreenSharing")}];
  }

  else
  {
    v43 = 0;
  }

  if ([(BMSiriAssistantSuggestionFeaturesEnvironmentFeatures *)self hasAudioIsMuted])
  {
    v42 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMSiriAssistantSuggestionFeaturesEnvironmentFeatures audioIsMuted](self, "audioIsMuted")}];
  }

  else
  {
    v42 = 0;
  }

  if ([(BMSiriAssistantSuggestionFeaturesEnvironmentFeatures *)self hasScreenBrightness])
  {
    v41 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMSiriAssistantSuggestionFeaturesEnvironmentFeatures screenBrightness](self, "screenBrightness")}];
  }

  else
  {
    v41 = 0;
  }

  homeGraph = [(BMSiriAssistantSuggestionFeaturesEnvironmentFeatures *)self homeGraph];
  jsonDictionary = [homeGraph jsonDictionary];

  if ([(BMSiriAssistantSuggestionFeaturesEnvironmentFeatures *)self hasBatteryIsCharging])
  {
    v9 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMSiriAssistantSuggestionFeaturesEnvironmentFeatures batteryIsCharging](self, "batteryIsCharging")}];
  }

  else
  {
    v9 = 0;
  }

  if ([(BMSiriAssistantSuggestionFeaturesEnvironmentFeatures *)self hasIsLowBatteryMode])
  {
    v10 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMSiriAssistantSuggestionFeaturesEnvironmentFeatures isLowBatteryMode](self, "isLowBatteryMode")}];
  }

  else
  {
    v10 = 0;
  }

  v47[0] = @"focusMode";
  null = focusMode;
  if (!focusMode)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v34 = null;
  v48[0] = null;
  v47[1] = @"deviceMotion";
  null2 = deviceMotion;
  if (!deviceMotion)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v33 = null2;
  v48[1] = null2;
  v47[2] = @"location";
  null3 = v5;
  if (!v5)
  {
    null3 = [MEMORY[0x1E695DFB0] null];
  }

  v32 = null3;
  v48[2] = null3;
  v47[3] = @"isPlayingMedia";
  null4 = isPlayingMedia;
  if (!isPlayingMedia)
  {
    null4 = [MEMORY[0x1E695DFB0] null];
  }

  v31 = null4;
  v48[3] = null4;
  v47[4] = @"isAirplaneMode";
  null5 = v7;
  if (!v7)
  {
    null5 = [MEMORY[0x1E695DFB0] null];
  }

  v39 = focusMode;
  v30 = null5;
  v48[4] = null5;
  v47[5] = @"isTimerRunning";
  null6 = v46;
  if (!v46)
  {
    null6 = [MEMORY[0x1E695DFB0] null];
  }

  v38 = v5;
  v48[5] = null6;
  v47[6] = @"isConnectedToWifi";
  null7 = v45;
  if (!v45)
  {
    null7 = [MEMORY[0x1E695DFB0] null];
  }

  v37 = isPlayingMedia;
  v48[6] = null7;
  v47[7] = @"hasInternetConnection";
  null8 = v44;
  if (!v44)
  {
    null8 = [MEMORY[0x1E695DFB0] null];
  }

  v36 = v7;
  v48[7] = null8;
  v47[8] = @"isScreenSharing";
  null9 = v43;
  if (!v43)
  {
    null9 = [MEMORY[0x1E695DFB0] null];
  }

  v48[8] = null9;
  v47[9] = @"audioIsMuted";
  null10 = v42;
  if (!v42)
  {
    null10 = [MEMORY[0x1E695DFB0] null];
  }

  v21 = deviceMotion;
  v48[9] = null10;
  v47[10] = @"screenBrightness";
  null11 = v41;
  if (!v41)
  {
    null11 = [MEMORY[0x1E695DFB0] null];
  }

  v29 = null6;
  v48[10] = null11;
  v47[11] = @"homeGraph";
  null12 = jsonDictionary;
  if (!jsonDictionary)
  {
    null12 = [MEMORY[0x1E695DFB0] null];
  }

  v28 = null7;
  v48[11] = null12;
  v47[12] = @"batteryIsCharging";
  null13 = v9;
  if (!v9)
  {
    null13 = [MEMORY[0x1E695DFB0] null];
  }

  v48[12] = null13;
  v47[13] = @"isLowBatteryMode";
  null14 = v10;
  if (!v10)
  {
    null14 = [MEMORY[0x1E695DFB0] null];
  }

  v48[13] = null14;
  v35 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v48 forKeys:v47 count:14];
  if (v10)
  {
    if (v9)
    {
      goto LABEL_58;
    }
  }

  else
  {

    if (v9)
    {
      goto LABEL_58;
    }
  }

LABEL_58:
  if (!jsonDictionary)
  {
  }

  if (!v41)
  {
  }

  if (!v42)
  {
  }

  if (!v43)
  {
  }

  if (!v44)
  {
  }

  if (!v45)
  {
  }

  if (!v46)
  {
  }

  if (v36)
  {
    if (v37)
    {
      goto LABEL_74;
    }
  }

  else
  {

    if (v37)
    {
LABEL_74:
      if (v38)
      {
        goto LABEL_75;
      }

      goto LABEL_84;
    }
  }

  if (v38)
  {
LABEL_75:
    if (v21)
    {
      goto LABEL_76;
    }

LABEL_85:

    if (v39)
    {
      goto LABEL_77;
    }

    goto LABEL_86;
  }

LABEL_84:

  if (!v21)
  {
    goto LABEL_85;
  }

LABEL_76:
  if (v39)
  {
    goto LABEL_77;
  }

LABEL_86:

LABEL_77:
  v26 = *MEMORY[0x1E69E9840];

  return v35;
}

- (BMSiriAssistantSuggestionFeaturesEnvironmentFeatures)initWithJSONDictionary:(id)dictionary error:(id *)error
{
  v155[1] = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v7 = [dictionaryCopy objectForKeyedSubscript:@"focusMode"];
  if (!v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v126 = 0;
    goto LABEL_4;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v126 = v7;
LABEL_4:
    v8 = [dictionaryCopy objectForKeyedSubscript:@"deviceMotion"];
    selfCopy = self;
    if (!v8 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v9 = 0;
LABEL_7:
      v10 = [dictionaryCopy objectForKeyedSubscript:@"location"];
      v122 = v9;
      errorCopy = error;
      if (v10 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v121 = v10;
        }

        else
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            v57 = v10;
            if (!error)
            {
              v16 = 0;
              v13 = 0;
              goto LABEL_119;
            }

            v58 = objc_alloc(MEMORY[0x1E696ABC0]);
            v59 = *MEMORY[0x1E698F240];
            v150 = *MEMORY[0x1E696A578];
            v123 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (corresponding to enum value), or NSString (string version of enum)", objc_opt_class(), @"location"];
            v151 = v123;
            [MEMORY[0x1E695DF20] dictionaryWithObjects:&v151 forKeys:&v150 count:1];
            v61 = v60 = error;
            v16 = 0;
            v13 = 0;
            *v60 = [v58 initWithDomain:v59 code:2 userInfo:v61];
            v10 = v57;
            v9 = v122;
            v19 = v61;
            goto LABEL_118;
          }

          v121 = [MEMORY[0x1E696AD98] numberWithInt:BMSiriAssistantSuggestionFeaturesEnvironmentFeaturesHashedLocationFromString(v10)];
        }
      }

      else
      {
        v121 = 0;
      }

      v19 = [dictionaryCopy objectForKeyedSubscript:@"isPlayingMedia"];
      if (v19 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          if (!error)
          {
            v123 = 0;
            v13 = 0;
            v16 = v121;
LABEL_118:

            goto LABEL_119;
          }

          v124 = objc_alloc(MEMORY[0x1E696ABC0]);
          v106 = v10;
          v38 = *MEMORY[0x1E698F240];
          v148 = *MEMORY[0x1E696A578];
          v118 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"isPlayingMedia"];
          v149 = v118;
          v39 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v149 forKeys:&v148 count:1];
          v40 = v38;
          v10 = v106;
          v41 = [v124 initWithDomain:v40 code:2 userInfo:v39];
          v123 = 0;
          v13 = 0;
          *error = v41;
          v20 = v39;
          v16 = v121;
          goto LABEL_117;
        }

        v123 = v19;
      }

      else
      {
        v123 = 0;
      }

      v20 = [dictionaryCopy objectForKeyedSubscript:@"isAirplaneMode"];
      if (!v20 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
      {
        v118 = 0;
        goto LABEL_28;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v118 = v20;
LABEL_28:
        v21 = [dictionaryCopy objectForKeyedSubscript:@"isTimerRunning"];
        if (!v21 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
        {
          v111 = v7;
          v22 = v8;
          v117 = 0;
LABEL_31:
          v23 = [dictionaryCopy objectForKeyedSubscript:@"isConnectedToWifi"];
          v110 = v21;
          v115 = v23;
          if (v23 && (v24 = v23, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
          {
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              if (!errorCopy)
              {
                v116 = 0;
                v13 = 0;
                v16 = v121;
                v7 = v111;
                v8 = v22;
                goto LABEL_115;
              }

              v52 = objc_alloc(MEMORY[0x1E696ABC0]);
              v101 = v19;
              v53 = v10;
              v54 = *MEMORY[0x1E698F240];
              v142 = *MEMORY[0x1E696A578];
              v113 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"isConnectedToWifi"];
              v143 = v113;
              v55 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v143 forKeys:&v142 count:1];
              v56 = v54;
              v10 = v53;
              v19 = v101;
              v109 = v55;
              v116 = 0;
              v13 = 0;
              *errorCopy = [v52 initWithDomain:v56 code:2 userInfo:?];
              v16 = v121;
              v7 = v111;
              goto LABEL_127;
            }

            v116 = v24;
          }

          else
          {
            v116 = 0;
          }

          v25 = [dictionaryCopy objectForKeyedSubscript:@"hasInternetConnection"];
          v109 = v25;
          if (!v25)
          {
            v113 = 0;
            v7 = v111;
            goto LABEL_48;
          }

          v26 = v25;
          objc_opt_class();
          v7 = v111;
          if (objc_opt_isKindOfClass())
          {
            v113 = 0;
LABEL_48:
            [dictionaryCopy objectForKeyedSubscript:@"isScreenSharing"];
            v27 = v8 = v22;
            if (v27 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
            {
              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) == 0)
              {
                if (!errorCopy)
                {
                  v107 = 0;
                  v13 = 0;
                  v16 = v121;
                  goto LABEL_113;
                }

                v108 = objc_alloc(MEMORY[0x1E696ABC0]);
                v103 = v19;
                v68 = v10;
                v69 = *MEMORY[0x1E698F240];
                v138 = *MEMORY[0x1E696A578];
                v112 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"isScreenSharing"];
                v139 = v112;
                v70 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v139 forKeys:&v138 count:1];
                v71 = v69;
                v10 = v68;
                v19 = v103;
                v104 = v70;
                v72 = [v108 initWithDomain:v71 code:2 userInfo:?];
                v107 = 0;
                v13 = 0;
                *errorCopy = v72;
                v16 = v121;
                goto LABEL_112;
              }

              v96 = v8;
              v107 = v27;
            }

            else
            {
              v96 = v8;
              v107 = 0;
            }

            v28 = [dictionaryCopy objectForKeyedSubscript:@"audioIsMuted"];
            v104 = v28;
            v105 = v10;
            v94 = v27;
            if (v28 && (v29 = v28, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
            {
              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) == 0)
              {
                if (!errorCopy)
                {
                  v112 = 0;
                  v13 = 0;
                  v16 = v121;
                  v8 = v96;
                  goto LABEL_112;
                }

                v73 = v19;
                v74 = objc_alloc(MEMORY[0x1E696ABC0]);
                v75 = *MEMORY[0x1E698F240];
                v136 = *MEMORY[0x1E696A578];
                v98 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"audioIsMuted"];
                v137 = v98;
                v76 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v137 forKeys:&v136 count:1];
                v77 = v74;
                v19 = v73;
                v27 = v94;
                v78 = v75;
                v10 = v105;
                v95 = v76;
                v112 = 0;
                v13 = 0;
                *errorCopy = [v77 initWithDomain:v78 code:2 userInfo:?];
                v16 = v121;
                v8 = v96;
LABEL_111:

LABEL_112:
                goto LABEL_113;
              }

              v112 = v29;
            }

            else
            {
              v112 = 0;
            }

            v30 = [dictionaryCopy objectForKeyedSubscript:@"screenBrightness"];
            v8 = v96;
            v97 = v20;
            v95 = v30;
            if (v30 && (v31 = v30, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
            {
              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) == 0)
              {
                if (!errorCopy)
                {
                  v98 = 0;
                  v13 = 0;
                  v16 = v121;
                  goto LABEL_111;
                }

                v79 = objc_alloc(MEMORY[0x1E696ABC0]);
                v80 = *MEMORY[0x1E698F240];
                v134 = *MEMORY[0x1E696A578];
                v37 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"screenBrightness"];
                v135 = v37;
                v33 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v135 forKeys:&v134 count:1];
                v98 = 0;
                v13 = 0;
                *errorCopy = [v79 initWithDomain:v80 code:2 userInfo:?];
                v16 = v121;
                goto LABEL_109;
              }

              v98 = v31;
            }

            else
            {
              v98 = 0;
            }

            v32 = [dictionaryCopy objectForKeyedSubscript:@"homeGraph"];
            if (v32 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
            {
              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) == 0)
              {
                if (!errorCopy)
                {
                  v13 = 0;
                  v16 = v121;
                  goto LABEL_110;
                }

                v92 = objc_alloc(MEMORY[0x1E696ABC0]);
                v81 = *MEMORY[0x1E698F240];
                v132 = *MEMORY[0x1E696A578];
                v33 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", objc_opt_class(), @"homeGraph"];
                v133 = v33;
                v82 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v133 forKeys:&v132 count:1];
                *errorCopy = [v92 initWithDomain:v81 code:2 userInfo:v82];

                v13 = 0;
                v37 = v32;
                v16 = v121;
LABEL_109:

                v32 = v37;
LABEL_110:

                v10 = v105;
                v20 = v97;
                v21 = v110;
                goto LABEL_111;
              }

              v37 = v32;
              v127 = 0;
              v33 = [[BMSiriAssistantSuggestionFeaturesEnvironmentFeaturesHomeGraphStatus alloc] initWithJSONDictionary:v37 error:&v127];
              v62 = v127;
              if (v62)
              {
                v16 = v121;
                if (errorCopy)
                {
                  v62 = v62;
                  *errorCopy = v62;
                }

                v13 = 0;
                goto LABEL_109;
              }
            }

            else
            {
              v33 = 0;
            }

            v34 = [dictionaryCopy objectForKeyedSubscript:@"batteryIsCharging"];
            if (v34 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
            {
              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) == 0)
              {
                if (!errorCopy)
                {
                  v91 = 0;
                  v13 = 0;
                  goto LABEL_68;
                }

                v93 = objc_alloc(MEMORY[0x1E696ABC0]);
                v89 = *MEMORY[0x1E698F240];
                v130 = *MEMORY[0x1E696A578];
                v36 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"batteryIsCharging"];
                v131 = v36;
                v35 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v131 forKeys:&v130 count:1];
                v85 = [v93 initWithDomain:v89 code:2 userInfo:v35];
                v91 = 0;
                v13 = 0;
                *errorCopy = v85;
                goto LABEL_67;
              }

              v91 = v34;
            }

            else
            {
              v91 = 0;
            }

            v35 = [dictionaryCopy objectForKeyedSubscript:@"isLowBatteryMode"];
            if (v35 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
            {
              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) == 0)
              {
                if (errorCopy)
                {
                  v90 = objc_alloc(MEMORY[0x1E696ABC0]);
                  v88 = *MEMORY[0x1E698F240];
                  v128 = *MEMORY[0x1E696A578];
                  v86 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"isLowBatteryMode"];
                  v129 = v86;
                  v87 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v129 forKeys:&v128 count:1];
                  *errorCopy = [v90 initWithDomain:v88 code:2 userInfo:v87];
                }

                v36 = 0;
                v13 = 0;
                goto LABEL_67;
              }

              v36 = v35;
            }

            else
            {
              v36 = 0;
            }

            v13 = -[BMSiriAssistantSuggestionFeaturesEnvironmentFeatures initWithFocusMode:deviceMotion:location:isPlayingMedia:isAirplaneMode:isTimerRunning:isConnectedToWifi:hasInternetConnection:isScreenSharing:audioIsMuted:screenBrightness:homeGraph:batteryIsCharging:isLowBatteryMode:](selfCopy, "initWithFocusMode:deviceMotion:location:isPlayingMedia:isAirplaneMode:isTimerRunning:isConnectedToWifi:hasInternetConnection:isScreenSharing:audioIsMuted:screenBrightness:homeGraph:batteryIsCharging:isLowBatteryMode:", v126, v122, [v121 intValue], v123, v118, v117, v116, v113, v107, v112, v98, v33, v91, v36);
            selfCopy = v13;
LABEL_67:

            v27 = v94;
LABEL_68:

            v37 = v32;
            v16 = v121;
            goto LABEL_109;
          }

          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v113 = v26;
            goto LABEL_48;
          }

          if (errorCopy)
          {
            v114 = objc_alloc(MEMORY[0x1E696ABC0]);
            v102 = v19;
            v63 = v10;
            v64 = *MEMORY[0x1E698F240];
            v140 = *MEMORY[0x1E696A578];
            v107 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"hasInternetConnection"];
            v141 = v107;
            v65 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v141 forKeys:&v140 count:1];
            v66 = v64;
            v10 = v63;
            v67 = [v114 initWithDomain:v66 code:2 userInfo:v65];
            v113 = 0;
            v13 = 0;
            *errorCopy = v67;
            v16 = v121;
            v8 = v22;
            v27 = v65;
            v19 = v102;
LABEL_113:

LABEL_114:
            goto LABEL_115;
          }

          v113 = 0;
          v13 = 0;
          v16 = v121;
LABEL_127:
          v8 = v22;
          goto LABEL_114;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v111 = v7;
          v22 = v8;
          v117 = v21;
          goto LABEL_31;
        }

        if (error)
        {
          v47 = objc_alloc(MEMORY[0x1E696ABC0]);
          v100 = v19;
          v48 = v10;
          v49 = *MEMORY[0x1E698F240];
          v144 = *MEMORY[0x1E696A578];
          v116 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"isTimerRunning"];
          v145 = v116;
          v50 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v145 forKeys:&v144 count:1];
          v51 = v49;
          v10 = v48;
          v19 = v100;
          v115 = v50;
          v117 = 0;
          v13 = 0;
          *errorCopy = [v47 initWithDomain:v51 code:2 userInfo:?];
          v16 = v121;
LABEL_115:

          goto LABEL_116;
        }

        v117 = 0;
        v13 = 0;
        v16 = v121;
LABEL_116:

        v9 = v122;
        goto LABEL_117;
      }

      if (error)
      {
        v119 = objc_alloc(MEMORY[0x1E696ABC0]);
        v99 = v19;
        v42 = v10;
        v43 = *MEMORY[0x1E698F240];
        v146 = *MEMORY[0x1E696A578];
        v117 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"isAirplaneMode"];
        v147 = v117;
        v44 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v147 forKeys:&v146 count:1];
        v45 = v43;
        v10 = v42;
        v19 = v99;
        v46 = [v119 initWithDomain:v45 code:2 userInfo:v44];
        v118 = 0;
        v13 = 0;
        *error = v46;
        v21 = v44;
        v16 = v121;
        goto LABEL_116;
      }

      v118 = 0;
      v13 = 0;
      v16 = v121;
LABEL_117:

      goto LABEL_118;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = v8;
      goto LABEL_7;
    }

    if (error)
    {
      v14 = objc_alloc(MEMORY[0x1E696ABC0]);
      v15 = *MEMORY[0x1E698F240];
      v152 = *MEMORY[0x1E696A578];
      v16 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"deviceMotion"];
      v153 = v16;
      v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v153 forKeys:&v152 count:1];
      v18 = v15;
      v10 = v17;
      v9 = 0;
      v13 = 0;
      *error = [v14 initWithDomain:v18 code:2 userInfo:v17];
LABEL_119:

      self = selfCopy;
      goto LABEL_120;
    }

    v9 = 0;
    v13 = 0;
LABEL_120:

    goto LABEL_121;
  }

  if (error)
  {
    v11 = objc_alloc(MEMORY[0x1E696ABC0]);
    v12 = *MEMORY[0x1E698F240];
    v154 = *MEMORY[0x1E696A578];
    v9 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"focusMode"];
    v155[0] = v9;
    v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v155 forKeys:&v154 count:1];
    v126 = 0;
    v13 = 0;
    *error = [v11 initWithDomain:v12 code:2 userInfo:v8];
    goto LABEL_120;
  }

  v126 = 0;
  v13 = 0;
LABEL_121:

  v83 = *MEMORY[0x1E69E9840];
  return v13;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMSiriAssistantSuggestionFeaturesEnvironmentFeatures *)self writeTo:v3];
  immutableData = [v3 immutableData];

  return immutableData;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  if (self->_focusMode)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_deviceMotion)
  {
    PBDataWriterWriteStringField();
  }

  location = self->_location;
  PBDataWriterWriteUint32Field();
  if (self->_isPlayingMedia)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_hasIsAirplaneMode)
  {
    isAirplaneMode = self->_isAirplaneMode;
    PBDataWriterWriteBOOLField();
  }

  if (self->_hasIsTimerRunning)
  {
    isTimerRunning = self->_isTimerRunning;
    PBDataWriterWriteBOOLField();
  }

  if (self->_hasIsConnectedToWifi)
  {
    isConnectedToWifi = self->_isConnectedToWifi;
    PBDataWriterWriteBOOLField();
  }

  if (self->_hasHasInternetConnection)
  {
    hasInternetConnection = self->_hasInternetConnection;
    PBDataWriterWriteBOOLField();
  }

  if (self->_hasIsScreenSharing)
  {
    isScreenSharing = self->_isScreenSharing;
    PBDataWriterWriteBOOLField();
  }

  if (self->_hasAudioIsMuted)
  {
    audioIsMuted = self->_audioIsMuted;
    PBDataWriterWriteBOOLField();
  }

  if (self->_hasScreenBrightness)
  {
    screenBrightness = self->_screenBrightness;
    PBDataWriterWriteInt32Field();
  }

  if (self->_homeGraph)
  {
    PBDataWriterPlaceMark();
    [(BMSiriAssistantSuggestionFeaturesEnvironmentFeaturesHomeGraphStatus *)self->_homeGraph writeTo:toCopy];
    PBDataWriterRecallMark();
  }

  if (self->_hasBatteryIsCharging)
  {
    batteryIsCharging = self->_batteryIsCharging;
    PBDataWriterWriteBOOLField();
  }

  if (self->_hasIsLowBatteryMode)
  {
    isLowBatteryMode = self->_isLowBatteryMode;
    PBDataWriterWriteBOOLField();
  }
}

- (id)initByReadFrom:(id)from
{
  fromCopy = from;
  v87.receiver = self;
  v87.super_class = BMSiriAssistantSuggestionFeaturesEnvironmentFeatures;
  v5 = [(BMEventBase *)&v87 init];
  if (!v5)
  {
    goto LABEL_146;
  }

  position = [fromCopy position];
  if (position < [fromCopy length])
  {
    do
    {
      if ([fromCopy hasError])
      {
        break;
      }

      v7 = 0;
      v8 = 0;
      v9 = 0;
      while (1)
      {
        LOBYTE(v88[0]) = 0;
        v10 = [fromCopy position] + 1;
        if (v10 >= [fromCopy position] && (v11 = objc_msgSend(fromCopy, "position") + 1, v11 <= objc_msgSend(fromCopy, "length")))
        {
          data = [fromCopy data];
          [data getBytes:v88 range:{objc_msgSend(fromCopy, "position"), 1}];

          [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
        }

        else
        {
          [fromCopy _setError];
        }

        v9 |= (v88[0] & 0x7F) << v7;
        if ((v88[0] & 0x80) == 0)
        {
          break;
        }

        v7 += 7;
        v13 = v8++ >= 9;
        if (v13)
        {
          v14 = 0;
          goto LABEL_16;
        }
      }

      v14 = [fromCopy hasError] ? 0 : v9;
LABEL_16:
      if (([fromCopy hasError] & 1) != 0 || (v14 & 7) == 4)
      {
        break;
      }

      switch((v14 >> 3))
      {
        case 1u:
          v15 = PBReaderReadString();
          v16 = 48;
          goto LABEL_70;
        case 2u:
          v15 = PBReaderReadString();
          v16 = 56;
          goto LABEL_70;
        case 3u:
          v38 = 0;
          v39 = 0;
          v40 = 0;
          while (1)
          {
            LOBYTE(v88[0]) = 0;
            v41 = [fromCopy position] + 1;
            if (v41 >= [fromCopy position] && (v42 = objc_msgSend(fromCopy, "position") + 1, v42 <= objc_msgSend(fromCopy, "length")))
            {
              data2 = [fromCopy data];
              [data2 getBytes:v88 range:{objc_msgSend(fromCopy, "position"), 1}];

              [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
            }

            else
            {
              [fromCopy _setError];
            }

            v40 |= (v88[0] & 0x7F) << v38;
            if ((v88[0] & 0x80) == 0)
            {
              break;
            }

            v38 += 7;
            if (v39++ > 8)
            {
              goto LABEL_126;
            }
          }

          if (([fromCopy hasError] & 1) != 0 || v40 > 3)
          {
LABEL_126:
            LODWORD(v40) = 0;
          }

          v5->_location = v40;
          goto LABEL_143;
        case 4u:
          v15 = PBReaderReadString();
          v16 = 64;
LABEL_70:
          v51 = *(&v5->super.super.isa + v16);
          *(&v5->super.super.isa + v16) = v15;

          goto LABEL_143;
        case 5u:
          v19 = 0;
          v20 = 0;
          v21 = 0;
          v5->_hasIsAirplaneMode = 1;
          while (1)
          {
            LOBYTE(v88[0]) = 0;
            v22 = [fromCopy position] + 1;
            if (v22 >= [fromCopy position] && (v23 = objc_msgSend(fromCopy, "position") + 1, v23 <= objc_msgSend(fromCopy, "length")))
            {
              data3 = [fromCopy data];
              [data3 getBytes:v88 range:{objc_msgSend(fromCopy, "position"), 1}];

              [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
            }

            else
            {
              [fromCopy _setError];
            }

            v21 |= (v88[0] & 0x7F) << v19;
            if ((v88[0] & 0x80) == 0)
            {
              break;
            }

            v19 += 7;
            v13 = v20++ >= 9;
            if (v13)
            {
              LOBYTE(v25) = 0;
              goto LABEL_119;
            }
          }

          v25 = (v21 != 0) & ~[fromCopy hasError];
LABEL_119:
          v83 = 16;
          goto LABEL_142;
        case 6u:
          v52 = 0;
          v53 = 0;
          v54 = 0;
          v5->_hasIsTimerRunning = 1;
          while (1)
          {
            LOBYTE(v88[0]) = 0;
            v55 = [fromCopy position] + 1;
            if (v55 >= [fromCopy position] && (v56 = objc_msgSend(fromCopy, "position") + 1, v56 <= objc_msgSend(fromCopy, "length")))
            {
              data4 = [fromCopy data];
              [data4 getBytes:v88 range:{objc_msgSend(fromCopy, "position"), 1}];

              [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
            }

            else
            {
              [fromCopy _setError];
            }

            v54 |= (v88[0] & 0x7F) << v52;
            if ((v88[0] & 0x80) == 0)
            {
              break;
            }

            v52 += 7;
            v13 = v53++ >= 9;
            if (v13)
            {
              LOBYTE(v25) = 0;
              goto LABEL_131;
            }
          }

          v25 = (v54 != 0) & ~[fromCopy hasError];
LABEL_131:
          v83 = 18;
          goto LABEL_142;
        case 7u:
          v64 = 0;
          v65 = 0;
          v66 = 0;
          v5->_hasIsConnectedToWifi = 1;
          while (1)
          {
            LOBYTE(v88[0]) = 0;
            v67 = [fromCopy position] + 1;
            if (v67 >= [fromCopy position] && (v68 = objc_msgSend(fromCopy, "position") + 1, v68 <= objc_msgSend(fromCopy, "length")))
            {
              data5 = [fromCopy data];
              [data5 getBytes:v88 range:{objc_msgSend(fromCopy, "position"), 1}];

              [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
            }

            else
            {
              [fromCopy _setError];
            }

            v66 |= (v88[0] & 0x7F) << v64;
            if ((v88[0] & 0x80) == 0)
            {
              break;
            }

            v64 += 7;
            v13 = v65++ >= 9;
            if (v13)
            {
              LOBYTE(v25) = 0;
              goto LABEL_135;
            }
          }

          v25 = (v66 != 0) & ~[fromCopy hasError];
LABEL_135:
          v83 = 20;
          goto LABEL_142;
        case 8u:
          v45 = 0;
          v46 = 0;
          v47 = 0;
          v5->_hasHasInternetConnection = 1;
          while (1)
          {
            LOBYTE(v88[0]) = 0;
            v48 = [fromCopy position] + 1;
            if (v48 >= [fromCopy position] && (v49 = objc_msgSend(fromCopy, "position") + 1, v49 <= objc_msgSend(fromCopy, "length")))
            {
              data6 = [fromCopy data];
              [data6 getBytes:v88 range:{objc_msgSend(fromCopy, "position"), 1}];

              [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
            }

            else
            {
              [fromCopy _setError];
            }

            v47 |= (v88[0] & 0x7F) << v45;
            if ((v88[0] & 0x80) == 0)
            {
              break;
            }

            v45 += 7;
            v13 = v46++ >= 9;
            if (v13)
            {
              LOBYTE(v25) = 0;
              goto LABEL_129;
            }
          }

          v25 = (v47 != 0) & ~[fromCopy hasError];
LABEL_129:
          v83 = 22;
          goto LABEL_142;
        case 9u:
          v77 = 0;
          v78 = 0;
          v79 = 0;
          v5->_hasIsScreenSharing = 1;
          while (1)
          {
            LOBYTE(v88[0]) = 0;
            v80 = [fromCopy position] + 1;
            if (v80 >= [fromCopy position] && (v81 = objc_msgSend(fromCopy, "position") + 1, v81 <= objc_msgSend(fromCopy, "length")))
            {
              data7 = [fromCopy data];
              [data7 getBytes:v88 range:{objc_msgSend(fromCopy, "position"), 1}];

              [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
            }

            else
            {
              [fromCopy _setError];
            }

            v79 |= (v88[0] & 0x7F) << v77;
            if ((v88[0] & 0x80) == 0)
            {
              break;
            }

            v77 += 7;
            v13 = v78++ >= 9;
            if (v13)
            {
              LOBYTE(v25) = 0;
              goto LABEL_141;
            }
          }

          v25 = (v79 != 0) & ~[fromCopy hasError];
LABEL_141:
          v83 = 24;
          goto LABEL_142;
        case 0xAu:
          v32 = 0;
          v33 = 0;
          v34 = 0;
          v5->_hasAudioIsMuted = 1;
          while (1)
          {
            LOBYTE(v88[0]) = 0;
            v35 = [fromCopy position] + 1;
            if (v35 >= [fromCopy position] && (v36 = objc_msgSend(fromCopy, "position") + 1, v36 <= objc_msgSend(fromCopy, "length")))
            {
              data8 = [fromCopy data];
              [data8 getBytes:v88 range:{objc_msgSend(fromCopy, "position"), 1}];

              [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
            }

            else
            {
              [fromCopy _setError];
            }

            v34 |= (v88[0] & 0x7F) << v32;
            if ((v88[0] & 0x80) == 0)
            {
              break;
            }

            v32 += 7;
            v13 = v33++ >= 9;
            if (v13)
            {
              LOBYTE(v25) = 0;
              goto LABEL_123;
            }
          }

          v25 = (v34 != 0) & ~[fromCopy hasError];
LABEL_123:
          v83 = 26;
          goto LABEL_142;
        case 0xBu:
          v70 = 0;
          v71 = 0;
          v72 = 0;
          v5->_hasScreenBrightness = 1;
          while (1)
          {
            LOBYTE(v88[0]) = 0;
            v73 = [fromCopy position] + 1;
            if (v73 >= [fromCopy position] && (v74 = objc_msgSend(fromCopy, "position") + 1, v74 <= objc_msgSend(fromCopy, "length")))
            {
              data9 = [fromCopy data];
              [data9 getBytes:v88 range:{objc_msgSend(fromCopy, "position"), 1}];

              [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
            }

            else
            {
              [fromCopy _setError];
            }

            v72 |= (v88[0] & 0x7F) << v70;
            if ((v88[0] & 0x80) == 0)
            {
              break;
            }

            v70 += 7;
            v13 = v71++ >= 9;
            if (v13)
            {
              v76 = 0;
              goto LABEL_139;
            }
          }

          if ([fromCopy hasError])
          {
            v76 = 0;
          }

          else
          {
            v76 = v72;
          }

LABEL_139:
          v5->_screenBrightness = v76;
          goto LABEL_143;
        case 0xCu:
          v88[0] = 0;
          v88[1] = 0;
          if (!PBReaderPlaceMark())
          {
            goto LABEL_145;
          }

          v17 = [[BMSiriAssistantSuggestionFeaturesEnvironmentFeaturesHomeGraphStatus alloc] initByReadFrom:fromCopy];
          if (!v17)
          {
            goto LABEL_145;
          }

          homeGraph = v5->_homeGraph;
          v5->_homeGraph = v17;

          PBReaderRecallMark();
          goto LABEL_143;
        case 0xDu:
          v26 = 0;
          v27 = 0;
          v28 = 0;
          v5->_hasBatteryIsCharging = 1;
          while (1)
          {
            LOBYTE(v88[0]) = 0;
            v29 = [fromCopy position] + 1;
            if (v29 >= [fromCopy position] && (v30 = objc_msgSend(fromCopy, "position") + 1, v30 <= objc_msgSend(fromCopy, "length")))
            {
              data10 = [fromCopy data];
              [data10 getBytes:v88 range:{objc_msgSend(fromCopy, "position"), 1}];

              [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
            }

            else
            {
              [fromCopy _setError];
            }

            v28 |= (v88[0] & 0x7F) << v26;
            if ((v88[0] & 0x80) == 0)
            {
              break;
            }

            v26 += 7;
            v13 = v27++ >= 9;
            if (v13)
            {
              LOBYTE(v25) = 0;
              goto LABEL_121;
            }
          }

          v25 = (v28 != 0) & ~[fromCopy hasError];
LABEL_121:
          v83 = 29;
          goto LABEL_142;
        case 0xEu:
          v58 = 0;
          v59 = 0;
          v60 = 0;
          v5->_hasIsLowBatteryMode = 1;
          break;
        default:
          if ((PBReaderSkipValueWithTag() & 1) == 0)
          {
            goto LABEL_145;
          }

          goto LABEL_143;
      }

      while (1)
      {
        LOBYTE(v88[0]) = 0;
        v61 = [fromCopy position] + 1;
        if (v61 >= [fromCopy position] && (v62 = objc_msgSend(fromCopy, "position") + 1, v62 <= objc_msgSend(fromCopy, "length")))
        {
          data11 = [fromCopy data];
          [data11 getBytes:v88 range:{objc_msgSend(fromCopy, "position"), 1}];

          [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
        }

        else
        {
          [fromCopy _setError];
        }

        v60 |= (v88[0] & 0x7F) << v58;
        if ((v88[0] & 0x80) == 0)
        {
          break;
        }

        v58 += 7;
        v13 = v59++ >= 9;
        if (v13)
        {
          LOBYTE(v25) = 0;
          goto LABEL_133;
        }
      }

      v25 = (v60 != 0) & ~[fromCopy hasError];
LABEL_133:
      v83 = 31;
LABEL_142:
      *(&v5->super.super.isa + v83) = v25;
LABEL_143:
      position2 = [fromCopy position];
    }

    while (position2 < [fromCopy length]);
  }

  if ([fromCopy hasError])
  {
LABEL_145:
    v85 = 0;
  }

  else
  {
LABEL_146:
    v85 = v5;
  }

  return v85;
}

- (NSString)description
{
  v14 = objc_alloc(MEMORY[0x1E696AEC0]);
  focusMode = [(BMSiriAssistantSuggestionFeaturesEnvironmentFeatures *)self focusMode];
  deviceMotion = [(BMSiriAssistantSuggestionFeaturesEnvironmentFeatures *)self deviceMotion];
  v18 = BMSiriAssistantSuggestionFeaturesEnvironmentFeaturesHashedLocationAsString([(BMSiriAssistantSuggestionFeaturesEnvironmentFeatures *)self location]);
  isPlayingMedia = [(BMSiriAssistantSuggestionFeaturesEnvironmentFeatures *)self isPlayingMedia];
  v16 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMSiriAssistantSuggestionFeaturesEnvironmentFeatures isAirplaneMode](self, "isAirplaneMode")}];
  v12 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMSiriAssistantSuggestionFeaturesEnvironmentFeatures isTimerRunning](self, "isTimerRunning")}];
  v11 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMSiriAssistantSuggestionFeaturesEnvironmentFeatures isConnectedToWifi](self, "isConnectedToWifi")}];
  v3 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMSiriAssistantSuggestionFeaturesEnvironmentFeatures hasInternetConnection](self, "hasInternetConnection")}];
  v4 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMSiriAssistantSuggestionFeaturesEnvironmentFeatures isScreenSharing](self, "isScreenSharing")}];
  v5 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMSiriAssistantSuggestionFeaturesEnvironmentFeatures audioIsMuted](self, "audioIsMuted")}];
  v6 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMSiriAssistantSuggestionFeaturesEnvironmentFeatures screenBrightness](self, "screenBrightness")}];
  homeGraph = [(BMSiriAssistantSuggestionFeaturesEnvironmentFeatures *)self homeGraph];
  v8 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMSiriAssistantSuggestionFeaturesEnvironmentFeatures batteryIsCharging](self, "batteryIsCharging")}];
  v9 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMSiriAssistantSuggestionFeaturesEnvironmentFeatures isLowBatteryMode](self, "isLowBatteryMode")}];
  v15 = [v14 initWithFormat:@"BMSiriAssistantSuggestionFeaturesEnvironmentFeatures with focusMode: %@, deviceMotion: %@, location: %@, isPlayingMedia: %@, isAirplaneMode: %@, isTimerRunning: %@, isConnectedToWifi: %@, hasInternetConnection: %@, isScreenSharing: %@, audioIsMuted: %@, screenBrightness: %@, homeGraph: %@, batteryIsCharging: %@, isLowBatteryMode: %@", focusMode, deviceMotion, v18, isPlayingMedia, v16, v12, v11, v3, v4, v5, v6, homeGraph, v8, v9];

  return v15;
}

- (BMSiriAssistantSuggestionFeaturesEnvironmentFeatures)initWithFocusMode:(id)mode deviceMotion:(id)motion location:(int)location isPlayingMedia:(id)media isAirplaneMode:(id)airplaneMode isTimerRunning:(id)running isConnectedToWifi:(id)wifi hasInternetConnection:(id)self0 isScreenSharing:(id)self1 audioIsMuted:(id)self2 screenBrightness:(id)self3 homeGraph:(id)self4 batteryIsCharging:(id)self5 isLowBatteryMode:(id)self6
{
  modeCopy = mode;
  motionCopy = motion;
  motionCopy2 = motion;
  mediaCopy = media;
  mediaCopy2 = media;
  airplaneModeCopy = airplaneMode;
  runningCopy = running;
  wifiCopy = wifi;
  connectionCopy = connection;
  v24 = airplaneModeCopy;
  sharingCopy = sharing;
  v26 = runningCopy;
  mutedCopy = muted;
  v27 = sharingCopy;
  brightnessCopy = brightness;
  graphCopy = graph;
  chargingCopy = charging;
  batteryModeCopy = batteryMode;
  v44.receiver = self;
  v44.super_class = BMSiriAssistantSuggestionFeaturesEnvironmentFeatures;
  v32 = [(BMEventBase *)&v44 init];
  if (v32)
  {
    v32->_dataVersion = [objc_opt_class() latestDataVersion];
    objc_storeStrong(&v32->_focusMode, mode);
    objc_storeStrong(&v32->_deviceMotion, motionCopy);
    v32->_location = location;
    objc_storeStrong(&v32->_isPlayingMedia, mediaCopy);
    if (v24)
    {
      v32->_hasIsAirplaneMode = 1;
      v32->_isAirplaneMode = [v24 BOOLValue];
    }

    else
    {
      v32->_hasIsAirplaneMode = 0;
      v32->_isAirplaneMode = 0;
    }

    if (v26)
    {
      v32->_hasIsTimerRunning = 1;
      v32->_isTimerRunning = [v26 BOOLValue];
    }

    else
    {
      v32->_hasIsTimerRunning = 0;
      v32->_isTimerRunning = 0;
    }

    if (wifiCopy)
    {
      v32->_hasIsConnectedToWifi = 1;
      v32->_isConnectedToWifi = [wifiCopy BOOLValue];
    }

    else
    {
      v32->_hasIsConnectedToWifi = 0;
      v32->_isConnectedToWifi = 0;
    }

    if (connectionCopy)
    {
      v32->_hasHasInternetConnection = 1;
      v32->_hasInternetConnection = [connectionCopy BOOLValue];
    }

    else
    {
      v32->_hasHasInternetConnection = 0;
      v32->_hasInternetConnection = 0;
    }

    if (v27)
    {
      v32->_hasIsScreenSharing = 1;
      v32->_isScreenSharing = [v27 BOOLValue];
    }

    else
    {
      v32->_hasIsScreenSharing = 0;
      v32->_isScreenSharing = 0;
    }

    if (mutedCopy)
    {
      v32->_hasAudioIsMuted = 1;
      v32->_audioIsMuted = [mutedCopy BOOLValue];
    }

    else
    {
      v32->_hasAudioIsMuted = 0;
      v32->_audioIsMuted = 0;
    }

    if (brightnessCopy)
    {
      v32->_hasScreenBrightness = 1;
      intValue = [brightnessCopy intValue];
    }

    else
    {
      v32->_hasScreenBrightness = 0;
      intValue = -1;
    }

    v32->_screenBrightness = intValue;
    objc_storeStrong(&v32->_homeGraph, graph);
    if (chargingCopy)
    {
      v32->_hasBatteryIsCharging = 1;
      v32->_batteryIsCharging = [chargingCopy BOOLValue];
    }

    else
    {
      v32->_hasBatteryIsCharging = 0;
      v32->_batteryIsCharging = 0;
    }

    if (batteryModeCopy)
    {
      v32->_hasIsLowBatteryMode = 1;
      v32->_isLowBatteryMode = [batteryModeCopy BOOLValue];
    }

    else
    {
      v32->_hasIsLowBatteryMode = 0;
      v32->_isLowBatteryMode = 0;
    }
  }

  return v32;
}

+ (id)protoFields
{
  v19[14] = *MEMORY[0x1E69E9840];
  v18 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"focusMode" number:1 type:13 subMessageClass:0];
  v19[0] = v18;
  v17 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"deviceMotion" number:2 type:13 subMessageClass:0];
  v19[1] = v17;
  v16 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"location" number:3 type:4 subMessageClass:0];
  v19[2] = v16;
  v15 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"isPlayingMedia" number:4 type:13 subMessageClass:0];
  v19[3] = v15;
  v14 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"isAirplaneMode" number:5 type:12 subMessageClass:0];
  v19[4] = v14;
  v2 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"isTimerRunning" number:6 type:12 subMessageClass:0];
  v19[5] = v2;
  v3 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"isConnectedToWifi" number:7 type:12 subMessageClass:0];
  v19[6] = v3;
  v4 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"hasInternetConnection" number:8 type:12 subMessageClass:0];
  v19[7] = v4;
  v5 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"isScreenSharing" number:9 type:12 subMessageClass:0];
  v19[8] = v5;
  v6 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"audioIsMuted" number:10 type:12 subMessageClass:0];
  v19[9] = v6;
  v7 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"screenBrightness" number:11 type:2 subMessageClass:0];
  v19[10] = v7;
  v8 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"homeGraph" number:12 type:14 subMessageClass:objc_opt_class()];
  v19[11] = v8;
  v9 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"batteryIsCharging" number:13 type:12 subMessageClass:0];
  v19[12] = v9;
  v10 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"isLowBatteryMode" number:14 type:12 subMessageClass:0];
  v19[13] = v10;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:14];

  v12 = *MEMORY[0x1E69E9840];

  return v11;
}

+ (id)columns
{
  v19[14] = *MEMORY[0x1E69E9840];
  v18 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"focusMode" dataType:2 requestOnly:0 fieldNumber:1 protoDataType:13 convertedType:0];
  v17 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"deviceMotion" dataType:2 requestOnly:0 fieldNumber:2 protoDataType:13 convertedType:0];
  v16 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"location" dataType:0 requestOnly:0 fieldNumber:3 protoDataType:4 convertedType:0];
  v15 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"isPlayingMedia" dataType:2 requestOnly:0 fieldNumber:4 protoDataType:13 convertedType:0];
  v2 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"isAirplaneMode" dataType:0 requestOnly:0 fieldNumber:5 protoDataType:12 convertedType:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"isTimerRunning" dataType:0 requestOnly:0 fieldNumber:6 protoDataType:12 convertedType:0];
  v4 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"isConnectedToWifi" dataType:0 requestOnly:0 fieldNumber:7 protoDataType:12 convertedType:0];
  v5 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"hasInternetConnection" dataType:0 requestOnly:0 fieldNumber:8 protoDataType:12 convertedType:0];
  v6 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"isScreenSharing" dataType:0 requestOnly:0 fieldNumber:9 protoDataType:12 convertedType:0];
  v14 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"audioIsMuted" dataType:0 requestOnly:0 fieldNumber:10 protoDataType:12 convertedType:0];
  v7 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"screenBrightness" dataType:0 requestOnly:0 fieldNumber:11 protoDataType:2 convertedType:0];
  v13 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"homeGraph_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_895];
  v8 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"batteryIsCharging" dataType:0 requestOnly:0 fieldNumber:13 protoDataType:12 convertedType:0];
  v9 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"isLowBatteryMode" dataType:0 requestOnly:0 fieldNumber:14 protoDataType:12 convertedType:0];
  v19[0] = v18;
  v19[1] = v17;
  v19[2] = v16;
  v19[3] = v15;
  v19[4] = v2;
  v19[5] = v3;
  v19[6] = v4;
  v19[7] = v5;
  v19[8] = v6;
  v19[9] = v14;
  v19[10] = v7;
  v19[11] = v13;
  v19[12] = v8;
  v19[13] = v9;
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:14];

  v10 = *MEMORY[0x1E69E9840];

  return v12;
}

id __63__BMSiriAssistantSuggestionFeaturesEnvironmentFeatures_columns__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 eventBodyKeepingBackingData:1];
  v3 = [v2 homeGraph];
  v4 = [v3 jsonDictionary];
  v5 = BMConvertObjectToJSONString();

  return v5;
}

+ (id)eventWithData:(id)data dataVersion:(unsigned int)version
{
  if (version)
  {
    v4 = 0;
  }

  else
  {
    v5 = MEMORY[0x1E69C65B8];
    dataCopy = data;
    v7 = [[v5 alloc] initWithData:dataCopy];

    v8 = [[BMSiriAssistantSuggestionFeaturesEnvironmentFeatures alloc] initByReadFrom:v7];
    v4 = v8;
    if (v8)
    {
      v8[9] = 0;
    }
  }

  return v4;
}

@end