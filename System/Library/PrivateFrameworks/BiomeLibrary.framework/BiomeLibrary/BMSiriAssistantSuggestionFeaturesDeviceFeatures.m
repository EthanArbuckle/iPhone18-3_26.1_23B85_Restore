@interface BMSiriAssistantSuggestionFeaturesDeviceFeatures
+ (id)columns;
+ (id)eventWithData:(id)a3 dataVersion:(unsigned int)a4;
+ (id)protoFields;
- (BMSiriAssistantSuggestionFeaturesDeviceFeatures)initWithConnectedToAirpods:(id)a3 noiseCancellingMode:(id)a4 connectedToDevice:(id)a5 isInCarPlay:(id)a6 hasWatch:(id)a7 hasIPad:(id)a8 hasHomePod:(id)a9 hasAppleTV:(id)a10 hasIPhone:(id)a11 totalNumDevices:(id)a12 currentDeviceType:(id)a13 currentBuildVersion:(id)a14 distanceFromLatestBuild:(id)a15 isALargeFormatPhone:(id)a16 hasAPasscode:(id)a17 supportsSMSMEssaging:(id)a18;
- (BMSiriAssistantSuggestionFeaturesDeviceFeatures)initWithJSONDictionary:(id)a3 error:(id *)a4;
- (BOOL)isEqual:(id)a3;
- (NSString)description;
- (id)initByReadFrom:(id)a3;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)a3;
@end

@implementation BMSiriAssistantSuggestionFeaturesDeviceFeatures

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    if (-[BMSiriAssistantSuggestionFeaturesDeviceFeatures hasConnectedToAirpods](self, "hasConnectedToAirpods") || [v5 hasConnectedToAirpods])
    {
      if (![(BMSiriAssistantSuggestionFeaturesDeviceFeatures *)self hasConnectedToAirpods])
      {
        goto LABEL_78;
      }

      if (![v5 hasConnectedToAirpods])
      {
        goto LABEL_78;
      }

      v6 = [(BMSiriAssistantSuggestionFeaturesDeviceFeatures *)self connectedToAirpods];
      if (v6 != [v5 connectedToAirpods])
      {
        goto LABEL_78;
      }
    }

    v7 = [(BMSiriAssistantSuggestionFeaturesDeviceFeatures *)self noiseCancellingMode];
    v8 = [v5 noiseCancellingMode];
    v9 = v8;
    if (v7 == v8)
    {
    }

    else
    {
      v10 = [(BMSiriAssistantSuggestionFeaturesDeviceFeatures *)self noiseCancellingMode];
      v11 = [v5 noiseCancellingMode];
      v12 = [v10 isEqual:v11];

      if (!v12)
      {
        goto LABEL_78;
      }
    }

    v14 = [(BMSiriAssistantSuggestionFeaturesDeviceFeatures *)self connectedToDevice];
    v15 = [v5 connectedToDevice];
    v16 = v15;
    if (v14 == v15)
    {
    }

    else
    {
      v17 = [(BMSiriAssistantSuggestionFeaturesDeviceFeatures *)self connectedToDevice];
      v18 = [v5 connectedToDevice];
      v19 = [v17 isEqual:v18];

      if (!v19)
      {
        goto LABEL_78;
      }
    }

    if (-[BMSiriAssistantSuggestionFeaturesDeviceFeatures hasIsInCarPlay](self, "hasIsInCarPlay") || [v5 hasIsInCarPlay])
    {
      if (![(BMSiriAssistantSuggestionFeaturesDeviceFeatures *)self hasIsInCarPlay])
      {
        goto LABEL_78;
      }

      if (![v5 hasIsInCarPlay])
      {
        goto LABEL_78;
      }

      v20 = [(BMSiriAssistantSuggestionFeaturesDeviceFeatures *)self isInCarPlay];
      if (v20 != [v5 isInCarPlay])
      {
        goto LABEL_78;
      }
    }

    if (-[BMSiriAssistantSuggestionFeaturesDeviceFeatures hasHasWatch](self, "hasHasWatch") || [v5 hasHasWatch])
    {
      if (![(BMSiriAssistantSuggestionFeaturesDeviceFeatures *)self hasHasWatch])
      {
        goto LABEL_78;
      }

      if (![v5 hasHasWatch])
      {
        goto LABEL_78;
      }

      v21 = [(BMSiriAssistantSuggestionFeaturesDeviceFeatures *)self hasWatch];
      if (v21 != [v5 hasWatch])
      {
        goto LABEL_78;
      }
    }

    if (-[BMSiriAssistantSuggestionFeaturesDeviceFeatures hasHasIPad](self, "hasHasIPad") || [v5 hasHasIPad])
    {
      if (![(BMSiriAssistantSuggestionFeaturesDeviceFeatures *)self hasHasIPad])
      {
        goto LABEL_78;
      }

      if (![v5 hasHasIPad])
      {
        goto LABEL_78;
      }

      v22 = [(BMSiriAssistantSuggestionFeaturesDeviceFeatures *)self hasIPad];
      if (v22 != [v5 hasIPad])
      {
        goto LABEL_78;
      }
    }

    if (-[BMSiriAssistantSuggestionFeaturesDeviceFeatures hasHasHomePod](self, "hasHasHomePod") || [v5 hasHasHomePod])
    {
      if (![(BMSiriAssistantSuggestionFeaturesDeviceFeatures *)self hasHasHomePod])
      {
        goto LABEL_78;
      }

      if (![v5 hasHasHomePod])
      {
        goto LABEL_78;
      }

      v23 = [(BMSiriAssistantSuggestionFeaturesDeviceFeatures *)self hasHomePod];
      if (v23 != [v5 hasHomePod])
      {
        goto LABEL_78;
      }
    }

    if (-[BMSiriAssistantSuggestionFeaturesDeviceFeatures hasHasAppleTV](self, "hasHasAppleTV") || [v5 hasHasAppleTV])
    {
      if (![(BMSiriAssistantSuggestionFeaturesDeviceFeatures *)self hasHasAppleTV])
      {
        goto LABEL_78;
      }

      if (![v5 hasHasAppleTV])
      {
        goto LABEL_78;
      }

      v24 = [(BMSiriAssistantSuggestionFeaturesDeviceFeatures *)self hasAppleTV];
      if (v24 != [v5 hasAppleTV])
      {
        goto LABEL_78;
      }
    }

    if (-[BMSiriAssistantSuggestionFeaturesDeviceFeatures hasHasIPhone](self, "hasHasIPhone") || [v5 hasHasIPhone])
    {
      if (![(BMSiriAssistantSuggestionFeaturesDeviceFeatures *)self hasHasIPhone])
      {
        goto LABEL_78;
      }

      if (![v5 hasHasIPhone])
      {
        goto LABEL_78;
      }

      v25 = [(BMSiriAssistantSuggestionFeaturesDeviceFeatures *)self hasIPhone];
      if (v25 != [v5 hasIPhone])
      {
        goto LABEL_78;
      }
    }

    if (-[BMSiriAssistantSuggestionFeaturesDeviceFeatures hasTotalNumDevices](self, "hasTotalNumDevices") || [v5 hasTotalNumDevices])
    {
      if (![(BMSiriAssistantSuggestionFeaturesDeviceFeatures *)self hasTotalNumDevices])
      {
        goto LABEL_78;
      }

      if (![v5 hasTotalNumDevices])
      {
        goto LABEL_78;
      }

      v26 = [(BMSiriAssistantSuggestionFeaturesDeviceFeatures *)self totalNumDevices];
      if (v26 != [v5 totalNumDevices])
      {
        goto LABEL_78;
      }
    }

    v27 = [(BMSiriAssistantSuggestionFeaturesDeviceFeatures *)self currentDeviceType];
    v28 = [v5 currentDeviceType];
    v29 = v28;
    if (v27 == v28)
    {
    }

    else
    {
      v30 = [(BMSiriAssistantSuggestionFeaturesDeviceFeatures *)self currentDeviceType];
      v31 = [v5 currentDeviceType];
      v32 = [v30 isEqual:v31];

      if (!v32)
      {
        goto LABEL_78;
      }
    }

    v33 = [(BMSiriAssistantSuggestionFeaturesDeviceFeatures *)self currentBuildVersion];
    v34 = [v5 currentBuildVersion];
    v35 = v34;
    if (v33 == v34)
    {
    }

    else
    {
      v36 = [(BMSiriAssistantSuggestionFeaturesDeviceFeatures *)self currentBuildVersion];
      v37 = [v5 currentBuildVersion];
      v38 = [v36 isEqual:v37];

      if (!v38)
      {
        goto LABEL_78;
      }
    }

    v39 = [(BMSiriAssistantSuggestionFeaturesDeviceFeatures *)self distanceFromLatestBuild];
    v40 = [v5 distanceFromLatestBuild];
    v41 = v40;
    if (v39 == v40)
    {
    }

    else
    {
      v42 = [(BMSiriAssistantSuggestionFeaturesDeviceFeatures *)self distanceFromLatestBuild];
      v43 = [v5 distanceFromLatestBuild];
      v44 = [v42 isEqual:v43];

      if (!v44)
      {
        goto LABEL_78;
      }
    }

    if (!-[BMSiriAssistantSuggestionFeaturesDeviceFeatures hasIsALargeFormatPhone](self, "hasIsALargeFormatPhone") && ![v5 hasIsALargeFormatPhone] || -[BMSiriAssistantSuggestionFeaturesDeviceFeatures hasIsALargeFormatPhone](self, "hasIsALargeFormatPhone") && objc_msgSend(v5, "hasIsALargeFormatPhone") && (v45 = -[BMSiriAssistantSuggestionFeaturesDeviceFeatures isALargeFormatPhone](self, "isALargeFormatPhone"), v45 == objc_msgSend(v5, "isALargeFormatPhone")))
    {
      if (!-[BMSiriAssistantSuggestionFeaturesDeviceFeatures hasHasAPasscode](self, "hasHasAPasscode") && ![v5 hasHasAPasscode] || -[BMSiriAssistantSuggestionFeaturesDeviceFeatures hasHasAPasscode](self, "hasHasAPasscode") && objc_msgSend(v5, "hasHasAPasscode") && (v46 = -[BMSiriAssistantSuggestionFeaturesDeviceFeatures hasAPasscode](self, "hasAPasscode"), v46 == objc_msgSend(v5, "hasAPasscode")))
      {
        if (!-[BMSiriAssistantSuggestionFeaturesDeviceFeatures hasSupportsSMSMEssaging](self, "hasSupportsSMSMEssaging") && ![v5 hasSupportsSMSMEssaging])
        {
          LOBYTE(v13) = 1;
          goto LABEL_79;
        }

        if (-[BMSiriAssistantSuggestionFeaturesDeviceFeatures hasSupportsSMSMEssaging](self, "hasSupportsSMSMEssaging") && [v5 hasSupportsSMSMEssaging])
        {
          v47 = [(BMSiriAssistantSuggestionFeaturesDeviceFeatures *)self supportsSMSMEssaging];
          v13 = v47 ^ [v5 supportsSMSMEssaging] ^ 1;
LABEL_79:

          goto LABEL_80;
        }
      }
    }

