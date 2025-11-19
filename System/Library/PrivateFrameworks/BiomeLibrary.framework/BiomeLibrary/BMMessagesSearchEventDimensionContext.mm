@interface BMMessagesSearchEventDimensionContext
+ (id)columns;
+ (id)eventWithData:(id)a3 dataVersion:(unsigned int)a4;
+ (id)protoFields;
- (BMMessagesSearchEventDimensionContext)initWithJSONDictionary:(id)a3 error:(id *)a4;
- (BMMessagesSearchEventDimensionContext)initWithSessionStartTimestampInSeconds:(id)a3 sessionId:(id)a4 systemLocale:(id)a5 currentCountry:(id)a6 build:(id)a7 osType:(id)a8 productType:(id)a9 buildType:(int)a10 isLiveOn:(id)a11;
- (BOOL)isEqual:(id)a3;
- (NSString)description;
- (id)initByReadFrom:(id)a3;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)a3;
@end

@implementation BMMessagesSearchEventDimensionContext

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    if (-[BMMessagesSearchEventDimensionContext hasSessionStartTimestampInSeconds](self, "hasSessionStartTimestampInSeconds") || [v5 hasSessionStartTimestampInSeconds])
    {
      if (![(BMMessagesSearchEventDimensionContext *)self hasSessionStartTimestampInSeconds])
      {
        goto LABEL_38;
      }

      if (![v5 hasSessionStartTimestampInSeconds])
      {
        goto LABEL_38;
      }

      v6 = [(BMMessagesSearchEventDimensionContext *)self sessionStartTimestampInSeconds];
      if (v6 != [v5 sessionStartTimestampInSeconds])
      {
        goto LABEL_38;
      }
    }

    v7 = [(BMMessagesSearchEventDimensionContext *)self sessionId];
    v8 = [v5 sessionId];
    v9 = v8;
    if (v7 == v8)
    {
    }

    else
    {
      v10 = [(BMMessagesSearchEventDimensionContext *)self sessionId];
      v11 = [v5 sessionId];
      v12 = [v10 isEqual:v11];

      if (!v12)
      {
        goto LABEL_38;
      }
    }

    v14 = [(BMMessagesSearchEventDimensionContext *)self systemLocale];
    v15 = [v5 systemLocale];
    v16 = v15;
    if (v14 == v15)
    {
    }

    else
    {
      v17 = [(BMMessagesSearchEventDimensionContext *)self systemLocale];
      v18 = [v5 systemLocale];
      v19 = [v17 isEqual:v18];

      if (!v19)
      {
        goto LABEL_38;
      }
    }

    v20 = [(BMMessagesSearchEventDimensionContext *)self currentCountry];
    v21 = [v5 currentCountry];
    v22 = v21;
    if (v20 == v21)
    {
    }

    else
    {
      v23 = [(BMMessagesSearchEventDimensionContext *)self currentCountry];
      v24 = [v5 currentCountry];
      v25 = [v23 isEqual:v24];

      if (!v25)
      {
        goto LABEL_38;
      }
    }

    v26 = [(BMMessagesSearchEventDimensionContext *)self build];
    v27 = [v5 build];
    v28 = v27;
    if (v26 == v27)
    {
    }

    else
    {
      v29 = [(BMMessagesSearchEventDimensionContext *)self build];
      v30 = [v5 build];
      v31 = [v29 isEqual:v30];

      if (!v31)
      {
        goto LABEL_38;
      }
    }

    v32 = [(BMMessagesSearchEventDimensionContext *)self osType];
    v33 = [v5 osType];
    v34 = v33;
    if (v32 == v33)
    {
    }

    else
    {
      v35 = [(BMMessagesSearchEventDimensionContext *)self osType];
      v36 = [v5 osType];
      v37 = [v35 isEqual:v36];

      if (!v37)
      {
        goto LABEL_38;
      }
    }

    v38 = [(BMMessagesSearchEventDimensionContext *)self productType];
    v39 = [v5 productType];
    v40 = v39;
    if (v38 == v39)
    {
    }

    else
    {
      v41 = [(BMMessagesSearchEventDimensionContext *)self productType];
      v42 = [v5 productType];
      v43 = [v41 isEqual:v42];

      if (!v43)
      {
        goto LABEL_38;
      }
    }

    v44 = [(BMMessagesSearchEventDimensionContext *)self buildType];
    if (v44 == [v5 buildType])
    {
      if (!-[BMMessagesSearchEventDimensionContext hasIsLiveOn](self, "hasIsLiveOn") && ![v5 hasIsLiveOn])
      {
        LOBYTE(v13) = 1;
        goto LABEL_39;
      }

      if (-[BMMessagesSearchEventDimensionContext hasIsLiveOn](self, "hasIsLiveOn") && [v5 hasIsLiveOn])
      {
        v45 = [(BMMessagesSearchEventDimensionContext *)self isLiveOn];
        v13 = v45 ^ [v5 isLiveOn] ^ 1;
LABEL_39:

        goto LABEL_40;
      }
    }

