@interface BMShareEvent
+ (BMShareEvent)eventWithData:(id)a3 dataVersion:(unsigned int)a4;
+ (id)columns;
+ (id)protoFields;
- (BMShareEvent)initWithDeviceIdentifier:(id)a3 sessionId:(id)a4 trialIdentifiers:(id)a5 version:(id)a6 candidates:(id)a7 testKey:(id)a8 madResponseStatus:(int)a9 isFallbackFetch:(id)a10 isSharePlayAvailable:(id)a11 appSharedFrom:(int)a12 feedbackEvents:(id)a13 typeOfContent:(id)a14 isInPhoneCall:(id)a15 timeSinceLastShare:(id)a16 isScreenShot:(id)a17 photoFeatures:(id)a18;
- (BMShareEvent)initWithJSONDictionary:(id)a3 error:(id *)a4;
- (BOOL)isEqual:(id)a3;
- (NSString)description;
- (id)_candidatesJSONArray;
- (id)_feedbackEventsJSONArray;
- (id)_photoFeaturesJSONArray;
- (id)_typeOfContentJSONArray;
- (id)initByReadFrom:(id)a3;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)a3;
@end

@implementation BMShareEvent

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [(BMShareEvent *)self deviceIdentifier];
    v7 = [v5 deviceIdentifier];
    v8 = v7;
    if (v6 == v7)
    {
    }

    else
    {
      v9 = [(BMShareEvent *)self deviceIdentifier];
      v10 = [v5 deviceIdentifier];
      v11 = [v9 isEqual:v10];

      if (!v11)
      {
        goto LABEL_62;
      }
    }

    v13 = [(BMShareEvent *)self sessionId];
    v14 = [v5 sessionId];
    v15 = v14;
    if (v13 == v14)
    {
    }

    else
    {
      v16 = [(BMShareEvent *)self sessionId];
      v17 = [v5 sessionId];
      v18 = [v16 isEqual:v17];

      if (!v18)
      {
        goto LABEL_62;
      }
    }

    v19 = [(BMShareEvent *)self trialIdentifiers];
    v20 = [v5 trialIdentifiers];
    v21 = v20;
    if (v19 == v20)
    {
    }

    else
    {
      v22 = [(BMShareEvent *)self trialIdentifiers];
      v23 = [v5 trialIdentifiers];
      v24 = [v22 isEqual:v23];

      if (!v24)
      {
        goto LABEL_62;
      }
    }

    if (-[BMShareEvent hasVersion](self, "hasVersion") || [v5 hasVersion])
    {
      if (![(BMShareEvent *)self hasVersion])
      {
        goto LABEL_62;
      }

      if (![v5 hasVersion])
      {
        goto LABEL_62;
      }

      v25 = [(BMShareEvent *)self version];
      if (v25 != [v5 version])
      {
        goto LABEL_62;
      }
    }

    v26 = [(BMShareEvent *)self candidates];
    v27 = [v5 candidates];
    v28 = v27;
    if (v26 == v27)
    {
    }

    else
    {
      v29 = [(BMShareEvent *)self candidates];
      v30 = [v5 candidates];
      v31 = [v29 isEqual:v30];

      if (!v31)
      {
        goto LABEL_62;
      }
    }

    v32 = [(BMShareEvent *)self testKey];
    v33 = [v5 testKey];
    v34 = v33;
    if (v32 == v33)
    {
    }

    else
    {
      v35 = [(BMShareEvent *)self testKey];
      v36 = [v5 testKey];
      v37 = [v35 isEqual:v36];

      if (!v37)
      {
        goto LABEL_62;
      }
    }

    v38 = [(BMShareEvent *)self madResponseStatus];
    if (v38 != [v5 madResponseStatus])
    {
      goto LABEL_62;
    }

    if (-[BMShareEvent hasIsFallbackFetch](self, "hasIsFallbackFetch") || [v5 hasIsFallbackFetch])
    {
      if (![(BMShareEvent *)self hasIsFallbackFetch])
      {
        goto LABEL_62;
      }

      if (![v5 hasIsFallbackFetch])
      {
        goto LABEL_62;
      }

      v39 = [(BMShareEvent *)self isFallbackFetch];
      if (v39 != [v5 isFallbackFetch])
      {
        goto LABEL_62;
      }
    }

    if (-[BMShareEvent hasIsSharePlayAvailable](self, "hasIsSharePlayAvailable") || [v5 hasIsSharePlayAvailable])
    {
      if (![(BMShareEvent *)self hasIsSharePlayAvailable])
      {
        goto LABEL_62;
      }

      if (![v5 hasIsSharePlayAvailable])
      {
        goto LABEL_62;
      }

      v40 = [(BMShareEvent *)self isSharePlayAvailable];
      if (v40 != [v5 isSharePlayAvailable])
      {
        goto LABEL_62;
      }
    }

    v41 = [(BMShareEvent *)self appSharedFrom];
    if (v41 != [v5 appSharedFrom])
    {
      goto LABEL_62;
    }

    v42 = [(BMShareEvent *)self feedbackEvents];
    v43 = [v5 feedbackEvents];
    v44 = v43;
    if (v42 == v43)
    {
    }

    else
    {
      v45 = [(BMShareEvent *)self feedbackEvents];
      v46 = [v5 feedbackEvents];
      v47 = [v45 isEqual:v46];

      if (!v47)
      {
        goto LABEL_62;
      }
    }

    v48 = [(BMShareEvent *)self typeOfContent];
    v49 = [v5 typeOfContent];
    v50 = v49;
    if (v48 == v49)
    {
    }

    else
    {
      v51 = [(BMShareEvent *)self typeOfContent];
      v52 = [v5 typeOfContent];
      v53 = [v51 isEqual:v52];

      if (!v53)
      {
        goto LABEL_62;
      }
    }

    if (-[BMShareEvent hasIsInPhoneCall](self, "hasIsInPhoneCall") || [v5 hasIsInPhoneCall])
    {
      if (![(BMShareEvent *)self hasIsInPhoneCall])
      {
        goto LABEL_62;
      }

      if (![v5 hasIsInPhoneCall])
      {
        goto LABEL_62;
      }

      v54 = [(BMShareEvent *)self isInPhoneCall];
      if (v54 != [v5 isInPhoneCall])
      {
        goto LABEL_62;
      }
    }

    v55 = [(BMShareEvent *)self timeSinceLastShare];
    v56 = [v5 timeSinceLastShare];
    v57 = v56;
    if (v55 == v56)
    {
    }

    else
    {
      v58 = [(BMShareEvent *)self timeSinceLastShare];
      v59 = [v5 timeSinceLastShare];
      v60 = [v58 isEqual:v59];

      if (!v60)
      {
        goto LABEL_62;
      }
    }

    if (!-[BMShareEvent hasIsScreenShot](self, "hasIsScreenShot") && ![v5 hasIsScreenShot] || -[BMShareEvent hasIsScreenShot](self, "hasIsScreenShot") && objc_msgSend(v5, "hasIsScreenShot") && (v61 = -[BMShareEvent isScreenShot](self, "isScreenShot"), v61 == objc_msgSend(v5, "isScreenShot")))
    {
      v63 = [(BMShareEvent *)self photoFeatures];
      v64 = [v5 photoFeatures];
      if (v63 == v64)
      {
        v12 = 1;
      }

      else
      {
        v65 = [(BMShareEvent *)self photoFeatures];
        v66 = [v5 photoFeatures];
        v12 = [v65 isEqual:v66];
      }

      goto LABEL_63;
    }

LABEL_62:
    v12 = 0;
LABEL_63:

    goto LABEL_64;
  }

  v12 = 0;
LABEL_64:

  return v12;
}

