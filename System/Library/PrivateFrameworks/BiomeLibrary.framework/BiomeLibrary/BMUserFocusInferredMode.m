@interface BMUserFocusInferredMode
+ (id)columns;
+ (id)eventWithData:(id)a3 dataVersion:(unsigned int)a4;
+ (id)protoFields;
- (BMUserFocusInferredMode)initWithAbsoluteTimestamp:(id)a3 modeIdentifier:(id)a4 origin:(int)a5 originBundleID:(id)a6 isAutomationEnabled:(id)a7 isStart:(id)a8 uuid:(id)a9 originAnchorType:(id)a10 uiLocation:(id)a11 confidenceScore:(id)a12 serializedTriggers:(id)a13 modeType:(int)a14 shouldSuggestTriggers:(id)a15 userModeName:(id)a16;
- (BMUserFocusInferredMode)initWithJSONDictionary:(id)a3 error:(id *)a4;
- (BOOL)isEqual:(id)a3;
- (NSDate)absoluteTimestamp;
- (NSString)description;
- (id)_serializedTriggersJSONArray;
- (id)initByReadFrom:(id)a3;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)a3;
@end

@implementation BMUserFocusInferredMode

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [(BMUserFocusInferredMode *)self absoluteTimestamp];
    v7 = [v5 absoluteTimestamp];
    v8 = v7;
    if (v6 == v7)
    {
    }

    else
    {
      v9 = [(BMUserFocusInferredMode *)self absoluteTimestamp];
      v10 = [v5 absoluteTimestamp];
      v11 = [v9 isEqual:v10];

      if (!v11)
      {
        goto LABEL_54;
      }
    }

    v13 = [(BMUserFocusInferredMode *)self modeIdentifier];
    v14 = [v5 modeIdentifier];
    v15 = v14;
    if (v13 == v14)
    {
    }

    else
    {
      v16 = [(BMUserFocusInferredMode *)self modeIdentifier];
      v17 = [v5 modeIdentifier];
      v18 = [v16 isEqual:v17];

      if (!v18)
      {
        goto LABEL_54;
      }
    }

    v19 = [(BMUserFocusInferredMode *)self origin];
    if (v19 == [v5 origin])
    {
      v20 = [(BMUserFocusInferredMode *)self originBundleID];
      v21 = [v5 originBundleID];
      v22 = v21;
      if (v20 == v21)
      {
      }

      else
      {
        v23 = [(BMUserFocusInferredMode *)self originBundleID];
        v24 = [v5 originBundleID];
        v25 = [v23 isEqual:v24];

        if (!v25)
        {
          goto LABEL_54;
        }
      }

      if (-[BMUserFocusInferredMode hasIsAutomationEnabled](self, "hasIsAutomationEnabled") || [v5 hasIsAutomationEnabled])
      {
        if (![(BMUserFocusInferredMode *)self hasIsAutomationEnabled])
        {
          goto LABEL_54;
        }

        if (![v5 hasIsAutomationEnabled])
        {
          goto LABEL_54;
        }

        v26 = [(BMUserFocusInferredMode *)self isAutomationEnabled];
        if (v26 != [v5 isAutomationEnabled])
        {
          goto LABEL_54;
        }
      }

      if (-[BMUserFocusInferredMode hasIsStart](self, "hasIsStart") || [v5 hasIsStart])
      {
        if (![(BMUserFocusInferredMode *)self hasIsStart])
        {
          goto LABEL_54;
        }

        if (![v5 hasIsStart])
        {
          goto LABEL_54;
        }

        v27 = [(BMUserFocusInferredMode *)self isStart];
        if (v27 != [v5 isStart])
        {
          goto LABEL_54;
        }
      }

      v28 = [(BMUserFocusInferredMode *)self uuid];
      v29 = [v5 uuid];
      v30 = v29;
      if (v28 == v29)
      {
      }

      else
      {
        v31 = [(BMUserFocusInferredMode *)self uuid];
        v32 = [v5 uuid];
        v33 = [v31 isEqual:v32];

        if (!v33)
        {
          goto LABEL_54;
        }
      }

      v34 = [(BMUserFocusInferredMode *)self originAnchorType];
      v35 = [v5 originAnchorType];
      v36 = v35;
      if (v34 == v35)
      {
      }

      else
      {
        v37 = [(BMUserFocusInferredMode *)self originAnchorType];
        v38 = [v5 originAnchorType];
        v39 = [v37 isEqual:v38];

        if (!v39)
        {
          goto LABEL_54;
        }
      }

      if (-[BMUserFocusInferredMode hasUiLocation](self, "hasUiLocation") || [v5 hasUiLocation])
      {
        if (![(BMUserFocusInferredMode *)self hasUiLocation])
        {
          goto LABEL_54;
        }

        if (![v5 hasUiLocation])
        {
          goto LABEL_54;
        }

        v40 = [(BMUserFocusInferredMode *)self uiLocation];
        if (v40 != [v5 uiLocation])
        {
          goto LABEL_54;
        }
      }

      if (-[BMUserFocusInferredMode hasConfidenceScore](self, "hasConfidenceScore") || [v5 hasConfidenceScore])
      {
        if (![(BMUserFocusInferredMode *)self hasConfidenceScore])
        {
          goto LABEL_54;
        }

        if (![v5 hasConfidenceScore])
        {
          goto LABEL_54;
        }

        [(BMUserFocusInferredMode *)self confidenceScore];
        v42 = v41;
        [v5 confidenceScore];
        if (v42 != v43)
        {
          goto LABEL_54;
        }
      }

      v44 = [(BMUserFocusInferredMode *)self serializedTriggers];
      v45 = [v5 serializedTriggers];
      v46 = v45;
      if (v44 == v45)
      {
      }

      else
      {
        v47 = [(BMUserFocusInferredMode *)self serializedTriggers];
        v48 = [v5 serializedTriggers];
        v49 = [v47 isEqual:v48];

        if (!v49)
        {
          goto LABEL_54;
        }
      }

      v50 = [(BMUserFocusInferredMode *)self modeType];
      if (v50 == [v5 modeType])
      {
        if (!-[BMUserFocusInferredMode hasShouldSuggestTriggers](self, "hasShouldSuggestTriggers") && ![v5 hasShouldSuggestTriggers] || -[BMUserFocusInferredMode hasShouldSuggestTriggers](self, "hasShouldSuggestTriggers") && objc_msgSend(v5, "hasShouldSuggestTriggers") && (v51 = -[BMUserFocusInferredMode shouldSuggestTriggers](self, "shouldSuggestTriggers"), v51 == objc_msgSend(v5, "shouldSuggestTriggers")))
        {
          v53 = [(BMUserFocusInferredMode *)self userModeName];
          v54 = [v5 userModeName];
          if (v53 == v54)
          {
            v12 = 1;
          }

          else
          {
            v55 = [(BMUserFocusInferredMode *)self userModeName];
            v56 = [v5 userModeName];
            v12 = [v55 isEqual:v56];
          }

          goto LABEL_55;
        }
      }
    }

LABEL_54:
    v12 = 0;
LABEL_55:

    goto LABEL_56;
  }

  v12 = 0;
LABEL_56:

  return v12;
}