LABEL_38:
    LOBYTE(v13) = 0;
    goto LABEL_39;
  }

  LOBYTE(v13) = 0;
LABEL_40:

  return v13;
}

- (id)jsonDictionary
{
  v32[9] = *MEMORY[0x1E69E9840];
  if ([(BMMessagesSearchEventDimensionContext *)self hasSessionStartTimestampInSeconds])
  {
    v3 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[BMMessagesSearchEventDimensionContext sessionStartTimestampInSeconds](self, "sessionStartTimestampInSeconds")}];
  }

  else
  {
    v3 = 0;
  }

  v4 = [(BMMessagesSearchEventDimensionContext *)self sessionId];
  v5 = [(BMMessagesSearchEventDimensionContext *)self systemLocale];
  v6 = [(BMMessagesSearchEventDimensionContext *)self currentCountry];
  v7 = [(BMMessagesSearchEventDimensionContext *)self build];
  v30 = [(BMMessagesSearchEventDimensionContext *)self osType];
  v29 = [(BMMessagesSearchEventDimensionContext *)self productType];
  v8 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMMessagesSearchEventDimensionContext buildType](self, "buildType")}];
  if ([(BMMessagesSearchEventDimensionContext *)self hasIsLiveOn])
  {
    v9 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMMessagesSearchEventDimensionContext isLiveOn](self, "isLiveOn")}];
  }

  else
  {
    v9 = 0;
  }

  v31[0] = @"sessionStartTimestampInSeconds";
  v10 = v3;
  if (!v3)
  {
    v10 = [MEMORY[0x1E695DFB0] null];
  }

  v25 = v10;
  v32[0] = v10;
  v31[1] = @"sessionId";
  v11 = v4;
  if (!v4)
  {
    v11 = [MEMORY[0x1E695DFB0] null];
  }

  v24 = v11;
  v32[1] = v11;
  v31[2] = @"systemLocale";
  v12 = v5;
  if (!v5)
  {
    v12 = [MEMORY[0x1E695DFB0] null];
  }

  v28 = v3;
  v23 = v12;
  v32[2] = v12;
  v31[3] = @"currentCountry";
  v13 = v6;
  if (!v6)
  {
    v13 = [MEMORY[0x1E695DFB0] null];
  }

  v27 = v4;
  v22 = v13;
  v32[3] = v13;
  v31[4] = @"build";
  v14 = v7;
  if (!v7)
  {
    v14 = [MEMORY[0x1E695DFB0] null];
  }

  v26 = v5;
  v32[4] = v14;
  v31[5] = @"osType";
  v15 = v30;
  if (!v30)
  {
    v15 = [MEMORY[0x1E695DFB0] null];
  }

  v32[5] = v15;
  v31[6] = @"productType";
  v16 = v29;
  if (!v29)
  {
    v16 = [MEMORY[0x1E695DFB0] null];
  }

  v32[6] = v16;
  v31[7] = @"buildType";
  v17 = v8;
  if (!v8)
  {
    v17 = [MEMORY[0x1E695DFB0] null];
  }

  v32[7] = v17;
  v31[8] = @"isLiveOn";
  v18 = v9;
  if (!v9)
  {
    v18 = [MEMORY[0x1E695DFB0] null];
  }

  v32[8] = v18;
  v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v32 forKeys:v31 count:9];
  if (v9)
  {
    if (v8)
    {
      goto LABEL_27;
    }
  }

  else
  {

    if (v8)
    {
      goto LABEL_27;
    }
  }

LABEL_27:
  if (!v29)
  {
  }

  if (!v30)
  {
  }

  if (!v7)
  {
  }

  if (!v6)
  {
  }

  if (v26)
  {
    if (v27)
    {
      goto LABEL_37;
    }

LABEL_44:

    if (v28)
    {
      goto LABEL_38;
    }

    goto LABEL_45;
  }

  if (!v27)
  {
    goto LABEL_44;
  }