LABEL_78:
    LOBYTE(v13) = 0;
    goto LABEL_79;
  }

  LOBYTE(v13) = 0;
LABEL_80:

  return v13;
}

- (id)jsonDictionary
{
  v57[16] = *MEMORY[0x1E69E9840];
  if ([(BMSiriAssistantSuggestionFeaturesDeviceFeatures *)self hasConnectedToAirpods])
  {
    v3 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMSiriAssistantSuggestionFeaturesDeviceFeatures connectedToAirpods](self, "connectedToAirpods")}];
  }

  else
  {
    v3 = 0;
  }

  v4 = [(BMSiriAssistantSuggestionFeaturesDeviceFeatures *)self noiseCancellingMode];
  v5 = [(BMSiriAssistantSuggestionFeaturesDeviceFeatures *)self connectedToDevice];
  if ([(BMSiriAssistantSuggestionFeaturesDeviceFeatures *)self hasIsInCarPlay])
  {
    v6 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMSiriAssistantSuggestionFeaturesDeviceFeatures isInCarPlay](self, "isInCarPlay")}];
  }

  else
  {
    v6 = 0;
  }

  if ([(BMSiriAssistantSuggestionFeaturesDeviceFeatures *)self hasHasWatch])
  {
    v7 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMSiriAssistantSuggestionFeaturesDeviceFeatures hasWatch](self, "hasWatch")}];
  }

  else
  {
    v7 = 0;
  }

  if ([(BMSiriAssistantSuggestionFeaturesDeviceFeatures *)self hasHasIPad])
  {
    v8 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMSiriAssistantSuggestionFeaturesDeviceFeatures hasIPad](self, "hasIPad")}];
  }

  else
  {
    v8 = 0;
  }

  if ([(BMSiriAssistantSuggestionFeaturesDeviceFeatures *)self hasHasHomePod])
  {
    v9 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMSiriAssistantSuggestionFeaturesDeviceFeatures hasHomePod](self, "hasHomePod")}];
  }

  else
  {
    v9 = 0;
  }

  if ([(BMSiriAssistantSuggestionFeaturesDeviceFeatures *)self hasHasAppleTV])
  {
    v55 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMSiriAssistantSuggestionFeaturesDeviceFeatures hasAppleTV](self, "hasAppleTV")}];
  }

  else
  {
    v55 = 0;
  }

  if ([(BMSiriAssistantSuggestionFeaturesDeviceFeatures *)self hasHasIPhone])
  {
    v54 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMSiriAssistantSuggestionFeaturesDeviceFeatures hasIPhone](self, "hasIPhone")}];
  }

  else
  {
    v54 = 0;
  }

  if ([(BMSiriAssistantSuggestionFeaturesDeviceFeatures *)self hasTotalNumDevices])
  {
    v53 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMSiriAssistantSuggestionFeaturesDeviceFeatures totalNumDevices](self, "totalNumDevices")}];
  }

  else
  {
    v53 = 0;
  }

  v52 = [(BMSiriAssistantSuggestionFeaturesDeviceFeatures *)self currentDeviceType];
  v51 = [(BMSiriAssistantSuggestionFeaturesDeviceFeatures *)self currentBuildVersion];
  v50 = [(BMSiriAssistantSuggestionFeaturesDeviceFeatures *)self distanceFromLatestBuild];
  if ([(BMSiriAssistantSuggestionFeaturesDeviceFeatures *)self hasIsALargeFormatPhone])
  {
    v49 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMSiriAssistantSuggestionFeaturesDeviceFeatures isALargeFormatPhone](self, "isALargeFormatPhone")}];
  }

  else
  {
    v49 = 0;
  }

  if ([(BMSiriAssistantSuggestionFeaturesDeviceFeatures *)self hasHasAPasscode])
  {
    v48 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMSiriAssistantSuggestionFeaturesDeviceFeatures hasAPasscode](self, "hasAPasscode")}];
  }

  else
  {
    v48 = 0;
  }

  if ([(BMSiriAssistantSuggestionFeaturesDeviceFeatures *)self hasSupportsSMSMEssaging])
  {
    v10 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMSiriAssistantSuggestionFeaturesDeviceFeatures supportsSMSMEssaging](self, "supportsSMSMEssaging")}];
  }

  else
  {
    v10 = 0;
  }

  v56[0] = @"connectedToAirpods";
  v11 = v3;
  if (!v3)
  {
    v11 = [MEMORY[0x1E695DFB0] null];
  }

  v42 = v11;
  v57[0] = v11;
  v56[1] = @"noiseCancellingMode";
  v12 = v4;
  if (!v4)
  {
    v12 = [MEMORY[0x1E695DFB0] null];
  }

  v41 = v12;
  v57[1] = v12;
  v56[2] = @"connectedToDevice";
  v13 = v5;
  if (!v5)
  {
    v13 = [MEMORY[0x1E695DFB0] null];
  }

  v40 = v13;
  v57[2] = v13;
  v56[3] = @"isInCarPlay";
  v14 = v6;
  if (!v6)
  {
    v14 = [MEMORY[0x1E695DFB0] null];
  }

  v39 = v14;
  v57[3] = v14;
  v56[4] = @"hasWatch";
  v15 = v7;
  if (!v7)
  {
    v15 = [MEMORY[0x1E695DFB0] null];
  }

  v38 = v15;
  v57[4] = v15;
  v56[5] = @"hasIPad";
  v16 = v8;
  if (!v8)
  {
    v16 = [MEMORY[0x1E695DFB0] null];
  }

  v37 = v16;
  v57[5] = v16;
  v56[6] = @"hasHomePod";
  v17 = v9;
  if (!v9)
  {
    v17 = [MEMORY[0x1E695DFB0] null];
  }

  v36 = v17;
  v57[6] = v17;
  v56[7] = @"hasAppleTV";
  v18 = v55;
  if (!v55)
  {
    v18 = [MEMORY[0x1E695DFB0] null];
  }

  v44 = v9;
  v57[7] = v18;
  v56[8] = @"hasIPhone";
  v19 = v54;
  if (!v54)
  {
    v19 = [MEMORY[0x1E695DFB0] null];
  }

  v46 = v6;
  v57[8] = v19;
  v56[9] = @"totalNumDevices";
  v20 = v53;
  if (!v53)
  {
    v20 = [MEMORY[0x1E695DFB0] null];
  }

  v47 = v3;
  v32 = v20;
  v57[9] = v20;
  v56[10] = @"currentDeviceType";
  v21 = v52;
  if (!v52)
  {
    v21 = [MEMORY[0x1E695DFB0] null];
  }

  v34 = v19;
  v35 = v18;
  v45 = v7;
  v57[10] = v21;
  v56[11] = @"currentBuildVersion";
  v22 = v51;
  if (!v51)
  {
    v22 = [MEMORY[0x1E695DFB0] null];
  }

  v23 = v8;
  v24 = v4;
  v57[11] = v22;
  v56[12] = @"distanceFromLatestBuild";
  v25 = v50;
  if (!v50)
  {
    v25 = [MEMORY[0x1E695DFB0] null];
  }

  v26 = v5;
  v57[12] = v25;
  v56[13] = @"isALargeFormatPhone";
  v27 = v49;
  if (!v49)
  {
    v27 = [MEMORY[0x1E695DFB0] null];
  }

  v57[13] = v27;
  v56[14] = @"hasAPasscode";
  v28 = v48;
  if (!v48)
  {
    v28 = [MEMORY[0x1E695DFB0] null];
  }

  v57[14] = v28;
  v56[15] = @"supportsSMSMEssaging";
  v29 = v10;
  if (!v10)
  {
    v29 = [MEMORY[0x1E695DFB0] null];
  }

  v57[15] = v29;
  v43 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v57 forKeys:v56 count:{16, v32}];
  if (!v10)
  {
  }

  if (!v48)
  {
  }

  if (!v49)
  {
  }

  if (!v50)
  {
  }

  if (!v51)
  {
  }

  if (!v52)
  {
  }

  if (!v53)
  {
  }

  if (!v54)
  {
  }

  if (v55)
  {
    if (v44)
    {
      goto LABEL_84;
    }
  }

  else
  {

    if (v44)
    {
LABEL_84:
      if (v23)
      {
        goto LABEL_85;
      }

      goto LABEL_95;
    }
  }

  if (v23)
  {
LABEL_85:
    if (v45)
    {
      goto LABEL_86;
    }

    goto LABEL_96;
  }