- (id)jsonDictionary
{
  v57[16] = *MEMORY[0x1E69E9840];
  v3 = [(BMShareEvent *)self deviceIdentifier];
  v4 = [(BMShareEvent *)self sessionId];
  v5 = [(BMShareEvent *)self trialIdentifiers];
  v6 = [v5 jsonDictionary];

  if ([(BMShareEvent *)self hasVersion])
  {
    v7 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMShareEvent version](self, "version")}];
  }

  else
  {
    v7 = 0;
  }

  v8 = [(BMShareEvent *)self _candidatesJSONArray];
  v9 = [(BMShareEvent *)self testKey];
  v55 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMShareEvent madResponseStatus](self, "madResponseStatus")}];
  if ([(BMShareEvent *)self hasIsFallbackFetch])
  {
    v54 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMShareEvent isFallbackFetch](self, "isFallbackFetch")}];
  }

  else
  {
    v54 = 0;
  }

  if ([(BMShareEvent *)self hasIsSharePlayAvailable])
  {
    v53 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMShareEvent isSharePlayAvailable](self, "isSharePlayAvailable")}];
  }

  else
  {
    v53 = 0;
  }

  v52 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMShareEvent appSharedFrom](self, "appSharedFrom")}];
  v51 = [(BMShareEvent *)self _feedbackEventsJSONArray];
  v50 = [(BMShareEvent *)self _typeOfContentJSONArray];
  if ([(BMShareEvent *)self hasIsInPhoneCall])
  {
    v49 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMShareEvent isInPhoneCall](self, "isInPhoneCall")}];
  }

  else
  {
    v49 = 0;
  }

  v10 = [(BMShareEvent *)self timeSinceLastShare];
  v48 = [v10 jsonDictionary];

  if ([(BMShareEvent *)self hasIsScreenShot])
  {
    v47 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMShareEvent isScreenShot](self, "isScreenShot")}];
  }

  else
  {
    v47 = 0;
  }

  v11 = [(BMShareEvent *)self _photoFeaturesJSONArray];
  v56[0] = @"deviceIdentifier";
  v12 = v3;
  if (!v3)
  {
    v12 = [MEMORY[0x1E695DFB0] null];
  }

  v41 = v12;
  v57[0] = v12;
  v56[1] = @"sessionId";
  v13 = v4;
  if (!v4)
  {
    v13 = [MEMORY[0x1E695DFB0] null];
  }

  v40 = v13;
  v57[1] = v13;
  v56[2] = @"trialIdentifiers";
  v14 = v6;
  if (!v6)
  {
    v14 = [MEMORY[0x1E695DFB0] null];
  }

  v39 = v14;
  v57[2] = v14;
  v56[3] = @"version";
  v15 = v7;
  if (!v7)
  {
    v15 = [MEMORY[0x1E695DFB0] null];
  }

  v38 = v15;
  v57[3] = v15;
  v56[4] = @"candidates";
  v16 = v8;
  if (!v8)
  {
    v16 = [MEMORY[0x1E695DFB0] null];
  }

  v37 = v16;
  v57[4] = v16;
  v56[5] = @"testKey";
  v17 = v9;
  if (!v9)
  {
    v17 = [MEMORY[0x1E695DFB0] null];
  }

  v36 = v17;
  v57[5] = v17;
  v56[6] = @"madResponseStatus";
  v18 = v55;
  if (!v55)
  {
    v18 = [MEMORY[0x1E695DFB0] null];
  }

  v57[6] = v18;
  v56[7] = @"isFallbackFetch";
  v19 = v54;
  if (!v54)
  {
    v19 = [MEMORY[0x1E695DFB0] null];
  }

  v57[7] = v19;
  v56[8] = @"isSharePlayAvailable";
  v20 = v53;
  if (!v53)
  {
    v20 = [MEMORY[0x1E695DFB0] null];
  }

  v46 = v11;
  v57[8] = v20;
  v56[9] = @"appSharedFrom";
  v21 = v52;
  if (!v52)
  {
    v21 = [MEMORY[0x1E695DFB0] null];
  }

  v44 = v8;
  v32 = v21;
  v57[9] = v21;
  v56[10] = @"feedbackEvents";
  v22 = v51;
  if (!v51)
  {
    v22 = [MEMORY[0x1E695DFB0] null];
  }

  v43 = v9;
  v45 = v3;
  v57[10] = v22;
  v56[11] = @"typeOfContent";
  v23 = v50;
  if (!v50)
  {
    v23 = [MEMORY[0x1E695DFB0] null];
  }

  v35 = v18;
  v24 = v6;
  v57[11] = v23;
  v56[12] = @"isInPhoneCall";
  v25 = v49;
  if (!v49)
  {
    v25 = [MEMORY[0x1E695DFB0] null];
  }

  v34 = v19;
  v26 = v4;
  v57[12] = v25;
  v56[13] = @"timeSinceLastShare";
  v27 = v48;
  if (!v48)
  {
    v27 = [MEMORY[0x1E695DFB0] null];
  }

  v57[13] = v27;
  v56[14] = @"isScreenShot";
  v28 = v47;
  if (!v47)
  {
    v28 = [MEMORY[0x1E695DFB0] null];
  }

  v57[14] = v28;
  v56[15] = @"photoFeatures";
  v29 = v46;
  if (!v46)
  {
    v29 = [MEMORY[0x1E695DFB0] null];
  }

  v57[15] = v29;
  v42 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v57 forKeys:v56 count:{16, v32}];
  if (!v46)
  {
  }

  if (!v47)
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
    if (v43)
    {
      goto LABEL_68;
    }
  }

  else
  {

    if (v43)
    {
LABEL_68:
      if (v44)
      {
        goto LABEL_69;
      }

      goto LABEL_78;
    }
  }

  if (v44)
  {
LABEL_69:
    if (v7)
    {
      goto LABEL_70;
    }

    goto LABEL_79;
  }

LABEL_78:

  if (v7)
  {
LABEL_70:
    if (v24)
    {
      goto LABEL_71;
    }

    goto LABEL_80;
  }

LABEL_79:

  if (v24)
  {
LABEL_71:
    if (v26)
    {
      goto LABEL_72;
    }

LABEL_81:

    if (v45)
    {
      goto LABEL_73;
    }

    goto LABEL_82;
  }

LABEL_80:

  if (!v26)
  {
    goto LABEL_81;
  }

LABEL_72:
  if (v45)
  {
    goto LABEL_73;
  }

LABEL_82:

LABEL_73:
  v30 = *MEMORY[0x1E69E9840];

  return v42;
}

- (id)_photoFeaturesJSONArray
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = [(BMShareEvent *)self photoFeatures];
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [*(*(&v12 + 1) + 8 * i) jsonDictionary];
        [v3 addObject:v9];
      }

      v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  v10 = *MEMORY[0x1E69E9840];

  return v3;
}

- (id)_typeOfContentJSONArray
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = [(BMShareEvent *)self typeOfContent];
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

- (id)_feedbackEventsJSONArray
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = [(BMShareEvent *)self feedbackEvents];
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [*(*(&v12 + 1) + 8 * i) jsonDictionary];
        [v3 addObject:v9];
      }

      v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  v10 = *MEMORY[0x1E69E9840];

  return v3;
}

- (id)_candidatesJSONArray
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = [(BMShareEvent *)self candidates];
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [*(*(&v12 + 1) + 8 * i) jsonDictionary];
        [v3 addObject:v9];
      }

      v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  v10 = *MEMORY[0x1E69E9840];

  return v3;
}