- (NSDate)absoluteTimestamp
{
  if (self->_hasRaw_absoluteTimestamp)
  {
    v2 = MEMORY[0x1E698F280];
    v3 = [MEMORY[0x1E696AD98] numberWithDouble:self->_raw_absoluteTimestamp];
    v4 = [v2 convertValue:v3 toType:1];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)jsonDictionary
{
  v55[14] = *MEMORY[0x1E69E9840];
  v3 = [(BMUserFocusInferredMode *)self absoluteTimestamp];
  if (v3)
  {
    v4 = MEMORY[0x1E696AD98];
    v5 = [(BMUserFocusInferredMode *)self absoluteTimestamp];
    [v5 timeIntervalSinceReferenceDate];
    v6 = [v4 numberWithDouble:?];
  }

  else
  {
    v6 = 0;
  }

  v7 = [(BMUserFocusInferredMode *)self modeIdentifier];
  v8 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMUserFocusInferredMode origin](self, "origin")}];
  v9 = [(BMUserFocusInferredMode *)self originBundleID];
  if ([(BMUserFocusInferredMode *)self hasIsAutomationEnabled])
  {
    v10 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMUserFocusInferredMode isAutomationEnabled](self, "isAutomationEnabled")}];
  }

  else
  {
    v10 = 0;
  }

  if ([(BMUserFocusInferredMode *)self hasIsStart])
  {
    v11 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMUserFocusInferredMode isStart](self, "isStart")}];
  }

  else
  {
    v11 = 0;
  }

  v53 = [(BMUserFocusInferredMode *)self uuid];
  v52 = [(BMUserFocusInferredMode *)self originAnchorType];
  if ([(BMUserFocusInferredMode *)self hasUiLocation])
  {
    v51 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[BMUserFocusInferredMode uiLocation](self, "uiLocation")}];
  }

  else
  {
    v51 = 0;
  }

  if (![(BMUserFocusInferredMode *)self hasConfidenceScore]|| ([(BMUserFocusInferredMode *)self confidenceScore], fabs(v12) == INFINITY))
  {
    v50 = 0;
  }

  else
  {
    [(BMUserFocusInferredMode *)self confidenceScore];
    v13 = MEMORY[0x1E696AD98];
    [(BMUserFocusInferredMode *)self confidenceScore];
    v50 = [v13 numberWithDouble:?];
  }

  v49 = [(BMUserFocusInferredMode *)self _serializedTriggersJSONArray];
  v48 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMUserFocusInferredMode modeType](self, "modeType")}];
  if ([(BMUserFocusInferredMode *)self hasShouldSuggestTriggers])
  {
    v14 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMUserFocusInferredMode shouldSuggestTriggers](self, "shouldSuggestTriggers")}];
  }

  else
  {
    v14 = 0;
  }

  v15 = [(BMUserFocusInferredMode *)self userModeName];
  v54[0] = @"absoluteTimestamp";
  v16 = v6;
  if (!v6)
  {
    v16 = [MEMORY[0x1E695DFB0] null];
  }

  v42 = v16;
  v55[0] = v16;
  v54[1] = @"modeIdentifier";
  v17 = v7;
  if (!v7)
  {
    v17 = [MEMORY[0x1E695DFB0] null];
  }

  v41 = v17;
  v55[1] = v17;
  v54[2] = @"origin";
  v18 = v8;
  if (!v8)
  {
    v18 = [MEMORY[0x1E695DFB0] null];
  }

  v40 = v18;
  v55[2] = v18;
  v54[3] = @"originBundleID";
  v19 = v9;
  if (!v9)
  {
    v19 = [MEMORY[0x1E695DFB0] null];
  }

  v39 = v19;
  v55[3] = v19;
  v54[4] = @"isAutomationEnabled";
  v20 = v10;
  if (!v10)
  {
    v20 = [MEMORY[0x1E695DFB0] null];
  }

  v38 = v20;
  v55[4] = v20;
  v54[5] = @"isStart";
  v21 = v11;
  if (!v11)
  {
    v21 = [MEMORY[0x1E695DFB0] null];
  }

  v47 = v8;
  v37 = v21;
  v55[5] = v21;
  v54[6] = @"uuid";
  v22 = v53;
  if (!v53)
  {
    v22 = [MEMORY[0x1E695DFB0] null];
  }

  v46 = v10;
  v55[6] = v22;
  v54[7] = @"originAnchorType";
  v23 = v52;
  if (!v52)
  {
    v23 = [MEMORY[0x1E695DFB0] null];
  }

  v45 = v11;
  v55[7] = v23;
  v54[8] = @"uiLocation";
  v24 = v51;
  if (!v51)
  {
    v24 = [MEMORY[0x1E695DFB0] null];
  }

  v55[8] = v24;
  v54[9] = @"confidenceScore";
  v25 = v50;
  if (!v50)
  {
    v25 = [MEMORY[0x1E695DFB0] null];
  }

  v34 = v23;
  v36 = v22;
  v44 = v6;
  v55[9] = v25;
  v54[10] = @"serializedTriggers";
  v26 = v49;
  if (!v49)
  {
    v26 = [MEMORY[0x1E695DFB0] null];
  }

  v27 = v7;
  v55[10] = v26;
  v54[11] = @"modeType";
  v28 = v48;
  if (!v48)
  {
    v28 = [MEMORY[0x1E695DFB0] null];
  }

  v55[11] = v28;
  v54[12] = @"shouldSuggestTriggers";
  v29 = v14;
  v30 = v14;
  if (!v14)
  {
    v29 = [MEMORY[0x1E695DFB0] null];
  }

  v55[12] = v29;
  v54[13] = @"userModeName";
  v31 = v15;
  if (!v15)
  {
    v31 = [MEMORY[0x1E695DFB0] null];
  }

  v55[13] = v31;
  v43 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v55 forKeys:v54 count:{14, v34}];
  if (!v15)
  {
  }

  if (!v30)
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

  if (v45)
  {
    if (v46)
    {
      goto LABEL_66;
    }
  }

  else
  {

    if (v46)
    {
LABEL_66:
      if (v9)
      {
        goto LABEL_67;
      }

      goto LABEL_75;
    }
  }

  if (v9)
  {
LABEL_67:
    if (v47)
    {
      goto LABEL_68;
    }

    goto LABEL_76;
  }

LABEL_75:

  if (v47)
  {
LABEL_68:
    if (v27)
    {
      goto LABEL_69;
    }

LABEL_77:

    if (v44)
    {
      goto LABEL_70;
    }

    goto LABEL_78;
  }

LABEL_76:

  if (!v27)
  {
    goto LABEL_77;
  }

LABEL_69:
  if (v44)
  {
    goto LABEL_70;
  }

LABEL_78:

LABEL_70:
  v32 = *MEMORY[0x1E69E9840];

  return v43;
}

- (id)_serializedTriggersJSONArray
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = [(BMUserFocusInferredMode *)self serializedTriggers];
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

        v9 = [*(*(&v12 + 1) + 8 * i) base64EncodedStringWithOptions:0];
        [v3 addObject:v9];
      }

      v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  v10 = *MEMORY[0x1E69E9840];

  return v3;
}