LABEL_95:

  if (v45)
  {
LABEL_86:
    if (v46)
    {
      goto LABEL_87;
    }

    goto LABEL_97;
  }

LABEL_96:

  if (v46)
  {
LABEL_87:
    if (v26)
    {
      goto LABEL_88;
    }

    goto LABEL_98;
  }

LABEL_97:

  if (v26)
  {
LABEL_88:
    if (v24)
    {
      goto LABEL_89;
    }

LABEL_99:

    if (v47)
    {
      goto LABEL_90;
    }

    goto LABEL_100;
  }

LABEL_98:

  if (!v24)
  {
    goto LABEL_99;
  }

LABEL_89:
  if (v47)
  {
    goto LABEL_90;
  }

LABEL_100:

LABEL_90:
  v30 = *MEMORY[0x1E69E9840];

  return v43;
}

- (BMSiriAssistantSuggestionFeaturesDeviceFeatures)initWithJSONDictionary:(id)a3 error:(id *)a4
{
  v200[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v168 = [v6 objectForKeyedSubscript:@"connectedToAirpods"];
  if (!v168 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v7 = 0;
LABEL_4:
    v8 = [v6 objectForKeyedSubscript:@"noiseCancellingMode"];
    if (v8 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!a4)
        {
          v166 = 0;
          v37 = 0;
          goto LABEL_67;
        }

        v47 = v7;
        v48 = objc_alloc(MEMORY[0x1E696ABC0]);
        v49 = *MEMORY[0x1E698F240];
        v197 = *MEMORY[0x1E696A578];
        v40 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"noiseCancellingMode"];
        v198 = v40;
        v50 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v198 forKeys:&v197 count:1];
        v51 = v48;
        v7 = v47;
        v167 = v50;
        v52 = [v51 initWithDomain:v49 code:2 userInfo:?];
        v166 = 0;
        v37 = 0;
        *a4 = v52;
        goto LABEL_66;
      }

      v166 = v8;
    }

    else
    {
      v166 = 0;
    }

    v167 = [v6 objectForKeyedSubscript:@"connectedToDevice"];
    if (v167 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      v43 = a4;
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!a4)
        {
          v40 = 0;
          v37 = 0;
          goto LABEL_66;
        }

        v156 = v8;
        v53 = v7;
        v54 = objc_alloc(MEMORY[0x1E696ABC0]);
        v55 = *MEMORY[0x1E698F240];
        v195 = *MEMORY[0x1E696A578];
        v56 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"connectedToDevice"];
        v196 = v56;
        v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v196 forKeys:&v195 count:1];
        v57 = v54;
        v7 = v53;
        v8 = v156;
        v58 = [v57 initWithDomain:v55 code:2 userInfo:v9];
        v40 = 0;
        v37 = 0;
        *v43 = v58;
        v11 = v56;
LABEL_65:

LABEL_66:
        goto LABEL_67;
      }

      v165 = v167;
    }

    else
    {
      v165 = 0;
    }

    v9 = [v6 objectForKeyedSubscript:@"isInCarPlay"];
    if (v9 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!a4)
        {
          v11 = 0;
          v37 = 0;
          v40 = v165;
          goto LABEL_65;
        }

        v59 = v7;
        v60 = objc_alloc(MEMORY[0x1E696ABC0]);
        v61 = *MEMORY[0x1E698F240];
        v193 = *MEMORY[0x1E696A578];
        v147 = a4;
        v164 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"isInCarPlay"];
        v194 = v164;
        v38 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v194 forKeys:&v193 count:1];
        v62 = v60;
        v7 = v59;
        v63 = [v62 initWithDomain:v61 code:2 userInfo:v38];
        v11 = 0;
        v37 = 0;
        *v147 = v63;
        v40 = v165;
        goto LABEL_64;
      }

      v10 = self;
      v11 = v9;
    }

    else
    {
      v10 = self;
      v11 = 0;
    }

    v12 = [v6 objectForKeyedSubscript:@"hasWatch"];
    if (v12 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!a4)
        {
          v164 = 0;
          v37 = 0;
          v40 = v165;
          v38 = v12;
          self = v10;
          goto LABEL_64;
        }

        v157 = v8;
        v64 = v11;
        v65 = v7;
        v66 = objc_alloc(MEMORY[0x1E696ABC0]);
        v67 = *MEMORY[0x1E698F240];
        v191 = *MEMORY[0x1E696A578];
        v148 = a4;
        v68 = objc_alloc(MEMORY[0x1E696AEC0]);
        v133 = objc_opt_class();
        v69 = v68;
        v38 = v12;
        self = v10;
        v163 = [v69 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v133, @"hasWatch"];
        v192 = v163;
        v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v192 forKeys:&v191 count:1];
        v70 = v66;
        v7 = v65;
        v11 = v64;
        v8 = v157;
        v71 = [v70 initWithDomain:v67 code:2 userInfo:v13];
        v164 = 0;
        v37 = 0;
        *v148 = v71;
        v40 = v165;
LABEL_63:

LABEL_64:
        goto LABEL_65;
      }

      v160 = v12;
      v164 = v12;
    }

    else
    {
      v160 = v12;
      v164 = 0;
    }

    [v6 objectForKeyedSubscript:@"hasIPad"];
    v13 = self = v10;
    v161 = v11;
    if (v13 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!a4)
        {
          v163 = 0;
          v37 = 0;
          v40 = v165;
          v38 = v160;
          goto LABEL_63;
        }

        v158 = v8;
        v72 = v11;
        v73 = v7;
        v74 = objc_alloc(MEMORY[0x1E696ABC0]);
        v75 = *MEMORY[0x1E698F240];
        v189 = *MEMORY[0x1E696A578];
        v162 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"hasIPad"];
        v190 = v162;
        v76 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v190 forKeys:&v189 count:1];
        v77 = v74;
        v7 = v73;
        v11 = v72;
        v8 = v158;
        v159 = v76;
        v78 = [v77 initWithDomain:v75 code:2 userInfo:?];
        v163 = 0;
        v37 = 0;
        *a4 = v78;
        v40 = v165;
        v38 = v160;
        goto LABEL_62;
      }

      v14 = v7;
      v163 = v13;
    }

    else
    {
      v14 = v7;
      v163 = 0;
    }

    v15 = [v6 objectForKeyedSubscript:@"hasHomePod"];
    v159 = v15;
    if (v15 && (v16 = v15, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!a4)
        {
          v162 = 0;
          v37 = 0;
          v40 = v165;
          v38 = v160;
          v7 = v14;
          goto LABEL_61;
        }

        v81 = objc_alloc(MEMORY[0x1E696ABC0]);
        v82 = *MEMORY[0x1E698F240];
        v187 = *MEMORY[0x1E696A578];
        v154 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"hasHomePod"];
        v188 = v154;
        v83 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v188 forKeys:&v187 count:1];
        v84 = v81;
        v7 = v14;
        v17 = v83;
        v85 = [v84 initWithDomain:v82 code:2 userInfo:v83];
        v162 = 0;
        v37 = 0;
        *a4 = v85;
        goto LABEL_135;
      }

      v162 = v16;
    }

    else
    {
      v162 = 0;
    }

    [v6 objectForKeyedSubscript:@"hasAppleTV"];
    v17 = v7 = v14;
    if (!v17 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v146 = v13;
      v18 = self;
      v154 = 0;
LABEL_25:
      v19 = [v6 objectForKeyedSubscript:@"hasIPhone"];
      v149 = v17;
      v152 = v19;
      if (v19 && (v20 = v19, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          if (!a4)
          {
            v153 = 0;
            v37 = 0;
            v40 = v165;
            v38 = v160;
            self = v18;
            goto LABEL_58;
          }

          v91 = v7;
          v92 = objc_alloc(MEMORY[0x1E696ABC0]);
          v93 = *MEMORY[0x1E698F240];
          v183 = *MEMORY[0x1E696A578];
          self = v18;
          v150 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"hasIPhone"];
          v184 = v150;
          v21 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v184 forKeys:&v183 count:1];
          v94 = v92;
          v7 = v91;
          v17 = v149;
          v95 = [v94 initWithDomain:v93 code:2 userInfo:v21];
          v153 = 0;
          v37 = 0;
          *a4 = v95;
          goto LABEL_142;
        }

        v153 = v20;
      }

      else
      {
        v153 = 0;
      }

      [v6 objectForKeyedSubscript:@"totalNumDevices"];
      v21 = self = v18;
      v145 = v21;
      if (!v21 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
      {
        v150 = 0;
LABEL_31:
        v22 = [v6 objectForKeyedSubscript:@"currentDeviceType"];
        v143 = v22;
        if (v22 && (v23 = v22, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
        {
          v79 = v9;
          v80 = self;
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            if (!a4)
            {
              v144 = 0;
              v37 = 0;
              v40 = v165;
              v38 = v160;
              v17 = v149;
              v21 = v145;
              goto LABEL_56;
            }

            v102 = v7;
            v103 = objc_alloc(MEMORY[0x1E696ABC0]);
            v104 = *MEMORY[0x1E698F240];
            v179 = *MEMORY[0x1E696A578];
            v142 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"currentDeviceType"];
            v180 = v142;
            v105 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v180 forKeys:&v179 count:1];
            v106 = v103;
            v7 = v102;
            v141 = v105;
            v107 = [v106 initWithDomain:v104 code:2 userInfo:?];
            v144 = 0;
            v37 = 0;
            *a4 = v107;
            goto LABEL_148;
          }

          v144 = v23;
          v17 = v149;
          v21 = v145;
        }

        else
        {
          v144 = 0;
        }

        v24 = [v6 objectForKeyedSubscript:@"currentBuildVersion"];
        v141 = v24;
        if (!v24 || (v25 = v24, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
        {
          v142 = 0;
          goto LABEL_37;
        }

        v79 = v9;
        v80 = self;
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v142 = v25;
          v17 = v149;
          v21 = v145;
LABEL_37:
          v26 = [v6 objectForKeyedSubscript:@"distanceFromLatestBuild"];
          v138 = v26;
          if (!v26 || (v27 = v26, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
          {
            v140 = 0;
LABEL_40:
            v28 = [v6 objectForKeyedSubscript:@"isALargeFormatPhone"];
            v137 = v28;
            if (v28 && (v29 = v28, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
            {
              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) == 0)
              {
                if (!a4)
                {
                  v139 = 0;
                  v37 = 0;
                  v40 = v165;
                  v38 = v160;
                  goto LABEL_53;
                }

                v120 = v7;
                v121 = objc_alloc(MEMORY[0x1E696ABC0]);
                v122 = *MEMORY[0x1E698F240];
                v173 = *MEMORY[0x1E696A578];
                v21 = v145;
                v136 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"isALargeFormatPhone"];
                v174 = v136;
                v39 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v174 forKeys:&v173 count:1];
                v123 = v121;
                v7 = v120;
                v17 = v149;
                v124 = [v123 initWithDomain:v122 code:2 userInfo:v39];
                v139 = 0;
                v37 = 0;
                *a4 = v124;
                v38 = v160;
                goto LABEL_52;
              }

              v139 = v29;
            }

            else
            {
              v139 = 0;
            }

            v30 = [v6 objectForKeyedSubscript:@"hasAPasscode"];
            v135 = v9;
            v155 = v30;
            if (v30 && (v31 = v30, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
            {
              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) == 0)
              {
                if (!a4)
                {
                  v136 = 0;
                  v37 = 0;
                  v38 = v160;
                  goto LABEL_51;
                }

                v33 = v7;
                v125 = objc_alloc(MEMORY[0x1E696ABC0]);
                v126 = a4;
                v127 = *MEMORY[0x1E698F240];
                v171 = *MEMORY[0x1E696A578];
                v36 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"hasAPasscode"];
                v172 = v36;
                v35 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v172 forKeys:&v171 count:1];
                v128 = [v125 initWithDomain:v127 code:2 userInfo:v35];
                v136 = 0;
                v37 = 0;
                *v126 = v128;
                goto LABEL_50;
              }

              v32 = v161;
              v33 = v7;
              v34 = v31;
            }

            else
            {
              v32 = v161;
              v33 = v7;
              v34 = 0;
            }

            v35 = [v6 objectForKeyedSubscript:@"supportsSMSMEssaging"];
            v136 = v34;
            if (v35 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
            {
              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) == 0)
              {
                if (a4)
                {
                  v134 = objc_alloc(MEMORY[0x1E696ABC0]);
                  v129 = a4;
                  v130 = *MEMORY[0x1E698F240];
                  v169 = *MEMORY[0x1E696A578];
                  v131 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"supportsSMSMEssaging"];
                  v170 = v131;
                  v132 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v170 forKeys:&v169 count:1];
                  *v129 = [v134 initWithDomain:v130 code:2 userInfo:v132];
                }

                v36 = 0;
                v37 = 0;
                goto LABEL_50;
              }

              v36 = v35;
            }

            else
            {
              v36 = 0;
            }

            self = [(BMSiriAssistantSuggestionFeaturesDeviceFeatures *)self initWithConnectedToAirpods:v33 noiseCancellingMode:v166 connectedToDevice:v165 isInCarPlay:v32 hasWatch:v164 hasIPad:v163 hasHomePod:v162 hasAppleTV:v154 hasIPhone:v153 totalNumDevices:v150 currentDeviceType:v144 currentBuildVersion:v142 distanceFromLatestBuild:v140 isALargeFormatPhone:v139 hasAPasscode:v34 supportsSMSMEssaging:v36];
            v37 = self;