- (BMShareEvent)initWithJSONDictionary:(id)a3 error:(id *)a4
{
  v338[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [v6 objectForKeyedSubscript:@"deviceIdentifier"];
  if (!v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v262 = 0;
    goto LABEL_4;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v262 = v7;
LABEL_4:
    v8 = [v6 objectForKeyedSubscript:@"sessionId"];
    v263 = v8;
    if (!v8 || (v9 = v8, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v261 = 0;
      goto LABEL_7;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v261 = v9;
LABEL_7:
      v10 = [v6 objectForKeyedSubscript:@"trialIdentifiers"];
      if (!v10 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
      {
        v259 = 0;
        goto LABEL_10;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v31 = v10;
        v286 = 0;
        v259 = [[BMTrialIdentifiers alloc] initWithJSONDictionary:v31 error:&v286];
        v32 = v286;
        if (v32)
        {
          v33 = v262;
          if (a4)
          {
            v32 = v32;
            *a4 = v32;
          }

          v34 = 0;
          goto LABEL_249;
        }

LABEL_10:
        v11 = [v6 objectForKeyedSubscript:@"version"];
        v258 = v11;
        if (v11 && (v12 = v11, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            if (a4)
            {
              v53 = v7;
              v54 = objc_alloc(MEMORY[0x1E696ABC0]);
              v55 = *MEMORY[0x1E698F240];
              v331 = *MEMORY[0x1E696A578];
              v56 = a4;
              v14 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"version"];
              v332 = v14;
              v57 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v332 forKeys:&v331 count:1];
              v58 = v54;
              v7 = v53;
              v265 = v57;
              v59 = [v58 initWithDomain:v55 code:2 userInfo:?];
              v13 = 0;
              v34 = 0;
              *v56 = v59;
              v33 = v262;

              goto LABEL_247;
            }

            v13 = 0;
            v34 = 0;
            v33 = v262;
LABEL_248:

            v31 = v10;
LABEL_249:
            v45 = v259;
            goto LABEL_250;
          }

          v255 = v7;
          v256 = a4;
          v13 = v12;
        }

        else
        {
          v255 = v7;
          v256 = a4;
          v13 = 0;
        }

        v14 = [v6 objectForKeyedSubscript:@"candidates"];
        v15 = [MEMORY[0x1E695DFB0] null];
        v16 = [v14 isEqual:v15];

        v257 = self;
        v260 = v10;
        if (v16)
        {
          v254 = v13;

          v14 = 0;
          goto LABEL_22;
        }

        if (!v14 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
        {
          v254 = v13;
LABEL_22:
          v264 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v14, "count")}];
          v282 = 0u;
          v283 = 0u;
          v284 = 0u;
          v285 = 0u;
          v14 = v14;
          v17 = [v14 countByEnumeratingWithState:&v282 objects:v328 count:16];
          if (v17)
          {
            v18 = v17;
            v19 = *v283;
            do
            {
              v20 = v6;
              for (i = 0; i != v18; ++i)
              {
                if (*v283 != v19)
                {
                  objc_enumerationMutation(v14);
                }

                v22 = *(*(&v282 + 1) + 8 * i);
                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  v60 = v256;
                  if (v256)
                  {
                    v61 = objc_alloc(MEMORY[0x1E696ABC0]);
                    v62 = *MEMORY[0x1E698F240];
                    v326 = *MEMORY[0x1E696A578];
                    v24 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type null for element of %@, must not be null", @"candidates"];
                    v327 = v24;
                    v63 = MEMORY[0x1E695DF20];
                    v64 = &v327;
                    v65 = &v326;
                    goto LABEL_58;
                  }

LABEL_65:
                  v34 = 0;
                  v23 = v14;
                  v6 = v20;
                  v33 = v262;
                  v10 = v260;
                  v13 = v254;
LABEL_245:

                  v7 = v255;
                  goto LABEL_247;
                }

                objc_opt_class();
                if ((objc_opt_isKindOfClass() & 1) == 0)
                {
                  v60 = v256;
                  if (!v256)
                  {
                    goto LABEL_65;
                  }

                  v61 = objc_alloc(MEMORY[0x1E696ABC0]);
                  v62 = *MEMORY[0x1E698F240];
                  v324 = *MEMORY[0x1E696A578];
                  v24 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", objc_opt_class(), @"candidates"];
                  v325 = v24;
                  v63 = MEMORY[0x1E695DF20];
                  v64 = &v325;
                  v65 = &v324;
LABEL_58:
                  v30 = [v63 dictionaryWithObjects:v64 forKeys:v65 count:1];
                  v66 = [v61 initWithDomain:v62 code:2 userInfo:v30];
                  v34 = 0;
                  *v60 = v66;
                  v23 = v14;
LABEL_62:
                  v6 = v20;
                  v33 = v262;
                  v10 = v260;
                  v13 = v254;
                  goto LABEL_243;
                }

                v23 = v14;
                v24 = v22;
                v25 = [BMCandidate alloc];
                v281 = 0;
                v26 = [(BMCandidate *)v25 initWithJSONDictionary:v24 error:&v281];
                v27 = v281;
                if (v27)
                {
                  v30 = v27;
                  if (v256)
                  {
                    v67 = v27;
                    *v256 = v30;
                  }

                  v34 = 0;
                  v14 = v23;
                  goto LABEL_62;
                }

                [v264 addObject:v26];

                v14 = v23;
              }

              v18 = [v23 countByEnumeratingWithState:&v282 objects:v328 count:16];
              v6 = v20;
            }

            while (v18);
          }

          v24 = [v6 objectForKeyedSubscript:@"testKey"];
          if (v24 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
          {
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              v23 = v256;
              if (!v256)
              {
                v34 = 0;
                v33 = v262;
                v10 = v260;
                v13 = v254;
LABEL_244:

                goto LABEL_245;
              }

              v71 = objc_alloc(MEMORY[0x1E696ABC0]);
              v72 = *MEMORY[0x1E698F240];
              v322 = *MEMORY[0x1E696A578];
              v30 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"testKey"];
              v323 = v30;
              v247 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v323 forKeys:&v322 count:1];
              v73 = [v71 initWithDomain:v72 code:2 userInfo:?];
              v34 = 0;
              *v256 = v73;
              v23 = 0;
              v33 = v262;
              v10 = v260;
              goto LABEL_170;
            }

            v23 = v24;
          }

          else
          {
            v23 = 0;
          }

          v28 = [v6 objectForKeyedSubscript:@"madResponseStatus"];
          v247 = v28;
          if (!v28)
          {
            v30 = 0;
            v10 = v260;
            goto LABEL_82;
          }

          v29 = v28;
          objc_opt_class();
          v10 = v260;
          if (objc_opt_isKindOfClass())
          {
            v30 = 0;
            goto LABEL_82;
          }

          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v30 = v29;
LABEL_81:

LABEL_82:
            v75 = [v6 objectForKeyedSubscript:@"isFallbackFetch"];
            v246 = v75;
            if (!v75 || (v76 = v75, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
            {
              v245 = 0;
              goto LABEL_85;
            }

            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v245 = v76;
LABEL_85:
              v77 = [v6 objectForKeyedSubscript:@"isSharePlayAvailable"];
              v244 = v77;
              if (!v77 || (v78 = v77, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
              {
                v243 = 0;
                goto LABEL_88;
              }

              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v243 = v78;
LABEL_88:
                v79 = [v6 objectForKeyedSubscript:@"appSharedFrom"];
                v242 = v79;
                if (!v79 || (v80 = v79, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                {
                  v81 = v23;
                  v241 = 0;
LABEL_104:
                  v99 = [v6 objectForKeyedSubscript:@"feedbackEvents"];
                  v100 = [MEMORY[0x1E695DFB0] null];
                  v101 = [v99 isEqual:v100];

                  v240 = v14;
                  if (v101)
                  {

                    v102 = 0;
LABEL_110:
                    v23 = v81;
                    goto LABEL_111;
                  }

                  v102 = v99;
                  if (!v99)
                  {
                    goto LABEL_110;
                  }

                  objc_opt_class();
                  v23 = v81;
                  if (objc_opt_isKindOfClass())
                  {
LABEL_111:
                    v250 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v102, "count")}];
                    v277 = 0u;
                    v278 = 0u;
                    v279 = 0u;
                    v280 = 0u;
                    obj = v102;
                    v106 = [obj countByEnumeratingWithState:&v277 objects:v311 count:16];
                    v253 = v23;
                    if (!v106)
                    {
                      goto LABEL_121;
                    }

                    v107 = v106;
                    v108 = *v278;
                    v236 = v6;
                    while (1)
                    {
                      for (j = 0; j != v107; ++j)
                      {
                        if (*v278 != v108)
                        {
                          objc_enumerationMutation(obj);
                        }

                        v110 = *(*(&v277 + 1) + 8 * j);
                        objc_opt_class();
                        if (objc_opt_isKindOfClass())
                        {
                          v118 = v256;
                          if (v256)
                          {
                            v119 = objc_alloc(MEMORY[0x1E696ABC0]);
                            v120 = *MEMORY[0x1E698F240];
                            v309 = *MEMORY[0x1E696A578];
                            v111 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type null for element of %@, must not be null", @"feedbackEvents"];
                            v310 = v111;
                            v121 = MEMORY[0x1E695DF20];
                            v122 = &v310;
                            v123 = &v309;
                            goto LABEL_127;
                          }

LABEL_152:
                          v34 = 0;
                          v6 = v236;
                          self = v257;
                          v33 = v262;
                          v14 = v240;

                          goto LABEL_236;
                        }

                        objc_opt_class();
                        if ((objc_opt_isKindOfClass() & 1) == 0)
                        {
                          v118 = v256;
                          if (!v256)
                          {
                            goto LABEL_152;
                          }

                          v119 = objc_alloc(MEMORY[0x1E696ABC0]);
                          v120 = *MEMORY[0x1E698F240];
                          v307 = *MEMORY[0x1E696A578];
                          v111 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", objc_opt_class(), @"feedbackEvents"];
                          v308 = v111;
                          v121 = MEMORY[0x1E695DF20];
                          v122 = &v308;
                          v123 = &v307;
LABEL_127:
                          v124 = [v121 dictionaryWithObjects:v122 forKeys:v123 count:1];
                          v125 = v120;
                          v10 = v260;
                          v126 = [v119 initWithDomain:v125 code:2 userInfo:v124];
                          v34 = 0;
                          *v118 = v126;
                          v239 = obj;
                          v6 = v236;
                          self = v257;
                          v33 = v262;
LABEL_131:
                          v14 = v240;
                          goto LABEL_234;
                        }

                        v111 = v110;
                        v112 = [BMFeedbackMessage alloc];
                        v276 = 0;
                        v113 = [(BMFeedbackMessage *)v112 initWithJSONDictionary:v111 error:&v276];
                        v114 = v276;
                        if (v114)
                        {
                          v124 = v114;
                          if (v256)
                          {
                            v127 = v114;
                            *v256 = v124;
                          }

                          v34 = 0;
                          v239 = obj;
                          v6 = v236;
                          self = v257;
                          v33 = v262;
                          v10 = v260;
                          goto LABEL_131;
                        }

                        [v250 addObject:v113];

                        v10 = v260;
                        v23 = v253;
                      }

                      v107 = [obj countByEnumeratingWithState:&v277 objects:v311 count:16];
                      v6 = v236;
                      if (!v107)
                      {
LABEL_121:

                        v115 = [v6 objectForKeyedSubscript:@"typeOfContent"];
                        v116 = [MEMORY[0x1E695DFB0] null];
                        v117 = [v115 isEqual:v116];

                        if (v117)
                        {

                          v115 = 0;
                          goto LABEL_136;
                        }

                        if (v115)
                        {
                          objc_opt_class();
                          v14 = v240;
                          if ((objc_opt_isKindOfClass() & 1) == 0)
                          {
                            v239 = v115;
                            self = v257;
                            if (v256)
                            {
                              v128 = objc_alloc(MEMORY[0x1E696ABC0]);
                              v129 = *MEMORY[0x1E698F240];
                              v305 = *MEMORY[0x1E696A578];
                              v111 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Expecting %@ as an array", @"typeOfContent"];
                              v306 = v111;
                              v124 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v306 forKeys:&v305 count:1];
                              v130 = v129;
                              v10 = v260;
                              v131 = [v128 initWithDomain:v130 code:2 userInfo:v124];
                              v34 = 0;
                              *v256 = v131;
                              v33 = v262;
                              goto LABEL_234;
                            }

                            v34 = 0;
                            v33 = v262;
LABEL_235:

LABEL_236:
                            v13 = v254;

                            goto LABEL_238;
                          }
                        }

                        else
                        {
LABEL_136:
                          v14 = v240;
                        }

                        v248 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v115, "count")}];
                        v272 = 0u;
                        v273 = 0u;
                        v274 = 0u;
                        v275 = 0u;
                        v132 = v115;
                        v133 = [v132 countByEnumeratingWithState:&v272 objects:v304 count:16];
                        v239 = v132;
                        if (!v133)
                        {
                          goto LABEL_149;
                        }

                        v134 = v133;
                        v135 = *v273;
                        while (1)
                        {
                          for (k = 0; k != v134; ++k)
                          {
                            if (*v273 != v135)
                            {
                              objc_enumerationMutation(v132);
                            }

                            v137 = *(*(&v272 + 1) + 8 * k);
                            objc_opt_class();
                            if (objc_opt_isKindOfClass())
                            {
                              v147 = v256;
                              if (v256)
                              {
                                v148 = objc_alloc(MEMORY[0x1E696ABC0]);
                                v149 = *MEMORY[0x1E698F240];
                                v302 = *MEMORY[0x1E696A578];
                                v232 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type null for element of %@, must not be null", @"typeOfContent"];
                                v303 = v232;
                                v150 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v303 forKeys:&v302 count:1];
                                v151 = v148;
                                v152 = v149;
LABEL_166:
                                v230 = v150;
                                self = v257;
                                v33 = v262;
                                v14 = v240;
                                v34 = 0;
                                *v147 = [v151 initWithDomain:v152 code:2 userInfo:?];
                                v124 = v239;
                                goto LABEL_167;
                              }

LABEL_168:
                              v34 = 0;
                              v124 = v132;
                              self = v257;
                              v33 = v262;
                              v14 = v240;
                              goto LABEL_233;
                            }

                            objc_opt_class();
                            if (objc_opt_isKindOfClass())
                            {
                              v138 = v137;
                            }

                            else
                            {
                              objc_opt_class();
                              if ((objc_opt_isKindOfClass() & 1) == 0)
                              {
                                v147 = v256;
                                if (v256)
                                {
                                  v161 = objc_alloc(MEMORY[0x1E696ABC0]);
                                  v162 = *MEMORY[0x1E698F240];
                                  v300 = *MEMORY[0x1E696A578];
                                  v232 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (corresponding to enum value), or NSString (string version of enum)", objc_opt_class(), @"typeOfContent"];
                                  v301 = v232;
                                  v150 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v301 forKeys:&v300 count:1];
                                  v151 = v161;
                                  v152 = v162;
                                  v10 = v260;
                                  goto LABEL_166;
                                }

                                goto LABEL_168;
                              }

                              v139 = v137;
                              v138 = [MEMORY[0x1E696AD98] numberWithInt:BMContentTypeFromString(v139)];
                            }

                            [v248 addObject:v138];
                            v10 = v260;
                          }

                          v134 = [v132 countByEnumeratingWithState:&v272 objects:v304 count:16];
                          v14 = v240;
                          if (!v134)
                          {
LABEL_149:

                            v140 = [v6 objectForKeyedSubscript:@"isInPhoneCall"];
                            v232 = v140;
                            if (!v140)
                            {
                              v124 = 0;
                              self = v257;
                              goto LABEL_174;
                            }

                            v141 = v140;
                            objc_opt_class();
                            self = v257;
                            if ((objc_opt_isKindOfClass() & 1) == 0)
                            {
                              objc_opt_class();
                              if (objc_opt_isKindOfClass())
                              {
                                v124 = v141;
                                goto LABEL_174;
                              }

                              if (!v256)
                              {
                                v124 = 0;
                                v34 = 0;
                                v33 = v262;
                                goto LABEL_232;
                              }

                              v231 = objc_alloc(MEMORY[0x1E696ABC0]);
                              v187 = *MEMORY[0x1E698F240];
                              v298 = *MEMORY[0x1E696A578];
                              v234 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"isInPhoneCall"];
                              v299 = v234;
                              v188 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v299 forKeys:&v298 count:1];
                              v189 = v187;
                              v10 = v260;
                              v225 = v188;
                              v124 = 0;
                              v34 = 0;
                              *v256 = [v231 initWithDomain:v189 code:2 userInfo:?];
                              goto LABEL_211;
                            }

                            v124 = 0;
LABEL_174:
                            v164 = [v6 objectForKeyedSubscript:@"timeSinceLastShare"];
                            v230 = v164;
                            if (!v164 || (v165 = v164, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                            {
                              v225 = 0;
LABEL_177:
                              v166 = [v6 objectForKeyedSubscript:@"isScreenShot"];
                              v223 = v166;
                              if (!v166 || (v167 = v166, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                              {
                                v224 = 0;
                                goto LABEL_180;
                              }

                              objc_opt_class();
                              if (objc_opt_isKindOfClass())
                              {
                                v224 = v167;
LABEL_180:
                                v168 = [v6 objectForKeyedSubscript:@"photoFeatures"];
                                v169 = [MEMORY[0x1E695DFB0] null];
                                v233 = v168;
                                LODWORD(v168) = [v168 isEqual:v169];

                                if (v168)
                                {

                                  goto LABEL_187;
                                }

                                if (!v233)
                                {
LABEL_187:
                                  v170 = 0;
                                  v10 = v260;
                                  goto LABEL_188;
                                }

                                objc_opt_class();
                                v10 = v260;
                                if (objc_opt_isKindOfClass())
                                {
                                  v170 = v233;
LABEL_188:
                                  v171 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v170, "count")}];
                                  v267 = 0u;
                                  v268 = 0u;
                                  v269 = 0u;
                                  v270 = 0u;
                                  v233 = v170;
                                  v172 = [v233 countByEnumeratingWithState:&v267 objects:v291 count:16];
                                  if (!v172)
                                  {
                                    goto LABEL_198;
                                  }

                                  v173 = v172;
                                  v174 = *v268;
                                  v237 = v6;
                                  v226 = v171;
LABEL_190:
                                  v175 = 0;
                                  while (1)
                                  {
                                    if (*v268 != v174)
                                    {
                                      objc_enumerationMutation(v233);
                                    }

                                    v176 = *(*(&v267 + 1) + 8 * v175);
                                    objc_opt_class();
                                    if (objc_opt_isKindOfClass())
                                    {
                                      break;
                                    }

                                    objc_opt_class();
                                    if ((objc_opt_isKindOfClass() & 1) == 0)
                                    {
                                      v6 = v237;
                                      v33 = v262;
                                      v14 = v240;
                                      v198 = v256;
                                      if (!v256)
                                      {
                                        goto LABEL_223;
                                      }

                                      v205 = objc_alloc(MEMORY[0x1E696ABC0]);
                                      v222 = *MEMORY[0x1E698F240];
                                      v287 = *MEMORY[0x1E696A578];
                                      v204 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", objc_opt_class(), @"photoFeatures"];
                                      v288 = v204;
                                      v201 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v288 forKeys:&v287 count:1];
                                      v202 = v205;
                                      v203 = v222;
                                      goto LABEL_218;
                                    }

                                    v177 = v176;
                                    v178 = [BMPhotoFeatures alloc];
                                    v266 = 0;
                                    v179 = [(BMPhotoFeatures *)v178 initWithJSONDictionary:v177 error:&v266];
                                    v180 = v266;
                                    if (v180)
                                    {
                                      v201 = v180;
                                      if (v256)
                                      {
                                        v206 = v180;
                                        *v256 = v201;
                                      }

                                      v6 = v237;
                                      v33 = v262;
                                      v14 = v240;
                                      v204 = v177;
LABEL_222:

                                      v10 = v260;
LABEL_223:

                                      v34 = 0;
                                      self = v257;
                                      v183 = v226;
                                      goto LABEL_227;
                                    }

                                    v171 = v226;
                                    [v226 addObject:v179];

                                    ++v175;
                                    v10 = v260;
                                    if (v173 == v175)
                                    {
                                      v6 = v237;
                                      v173 = [v233 countByEnumeratingWithState:&v267 objects:v291 count:16];
                                      if (v173)
                                      {
                                        goto LABEL_190;
                                      }

LABEL_198:

                                      v181 = v171;
                                      v182 = [v30 intValue];
                                      LODWORD(v220) = [v241 intValue];
                                      LODWORD(v213) = v182;
                                      v33 = v262;
                                      self = [(BMShareEvent *)v257 initWithDeviceIdentifier:v262 sessionId:v261 trialIdentifiers:v259 version:v254 candidates:v264 testKey:v23 madResponseStatus:v213 isFallbackFetch:v245 isSharePlayAvailable:v243 appSharedFrom:v220 feedbackEvents:v250 typeOfContent:v248 isInPhoneCall:v124 timeSinceLastShare:v225 isScreenShot:v224 photoFeatures:v181];
                                      v183 = v181;
                                      v34 = self;
                                      v14 = v240;
LABEL_227:

LABEL_228:
LABEL_229:

                                      v234 = v230;
LABEL_230:

                                      v163 = v234;
LABEL_231:

LABEL_232:
LABEL_233:
                                      v111 = v248;
LABEL_234:

                                      v23 = v253;
                                      goto LABEL_235;
                                    }
                                  }

                                  v6 = v237;
                                  v33 = v262;
                                  v14 = v240;
                                  v198 = v256;
                                  if (!v256)
                                  {
                                    goto LABEL_223;
                                  }

                                  v221 = objc_alloc(MEMORY[0x1E696ABC0]);
                                  v199 = *MEMORY[0x1E698F240];
                                  v289 = *MEMORY[0x1E696A578];
                                  v200 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type null for element of %@, must not be null", @"photoFeatures"];
                                  v290 = v200;
                                  v201 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v290 forKeys:&v289 count:1];
                                  v202 = v221;
                                  v203 = v199;
                                  v204 = v200;
LABEL_218:
                                  *v198 = [v202 initWithDomain:v203 code:2 userInfo:v201];
                                  goto LABEL_222;
                                }

                                if (!v256)
                                {
                                  v34 = 0;
                                  v33 = v262;
                                  goto LABEL_228;
                                }

                                v229 = objc_alloc(MEMORY[0x1E696ABC0]);
                                v207 = *MEMORY[0x1E698F240];
                                v292 = *MEMORY[0x1E696A578];
                                v208 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Expecting %@ as an array", @"photoFeatures"];
                                v293 = v208;
                                v209 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v293 forKeys:&v292 count:1];
                                v210 = v207;
                                v10 = v260;
                                *v256 = [v229 initWithDomain:v210 code:2 userInfo:v209];

                                v183 = v208;
                                v34 = 0;
                              }

                              else
                              {
                                if (!v256)
                                {
                                  v224 = 0;
                                  v34 = 0;
                                  v33 = v262;
                                  goto LABEL_229;
                                }

                                v193 = objc_alloc(MEMORY[0x1E696ABC0]);
                                v228 = *MEMORY[0x1E698F240];
                                v294 = *MEMORY[0x1E696A578];
                                v194 = objc_alloc(MEMORY[0x1E696AEC0]);
                                v219 = objc_opt_class();
                                v195 = v194;
                                v10 = v260;
                                v233 = [v195 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v219, @"isScreenShot"];
                                v295 = v233;
                                v196 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v295 forKeys:&v294 count:1];
                                v197 = [v193 initWithDomain:v228 code:2 userInfo:v196];
                                v224 = 0;
                                v34 = 0;
                                *v256 = v197;
                                v183 = v196;
                              }

                              v33 = v262;
                              goto LABEL_227;
                            }

                            objc_opt_class();
                            if (objc_opt_isKindOfClass())
                            {
                              v184 = v165;
                              v185 = [BMFeatureDouble alloc];
                              v271 = 0;
                              v225 = [(BMFeatureDouble *)v185 initWithJSONDictionary:v184 error:&v271];
                              v186 = v271;
                              if (!v186)
                              {

                                goto LABEL_177;
                              }

                              if (v256)
                              {
                                v186 = v186;
                                *v256 = v186;
                              }

                              v234 = v184;
                              v34 = 0;
LABEL_211:
                              v33 = v262;
                              goto LABEL_230;
                            }

                            if (v256)
                            {
                              v235 = objc_alloc(MEMORY[0x1E696ABC0]);
                              v227 = *MEMORY[0x1E698F240];
                              v296 = *MEMORY[0x1E696A578];
                              v190 = objc_alloc(MEMORY[0x1E696AEC0]);
                              v218 = objc_opt_class();
                              v191 = v190;
                              v10 = v260;
                              v225 = [v191 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", v218, @"timeSinceLastShare"];
                              v297 = v225;
                              v192 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v297 forKeys:&v296 count:1];
                              *v256 = [v235 initWithDomain:v227 code:2 userInfo:v192];

                              v34 = 0;
                              v234 = v230;
                              goto LABEL_211;
                            }

                            v34 = 0;
                            v33 = v262;