- (BMUserFocusInferredMode)initWithJSONDictionary:(id)a3 error:(id *)a4
{
  v222[1] = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = [v5 objectForKeyedSubscript:@"absoluteTimestamp"];
  if (!v6 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v7 = 0;
    goto LABEL_9;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = MEMORY[0x1E695DF00];
    v9 = v6;
    v10 = [v8 alloc];
    [v9 doubleValue];
    v12 = v11;

    v13 = [v10 initWithTimeIntervalSinceReferenceDate:v12];
LABEL_6:
    v7 = v13;
    goto LABEL_9;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      if (!a4)
      {
        v111 = 0;
        v40 = 0;
        goto LABEL_143;
      }

      v125 = objc_alloc(MEMORY[0x1E696ABC0]);
      v126 = *MEMORY[0x1E698F240];
      v221 = *MEMORY[0x1E696A578];
      v127 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (as time internal since 2001 (CFAbsoluteTime)), NSString (ISO8601 format), or NSDate", objc_opt_class(), @"absoluteTimestamp"];
      v222[0] = v127;
      v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v222 forKeys:&v221 count:1];
      v128 = [v125 initWithDomain:v126 code:2 userInfo:v15];
      v111 = 0;
      v40 = 0;
      *a4 = v128;
      v35 = v127;
      goto LABEL_142;
    }

    v13 = v6;
    goto LABEL_6;
  }

  v14 = objc_alloc_init(MEMORY[0x1E696AC80]);
  v7 = [v14 dateFromString:v6];