LABEL_37:
  if (v28)
  {
    goto LABEL_38;
  }

LABEL_45:

LABEL_38:
  v20 = *MEMORY[0x1E69E9840];

  return v19;
}

- (BMMessagesSearchEventDimensionContext)initWithJSONDictionary:(id)a3 error:(id *)a4
{
  v102[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [v6 objectForKeyedSubscript:@"sessionStartTimestampInSeconds"];
  if (!v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v8 = 0;
    goto LABEL_4;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = v7;
LABEL_4:
    v9 = [v6 objectForKeyedSubscript:@"sessionId"];
    if (!v9 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v77 = a4;
      a4 = 0;
LABEL_7:
      v10 = [v6 objectForKeyedSubscript:@"systemLocale"];
      if (v10 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          if (!v77)
          {
            v30 = 0;
            v26 = 0;
            goto LABEL_72;
          }

          v84 = objc_alloc(MEMORY[0x1E696ABC0]);
          v34 = a4;
          v35 = *MEMORY[0x1E698F240];
          v97 = *MEMORY[0x1E696A578];
          v80 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"systemLocale"];
          v98 = v80;
          v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v98 forKeys:&v97 count:1];
          v36 = v35;
          a4 = v34;
          v30 = 0;
          v26 = 0;
          *v77 = [v84 initWithDomain:v36 code:2 userInfo:v11];
          goto LABEL_71;
        }

        v79 = v10;
      }

      else
      {
        v79 = 0;
      }

      v11 = [v6 objectForKeyedSubscript:@"currentCountry"];
      v82 = v8;
      v75 = v10;
      if (v11 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          if (!v77)
          {
            v80 = 0;
            v26 = 0;
            v30 = v79;
            goto LABEL_71;
          }

          v81 = objc_alloc(MEMORY[0x1E696ABC0]);
          v38 = a4;
          v39 = *MEMORY[0x1E698F240];
          v95 = *MEMORY[0x1E696A578];
          v78 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"currentCountry"];
          v96 = v78;
          v40 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v96 forKeys:&v95 count:1];
          v41 = v39;
          a4 = v38;
          v76 = v40;
          v42 = [v81 initWithDomain:v41 code:2 userInfo:?];
          v80 = 0;
          v26 = 0;
          *v77 = v42;
          v30 = v79;
LABEL_70:

LABEL_71:
          goto LABEL_72;
        }

        v80 = v11;
        v12 = v9;
        v13 = v7;
      }

      else
      {
        v12 = v9;
        v13 = v7;
        v80 = 0;
      }

      v14 = [v6 objectForKeyedSubscript:@"build"];
      v73 = v11;
      v76 = v14;
      if (v14 && (v15 = v14, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          if (!v77)
          {
            v78 = 0;
            v26 = 0;
            v30 = v79;
            v7 = v13;
            v9 = v12;
            v8 = v82;
            goto LABEL_70;
          }

          v43 = objc_alloc(MEMORY[0x1E696ABC0]);
          v44 = a4;
          v45 = *MEMORY[0x1E698F240];
          v93 = *MEMORY[0x1E696A578];
          v67 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"build"];
          v94 = v67;
          v46 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v94 forKeys:&v93 count:1];
          v47 = v43;
          v10 = v75;
          v48 = v45;
          a4 = v44;
          v72 = v46;
          v78 = 0;
          v26 = 0;
          *v77 = [v47 initWithDomain:v48 code:2 userInfo:?];
          v7 = v13;
          v9 = v12;
          v8 = v82;
          goto LABEL_69;
        }

        v83 = v6;
        v78 = v15;
      }

      else
      {
        v83 = v6;
        v78 = 0;
      }

      v16 = [v83 objectForKeyedSubscript:@"osType"];
      v7 = v13;
      v72 = v16;
      if (v16)
      {
        objc_opt_class();
        v9 = v12;
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          objc_opt_class();
          v8 = v82;
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            v69 = self;
            if (!v77)
            {
              v67 = 0;
              v26 = 0;
              v6 = v83;
              goto LABEL_69;
            }

            v49 = objc_alloc(MEMORY[0x1E696ABC0]);
            v50 = a4;
            v51 = *MEMORY[0x1E698F240];
            v91 = *MEMORY[0x1E696A578];
            v74 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"osType"];
            v92 = v74;
            v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v92 forKeys:&v91 count:1];
            v52 = v51;
            a4 = v50;
            v67 = 0;
            v26 = 0;
            *v77 = [v49 initWithDomain:v52 code:2 userInfo:v17];
            goto LABEL_87;
          }

          v16 = v16;