LABEL_167:
                            v163 = v230;
                            goto LABEL_231;
                          }
                        }
                      }
                    }
                  }

                  obj = v102;
                  if (v256)
                  {
                    v103 = objc_alloc(MEMORY[0x1E696ABC0]);
                    v104 = *MEMORY[0x1E698F240];
                    v312 = *MEMORY[0x1E696A578];
                    v250 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Expecting %@ as an array", @"feedbackEvents"];
                    v313 = v250;
                    v238 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v313 forKeys:&v312 count:1];
                    v105 = [v103 initWithDomain:v104 code:2 userInfo:?];
                    v34 = 0;
                    *v256 = v105;
                    v33 = v262;
                    self = v257;

                    goto LABEL_236;
                  }

                  v34 = 0;
                  v33 = v262;
                  v13 = v254;
                  self = v257;
LABEL_238:

                  goto LABEL_239;
                }

                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  v241 = v80;
LABEL_103:

                  v81 = v23;
                  goto LABEL_104;
                }

                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  v98 = v80;
                  v241 = [MEMORY[0x1E696AD98] numberWithInt:BMSharingAppFromString(v98)];

                  goto LABEL_103;
                }

                v252 = v23;
                if (v256)
                {
                  v153 = objc_alloc(MEMORY[0x1E696ABC0]);
                  v154 = *MEMORY[0x1E698F240];
                  v314 = *MEMORY[0x1E696A578];
                  v155 = v14;
                  v156 = objc_alloc(MEMORY[0x1E696AEC0]);
                  v217 = objc_opt_class();
                  v157 = v156;
                  v14 = v155;
                  obj = [v157 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (corresponding to enum value), or NSString (string version of enum)", v217, @"appSharedFrom"];
                  v315 = obj;
                  v158 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v315 forKeys:&v314 count:1];
                  v159 = v154;
                  v10 = v260;
                  v251 = v158;
                  v160 = [v153 initWithDomain:v159 code:2 userInfo:?];
                  v241 = 0;
                  v34 = 0;
                  *v256 = v160;
                  v33 = v262;
                  v13 = v254;

                  goto LABEL_238;
                }

                v241 = 0;
                v34 = 0;