LABEL_9:
  v15 = [v5 objectForKeyedSubscript:@"modeIdentifier"];
  v183 = v6;
  v184 = v7;
  if (!v15 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v16 = 0;
    goto LABEL_12;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v16 = v15;
LABEL_12:
    v17 = [v5 objectForKeyedSubscript:@"origin"];
    if (!v17 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v180 = 0;
      goto LABEL_15;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v180 = v17;
      goto LABEL_15;
    }

    v35 = v16;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v180 = [MEMORY[0x1E696AD98] numberWithInt:BMUserFocusInferredModeOriginFromString(v17)];
LABEL_15:
      v18 = [v5 objectForKeyedSubscript:@"originBundleID"];
      v181 = v16;
      v182 = v18;
      if (!v18 || (v19 = v18, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
      {
        v20 = 0;
        goto LABEL_18;
      }

      v35 = v16;
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v20 = v19;
LABEL_18:
        v21 = [v5 objectForKeyedSubscript:@"isAutomationEnabled"];
        v178 = v20;
        if (!v21 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
        {
          v174 = v21;
          v175 = 0;
          goto LABEL_21;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v174 = v21;
          v175 = v21;
LABEL_21:
          v22 = [v5 objectForKeyedSubscript:@"isStart"];
          v177 = v22;
          if (!v22 || (v23 = v22, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
          {
            v176 = 0;
            goto LABEL_24;
          }

          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v176 = v23;
LABEL_24:
            v24 = [v5 objectForKeyedSubscript:@"uuid"];
            v173 = v24;
            if (!v24 || (v25 = v24, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
            {
              v166 = 0;
LABEL_27:
              v26 = [v5 objectForKeyedSubscript:@"originAnchorType"];
              v171 = v26;
              if (v26 && (v27 = v26, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
              {
                objc_opt_class();
                if ((objc_opt_isKindOfClass() & 1) == 0)
                {
                  if (!a4)
                  {
                    v172 = 0;
                    v40 = 0;
                    v38 = v180;
                    v49 = v174;
                    v77 = v166;
                    goto LABEL_135;
                  }

                  v99 = objc_alloc(MEMORY[0x1E696ABC0]);
                  v100 = v15;
                  v101 = *MEMORY[0x1E698F240];
                  v207 = *MEMORY[0x1E696A578];
                  v102 = v17;
                  v103 = objc_alloc(MEMORY[0x1E696AEC0]);
                  v152 = objc_opt_class();
                  v104 = v103;
                  v17 = v102;
                  v105 = [v104 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", v152, @"originAnchorType"];
                  v208 = v105;
                  v106 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v208 forKeys:&v207 count:1];
                  v107 = v101;
                  v15 = v100;
                  v58 = v105;
                  v165 = v106;
                  v108 = [v99 initWithDomain:v107 code:2 userInfo:?];
                  v172 = 0;
                  v40 = 0;
                  *a4 = v108;
                  v20 = v178;
                  v38 = v180;
                  goto LABEL_148;
                }

                v172 = v27;
              }

              else
              {
                v172 = 0;
              }

              v28 = [v5 objectForKeyedSubscript:@"uiLocation"];
              v165 = v28;
              if (!v28 || (v29 = v28, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
              {
                v161 = 0;
LABEL_33:
                v30 = [v5 objectForKeyedSubscript:@"confidenceScore"];
                v159 = v17;
                v160 = v15;
                v163 = v30;
                if (v30 && (v31 = v30, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
                {
                  objc_opt_class();
                  if ((objc_opt_isKindOfClass() & 1) == 0)
                  {
                    if (a4)
                    {
                      v122 = objc_alloc(MEMORY[0x1E696ABC0]);
                      v123 = *MEMORY[0x1E698F240];
                      v203 = *MEMORY[0x1E696A578];
                      v32 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"confidenceScore"];
                      v204 = v32;
                      v50 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v204 forKeys:&v203 count:1];
                      v124 = [v122 initWithDomain:v123 code:2 userInfo:v50];
                      v164 = 0;
                      v40 = 0;
                      *a4 = v124;
                      v20 = v178;
                      v38 = v180;
                      v49 = v174;
                      v77 = v166;
                      v58 = v161;
                      goto LABEL_131;
                    }

                    v164 = 0;
                    v40 = 0;
                    v20 = v178;
                    v38 = v180;
                    v49 = v174;
                    v77 = v166;
                    v58 = v161;
                    goto LABEL_133;
                  }

                  v164 = v31;
                }

                else
                {
                  v164 = 0;
                }

                v32 = [v5 objectForKeyedSubscript:@"serializedTriggers"];
                v33 = [MEMORY[0x1E695DFB0] null];
                v34 = [v32 isEqual:v33];

                if (v34)
                {
                  v169 = self;

                  v32 = 0;
                }

                else
                {
                  if (v32)
                  {
                    objc_opt_class();
                    if ((objc_opt_isKindOfClass() & 1) == 0)
                    {
                      if (!a4)
                      {
                        v40 = 0;
                        v20 = v178;
                        v38 = v180;
                        v49 = v174;
                        v77 = v166;
                        v58 = v161;
                        goto LABEL_132;
                      }

                      v129 = objc_alloc(MEMORY[0x1E696ABC0]);
                      v130 = *MEMORY[0x1E698F240];
                      v201 = *MEMORY[0x1E696A578];
                      v50 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Expecting %@ as an array", @"serializedTriggers"];
                      v202 = v50;
                      v131 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v202 forKeys:&v201 count:1];
                      v132 = [v129 initWithDomain:v130 code:2 userInfo:v131];
                      v40 = 0;
                      *a4 = v132;
                      v121 = v131;
                      goto LABEL_107;
                    }
                  }

                  v169 = self;
                }

                v50 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v32, "count")}];
                v186 = 0u;
                v187 = 0u;
                v188 = 0u;
                v189 = 0u;
                v32 = v32;
                v51 = [v32 countByEnumeratingWithState:&v186 objects:v200 count:16];
                if (!v51)
                {
                  goto LABEL_70;
                }

                v52 = v51;
                v53 = *v187;
LABEL_63:
                v54 = 0;
                while (1)
                {
                  if (*v187 != v53)
                  {
                    objc_enumerationMutation(v32);
                  }

                  v55 = *(*(&v186 + 1) + 8 * v54);
                  objc_opt_class();
                  if (objc_opt_isKindOfClass())
                  {
                    break;
                  }

                  objc_opt_class();
                  if ((objc_opt_isKindOfClass() & 1) == 0)
                  {
                    if (a4)
                    {
                      v109 = objc_alloc(MEMORY[0x1E696ABC0]);
                      v110 = *MEMORY[0x1E698F240];
                      v196 = *MEMORY[0x1E696A578];
                      v156 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSData", objc_opt_class(), @"serializedTriggers"];
                      v197 = v156;
                      v96 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v197 forKeys:&v196 count:1];
                      v97 = v109;
                      v98 = v110;
                      goto LABEL_93;
                    }

                    goto LABEL_97;
                  }

                  [v50 addObject:v55];
                  if (v52 == ++v54)
                  {
                    v52 = [v32 countByEnumeratingWithState:&v186 objects:v200 count:16];
                    if (v52)
                    {
                      goto LABEL_63;
                    }

LABEL_70:

                    v56 = [v5 objectForKeyedSubscript:@"modeType"];
                    v156 = v56;
                    if (!v56)
                    {
                      v158 = 0;
                      self = v169;
LABEL_110:
                      v20 = v178;
                      v77 = v166;
                      v58 = v161;
                      goto LABEL_117;
                    }

                    v57 = v56;
                    objc_opt_class();
                    self = v169;
                    v58 = v161;
                    if (objc_opt_isKindOfClass())
                    {
                      v158 = 0;
                      goto LABEL_116;
                    }

                    objc_opt_class();
                    if (objc_opt_isKindOfClass())
                    {
                      v158 = v57;
LABEL_116:
                      v20 = v178;
                      v77 = v166;
LABEL_117:
                      v133 = [v5 objectForKeyedSubscript:@"shouldSuggestTriggers"];
                      v170 = v133;
                      if (!v133 || (v134 = v133, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                      {
                        v157 = 0;
                        goto LABEL_120;
                      }

                      objc_opt_class();
                      if (objc_opt_isKindOfClass())
                      {
                        v157 = v134;
LABEL_120:
                        v135 = [v5 objectForKeyedSubscript:@"userModeName"];
                        v167 = v135;
                        if (!v135)
                        {
LABEL_123:
                          v38 = v180;
                          goto LABEL_124;
                        }

                        objc_opt_class();
                        if (objc_opt_isKindOfClass())
                        {
                          v135 = 0;
                          goto LABEL_123;
                        }

                        objc_opt_class();
                        v38 = v180;
                        if (objc_opt_isKindOfClass())
                        {
                          v135 = v135;
                          v20 = v178;
LABEL_124:
                          v136 = [v38 intValue];
                          LODWORD(v154) = [v158 intValue];
                          self = [(BMUserFocusInferredMode *)self initWithAbsoluteTimestamp:v184 modeIdentifier:v181 origin:v136 originBundleID:v20 isAutomationEnabled:v175 isStart:v176 uuid:v77 originAnchorType:v172 uiLocation:v58 confidenceScore:v164 serializedTriggers:v50 modeType:v154 shouldSuggestTriggers:v157 userModeName:v135];
                          v40 = self;
                        }

                        else
                        {
                          if (a4)
                          {
                            v162 = objc_alloc(MEMORY[0x1E696ABC0]);
                            v155 = *MEMORY[0x1E698F240];
                            v190 = *MEMORY[0x1E696A578];
                            v143 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"userModeName"];
                            v191 = v143;
                            v144 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v191 forKeys:&v190 count:1];
                            *a4 = [v162 initWithDomain:v155 code:2 userInfo:v144];
                          }

                          v135 = 0;
                          v40 = 0;
                          v20 = v178;
                        }

LABEL_125:
                      }

                      else
                      {
                        if (a4)
                        {
                          v140 = objc_alloc(MEMORY[0x1E696ABC0]);
                          v168 = *MEMORY[0x1E698F240];
                          v192 = *MEMORY[0x1E696A578];
                          v135 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"shouldSuggestTriggers"];
                          v193 = v135;
                          v141 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v193 forKeys:&v192 count:1];
                          v142 = v168;
                          v167 = v141;
                          v157 = 0;
                          v40 = 0;
                          *a4 = [v140 initWithDomain:v142 code:2 userInfo:?];
                          v20 = v178;
                          v38 = v180;
                          goto LABEL_125;
                        }

                        v157 = 0;
                        v40 = 0;
                        v20 = v178;
                        v38 = v180;
                      }

                      v137 = v170;
LABEL_127:

LABEL_128:
                      v49 = v174;

                      goto LABEL_129;
                    }

                    objc_opt_class();
                    if (objc_opt_isKindOfClass())
                    {
                      v158 = [MEMORY[0x1E696AD98] numberWithInt:BMUserFocusInferredModeTypeFromString(v57)];
                      goto LABEL_110;
                    }

                    if (a4)
                    {
                      v145 = objc_alloc(MEMORY[0x1E696ABC0]);
                      v146 = *MEMORY[0x1E698F240];
                      v194 = *MEMORY[0x1E696A578];
                      v157 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (corresponding to enum value), or NSString (string version of enum)", objc_opt_class(), @"modeType"];
                      v195 = v157;
                      v137 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v195 forKeys:&v194 count:1];
                      v158 = 0;
                      v40 = 0;
                      *a4 = [v145 initWithDomain:v146 code:2 userInfo:v137];
                      v20 = v178;
                      v38 = v180;
                      v77 = v166;
                      v58 = v161;
                      goto LABEL_127;
                    }

                    v158 = 0;
                    v40 = 0;
                    v20 = v178;
                    v38 = v180;
                    v49 = v174;
                    v77 = v166;
                    v58 = v161;
LABEL_129:

                    v121 = v158;
LABEL_130:

LABEL_131:
                    v17 = v159;
LABEL_132:

                    v15 = v160;
LABEL_133:

LABEL_134:
LABEL_135:
                    v48 = v175;
LABEL_136:

                    goto LABEL_137;
                  }
                }

                if (a4)
                {
                  v94 = objc_alloc(MEMORY[0x1E696ABC0]);
                  v95 = *MEMORY[0x1E698F240];
                  v198 = *MEMORY[0x1E696A578];
                  v156 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type null for element of %@, must not be null", @"serializedTriggers"];
                  v199 = v156;
                  v96 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v199 forKeys:&v198 count:1];
                  v97 = v94;
                  v98 = v95;
LABEL_93:
                  v157 = v96;
                  v77 = v166;
                  self = v169;
                  v20 = v178;
                  v38 = v180;
                  v58 = v161;
                  v40 = 0;
                  *a4 = [v97 initWithDomain:v98 code:2 userInfo:?];
                  v158 = v32;
                  goto LABEL_128;
                }

LABEL_97:
                v40 = 0;
                v121 = v32;
                self = v169;
LABEL_107:
                v20 = v178;
                v38 = v180;
                v49 = v174;
                v77 = v166;
                v58 = v161;
                goto LABEL_130;
              }

              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v161 = v29;
                goto LABEL_33;
              }

              if (a4)
              {
                v112 = objc_alloc(MEMORY[0x1E696ABC0]);
                v113 = v15;
                v114 = *MEMORY[0x1E698F240];
                v205 = *MEMORY[0x1E696A578];
                v115 = v17;
                v116 = objc_alloc(MEMORY[0x1E696AEC0]);
                v153 = objc_opt_class();
                v117 = v116;
                v17 = v115;
                v164 = [v117 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v153, @"uiLocation"];
                v206 = v164;
                v118 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v206 forKeys:&v205 count:1];
                v119 = v114;
                v15 = v113;
                v163 = v118;
                v120 = [v112 initWithDomain:v119 code:2 userInfo:?];
                v58 = 0;
                v40 = 0;
                *a4 = v120;
                v38 = v180;
                v49 = v174;
                v77 = v166;
                goto LABEL_133;
              }

              v58 = 0;
              v40 = 0;
              v38 = v180;
LABEL_148:
              v49 = v174;
              v77 = v166;
              goto LABEL_134;
            }

            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v166 = v25;
              goto LABEL_27;
            }

            if (a4)
            {
              v79 = objc_alloc(MEMORY[0x1E696ABC0]);
              v80 = v15;
              v81 = *MEMORY[0x1E698F240];
              v209 = *MEMORY[0x1E696A578];
              v82 = v17;
              v83 = objc_alloc(MEMORY[0x1E696AEC0]);
              v150 = objc_opt_class();
              v84 = v83;
              v17 = v82;
              v172 = [v84 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", v150, @"uuid"];
              v210 = v172;
              v85 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v210 forKeys:&v209 count:1];
              v86 = v81;
              v15 = v80;
              v48 = v175;
              v171 = v85;
              v87 = [v79 initWithDomain:v86 code:2 userInfo:?];
              v77 = 0;
              v40 = 0;
              *a4 = v87;
              v38 = v180;
              v49 = v174;
              goto LABEL_136;
            }

            v40 = 0;
            v38 = v180;
            v49 = v174;
            v48 = v175;
            v77 = 0;
LABEL_137:

            goto LABEL_138;
          }

          if (a4)
          {
            v68 = objc_alloc(MEMORY[0x1E696ABC0]);
            v69 = v15;
            v70 = *MEMORY[0x1E698F240];
            v211 = *MEMORY[0x1E696A578];
            v71 = v17;
            v72 = objc_alloc(MEMORY[0x1E696AEC0]);
            v149 = objc_opt_class();
            v73 = v72;
            v17 = v71;
            v74 = [v73 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v149, @"isStart"];
            v212 = v74;
            v75 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v212 forKeys:&v211 count:1];
            v76 = v70;
            v15 = v69;
            v77 = v74;
            v48 = v175;
            v173 = v75;
            v78 = [v68 initWithDomain:v76 code:2 userInfo:?];
            v176 = 0;
            v40 = 0;
            *a4 = v78;
            v38 = v180;
            v49 = v174;
            goto LABEL_137;
          }

          v176 = 0;
          v40 = 0;
          v38 = v180;
          v49 = v174;
          v48 = v175;
