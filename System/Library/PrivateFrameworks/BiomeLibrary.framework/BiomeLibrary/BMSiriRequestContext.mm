@interface BMSiriRequestContext
+ (id)columns;
+ (id)eventWithData:(id)a3 dataVersion:(unsigned int)a4;
+ (id)protoFields;
- (BMSiriRequestContext)initWithJSONDictionary:(id)a3 error:(id *)a4;
- (BMSiriRequestContext)initWithSessionID:(id)a3 requestID:(id)a4 inputOrigin:(id)a5 responseMode:(id)a6 isEyesFree:(id)a7 isMultiUser:(id)a8 isVoiceTriggerEnabled:(id)a9 isTextToSpeechEnabled:(id)a10 isTriggerlessFollowup:(id)a11 deviceRestrictions:(id)a12 bargeInModes:(id)a13 identifiedUser:(id)a14 encodedLocation:(id)a15 countryCode:(id)a16 siriLocale:(id)a17 contentRestrictions:(id)a18 uiScale:(id)a19 temperatureUnit:(id)a20 allowUserGeneratedContent:(id)a21 censorSpeech:(id)a22 meCard:(id)a23 deviceIdiom:(int)a24 didPSCFire:(id)a25;
- (BOOL)isEqual:(id)a3;
- (NSString)description;
- (id)_bargeInModesJSONArray;
- (id)_deviceRestrictionsJSONArray;
- (id)initByReadFrom:(id)a3;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)a3;
@end