LABEL_50:
            v38 = v160;

            v7 = v33;
            v9 = v135;
            v17 = v149;
            v21 = v145;
LABEL_51:
            v39 = v155;
LABEL_52:

            v40 = v165;
LABEL_53:

LABEL_54:
LABEL_55:

LABEL_56:
LABEL_57:

LABEL_58:
            v13 = v146;
LABEL_59:

LABEL_60:
LABEL_61:
            v11 = v161;
LABEL_62:

            goto LABEL_63;
          }

          v79 = v9;
          v80 = self;
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v140 = v27;
            v17 = v149;
            v21 = v145;
            goto LABEL_40;
          }

          if (a4)
          {
            v114 = v7;
            v115 = objc_alloc(MEMORY[0x1E696ABC0]);
            v116 = *MEMORY[0x1E698F240];
            v175 = *MEMORY[0x1E696A578];
            v139 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"distanceFromLatestBuild"];
            v176 = v139;
            v117 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v176 forKeys:&v175 count:1];
            v118 = v115;
            v7 = v114;
            v137 = v117;
            v119 = [v118 initWithDomain:v116 code:2 userInfo:?];
            v140 = 0;
            v37 = 0;
            *a4 = v119;
            v40 = v165;
            v9 = v79;
            v38 = v160;
            v17 = v149;
            v21 = v145;
            goto LABEL_53;
          }

          v140 = 0;
          v37 = 0;
LABEL_150:
          self = v80;
          v40 = v165;
          v9 = v79;
          v38 = v160;
          v17 = v149;
          v21 = v145;
          goto LABEL_54;
        }

        if (a4)
        {
          v108 = v7;
          v109 = objc_alloc(MEMORY[0x1E696ABC0]);
          v110 = *MEMORY[0x1E698F240];
          v177 = *MEMORY[0x1E696A578];
          v140 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"currentBuildVersion"];
          v178 = v140;
          v111 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v178 forKeys:&v177 count:1];
          v112 = v109;
          v7 = v108;
          v138 = v111;
          v113 = [v112 initWithDomain:v110 code:2 userInfo:?];
          v142 = 0;
          v37 = 0;
          *a4 = v113;
          goto LABEL_150;
        }

        v142 = 0;
        v37 = 0;
LABEL_148:
        self = v80;
        v40 = v165;
        v9 = v79;
        v38 = v160;
        v17 = v149;
        v21 = v145;
        goto LABEL_55;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v150 = v21;
        goto LABEL_31;
      }

      if (a4)
      {
        v96 = v7;
        v97 = objc_alloc(MEMORY[0x1E696ABC0]);
        v98 = *MEMORY[0x1E698F240];
        v181 = *MEMORY[0x1E696A578];
        v144 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"totalNumDevices"];
        v182 = v144;
        v99 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v182 forKeys:&v181 count:1];
        v100 = v97;
        v7 = v96;
        v17 = v149;
        v143 = v99;
        v101 = [v100 initWithDomain:v98 code:2 userInfo:?];
        v150 = 0;
        v37 = 0;
        *a4 = v101;
        v40 = v165;
        v38 = v160;
        goto LABEL_56;
      }

      v150 = 0;
      v37 = 0;
LABEL_142:
      v40 = v165;
      v38 = v160;
      goto LABEL_57;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v146 = v13;
      v18 = self;
      v154 = v17;
      goto LABEL_25;
    }

    if (a4)
    {
      v151 = v7;
      v86 = objc_alloc(MEMORY[0x1E696ABC0]);
      v87 = *MEMORY[0x1E698F240];
      v185 = *MEMORY[0x1E696A578];
      v153 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"hasAppleTV"];
      v186 = v153;
      v88 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v186 forKeys:&v185 count:1];
      v89 = v86;
      v7 = v151;
      v152 = v88;
      v90 = [v89 initWithDomain:v87 code:2 userInfo:?];
      v154 = 0;
      v37 = 0;
      *a4 = v90;
      v40 = v165;
      v38 = v160;
      goto LABEL_59;
    }

    v154 = 0;
    v37 = 0;
LABEL_135:
    v40 = v165;
    v38 = v160;
    goto LABEL_60;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = v168;
    goto LABEL_4;
  }

  if (!a4)
  {
    v7 = 0;
    v37 = 0;
    goto LABEL_68;
  }

  v44 = objc_alloc(MEMORY[0x1E696ABC0]);
  v45 = *MEMORY[0x1E698F240];
  v199 = *MEMORY[0x1E696A578];
  v166 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"connectedToAirpods"];
  v200[0] = v166;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v200 forKeys:&v199 count:1];
  v46 = [v44 initWithDomain:v45 code:2 userInfo:v8];
  v7 = 0;
  v37 = 0;
  *a4 = v46;
LABEL_67:

LABEL_68:
  v41 = *MEMORY[0x1E69E9840];
  return v37;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMSiriAssistantSuggestionFeaturesDeviceFeatures *)self writeTo:v3];
  v4 = [v3 immutableData];

  return v4;
}

- (void)writeTo:(id)a3
{
  v15 = a3;
  if (self->_hasConnectedToAirpods)
  {
    connectedToAirpods = self->_connectedToAirpods;
    PBDataWriterWriteBOOLField();
  }

  if (self->_noiseCancellingMode)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_connectedToDevice)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_hasIsInCarPlay)
  {
    isInCarPlay = self->_isInCarPlay;
    PBDataWriterWriteBOOLField();
  }

  if (self->_hasHasWatch)
  {
    hasWatch = self->_hasWatch;
    PBDataWriterWriteBOOLField();
  }

  if (self->_hasHasIPad)
  {
    hasIPad = self->_hasIPad;
    PBDataWriterWriteBOOLField();
  }

  if (self->_hasHasHomePod)
  {
    hasHomePod = self->_hasHomePod;
    PBDataWriterWriteBOOLField();
  }

  if (self->_hasHasAppleTV)
  {
    hasAppleTV = self->_hasAppleTV;
    PBDataWriterWriteBOOLField();
  }

  if (self->_hasHasIPhone)
  {
    hasIPhone = self->_hasIPhone;
    PBDataWriterWriteBOOLField();
  }

  if (self->_hasTotalNumDevices)
  {
    totalNumDevices = self->_totalNumDevices;
    PBDataWriterWriteInt32Field();
  }

  if (self->_currentDeviceType)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_currentBuildVersion)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_distanceFromLatestBuild)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_hasIsALargeFormatPhone)
  {
    isALargeFormatPhone = self->_isALargeFormatPhone;
    PBDataWriterWriteBOOLField();
  }

  if (self->_hasHasAPasscode)
  {
    hasAPasscode = self->_hasAPasscode;
    PBDataWriterWriteBOOLField();
  }

  if (self->_hasSupportsSMSMEssaging)
  {
    supportsSMSMEssaging = self->_supportsSMSMEssaging;
    PBDataWriterWriteBOOLField();
  }
}