LABEL_138:

          goto LABEL_139;
        }

        if (a4)
        {
          v59 = objc_alloc(MEMORY[0x1E696ABC0]);
          v60 = v15;
          v61 = *MEMORY[0x1E698F240];
          v213 = *MEMORY[0x1E696A578];
          v62 = v17;
          v63 = objc_alloc(MEMORY[0x1E696AEC0]);
          v148 = objc_opt_class();
          v49 = v21;
          v64 = v63;
          v17 = v62;
          v176 = [v64 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v148, @"isAutomationEnabled"];
          v214 = v176;
          v65 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v214 forKeys:&v213 count:1];
          v66 = v61;
          v15 = v60;
          v177 = v65;
          v67 = [v59 initWithDomain:v66 code:2 userInfo:?];
          v48 = 0;
          v40 = 0;
          *a4 = v67;
          v38 = v180;
          goto LABEL_138;
        }

        v40 = 0;
        v38 = v180;
        v49 = v21;
        v48 = 0;
LABEL_139:
        v111 = v184;

        v35 = v181;
        goto LABEL_140;
      }

      v40 = a4;
      if (a4)
      {
        v179 = objc_alloc(MEMORY[0x1E696ABC0]);
        v41 = *MEMORY[0x1E698F240];
        v215 = *MEMORY[0x1E696A578];
        v42 = v15;
        v43 = objc_alloc(MEMORY[0x1E696AEC0]);
        v147 = objc_opt_class();
        v44 = v43;
        v15 = v42;
        v45 = [v44 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", v147, @"originBundleID"];
        v216 = v45;
        v46 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v216 forKeys:&v215 count:1];
        v47 = [v179 initWithDomain:v41 code:2 userInfo:v46];
        v20 = 0;
        v40 = 0;
        *a4 = v47;
        v48 = v45;
        v49 = v46;
        v38 = v180;
        goto LABEL_139;
      }

      v20 = 0;
      v38 = v180;
LABEL_99:
      v111 = v184;
LABEL_140:

      goto LABEL_141;
    }

    v38 = a4;
    if (a4)
    {
      v88 = objc_alloc(MEMORY[0x1E696ABC0]);
      v89 = *MEMORY[0x1E698F240];
      v217 = *MEMORY[0x1E696A578];
      v90 = v15;
      v91 = objc_alloc(MEMORY[0x1E696AEC0]);
      v151 = objc_opt_class();
      v92 = v91;
      v15 = v90;
      v20 = [v92 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (corresponding to enum value), or NSString (string version of enum)", v151, @"origin"];
      v218 = v20;
      v182 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v218 forKeys:&v217 count:1];
      v93 = [v88 initWithDomain:v89 code:2 userInfo:?];
      v38 = 0;
      v40 = 0;
      *a4 = v93;
      goto LABEL_99;
    }

    v40 = 0;
LABEL_113:
    v111 = v184;
LABEL_141:

    v6 = v183;
    goto LABEL_142;
  }

  if (a4)
  {
    v36 = objc_alloc(MEMORY[0x1E696ABC0]);
    v37 = *MEMORY[0x1E698F240];
    v219 = *MEMORY[0x1E696A578];
    v38 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"modeIdentifier"];
    v220 = v38;
    v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v220 forKeys:&v219 count:1];
    v39 = [v36 initWithDomain:v37 code:2 userInfo:v17];
    v35 = 0;
    v40 = 0;
    *a4 = v39;
    goto LABEL_113;
  }

  v40 = 0;
  v35 = 0;
  v111 = v7;
LABEL_142:

LABEL_143:
  v138 = *MEMORY[0x1E69E9840];
  return v40;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMUserFocusInferredMode *)self writeTo:v3];
  v4 = [v3 immutableData];

  return v4;
}

