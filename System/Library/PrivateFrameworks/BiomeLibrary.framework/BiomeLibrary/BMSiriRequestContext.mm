@interface BMSiriRequestContext
+ (id)columns;
+ (id)eventWithData:(id)data dataVersion:(unsigned int)version;
+ (id)protoFields;
- (BMSiriRequestContext)initWithJSONDictionary:(id)dictionary error:(id *)error;
- (BMSiriRequestContext)initWithSessionID:(id)d requestID:(id)iD inputOrigin:(id)origin responseMode:(id)mode isEyesFree:(id)free isMultiUser:(id)user isVoiceTriggerEnabled:(id)enabled isTextToSpeechEnabled:(id)self0 isTriggerlessFollowup:(id)self1 deviceRestrictions:(id)self2 bargeInModes:(id)self3 identifiedUser:(id)self4 encodedLocation:(id)self5 countryCode:(id)self6 siriLocale:(id)self7 contentRestrictions:(id)self8 uiScale:(id)self9 temperatureUnit:(id)unit allowUserGeneratedContent:(id)content censorSpeech:(id)speech meCard:(id)card deviceIdiom:(int)idiom didPSCFire:(id)fire;
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (id)_bargeInModesJSONArray;
- (id)_deviceRestrictionsJSONArray;
- (id)initByReadFrom:(id)from;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)to;
@end

@implementation BMSiriRequestContext

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    sessionID = [(BMSiriRequestContext *)self sessionID];
    sessionID2 = [v5 sessionID];
    v8 = sessionID2;
    if (sessionID == sessionID2)
    {
    }

    else
    {
      sessionID3 = [(BMSiriRequestContext *)self sessionID];
      sessionID4 = [v5 sessionID];
      v11 = [sessionID3 isEqual:sessionID4];

      if (!v11)
      {
        goto LABEL_101;
      }
    }

    requestID = [(BMSiriRequestContext *)self requestID];
    requestID2 = [v5 requestID];
    v15 = requestID2;
    if (requestID == requestID2)
    {
    }

    else
    {
      requestID3 = [(BMSiriRequestContext *)self requestID];
      requestID4 = [v5 requestID];
      v18 = [requestID3 isEqual:requestID4];

      if (!v18)
      {
        goto LABEL_101;
      }
    }

    inputOrigin = [(BMSiriRequestContext *)self inputOrigin];
    inputOrigin2 = [v5 inputOrigin];
    v21 = inputOrigin2;
    if (inputOrigin == inputOrigin2)
    {
    }

    else
    {
      inputOrigin3 = [(BMSiriRequestContext *)self inputOrigin];
      inputOrigin4 = [v5 inputOrigin];
      v24 = [inputOrigin3 isEqual:inputOrigin4];

      if (!v24)
      {
        goto LABEL_101;
      }
    }

    responseMode = [(BMSiriRequestContext *)self responseMode];
    responseMode2 = [v5 responseMode];
    v27 = responseMode2;
    if (responseMode == responseMode2)
    {
    }

    else
    {
      responseMode3 = [(BMSiriRequestContext *)self responseMode];
      responseMode4 = [v5 responseMode];
      v30 = [responseMode3 isEqual:responseMode4];

      if (!v30)
      {
        goto LABEL_101;
      }
    }

    if (-[BMSiriRequestContext hasIsEyesFree](self, "hasIsEyesFree") || [v5 hasIsEyesFree])
    {
      if (![(BMSiriRequestContext *)self hasIsEyesFree])
      {
        goto LABEL_101;
      }

      if (![v5 hasIsEyesFree])
      {
        goto LABEL_101;
      }

      isEyesFree = [(BMSiriRequestContext *)self isEyesFree];
      if (isEyesFree != [v5 isEyesFree])
      {
        goto LABEL_101;
      }
    }

    if (-[BMSiriRequestContext hasIsMultiUser](self, "hasIsMultiUser") || [v5 hasIsMultiUser])
    {
      if (![(BMSiriRequestContext *)self hasIsMultiUser])
      {
        goto LABEL_101;
      }

      if (![v5 hasIsMultiUser])
      {
        goto LABEL_101;
      }

      isMultiUser = [(BMSiriRequestContext *)self isMultiUser];
      if (isMultiUser != [v5 isMultiUser])
      {
        goto LABEL_101;
      }
    }

    if (-[BMSiriRequestContext hasIsVoiceTriggerEnabled](self, "hasIsVoiceTriggerEnabled") || [v5 hasIsVoiceTriggerEnabled])
    {
      if (![(BMSiriRequestContext *)self hasIsVoiceTriggerEnabled])
      {
        goto LABEL_101;
      }

      if (![v5 hasIsVoiceTriggerEnabled])
      {
        goto LABEL_101;
      }

      isVoiceTriggerEnabled = [(BMSiriRequestContext *)self isVoiceTriggerEnabled];
      if (isVoiceTriggerEnabled != [v5 isVoiceTriggerEnabled])
      {
        goto LABEL_101;
      }
    }

    if (-[BMSiriRequestContext hasIsTextToSpeechEnabled](self, "hasIsTextToSpeechEnabled") || [v5 hasIsTextToSpeechEnabled])
    {
      if (![(BMSiriRequestContext *)self hasIsTextToSpeechEnabled])
      {
        goto LABEL_101;
      }

      if (![v5 hasIsTextToSpeechEnabled])
      {
        goto LABEL_101;
      }

      isTextToSpeechEnabled = [(BMSiriRequestContext *)self isTextToSpeechEnabled];
      if (isTextToSpeechEnabled != [v5 isTextToSpeechEnabled])
      {
        goto LABEL_101;
      }
    }

    if (-[BMSiriRequestContext hasIsTriggerlessFollowup](self, "hasIsTriggerlessFollowup") || [v5 hasIsTriggerlessFollowup])
    {
      if (![(BMSiriRequestContext *)self hasIsTriggerlessFollowup])
      {
        goto LABEL_101;
      }

      if (![v5 hasIsTriggerlessFollowup])
      {
        goto LABEL_101;
      }

      isTriggerlessFollowup = [(BMSiriRequestContext *)self isTriggerlessFollowup];
      if (isTriggerlessFollowup != [v5 isTriggerlessFollowup])
      {
        goto LABEL_101;
      }
    }

    deviceRestrictions = [(BMSiriRequestContext *)self deviceRestrictions];
    deviceRestrictions2 = [v5 deviceRestrictions];
    v38 = deviceRestrictions2;
    if (deviceRestrictions == deviceRestrictions2)
    {
    }

    else
    {
      deviceRestrictions3 = [(BMSiriRequestContext *)self deviceRestrictions];
      deviceRestrictions4 = [v5 deviceRestrictions];
      v41 = [deviceRestrictions3 isEqual:deviceRestrictions4];

      if (!v41)
      {
        goto LABEL_101;
      }
    }

    bargeInModes = [(BMSiriRequestContext *)self bargeInModes];
    bargeInModes2 = [v5 bargeInModes];
    v44 = bargeInModes2;
    if (bargeInModes == bargeInModes2)
    {
    }

    else
    {
      bargeInModes3 = [(BMSiriRequestContext *)self bargeInModes];
      bargeInModes4 = [v5 bargeInModes];
      v47 = [bargeInModes3 isEqual:bargeInModes4];

      if (!v47)
      {
        goto LABEL_101;
      }
    }

    identifiedUser = [(BMSiriRequestContext *)self identifiedUser];
    identifiedUser2 = [v5 identifiedUser];
    v50 = identifiedUser2;
    if (identifiedUser == identifiedUser2)
    {
    }

    else
    {
      identifiedUser3 = [(BMSiriRequestContext *)self identifiedUser];
      identifiedUser4 = [v5 identifiedUser];
      v53 = [identifiedUser3 isEqual:identifiedUser4];

      if (!v53)
      {
        goto LABEL_101;
      }
    }

    encodedLocation = [(BMSiriRequestContext *)self encodedLocation];
    encodedLocation2 = [v5 encodedLocation];
    v56 = encodedLocation2;
    if (encodedLocation == encodedLocation2)
    {
    }

    else
    {
      encodedLocation3 = [(BMSiriRequestContext *)self encodedLocation];
      encodedLocation4 = [v5 encodedLocation];
      v59 = [encodedLocation3 isEqual:encodedLocation4];

      if (!v59)
      {
        goto LABEL_101;
      }
    }

    countryCode = [(BMSiriRequestContext *)self countryCode];
    countryCode2 = [v5 countryCode];
    v62 = countryCode2;
    if (countryCode == countryCode2)
    {
    }

    else
    {
      countryCode3 = [(BMSiriRequestContext *)self countryCode];
      countryCode4 = [v5 countryCode];
      v65 = [countryCode3 isEqual:countryCode4];

      if (!v65)
      {
        goto LABEL_101;
      }
    }

    siriLocale = [(BMSiriRequestContext *)self siriLocale];
    siriLocale2 = [v5 siriLocale];
    v68 = siriLocale2;
    if (siriLocale == siriLocale2)
    {
    }

    else
    {
      siriLocale3 = [(BMSiriRequestContext *)self siriLocale];
      siriLocale4 = [v5 siriLocale];
      v71 = [siriLocale3 isEqual:siriLocale4];

      if (!v71)
      {
        goto LABEL_101;
      }
    }

    contentRestrictions = [(BMSiriRequestContext *)self contentRestrictions];
    contentRestrictions2 = [v5 contentRestrictions];
    v74 = contentRestrictions2;
    if (contentRestrictions == contentRestrictions2)
    {
    }

    else
    {
      contentRestrictions3 = [(BMSiriRequestContext *)self contentRestrictions];
      contentRestrictions4 = [v5 contentRestrictions];
      v77 = [contentRestrictions3 isEqual:contentRestrictions4];

      if (!v77)
      {
        goto LABEL_101;
      }
    }

    if (-[BMSiriRequestContext hasUiScale](self, "hasUiScale") || [v5 hasUiScale])
    {
      if (![(BMSiriRequestContext *)self hasUiScale])
      {
        goto LABEL_101;
      }

      if (![v5 hasUiScale])
      {
        goto LABEL_101;
      }

      [(BMSiriRequestContext *)self uiScale];
      v79 = v78;
      [v5 uiScale];
      if (v79 != v80)
      {
        goto LABEL_101;
      }
    }

    temperatureUnit = [(BMSiriRequestContext *)self temperatureUnit];
    temperatureUnit2 = [v5 temperatureUnit];
    v83 = temperatureUnit2;
    if (temperatureUnit == temperatureUnit2)
    {
    }

    else
    {
      temperatureUnit3 = [(BMSiriRequestContext *)self temperatureUnit];
      temperatureUnit4 = [v5 temperatureUnit];
      v86 = [temperatureUnit3 isEqual:temperatureUnit4];

      if (!v86)
      {
        goto LABEL_101;
      }
    }

    if (-[BMSiriRequestContext hasAllowUserGeneratedContent](self, "hasAllowUserGeneratedContent") || [v5 hasAllowUserGeneratedContent])
    {
      if (![(BMSiriRequestContext *)self hasAllowUserGeneratedContent])
      {
        goto LABEL_101;
      }

      if (![v5 hasAllowUserGeneratedContent])
      {
        goto LABEL_101;
      }

      allowUserGeneratedContent = [(BMSiriRequestContext *)self allowUserGeneratedContent];
      if (allowUserGeneratedContent != [v5 allowUserGeneratedContent])
      {
        goto LABEL_101;
      }
    }

    if (-[BMSiriRequestContext hasCensorSpeech](self, "hasCensorSpeech") || [v5 hasCensorSpeech])
    {
      if (![(BMSiriRequestContext *)self hasCensorSpeech])
      {
        goto LABEL_101;
      }

      if (![v5 hasCensorSpeech])
      {
        goto LABEL_101;
      }

      censorSpeech = [(BMSiriRequestContext *)self censorSpeech];
      if (censorSpeech != [v5 censorSpeech])
      {
        goto LABEL_101;
      }
    }

    meCard = [(BMSiriRequestContext *)self meCard];
    meCard2 = [v5 meCard];
    v91 = meCard2;
    if (meCard == meCard2)
    {
    }

    else
    {
      meCard3 = [(BMSiriRequestContext *)self meCard];
      meCard4 = [v5 meCard];
      v94 = [meCard3 isEqual:meCard4];

      if (!v94)
      {
        goto LABEL_101;
      }
    }

    deviceIdiom = [(BMSiriRequestContext *)self deviceIdiom];
    if (deviceIdiom == [v5 deviceIdiom])
    {
      if (!-[BMSiriRequestContext hasDidPSCFire](self, "hasDidPSCFire") && ![v5 hasDidPSCFire])
      {
        LOBYTE(v12) = 1;
        goto LABEL_102;
      }

      if (-[BMSiriRequestContext hasDidPSCFire](self, "hasDidPSCFire") && [v5 hasDidPSCFire])
      {
        didPSCFire = [(BMSiriRequestContext *)self didPSCFire];
        v12 = didPSCFire ^ [v5 didPSCFire] ^ 1;
LABEL_102:

        goto LABEL_103;
      }
    }