LABEL_29:
          v17 = [v83 objectForKeyedSubscript:@"productType"];
          v66 = a4;
          v67 = v16;
          if (!v17 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
          {
            v74 = 0;
LABEL_32:
            v18 = [v83 objectForKeyedSubscript:@"buildType"];
            if (v18 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
            {
              v19 = self;
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v37 = v18;
              }

              else
              {
                objc_opt_class();
                if ((objc_opt_isKindOfClass() & 1) == 0)
                {
                  if (!v77)
                  {
                    v20 = 0;
                    v26 = 0;
                    v8 = v82;
                    v6 = v83;
                    goto LABEL_67;
                  }

                  v71 = objc_alloc(MEMORY[0x1E696ABC0]);
                  v62 = *MEMORY[0x1E698F240];
                  v87 = *MEMORY[0x1E696A578];
                  v57 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (corresponding to enum value), or NSString (string version of enum)", objc_opt_class(), @"buildType"];
                  v88 = v57;
                  v56 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v88 forKeys:&v87 count:1];
                  v63 = [v71 initWithDomain:v62 code:2 userInfo:v56];
                  v20 = 0;
                  v26 = 0;
                  *v77 = v63;
                  v6 = v83;
                  goto LABEL_66;
                }

                v37 = [MEMORY[0x1E696AD98] numberWithInt:BMMessagesSearchEventBuildTypeFromString(v18)];
              }

              v20 = v37;
            }

            else
            {
              v19 = self;
              v20 = 0;
            }

            v56 = [v83 objectForKeyedSubscript:@"isLiveOn"];
            if (v56 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
            {
              objc_opt_class();
              v6 = v83;
              if ((objc_opt_isKindOfClass() & 1) == 0)
              {
                if (v77)
                {
                  v70 = objc_alloc(MEMORY[0x1E696ABC0]);
                  v65 = *MEMORY[0x1E698F240];
                  v85 = *MEMORY[0x1E696A578];
                  v60 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"isLiveOn"];
                  v86 = v60;
                  v61 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v86 forKeys:&v85 count:1];
                  *v77 = [v70 initWithDomain:v65 code:2 userInfo:v61];
                }

                v57 = 0;
                v26 = 0;
                goto LABEL_66;
              }

              v57 = v56;
            }

            else
            {
              v57 = 0;
              v6 = v83;
            }

            LODWORD(v64) = [v20 intValue];
            v26 = [(BMMessagesSearchEventDimensionContext *)v19 initWithSessionStartTimestampInSeconds:v82 sessionId:v66 systemLocale:v79 currentCountry:v80 build:v78 osType:v16 productType:v74 buildType:v64 isLiveOn:v57];
            v19 = v26;
LABEL_66:

            self = v19;
            v8 = v82;
            goto LABEL_67;
          }

          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v74 = v17;
            goto LABEL_32;
          }

          v69 = self;
          if (v77)
          {
            v53 = objc_alloc(MEMORY[0x1E696ABC0]);
            v54 = *MEMORY[0x1E698F240];
            v89 = *MEMORY[0x1E696A578];
            v20 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"productType"];
            v90 = v20;
            v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v90 forKeys:&v89 count:1];
            v55 = [v53 initWithDomain:v54 code:2 userInfo:v18];
            v74 = 0;
            v26 = 0;
            *v77 = v55;
            v6 = v83;
LABEL_67:

            a4 = v66;
LABEL_68:

            v10 = v75;
            v11 = v73;
LABEL_69:

            v30 = v79;
            goto LABEL_70;
          }

          v74 = 0;
          v26 = 0;
LABEL_87:
          self = v69;
          v6 = v83;
          goto LABEL_68;
        }

        v16 = 0;
      }

      else
      {
        v9 = v12;
      }

      v8 = v82;
      goto LABEL_29;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v77 = a4;
      a4 = v9;
      goto LABEL_7;
    }

    if (a4)
    {
      v27 = objc_alloc(MEMORY[0x1E696ABC0]);
      v68 = self;
      v28 = a4;
      v29 = *MEMORY[0x1E698F240];
      v99 = *MEMORY[0x1E696A578];
      v30 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"sessionId"];
      v100 = v30;
      v31 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v100 forKeys:&v99 count:1];
      v32 = v27;
      v10 = v31;
      v33 = [v32 initWithDomain:v29 code:2 userInfo:v31];
      a4 = 0;
      v26 = 0;
      *v28 = v33;
      self = v68;