- (id)initByReadFrom:(id)a3
{
  v4 = a3;
  v90.receiver = self;
  v90.super_class = BMSiriAssistantSuggestionFeaturesDeviceFeatures;
  v5 = [(BMEventBase *)&v90 init];
  if (!v5)
  {
    goto LABEL_154;
  }

  v6 = [v4 position];
  if (v6 < [v4 length])
  {
    do
    {
      if ([v4 hasError])
      {
        break;
      }

      v7 = 0;
      v8 = 0;
      v9 = 0;
      while (1)
      {
        v91 = 0;
        v10 = [v4 position] + 1;
        if (v10 >= [v4 position] && (v11 = objc_msgSend(v4, "position") + 1, v11 <= objc_msgSend(v4, "length")))
        {
          v12 = [v4 data];
          [v12 getBytes:&v91 range:{objc_msgSend(v4, "position"), 1}];

          [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
        }

        else
        {
          [v4 _setError];
        }

        v9 |= (v91 & 0x7F) << v7;
        if ((v91 & 0x80) == 0)
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

      v14 = [v4 hasError] ? 0 : v9;
LABEL_16:
      if (([v4 hasError] & 1) != 0 || (v14 & 7) == 4)
      {
        break;
      }

      switch((v14 >> 3))
      {
        case 1u:
          v15 = 0;
          v16 = 0;
          v17 = 0;
          v5->_hasConnectedToAirpods = 1;
          while (1)
          {
            v91 = 0;
            v18 = [v4 position] + 1;
            if (v18 >= [v4 position] && (v19 = objc_msgSend(v4, "position") + 1, v19 <= objc_msgSend(v4, "length")))
            {
              v20 = [v4 data];
              [v20 getBytes:&v91 range:{objc_msgSend(v4, "position"), 1}];

              [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
            }

            else
            {
              [v4 _setError];
            }

            v17 |= (v91 & 0x7F) << v15;
            if ((v91 & 0x80) == 0)
            {
              break;
            }

            v15 += 7;
            v13 = v16++ >= 9;
            if (v13)
            {
              LOBYTE(v21) = 0;
LABEL_131:
              v86 = 16;
              goto LABEL_150;
            }
          }

          v21 = (v17 != 0) & ~[v4 hasError];
          goto LABEL_131;
        case 2u:
          v28 = PBReaderReadString();
          v29 = 48;
          goto LABEL_51;
        case 3u:
          v28 = PBReaderReadString();
          v29 = 56;
          goto LABEL_51;
        case 5u:
          v61 = 0;
          v62 = 0;
          v63 = 0;
          v5->_hasIsInCarPlay = 1;
          while (1)
          {
            v91 = 0;
            v64 = [v4 position] + 1;
            if (v64 >= [v4 position] && (v65 = objc_msgSend(v4, "position") + 1, v65 <= objc_msgSend(v4, "length")))
            {
              v66 = [v4 data];
              [v66 getBytes:&v91 range:{objc_msgSend(v4, "position"), 1}];

              [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
            }

            else
            {
              [v4 _setError];
            }

            v63 |= (v91 & 0x7F) << v61;
            if ((v91 & 0x80) == 0)
            {
              break;
            }

            v61 += 7;
            v13 = v62++ >= 9;
            if (v13)
            {
              LOBYTE(v21) = 0;
              goto LABEL_141;
            }
          }

          v21 = (v63 != 0) & ~[v4 hasError];
LABEL_141:
          v86 = 18;
          goto LABEL_150;
        case 6u:
          v67 = 0;
          v68 = 0;
          v69 = 0;
          v5->_hasHasWatch = 1;
          while (1)
          {
            v91 = 0;
            v70 = [v4 position] + 1;
            if (v70 >= [v4 position] && (v71 = objc_msgSend(v4, "position") + 1, v71 <= objc_msgSend(v4, "length")))
            {
              v72 = [v4 data];
              [v72 getBytes:&v91 range:{objc_msgSend(v4, "position"), 1}];

              [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
            }

            else
            {
              [v4 _setError];
            }

            v69 |= (v91 & 0x7F) << v67;
            if ((v91 & 0x80) == 0)
            {
              break;
            }

            v67 += 7;
            v13 = v68++ >= 9;
            if (v13)
            {
              LOBYTE(v21) = 0;
              goto LABEL_143;
            }
          }

          v21 = (v69 != 0) & ~[v4 hasError];
LABEL_143:
          v86 = 20;
          goto LABEL_150;
        case 7u:
          v30 = 0;
          v31 = 0;
          v32 = 0;
          v5->_hasHasIPad = 1;
          while (1)
          {
            v91 = 0;
            v33 = [v4 position] + 1;
            if (v33 >= [v4 position] && (v34 = objc_msgSend(v4, "position") + 1, v34 <= objc_msgSend(v4, "length")))
            {
              v35 = [v4 data];
              [v35 getBytes:&v91 range:{objc_msgSend(v4, "position"), 1}];

              [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
            }

            else
            {
              [v4 _setError];
            }

            v32 |= (v91 & 0x7F) << v30;
            if ((v91 & 0x80) == 0)
            {
              break;
            }

            v30 += 7;
            v13 = v31++ >= 9;
            if (v13)
            {
              LOBYTE(v21) = 0;
              goto LABEL_129;
            }
          }

          v21 = (v32 != 0) & ~[v4 hasError];
LABEL_129:
          v86 = 22;
          goto LABEL_150;
        case 8u:
          v37 = 0;
          v38 = 0;
          v39 = 0;
          v5->_hasHasHomePod = 1;
          while (1)
          {
            v91 = 0;
            v40 = [v4 position] + 1;
            if (v40 >= [v4 position] && (v41 = objc_msgSend(v4, "position") + 1, v41 <= objc_msgSend(v4, "length")))
            {
              v42 = [v4 data];
              [v42 getBytes:&v91 range:{objc_msgSend(v4, "position"), 1}];

              [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
            }

            else
            {
              [v4 _setError];
            }

            v39 |= (v91 & 0x7F) << v37;
            if ((v91 & 0x80) == 0)
            {
              break;
            }

            v37 += 7;
            v13 = v38++ >= 9;
            if (v13)
            {
              LOBYTE(v21) = 0;
              goto LABEL_133;
            }
          }

          v21 = (v39 != 0) & ~[v4 hasError];
LABEL_133:
          v86 = 24;
          goto LABEL_150;
        case 9u:
          v43 = 0;
          v44 = 0;
          v45 = 0;
          v5->_hasHasAppleTV = 1;
          while (1)
          {
            v91 = 0;
            v46 = [v4 position] + 1;
            if (v46 >= [v4 position] && (v47 = objc_msgSend(v4, "position") + 1, v47 <= objc_msgSend(v4, "length")))
            {
              v48 = [v4 data];
              [v48 getBytes:&v91 range:{objc_msgSend(v4, "position"), 1}];

              [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
            }

            else
            {
              [v4 _setError];
            }

            v45 |= (v91 & 0x7F) << v43;
            if ((v91 & 0x80) == 0)
            {
              break;
            }

            v43 += 7;
            v13 = v44++ >= 9;
            if (v13)
            {
              LOBYTE(v21) = 0;
              goto LABEL_135;
            }
          }

          v21 = (v45 != 0) & ~[v4 hasError];
LABEL_135:
          v86 = 26;
          goto LABEL_150;
        case 0xAu:
          v80 = 0;
          v81 = 0;
          v82 = 0;
          v5->_hasHasIPhone = 1;
          while (1)
          {
            v91 = 0;
            v83 = [v4 position] + 1;
            if (v83 >= [v4 position] && (v84 = objc_msgSend(v4, "position") + 1, v84 <= objc_msgSend(v4, "length")))
            {
              v85 = [v4 data];
              [v85 getBytes:&v91 range:{objc_msgSend(v4, "position"), 1}];

              [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
            }

            else
            {
              [v4 _setError];
            }

            v82 |= (v91 & 0x7F) << v80;
            if ((v91 & 0x80) == 0)
            {
              break;
            }

            v80 += 7;
            v13 = v81++ >= 9;
            if (v13)
            {
              LOBYTE(v21) = 0;
              goto LABEL_149;
            }
          }

          v21 = (v82 != 0) & ~[v4 hasError];
LABEL_149:
          v86 = 28;
          goto LABEL_150;
        case 0xBu:
          v73 = 0;
          v74 = 0;
          v75 = 0;
          v5->_hasTotalNumDevices = 1;
          while (1)
          {
            v91 = 0;
            v76 = [v4 position] + 1;
            if (v76 >= [v4 position] && (v77 = objc_msgSend(v4, "position") + 1, v77 <= objc_msgSend(v4, "length")))
            {
              v78 = [v4 data];
              [v78 getBytes:&v91 range:{objc_msgSend(v4, "position"), 1}];

              [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
            }

            else
            {
              [v4 _setError];
            }

            v75 |= (v91 & 0x7F) << v73;
            if ((v91 & 0x80) == 0)
            {
              break;
            }

            v73 += 7;
            v13 = v74++ >= 9;
            if (v13)
            {
              v79 = 0;
              goto LABEL_147;
            }
          }

          if ([v4 hasError])
          {
            v79 = 0;
          }

          else
          {
            v79 = v75;
          }

LABEL_147:
          v5->_totalNumDevices = v79;
          goto LABEL_151;
        case 0xCu:
          v28 = PBReaderReadString();
          v29 = 64;
          goto LABEL_51;
        case 0xDu:
          v28 = PBReaderReadString();
          v29 = 72;
          goto LABEL_51;
        case 0xEu:
          v28 = PBReaderReadString();
          v29 = 80;
LABEL_51:
          v36 = *(&v5->super.super.isa + v29);
          *(&v5->super.super.isa + v29) = v28;

          goto LABEL_151;
        case 0xFu:
          v22 = 0;
          v23 = 0;
          v24 = 0;
          v5->_hasIsALargeFormatPhone = 1;
          while (1)
          {
            v91 = 0;
            v25 = [v4 position] + 1;
            if (v25 >= [v4 position] && (v26 = objc_msgSend(v4, "position") + 1, v26 <= objc_msgSend(v4, "length")))
            {
              v27 = [v4 data];
              [v27 getBytes:&v91 range:{objc_msgSend(v4, "position"), 1}];

              [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
            }

            else
            {
              [v4 _setError];
            }

            v24 |= (v91 & 0x7F) << v22;
            if ((v91 & 0x80) == 0)
            {
              break;
            }

            v22 += 7;
            v13 = v23++ >= 9;
            if (v13)
            {
              LOBYTE(v21) = 0;
              goto LABEL_127;
            }
          }

          v21 = (v24 != 0) & ~[v4 hasError];
LABEL_127:
          v86 = 31;
          goto LABEL_150;
        case 0x10u:
          v49 = 0;
          v50 = 0;
          v51 = 0;
          v5->_hasHasAPasscode = 1;
          while (1)
          {
            v91 = 0;
            v52 = [v4 position] + 1;
            if (v52 >= [v4 position] && (v53 = objc_msgSend(v4, "position") + 1, v53 <= objc_msgSend(v4, "length")))
            {
              v54 = [v4 data];
              [v54 getBytes:&v91 range:{objc_msgSend(v4, "position"), 1}];

              [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
            }

            else
            {
              [v4 _setError];
            }

            v51 |= (v91 & 0x7F) << v49;
            if ((v91 & 0x80) == 0)
            {
              break;
            }

            v49 += 7;
            v13 = v50++ >= 9;
            if (v13)
            {
              LOBYTE(v21) = 0;
              goto LABEL_137;
            }
          }

          v21 = (v51 != 0) & ~[v4 hasError];
LABEL_137:
          v86 = 33;
          goto LABEL_150;
        case 0x11u:
          v55 = 0;
          v56 = 0;
          v57 = 0;
          v5->_hasSupportsSMSMEssaging = 1;
          break;
        default:
          if (!PBReaderSkipValueWithTag())
          {
            goto LABEL_153;
          }

          goto LABEL_151;
      }

      while (1)
      {
        v91 = 0;
        v58 = [v4 position] + 1;
        if (v58 >= [v4 position] && (v59 = objc_msgSend(v4, "position") + 1, v59 <= objc_msgSend(v4, "length")))
        {
          v60 = [v4 data];
          [v60 getBytes:&v91 range:{objc_msgSend(v4, "position"), 1}];

          [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
        }

        else
        {
          [v4 _setError];
        }

        v57 |= (v91 & 0x7F) << v55;
        if ((v91 & 0x80) == 0)
        {
          break;
        }

        v55 += 7;
        v13 = v56++ >= 9;
        if (v13)
        {
          LOBYTE(v21) = 0;
          goto LABEL_139;
        }
      }

      v21 = (v57 != 0) & ~[v4 hasError];
LABEL_139:
      v86 = 35;
LABEL_150:
      *(&v5->super.super.isa + v86) = v21;
LABEL_151:
      v87 = [v4 position];
    }

    while (v87 < [v4 length]);
  }

  if ([v4 hasError])
  {
LABEL_153:
    v88 = 0;
  }

  else
  {
LABEL_154:
    v88 = v5;
  }

  return v88;
}

- (NSString)description
{
  v17 = objc_alloc(MEMORY[0x1E696AEC0]);
  v16 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMSiriAssistantSuggestionFeaturesDeviceFeatures connectedToAirpods](self, "connectedToAirpods")}];
  v21 = [(BMSiriAssistantSuggestionFeaturesDeviceFeatures *)self noiseCancellingMode];
  v20 = [(BMSiriAssistantSuggestionFeaturesDeviceFeatures *)self connectedToDevice];
  v15 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMSiriAssistantSuggestionFeaturesDeviceFeatures isInCarPlay](self, "isInCarPlay")}];
  v14 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMSiriAssistantSuggestionFeaturesDeviceFeatures hasWatch](self, "hasWatch")}];
  v13 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMSiriAssistantSuggestionFeaturesDeviceFeatures hasIPad](self, "hasIPad")}];
  v19 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMSiriAssistantSuggestionFeaturesDeviceFeatures hasHomePod](self, "hasHomePod")}];
  v12 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMSiriAssistantSuggestionFeaturesDeviceFeatures hasAppleTV](self, "hasAppleTV")}];
  v11 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMSiriAssistantSuggestionFeaturesDeviceFeatures hasIPhone](self, "hasIPhone")}];
  v10 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMSiriAssistantSuggestionFeaturesDeviceFeatures totalNumDevices](self, "totalNumDevices")}];
  v3 = [(BMSiriAssistantSuggestionFeaturesDeviceFeatures *)self currentDeviceType];
  v4 = [(BMSiriAssistantSuggestionFeaturesDeviceFeatures *)self currentBuildVersion];
  v5 = [(BMSiriAssistantSuggestionFeaturesDeviceFeatures *)self distanceFromLatestBuild];
  v6 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMSiriAssistantSuggestionFeaturesDeviceFeatures isALargeFormatPhone](self, "isALargeFormatPhone")}];
  v7 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMSiriAssistantSuggestionFeaturesDeviceFeatures hasAPasscode](self, "hasAPasscode")}];
  v8 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMSiriAssistantSuggestionFeaturesDeviceFeatures supportsSMSMEssaging](self, "supportsSMSMEssaging")}];
  v18 = [v17 initWithFormat:@"BMSiriAssistantSuggestionFeaturesDeviceFeatures with connectedToAirpods: %@, noiseCancellingMode: %@, connectedToDevice: %@, isInCarPlay: %@, hasWatch: %@, hasIPad: %@, hasHomePod: %@, hasAppleTV: %@, hasIPhone: %@, totalNumDevices: %@, currentDeviceType: %@, currentBuildVersion: %@, distanceFromLatestBuild: %@, isALargeFormatPhone: %@, hasAPasscode: %@, supportsSMSMEssaging: %@", v16, v21, v20, v15, v14, v13, v19, v12, v11, v10, v3, v4, v5, v6, v7, v8];

  return v18;
}