LABEL_101:
    LOBYTE(v12) = 0;
    goto LABEL_102;
  }

  LOBYTE(v12) = 0;
LABEL_103:

  return v12;
}

- (id)jsonDictionary
{
  v87[23] = *MEMORY[0x1E69E9840];
  sessionID = [(BMSiriRequestContext *)self sessionID];
  requestID = [(BMSiriRequestContext *)self requestID];
  inputOrigin = [(BMSiriRequestContext *)self inputOrigin];
  responseMode = [(BMSiriRequestContext *)self responseMode];
  if ([(BMSiriRequestContext *)self hasIsEyesFree])
  {
    v7 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMSiriRequestContext isEyesFree](self, "isEyesFree")}];
  }

  else
  {
    v7 = 0;
  }

  if ([(BMSiriRequestContext *)self hasIsMultiUser])
  {
    v8 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMSiriRequestContext isMultiUser](self, "isMultiUser")}];
  }

  else
  {
    v8 = 0;
  }

  if ([(BMSiriRequestContext *)self hasIsVoiceTriggerEnabled])
  {
    v9 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMSiriRequestContext isVoiceTriggerEnabled](self, "isVoiceTriggerEnabled")}];
  }

  else
  {
    v9 = 0;
  }

  if ([(BMSiriRequestContext *)self hasIsTextToSpeechEnabled])
  {
    v85 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMSiriRequestContext isTextToSpeechEnabled](self, "isTextToSpeechEnabled")}];
  }

  else
  {
    v85 = 0;
  }

  if ([(BMSiriRequestContext *)self hasIsTriggerlessFollowup])
  {
    v84 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMSiriRequestContext isTriggerlessFollowup](self, "isTriggerlessFollowup")}];
  }

  else
  {
    v84 = 0;
  }

  _deviceRestrictionsJSONArray = [(BMSiriRequestContext *)self _deviceRestrictionsJSONArray];
  _bargeInModesJSONArray = [(BMSiriRequestContext *)self _bargeInModesJSONArray];
  identifiedUser = [(BMSiriRequestContext *)self identifiedUser];
  jsonDictionary = [identifiedUser jsonDictionary];

  encodedLocation = [(BMSiriRequestContext *)self encodedLocation];
  v80 = [encodedLocation base64EncodedStringWithOptions:0];

  countryCode = [(BMSiriRequestContext *)self countryCode];
  siriLocale = [(BMSiriRequestContext *)self siriLocale];
  contentRestrictions = [(BMSiriRequestContext *)self contentRestrictions];
  jsonDictionary2 = [contentRestrictions jsonDictionary];

  if (![(BMSiriRequestContext *)self hasUiScale]|| ([(BMSiriRequestContext *)self uiScale], fabs(v13) == INFINITY))
  {
    v76 = 0;
  }

  else
  {
    [(BMSiriRequestContext *)self uiScale];
    v14 = MEMORY[0x1E696AD98];
    [(BMSiriRequestContext *)self uiScale];
    v76 = [v14 numberWithDouble:?];
  }

  temperatureUnit = [(BMSiriRequestContext *)self temperatureUnit];
  if ([(BMSiriRequestContext *)self hasAllowUserGeneratedContent])
  {
    v74 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMSiriRequestContext allowUserGeneratedContent](self, "allowUserGeneratedContent")}];
  }

  else
  {
    v74 = 0;
  }

  if ([(BMSiriRequestContext *)self hasCensorSpeech])
  {
    v73 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMSiriRequestContext censorSpeech](self, "censorSpeech")}];
  }

  else
  {
    v73 = 0;
  }

  meCard = [(BMSiriRequestContext *)self meCard];
  jsonDictionary3 = [meCard jsonDictionary];

  v71 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMSiriRequestContext deviceIdiom](self, "deviceIdiom")}];
  if ([(BMSiriRequestContext *)self hasDidPSCFire])
  {
    v16 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMSiriRequestContext didPSCFire](self, "didPSCFire")}];
  }

  else
  {
    v16 = 0;
  }

  v86[0] = @"sessionID";
  null = sessionID;
  if (!sessionID)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v60 = null;
  v87[0] = null;
  v86[1] = @"requestID";
  null2 = requestID;
  if (!requestID)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v59 = null2;
  v87[1] = null2;
  v86[2] = @"inputOrigin";
  null3 = inputOrigin;
  if (!inputOrigin)
  {
    null3 = [MEMORY[0x1E695DFB0] null];
  }

  v58 = null3;
  v87[2] = null3;
  v86[3] = @"responseMode";
  null4 = responseMode;
  if (!responseMode)
  {
    null4 = [MEMORY[0x1E695DFB0] null];
  }

  v57 = null4;
  v87[3] = null4;
  v86[4] = @"isEyesFree";
  null5 = v7;
  if (!v7)
  {
    null5 = [MEMORY[0x1E695DFB0] null];
  }

  v56 = null5;
  v87[4] = null5;
  v86[5] = @"isMultiUser";
  null6 = v8;
  if (!v8)
  {
    null6 = [MEMORY[0x1E695DFB0] null];
  }

  v55 = null6;
  v87[5] = null6;
  v86[6] = @"isVoiceTriggerEnabled";
  null7 = v9;
  if (!v9)
  {
    null7 = [MEMORY[0x1E695DFB0] null];
  }

  v54 = null7;
  v87[6] = null7;
  v86[7] = @"isTextToSpeechEnabled";
  null8 = v85;
  if (!v85)
  {
    null8 = [MEMORY[0x1E695DFB0] null];
  }

  v87[7] = null8;
  v86[8] = @"isTriggerlessFollowup";
  null9 = v84;
  if (!v84)
  {
    null9 = [MEMORY[0x1E695DFB0] null];
  }

  v87[8] = null9;
  v86[9] = @"deviceRestrictions";
  null10 = _deviceRestrictionsJSONArray;
  if (!_deviceRestrictionsJSONArray)
  {
    null10 = [MEMORY[0x1E695DFB0] null];
  }

  v64 = null10;
  v87[9] = null10;
  v86[10] = @"bargeInModes";
  null11 = _bargeInModesJSONArray;
  if (!_bargeInModesJSONArray)
  {
    null11 = [MEMORY[0x1E695DFB0] null];
  }

  v63 = null11;
  v87[10] = null11;
  v86[11] = @"identifiedUser";
  null12 = jsonDictionary;
  if (!jsonDictionary)
  {
    null12 = [MEMORY[0x1E695DFB0] null];
  }

  v68 = requestID;
  v87[11] = null12;
  v86[12] = @"encodedLocation";
  null13 = v80;
  v30 = null12;
  if (!v80)
  {
    null13 = [MEMORY[0x1E695DFB0] null];
  }

  v66 = v7;
  v87[12] = null13;
  v86[13] = @"countryCode";
  null14 = countryCode;
  v32 = null13;
  if (!countryCode)
  {
    null14 = [MEMORY[0x1E695DFB0] null];
  }

  v70 = v16;
  v87[13] = null14;
  v86[14] = @"siriLocale";
  null15 = siriLocale;
  v34 = null14;
  if (!siriLocale)
  {
    null15 = [MEMORY[0x1E695DFB0] null];
  }

  v67 = inputOrigin;
  v87[14] = null15;
  v86[15] = @"contentRestrictions";
  null16 = jsonDictionary2;
  v36 = null15;
  if (!jsonDictionary2)
  {
    null16 = [MEMORY[0x1E695DFB0] null];
  }

  v69 = sessionID;
  v62 = null16;
  v87[15] = null16;
  v86[16] = @"uiScale";
  null17 = v76;
  if (!v76)
  {
    null17 = [MEMORY[0x1E695DFB0] null];
  }

  v65 = v8;
  v48 = null17;
  v87[16] = null17;
  v86[17] = @"temperatureUnit";
  null18 = temperatureUnit;
  if (!temperatureUnit)
  {
    null18 = [MEMORY[0x1E695DFB0] null];
  }

  v51 = v30;
  v53 = null8;
  v87[17] = null18;
  v86[18] = @"allowUserGeneratedContent";
  null19 = v74;
  if (!v74)
  {
    null19 = [MEMORY[0x1E695DFB0] null];
  }

  v40 = responseMode;
  v87[18] = null19;
  v86[19] = @"censorSpeech";
  null20 = v73;
  if (!v73)
  {
    null20 = [MEMORY[0x1E695DFB0] null];
  }

  v50 = v36;
  v52 = null9;
  v87[19] = null20;
  v86[20] = @"meCard";
  null21 = jsonDictionary3;
  if (!jsonDictionary3)
  {
    null21 = [MEMORY[0x1E695DFB0] null];
  }

  v43 = v34;
  v87[20] = null21;
  v86[21] = @"deviceIdiom";
  null22 = v71;
  if (!v71)
  {
    null22 = [MEMORY[0x1E695DFB0] null];
  }

  v87[21] = null22;
  v86[22] = @"didPSCFire";
  null23 = v70;
  if (!v70)
  {
    null23 = [MEMORY[0x1E695DFB0] null];
  }

  v87[22] = null23;
  v61 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v87 forKeys:v86 count:{23, v48}];
  if (!v70)
  {
  }

  if (!v71)
  {
  }

  if (!jsonDictionary3)
  {
  }

  if (!v73)
  {
  }

  if (!v74)
  {
  }

  if (!temperatureUnit)
  {
  }

  if (!v76)
  {
  }

  if (!jsonDictionary2)
  {
  }

  if (!siriLocale)
  {
  }

  if (!countryCode)
  {
  }

  if (!v80)
  {
  }

  if (!jsonDictionary)
  {
  }

  if (!_bargeInModesJSONArray)
  {
  }

  if (!_deviceRestrictionsJSONArray)
  {
  }

  if (!v84)
  {
  }

  if (v85)
  {
    if (v9)
    {
      goto LABEL_107;
    }
  }

  else
  {

    if (v9)
    {
LABEL_107:
      if (v65)
      {
        goto LABEL_108;
      }

      goto LABEL_118;
    }
  }

  if (v65)
  {
LABEL_108:
    if (v66)
    {
      goto LABEL_109;
    }

    goto LABEL_119;
  }

LABEL_118:

  if (v66)
  {
LABEL_109:
    if (v40)
    {
      goto LABEL_110;
    }

    goto LABEL_120;
  }

LABEL_119:

  if (v40)
  {
LABEL_110:
    if (v67)
    {
      goto LABEL_111;
    }

    goto LABEL_121;
  }

LABEL_120:

  if (v67)
  {
LABEL_111:
    if (v68)
    {
      goto LABEL_112;
    }

LABEL_122:

    if (v69)
    {
      goto LABEL_113;
    }

    goto LABEL_123;
  }

LABEL_121:

  if (!v68)
  {
    goto LABEL_122;
  }

LABEL_112:
  if (v69)
  {
    goto LABEL_113;
  }

LABEL_123:

LABEL_113:
  v46 = *MEMORY[0x1E69E9840];

  return v61;
}