LABEL_183:
                v33 = v262;
                v23 = v252;
                v13 = v254;
LABEL_239:

                goto LABEL_240;
              }

              v252 = v23;
              if (v256)
              {
                v90 = objc_alloc(MEMORY[0x1E696ABC0]);
                v91 = *MEMORY[0x1E698F240];
                v316 = *MEMORY[0x1E696A578];
                v92 = v14;
                v93 = objc_alloc(MEMORY[0x1E696AEC0]);
                v215 = objc_opt_class();
                v94 = v93;
                v14 = v92;
                v241 = [v94 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v215, @"isSharePlayAvailable"];
                v317 = v241;
                v95 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v317 forKeys:&v316 count:1];
                v96 = v91;
                v10 = v260;
                v242 = v95;
                v97 = [v90 initWithDomain:v96 code:2 userInfo:?];
                v243 = 0;
                v34 = 0;
                *v256 = v97;
                goto LABEL_183;
              }

              v243 = 0;
              v34 = 0;
LABEL_162:
              v33 = v262;
              v23 = v252;
              v13 = v254;
LABEL_240:

              goto LABEL_241;
            }

            v252 = v23;
            if (v256)
            {
              v82 = objc_alloc(MEMORY[0x1E696ABC0]);
              v83 = *MEMORY[0x1E698F240];
              v318 = *MEMORY[0x1E696A578];
              v84 = v14;
              v85 = objc_alloc(MEMORY[0x1E696AEC0]);
              v214 = objc_opt_class();
              v86 = v85;
              v14 = v84;
              v243 = [v86 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v214, @"isFallbackFetch"];
              v319 = v243;
              v87 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v319 forKeys:&v318 count:1];
              v88 = v83;
              v10 = v260;
              v244 = v87;
              v89 = [v82 initWithDomain:v88 code:2 userInfo:?];
              v245 = 0;
              v34 = 0;
              *v256 = v89;
              goto LABEL_162;
            }

            v245 = 0;
            v34 = 0;
            v33 = v262;
            v13 = v254;
LABEL_241:

LABEL_242:
LABEL_243:

            goto LABEL_244;
          }

          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v74 = v29;
            v30 = [MEMORY[0x1E696AD98] numberWithInt:BMMadResponseStatusFromString(v74)];

            goto LABEL_81;
          }

          if (v256)
          {
            v142 = objc_alloc(MEMORY[0x1E696ABC0]);
            v143 = *MEMORY[0x1E698F240];
            v320 = *MEMORY[0x1E696A578];
            v144 = objc_alloc(MEMORY[0x1E696AEC0]);
            v216 = objc_opt_class();
            v145 = v144;
            v10 = v260;
            v245 = [v145 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (corresponding to enum value), or NSString (string version of enum)", v216, @"madResponseStatus"];
            v321 = v245;
            v246 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v321 forKeys:&v320 count:1];
            v146 = [v142 initWithDomain:v143 code:2 userInfo:?];
            v30 = 0;
            v34 = 0;
            *v256 = v146;
            v33 = v262;
            v13 = v254;
            goto LABEL_241;
          }

          v30 = 0;
          v34 = 0;
          v33 = v262;
LABEL_170:
          v13 = v254;
          goto LABEL_242;
        }

        if (v256)
        {
          v68 = objc_alloc(MEMORY[0x1E696ABC0]);
          v69 = *MEMORY[0x1E698F240];
          v329 = *MEMORY[0x1E696A578];
          v264 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Expecting %@ as an array", @"candidates"];
          v330 = v264;
          v23 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v330 forKeys:&v329 count:1];
          v70 = [v68 initWithDomain:v69 code:2 userInfo:v23];
          v34 = 0;
          *v256 = v70;
          v33 = v262;
          goto LABEL_245;
        }

        v34 = 0;
        v7 = v255;
        v33 = v262;
LABEL_247:

        goto LABEL_248;
      }

      if (!a4)
      {
        v34 = 0;
        v33 = v262;
LABEL_251:

        v38 = v261;
        goto LABEL_252;
      }

      v48 = v7;
      v49 = objc_alloc(MEMORY[0x1E696ABC0]);
      v50 = *MEMORY[0x1E698F240];
      v333 = *MEMORY[0x1E696A578];
      v45 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", objc_opt_class(), @"trialIdentifiers"];
      v334 = v45;
      v51 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v334 forKeys:&v333 count:1];
      v52 = v49;
      v7 = v48;
      *a4 = [v52 initWithDomain:v50 code:2 userInfo:v51];

      v34 = 0;
      v31 = v10;
LABEL_51:
      v33 = v262;
LABEL_250:

      v10 = v31;
      goto LABEL_251;
    }

    if (a4)
    {
      v42 = v7;
      v43 = objc_alloc(MEMORY[0x1E696ABC0]);
      v44 = *MEMORY[0x1E698F240];
      v335 = *MEMORY[0x1E696A578];
      v31 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"sessionId"];
      v336 = v31;
      v45 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v336 forKeys:&v335 count:1];
      v46 = v43;
      v7 = v42;
      v47 = [v46 initWithDomain:v44 code:2 userInfo:v45];
      v261 = 0;
      v34 = 0;
      *a4 = v47;
      goto LABEL_51;
    }

    v38 = 0;
    v34 = 0;
    v33 = v262;
LABEL_252:

    goto LABEL_253;
  }

  if (a4)
  {
    v35 = v7;
    v36 = objc_alloc(MEMORY[0x1E696ABC0]);
    v37 = *MEMORY[0x1E698F240];
    v337 = *MEMORY[0x1E696A578];
    v38 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"deviceIdentifier"];
    v338[0] = v38;
    v39 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v338 forKeys:&v337 count:1];
    v40 = v36;
    v7 = v35;
    v263 = v39;
    v41 = [v40 initWithDomain:v37 code:2 userInfo:?];
    v33 = 0;
    v34 = 0;
    *a4 = v41;
    goto LABEL_252;
  }

  v33 = 0;
  v34 = 0;