- (BMSiriAssistantSuggestionFeaturesDeviceFeatures)initWithConnectedToAirpods:(id)a3 noiseCancellingMode:(id)a4 connectedToDevice:(id)a5 isInCarPlay:(id)a6 hasWatch:(id)a7 hasIPad:(id)a8 hasHomePod:(id)a9 hasAppleTV:(id)a10 hasIPhone:(id)a11 totalNumDevices:(id)a12 currentDeviceType:(id)a13 currentBuildVersion:(id)a14 distanceFromLatestBuild:(id)a15 isALargeFormatPhone:(id)a16 hasAPasscode:(id)a17 supportsSMSMEssaging:(id)a18
{
  v44 = a3;
  obj = a4;
  v38 = a4;
  v34 = a5;
  v37 = a5;
  v42 = a6;
  v43 = a7;
  v23 = a8;
  v41 = a9;
  v40 = a10;
  v24 = a11;
  v39 = a12;
  v25 = a13;
  v26 = a14;
  v36 = a15;
  v27 = a16;
  v28 = a17;
  v29 = a18;
  v45.receiver = self;
  v45.super_class = BMSiriAssistantSuggestionFeaturesDeviceFeatures;
  v30 = [(BMEventBase *)&v45 init];
  if (v30)
  {
    v30->_dataVersion = [objc_opt_class() latestDataVersion];
    if (v44)
    {
      v30->_hasConnectedToAirpods = 1;
      v30->_connectedToAirpods = [v44 BOOLValue];
    }

    else
    {
      v30->_hasConnectedToAirpods = 0;
      v30->_connectedToAirpods = 0;
    }

    objc_storeStrong(&v30->_noiseCancellingMode, obj);
    objc_storeStrong(&v30->_connectedToDevice, v34);
    if (v42)
    {
      v30->_hasIsInCarPlay = 1;
      v30->_isInCarPlay = [v42 BOOLValue];
    }

    else
    {
      v30->_hasIsInCarPlay = 0;
      v30->_isInCarPlay = 0;
    }

    if (v43)
    {
      v30->_hasHasWatch = 1;
      v30->_hasWatch = [v43 BOOLValue];
    }

    else
    {
      v30->_hasHasWatch = 0;
      v30->_hasWatch = 0;
    }

    if (v23)
    {
      v30->_hasHasIPad = 1;
      v30->_hasIPad = [v23 BOOLValue];
    }

    else
    {
      v30->_hasHasIPad = 0;
      v30->_hasIPad = 0;
    }

    if (v41)
    {
      v30->_hasHasHomePod = 1;
      v30->_hasHomePod = [v41 BOOLValue];
    }

    else
    {
      v30->_hasHasHomePod = 0;
      v30->_hasHomePod = 0;
    }

    if (v40)
    {
      v30->_hasHasAppleTV = 1;
      v30->_hasAppleTV = [v40 BOOLValue];
    }

    else
    {
      v30->_hasHasAppleTV = 0;
      v30->_hasAppleTV = 0;
    }

    if (v24)
    {
      v30->_hasHasIPhone = 1;
      v30->_hasIPhone = [v24 BOOLValue];
    }

    else
    {
      v30->_hasHasIPhone = 0;
      v30->_hasIPhone = 0;
    }

    if (v39)
    {
      v30->_hasTotalNumDevices = 1;
      v31 = [v39 intValue];
    }

    else
    {
      v30->_hasTotalNumDevices = 0;
      v31 = -1;
    }

    v30->_totalNumDevices = v31;
    objc_storeStrong(&v30->_currentDeviceType, a13);
    objc_storeStrong(&v30->_currentBuildVersion, a14);
    objc_storeStrong(&v30->_distanceFromLatestBuild, a15);
    if (v27)
    {
      v30->_hasIsALargeFormatPhone = 1;
      v30->_isALargeFormatPhone = [v27 BOOLValue];
    }

    else
    {
      v30->_hasIsALargeFormatPhone = 0;
      v30->_isALargeFormatPhone = 0;
    }

    if (v28)
    {
      v30->_hasHasAPasscode = 1;
      v30->_hasAPasscode = [v28 BOOLValue];
    }

    else
    {
      v30->_hasHasAPasscode = 0;
      v30->_hasAPasscode = 0;
    }

    if (v29)
    {
      v30->_hasSupportsSMSMEssaging = 1;
      v30->_supportsSMSMEssaging = [v29 BOOLValue];
    }

    else
    {
      v30->_hasSupportsSMSMEssaging = 0;
      v30->_supportsSMSMEssaging = 0;
    }
  }

  return v30;
}