- (id)_bargeInModesJSONArray
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  bargeInModes = [(BMSiriRequestContext *)self bargeInModes];
  v5 = [bargeInModes countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(bargeInModes);
        }

        [v3 addObject:*(*(&v11 + 1) + 8 * i)];
      }

      v6 = [bargeInModes countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  v9 = *MEMORY[0x1E69E9840];

  return v3;
}

- (id)_deviceRestrictionsJSONArray
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  deviceRestrictions = [(BMSiriRequestContext *)self deviceRestrictions];
  v5 = [deviceRestrictions countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(deviceRestrictions);
        }

        [v3 addObject:*(*(&v11 + 1) + 8 * i)];
      }

      v6 = [deviceRestrictions countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  v9 = *MEMORY[0x1E69E9840];

  return v3;
}

- (BMSiriRequestContext)initWithJSONDictionary:(id)dictionary error:(id *)error
{
  v409[1] = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v340 = [dictionaryCopy objectForKeyedSubscript:@"sessionID"];
  if (v340 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      if (error)
      {
        selfCopy = self;
        v29 = objc_alloc(MEMORY[0x1E696ABC0]);
        v30 = *MEMORY[0x1E698F240];
        v408 = *MEMORY[0x1E696A578];
        v9 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"sessionID"];
        v409[0] = v9;
        v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v409 forKeys:&v408 count:1];
        v31 = v29;
        self = selfCopy;
        selfCopy17 = 0;
        *error = [v31 initWithDomain:v30 code:2 userInfo:v8];
        v7 = 0;
        goto LABEL_263;
      }

      v7 = 0;
      selfCopy17 = 0;
      goto LABEL_264;
    }

    v7 = v340;
  }

  else
  {
    v7 = 0;
  }

  v8 = [dictionaryCopy objectForKeyedSubscript:@"requestID"];
  if (v8 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      if (error)
      {
        selfCopy2 = self;
        v34 = objc_alloc(MEMORY[0x1E696ABC0]);
        v35 = *MEMORY[0x1E698F240];
        v406 = *MEMORY[0x1E696A578];
        v36 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"requestID"];
        v407 = v36;
        v37 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v407 forKeys:&v406 count:1];
        v38 = v34;
        self = selfCopy2;
        v337 = v37;
        v39 = [v38 initWithDomain:v35 code:2 userInfo:?];
        v9 = 0;
        selfCopy17 = 0;
        *error = v39;
        goto LABEL_262;
      }

      v9 = 0;
      selfCopy17 = 0;
      goto LABEL_263;
    }

    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  v10 = [dictionaryCopy objectForKeyedSubscript:@"inputOrigin"];
  v337 = v10;
  if (v10 && (v11 = v10, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      if (error)
      {
        v40 = v9;
        selfCopy3 = self;
        v42 = objc_alloc(MEMORY[0x1E696ABC0]);
        v43 = *MEMORY[0x1E698F240];
        v404 = *MEMORY[0x1E696A578];
        v44 = v8;
        v45 = objc_alloc(MEMORY[0x1E696AEC0]);
        v266 = objc_opt_class();
        v46 = v45;
        v8 = v44;
        v47 = [v46 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", v266, @"inputOrigin"];
        v405 = v47;
        v48 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v405 forKeys:&v404 count:1];
        v49 = v42;
        self = selfCopy3;
        v9 = v40;
        v335 = v48;
        v50 = [v49 initWithDomain:v43 code:2 userInfo:?];
        v36 = 0;
        selfCopy17 = 0;
        *error = v50;
        goto LABEL_261;
      }

      v36 = 0;
      selfCopy17 = 0;
      goto LABEL_262;
    }

    v333 = v11;
  }

  else
  {
    v333 = 0;
  }

  v12 = [dictionaryCopy objectForKeyedSubscript:@"responseMode"];
  errorCopy = error;
  v335 = v12;
  if (v12 && (v13 = v12, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      selfCopy5 = self;
      if (!error)
      {
        v47 = 0;
        selfCopy17 = 0;
        v36 = v333;
        goto LABEL_261;
      }

      v52 = objc_alloc(MEMORY[0x1E696ABC0]);
      v53 = *MEMORY[0x1E698F240];
      v402 = *MEMORY[0x1E696A578];
      v54 = v8;
      v55 = objc_alloc(MEMORY[0x1E696AEC0]);
      v267 = objc_opt_class();
      v56 = v55;
      v8 = v54;
      v57 = [v56 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", v267, @"responseMode"];
      v403 = v57;
      v58 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v403 forKeys:&v402 count:1];
      v59 = v52;
      v60 = v58;
      v61 = [v59 initWithDomain:v53 code:2 userInfo:v58];
      v47 = 0;
      selfCopy17 = 0;
      *errorCopy = v61;
      v36 = v333;
      goto LABEL_110;
    }

    v330 = v13;
  }

  else
  {
    v330 = 0;
  }

  v14 = [dictionaryCopy objectForKeyedSubscript:@"isEyesFree"];
  if (v14)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v326 = v14;
        v328 = v14;
        goto LABEL_16;
      }

      selfCopy5 = self;
      if (errorCopy)
      {
        v62 = objc_alloc(MEMORY[0x1E696ABC0]);
        v63 = *MEMORY[0x1E698F240];
        v400 = *MEMORY[0x1E696A578];
        v64 = v8;
        v65 = objc_alloc(MEMORY[0x1E696AEC0]);
        v268 = objc_opt_class();
        v66 = v65;
        v8 = v64;
        v329 = [v66 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v268, @"isEyesFree"];
        v401 = v329;
        v67 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v401 forKeys:&v400 count:1];
        v68 = v62;
        v60 = v14;
        v69 = [v68 initWithDomain:v63 code:2 userInfo:v67];
        v57 = 0;
        selfCopy17 = 0;
        *errorCopy = v69;
        v70 = v67;
        v47 = v330;
        v36 = v333;
        goto LABEL_259;
      }

      selfCopy17 = 0;
      v47 = v330;
      v36 = v333;
      v60 = v14;
      v57 = 0;
LABEL_110:
      self = selfCopy5;
      goto LABEL_260;
    }
  }

  v326 = v14;
  v328 = 0;
LABEL_16:
  v15 = [dictionaryCopy objectForKeyedSubscript:@"isMultiUser"];
  v327 = v15;
  if (v15 && (v16 = v15, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      if (errorCopy)
      {
        v71 = objc_alloc(MEMORY[0x1E696ABC0]);
        v72 = *MEMORY[0x1E698F240];
        v398 = *MEMORY[0x1E696A578];
        v73 = v8;
        v74 = objc_alloc(MEMORY[0x1E696AEC0]);
        v269 = objc_opt_class();
        v75 = v74;
        v8 = v73;
        v76 = [v75 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v269, @"isMultiUser"];
        v399 = v76;
        v322 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v399 forKeys:&v398 count:1];
        v77 = [v71 initWithDomain:v72 code:2 userInfo:?];
        v329 = 0;
        selfCopy17 = 0;
        *errorCopy = v77;
        v78 = v76;
        v47 = v330;
        v36 = v333;
        v60 = v326;
        goto LABEL_258;
      }

      v329 = 0;
      selfCopy17 = 0;
      v47 = v330;
      v36 = v333;
      v60 = v326;
      v70 = v327;
      v57 = v328;
      goto LABEL_259;
    }

    v329 = v16;
  }

  else
  {
    v329 = 0;
  }

  v17 = [dictionaryCopy objectForKeyedSubscript:@"isVoiceTriggerEnabled"];
  v319 = v7;
  v320 = v9;
  v322 = v17;
  if (v17 && (v18 = v17, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v78 = errorCopy;
      if (!errorCopy)
      {
        selfCopy17 = 0;
        v47 = v330;
        v36 = v333;
        v60 = v326;
        goto LABEL_258;
      }

      selfCopy6 = self;
      v80 = objc_alloc(MEMORY[0x1E696ABC0]);
      v81 = *MEMORY[0x1E698F240];
      v396 = *MEMORY[0x1E696A578];
      v82 = v8;
      v83 = objc_alloc(MEMORY[0x1E696AEC0]);
      v270 = objc_opt_class();
      v84 = v83;
      v8 = v82;
      v85 = [v84 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v270, @"isVoiceTriggerEnabled"];
      v397 = v85;
      v86 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v397 forKeys:&v396 count:1];
      v87 = v80;
      self = selfCopy6;
      v88 = [v87 initWithDomain:v81 code:2 userInfo:v86];
      v318 = 0;
      selfCopy17 = 0;
      *errorCopy = v88;
      v20 = v85;
      v19 = v86;
      goto LABEL_120;
    }

    v318 = v18;
  }

  else
  {
    v318 = 0;
  }

  v19 = [dictionaryCopy objectForKeyedSubscript:@"isTextToSpeechEnabled"];
  v20 = errorCopy;
  if (v19)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v315 = v19;
        v314 = v19;
        goto LABEL_25;
      }

      if (errorCopy)
      {
        selfCopy7 = self;
        v90 = objc_alloc(MEMORY[0x1E696ABC0]);
        v91 = *MEMORY[0x1E698F240];
        v394 = *MEMORY[0x1E696A578];
        v92 = v8;
        v93 = objc_alloc(MEMORY[0x1E696AEC0]);
        v271 = objc_opt_class();
        v94 = v93;
        v8 = v92;
        v317 = [v94 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v271, @"isTextToSpeechEnabled"];
        v395 = v317;
        v95 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v395 forKeys:&v394 count:1];
        v96 = v90;
        self = selfCopy7;
        v316 = v95;
        v97 = [v96 initWithDomain:v91 code:2 userInfo:?];
        selfCopy17 = 0;
        *errorCopy = v97;
        v20 = 0;
        v47 = v330;
        v36 = v333;
        v60 = v326;
        goto LABEL_256;
      }

      selfCopy17 = 0;
LABEL_120:
      v47 = v330;
      v36 = v333;
      v60 = v326;
      goto LABEL_257;
    }
  }

  v314 = 0;
  v315 = v19;
LABEL_25:
  v21 = [dictionaryCopy objectForKeyedSubscript:@"isTriggerlessFollowup"];
  v316 = v21;
  if (v21 && (v22 = v21, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      if (errorCopy)
      {
        v116 = objc_alloc(MEMORY[0x1E696ABC0]);
        v117 = v8;
        v118 = *MEMORY[0x1E698F240];
        v392 = *MEMORY[0x1E696A578];
        selfCopy8 = self;
        v120 = objc_alloc(MEMORY[0x1E696AEC0]);
        v272 = objc_opt_class();
        v121 = v120;
        self = selfCopy8;
        obj = [v121 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v272, @"isTriggerlessFollowup"];
        v393 = obj;
        v122 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v393 forKeys:&v392 count:1];
        v123 = v118;
        v8 = v117;
        v339 = v122;
        v124 = [v116 initWithDomain:v123 code:2 userInfo:?];
        v317 = 0;
        selfCopy17 = 0;
        *errorCopy = v124;
        v47 = v330;
        v36 = v333;
        v60 = v326;
        v20 = v314;
        v19 = v315;

        goto LABEL_255;
      }

      v317 = 0;
      selfCopy17 = 0;
      v47 = v330;
      v36 = v333;
      v60 = v326;
      v20 = v314;
      v19 = v315;
      goto LABEL_256;
    }

    selfCopy10 = self;
    v24 = v8;
    v317 = v22;
  }

  else
  {
    selfCopy10 = self;
    v24 = v8;
    v317 = 0;
  }

  v25 = [dictionaryCopy objectForKeyedSubscript:@"deviceRestrictions"];
  null = [MEMORY[0x1E695DFB0] null];
  v27 = [v25 isEqual:null];

  if (v27)
  {
    v323 = selfCopy10;
  }

  else
  {
    self = selfCopy10;
    if (v25)
    {
      objc_opt_class();
      obj = v25;
      v8 = v24;
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!errorCopy)
        {
          selfCopy17 = 0;
          v9 = v320;
          v47 = v330;
          v36 = v333;
          v60 = v326;
          v20 = v314;
          v19 = v315;
          goto LABEL_255;
        }

        v135 = objc_alloc(MEMORY[0x1E696ABC0]);
        v136 = *MEMORY[0x1E698F240];
        v390 = *MEMORY[0x1E696A578];
        v338 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Expecting %@ as an array", @"deviceRestrictions"];
        v391 = v338;
        v137 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v391 forKeys:&v390 count:1];
        v138 = v135;
        v8 = v24;
        v139 = v136;
        v105 = v137;
        selfCopy17 = 0;
        *errorCopy = [v138 initWithDomain:v139 code:2 userInfo:v137];
        goto LABEL_108;
      }

      v323 = selfCopy10;
      v51 = v25;
      goto LABEL_72;
    }

    v323 = selfCopy10;
  }

  v51 = 0;
  v8 = v24;