- (void)writeTo:(id)a3
{
  v25 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (self->_hasRaw_absoluteTimestamp)
  {
    raw_absoluteTimestamp = self->_raw_absoluteTimestamp;
    PBDataWriterWriteDoubleField();
  }

  if (self->_modeIdentifier)
  {
    PBDataWriterWriteStringField();
  }

  origin = self->_origin;
  PBDataWriterWriteUint32Field();
  if (self->_originBundleID)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_hasIsAutomationEnabled)
  {
    isAutomationEnabled = self->_isAutomationEnabled;
    PBDataWriterWriteBOOLField();
  }

  if (self->_hasIsStart)
  {
    isStart = self->_isStart;
    PBDataWriterWriteBOOLField();
  }

  if (self->_uuid)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_originAnchorType)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_hasUiLocation)
  {
    uiLocation = self->_uiLocation;
    PBDataWriterWriteUint64Field();
  }

  if (self->_hasConfidenceScore)
  {
    confidenceScore = self->_confidenceScore;
    PBDataWriterWriteDoubleField();
  }

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v11 = self->_serializedTriggers;
  v12 = [(NSArray *)v11 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v21;
    do
    {
      v15 = 0;
      do
      {
        if (*v21 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v20 + 1) + 8 * v15);
        PBDataWriterWriteDataField();
        ++v15;
      }

      while (v13 != v15);
      v13 = [(NSArray *)v11 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v13);
  }

  modeType = self->_modeType;
  PBDataWriterWriteUint32Field();
  if (self->_hasShouldSuggestTriggers)
  {
    shouldSuggestTriggers = self->_shouldSuggestTriggers;
    PBDataWriterWriteBOOLField();
  }

  if (self->_userModeName)
  {
    PBDataWriterWriteStringField();
  }

  v19 = *MEMORY[0x1E69E9840];
}