LABEL_72:

      goto LABEL_73;
    }

    v26 = 0;
LABEL_73:

    goto LABEL_74;
  }

  if (a4)
  {
    v21 = objc_alloc(MEMORY[0x1E696ABC0]);
    v22 = a4;
    v23 = *MEMORY[0x1E698F240];
    v101 = *MEMORY[0x1E696A578];
    v24 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"sessionStartTimestampInSeconds"];
    v102[0] = v24;
    v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v102 forKeys:&v101 count:1];
    v25 = v23;
    a4 = v24;
    v8 = 0;
    v26 = 0;
    *v22 = [v21 initWithDomain:v25 code:2 userInfo:v9];
    goto LABEL_73;
  }

  v8 = 0;
  v26 = 0;
LABEL_74:

  v58 = *MEMORY[0x1E69E9840];
  return v26;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMMessagesSearchEventDimensionContext *)self writeTo:v3];
  v4 = [v3 immutableData];

  return v4;
}

- (void)writeTo:(id)a3
{
  v7 = a3;
  if (self->_hasSessionStartTimestampInSeconds)
  {
    sessionStartTimestampInSeconds = self->_sessionStartTimestampInSeconds;
    PBDataWriterWriteUint64Field();
  }

  if (self->_sessionId)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_systemLocale)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_currentCountry)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_build)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_osType)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_productType)
  {
    PBDataWriterWriteStringField();
  }

  buildType = self->_buildType;
  PBDataWriterWriteUint32Field();
  if (self->_hasIsLiveOn)
  {
    isLiveOn = self->_isLiveOn;
    PBDataWriterWriteBOOLField();
  }
}