LABEL_72:
  v338 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v51, "count")}];
  v348 = 0u;
  v349 = 0u;
  v350 = 0u;
  v351 = 0u;
  v98 = v51;
  v99 = [v98 countByEnumeratingWithState:&v348 objects:v389 count:16];
  obj = v98;
  if (!v99)
  {
    goto LABEL_81;
  }

  v100 = v99;
  v101 = *v349;
  v311 = v8;
  do
  {
    for (i = 0; i != v100; ++i)
    {
      if (*v349 != v101)
      {
        objc_enumerationMutation(obj);
      }

      v103 = *(*(&v348 + 1) + 8 * i);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v108 = errorCopy;
        if (errorCopy)
        {
          v109 = objc_alloc(MEMORY[0x1E696ABC0]);
          v110 = *MEMORY[0x1E698F240];
          v387 = *MEMORY[0x1E696A578];
          v321 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type null for element of %@, must not be null", @"deviceRestrictions"];
          v388 = v321;
          v111 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v388 forKeys:&v387 count:1];
          v112 = v109;
          v113 = v110;
          goto LABEL_87;
        }

LABEL_88:
        selfCopy17 = 0;
        v105 = obj;
        self = v323;
        v8 = v311;
LABEL_108:
        v47 = v330;
        v36 = v333;
        v60 = v326;
        v20 = v314;
        v19 = v315;
        goto LABEL_253;
      }

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v108 = errorCopy;
        if (!errorCopy)
        {
          goto LABEL_88;
        }

        v114 = objc_alloc(MEMORY[0x1E696ABC0]);
        v115 = *MEMORY[0x1E698F240];
        v385 = *MEMORY[0x1E696A578];
        v321 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"deviceRestrictions"];
        v386 = v321;
        v111 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v386 forKeys:&v385 count:1];
        v112 = v114;
        v113 = v115;
LABEL_87:
        v310 = v111;
        v47 = v330;
        v36 = v333;
        v60 = v326;
        selfCopy17 = 0;
        *v108 = [v112 initWithDomain:v113 code:2 userInfo:?];
        v105 = obj;
        self = v323;
        v8 = v311;
LABEL_128:
        v20 = v314;
        v19 = v315;
        goto LABEL_252;
      }

      v104 = v103;
      [v338 addObject:v104];
    }

    v98 = obj;
    v100 = [obj countByEnumeratingWithState:&v348 objects:v389 count:16];
    v8 = v311;
  }

  while (v100);
LABEL_81:

  v105 = [dictionaryCopy objectForKeyedSubscript:@"bargeInModes"];
  null2 = [MEMORY[0x1E695DFB0] null];
  v107 = [v105 isEqual:null2];

  if (v107)
  {

    v105 = 0;
    goto LABEL_94;
  }

  if (v105)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      if (!errorCopy)
      {
        selfCopy17 = 0;
        self = v323;
        goto LABEL_108;
      }

      v147 = objc_alloc(MEMORY[0x1E696ABC0]);
      v148 = *MEMORY[0x1E698F240];
      v383 = *MEMORY[0x1E696A578];
      v321 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Expecting %@ as an array", @"bargeInModes"];
      v384 = v321;
      v310 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v384 forKeys:&v383 count:1];
      selfCopy17 = 0;
      *errorCopy = [v147 initWithDomain:v148 code:2 userInfo:?];
      self = v323;
      goto LABEL_126;
    }
  }

LABEL_94:
  v321 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v105, "count")}];
  v344 = 0u;
  v345 = 0u;
  v346 = 0u;
  v347 = 0u;
  v313 = v105;
  v125 = [v313 countByEnumeratingWithState:&v344 objects:v382 count:16];
  if (!v125)
  {
    goto LABEL_103;
  }

  v126 = v125;
  v127 = *v345;
  while (2)
  {
    v128 = v8;
    v129 = 0;
    while (2)
    {
      if (*v345 != v127)
      {
        objc_enumerationMutation(v313);
      }

      v130 = *(*(&v344 + 1) + 8 * v129);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v140 = errorCopy;
        if (errorCopy)
        {
          v141 = objc_alloc(MEMORY[0x1E696ABC0]);
          v142 = *MEMORY[0x1E698F240];
          v380 = *MEMORY[0x1E696A578];
          v308 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type null for element of %@, must not be null", @"bargeInModes"];
          v381 = v308;
          v143 = MEMORY[0x1E695DF20];
          v144 = &v381;
          v145 = &v380;
LABEL_117:
          v309 = [v143 dictionaryWithObjects:v144 forKeys:v145 count:1];
          v146 = [v141 initWithDomain:v142 code:2 userInfo:?];
          v8 = v128;
          v47 = v330;
          v36 = v333;
          v60 = v326;
          v105 = v313;
          selfCopy17 = 0;
          *v140 = v146;
          v310 = v313;
          self = v323;
          goto LABEL_118;
        }

        goto LABEL_122;
      }

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v140 = errorCopy;
        if (errorCopy)
        {
          v141 = objc_alloc(MEMORY[0x1E696ABC0]);
          v142 = *MEMORY[0x1E698F240];
          v378 = *MEMORY[0x1E696A578];
          v308 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"bargeInModes"];
          v379 = v308;
          v143 = MEMORY[0x1E695DF20];
          v144 = &v379;
          v145 = &v378;
          goto LABEL_117;
        }

LABEL_122:
        selfCopy17 = 0;
        v105 = v313;
        v310 = v313;
        self = v323;
        v8 = v128;
LABEL_126:
        v47 = v330;
        v36 = v333;
        goto LABEL_127;
      }

      v131 = v130;
      [v321 addObject:v131];

      if (v126 != ++v129)
      {
        continue;
      }

      break;
    }

    v126 = [v313 countByEnumeratingWithState:&v344 objects:v382 count:16];
    v8 = v128;
    if (v126)
    {
      continue;
    }

    break;
  }

LABEL_103:
  v105 = v313;

  v132 = [dictionaryCopy objectForKeyedSubscript:@"identifiedUser"];
  v310 = v132;
  if (!v132)
  {
    v308 = 0;
    v47 = v330;
    v134 = v328;
    goto LABEL_130;
  }

  v133 = v132;
  objc_opt_class();
  v47 = v330;
  v134 = v328;
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v170 = v133;
      v171 = [BMSiriRequestContextUser alloc];
      v343 = 0;
      v308 = [(BMSiriRequestContextUser *)v171 initWithJSONDictionary:v170 error:&v343];
      v172 = v343;
      if (!v172)
      {

        goto LABEL_130;
      }

      self = v323;
      if (errorCopy)
      {
        v172 = v172;
        *errorCopy = v172;
      }

      selfCopy17 = 0;
      v309 = v170;
      v310 = v170;
      goto LABEL_174;
    }

    if (errorCopy)
    {
      v174 = objc_alloc(MEMORY[0x1E696ABC0]);
      v175 = *MEMORY[0x1E698F240];
      v376 = *MEMORY[0x1E696A578];
      v176 = v8;
      v177 = objc_alloc(MEMORY[0x1E696AEC0]);
      v273 = objc_opt_class();
      v178 = v177;
      v8 = v176;
      v47 = v330;
      v308 = [v178 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", v273, @"identifiedUser"];
      v377 = v308;
      v309 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v377 forKeys:&v376 count:1];
      selfCopy17 = 0;
      *errorCopy = [v174 initWithDomain:v175 code:2 userInfo:?];
      self = v323;
LABEL_174:
      v36 = v333;
      v60 = v326;
LABEL_118:
      v20 = v314;
      v19 = v315;
      goto LABEL_251;
    }

    selfCopy17 = 0;
    self = v323;
    v36 = v333;
LABEL_127:
    v60 = v326;
    goto LABEL_128;
  }

  v308 = 0;
LABEL_130:
  v149 = [dictionaryCopy objectForKeyedSubscript:@"encodedLocation"];
  v328 = v134;
  v306 = v149;
  if (v149)
  {
    v150 = v149;
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v309 = v150;
        goto LABEL_133;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v309 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBase64EncodedString:v150 options:0];
        if (v309)
        {
          goto LABEL_133;
        }

        v182 = errorCopy;
        if (errorCopy)
        {
          v183 = objc_alloc(MEMORY[0x1E696ABC0]);
          v184 = *MEMORY[0x1E698F240];
          v374 = *MEMORY[0x1E696A578];
          v307 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected format for value of field '%@', expected base64 encoding", @"encodedLocation"];
          v375 = v307;
          v185 = MEMORY[0x1E695DF20];
          v186 = &v375;
          v187 = &v374;
LABEL_204:
          v305 = [v185 dictionaryWithObjects:v186 forKeys:v187 count:1];
          v309 = 0;
          selfCopy17 = 0;
          *v182 = [v183 initWithDomain:v184 code:2 userInfo:?];
          goto LABEL_219;
        }
      }

      else
      {
        v182 = errorCopy;
        if (errorCopy)
        {
          v183 = objc_alloc(MEMORY[0x1E696ABC0]);
          v184 = *MEMORY[0x1E698F240];
          v372 = *MEMORY[0x1E696A578];
          v204 = v8;
          v205 = objc_alloc(MEMORY[0x1E696AEC0]);
          v277 = objc_opt_class();
          v206 = v205;
          v8 = v204;
          v307 = [v206 initWithFormat:@"Unexpected type (%@) for value of field '%@', expected NSData or base64 encoded NSString", v277, @"encodedLocation"];
          v373 = v307;
          v185 = MEMORY[0x1E695DF20];
          v186 = &v373;
          v187 = &v372;
          goto LABEL_204;
        }
      }

      v309 = 0;
      selfCopy17 = 0;
      self = v323;
      v60 = v326;
      v36 = v333;
      v20 = v314;
      v19 = v315;
      goto LABEL_250;
    }
  }

  v309 = 0;
LABEL_133:
  v151 = [dictionaryCopy objectForKeyedSubscript:@"countryCode"];
  v305 = v151;
  if (v151)
  {
    v152 = v151;
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v307 = v152;
        goto LABEL_136;
      }

      if (errorCopy)
      {
        v188 = objc_alloc(MEMORY[0x1E696ABC0]);
        v189 = *MEMORY[0x1E698F240];
        v370 = *MEMORY[0x1E696A578];
        v190 = v8;
        v191 = objc_alloc(MEMORY[0x1E696AEC0]);
        v274 = objc_opt_class();
        v192 = v191;
        v8 = v190;
        v304 = [v192 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", v274, @"countryCode"];
        v371 = v304;
        v303 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v371 forKeys:&v370 count:1];
        v307 = 0;
        selfCopy17 = 0;
        *errorCopy = [v188 initWithDomain:v189 code:2 userInfo:?];
        self = v323;
        v36 = v333;
        goto LABEL_223;
      }

      v307 = 0;
      selfCopy17 = 0;
LABEL_219:
      self = v323;
      v60 = v326;
      v36 = v333;
      v20 = v314;
      v19 = v315;
      goto LABEL_249;
    }
  }

  v307 = 0;
LABEL_136:
  self = v323;
  v153 = [dictionaryCopy objectForKeyedSubscript:@"siriLocale"];
  v154 = v319;
  v303 = v153;
  if (v153)
  {
    v155 = v153;
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v331 = v47;
      v173 = v323;
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v304 = v155;
        goto LABEL_139;
      }

      if (errorCopy)
      {
        v194 = objc_alloc(MEMORY[0x1E696ABC0]);
        v195 = *MEMORY[0x1E698F240];
        v368 = *MEMORY[0x1E696A578];
        v196 = v8;
        v197 = objc_alloc(MEMORY[0x1E696AEC0]);
        v275 = objc_opt_class();
        v198 = v197;
        v8 = v196;
        v302 = [v198 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", v275, @"siriLocale"];
        v369 = v302;
        v325 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v369 forKeys:&v368 count:1];
        v304 = 0;
        selfCopy17 = 0;
        *errorCopy = [v194 initWithDomain:v195 code:2 userInfo:?];
        goto LABEL_196;
      }

      v304 = 0;
      selfCopy17 = 0;
      v36 = v333;