- (id)initByReadFrom:(id)a3
{
  v4 = a3;
  v75.receiver = self;
  v75.super_class = BMUserFocusInferredMode;
  v5 = [(BMEventBase *)&v75 init];
  if (!v5)
  {
    goto LABEL_117;
  }

  v6 = objc_opt_new();
  v7 = [v4 position];
  if (v7 < [v4 length])
  {
    do
    {
      if ([v4 hasError])
      {
        break;
      }

      v8 = 0;
      v9 = 0;
      v10 = 0;
      while (1)
      {
        LOBYTE(v76) = 0;
        v11 = [v4 position] + 1;
        if (v11 >= [v4 position] && (v12 = objc_msgSend(v4, "position") + 1, v12 <= objc_msgSend(v4, "length")))
        {
          v13 = [v4 data];
          [v13 getBytes:&v76 range:{objc_msgSend(v4, "position"), 1}];

          [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
        }

        else
        {
          [v4 _setError];
        }

        v10 |= (v76 & 0x7F) << v8;
        if ((v76 & 0x80) == 0)
        {
          break;
        }

        v8 += 7;
        v14 = v9++ >= 9;
        if (v14)
        {
          v15 = 0;
          goto LABEL_16;
        }
      }

      v15 = [v4 hasError] ? 0 : v10;
LABEL_16:
      if (([v4 hasError] & 1) != 0 || (v15 & 7) == 4)
      {
        break;
      }

      switch((v15 >> 3))
      {
        case 1u:
          v5->_hasRaw_absoluteTimestamp = 1;
          v76 = 0;
          v16 = [v4 position] + 8;
          if (v16 >= [v4 position] && (v17 = objc_msgSend(v4, "position") + 8, v17 <= objc_msgSend(v4, "length")))
          {
            v68 = [v4 data];
            [v68 getBytes:&v76 range:{objc_msgSend(v4, "position"), 8}];

            [v4 setPosition:{objc_msgSend(v4, "position") + 8}];
          }

          else
          {
            [v4 _setError];
          }

          v66 = v76;
          v67 = 24;
          goto LABEL_113;
        case 2u:
          v45 = PBReaderReadString();
          v46 = 56;
          goto LABEL_75;
        case 3u:
          v40 = 0;
          v41 = 0;
          v20 = 0;
          while (1)
          {
            LOBYTE(v76) = 0;
            v42 = [v4 position] + 1;
            if (v42 >= [v4 position] && (v43 = objc_msgSend(v4, "position") + 1, v43 <= objc_msgSend(v4, "length")))
            {
              v44 = [v4 data];
              [v44 getBytes:&v76 range:{objc_msgSend(v4, "position"), 1}];

              [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
            }

            else
            {
              [v4 _setError];
            }

            v20 |= (v76 & 0x7F) << v40;
            if ((v76 & 0x80) == 0)
            {
              break;
            }

            v40 += 7;
            v24 = v41++ > 8;
            if (v24)
            {
              goto LABEL_99;
            }
          }

          if (([v4 hasError] & 1) != 0 || v20 > 0x11)
          {
LABEL_99:
            LODWORD(v20) = 0;
          }

          v63 = 44;
          goto LABEL_101;
        case 4u:
          v45 = PBReaderReadString();
          v46 = 64;
          goto LABEL_75;
        case 5u:
          v25 = 0;
          v26 = 0;
          v27 = 0;
          v5->_hasIsAutomationEnabled = 1;
          while (1)
          {
            LOBYTE(v76) = 0;
            v28 = [v4 position] + 1;
            if (v28 >= [v4 position] && (v29 = objc_msgSend(v4, "position") + 1, v29 <= objc_msgSend(v4, "length")))
            {
              v30 = [v4 data];
              [v30 getBytes:&v76 range:{objc_msgSend(v4, "position"), 1}];

              [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
            }

            else
            {
              [v4 _setError];
            }

            v27 |= (v76 & 0x7F) << v25;
            if ((v76 & 0x80) == 0)
            {
              break;
            }

            v25 += 7;
            v14 = v26++ >= 9;
            if (v14)
            {
              LOBYTE(v31) = 0;
              goto LABEL_94;
            }
          }

          v31 = (v27 != 0) & ~[v4 hasError];
LABEL_94:
          v64 = 32;
          goto LABEL_104;
        case 6u:
          v47 = 0;
          v48 = 0;
          v49 = 0;
          v5->_hasIsStart = 1;
          while (1)
          {
            LOBYTE(v76) = 0;
            v50 = [v4 position] + 1;
            if (v50 >= [v4 position] && (v51 = objc_msgSend(v4, "position") + 1, v51 <= objc_msgSend(v4, "length")))
            {
              v52 = [v4 data];
              [v52 getBytes:&v76 range:{objc_msgSend(v4, "position"), 1}];

              [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
            }

            else
            {
              [v4 _setError];
            }

            v49 |= (v76 & 0x7F) << v47;
            if ((v76 & 0x80) == 0)
            {
              break;
            }

            v47 += 7;
            v14 = v48++ >= 9;
            if (v14)
            {
              LOBYTE(v31) = 0;
              goto LABEL_103;
            }
          }

          v31 = (v49 != 0) & ~[v4 hasError];
LABEL_103:
          v64 = 34;
          goto LABEL_104;
        case 7u:
          v45 = PBReaderReadString();
          v46 = 72;
          goto LABEL_75;
        case 8u:
          v45 = PBReaderReadString();
          v46 = 80;
          goto LABEL_75;
        case 9u:
          v56 = 0;
          v57 = 0;
          v58 = 0;
          v5->_hasUiLocation = 1;
          while (1)
          {
            LOBYTE(v76) = 0;
            v59 = [v4 position] + 1;
            if (v59 >= [v4 position] && (v60 = objc_msgSend(v4, "position") + 1, v60 <= objc_msgSend(v4, "length")))
            {
              v61 = [v4 data];
              [v61 getBytes:&v76 range:{objc_msgSend(v4, "position"), 1}];

              [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
            }

            else
            {
              [v4 _setError];
            }

            v58 |= (v76 & 0x7F) << v56;
            if ((v76 & 0x80) == 0)
            {
              break;
            }

            v56 += 7;
            v14 = v57++ >= 9;
            if (v14)
            {
              v62 = 0;
              goto LABEL_108;
            }
          }

          if ([v4 hasError])
          {
            v62 = 0;
          }

          else
          {
            v62 = v58;
          }

LABEL_108:
          v5->_uiLocation = v62;
          goto LABEL_114;
        case 0xAu:
          v5->_hasConfidenceScore = 1;
          v76 = 0;
          v38 = [v4 position] + 8;
          if (v38 >= [v4 position] && (v39 = objc_msgSend(v4, "position") + 8, v39 <= objc_msgSend(v4, "length")))
          {
            v65 = [v4 data];
            [v65 getBytes:&v76 range:{objc_msgSend(v4, "position"), 8}];

            [v4 setPosition:{objc_msgSend(v4, "position") + 8}];
          }

          else
          {
            [v4 _setError];
          }

          v66 = v76;
          v67 = 96;
LABEL_113:
          *(&v5->super.super.isa + v67) = v66;
          goto LABEL_114;
        case 0xBu:
          v54 = PBReaderReadData();
          if (!v54)
          {
            goto LABEL_119;
          }

          v55 = v54;
          [v6 addObject:v54];

          goto LABEL_114;
        case 0xCu:
          v18 = 0;
          v19 = 0;
          v20 = 0;
          while (1)
          {
            LOBYTE(v76) = 0;
            v21 = [v4 position] + 1;
            if (v21 >= [v4 position] && (v22 = objc_msgSend(v4, "position") + 1, v22 <= objc_msgSend(v4, "length")))
            {
              v23 = [v4 data];
              [v23 getBytes:&v76 range:{objc_msgSend(v4, "position"), 1}];

              [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
            }

            else
            {
              [v4 _setError];
            }

            v20 |= (v76 & 0x7F) << v18;
            if ((v76 & 0x80) == 0)
            {
              break;
            }

            v18 += 7;
            v24 = v19++ > 8;
            if (v24)
            {
              goto LABEL_91;
            }
          }

          if (([v4 hasError] & 1) != 0 || v20 > 0x12)
          {
LABEL_91:
            LODWORD(v20) = 0;
          }

          v63 = 48;
LABEL_101:
          *(&v5->super.super.isa + v63) = v20;
          goto LABEL_114;
        case 0xDu:
          v32 = 0;
          v33 = 0;
          v34 = 0;
          v5->_hasShouldSuggestTriggers = 1;
          break;
        case 0xEu:
          v45 = PBReaderReadString();
          v46 = 112;
LABEL_75:
          v53 = *(&v5->super.super.isa + v46);
          *(&v5->super.super.isa + v46) = v45;

          goto LABEL_114;
        default:
          if (PBReaderSkipValueWithTag())
          {
            goto LABEL_114;
          }

LABEL_119:

          goto LABEL_116;
      }

      while (1)
      {
        LOBYTE(v76) = 0;
        v35 = [v4 position] + 1;
        if (v35 >= [v4 position] && (v36 = objc_msgSend(v4, "position") + 1, v36 <= objc_msgSend(v4, "length")))
        {
          v37 = [v4 data];
          [v37 getBytes:&v76 range:{objc_msgSend(v4, "position"), 1}];

          [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
        }

        else
        {
          [v4 _setError];
        }

        v34 |= (v76 & 0x7F) << v32;
        if ((v76 & 0x80) == 0)
        {
          break;
        }

        v32 += 7;
        v14 = v33++ >= 9;
        if (v14)
        {
          LOBYTE(v31) = 0;
          goto LABEL_96;
        }
      }

      v31 = (v34 != 0) & ~[v4 hasError];
LABEL_96:
      v64 = 38;
LABEL_104:
      *(&v5->super.super.isa + v64) = v31;
LABEL_114:
      v69 = [v4 position];
    }

    while (v69 < [v4 length]);
  }

  v70 = [v6 copy];
  serializedTriggers = v5->_serializedTriggers;
  v5->_serializedTriggers = v70;

  v72 = [v4 hasError];
  if (v72)
  {
LABEL_116:
    v73 = 0;
  }

  else
  {
LABEL_117:
    v73 = v5;
  }

  return v73;
}

- (NSString)description
{
  v15 = objc_alloc(MEMORY[0x1E696AEC0]);
  v20 = [(BMUserFocusInferredMode *)self absoluteTimestamp];
  v19 = [(BMUserFocusInferredMode *)self modeIdentifier];
  v18 = BMUserFocusInferredModeOriginAsString([(BMUserFocusInferredMode *)self origin]);
  v17 = [(BMUserFocusInferredMode *)self originBundleID];
  v14 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMUserFocusInferredMode isAutomationEnabled](self, "isAutomationEnabled")}];
  v3 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMUserFocusInferredMode isStart](self, "isStart")}];
  v4 = [(BMUserFocusInferredMode *)self uuid];
  v5 = [(BMUserFocusInferredMode *)self originAnchorType];
  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[BMUserFocusInferredMode uiLocation](self, "uiLocation")}];
  v7 = MEMORY[0x1E696AD98];
  [(BMUserFocusInferredMode *)self confidenceScore];
  v8 = [v7 numberWithDouble:?];
  v9 = [(BMUserFocusInferredMode *)self serializedTriggers];
  v10 = BMUserFocusInferredModeTypeAsString([(BMUserFocusInferredMode *)self modeType]);
  v11 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMUserFocusInferredMode shouldSuggestTriggers](self, "shouldSuggestTriggers")}];
  v12 = [(BMUserFocusInferredMode *)self userModeName];
  v16 = [v15 initWithFormat:@"BMUserFocusInferredMode with absoluteTimestamp: %@, modeIdentifier: %@, origin: %@, originBundleID: %@, isAutomationEnabled: %@, isStart: %@, uuid: %@, originAnchorType: %@, uiLocation: %@, confidenceScore: %@, serializedTriggers: %@, modeType: %@, shouldSuggestTriggers: %@, userModeName: %@", v20, v19, v18, v17, v14, v3, v4, v5, v6, v8, v9, v10, v11, v12];

  return v16;
}