- (id)initByReadFrom:(id)a3
{
  v4 = a3;
  v43.receiver = self;
  v43.super_class = BMMessagesSearchEventDimensionContext;
  v5 = [(BMEventBase *)&v43 init];
  if (!v5)
  {
    goto LABEL_80;
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
        v44 = 0;
        v10 = [v4 position] + 1;
        if (v10 >= [v4 position] && (v11 = objc_msgSend(v4, "position") + 1, v11 <= objc_msgSend(v4, "length")))
        {
          v12 = [v4 data];
          [v12 getBytes:&v44 range:{objc_msgSend(v4, "position"), 1}];

          [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
        }

        else
        {
          [v4 _setError];
        }

        v9 |= (v44 & 0x7F) << v7;
        if ((v44 & 0x80) == 0)
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

      v15 = v14 >> 3;
      if ((v14 >> 3) <= 4)
      {
        if (v15 > 2)
        {
          if (v15 == 3)
          {
            v23 = PBReaderReadString();
            v24 = 48;
            goto LABEL_54;
          }

          if (v15 == 4)
          {
            v23 = PBReaderReadString();
            v24 = 56;
            goto LABEL_54;
          }
        }

        else
        {
          if (v15 == 1)
          {
            v25 = 0;
            v26 = 0;
            v27 = 0;
            v5->_hasSessionStartTimestampInSeconds = 1;
            while (1)
            {
              v44 = 0;
              v28 = [v4 position] + 1;
              if (v28 >= [v4 position] && (v29 = objc_msgSend(v4, "position") + 1, v29 <= objc_msgSend(v4, "length")))
              {
                v30 = [v4 data];
                [v30 getBytes:&v44 range:{objc_msgSend(v4, "position"), 1}];

                [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
              }

              else
              {
                [v4 _setError];
              }

              v27 |= (v44 & 0x7F) << v25;
              if ((v44 & 0x80) == 0)
              {
                break;
              }

              v25 += 7;
              v13 = v26++ >= 9;
              if (v13)
              {
                v31 = 0;
                goto LABEL_71;
              }
            }

            if ([v4 hasError])
            {
              v31 = 0;
            }

            else
            {
              v31 = v27;
            }

LABEL_71:
            v5->_sessionStartTimestampInSeconds = v31;
            goto LABEL_55;
          }

          if (v15 == 2)
          {
            v23 = PBReaderReadString();
            v24 = 40;
LABEL_54:
            v32 = *(&v5->super.super.isa + v24);
            *(&v5->super.super.isa + v24) = v23;

            goto LABEL_55;
          }
        }
      }

      else if (v15 <= 6)
      {
        if (v15 == 5)
        {
          v23 = PBReaderReadString();
          v24 = 64;
          goto LABEL_54;
        }

        if (v15 == 6)
        {
          v23 = PBReaderReadString();
          v24 = 72;
          goto LABEL_54;
        }
      }

      else
      {
        switch(v15)
        {
          case 7:
            v23 = PBReaderReadString();
            v24 = 80;
            goto LABEL_54;
          case 9:
            v34 = 0;
            v35 = 0;
            v36 = 0;
            v5->_hasIsLiveOn = 1;
            while (1)
            {
              v44 = 0;
              v37 = [v4 position] + 1;
              if (v37 >= [v4 position] && (v38 = objc_msgSend(v4, "position") + 1, v38 <= objc_msgSend(v4, "length")))
              {
                v39 = [v4 data];
                [v39 getBytes:&v44 range:{objc_msgSend(v4, "position"), 1}];

                [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
              }

              else
              {
                [v4 _setError];
              }

              v36 |= (v44 & 0x7F) << v34;
              if ((v44 & 0x80) == 0)
              {
                break;
              }

              v34 += 7;
              v13 = v35++ >= 9;
              if (v13)
              {
                LOBYTE(v40) = 0;
                goto LABEL_77;
              }
            }

            v40 = (v36 != 0) & ~[v4 hasError];
LABEL_77:
            v5->_isLiveOn = v40;
            goto LABEL_55;
          case 8:
            v16 = 0;
            v17 = 0;
            v18 = 0;
            while (1)
            {
              v44 = 0;
              v19 = [v4 position] + 1;
              if (v19 >= [v4 position] && (v20 = objc_msgSend(v4, "position") + 1, v20 <= objc_msgSend(v4, "length")))
              {
                v21 = [v4 data];
                [v21 getBytes:&v44 range:{objc_msgSend(v4, "position"), 1}];

                [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
              }

              else
              {
                [v4 _setError];
              }

              v18 |= (v44 & 0x7F) << v16;
              if ((v44 & 0x80) == 0)
              {
                break;
              }

              v16 += 7;
              if (v17++ > 8)
              {
                goto LABEL_74;
              }
            }

            if (([v4 hasError] & 1) != 0 || v18 > 4)
            {
LABEL_74:
              LODWORD(v18) = 0;
            }

            v5->_buildType = v18;
            goto LABEL_55;
        }
      }

      if (!PBReaderSkipValueWithTag())
      {
        goto LABEL_79;
      }

LABEL_55:
      v33 = [v4 position];
    }

    while (v33 < [v4 length]);
  }

  if ([v4 hasError])
  {
LABEL_79:
    v41 = 0;
  }

  else
  {
LABEL_80:
    v41 = v5;
  }

  return v41;
}

- (NSString)description
{
  v14 = objc_alloc(MEMORY[0x1E696AEC0]);
  v3 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[BMMessagesSearchEventDimensionContext sessionStartTimestampInSeconds](self, "sessionStartTimestampInSeconds")}];
  v4 = [(BMMessagesSearchEventDimensionContext *)self sessionId];
  v5 = [(BMMessagesSearchEventDimensionContext *)self systemLocale];
  v6 = [(BMMessagesSearchEventDimensionContext *)self currentCountry];
  v7 = [(BMMessagesSearchEventDimensionContext *)self build];
  v8 = [(BMMessagesSearchEventDimensionContext *)self osType];
  v9 = [(BMMessagesSearchEventDimensionContext *)self productType];
  v10 = BMMessagesSearchEventBuildTypeAsString([(BMMessagesSearchEventDimensionContext *)self buildType]);
  v11 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMMessagesSearchEventDimensionContext isLiveOn](self, "isLiveOn")}];
  v12 = [v14 initWithFormat:@"BMMessagesSearchEventDimensionContext with sessionStartTimestampInSeconds: %@, sessionId: %@, systemLocale: %@, currentCountry: %@, build: %@, osType: %@, productType: %@, buildType: %@, isLiveOn: %@", v3, v4, v5, v6, v7, v8, v9, v10, v11];

  return v12;
}