@implementation BMSiriRequestContext

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [(BMSiriRequestContext *)self sessionID];
    v7 = [v5 sessionID];
    v8 = v7;
    if (v6 == v7)
    {
    }

    else
    {
      v9 = [(BMSiriRequestContext *)self sessionID];
      v10 = [v5 sessionID];
      v11 = [v9 isEqual:v10];

      if (!v11)
      {
        goto LABEL_101;
      }
    }

    v13 = [(BMSiriRequestContext *)self requestID];
    v14 = [v5 requestID];
    v15 = v14;
    if (v13 == v14)
    {
    }

    else
    {
      v16 = [(BMSiriRequestContext *)self requestID];
      v17 = [v5 requestID];
      v18 = [v16 isEqual:v17];

      if (!v18)
      {
        goto LABEL_101;
      }
    }

    v19 = [(BMSiriRequestContext *)self inputOrigin];
    v20 = [v5 inputOrigin];
    v21 = v20;
    if (v19 == v20)
    {
    }

    else
    {
      v22 = [(BMSiriRequestContext *)self inputOrigin];
      v23 = [v5 inputOrigin];
      v24 = [v22 isEqual:v23];

      if (!v24)
      {
        goto LABEL_101;
      }
    }

    v25 = [(BMSiriRequestContext *)self responseMode];
    v26 = [v5 responseMode];
    v27 = v26;
    if (v25 == v26)
    {
    }

    else
    {
      v28 = [(BMSiriRequestContext *)self responseMode];
      v29 = [v5 responseMode];
      v30 = [v28 isEqual:v29];

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

      v31 = [(BMSiriRequestContext *)self isEyesFree];
      if (v31 != [v5 isEyesFree])
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

      v32 = [(BMSiriRequestContext *)self isMultiUser];
      if (v32 != [v5 isMultiUser])
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

      v33 = [(BMSiriRequestContext *)self isVoiceTriggerEnabled];
      if (v33 != [v5 isVoiceTriggerEnabled])
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

      v34 = [(BMSiriRequestContext *)self isTextToSpeechEnabled];
      if (v34 != [v5 isTextToSpeechEnabled])
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

      v35 = [(BMSiriRequestContext *)self isTriggerlessFollowup];
      if (v35 != [v5 isTriggerlessFollowup])
      {
        goto LABEL_101;
      }
    }

    v36 = [(BMSiriRequestContext *)self deviceRestrictions];
    v37 = [v5 deviceRestrictions];
    v38 = v37;
    if (v36 == v37)
    {
    }

    else
    {
      v39 = [(BMSiriRequestContext *)self deviceRestrictions];
      v40 = [v5 deviceRestrictions];
      v41 = [v39 isEqual:v40];

      if (!v41)
      {
        goto LABEL_101;
      }
    }

    v42 = [(BMSiriRequestContext *)self bargeInModes];
    v43 = [v5 bargeInModes];
    v44 = v43;
    if (v42 == v43)
    {
    }

    else
    {
      v45 = [(BMSiriRequestContext *)self bargeInModes];
      v46 = [v5 bargeInModes];
      v47 = [v45 isEqual:v46];

      if (!v47)
      {
        goto LABEL_101;
      }
    }

    v48 = [(BMSiriRequestContext *)self identifiedUser];
    v49 = [v5 identifiedUser];
    v50 = v49;
    if (v48 == v49)
    {
    }

    else
    {
      v51 = [(BMSiriRequestContext *)self identifiedUser];
      v52 = [v5 identifiedUser];
      v53 = [v51 isEqual:v52];

      if (!v53)
      {
        goto LABEL_101;
      }
    }

    v54 = [(BMSiriRequestContext *)self encodedLocation];
    v55 = [v5 encodedLocation];
    v56 = v55;
    if (v54 == v55)
    {
    }

    else
    {
      v57 = [(BMSiriRequestContext *)self encodedLocation];
      v58 = [v5 encodedLocation];
      v59 = [v57 isEqual:v58];

      if (!v59)
      {
        goto LABEL_101;
      }
    }

    v60 = [(BMSiriRequestContext *)self countryCode];
    v61 = [v5 countryCode];
    v62 = v61;
    if (v60 == v61)
    {
    }

    else
    {
      v63 = [(BMSiriRequestContext *)self countryCode];
      v64 = [v5 countryCode];
      v65 = [v63 isEqual:v64];

      if (!v65)
      {
        goto LABEL_101;
      }
    }

    v66 = [(BMSiriRequestContext *)self siriLocale];
    v67 = [v5 siriLocale];
    v68 = v67;
    if (v66 == v67)
    {
    }

    else
    {
      v69 = [(BMSiriRequestContext *)self siriLocale];
      v70 = [v5 siriLocale];
      v71 = [v69 isEqual:v70];

      if (!v71)
      {
        goto LABEL_101;
      }
    }

    v72 = [(BMSiriRequestContext *)self contentRestrictions];
    v73 = [v5 contentRestrictions];
    v74 = v73;
    if (v72 == v73)
    {
    }

    else
    {
      v75 = [(BMSiriRequestContext *)self contentRestrictions];
      v76 = [v5 contentRestrictions];
      v77 = [v75 isEqual:v76];

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

    v81 = [(BMSiriRequestContext *)self temperatureUnit];
    v82 = [v5 temperatureUnit];
    v83 = v82;
    if (v81 == v82)
    {
    }

    else
    {
      v84 = [(BMSiriRequestContext *)self temperatureUnit];
      v85 = [v5 temperatureUnit];
      v86 = [v84 isEqual:v85];

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

      v87 = [(BMSiriRequestContext *)self allowUserGeneratedContent];
      if (v87 != [v5 allowUserGeneratedContent])
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

      v88 = [(BMSiriRequestContext *)self censorSpeech];
      if (v88 != [v5 censorSpeech])
      {
        goto LABEL_101;
      }
    }

    v89 = [(BMSiriRequestContext *)self meCard];
    v90 = [v5 meCard];
    v91 = v90;
    if (v89 == v90)
    {
    }

    else
    {
      v92 = [(BMSiriRequestContext *)self meCard];
      v93 = [v5 meCard];
      v94 = [v92 isEqual:v93];

      if (!v94)
      {
        goto LABEL_101;
      }
    }

    v95 = [(BMSiriRequestContext *)self deviceIdiom];
    if (v95 == [v5 deviceIdiom])
    {
      if (!-[BMSiriRequestContext hasDidPSCFire](self, "hasDidPSCFire") && ![v5 hasDidPSCFire])
      {
        LOBYTE(v12) = 1;
        goto LABEL_102;
      }

      if (-[BMSiriRequestContext hasDidPSCFire](self, "hasDidPSCFire") && [v5 hasDidPSCFire])
      {
        v96 = [(BMSiriRequestContext *)self didPSCFire];
        v12 = v96 ^ [v5 didPSCFire] ^ 1;
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
  v3 = [(BMSiriRequestContext *)self sessionID];
  v4 = [(BMSiriRequestContext *)self requestID];
  v5 = [(BMSiriRequestContext *)self inputOrigin];
  v6 = [(BMSiriRequestContext *)self responseMode];
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

  v83 = [(BMSiriRequestContext *)self _deviceRestrictionsJSONArray];
  v82 = [(BMSiriRequestContext *)self _bargeInModesJSONArray];
  v10 = [(BMSiriRequestContext *)self identifiedUser];
  v81 = [v10 jsonDictionary];

  v11 = [(BMSiriRequestContext *)self encodedLocation];
  v80 = [v11 base64EncodedStringWithOptions:0];

  v79 = [(BMSiriRequestContext *)self countryCode];
  v78 = [(BMSiriRequestContext *)self siriLocale];
  v12 = [(BMSiriRequestContext *)self contentRestrictions];
  v77 = [v12 jsonDictionary];

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

  v75 = [(BMSiriRequestContext *)self temperatureUnit];
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

  v15 = [(BMSiriRequestContext *)self meCard];
  v72 = [v15 jsonDictionary];

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
  v17 = v3;
  if (!v3)
  {
    v17 = [MEMORY[0x1E695DFB0] null];
  }

  v60 = v17;
  v87[0] = v17;
  v86[1] = @"requestID";
  v18 = v4;
  if (!v4)
  {
    v18 = [MEMORY[0x1E695DFB0] null];
  }

  v59 = v18;
  v87[1] = v18;
  v86[2] = @"inputOrigin";
  v19 = v5;
  if (!v5)
  {
    v19 = [MEMORY[0x1E695DFB0] null];
  }

  v58 = v19;
  v87[2] = v19;
  v86[3] = @"responseMode";
  v20 = v6;
  if (!v6)
  {
    v20 = [MEMORY[0x1E695DFB0] null];
  }

  v57 = v20;
  v87[3] = v20;
  v86[4] = @"isEyesFree";
  v21 = v7;
  if (!v7)
  {
    v21 = [MEMORY[0x1E695DFB0] null];
  }

  v56 = v21;
  v87[4] = v21;
  v86[5] = @"isMultiUser";
  v22 = v8;
  if (!v8)
  {
    v22 = [MEMORY[0x1E695DFB0] null];
  }

  v55 = v22;
  v87[5] = v22;
  v86[6] = @"isVoiceTriggerEnabled";
  v23 = v9;
  if (!v9)
  {
    v23 = [MEMORY[0x1E695DFB0] null];
  }

  v54 = v23;
  v87[6] = v23;
  v86[7] = @"isTextToSpeechEnabled";
  v24 = v85;
  if (!v85)
  {
    v24 = [MEMORY[0x1E695DFB0] null];
  }

  v87[7] = v24;
  v86[8] = @"isTriggerlessFollowup";
  v25 = v84;
  if (!v84)
  {
    v25 = [MEMORY[0x1E695DFB0] null];
  }

  v87[8] = v25;
  v86[9] = @"deviceRestrictions";
  v26 = v83;
  if (!v83)
  {
    v26 = [MEMORY[0x1E695DFB0] null];
  }

  v64 = v26;
  v87[9] = v26;
  v86[10] = @"bargeInModes";
  v27 = v82;
  if (!v82)
  {
    v27 = [MEMORY[0x1E695DFB0] null];
  }

  v63 = v27;
  v87[10] = v27;
  v86[11] = @"identifiedUser";
  v28 = v81;
  if (!v81)
  {
    v28 = [MEMORY[0x1E695DFB0] null];
  }

  v68 = v4;
  v87[11] = v28;
  v86[12] = @"encodedLocation";
  v29 = v80;
  v30 = v28;
  if (!v80)
  {
    v29 = [MEMORY[0x1E695DFB0] null];
  }

  v66 = v7;
  v87[12] = v29;
  v86[13] = @"countryCode";
  v31 = v79;
  v32 = v29;
  if (!v79)
  {
    v31 = [MEMORY[0x1E695DFB0] null];
  }

  v70 = v16;
  v87[13] = v31;
  v86[14] = @"siriLocale";
  v33 = v78;
  v34 = v31;
  if (!v78)
  {
    v33 = [MEMORY[0x1E695DFB0] null];
  }

  v67 = v5;
  v87[14] = v33;
  v86[15] = @"contentRestrictions";
  v35 = v77;
  v36 = v33;
  if (!v77)
  {
    v35 = [MEMORY[0x1E695DFB0] null];
  }

  v69 = v3;
  v62 = v35;
  v87[15] = v35;
  v86[16] = @"uiScale";
  v37 = v76;
  if (!v76)
  {
    v37 = [MEMORY[0x1E695DFB0] null];
  }

  v65 = v8;
  v48 = v37;
  v87[16] = v37;
  v86[17] = @"temperatureUnit";
  v38 = v75;
  if (!v75)
  {
    v38 = [MEMORY[0x1E695DFB0] null];
  }

  v51 = v30;
  v53 = v24;
  v87[17] = v38;
  v86[18] = @"allowUserGeneratedContent";
  v39 = v74;
  if (!v74)
  {
    v39 = [MEMORY[0x1E695DFB0] null];
  }

  v40 = v6;
  v87[18] = v39;
  v86[19] = @"censorSpeech";
  v41 = v73;
  if (!v73)
  {
    v41 = [MEMORY[0x1E695DFB0] null];
  }

  v50 = v36;
  v52 = v25;
  v87[19] = v41;
  v86[20] = @"meCard";
  v42 = v72;
  if (!v72)
  {
    v42 = [MEMORY[0x1E695DFB0] null];
  }

  v43 = v34;
  v87[20] = v42;
  v86[21] = @"deviceIdiom";
  v44 = v71;
  if (!v71)
  {
    v44 = [MEMORY[0x1E695DFB0] null];
  }

  v87[21] = v44;
  v86[22] = @"didPSCFire";
  v45 = v70;
  if (!v70)
  {
    v45 = [MEMORY[0x1E695DFB0] null];
  }

  v87[22] = v45;
  v61 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v87 forKeys:v86 count:{23, v48}];
  if (!v70)
  {
  }

  if (!v71)
  {
  }

  if (!v72)
  {
  }

  if (!v73)
  {
  }

  if (!v74)
  {
  }

  if (!v75)
  {
  }

  if (!v76)
  {
  }

  if (!v77)
  {
  }

  if (!v78)
  {
  }

  if (!v79)
  {
  }

  if (!v80)
  {
  }

  if (!v81)
  {
  }

  if (!v82)
  {
  }

  if (!v83)
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
  v4 = [(BMSiriRequestContext *)self bargeInModes];
  v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
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
          objc_enumerationMutation(v4);
        }

        [v3 addObject:*(*(&v11 + 1) + 8 * i)];
      }

      v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
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
  v4 = [(BMSiriRequestContext *)self deviceRestrictions];
  v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
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
          objc_enumerationMutation(v4);
        }

        [v3 addObject:*(*(&v11 + 1) + 8 * i)];
      }

      v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  v9 = *MEMORY[0x1E69E9840];

  return v3;
}