LABEL_223:
      v60 = v326;
      v20 = v314;
      v19 = v315;
      goto LABEL_248;
    }
  }

  v304 = 0;
LABEL_139:
  v156 = [dictionaryCopy objectForKeyedSubscript:@"contentRestrictions"];
  v302 = v156;
  if (v156)
  {
    v157 = v156;
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v331 = v47;
      v173 = v323;
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v179 = v157;
        v180 = [BMSiriRequestContextContentRestriction alloc];
        v342 = 0;
        v325 = [(BMSiriRequestContextContentRestriction *)v180 initWithJSONDictionary:v179 error:&v342];
        v181 = v342;
        if (!v181)
        {

          v154 = v319;
          v47 = v331;
          goto LABEL_142;
        }

        v60 = v326;
        if (errorCopy)
        {
          v181 = v181;
          *errorCopy = v181;
        }

        selfCopy17 = 0;
        v302 = v179;
        v47 = v331;
        v36 = v333;
        goto LABEL_197;
      }

      if (!errorCopy)
      {
        selfCopy17 = 0;
        v36 = v333;
        v60 = v326;
        v20 = v314;
        v19 = v315;
        goto LABEL_247;
      }

      v301 = objc_alloc(MEMORY[0x1E696ABC0]);
      v199 = *MEMORY[0x1E698F240];
      v366 = *MEMORY[0x1E696A578];
      v200 = v8;
      v201 = objc_alloc(MEMORY[0x1E696AEC0]);
      v276 = objc_opt_class();
      v202 = v201;
      v8 = v200;
      v325 = [v202 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", v276, @"contentRestrictions"];
      v367 = v325;
      v203 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v367 forKeys:&v366 count:1];
      *errorCopy = [v301 initWithDomain:v199 code:2 userInfo:v203];

      selfCopy17 = 0;
LABEL_196:
      self = v173;
      v47 = v331;
      v36 = v333;
      v60 = v326;
LABEL_197:
      v20 = v314;
      v19 = v315;
      goto LABEL_246;
    }
  }

  v325 = 0;
LABEL_142:
  v158 = [dictionaryCopy objectForKeyedSubscript:@"uiScale"];
  v298 = v158;
  if (v158)
  {
    v159 = v158;
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v300 = v159;
        goto LABEL_145;
      }

      if (!errorCopy)
      {
        v300 = 0;
        selfCopy17 = 0;
        v36 = v333;
        v60 = v326;
        v20 = v314;
        v19 = v315;
        goto LABEL_245;
      }

      v211 = objc_alloc(MEMORY[0x1E696ABC0]);
      selfCopy11 = self;
      v213 = *MEMORY[0x1E698F240];
      v364 = *MEMORY[0x1E696A578];
      v214 = v47;
      v215 = v8;
      v216 = objc_alloc(MEMORY[0x1E696AEC0]);
      v278 = objc_opt_class();
      v217 = v216;
      v8 = v215;
      v47 = v214;
      v299 = [v217 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v278, @"uiScale"];
      v365 = v299;
      v218 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v365 forKeys:&v364 count:1];
      v219 = v213;
      self = selfCopy11;
      v297 = v218;
      v300 = 0;
      selfCopy17 = 0;
      *errorCopy = [v211 initWithDomain:v219 code:2 userInfo:?];
      v36 = v333;
      goto LABEL_272;
    }
  }

  v300 = 0;
LABEL_145:
  v160 = [dictionaryCopy objectForKeyedSubscript:@"temperatureUnit"];
  v297 = v160;
  if (v160)
  {
    v161 = v160;
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      selfCopy12 = self;
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v299 = v161;
        goto LABEL_148;
      }

      if (errorCopy)
      {
        v220 = objc_alloc(MEMORY[0x1E696ABC0]);
        v221 = *MEMORY[0x1E698F240];
        v362 = *MEMORY[0x1E696A578];
        v222 = v8;
        v223 = objc_alloc(MEMORY[0x1E696AEC0]);
        v279 = objc_opt_class();
        v224 = v223;
        v8 = v222;
        v296 = [v224 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", v279, @"temperatureUnit"];
        v363 = v296;
        v295 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v363 forKeys:&v362 count:1];
        v299 = 0;
        selfCopy17 = 0;
        *errorCopy = [v220 initWithDomain:v221 code:2 userInfo:?];
        self = selfCopy12;
        v36 = v333;
        goto LABEL_274;
      }

      v299 = 0;
      selfCopy17 = 0;
      v36 = v333;
LABEL_272:
      v60 = v326;
      v20 = v314;
      v19 = v315;
      goto LABEL_244;
    }
  }

  v299 = 0;
LABEL_148:
  v162 = [dictionaryCopy objectForKeyedSubscript:@"allowUserGeneratedContent"];
  v295 = v162;
  if (v162)
  {
    v163 = v162;
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v296 = v163;
        goto LABEL_151;
      }

      if (errorCopy)
      {
        v225 = objc_alloc(MEMORY[0x1E696ABC0]);
        selfCopy13 = self;
        v227 = *MEMORY[0x1E698F240];
        v360 = *MEMORY[0x1E696A578];
        v228 = v47;
        v229 = v8;
        v230 = objc_alloc(MEMORY[0x1E696AEC0]);
        v280 = objc_opt_class();
        v231 = v230;
        v8 = v229;
        v47 = v228;
        v294 = [v231 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v280, @"allowUserGeneratedContent"];
        v361 = v294;
        v232 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v361 forKeys:&v360 count:1];
        v233 = v227;
        self = selfCopy13;
        v293 = v232;
        v296 = 0;
        selfCopy17 = 0;
        *errorCopy = [v225 initWithDomain:v233 code:2 userInfo:?];
        goto LABEL_276;
      }

      v296 = 0;
      selfCopy17 = 0;
      v36 = v333;
LABEL_274:
      v60 = v326;
      v20 = v314;
      v19 = v315;
      goto LABEL_243;
    }
  }

  v296 = 0;
LABEL_151:
  v164 = [dictionaryCopy objectForKeyedSubscript:@"censorSpeech"];
  v293 = v164;
  if (v164)
  {
    v165 = v164;
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v294 = v165;
        goto LABEL_154;
      }

      if (errorCopy)
      {
        v234 = objc_alloc(MEMORY[0x1E696ABC0]);
        selfCopy14 = self;
        v236 = *MEMORY[0x1E698F240];
        v358 = *MEMORY[0x1E696A578];
        v237 = v47;
        v238 = v8;
        v239 = objc_alloc(MEMORY[0x1E696AEC0]);
        v281 = objc_opt_class();
        v240 = v239;
        v8 = v238;
        v47 = v237;
        v290 = [v240 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v281, @"censorSpeech"];
        v359 = v290;
        v241 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v359 forKeys:&v358 count:1];
        v242 = v236;
        self = selfCopy14;
        v292 = v241;
        v294 = 0;
        selfCopy17 = 0;
        *errorCopy = [v234 initWithDomain:v242 code:2 userInfo:?];
        v36 = v333;
        goto LABEL_227;
      }

      v294 = 0;
      selfCopy17 = 0;
LABEL_276:
      v36 = v333;
      v60 = v326;
      v20 = v314;
      v19 = v315;
      goto LABEL_242;
    }
  }

  v294 = 0;
LABEL_154:
  v166 = [dictionaryCopy objectForKeyedSubscript:@"meCard"];
  v288 = v166;
  if (v166)
  {
    v167 = v166;
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      selfCopy15 = self;
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v208 = v167;
        v209 = [BMSiriRequestContextMeCard alloc];
        v341 = 0;
        v292 = [(BMSiriRequestContextMeCard *)v209 initWithJSONDictionary:v208 error:&v341];
        v210 = v341;
        if (!v210)
        {

          goto LABEL_157;
        }

        v60 = v326;
        if (errorCopy)
        {
          v210 = v210;
          *errorCopy = v210;
        }

        v290 = v208;
        selfCopy17 = 0;
        v36 = v333;
        goto LABEL_228;
      }

      if (!errorCopy)
      {
        selfCopy17 = 0;
        v36 = v333;
        v60 = v326;
        v20 = v314;
        v19 = v315;
        v249 = v288;
        goto LABEL_241;
      }

      v291 = objc_alloc(MEMORY[0x1E696ABC0]);
      v243 = *MEMORY[0x1E698F240];
      v356 = *MEMORY[0x1E696A578];
      v292 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", objc_opt_class(), @"meCard"];
      v357 = v292;
      v244 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v357 forKeys:&v356 count:1];
      *errorCopy = [v291 initWithDomain:v243 code:2 userInfo:v244];

      selfCopy17 = 0;
      v290 = v288;
      self = selfCopy15;
      v36 = v333;
LABEL_227:
      v60 = v326;
LABEL_228:
      v20 = v314;
      v19 = v315;
      goto LABEL_240;
    }
  }

  v292 = 0;
LABEL_157:
  v168 = [dictionaryCopy objectForKeyedSubscript:@"deviceIdiom"];
  v287 = v168;
  if (v168)
  {
    v169 = v168;
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v289 = v169;
      }

      else
      {
        v332 = v47;
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          if (!errorCopy)
          {
            v289 = 0;
            selfCopy17 = 0;
            v36 = v333;
            v60 = v326;
            v20 = v314;
            v19 = v315;
            goto LABEL_239;
          }

          v261 = objc_alloc(MEMORY[0x1E696ABC0]);
          v262 = *MEMORY[0x1E698F240];
          v354 = *MEMORY[0x1E696A578];
          v263 = v8;
          v264 = objc_alloc(MEMORY[0x1E696AEC0]);
          v282 = objc_opt_class();
          v265 = v264;
          v8 = v263;
          v285 = [v265 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (corresponding to enum value), or NSString (string version of enum)", v282, @"deviceIdiom"];
          v355 = v285;
          v286 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v355 forKeys:&v354 count:1];
          v289 = 0;
          selfCopy17 = 0;
          *errorCopy = [v261 initWithDomain:v262 code:2 userInfo:?];
          v47 = v332;
          v36 = v333;
          v60 = v326;
LABEL_281:
          v20 = v314;
          v19 = v315;
          goto LABEL_238;
        }

        v245 = v169;
        v289 = [MEMORY[0x1E696AD98] numberWithInt:BMSiriRequestContextDeviceIdiomFromString(v245)];
      }

      goto LABEL_234;
    }
  }

  v289 = 0;
LABEL_234:
  v246 = [dictionaryCopy objectForKeyedSubscript:@"didPSCFire"];
  v286 = v246;
  if (!v246 || (v247 = v246, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v248 = 0;
    v36 = v333;
    v60 = v326;
    goto LABEL_237;
  }

  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v253 = v247;
  v36 = v333;
  v60 = v326;
  if ((isKindOfClass & 1) == 0)
  {
    if (errorCopy)
    {
      v254 = objc_alloc(MEMORY[0x1E696ABC0]);
      selfCopy16 = self;
      v256 = *MEMORY[0x1E698F240];
      v352 = *MEMORY[0x1E696A578];
      v312 = v8;
      v257 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"didPSCFire"];
      v353 = v257;
      v258 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v353 forKeys:&v352 count:1];
      v259 = v254;
      v260 = v256;
      self = selfCopy16;
      v105 = v313;
      v36 = v333;
      *errorCopy = [v259 initWithDomain:v260 code:2 userInfo:v258];

      v8 = v312;
    }

    v285 = 0;
    selfCopy17 = 0;
    goto LABEL_281;
  }

  v248 = v253;