- (BMMessagesSearchEventDimensionContext)initWithSessionStartTimestampInSeconds:(id)a3 sessionId:(id)a4 systemLocale:(id)a5 currentCountry:(id)a6 build:(id)a7 osType:(id)a8 productType:(id)a9 buildType:(int)a10 isLiveOn:(id)a11
{
  v17 = a3;
  v27 = a4;
  v26 = a5;
  v25 = a6;
  v24 = a7;
  v23 = a8;
  v18 = a9;
  v19 = a11;
  v28.receiver = self;
  v28.super_class = BMMessagesSearchEventDimensionContext;
  v20 = [(BMEventBase *)&v28 init];
  if (v20)
  {
    v20->_dataVersion = [objc_opt_class() latestDataVersion];
    if (v17)
    {
      v20->_hasSessionStartTimestampInSeconds = 1;
      v21 = [v17 unsignedLongLongValue];
    }

    else
    {
      v21 = 0;
      v20->_hasSessionStartTimestampInSeconds = 0;
    }

    v20->_sessionStartTimestampInSeconds = v21;
    objc_storeStrong(&v20->_sessionId, a4);
    objc_storeStrong(&v20->_systemLocale, a5);
    objc_storeStrong(&v20->_currentCountry, a6);
    objc_storeStrong(&v20->_build, a7);
    objc_storeStrong(&v20->_osType, a8);
    objc_storeStrong(&v20->_productType, a9);
    v20->_buildType = a10;
    if (v19)
    {
      v20->_hasIsLiveOn = 1;
      v20->_isLiveOn = [v19 BOOLValue];
    }

    else
    {
      v20->_hasIsLiveOn = 0;
      v20->_isLiveOn = 0;
    }
  }

  return v20;
}

+ (id)protoFields
{
  v14[9] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"sessionStartTimestampInSeconds" number:1 type:5 subMessageClass:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"sessionId" number:2 type:13 subMessageClass:{0, v2}];
  v14[1] = v3;
  v4 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"systemLocale" number:3 type:13 subMessageClass:0];
  v14[2] = v4;
  v5 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"currentCountry" number:4 type:13 subMessageClass:0];
  v14[3] = v5;
  v6 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"build" number:5 type:13 subMessageClass:0];
  v14[4] = v6;
  v7 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"osType" number:6 type:13 subMessageClass:0];
  v14[5] = v7;
  v8 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"productType" number:7 type:13 subMessageClass:0];
  v14[6] = v8;
  v9 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"buildType" number:8 type:4 subMessageClass:0];
  v14[7] = v9;
  v10 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"isLiveOn" number:9 type:12 subMessageClass:0];
  v14[8] = v10;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:9];

  v12 = *MEMORY[0x1E69E9840];

  return v11;
}

+ (id)columns
{
  v14[9] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"sessionStartTimestampInSeconds" dataType:0 requestOnly:0 fieldNumber:1 protoDataType:5 convertedType:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"sessionId" dataType:2 requestOnly:0 fieldNumber:2 protoDataType:13 convertedType:0];
  v4 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"systemLocale" dataType:2 requestOnly:0 fieldNumber:3 protoDataType:13 convertedType:0];
  v5 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"currentCountry" dataType:2 requestOnly:0 fieldNumber:4 protoDataType:13 convertedType:0];
  v6 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"build" dataType:2 requestOnly:0 fieldNumber:5 protoDataType:13 convertedType:0];
  v7 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"osType" dataType:2 requestOnly:0 fieldNumber:6 protoDataType:13 convertedType:0];
  v8 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"productType" dataType:2 requestOnly:0 fieldNumber:7 protoDataType:13 convertedType:0];
  v9 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"buildType" dataType:0 requestOnly:0 fieldNumber:8 protoDataType:4 convertedType:0];
  v10 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"isLiveOn" dataType:0 requestOnly:0 fieldNumber:9 protoDataType:12 convertedType:0];
  v14[0] = v2;
  v14[1] = v3;
  v14[2] = v4;
  v14[3] = v5;
  v14[4] = v6;
  v14[5] = v7;
  v14[6] = v8;
  v14[7] = v9;
  v14[8] = v10;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:9];

  v12 = *MEMORY[0x1E69E9840];

  return v11;
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

    v8 = [[BMMessagesSearchEventDimensionContext alloc] initByReadFrom:v7];
    v4 = v8;
    if (v8)
    {
      v8[5] = 0;
    }
  }

  return v4;
}

@end