LABEL_253:

  v211 = *MEMORY[0x1E69E9840];
  return v34;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMShareEvent *)self writeTo:v3];
  v4 = [v3 immutableData];

  return v4;
}

- (void)writeTo:(id)a3
{
  v57 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (self->_deviceIdentifier)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_sessionId)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_trialIdentifiers)
  {
    v52 = 0;
    PBDataWriterPlaceMark();
    [(BMTrialIdentifiers *)self->_trialIdentifiers writeTo:v4];
    PBDataWriterRecallMark();
  }

  if (self->_hasVersion)
  {
    version = self->_version;
    PBDataWriterWriteInt32Field();
  }

  v50 = 0u;
  v51 = 0u;
  v48 = 0u;
  v49 = 0u;
  v6 = self->_candidates;
  v7 = [(NSArray *)v6 countByEnumeratingWithState:&v48 objects:v56 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v49;
    do
    {
      v10 = 0;
      do
      {
        if (*v49 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v48 + 1) + 8 * v10);
        v52 = 0;
        PBDataWriterPlaceMark();
        [v11 writeTo:v4];
        PBDataWriterRecallMark();
        ++v10;
      }

      while (v8 != v10);
      v8 = [(NSArray *)v6 countByEnumeratingWithState:&v48 objects:v56 count:16];
    }

    while (v8);
  }

  if (self->_testKey)
  {
    PBDataWriterWriteStringField();
  }

  madResponseStatus = self->_madResponseStatus;
  PBDataWriterWriteUint32Field();
  if (self->_hasIsFallbackFetch)
  {
    isFallbackFetch = self->_isFallbackFetch;
    PBDataWriterWriteBOOLField();
  }

  if (self->_hasIsSharePlayAvailable)
  {
    isSharePlayAvailable = self->_isSharePlayAvailable;
    PBDataWriterWriteBOOLField();
  }

  appSharedFrom = self->_appSharedFrom;
  PBDataWriterWriteUint32Field();
  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  v16 = self->_feedbackEvents;
  v17 = [(NSArray *)v16 countByEnumeratingWithState:&v44 objects:v55 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v45;
    do
    {
      v20 = 0;
      do
      {
        if (*v45 != v19)
        {
          objc_enumerationMutation(v16);
        }

        v21 = *(*(&v44 + 1) + 8 * v20);
        v52 = 0;
        PBDataWriterPlaceMark();
        [v21 writeTo:v4];
        PBDataWriterRecallMark();
        ++v20;
      }

      while (v18 != v20);
      v18 = [(NSArray *)v16 countByEnumeratingWithState:&v44 objects:v55 count:16];
    }

    while (v18);
  }

  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  v22 = self->_typeOfContent;
  v23 = [(NSArray *)v22 countByEnumeratingWithState:&v40 objects:v54 count:16];
  if (v23)
  {
    v24 = v23;
    v25 = *v41;
    do
    {
      v26 = 0;
      do
      {
        if (*v41 != v25)
        {
          objc_enumerationMutation(v22);
        }

        [*(*(&v40 + 1) + 8 * v26) unsignedIntValue];
        PBDataWriterWriteUint32Field();
        ++v26;
      }

      while (v24 != v26);
      v24 = [(NSArray *)v22 countByEnumeratingWithState:&v40 objects:v54 count:16];
    }

    while (v24);
  }

  if (self->_hasIsInPhoneCall)
  {
    isInPhoneCall = self->_isInPhoneCall;
    PBDataWriterWriteBOOLField();
  }

  if (self->_timeSinceLastShare)
  {
    v52 = 0;
    PBDataWriterPlaceMark();
    [(BMFeatureDouble *)self->_timeSinceLastShare writeTo:v4];
    PBDataWriterRecallMark();
  }

  if (self->_hasIsScreenShot)
  {
    isScreenShot = self->_isScreenShot;
    PBDataWriterWriteBOOLField();
  }

  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v29 = self->_photoFeatures;
  v30 = [(NSArray *)v29 countByEnumeratingWithState:&v36 objects:v53 count:16];
  if (v30)
  {
    v31 = v30;
    v32 = *v37;
    do
    {
      v33 = 0;
      do
      {
        if (*v37 != v32)
        {
          objc_enumerationMutation(v29);
        }

        v34 = *(*(&v36 + 1) + 8 * v33);
        v52 = 0;
        PBDataWriterPlaceMark();
        [v34 writeTo:{v4, v36}];
        PBDataWriterRecallMark();
        ++v33;
      }

      while (v31 != v33);
      v31 = [(NSArray *)v29 countByEnumeratingWithState:&v36 objects:v53 count:16];
    }

    while (v31);
  }

  v35 = *MEMORY[0x1E69E9840];
}