+ (id)protoFields
{
  v21[16] = *MEMORY[0x1E69E9840];
  v20 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"connectedToAirpods" number:1 type:12 subMessageClass:0];
  v21[0] = v20;
  v19 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"noiseCancellingMode" number:2 type:13 subMessageClass:0];
  v21[1] = v19;
  v18 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"connectedToDevice" number:3 type:13 subMessageClass:0];
  v21[2] = v18;
  v17 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"isInCarPlay" number:5 type:12 subMessageClass:0];
  v21[3] = v17;
  v16 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"hasWatch" number:6 type:12 subMessageClass:0];
  v21[4] = v16;
  v15 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"hasIPad" number:7 type:12 subMessageClass:0];
  v21[5] = v15;
  v14 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"hasHomePod" number:8 type:12 subMessageClass:0];
  v21[6] = v14;
  v2 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"hasAppleTV" number:9 type:12 subMessageClass:0];
  v21[7] = v2;
  v3 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"hasIPhone" number:10 type:12 subMessageClass:0];
  v21[8] = v3;
  v4 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"totalNumDevices" number:11 type:2 subMessageClass:0];
  v21[9] = v4;
  v5 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"currentDeviceType" number:12 type:13 subMessageClass:0];
  v21[10] = v5;
  v6 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"currentBuildVersion" number:13 type:13 subMessageClass:0];
  v21[11] = v6;
  v7 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"distanceFromLatestBuild" number:14 type:13 subMessageClass:0];
  v21[12] = v7;
  v8 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"isALargeFormatPhone" number:15 type:12 subMessageClass:0];
  v21[13] = v8;
  v9 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"hasAPasscode" number:16 type:12 subMessageClass:0];
  v21[14] = v9;
  v10 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"supportsSMSMEssaging" number:17 type:12 subMessageClass:0];
  v21[15] = v10;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v21 count:16];

  v12 = *MEMORY[0x1E69E9840];

  return v11;
}

+ (id)columns
{
  v21[16] = *MEMORY[0x1E69E9840];
  v20 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"connectedToAirpods" dataType:0 requestOnly:0 fieldNumber:1 protoDataType:12 convertedType:0];
  v19 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"noiseCancellingMode" dataType:2 requestOnly:0 fieldNumber:2 protoDataType:13 convertedType:0];
  v18 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"connectedToDevice" dataType:2 requestOnly:0 fieldNumber:3 protoDataType:13 convertedType:0];
  v17 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"isInCarPlay" dataType:0 requestOnly:0 fieldNumber:5 protoDataType:12 convertedType:0];
  v16 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"hasWatch" dataType:0 requestOnly:0 fieldNumber:6 protoDataType:12 convertedType:0];
  v15 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"hasIPad" dataType:0 requestOnly:0 fieldNumber:7 protoDataType:12 convertedType:0];
  v2 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"hasHomePod" dataType:0 requestOnly:0 fieldNumber:8 protoDataType:12 convertedType:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"hasAppleTV" dataType:0 requestOnly:0 fieldNumber:9 protoDataType:12 convertedType:0];
  v4 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"hasIPhone" dataType:0 requestOnly:0 fieldNumber:10 protoDataType:12 convertedType:0];
  v5 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"totalNumDevices" dataType:0 requestOnly:0 fieldNumber:11 protoDataType:2 convertedType:0];
  v14 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"currentDeviceType" dataType:2 requestOnly:0 fieldNumber:12 protoDataType:13 convertedType:0];
  v6 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"currentBuildVersion" dataType:2 requestOnly:0 fieldNumber:13 protoDataType:13 convertedType:0];
  v7 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"distanceFromLatestBuild" dataType:2 requestOnly:0 fieldNumber:14 protoDataType:13 convertedType:0];
  v13 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"isALargeFormatPhone" dataType:0 requestOnly:0 fieldNumber:15 protoDataType:12 convertedType:0];
  v8 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"hasAPasscode" dataType:0 requestOnly:0 fieldNumber:16 protoDataType:12 convertedType:0];
  v9 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"supportsSMSMEssaging" dataType:0 requestOnly:0 fieldNumber:17 protoDataType:12 convertedType:0];
  v21[0] = v20;
  v21[1] = v19;
  v21[2] = v18;
  v21[3] = v17;
  v21[4] = v16;
  v21[5] = v15;
  v21[6] = v2;
  v21[7] = v3;
  v21[8] = v4;
  v21[9] = v5;
  v21[10] = v14;
  v21[11] = v6;
  v21[12] = v7;
  v21[13] = v13;
  v21[14] = v8;
  v21[15] = v9;
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v21 count:16];

  v10 = *MEMORY[0x1E69E9840];

  return v12;
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

    v8 = [[BMSiriAssistantSuggestionFeaturesDeviceFeatures alloc] initByReadFrom:v7];
    v4 = v8;
    if (v8)
    {
      v8[10] = 0;
    }
  }

  return v4;
}

@end