- (BMSiriRequestContext)initWithJSONDictionary:(id)a3 error:(id *)a4
{
  v409[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v340 = [v6 objectForKeyedSubscript:@"sessionID"];
  if (v340 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      if (a4)
      {
        v28 = self;
        v29 = objc_alloc(MEMORY[0x1E696ABC0]);
        v30 = *MEMORY[0x1E698F240];
        v408 = *MEMORY[0x1E696A578];
        v9 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"sessionID"];
        v409[0] = v9;
        v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v409 forKeys:&v408 count:1];
        v31 = v29;
        self = v28;
        v32 = 0;
        *a4 = [v31 initWithDomain:v30 code:2 userInfo:v8];
        v7 = 0;
        goto LABEL_263;
      }

      v7 = 0;
      v32 = 0;
      goto LABEL_264;
    }

    v7 = v340;
  }

  else
  {
    v7 = 0;
  }

  v8 = [v6 objectForKeyedSubscript:@"requestID"];
  if (v8 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      if (a4)
      {
        v33 = self;
        v34 = objc_alloc(MEMORY[0x1E696ABC0]);
        v35 = *MEMORY[0x1E698F240];
        v406 = *MEMORY[0x1E696A578];
        v36 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"requestID"];
        v407 = v36;
        v37 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v407 forKeys:&v406 count:1];
        v38 = v34;
        self = v33;
        v337 = v37;
        v39 = [v38 initWithDomain:v35 code:2 userInfo:?];
        v9 = 0;
        v32 = 0;
        *a4 = v39;
        goto LABEL_262;
      }

      v9 = 0;
      v32 = 0;
      goto LABEL_263;
    }

    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  v10 = [v6 objectForKeyedSubscript:@"inputOrigin"];
  v337 = v10;
  if (v10 && (v11 = v10, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      if (a4)
      {
        v40 = v9;
        v41 = self;
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
        self = v41;
        v9 = v40;
        v335 = v48;
        v50 = [v49 initWithDomain:v43 code:2 userInfo:?];
        v36 = 0;
        v32 = 0;
        *a4 = v50;
        goto LABEL_261;
      }

      v36 = 0;
      v32 = 0;
      goto LABEL_262;
    }

    v333 = v11;
  }

  else
  {
    v333 = 0;
  }

  v12 = [v6 objectForKeyedSubscript:@"responseMode"];
  v334 = a4;
  v335 = v12;
  if (v12 && (v13 = v12, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v324 = self;
      if (!a4)
      {
        v47 = 0;
        v32 = 0;
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
      v32 = 0;
      *v334 = v61;
      v36 = v333;
      goto LABEL_110;
    }

    v330 = v13;
  }

  else
  {
    v330 = 0;
  }

  v14 = [v6 objectForKeyedSubscript:@"isEyesFree"];
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

      v324 = self;
      if (v334)
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
        v32 = 0;
        *v334 = v69;
        v70 = v67;
        v47 = v330;
        v36 = v333;
        goto LABEL_259;
      }

      v32 = 0;
      v47 = v330;
      v36 = v333;
      v60 = v14;
      v57 = 0;