- (id)initByReadFrom:(id)a3
{
  v4 = a3;
  v99.receiver = self;
  v99.super_class = BMShareEvent;
  v5 = [(BMEventBase *)&v99 init];
  if (!v5)
  {
LABEL_150:
    v96 = v5;
    goto LABEL_151;
  }

  v6 = objc_opt_new();
  v7 = objc_opt_new();
  v8 = objc_opt_new();
  v9 = objc_opt_new();
  v10 = [v4 position];
  if (v10 >= [v4 length])
  {
LABEL_148:
    v87 = [v6 copy];
    candidates = v5->_candidates;
    v5->_candidates = v87;

    v89 = [v7 copy];
    feedbackEvents = v5->_feedbackEvents;
    v5->_feedbackEvents = v89;

    v91 = [v8 copy];
    typeOfContent = v5->_typeOfContent;
    v5->_typeOfContent = v91;

    v93 = [v9 copy];
    photoFeatures = v5->_photoFeatures;
    v5->_photoFeatures = v93;

    v95 = [v4 hasError];
    if (v95)
    {
      goto LABEL_149;
    }

    goto LABEL_150;
  }

  v98 = v6;
  while (2)
  {
    if ([v4 hasError])
    {
      goto LABEL_148;
    }

    v11 = 0;
    v12 = 0;
    v13 = 0;
    while (1)
    {
      LOBYTE(v100) = 0;
      v14 = [v4 position] + 1;
      if (v14 >= [v4 position] && (v15 = objc_msgSend(v4, "position") + 1, v15 <= objc_msgSend(v4, "length")))
      {
        v16 = [v4 data];
        [v16 getBytes:&v100 range:{objc_msgSend(v4, "position"), 1}];

        [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
      }

      else
      {
        [v4 _setError];
      }

      v13 |= (v100 & 0x7F) << v11;
      if ((v100 & 0x80) == 0)
      {
        break;
      }

      v11 += 7;
      v17 = v12++ >= 9;
      if (v17)
      {
        v18 = 0;
        goto LABEL_17;
      }
    }

    v18 = [v4 hasError] ? 0 : v13;
LABEL_17:
    if (([v4 hasError] & 1) != 0 || (v18 & 7) == 4)
    {
      goto LABEL_148;
    }

    switch((v18 >> 3))
    {
      case 1u:
        v19 = PBReaderReadString();
        v20 = 48;
        goto LABEL_86;
      case 2u:
        v19 = PBReaderReadString();
        v20 = 56;
        goto LABEL_86;
      case 3u:
        v100 = 0;
        v101 = 0;
        if (!PBReaderPlaceMark())
        {
          goto LABEL_152;
        }

        v51 = [[BMTrialIdentifiers alloc] initByReadFrom:v4];
        if (!v51)
        {
          goto LABEL_152;
        }

        v52 = 64;
        goto LABEL_90;
      case 4u:
        v54 = 0;
        v55 = 0;
        v56 = 0;
        v5->_hasVersion = 1;
        while (1)
        {
          LOBYTE(v100) = 0;
          v57 = [v4 position] + 1;
          if (v57 >= [v4 position] && (v58 = objc_msgSend(v4, "position") + 1, v58 <= objc_msgSend(v4, "length")))
          {
            v59 = [v4 data];
            [v59 getBytes:&v100 range:{objc_msgSend(v4, "position"), 1}];

            [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
          }

          else
          {
            [v4 _setError];
          }

          v56 |= (v100 & 0x7F) << v54;
          if ((v100 & 0x80) == 0)
          {
            break;
          }

          v54 += 7;
          v17 = v55++ >= 9;
          if (v17)
          {
            v60 = 0;
            goto LABEL_132;
          }
        }

        if ([v4 hasError])
        {
          v60 = 0;
        }

        else
        {
          v60 = v56;
        }

LABEL_132:
        v5->_version = v60;
        goto LABEL_143;
      case 5u:
        v100 = 0;
        v101 = 0;
        if (!PBReaderPlaceMark())
        {
          goto LABEL_152;
        }

        v36 = [[BMCandidate alloc] initByReadFrom:v4];
        if (!v36)
        {
          goto LABEL_152;
        }

        v37 = v36;
        v38 = v6;
        goto LABEL_103;
      case 6u:
        v19 = PBReaderReadString();
        v20 = 80;
LABEL_86:
        v68 = *(&v5->super.super.isa + v20);
        *(&v5->super.super.isa + v20) = v19;

        goto LABEL_144;
      case 7u:
        v70 = 0;
        v71 = 0;
        v47 = 0;
        while (1)
        {
          LOBYTE(v100) = 0;
          v72 = [v4 position] + 1;
          if (v72 >= [v4 position] && (v73 = objc_msgSend(v4, "position") + 1, v73 <= objc_msgSend(v4, "length")))
          {
            v74 = [v4 data];
            [v74 getBytes:&v100 range:{objc_msgSend(v4, "position"), 1}];

            [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
          }

          else
          {
            [v4 _setError];
          }

          v47 |= (v100 & 0x7F) << v70;
          if ((v100 & 0x80) == 0)
          {
            break;
          }

          v70 += 7;
          v35 = v71++ > 8;
          if (v35)
          {
            goto LABEL_137;
          }
        }

        if (([v4 hasError] & 1) != 0 || v47 > 4)
        {
LABEL_137:
          LODWORD(v47) = 0;
        }

        v84 = 36;
        goto LABEL_139;
      case 8u:
        v61 = 0;
        v62 = 0;
        v63 = 0;
        v5->_hasIsFallbackFetch = 1;
        while (1)
        {
          LOBYTE(v100) = 0;
          v64 = [v4 position] + 1;
          if (v64 >= [v4 position] && (v65 = objc_msgSend(v4, "position") + 1, v65 <= objc_msgSend(v4, "length")))
          {
            v66 = [v4 data];
            [v66 getBytes:&v100 range:{objc_msgSend(v4, "position"), 1}];

            [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
          }

          else
          {
            [v4 _setError];
          }

          v63 |= (v100 & 0x7F) << v61;
          if ((v100 & 0x80) == 0)
          {
            break;
          }

          v61 += 7;
          v17 = v62++ >= 9;
          if (v17)
          {
            LOBYTE(v67) = 0;
            goto LABEL_134;
          }
        }

        v67 = (v63 != 0) & ~[v4 hasError];
LABEL_134:
        v85 = 17;
        goto LABEL_142;
      case 9u:
        v76 = 0;
        v77 = 0;
        v78 = 0;
        v5->_hasIsSharePlayAvailable = 1;
        while (1)
        {
          LOBYTE(v100) = 0;
          v79 = [v4 position] + 1;
          if (v79 >= [v4 position] && (v80 = objc_msgSend(v4, "position") + 1, v80 <= objc_msgSend(v4, "length")))
          {
            v81 = [v4 data];
            [v81 getBytes:&v100 range:{objc_msgSend(v4, "position"), 1}];

            [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
          }

          else
          {
            [v4 _setError];
          }

          v78 |= (v100 & 0x7F) << v76;
          if ((v100 & 0x80) == 0)
          {
            break;
          }

          v76 += 7;
          v17 = v77++ >= 9;
          if (v17)
          {
            LOBYTE(v67) = 0;
            goto LABEL_141;
          }
        }

        v67 = (v78 != 0) & ~[v4 hasError];
LABEL_141:
        v85 = 19;
LABEL_142:
        *(&v5->super.super.isa + v85) = v67;
LABEL_143:
        v6 = v98;
        goto LABEL_144;
      case 0xAu:
        v45 = 0;
        v46 = 0;
        v47 = 0;
        while (1)
        {
          LOBYTE(v100) = 0;
          v48 = [v4 position] + 1;
          if (v48 >= [v4 position] && (v49 = objc_msgSend(v4, "position") + 1, v49 <= objc_msgSend(v4, "length")))
          {
            v50 = [v4 data];
            [v50 getBytes:&v100 range:{objc_msgSend(v4, "position"), 1}];

            [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
          }

          else
          {
            [v4 _setError];
          }

          v47 |= (v100 & 0x7F) << v45;
          if ((v100 & 0x80) == 0)
          {
            break;
          }

          v45 += 7;
          v35 = v46++ > 8;
          if (v35)
          {
            goto LABEL_127;
          }
        }

        if (([v4 hasError] & 1) != 0 || v47 > 4)
        {
LABEL_127:
          LODWORD(v47) = 0;
        }

        v84 = 40;
LABEL_139:
        *(&v5->super.super.isa + v84) = v47;
        goto LABEL_144;
      case 0xBu:
        v100 = 0;
        v101 = 0;
        if (!PBReaderPlaceMark())
        {
          goto LABEL_152;
        }

        v75 = [[BMFeedbackMessage alloc] initByReadFrom:v4];
        if (!v75)
        {
          goto LABEL_152;
        }

        v37 = v75;
        v38 = v7;
        goto LABEL_103;
      case 0xCu:
        v28 = 0;
        v29 = 0;
        v30 = 0;
        v31 = MEMORY[0x1E696AD98];
        while (1)
        {
          LOBYTE(v100) = 0;
          v32 = [v4 position] + 1;
          if (v32 >= [v4 position] && (v33 = objc_msgSend(v4, "position") + 1, v33 <= objc_msgSend(v4, "length")))
          {
            v34 = [v4 data];
            [v34 getBytes:&v100 range:{objc_msgSend(v4, "position"), 1}];

            [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
          }

          else
          {
            [v4 _setError];
          }

          v30 |= (v100 & 0x7F) << v28;
          if ((v100 & 0x80) == 0)
          {
            break;
          }

          v28 += 7;
          v35 = v29++ > 8;
          if (v35)
          {
            goto LABEL_118;
          }
        }

        if ([v4 hasError])
        {
LABEL_118:
          v30 = 0;
          v6 = v98;
          goto LABEL_119;
        }

        v6 = v98;
        if (v30 > 0xD)
        {
          v30 = 0;
        }

LABEL_119:
        v83 = [v31 numberWithUnsignedInt:v30];
        if (v83)
        {
          v37 = v83;
          [v8 addObject:v83];
LABEL_121:

LABEL_144:
          v86 = [v4 position];
          if (v86 >= [v4 length])
          {
            goto LABEL_148;
          }

          continue;
        }

LABEL_152:

LABEL_149:
        v96 = 0;
LABEL_151:

        return v96;
      case 0xDu:
        v39 = 0;
        v40 = 0;
        v41 = 0;
        v5->_hasIsInPhoneCall = 1;
        while (1)
        {
          LOBYTE(v100) = 0;
          v42 = [v4 position] + 1;
          if (v42 >= [v4 position] && (v43 = objc_msgSend(v4, "position") + 1, v43 <= objc_msgSend(v4, "length")))
          {
            v44 = [v4 data];
            [v44 getBytes:&v100 range:{objc_msgSend(v4, "position"), 1}];

            [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
          }

          else
          {
            [v4 _setError];
          }

          v41 |= (v100 & 0x7F) << v39;
          if ((v100 & 0x80) == 0)
          {
            break;
          }

          v39 += 7;
          v17 = v40++ >= 9;
          if (v17)
          {
            LOBYTE(v27) = 0;
            goto LABEL_123;
          }
        }

        v27 = (v41 != 0) & ~[v4 hasError];
LABEL_123:
        v82 = 21;
        goto LABEL_124;
      case 0xEu:
        v100 = 0;
        v101 = 0;
        if (!PBReaderPlaceMark())
        {
          goto LABEL_152;
        }

        v51 = [[BMFeatureDouble alloc] initByReadFrom:v4];
        if (!v51)
        {
          goto LABEL_152;
        }

        v52 = 104;
LABEL_90:
        v69 = *(&v5->super.super.isa + v52);
        *(&v5->super.super.isa + v52) = v51;

        PBReaderRecallMark();
        goto LABEL_144;
      case 0xFu:
        v21 = 0;
        v22 = 0;
        v23 = 0;
        v5->_hasIsScreenShot = 1;
        while (1)
        {
          LOBYTE(v100) = 0;
          v24 = [v4 position] + 1;
          if (v24 >= [v4 position] && (v25 = objc_msgSend(v4, "position") + 1, v25 <= objc_msgSend(v4, "length")))
          {
            v26 = [v4 data];
            [v26 getBytes:&v100 range:{objc_msgSend(v4, "position"), 1}];

            [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
          }

          else
          {
            [v4 _setError];
          }

          v23 |= (v100 & 0x7F) << v21;
          if ((v100 & 0x80) == 0)
          {
            break;
          }

          v21 += 7;
          v17 = v22++ >= 9;
          if (v17)
          {
            LOBYTE(v27) = 0;
            goto LABEL_116;
          }
        }

        v27 = (v23 != 0) & ~[v4 hasError];
LABEL_116:
        v82 = 23;
LABEL_124:
        *(&v5->super.super.isa + v82) = v27;
        goto LABEL_144;
      case 0x10u:
        v100 = 0;
        v101 = 0;
        if (!PBReaderPlaceMark())
        {
          goto LABEL_152;
        }

        v53 = [[BMPhotoFeatures alloc] initByReadFrom:v4];
        if (!v53)
        {
          goto LABEL_152;
        }

        v37 = v53;
        v38 = v9;
LABEL_103:
        [v38 addObject:v37];
        PBReaderRecallMark();
        goto LABEL_121;
      default:
        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          goto LABEL_152;
        }

        goto LABEL_144;
    }
  }
}

- (NSString)description
{
  v35 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  [v3 appendString:@"["];
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v4 = [(BMShareEvent *)self typeOfContent];
  v5 = [v4 countByEnumeratingWithState:&v30 objects:v34 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v31;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v31 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v30 + 1) + 8 * i);
        if ([v3 length] != 1)
        {
          [v3 appendString:{@", "}];
        }

        v10 = BMContentTypeAsString([v9 unsignedIntValue]);
        [v3 appendString:v10];
      }

      v6 = [v4 countByEnumeratingWithState:&v30 objects:v34 count:16];
    }

    while (v6);
  }

  [v3 appendString:@"]"];
  v26 = objc_alloc(MEMORY[0x1E696AEC0]);
  v25 = [(BMShareEvent *)self deviceIdentifier];
  v24 = [(BMShareEvent *)self sessionId];
  v29 = [(BMShareEvent *)self trialIdentifiers];
  v23 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMShareEvent version](self, "version")}];
  v22 = [(BMShareEvent *)self candidates];
  v28 = [(BMShareEvent *)self testKey];
  v21 = BMMadResponseStatusAsString([(BMShareEvent *)self madResponseStatus]);
  v20 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMShareEvent isFallbackFetch](self, "isFallbackFetch")}];
  v19 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMShareEvent isSharePlayAvailable](self, "isSharePlayAvailable")}];
  v18 = BMSharingAppAsString([(BMShareEvent *)self appSharedFrom]);
  v17 = [(BMShareEvent *)self feedbackEvents];
  v11 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMShareEvent isInPhoneCall](self, "isInPhoneCall")}];
  v12 = [(BMShareEvent *)self timeSinceLastShare];
  v13 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMShareEvent isScreenShot](self, "isScreenShot")}];
  v14 = [(BMShareEvent *)self photoFeatures];
  v27 = [v26 initWithFormat:@"BMShareEvent with deviceIdentifier: %@, sessionId: %@, trialIdentifiers: %@, version: %@, candidates: %@, testKey: %@, madResponseStatus: %@, isFallbackFetch: %@, isSharePlayAvailable: %@, appSharedFrom: %@, feedbackEvents: %@, typeOfContent: %@, isInPhoneCall: %@, timeSinceLastShare: %@, isScreenShot: %@, photoFeatures: %@", v25, v24, v29, v23, v22, v28, v21, v20, v19, v18, v17, v3, v11, v12, v13, v14];

  v15 = *MEMORY[0x1E69E9840];

  return v27;
}