LABEL_237:
  v285 = v248;
  v284 = v248;
  LODWORD(v283) = [v289 intValue];
  v20 = v314;
  self = [(BMSiriRequestContext *)self initWithSessionID:v154 requestID:v320 inputOrigin:v36 responseMode:v47 isEyesFree:v328 isMultiUser:v329 isVoiceTriggerEnabled:v318 isTextToSpeechEnabled:v314 isTriggerlessFollowup:v317 deviceRestrictions:v338 bargeInModes:v321 identifiedUser:v308 encodedLocation:v309 countryCode:v307 siriLocale:v304 contentRestrictions:v325 uiScale:v300 temperatureUnit:v299 allowUserGeneratedContent:v296 censorSpeech:v294 meCard:v292 deviceIdiom:v283 didPSCFire:v284];
  selfCopy17 = self;
  v19 = v315;
LABEL_238:

LABEL_239:
  v290 = v288;
LABEL_240:

  v249 = v290;
LABEL_241:

LABEL_242:
LABEL_243:

LABEL_244:
LABEL_245:

LABEL_246:
LABEL_247:

LABEL_248:
LABEL_249:

LABEL_250:
LABEL_251:

LABEL_252:
LABEL_253:

  v9 = v320;
LABEL_255:

LABEL_256:
LABEL_257:

  v78 = v318;
  v7 = v319;
LABEL_258:

  v70 = v327;
  v57 = v328;
LABEL_259:

LABEL_260:
LABEL_261:

LABEL_262:
LABEL_263:

LABEL_264:
  v250 = *MEMORY[0x1E69E9840];
  return selfCopy17;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMSiriRequestContext *)self writeTo:v3];
  immutableData = [v3 immutableData];

  return immutableData;
}

- (void)writeTo:(id)to
{
  v38 = *MEMORY[0x1E69E9840];
  toCopy = to;
  if (self->_sessionID)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_requestID)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_inputOrigin)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_responseMode)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_hasIsEyesFree)
  {
    isEyesFree = self->_isEyesFree;
    PBDataWriterWriteBOOLField();
  }

  if (self->_hasIsMultiUser)
  {
    isMultiUser = self->_isMultiUser;
    PBDataWriterWriteBOOLField();
  }

  if (self->_hasIsVoiceTriggerEnabled)
  {
    isVoiceTriggerEnabled = self->_isVoiceTriggerEnabled;
    PBDataWriterWriteBOOLField();
  }

  if (self->_hasIsTextToSpeechEnabled)
  {
    isTextToSpeechEnabled = self->_isTextToSpeechEnabled;
    PBDataWriterWriteBOOLField();
  }

  if (self->_hasIsTriggerlessFollowup)
  {
    isTriggerlessFollowup = self->_isTriggerlessFollowup;
    PBDataWriterWriteBOOLField();
  }

  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v10 = self->_deviceRestrictions;
  v11 = [(NSArray *)v10 countByEnumeratingWithState:&v32 objects:v37 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v33;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v33 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v32 + 1) + 8 * i);
        PBDataWriterWriteStringField();
      }

      v12 = [(NSArray *)v10 countByEnumeratingWithState:&v32 objects:v37 count:16];
    }

    while (v12);
  }

  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v16 = self->_bargeInModes;
  v17 = [(NSArray *)v16 countByEnumeratingWithState:&v28 objects:v36 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v29;
    do
    {
      for (j = 0; j != v18; ++j)
      {
        if (*v29 != v19)
        {
          objc_enumerationMutation(v16);
        }

        v21 = *(*(&v28 + 1) + 8 * j);
        PBDataWriterWriteStringField();
      }

      v18 = [(NSArray *)v16 countByEnumeratingWithState:&v28 objects:v36 count:16];
    }

    while (v18);
  }

  if (self->_identifiedUser)
  {
    PBDataWriterPlaceMark();
    [(BMSiriRequestContextUser *)self->_identifiedUser writeTo:toCopy];
    PBDataWriterRecallMark();
  }

  if (self->_encodedLocation)
  {
    PBDataWriterWriteDataField();
  }

  if (self->_countryCode)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_siriLocale)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_contentRestrictions)
  {
    PBDataWriterPlaceMark();
    [(BMSiriRequestContextContentRestriction *)self->_contentRestrictions writeTo:toCopy];
    PBDataWriterRecallMark();
  }

  if (self->_hasUiScale)
  {
    uiScale = self->_uiScale;
    PBDataWriterWriteDoubleField();
  }

  if (self->_temperatureUnit)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_hasAllowUserGeneratedContent)
  {
    allowUserGeneratedContent = self->_allowUserGeneratedContent;
    PBDataWriterWriteBOOLField();
  }

  if (self->_hasCensorSpeech)
  {
    censorSpeech = self->_censorSpeech;
    PBDataWriterWriteBOOLField();
  }

  if (self->_meCard)
  {
    PBDataWriterPlaceMark();
    [(BMSiriRequestContextMeCard *)self->_meCard writeTo:toCopy];
    PBDataWriterRecallMark();
  }

  deviceIdiom = self->_deviceIdiom;
  PBDataWriterWriteUint32Field();
  if (self->_hasDidPSCFire)
  {
    didPSCFire = self->_didPSCFire;
    PBDataWriterWriteBOOLField();
  }

  v27 = *MEMORY[0x1E69E9840];
}