LABEL_110:
      self = v324;
      goto LABEL_260;
    }
  }

  v326 = v14;
  v328 = 0;
LABEL_16:
  v15 = [v6 objectForKeyedSubscript:@"isMultiUser"];
  v327 = v15;
  if (v15 && (v16 = v15, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      if (v334)
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
        v32 = 0;
        *v334 = v77;
        v78 = v76;
        v47 = v330;
        v36 = v333;
        v60 = v326;
        goto LABEL_258;
      }

      v329 = 0;
      v32 = 0;
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

  v17 = [v6 objectForKeyedSubscript:@"isVoiceTriggerEnabled"];
  v319 = v7;
  v320 = v9;
  v322 = v17;
  if (v17 && (v18 = v17, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v78 = v334;
      if (!v334)
      {
        v32 = 0;
        v47 = v330;
        v36 = v333;
        v60 = v326;
        goto LABEL_258;
      }

      v79 = self;
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
      self = v79;
      v88 = [v87 initWithDomain:v81 code:2 userInfo:v86];
      v318 = 0;
      v32 = 0;
      *v334 = v88;
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

  v19 = [v6 objectForKeyedSubscript:@"isTextToSpeechEnabled"];
  v20 = v334;
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

      if (v334)
      {
        v89 = self;
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
        self = v89;
        v316 = v95;
        v97 = [v96 initWithDomain:v91 code:2 userInfo:?];
        v32 = 0;
        *v334 = v97;
        v20 = 0;
        v47 = v330;
        v36 = v333;
        v60 = v326;
        goto LABEL_256;
      }

      v32 = 0;
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
  v21 = [v6 objectForKeyedSubscript:@"isTriggerlessFollowup"];
  v316 = v21;
  if (v21 && (v22 = v21, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      if (v334)
      {
        v116 = objc_alloc(MEMORY[0x1E696ABC0]);
        v117 = v8;
        v118 = *MEMORY[0x1E698F240];
        v392 = *MEMORY[0x1E696A578];
        v119 = self;
        v120 = objc_alloc(MEMORY[0x1E696AEC0]);
        v272 = objc_opt_class();
        v121 = v120;
        self = v119;
        obj = [v121 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v272, @"isTriggerlessFollowup"];
        v393 = obj;
        v122 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v393 forKeys:&v392 count:1];
        v123 = v118;
        v8 = v117;
        v339 = v122;
        v124 = [v116 initWithDomain:v123 code:2 userInfo:?];
        v317 = 0;
        v32 = 0;
        *v334 = v124;
        v47 = v330;
        v36 = v333;
        v60 = v326;
        v20 = v314;
        v19 = v315;

        goto LABEL_255;
      }

      v317 = 0;
      v32 = 0;
      v47 = v330;
      v36 = v333;
      v60 = v326;
      v20 = v314;
      v19 = v315;
      goto LABEL_256;
    }

    v23 = self;
    v24 = v8;
    v317 = v22;
  }

  else
  {
    v23 = self;
    v24 = v8;
    v317 = 0;
  }

  v25 = [v6 objectForKeyedSubscript:@"deviceRestrictions"];
  v26 = [MEMORY[0x1E695DFB0] null];
  v27 = [v25 isEqual:v26];

  if (v27)
  {
    v323 = v23;
  }

  else
  {
    self = v23;
    if (v25)
    {
      objc_opt_class();
      obj = v25;
      v8 = v24;
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!v334)
        {
          v32 = 0;
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
        v32 = 0;
        *v334 = [v138 initWithDomain:v139 code:2 userInfo:v137];
        goto LABEL_108;
      }

      v323 = v23;
      v51 = v25;
      goto LABEL_72;
    }

    v323 = v23;
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
        v108 = v334;
        if (v334)
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
        v32 = 0;
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
        v108 = v334;
        if (!v334)
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
        v32 = 0;
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

  v105 = [v6 objectForKeyedSubscript:@"bargeInModes"];
  v106 = [MEMORY[0x1E695DFB0] null];
  v107 = [v105 isEqual:v106];

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
      if (!v334)
      {
        v32 = 0;
        self = v323;
        goto LABEL_108;
      }

      v147 = objc_alloc(MEMORY[0x1E696ABC0]);
      v148 = *MEMORY[0x1E698F240];
      v383 = *MEMORY[0x1E696A578];
      v321 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Expecting %@ as an array", @"bargeInModes"];
      v384 = v321;
      v310 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v384 forKeys:&v383 count:1];
      v32 = 0;
      *v334 = [v147 initWithDomain:v148 code:2 userInfo:?];
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
        v140 = v334;
        if (v334)
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
          v32 = 0;
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
        v140 = v334;
        if (v334)
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
        v32 = 0;
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

  v132 = [v6 objectForKeyedSubscript:@"identifiedUser"];
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
      if (v334)
      {
        v172 = v172;
        *v334 = v172;
      }

      v32 = 0;
      v309 = v170;
      v310 = v170;
      goto LABEL_174;
    }

    if (v334)
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
      v32 = 0;
      *v334 = [v174 initWithDomain:v175 code:2 userInfo:?];
      self = v323;