- (BMShareEvent)initWithDeviceIdentifier:(id)a3 sessionId:(id)a4 trialIdentifiers:(id)a5 version:(id)a6 candidates:(id)a7 testKey:(id)a8 madResponseStatus:(int)a9 isFallbackFetch:(id)a10 isSharePlayAvailable:(id)a11 appSharedFrom:(int)a12 feedbackEvents:(id)a13 typeOfContent:(id)a14 isInPhoneCall:(id)a15 timeSinceLastShare:(id)a16 isScreenShot:(id)a17 photoFeatures:(id)a18
{
  v43 = a3;
  v34 = a4;
  v42 = a4;
  v35 = a5;
  v41 = a5;
  v23 = a6;
  v40 = a7;
  v39 = a8;
  v24 = a10;
  v44 = a11;
  v38 = a13;
  v37 = a14;
  v25 = a15;
  v26 = a16;
  v27 = a17;
  v28 = a18;
  v45.receiver = self;
  v45.super_class = BMShareEvent;
  v29 = [(BMEventBase *)&v45 init];
  if (v29)
  {
    v29->_dataVersion = [objc_opt_class() latestDataVersion];
    objc_storeStrong(&v29->_deviceIdentifier, a3);
    objc_storeStrong(&v29->_sessionId, v34);
    objc_storeStrong(&v29->_trialIdentifiers, v35);
    if (v23)
    {
      v29->_hasVersion = 1;
      v30 = [v23 intValue];
    }

    else
    {
      v29->_hasVersion = 0;
      v30 = -1;
    }

    v29->_version = v30;
    objc_storeStrong(&v29->_candidates, a7);
    objc_storeStrong(&v29->_testKey, a8);
    v29->_madResponseStatus = a9;
    if (v24)
    {
      v29->_hasIsFallbackFetch = 1;
      v31 = v24;
      v29->_isFallbackFetch = [v24 BOOLValue];
    }

    else
    {
      v31 = 0;
      v29->_hasIsFallbackFetch = 0;
      v29->_isFallbackFetch = 0;
    }

    if (v44)
    {
      v29->_hasIsSharePlayAvailable = 1;
      v29->_isSharePlayAvailable = [v44 BOOLValue];
    }

    else
    {
      v29->_hasIsSharePlayAvailable = 0;
      v29->_isSharePlayAvailable = 0;
    }

    v29->_appSharedFrom = a12;
    objc_storeStrong(&v29->_feedbackEvents, a13);
    objc_storeStrong(&v29->_typeOfContent, a14);
    if (v25)
    {
      v29->_hasIsInPhoneCall = 1;
      v29->_isInPhoneCall = [v25 BOOLValue];
    }

    else
    {
      v29->_hasIsInPhoneCall = 0;
      v29->_isInPhoneCall = 0;
    }

    v24 = v31;
    objc_storeStrong(&v29->_timeSinceLastShare, a16);
    if (v27)
    {
      v29->_hasIsScreenShot = 1;
      v29->_isScreenShot = [v27 BOOLValue];
    }

    else
    {
      v29->_hasIsScreenShot = 0;
      v29->_isScreenShot = 0;
    }

    objc_storeStrong(&v29->_photoFeatures, a18);
  }

  return v29;
}

+ (id)protoFields
{
  v21[16] = *MEMORY[0x1E69E9840];
  v20 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"deviceIdentifier" number:1 type:13 subMessageClass:0];
  v21[0] = v20;
  v19 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"sessionId" number:2 type:13 subMessageClass:0];
  v21[1] = v19;
  v18 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"trialIdentifiers" number:3 type:14 subMessageClass:objc_opt_class()];
  v21[2] = v18;
  v17 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"version" number:4 type:2 subMessageClass:0];
  v21[3] = v17;
  v16 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"candidates" number:5 type:14 subMessageClass:objc_opt_class()];
  v21[4] = v16;
  v15 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"testKey" number:6 type:13 subMessageClass:0];
  v21[5] = v15;
  v14 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"madResponseStatus" number:7 type:4 subMessageClass:0];
  v21[6] = v14;
  v2 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"isFallbackFetch" number:8 type:12 subMessageClass:0];
  v21[7] = v2;
  v3 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"isSharePlayAvailable" number:9 type:12 subMessageClass:0];
  v21[8] = v3;
  v4 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"appSharedFrom" number:10 type:4 subMessageClass:0];
  v21[9] = v4;
  v5 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"feedbackEvents" number:11 type:14 subMessageClass:objc_opt_class()];
  v21[10] = v5;
  v6 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"typeOfContent" number:12 type:4 subMessageClass:0];
  v21[11] = v6;
  v7 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"isInPhoneCall" number:13 type:12 subMessageClass:0];
  v21[12] = v7;
  v8 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"timeSinceLastShare" number:14 type:14 subMessageClass:objc_opt_class()];
  v21[13] = v8;
  v9 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"isScreenShot" number:15 type:12 subMessageClass:0];
  v21[14] = v9;
  v10 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"photoFeatures" number:16 type:14 subMessageClass:objc_opt_class()];
  v21[15] = v10;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v21 count:16];

  v12 = *MEMORY[0x1E69E9840];

  return v11;
}

+ (id)columns
{
  v21[16] = *MEMORY[0x1E69E9840];
  v20 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"deviceIdentifier" dataType:2 requestOnly:0 fieldNumber:1 protoDataType:13 convertedType:0];
  v19 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"sessionId" dataType:2 requestOnly:0 fieldNumber:2 protoDataType:13 convertedType:0];
  v18 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"trialIdentifiers_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_546];
  v17 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"version" dataType:0 requestOnly:0 fieldNumber:4 protoDataType:2 convertedType:0];
  v16 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"candidates_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_548];
  v15 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"testKey" dataType:2 requestOnly:0 fieldNumber:6 protoDataType:13 convertedType:0];
  v2 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"madResponseStatus" dataType:0 requestOnly:0 fieldNumber:7 protoDataType:4 convertedType:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"isFallbackFetch" dataType:0 requestOnly:0 fieldNumber:8 protoDataType:12 convertedType:0];
  v4 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"isSharePlayAvailable" dataType:0 requestOnly:0 fieldNumber:9 protoDataType:12 convertedType:0];
  v5 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"appSharedFrom" dataType:0 requestOnly:0 fieldNumber:10 protoDataType:4 convertedType:0];
  v14 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"feedbackEvents_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_550];
  v6 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"typeOfContent_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_552];
  v7 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"isInPhoneCall" dataType:0 requestOnly:0 fieldNumber:13 protoDataType:12 convertedType:0];
  v13 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"timeSinceLastShare_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_554];
  v8 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"isScreenShot" dataType:0 requestOnly:0 fieldNumber:15 protoDataType:12 convertedType:0];
  v9 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"photoFeatures_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_556];
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

id __23__BMShareEvent_columns__block_invoke_6(uint64_t a1, void *a2)
{
  v2 = [a2 eventBodyKeepingBackingData:1];
  v3 = [v2 _photoFeaturesJSONArray];
  v4 = BMConvertObjectToJSONString();

  return v4;
}

id __23__BMShareEvent_columns__block_invoke_5(uint64_t a1, void *a2)
{
  v2 = [a2 eventBodyKeepingBackingData:1];
  v3 = [v2 timeSinceLastShare];
  v4 = [v3 jsonDictionary];
  v5 = BMConvertObjectToJSONString();

  return v5;
}

id __23__BMShareEvent_columns__block_invoke_4(uint64_t a1, void *a2)
{
  v2 = [a2 eventBodyKeepingBackingData:1];
  v3 = [v2 _typeOfContentJSONArray];
  v4 = BMConvertObjectToJSONString();

  return v4;
}

id __23__BMShareEvent_columns__block_invoke_3(uint64_t a1, void *a2)
{
  v2 = [a2 eventBodyKeepingBackingData:1];
  v3 = [v2 _feedbackEventsJSONArray];
  v4 = BMConvertObjectToJSONString();

  return v4;
}

id __23__BMShareEvent_columns__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = [a2 eventBodyKeepingBackingData:1];
  v3 = [v2 _candidatesJSONArray];
  v4 = BMConvertObjectToJSONString();

  return v4;
}

id __23__BMShareEvent_columns__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 eventBodyKeepingBackingData:1];
  v3 = [v2 trialIdentifiers];
  v4 = [v3 jsonDictionary];
  v5 = BMConvertObjectToJSONString();

  return v5;
}

+ (BMShareEvent)eventWithData:(id)a3 dataVersion:(unsigned int)a4
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

    v8 = [[BMShareEvent alloc] initByReadFrom:v7];
    v4 = v8;
    if (v8)
    {
      v8[7] = 0;
    }
  }

  return v4;
}

@end