- (id)initByReadFrom:(id)from
{
  fromCopy = from;
  v95.receiver = self;
  v95.super_class = BMSiriRequestContext;
  v5 = [(BMEventBase *)&v95 init];
  if (!v5)
  {
    goto LABEL_156;
  }

  v6 = objc_opt_new();
  v7 = objc_opt_new();
  position = [fromCopy position];
  if (position < [fromCopy length])
  {
    do
    {
      if ([fromCopy hasError])
      {
        break;
      }

      v9 = 0;
      v10 = 0;
      v11 = 0;
      while (1)
      {
        LOBYTE(v96) = 0;
        v12 = [fromCopy position] + 1;
        if (v12 >= [fromCopy position] && (v13 = objc_msgSend(fromCopy, "position") + 1, v13 <= objc_msgSend(fromCopy, "length")))
        {
          data = [fromCopy data];
          [data getBytes:&v96 range:{objc_msgSend(fromCopy, "position"), 1}];

          [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
        }

        else
        {
          [fromCopy _setError];
        }

        v11 |= (LOBYTE(v96) & 0x7F) << v9;
        if ((LOBYTE(v96) & 0x80) == 0)
        {
          break;
        }

        v9 += 7;
        v15 = v10++ >= 9;
        if (v15)
        {
          v16 = 0;
          goto LABEL_16;
        }
      }

      v16 = [fromCopy hasError] ? 0 : v11;
LABEL_16:
      if (([fromCopy hasError] & 1) != 0 || (v16 & 7) == 4)
      {
        break;
      }

      switch((v16 >> 3))
      {
        case 1u:
          v17 = PBReaderReadString();
          v18 = 48;
          goto LABEL_78;
        case 2u:
          v17 = PBReaderReadString();
          v18 = 56;
          goto LABEL_78;
        case 3u:
          v17 = PBReaderReadString();
          v18 = 64;
          goto LABEL_78;
        case 4u:
          v17 = PBReaderReadString();
          v18 = 72;
          goto LABEL_78;
        case 5u:
          v23 = 0;
          v24 = 0;
          v25 = 0;
          v5->_hasIsEyesFree = 1;
          while (1)
          {
            LOBYTE(v96) = 0;
            v26 = [fromCopy position] + 1;
            if (v26 >= [fromCopy position] && (v27 = objc_msgSend(fromCopy, "position") + 1, v27 <= objc_msgSend(fromCopy, "length")))
            {
              data2 = [fromCopy data];
              [data2 getBytes:&v96 range:{objc_msgSend(fromCopy, "position"), 1}];

              [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
            }

            else
            {
              [fromCopy _setError];
            }

            v25 |= (LOBYTE(v96) & 0x7F) << v23;
            if ((LOBYTE(v96) & 0x80) == 0)
            {
              break;
            }

            v23 += 7;
            v15 = v24++ >= 9;
            if (v15)
            {
              LOBYTE(v29) = 0;
              goto LABEL_130;
            }
          }

          v29 = (v25 != 0) & ~[fromCopy hasError];
LABEL_130:
          v85 = 16;
          goto LABEL_149;
        case 6u:
          v40 = 0;
          v41 = 0;
          v42 = 0;
          v5->_hasIsMultiUser = 1;
          while (1)
          {
            LOBYTE(v96) = 0;
            v43 = [fromCopy position] + 1;
            if (v43 >= [fromCopy position] && (v44 = objc_msgSend(fromCopy, "position") + 1, v44 <= objc_msgSend(fromCopy, "length")))
            {
              data3 = [fromCopy data];
              [data3 getBytes:&v96 range:{objc_msgSend(fromCopy, "position"), 1}];

              [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
            }

            else
            {
              [fromCopy _setError];
            }

            v42 |= (LOBYTE(v96) & 0x7F) << v40;
            if ((LOBYTE(v96) & 0x80) == 0)
            {
              break;
            }

            v40 += 7;
            v15 = v41++ >= 9;
            if (v15)
            {
              LOBYTE(v29) = 0;
              goto LABEL_134;
            }
          }

          v29 = (v42 != 0) & ~[fromCopy hasError];
LABEL_134:
          v85 = 18;
          goto LABEL_149;
        case 7u:
          v54 = 0;
          v55 = 0;
          v56 = 0;
          v5->_hasIsVoiceTriggerEnabled = 1;
          while (1)
          {
            LOBYTE(v96) = 0;
            v57 = [fromCopy position] + 1;
            if (v57 >= [fromCopy position] && (v58 = objc_msgSend(fromCopy, "position") + 1, v58 <= objc_msgSend(fromCopy, "length")))
            {
              data4 = [fromCopy data];
              [data4 getBytes:&v96 range:{objc_msgSend(fromCopy, "position"), 1}];

              [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
            }

            else
            {
              [fromCopy _setError];
            }

            v56 |= (LOBYTE(v96) & 0x7F) << v54;
            if ((LOBYTE(v96) & 0x80) == 0)
            {
              break;
            }

            v54 += 7;
            v15 = v55++ >= 9;
            if (v15)
            {
              LOBYTE(v29) = 0;
              goto LABEL_140;
            }
          }

          v29 = (v56 != 0) & ~[fromCopy hasError];
LABEL_140:
          v85 = 20;
          goto LABEL_149;
        case 8u:
          v33 = 0;
          v34 = 0;
          v35 = 0;
          v5->_hasIsTextToSpeechEnabled = 1;
          while (1)
          {
            LOBYTE(v96) = 0;
            v36 = [fromCopy position] + 1;
            if (v36 >= [fromCopy position] && (v37 = objc_msgSend(fromCopy, "position") + 1, v37 <= objc_msgSend(fromCopy, "length")))
            {
              data5 = [fromCopy data];
              [data5 getBytes:&v96 range:{objc_msgSend(fromCopy, "position"), 1}];

              [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
            }

            else
            {
              [fromCopy _setError];
            }

            v35 |= (LOBYTE(v96) & 0x7F) << v33;
            if ((LOBYTE(v96) & 0x80) == 0)
            {
              break;
            }

            v33 += 7;
            v15 = v34++ >= 9;
            if (v15)
            {
              LOBYTE(v29) = 0;
              goto LABEL_132;
            }
          }

          v29 = (v35 != 0) & ~[fromCopy hasError];
LABEL_132:
          v85 = 22;
          goto LABEL_149;
        case 9u:
          v67 = 0;
          v68 = 0;
          v69 = 0;
          v5->_hasIsTriggerlessFollowup = 1;
          while (1)
          {
            LOBYTE(v96) = 0;
            v70 = [fromCopy position] + 1;
            if (v70 >= [fromCopy position] && (v71 = objc_msgSend(fromCopy, "position") + 1, v71 <= objc_msgSend(fromCopy, "length")))
            {
              data6 = [fromCopy data];
              [data6 getBytes:&v96 range:{objc_msgSend(fromCopy, "position"), 1}];

              [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
            }

            else
            {
              [fromCopy _setError];
            }

            v69 |= (LOBYTE(v96) & 0x7F) << v67;
            if ((LOBYTE(v96) & 0x80) == 0)
            {
              break;
            }

            v67 += 7;
            v15 = v68++ >= 9;
            if (v15)
            {
              LOBYTE(v29) = 0;
              goto LABEL_144;
            }
          }

          v29 = (v69 != 0) & ~[fromCopy hasError];
LABEL_144:
          v85 = 24;
          goto LABEL_149;
        case 0xAu:
          v30 = PBReaderReadString();
          if (!v30)
          {
            goto LABEL_158;
          }

          v31 = v30;
          v32 = v6;
          goto LABEL_99;
        case 0xBu:
          v66 = PBReaderReadString();
          if (!v66)
          {
            goto LABEL_158;
          }

          v31 = v66;
          v32 = v7;
LABEL_99:
          [v32 addObject:v31];

          goto LABEL_150;
        case 0xCu:
          v96 = 0.0;
          v97 = 0;
          if (!PBReaderPlaceMark())
          {
            goto LABEL_158;
          }

          v21 = [[BMSiriRequestContextUser alloc] initByReadFrom:fromCopy];
          if (!v21)
          {
            goto LABEL_158;
          }

          v22 = 96;
          goto LABEL_58;
        case 0xDu:
          v17 = PBReaderReadData();
          v18 = 104;
          goto LABEL_78;
        case 0xEu:
          v17 = PBReaderReadString();
          v18 = 112;
          goto LABEL_78;
        case 0xFu:
          v17 = PBReaderReadString();
          v18 = 120;
          goto LABEL_78;
        case 0x10u:
          v96 = 0.0;
          v97 = 0;
          if (!PBReaderPlaceMark())
          {
            goto LABEL_158;
          }

          v21 = [[BMSiriRequestContextContentRestriction alloc] initByReadFrom:fromCopy];
          if (!v21)
          {
            goto LABEL_158;
          }

          v22 = 128;
          goto LABEL_58;
        case 0x11u:
          v5->_hasUiScale = 1;
          v96 = 0.0;
          v19 = [fromCopy position] + 8;
          if (v19 >= [fromCopy position] && (v20 = objc_msgSend(fromCopy, "position") + 8, v20 <= objc_msgSend(fromCopy, "length")))
          {
            data7 = [fromCopy data];
            [data7 getBytes:&v96 range:{objc_msgSend(fromCopy, "position"), 8}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 8}];
          }

          else
          {
            [fromCopy _setError];
          }

          v5->_uiScale = v96;
          goto LABEL_150;
        case 0x12u:
          v17 = PBReaderReadString();
          v18 = 144;
LABEL_78:
          v53 = *(&v5->super.super.isa + v18);
          *(&v5->super.super.isa + v18) = v17;

          goto LABEL_150;
        case 0x13u:
          v60 = 0;
          v61 = 0;
          v62 = 0;
          v5->_hasAllowUserGeneratedContent = 1;
          while (1)
          {
            LOBYTE(v96) = 0;
            v63 = [fromCopy position] + 1;
            if (v63 >= [fromCopy position] && (v64 = objc_msgSend(fromCopy, "position") + 1, v64 <= objc_msgSend(fromCopy, "length")))
            {
              data8 = [fromCopy data];
              [data8 getBytes:&v96 range:{objc_msgSend(fromCopy, "position"), 1}];

              [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
            }

            else
            {
              [fromCopy _setError];
            }

            v62 |= (LOBYTE(v96) & 0x7F) << v60;
            if ((LOBYTE(v96) & 0x80) == 0)
            {
              break;
            }

            v60 += 7;
            v15 = v61++ >= 9;
            if (v15)
            {
              LOBYTE(v29) = 0;
              goto LABEL_142;
            }
          }

          v29 = (v62 != 0) & ~[fromCopy hasError];
LABEL_142:
          v85 = 27;
          goto LABEL_149;
        case 0x14u:
          v79 = 0;
          v80 = 0;
          v81 = 0;
          v5->_hasCensorSpeech = 1;
          while (1)
          {
            LOBYTE(v96) = 0;
            v82 = [fromCopy position] + 1;
            if (v82 >= [fromCopy position] && (v83 = objc_msgSend(fromCopy, "position") + 1, v83 <= objc_msgSend(fromCopy, "length")))
            {
              data9 = [fromCopy data];
              [data9 getBytes:&v96 range:{objc_msgSend(fromCopy, "position"), 1}];

              [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
            }

            else
            {
              [fromCopy _setError];
            }

            v81 |= (LOBYTE(v96) & 0x7F) << v79;
            if ((LOBYTE(v96) & 0x80) == 0)
            {
              break;
            }

            v79 += 7;
            v15 = v80++ >= 9;
            if (v15)
            {
              LOBYTE(v29) = 0;
              goto LABEL_148;
            }
          }

          v29 = (v81 != 0) & ~[fromCopy hasError];
LABEL_148:
          v85 = 29;
          goto LABEL_149;
        case 0x15u:
          v96 = 0.0;
          v97 = 0;
          if (!PBReaderPlaceMark())
          {
            goto LABEL_158;
          }

          v21 = [[BMSiriRequestContextMeCard alloc] initByReadFrom:fromCopy];
          if (!v21)
          {
            goto LABEL_158;
          }

          v22 = 152;
LABEL_58:
          v39 = *(&v5->super.super.isa + v22);
          *(&v5->super.super.isa + v22) = v21;

          PBReaderRecallMark();
          goto LABEL_150;
        case 0x16u:
          v46 = 0;
          v47 = 0;
          v48 = 0;
          while (1)
          {
            LOBYTE(v96) = 0;
            v49 = [fromCopy position] + 1;
            if (v49 >= [fromCopy position] && (v50 = objc_msgSend(fromCopy, "position") + 1, v50 <= objc_msgSend(fromCopy, "length")))
            {
              data10 = [fromCopy data];
              [data10 getBytes:&v96 range:{objc_msgSend(fromCopy, "position"), 1}];

              [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
            }

            else
            {
              [fromCopy _setError];
            }

            v48 |= (LOBYTE(v96) & 0x7F) << v46;
            if ((LOBYTE(v96) & 0x80) == 0)
            {
              break;
            }

            v46 += 7;
            if (v47++ > 8)
            {
              goto LABEL_137;
            }
          }

          if (([fromCopy hasError] & 1) != 0 || v48 > 0xA)
          {
LABEL_137:
            LODWORD(v48) = 0;
          }

          v5->_deviceIdiom = v48;
          goto LABEL_150;
        case 0x17u:
          v73 = 0;
          v74 = 0;
          v75 = 0;
          v5->_hasDidPSCFire = 1;
          break;
        default:
          if (PBReaderSkipValueWithTag())
          {
            goto LABEL_150;
          }

LABEL_158:

          goto LABEL_155;
      }

      while (1)
      {
        LOBYTE(v96) = 0;
        v76 = [fromCopy position] + 1;
        if (v76 >= [fromCopy position] && (v77 = objc_msgSend(fromCopy, "position") + 1, v77 <= objc_msgSend(fromCopy, "length")))
        {
          data11 = [fromCopy data];
          [data11 getBytes:&v96 range:{objc_msgSend(fromCopy, "position"), 1}];

          [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
        }

        else
        {
          [fromCopy _setError];
        }

        v75 |= (LOBYTE(v96) & 0x7F) << v73;
        if ((LOBYTE(v96) & 0x80) == 0)
        {
          break;
        }

        v73 += 7;
        v15 = v74++ >= 9;
        if (v15)
        {
          LOBYTE(v29) = 0;
          goto LABEL_146;
        }
      }

      v29 = (v75 != 0) & ~[fromCopy hasError];
LABEL_146:
      v85 = 31;
LABEL_149:
      *(&v5->super.super.isa + v85) = v29;
LABEL_150:
      position2 = [fromCopy position];
    }

    while (position2 < [fromCopy length]);
  }

  v88 = [v6 copy];
  deviceRestrictions = v5->_deviceRestrictions;
  v5->_deviceRestrictions = v88;

  v90 = [v7 copy];
  bargeInModes = v5->_bargeInModes;
  v5->_bargeInModes = v90;

  hasError = [fromCopy hasError];
  if (hasError)
  {
LABEL_155:
    v93 = 0;
  }

  else
  {
LABEL_156:
    v93 = v5;
  }

  return v93;
}

- (NSString)description
{
  v18 = objc_alloc(MEMORY[0x1E696AEC0]);
  sessionID = [(BMSiriRequestContext *)self sessionID];
  requestID = [(BMSiriRequestContext *)self requestID];
  inputOrigin = [(BMSiriRequestContext *)self inputOrigin];
  responseMode = [(BMSiriRequestContext *)self responseMode];
  v25 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMSiriRequestContext isEyesFree](self, "isEyesFree")}];
  v17 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMSiriRequestContext isMultiUser](self, "isMultiUser")}];
  v24 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMSiriRequestContext isVoiceTriggerEnabled](self, "isVoiceTriggerEnabled")}];
  v16 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMSiriRequestContext isTextToSpeechEnabled](self, "isTextToSpeechEnabled")}];
  v23 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMSiriRequestContext isTriggerlessFollowup](self, "isTriggerlessFollowup")}];
  deviceRestrictions = [(BMSiriRequestContext *)self deviceRestrictions];
  bargeInModes = [(BMSiriRequestContext *)self bargeInModes];
  identifiedUser = [(BMSiriRequestContext *)self identifiedUser];
  encodedLocation = [(BMSiriRequestContext *)self encodedLocation];
  countryCode = [(BMSiriRequestContext *)self countryCode];
  siriLocale = [(BMSiriRequestContext *)self siriLocale];
  contentRestrictions = [(BMSiriRequestContext *)self contentRestrictions];
  v3 = MEMORY[0x1E696AD98];
  [(BMSiriRequestContext *)self uiScale];
  v4 = [v3 numberWithDouble:?];
  temperatureUnit = [(BMSiriRequestContext *)self temperatureUnit];
  v11 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMSiriRequestContext allowUserGeneratedContent](self, "allowUserGeneratedContent")}];
  v6 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMSiriRequestContext censorSpeech](self, "censorSpeech")}];
  meCard = [(BMSiriRequestContext *)self meCard];
  v8 = BMSiriRequestContextDeviceIdiomAsString([(BMSiriRequestContext *)self deviceIdiom]);
  v9 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMSiriRequestContext didPSCFire](self, "didPSCFire")}];
  v19 = [v18 initWithFormat:@"BMSiriRequestContext with sessionID: %@, requestID: %@, inputOrigin: %@, responseMode: %@, isEyesFree: %@, isMultiUser: %@, isVoiceTriggerEnabled: %@, isTextToSpeechEnabled: %@, isTriggerlessFollowup: %@, deviceRestrictions: %@, bargeInModes: %@, identifiedUser: %@, encodedLocation: %@, countryCode: %@, siriLocale: %@, contentRestrictions: %@, uiScale: %@, temperatureUnit: %@, allowUserGeneratedContent: %@, censorSpeech: %@, meCard: %@, deviceIdiom: %@, didPSCFire: %@", sessionID, requestID, inputOrigin, responseMode, v25, v17, v24, v16, v23, deviceRestrictions, bargeInModes, identifiedUser, encodedLocation, countryCode, siriLocale, contentRestrictions, v4, temperatureUnit, v11, v6, meCard, v8, v9];

  return v19;
}