- (BMUserFocusInferredMode)initWithAbsoluteTimestamp:(id)a3 modeIdentifier:(id)a4 origin:(int)a5 originBundleID:(id)a6 isAutomationEnabled:(id)a7 isStart:(id)a8 uuid:(id)a9 originAnchorType:(id)a10 uiLocation:(id)a11 confidenceScore:(id)a12 serializedTriggers:(id)a13 modeType:(int)a14 shouldSuggestTriggers:(id)a15 userModeName:(id)a16
{
  v20 = a3;
  obj = a4;
  v40 = a4;
  v35 = a6;
  v39 = a6;
  v21 = a7;
  v22 = a8;
  v38 = a9;
  v37 = a10;
  v23 = a11;
  v24 = a12;
  v25 = a13;
  v26 = a15;
  v27 = a16;
  v41.receiver = self;
  v41.super_class = BMUserFocusInferredMode;
  v28 = [(BMEventBase *)&v41 init];
  if (v28)
  {
    v28->_dataVersion = [objc_opt_class() latestDataVersion];
    if (v20)
    {
      v28->_hasRaw_absoluteTimestamp = 1;
      [v20 timeIntervalSinceReferenceDate];
    }

    else
    {
      v28->_hasRaw_absoluteTimestamp = 0;
      v29 = -1.0;
    }

    v28->_raw_absoluteTimestamp = v29;
    objc_storeStrong(&v28->_modeIdentifier, obj);
    v28->_origin = a5;
    objc_storeStrong(&v28->_originBundleID, v35);
    if (v21)
    {
      v28->_hasIsAutomationEnabled = 1;
      v28->_isAutomationEnabled = [v21 BOOLValue];
    }

    else
    {
      v28->_hasIsAutomationEnabled = 0;
      v28->_isAutomationEnabled = 0;
    }

    if (v22)
    {
      v28->_hasIsStart = 1;
      v28->_isStart = [v22 BOOLValue];
    }

    else
    {
      v28->_hasIsStart = 0;
      v28->_isStart = 0;
    }

    objc_storeStrong(&v28->_uuid, a9);
    objc_storeStrong(&v28->_originAnchorType, a10);
    if (v23)
    {
      v28->_hasUiLocation = 1;
      v30 = [v23 unsignedLongLongValue];
    }

    else
    {
      v30 = 0;
      v28->_hasUiLocation = 0;
    }

    v28->_uiLocation = v30;
    if (v24)
    {
      v28->_hasConfidenceScore = 1;
      [v24 doubleValue];
    }

    else
    {
      v28->_hasConfidenceScore = 0;
      v31 = -1.0;
    }

    v28->_confidenceScore = v31;
    objc_storeStrong(&v28->_serializedTriggers, a13);
    v28->_modeType = a14;
    if (v26)
    {
      v28->_hasShouldSuggestTriggers = 1;
      v28->_shouldSuggestTriggers = [v26 BOOLValue];
    }

    else
    {
      v28->_hasShouldSuggestTriggers = 0;
      v28->_shouldSuggestTriggers = 0;
    }

    objc_storeStrong(&v28->_userModeName, a16);
  }

  return v28;
}

+ (id)protoFields
{
  v19[14] = *MEMORY[0x1E69E9840];
  v18 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"absoluteTimestamp" number:1 type:0 subMessageClass:0];
  v19[0] = v18;
  v17 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"modeIdentifier" number:2 type:13 subMessageClass:0];
  v19[1] = v17;
  v16 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"origin" number:3 type:4 subMessageClass:0];
  v19[2] = v16;
  v15 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"originBundleID" number:4 type:13 subMessageClass:0];
  v19[3] = v15;
  v14 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"isAutomationEnabled" number:5 type:12 subMessageClass:0];
  v19[4] = v14;
  v2 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"isStart" number:6 type:12 subMessageClass:0];
  v19[5] = v2;
  v3 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"uuid" number:7 type:13 subMessageClass:0];
  v19[6] = v3;
  v4 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"originAnchorType" number:8 type:13 subMessageClass:0];
  v19[7] = v4;
  v5 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"uiLocation" number:9 type:5 subMessageClass:0];
  v19[8] = v5;
  v6 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"confidenceScore" number:10 type:0 subMessageClass:0];
  v19[9] = v6;
  v7 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"serializedTriggers" number:11 type:14 subMessageClass:0];
  v19[10] = v7;
  v8 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"modeType" number:12 type:4 subMessageClass:0];
  v19[11] = v8;
  v9 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"shouldSuggestTriggers" number:13 type:12 subMessageClass:0];
  v19[12] = v9;
  v10 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"userModeName" number:14 type:13 subMessageClass:0];
  v19[13] = v10;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:14];

  v12 = *MEMORY[0x1E69E9840];

  return v11;
}

+ (id)columns
{
  v19[14] = *MEMORY[0x1E69E9840];
  v18 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"absoluteTimestamp" dataType:3 requestOnly:0 fieldNumber:1 protoDataType:0 convertedType:1];
  v17 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"modeIdentifier" dataType:2 requestOnly:0 fieldNumber:2 protoDataType:13 convertedType:0];
  v16 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"origin" dataType:0 requestOnly:0 fieldNumber:3 protoDataType:4 convertedType:0];
  v15 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"originBundleID" dataType:2 requestOnly:0 fieldNumber:4 protoDataType:13 convertedType:0];
  v2 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"isAutomationEnabled" dataType:0 requestOnly:0 fieldNumber:5 protoDataType:12 convertedType:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"isStart" dataType:0 requestOnly:0 fieldNumber:6 protoDataType:12 convertedType:0];
  v4 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"uuid" dataType:2 requestOnly:0 fieldNumber:7 protoDataType:13 convertedType:0];
  v5 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"originAnchorType" dataType:2 requestOnly:0 fieldNumber:8 protoDataType:13 convertedType:0];
  v6 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"uiLocation" dataType:0 requestOnly:0 fieldNumber:9 protoDataType:5 convertedType:0];
  v14 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"confidenceScore" dataType:1 requestOnly:0 fieldNumber:10 protoDataType:0 convertedType:0];
  v7 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"serializedTriggers_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_196];
  v13 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"modeType" dataType:0 requestOnly:0 fieldNumber:12 protoDataType:4 convertedType:0];
  v8 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"shouldSuggestTriggers" dataType:0 requestOnly:0 fieldNumber:13 protoDataType:12 convertedType:0];
  v9 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"userModeName" dataType:2 requestOnly:0 fieldNumber:14 protoDataType:13 convertedType:0];
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

id __34__BMUserFocusInferredMode_columns__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 eventBodyKeepingBackingData:1];
  v3 = [v2 _serializedTriggersJSONArray];
  v4 = BMConvertObjectToJSONString();

  return v4;
}

+ (id)eventWithData:(id)a3 dataVersion:(unsigned int)a4
{
  v5 = a3;
  if (a4 == 1)
  {
    v6 = [objc_alloc(MEMORY[0x1E69C65B8]) initWithData:v5];
    v7 = BMUserFocusInferredMode_v1;
  }

  else
  {
    if (a4 != 2)
    {
      v9 = 0;
      goto LABEL_9;
    }

    v6 = [objc_alloc(MEMORY[0x1E69C65B8]) initWithData:v5];
    v7 = BMUserFocusInferredMode;
  }

  v8 = [[v7 alloc] initByReadFrom:v6];
  v9 = v8;
  if (v8)
  {
    *(v8 + 40) = a4;
  }

LABEL_9:

  return v9;
}

@end