LABEL_174:
      v36 = v333;
      v60 = v326;
LABEL_118:
      v20 = v314;
      v19 = v315;
      goto LABEL_251;
    }

    v32 = 0;
    self = v323;
    v36 = v333;
LABEL_127:
    v60 = v326;
    goto LABEL_128;
  }

  v308 = 0;
LABEL_130:
  v149 = [v6 objectForKeyedSubscript:@"encodedLocation"];
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

        v182 = v334;
        if (v334)
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
          v32 = 0;
          *v182 = [v183 initWithDomain:v184 code:2 userInfo:?];
          goto LABEL_219;
        }
      }

      else
      {
        v182 = v334;
        if (v334)
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
      v32 = 0;
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
  v151 = [v6 objectForKeyedSubscript:@"countryCode"];
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

      if (v334)
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
        v32 = 0;
        *v334 = [v188 initWithDomain:v189 code:2 userInfo:?];
        self = v323;
        v36 = v333;
        goto LABEL_223;
      }

      v307 = 0;
      v32 = 0;
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
  v153 = [v6 objectForKeyedSubscript:@"siriLocale"];
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

      if (v334)
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
        v32 = 0;
        *v334 = [v194 initWithDomain:v195 code:2 userInfo:?];
        goto LABEL_196;
      }

      v304 = 0;
      v32 = 0;
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
  v156 = [v6 objectForKeyedSubscript:@"contentRestrictions"];
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
        if (v334)
        {
          v181 = v181;
          *v334 = v181;
        }

        v32 = 0;
        v302 = v179;
        v47 = v331;
        v36 = v333;
        goto LABEL_197;
      }

      if (!v334)
      {
        v32 = 0;
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
      *v334 = [v301 initWithDomain:v199 code:2 userInfo:v203];

      v32 = 0;
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
  v158 = [v6 objectForKeyedSubscript:@"uiScale"];
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

      if (!v334)
      {
        v300 = 0;
        v32 = 0;
        v36 = v333;
        v60 = v326;
        v20 = v314;
        v19 = v315;
        goto LABEL_245;
      }

      v211 = objc_alloc(MEMORY[0x1E696ABC0]);
      v212 = self;
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
      self = v212;
      v297 = v218;
      v300 = 0;
      v32 = 0;
      *v334 = [v211 initWithDomain:v219 code:2 userInfo:?];
      v36 = v333;
      goto LABEL_272;
    }
  }

  v300 = 0;
LABEL_145:
  v160 = [v6 objectForKeyedSubscript:@"temperatureUnit"];
  v297 = v160;
  if (v160)
  {
    v161 = v160;
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v193 = self;
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v299 = v161;
        goto LABEL_148;
      }

      if (v334)
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
        v32 = 0;
        *v334 = [v220 initWithDomain:v221 code:2 userInfo:?];
        self = v193;
        v36 = v333;
        goto LABEL_274;
      }

      v299 = 0;
      v32 = 0;
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
  v162 = [v6 objectForKeyedSubscript:@"allowUserGeneratedContent"];
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

      if (v334)
      {
        v225 = objc_alloc(MEMORY[0x1E696ABC0]);
        v226 = self;
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
        self = v226;
        v293 = v232;
        v296 = 0;
        v32 = 0;
        *v334 = [v225 initWithDomain:v233 code:2 userInfo:?];
        goto LABEL_276;
      }

      v296 = 0;
      v32 = 0;
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
  v164 = [v6 objectForKeyedSubscript:@"censorSpeech"];
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

      if (v334)
      {
        v234 = objc_alloc(MEMORY[0x1E696ABC0]);
        v235 = self;
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
        self = v235;
        v292 = v241;
        v294 = 0;
        v32 = 0;
        *v334 = [v234 initWithDomain:v242 code:2 userInfo:?];
        v36 = v333;
        goto LABEL_227;
      }

      v294 = 0;
      v32 = 0;
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
  v166 = [v6 objectForKeyedSubscript:@"meCard"];
  v288 = v166;
  if (v166)
  {
    v167 = v166;
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v207 = self;
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
        if (v334)
        {
          v210 = v210;
          *v334 = v210;
        }

        v290 = v208;
        v32 = 0;
        v36 = v333;
        goto LABEL_228;
      }

      if (!v334)
      {
        v32 = 0;
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
      *v334 = [v291 initWithDomain:v243 code:2 userInfo:v244];

      v32 = 0;
      v290 = v288;
      self = v207;
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
  v168 = [v6 objectForKeyedSubscript:@"deviceIdiom"];
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
          if (!v334)
          {
            v289 = 0;
            v32 = 0;
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
          v32 = 0;
          *v334 = [v261 initWithDomain:v262 code:2 userInfo:?];
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
  v246 = [v6 objectForKeyedSubscript:@"didPSCFire"];
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
    if (v334)
    {
      v254 = objc_alloc(MEMORY[0x1E696ABC0]);
      v255 = self;
      v256 = *MEMORY[0x1E698F240];
      v352 = *MEMORY[0x1E696A578];
      v312 = v8;
      v257 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"didPSCFire"];
      v353 = v257;
      v258 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v353 forKeys:&v352 count:1];
      v259 = v254;
      v260 = v256;
      self = v255;
      v105 = v313;
      v36 = v333;
      *v334 = [v259 initWithDomain:v260 code:2 userInfo:v258];

      v8 = v312;
    }

    v285 = 0;
    v32 = 0;
    goto LABEL_281;
  }

  v248 = v253;