- (BMSiriRequestContext)initWithSessionID:(id)d requestID:(id)iD inputOrigin:(id)origin responseMode:(id)mode isEyesFree:(id)free isMultiUser:(id)user isVoiceTriggerEnabled:(id)enabled isTextToSpeechEnabled:(id)self0 isTriggerlessFollowup:(id)self1 deviceRestrictions:(id)self2 bargeInModes:(id)self3 identifiedUser:(id)self4 encodedLocation:(id)self5 countryCode:(id)self6 siriLocale:(id)self7 contentRestrictions:(id)self8 uiScale:(id)self9 temperatureUnit:(id)unit allowUserGeneratedContent:(id)content censorSpeech:(id)speech meCard:(id)card deviceIdiom:(int)idiom didPSCFire:(id)fire
{
  dCopy = d;
  iDCopy = iD;
  iDCopy2 = iD;
  originCopy = origin;
  originCopy2 = origin;
  modeCopy = mode;
  modeCopy2 = mode;
  freeCopy = free;
  userCopy = user;
  enabledCopy = enabled;
  speechEnabledCopy = speechEnabled;
  followupCopy = followup;
  restrictionsCopy = restrictions;
  modesCopy = modes;
  identifiedUserCopy = identifiedUser;
  locationCopy = location;
  codeCopy = code;
  localeCopy = locale;
  contentRestrictionsCopy = contentRestrictions;
  scaleCopy = scale;
  unitCopy = unit;
  v33 = freeCopy;
  contentCopy = content;
  speechCopy = speech;
  cardCopy = card;
  fireCopy = fire;
  v61.receiver = self;
  v61.super_class = BMSiriRequestContext;
  v38 = [(BMEventBase *)&v61 init];
  if (v38)
  {
    v38->_dataVersion = [objc_opt_class() latestDataVersion];
    objc_storeStrong(&v38->_sessionID, d);
    objc_storeStrong(&v38->_requestID, iDCopy);
    objc_storeStrong(&v38->_inputOrigin, originCopy);
    objc_storeStrong(&v38->_responseMode, modeCopy);
    if (v33)
    {
      v38->_hasIsEyesFree = 1;
      v38->_isEyesFree = [v33 BOOLValue];
    }

    else
    {
      v38->_hasIsEyesFree = 0;
      v38->_isEyesFree = 0;
    }

    if (userCopy)
    {
      v38->_hasIsMultiUser = 1;
      v38->_isMultiUser = [userCopy BOOLValue];
    }

    else
    {
      v38->_hasIsMultiUser = 0;
      v38->_isMultiUser = 0;
    }

    if (enabledCopy)
    {
      v38->_hasIsVoiceTriggerEnabled = 1;
      v38->_isVoiceTriggerEnabled = [enabledCopy BOOLValue];
    }

    else
    {
      v38->_hasIsVoiceTriggerEnabled = 0;
      v38->_isVoiceTriggerEnabled = 0;
    }

    if (speechEnabledCopy)
    {
      v38->_hasIsTextToSpeechEnabled = 1;
      v38->_isTextToSpeechEnabled = [speechEnabledCopy BOOLValue];
    }

    else
    {
      v38->_hasIsTextToSpeechEnabled = 0;
      v38->_isTextToSpeechEnabled = 0;
    }

    if (followupCopy)
    {
      v38->_hasIsTriggerlessFollowup = 1;
      v38->_isTriggerlessFollowup = [followupCopy BOOLValue];
    }

    else
    {
      v38->_hasIsTriggerlessFollowup = 0;
      v38->_isTriggerlessFollowup = 0;
    }

    objc_storeStrong(&v38->_deviceRestrictions, restrictions);
    objc_storeStrong(&v38->_bargeInModes, modes);
    objc_storeStrong(&v38->_identifiedUser, identifiedUser);
    objc_storeStrong(&v38->_encodedLocation, location);
    objc_storeStrong(&v38->_countryCode, code);
    objc_storeStrong(&v38->_siriLocale, locale);
    objc_storeStrong(&v38->_contentRestrictions, contentRestrictions);
    if (scaleCopy)
    {
      v38->_hasUiScale = 1;
      [scaleCopy doubleValue];
    }

    else
    {
      v38->_hasUiScale = 0;
      v39 = -1.0;
    }

    v38->_uiScale = v39;
    objc_storeStrong(&v38->_temperatureUnit, unit);
    if (contentCopy)
    {
      v38->_hasAllowUserGeneratedContent = 1;
      v38->_allowUserGeneratedContent = [contentCopy BOOLValue];
    }

    else
    {
      v38->_hasAllowUserGeneratedContent = 0;
      v38->_allowUserGeneratedContent = 0;
    }

    if (speechCopy)
    {
      v38->_hasCensorSpeech = 1;
      v38->_censorSpeech = [speechCopy BOOLValue];
    }

    else
    {
      v38->_hasCensorSpeech = 0;
      v38->_censorSpeech = 0;
    }

    objc_storeStrong(&v38->_meCard, card);
    v38->_deviceIdiom = idiom;
    if (fireCopy)
    {
      v38->_hasDidPSCFire = 1;
      v38->_didPSCFire = [fireCopy BOOLValue];
    }

    else
    {
      v38->_hasDidPSCFire = 0;
      v38->_didPSCFire = 0;
    }
  }

  return v38;
}

+ (id)protoFields
{
  v28[23] = *MEMORY[0x1E69E9840];
  v27 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"sessionID" number:1 type:13 subMessageClass:0];
  v28[0] = v27;
  v26 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"requestID" number:2 type:13 subMessageClass:0];
  v28[1] = v26;
  v25 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"inputOrigin" number:3 type:13 subMessageClass:0];
  v28[2] = v25;
  v24 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"responseMode" number:4 type:13 subMessageClass:0];
  v28[3] = v24;
  v23 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"isEyesFree" number:5 type:12 subMessageClass:0];
  v28[4] = v23;
  v22 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"isMultiUser" number:6 type:12 subMessageClass:0];
  v28[5] = v22;
  v21 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"isVoiceTriggerEnabled" number:7 type:12 subMessageClass:0];
  v28[6] = v21;
  v20 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"isTextToSpeechEnabled" number:8 type:12 subMessageClass:0];
  v28[7] = v20;
  v19 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"isTriggerlessFollowup" number:9 type:12 subMessageClass:0];
  v28[8] = v19;
  v18 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"deviceRestrictions" number:10 type:13 subMessageClass:0];
  v28[9] = v18;
  v17 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"bargeInModes" number:11 type:13 subMessageClass:0];
  v28[10] = v17;
  v16 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"identifiedUser" number:12 type:14 subMessageClass:objc_opt_class()];
  v28[11] = v16;
  v15 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"encodedLocation" number:13 type:14 subMessageClass:0];
  v28[12] = v15;
  v14 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"countryCode" number:14 type:13 subMessageClass:0];
  v28[13] = v14;
  v2 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"siriLocale" number:15 type:13 subMessageClass:0];
  v28[14] = v2;
  v3 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"contentRestrictions" number:16 type:14 subMessageClass:objc_opt_class()];
  v28[15] = v3;
  v4 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"uiScale" number:17 type:0 subMessageClass:0];
  v28[16] = v4;
  v5 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"temperatureUnit" number:18 type:13 subMessageClass:0];
  v28[17] = v5;
  v6 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"allowUserGeneratedContent" number:19 type:12 subMessageClass:0];
  v28[18] = v6;
  v7 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"censorSpeech" number:20 type:12 subMessageClass:0];
  v28[19] = v7;
  v8 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"meCard" number:21 type:14 subMessageClass:objc_opt_class()];
  v28[20] = v8;
  v9 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"deviceIdiom" number:22 type:4 subMessageClass:0];
  v28[21] = v9;
  v10 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"didPSCFire" number:23 type:12 subMessageClass:0];
  v28[22] = v10;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v28 count:23];

  v12 = *MEMORY[0x1E69E9840];

  return v11;
}

+ (id)columns
{
  v28[23] = *MEMORY[0x1E69E9840];
  v27 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"sessionID" dataType:2 requestOnly:0 fieldNumber:1 protoDataType:13 convertedType:0];
  v26 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"requestID" dataType:2 requestOnly:0 fieldNumber:2 protoDataType:13 convertedType:0];
  v25 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"inputOrigin" dataType:2 requestOnly:0 fieldNumber:3 protoDataType:13 convertedType:0];
  v24 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"responseMode" dataType:2 requestOnly:0 fieldNumber:4 protoDataType:13 convertedType:0];
  v23 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"isEyesFree" dataType:0 requestOnly:0 fieldNumber:5 protoDataType:12 convertedType:0];
  v22 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"isMultiUser" dataType:0 requestOnly:0 fieldNumber:6 protoDataType:12 convertedType:0];
  v21 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"isVoiceTriggerEnabled" dataType:0 requestOnly:0 fieldNumber:7 protoDataType:12 convertedType:0];
  v20 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"isTextToSpeechEnabled" dataType:0 requestOnly:0 fieldNumber:8 protoDataType:12 convertedType:0];
  v19 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"isTriggerlessFollowup" dataType:0 requestOnly:0 fieldNumber:9 protoDataType:12 convertedType:0];
  v18 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"deviceRestrictions_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_454_43647];
  v17 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"bargeInModes_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_456_43648];
  v16 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"identifiedUser_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_458_43649];
  v15 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"encodedLocation" dataType:4 requestOnly:0 fieldNumber:13 protoDataType:14 convertedType:0];
  v2 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"countryCode" dataType:2 requestOnly:0 fieldNumber:14 protoDataType:13 convertedType:0];
  v14 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"siriLocale" dataType:2 requestOnly:0 fieldNumber:15 protoDataType:13 convertedType:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"contentRestrictions_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_460];
  v13 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"uiScale" dataType:1 requestOnly:0 fieldNumber:17 protoDataType:0 convertedType:0];
  v4 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"temperatureUnit" dataType:2 requestOnly:0 fieldNumber:18 protoDataType:13 convertedType:0];
  v5 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"allowUserGeneratedContent" dataType:0 requestOnly:0 fieldNumber:19 protoDataType:12 convertedType:0];
  v12 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"censorSpeech" dataType:0 requestOnly:0 fieldNumber:20 protoDataType:12 convertedType:0];
  v6 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"meCard_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_462];
  v7 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"deviceIdiom" dataType:0 requestOnly:0 fieldNumber:22 protoDataType:4 convertedType:0];
  v8 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"didPSCFire" dataType:0 requestOnly:0 fieldNumber:23 protoDataType:12 convertedType:0];
  v28[0] = v27;
  v28[1] = v26;
  v28[2] = v25;
  v28[3] = v24;
  v28[4] = v23;
  v28[5] = v22;
  v28[6] = v21;
  v28[7] = v20;
  v28[8] = v19;
  v28[9] = v18;
  v28[10] = v17;
  v28[11] = v16;
  v28[12] = v15;
  v28[13] = v2;
  v28[14] = v14;
  v28[15] = v3;
  v28[16] = v13;
  v28[17] = v4;
  v28[18] = v5;
  v28[19] = v12;
  v28[20] = v6;
  v28[21] = v7;
  v28[22] = v8;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v28 count:23];

  v9 = *MEMORY[0x1E69E9840];

  return v11;
}

id __31__BMSiriRequestContext_columns__block_invoke_5(uint64_t a1, void *a2)
{
  v2 = [a2 eventBodyKeepingBackingData:1];
  v3 = [v2 meCard];
  v4 = [v3 jsonDictionary];
  v5 = BMConvertObjectToJSONString();

  return v5;
}

id __31__BMSiriRequestContext_columns__block_invoke_4(uint64_t a1, void *a2)
{
  v2 = [a2 eventBodyKeepingBackingData:1];
  v3 = [v2 contentRestrictions];
  v4 = [v3 jsonDictionary];
  v5 = BMConvertObjectToJSONString();

  return v5;
}

id __31__BMSiriRequestContext_columns__block_invoke_3(uint64_t a1, void *a2)
{
  v2 = [a2 eventBodyKeepingBackingData:1];
  v3 = [v2 identifiedUser];
  v4 = [v3 jsonDictionary];
  v5 = BMConvertObjectToJSONString();

  return v5;
}

id __31__BMSiriRequestContext_columns__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = [a2 eventBodyKeepingBackingData:1];
  v3 = [v2 _bargeInModesJSONArray];
  v4 = BMConvertObjectToJSONString();

  return v4;
}

id __31__BMSiriRequestContext_columns__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 eventBodyKeepingBackingData:1];
  v3 = [v2 _deviceRestrictionsJSONArray];
  v4 = BMConvertObjectToJSONString();

  return v4;
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

    v8 = [[BMSiriRequestContext alloc] initByReadFrom:v7];
    v4 = v8;
    if (v8)
    {
      v8[9] = 0;
    }
  }

  return v4;
}

@end