LABEL_237:
  v285 = v248;
  v284 = v248;
  LODWORD(v283) = [v289 intValue];
  v20 = v314;
  self = [(BMSiriRequestContext *)self initWithSessionID:v154 requestID:v320 inputOrigin:v36 responseMode:v47 isEyesFree:v328 isMultiUser:v329 isVoiceTriggerEnabled:v318 isTextToSpeechEnabled:v314 isTriggerlessFollowup:v317 deviceRestrictions:v338 bargeInModes:v321 identifiedUser:v308 encodedLocation:v309 countryCode:v307 siriLocale:v304 contentRestrictions:v325 uiScale:v300 temperatureUnit:v299 allowUserGeneratedContent:v296 censorSpeech:v294 meCard:v292 deviceIdiom:v283 didPSCFire:v284];
  v32 = self;
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
  return v32;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMSiriRequestContext *)self writeTo:v3];
  v4 = [v3 immutableData];

  return v4;
}

- (void)writeTo:(id)a3
{
  v38 = *MEMORY[0x1E69E9840];
  v4 = a3;
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
    [(BMSiriRequestContextUser *)self->_identifiedUser writeTo:v4];
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
    [(BMSiriRequestContextContentRestriction *)self->_contentRestrictions writeTo:v4];
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
    [(BMSiriRequestContextMeCard *)self->_meCard writeTo:v4];
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

- (id)initByReadFrom:(id)a3
{
  v4 = a3;
  v95.receiver = self;
  v95.super_class = BMSiriRequestContext;
  v5 = [(BMEventBase *)&v95 init];
  if (!v5)
  {
    goto LABEL_156;
  }

  v6 = objc_opt_new();
  v7 = objc_opt_new();
  v8 = [v4 position];
  if (v8 < [v4 length])
  {
    do
    {
      if ([v4 hasError])
      {
        break;
      }

      v9 = 0;
      v10 = 0;
      v11 = 0;
      while (1)
      {
        LOBYTE(v96) = 0;
        v12 = [v4 position] + 1;
        if (v12 >= [v4 position] && (v13 = objc_msgSend(v4, "position") + 1, v13 <= objc_msgSend(v4, "length")))
        {
          v14 = [v4 data];
          [v14 getBytes:&v96 range:{objc_msgSend(v4, "position"), 1}];

          [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
        }

        else
        {
          [v4 _setError];
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

      v16 = [v4 hasError] ? 0 : v11;
LABEL_16:
      if (([v4 hasError] & 1) != 0 || (v16 & 7) == 4)
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
            v26 = [v4 position] + 1;
            if (v26 >= [v4 position] && (v27 = objc_msgSend(v4, "position") + 1, v27 <= objc_msgSend(v4, "length")))
            {
              v28 = [v4 data];
              [v28 getBytes:&v96 range:{objc_msgSend(v4, "position"), 1}];

              [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
            }

            else
            {
              [v4 _setError];
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

          v29 = (v25 != 0) & ~[v4 hasError];
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
            v43 = [v4 position] + 1;
            if (v43 >= [v4 position] && (v44 = objc_msgSend(v4, "position") + 1, v44 <= objc_msgSend(v4, "length")))
            {
              v45 = [v4 data];
              [v45 getBytes:&v96 range:{objc_msgSend(v4, "position"), 1}];

              [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
            }

            else
            {
              [v4 _setError];
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

          v29 = (v42 != 0) & ~[v4 hasError];
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
            v57 = [v4 position] + 1;
            if (v57 >= [v4 position] && (v58 = objc_msgSend(v4, "position") + 1, v58 <= objc_msgSend(v4, "length")))
            {
              v59 = [v4 data];
              [v59 getBytes:&v96 range:{objc_msgSend(v4, "position"), 1}];

              [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
            }

            else
            {
              [v4 _setError];
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

          v29 = (v56 != 0) & ~[v4 hasError];
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
            v36 = [v4 position] + 1;
            if (v36 >= [v4 position] && (v37 = objc_msgSend(v4, "position") + 1, v37 <= objc_msgSend(v4, "length")))
            {
              v38 = [v4 data];
              [v38 getBytes:&v96 range:{objc_msgSend(v4, "position"), 1}];

              [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
            }

            else
            {
              [v4 _setError];
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

          v29 = (v35 != 0) & ~[v4 hasError];
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
            v70 = [v4 position] + 1;
            if (v70 >= [v4 position] && (v71 = objc_msgSend(v4, "position") + 1, v71 <= objc_msgSend(v4, "length")))
            {
              v72 = [v4 data];
              [v72 getBytes:&v96 range:{objc_msgSend(v4, "position"), 1}];

              [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
            }

            else
            {
              [v4 _setError];
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

          v29 = (v69 != 0) & ~[v4 hasError];
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

          v21 = [[BMSiriRequestContextUser alloc] initByReadFrom:v4];
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

          v21 = [[BMSiriRequestContextContentRestriction alloc] initByReadFrom:v4];
          if (!v21)
          {
            goto LABEL_158;
          }

          v22 = 128;
          goto LABEL_58;
        case 0x11u:
          v5->_hasUiScale = 1;
          v96 = 0.0;
          v19 = [v4 position] + 8;
          if (v19 >= [v4 position] && (v20 = objc_msgSend(v4, "position") + 8, v20 <= objc_msgSend(v4, "length")))
          {
            v87 = [v4 data];
            [v87 getBytes:&v96 range:{objc_msgSend(v4, "position"), 8}];

            [v4 setPosition:{objc_msgSend(v4, "position") + 8}];
          }

          else
          {
            [v4 _setError];
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
            v63 = [v4 position] + 1;
            if (v63 >= [v4 position] && (v64 = objc_msgSend(v4, "position") + 1, v64 <= objc_msgSend(v4, "length")))
            {
              v65 = [v4 data];
              [v65 getBytes:&v96 range:{objc_msgSend(v4, "position"), 1}];

              [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
            }

            else
            {
              [v4 _setError];
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

          v29 = (v62 != 0) & ~[v4 hasError];
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
            v82 = [v4 position] + 1;
            if (v82 >= [v4 position] && (v83 = objc_msgSend(v4, "position") + 1, v83 <= objc_msgSend(v4, "length")))
            {
              v84 = [v4 data];
              [v84 getBytes:&v96 range:{objc_msgSend(v4, "position"), 1}];

              [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
            }

            else
            {
              [v4 _setError];
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

          v29 = (v81 != 0) & ~[v4 hasError];
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

          v21 = [[BMSiriRequestContextMeCard alloc] initByReadFrom:v4];
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
            v49 = [v4 position] + 1;
            if (v49 >= [v4 position] && (v50 = objc_msgSend(v4, "position") + 1, v50 <= objc_msgSend(v4, "length")))
            {
              v51 = [v4 data];
              [v51 getBytes:&v96 range:{objc_msgSend(v4, "position"), 1}];

              [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
            }

            else
            {
              [v4 _setError];
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

          if (([v4 hasError] & 1) != 0 || v48 > 0xA)
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
        v76 = [v4 position] + 1;
        if (v76 >= [v4 position] && (v77 = objc_msgSend(v4, "position") + 1, v77 <= objc_msgSend(v4, "length")))
        {
          v78 = [v4 data];
          [v78 getBytes:&v96 range:{objc_msgSend(v4, "position"), 1}];

          [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
        }

        else
        {
          [v4 _setError];
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

      v29 = (v75 != 0) & ~[v4 hasError];
LABEL_146:
      v85 = 31;
LABEL_149:
      *(&v5->super.super.isa + v85) = v29;
LABEL_150:
      v86 = [v4 position];
    }

    while (v86 < [v4 length]);
  }

  v88 = [v6 copy];
  deviceRestrictions = v5->_deviceRestrictions;
  v5->_deviceRestrictions = v88;

  v90 = [v7 copy];
  bargeInModes = v5->_bargeInModes;
  v5->_bargeInModes = v90;

  v92 = [v4 hasError];
  if (v92)
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
  v29 = [(BMSiriRequestContext *)self sessionID];
  v28 = [(BMSiriRequestContext *)self requestID];
  v27 = [(BMSiriRequestContext *)self inputOrigin];
  v26 = [(BMSiriRequestContext *)self responseMode];
  v25 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMSiriRequestContext isEyesFree](self, "isEyesFree")}];
  v17 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMSiriRequestContext isMultiUser](self, "isMultiUser")}];
  v24 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMSiriRequestContext isVoiceTriggerEnabled](self, "isVoiceTriggerEnabled")}];
  v16 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMSiriRequestContext isTextToSpeechEnabled](self, "isTextToSpeechEnabled")}];
  v23 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMSiriRequestContext isTriggerlessFollowup](self, "isTriggerlessFollowup")}];
  v22 = [(BMSiriRequestContext *)self deviceRestrictions];
  v21 = [(BMSiriRequestContext *)self bargeInModes];
  v15 = [(BMSiriRequestContext *)self identifiedUser];
  v14 = [(BMSiriRequestContext *)self encodedLocation];
  v20 = [(BMSiriRequestContext *)self countryCode];
  v13 = [(BMSiriRequestContext *)self siriLocale];
  v12 = [(BMSiriRequestContext *)self contentRestrictions];
  v3 = MEMORY[0x1E696AD98];
  [(BMSiriRequestContext *)self uiScale];
  v4 = [v3 numberWithDouble:?];
  v5 = [(BMSiriRequestContext *)self temperatureUnit];
  v11 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMSiriRequestContext allowUserGeneratedContent](self, "allowUserGeneratedContent")}];
  v6 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMSiriRequestContext censorSpeech](self, "censorSpeech")}];
  v7 = [(BMSiriRequestContext *)self meCard];
  v8 = BMSiriRequestContextDeviceIdiomAsString([(BMSiriRequestContext *)self deviceIdiom]);
  v9 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMSiriRequestContext didPSCFire](self, "didPSCFire")}];
  v19 = [v18 initWithFormat:@"BMSiriRequestContext with sessionID: %@, requestID: %@, inputOrigin: %@, responseMode: %@, isEyesFree: %@, isMultiUser: %@, isVoiceTriggerEnabled: %@, isTextToSpeechEnabled: %@, isTriggerlessFollowup: %@, deviceRestrictions: %@, bargeInModes: %@, identifiedUser: %@, encodedLocation: %@, countryCode: %@, siriLocale: %@, contentRestrictions: %@, uiScale: %@, temperatureUnit: %@, allowUserGeneratedContent: %@, censorSpeech: %@, meCard: %@, deviceIdiom: %@, didPSCFire: %@", v29, v28, v27, v26, v25, v17, v24, v16, v23, v22, v21, v15, v14, v20, v13, v12, v4, v5, v11, v6, v7, v8, v9];

  return v19;
}

- (BMSiriRequestContext)initWithSessionID:(id)a3 requestID:(id)a4 inputOrigin:(id)a5 responseMode:(id)a6 isEyesFree:(id)a7 isMultiUser:(id)a8 isVoiceTriggerEnabled:(id)a9 isTextToSpeechEnabled:(id)a10 isTriggerlessFollowup:(id)a11 deviceRestrictions:(id)a12 bargeInModes:(id)a13 identifiedUser:(id)a14 encodedLocation:(id)a15 countryCode:(id)a16 siriLocale:(id)a17 contentRestrictions:(id)a18 uiScale:(id)a19 temperatureUnit:(id)a20 allowUserGeneratedContent:(id)a21 censorSpeech:(id)a22 meCard:(id)a23 deviceIdiom:(int)a24 didPSCFire:(id)a25
{
  v57 = a3;
  v42 = a4;
  v56 = a4;
  v43 = a5;
  v55 = a5;
  v44 = a6;
  v54 = a6;
  v29 = a7;
  v60 = a8;
  v30 = a9;
  v31 = a10;
  v58 = a11;
  v53 = a12;
  v52 = a13;
  v51 = a14;
  v50 = a15;
  v49 = a16;
  v48 = a17;
  v47 = a18;
  v32 = a19;
  v46 = a20;
  v33 = v29;
  v34 = a21;
  v35 = a22;
  v36 = a23;
  v37 = a25;
  v61.receiver = self;
  v61.super_class = BMSiriRequestContext;
  v38 = [(BMEventBase *)&v61 init];
  if (v38)
  {
    v38->_dataVersion = [objc_opt_class() latestDataVersion];
    objc_storeStrong(&v38->_sessionID, a3);
    objc_storeStrong(&v38->_requestID, v42);
    objc_storeStrong(&v38->_inputOrigin, v43);
    objc_storeStrong(&v38->_responseMode, v44);
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

    if (v60)
    {
      v38->_hasIsMultiUser = 1;
      v38->_isMultiUser = [v60 BOOLValue];
    }

    else
    {
      v38->_hasIsMultiUser = 0;
      v38->_isMultiUser = 0;
    }

    if (v30)
    {
      v38->_hasIsVoiceTriggerEnabled = 1;
      v38->_isVoiceTriggerEnabled = [v30 BOOLValue];
    }

    else
    {
      v38->_hasIsVoiceTriggerEnabled = 0;
      v38->_isVoiceTriggerEnabled = 0;
    }

    if (v31)
    {
      v38->_hasIsTextToSpeechEnabled = 1;
      v38->_isTextToSpeechEnabled = [v31 BOOLValue];
    }

    else
    {
      v38->_hasIsTextToSpeechEnabled = 0;
      v38->_isTextToSpeechEnabled = 0;
    }

    if (v58)
    {
      v38->_hasIsTriggerlessFollowup = 1;
      v38->_isTriggerlessFollowup = [v58 BOOLValue];
    }

    else
    {
      v38->_hasIsTriggerlessFollowup = 0;
      v38->_isTriggerlessFollowup = 0;
    }

    objc_storeStrong(&v38->_deviceRestrictions, a12);
    objc_storeStrong(&v38->_bargeInModes, a13);
    objc_storeStrong(&v38->_identifiedUser, a14);
    objc_storeStrong(&v38->_encodedLocation, a15);
    objc_storeStrong(&v38->_countryCode, a16);
    objc_storeStrong(&v38->_siriLocale, a17);
    objc_storeStrong(&v38->_contentRestrictions, a18);
    if (v32)
    {
      v38->_hasUiScale = 1;
      [v32 doubleValue];
    }

    else
    {
      v38->_hasUiScale = 0;
      v39 = -1.0;
    }

    v38->_uiScale = v39;
    objc_storeStrong(&v38->_temperatureUnit, a20);
    if (v34)
    {
      v38->_hasAllowUserGeneratedContent = 1;
      v38->_allowUserGeneratedContent = [v34 BOOLValue];
    }

    else
    {
      v38->_hasAllowUserGeneratedContent = 0;
      v38->_allowUserGeneratedContent = 0;
    }

    if (v35)
    {
      v38->_hasCensorSpeech = 1;
      v38->_censorSpeech = [v35 BOOLValue];
    }

    else
    {
      v38->_hasCensorSpeech = 0;
      v38->_censorSpeech = 0;
    }

    objc_storeStrong(&v38->_meCard, a23);
    v38->_deviceIdiom = a24;
    if (v37)
    {
      v38->_hasDidPSCFire = 1;
      v38->_didPSCFire = [v37 BOOLValue];
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

+ (id)eventWithData:(id)a3 dataVersion:(unsigned int)a4
{
  if (a4)
  {
    v4 = 0;
  }

  else
  {
    v5 = MEMORY[0x1E69C65B8];
    v6 = a3;
    v7 = [[v5 alloc] initWithData:v6];

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