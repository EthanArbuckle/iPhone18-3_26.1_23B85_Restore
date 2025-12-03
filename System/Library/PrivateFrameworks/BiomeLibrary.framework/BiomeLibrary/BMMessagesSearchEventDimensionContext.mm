@interface BMMessagesSearchEventDimensionContext
+ (id)columns;
+ (id)eventWithData:(id)data dataVersion:(unsigned int)version;
+ (id)protoFields;
- (BMMessagesSearchEventDimensionContext)initWithJSONDictionary:(id)dictionary error:(id *)error;
- (BMMessagesSearchEventDimensionContext)initWithSessionStartTimestampInSeconds:(id)seconds sessionId:(id)id systemLocale:(id)locale currentCountry:(id)country build:(id)build osType:(id)type productType:(id)productType buildType:(int)self0 isLiveOn:(id)self1;
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (id)initByReadFrom:(id)from;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)to;
@end

@implementation BMMessagesSearchEventDimensionContext

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
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

      sessionStartTimestampInSeconds = [(BMMessagesSearchEventDimensionContext *)self sessionStartTimestampInSeconds];
      if (sessionStartTimestampInSeconds != [v5 sessionStartTimestampInSeconds])
      {
        goto LABEL_38;
      }
    }

    sessionId = [(BMMessagesSearchEventDimensionContext *)self sessionId];
    sessionId2 = [v5 sessionId];
    v9 = sessionId2;
    if (sessionId == sessionId2)
    {
    }

    else
    {
      sessionId3 = [(BMMessagesSearchEventDimensionContext *)self sessionId];
      sessionId4 = [v5 sessionId];
      v12 = [sessionId3 isEqual:sessionId4];

      if (!v12)
      {
        goto LABEL_38;
      }
    }

    systemLocale = [(BMMessagesSearchEventDimensionContext *)self systemLocale];
    systemLocale2 = [v5 systemLocale];
    v16 = systemLocale2;
    if (systemLocale == systemLocale2)
    {
    }

    else
    {
      systemLocale3 = [(BMMessagesSearchEventDimensionContext *)self systemLocale];
      systemLocale4 = [v5 systemLocale];
      v19 = [systemLocale3 isEqual:systemLocale4];

      if (!v19)
      {
        goto LABEL_38;
      }
    }

    currentCountry = [(BMMessagesSearchEventDimensionContext *)self currentCountry];
    currentCountry2 = [v5 currentCountry];
    v22 = currentCountry2;
    if (currentCountry == currentCountry2)
    {
    }

    else
    {
      currentCountry3 = [(BMMessagesSearchEventDimensionContext *)self currentCountry];
      currentCountry4 = [v5 currentCountry];
      v25 = [currentCountry3 isEqual:currentCountry4];

      if (!v25)
      {
        goto LABEL_38;
      }
    }

    build = [(BMMessagesSearchEventDimensionContext *)self build];
    build2 = [v5 build];
    v28 = build2;
    if (build == build2)
    {
    }

    else
    {
      build3 = [(BMMessagesSearchEventDimensionContext *)self build];
      build4 = [v5 build];
      v31 = [build3 isEqual:build4];

      if (!v31)
      {
        goto LABEL_38;
      }
    }

    osType = [(BMMessagesSearchEventDimensionContext *)self osType];
    osType2 = [v5 osType];
    v34 = osType2;
    if (osType == osType2)
    {
    }

    else
    {
      osType3 = [(BMMessagesSearchEventDimensionContext *)self osType];
      osType4 = [v5 osType];
      v37 = [osType3 isEqual:osType4];

      if (!v37)
      {
        goto LABEL_38;
      }
    }

    productType = [(BMMessagesSearchEventDimensionContext *)self productType];
    productType2 = [v5 productType];
    v40 = productType2;
    if (productType == productType2)
    {
    }

    else
    {
      productType3 = [(BMMessagesSearchEventDimensionContext *)self productType];
      productType4 = [v5 productType];
      v43 = [productType3 isEqual:productType4];

      if (!v43)
      {
        goto LABEL_38;
      }
    }

    buildType = [(BMMessagesSearchEventDimensionContext *)self buildType];
    if (buildType == [v5 buildType])
    {
      if (!-[BMMessagesSearchEventDimensionContext hasIsLiveOn](self, "hasIsLiveOn") && ![v5 hasIsLiveOn])
      {
        LOBYTE(v13) = 1;
        goto LABEL_39;
      }

      if (-[BMMessagesSearchEventDimensionContext hasIsLiveOn](self, "hasIsLiveOn") && [v5 hasIsLiveOn])
      {
        isLiveOn = [(BMMessagesSearchEventDimensionContext *)self isLiveOn];
        v13 = isLiveOn ^ [v5 isLiveOn] ^ 1;
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

  sessionId = [(BMMessagesSearchEventDimensionContext *)self sessionId];
  systemLocale = [(BMMessagesSearchEventDimensionContext *)self systemLocale];
  currentCountry = [(BMMessagesSearchEventDimensionContext *)self currentCountry];
  build = [(BMMessagesSearchEventDimensionContext *)self build];
  osType = [(BMMessagesSearchEventDimensionContext *)self osType];
  productType = [(BMMessagesSearchEventDimensionContext *)self productType];
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
  null = v3;
  if (!v3)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v25 = null;
  v32[0] = null;
  v31[1] = @"sessionId";
  null2 = sessionId;
  if (!sessionId)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v24 = null2;
  v32[1] = null2;
  v31[2] = @"systemLocale";
  null3 = systemLocale;
  if (!systemLocale)
  {
    null3 = [MEMORY[0x1E695DFB0] null];
  }

  v28 = v3;
  v23 = null3;
  v32[2] = null3;
  v31[3] = @"currentCountry";
  null4 = currentCountry;
  if (!currentCountry)
  {
    null4 = [MEMORY[0x1E695DFB0] null];
  }

  v27 = sessionId;
  v22 = null4;
  v32[3] = null4;
  v31[4] = @"build";
  null5 = build;
  if (!build)
  {
    null5 = [MEMORY[0x1E695DFB0] null];
  }

  v26 = systemLocale;
  v32[4] = null5;
  v31[5] = @"osType";
  null6 = osType;
  if (!osType)
  {
    null6 = [MEMORY[0x1E695DFB0] null];
  }

  v32[5] = null6;
  v31[6] = @"productType";
  null7 = productType;
  if (!productType)
  {
    null7 = [MEMORY[0x1E695DFB0] null];
  }

  v32[6] = null7;
  v31[7] = @"buildType";
  null8 = v8;
  if (!v8)
  {
    null8 = [MEMORY[0x1E695DFB0] null];
  }

  v32[7] = null8;
  v31[8] = @"isLiveOn";
  null9 = v9;
  if (!v9)
  {
    null9 = [MEMORY[0x1E695DFB0] null];
  }

  v32[8] = null9;
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
  if (!productType)
  {
  }

  if (!osType)
  {
  }

  if (!build)
  {
  }

  if (!currentCountry)
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

- (BMMessagesSearchEventDimensionContext)initWithJSONDictionary:(id)dictionary error:(id *)error
{
  v102[1] = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v7 = [dictionaryCopy objectForKeyedSubscript:@"sessionStartTimestampInSeconds"];
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
    v9 = [dictionaryCopy objectForKeyedSubscript:@"sessionId"];
    if (!v9 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      errorCopy7 = error;
      error = 0;
LABEL_7:
      v10 = [dictionaryCopy objectForKeyedSubscript:@"systemLocale"];
      if (v10 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          if (!errorCopy7)
          {
            v30 = 0;
            v26 = 0;
            goto LABEL_72;
          }

          v84 = objc_alloc(MEMORY[0x1E696ABC0]);
          errorCopy2 = error;
          v35 = *MEMORY[0x1E698F240];
          v97 = *MEMORY[0x1E696A578];
          v80 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"systemLocale"];
          v98 = v80;
          v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v98 forKeys:&v97 count:1];
          v36 = v35;
          error = errorCopy2;
          v30 = 0;
          v26 = 0;
          *errorCopy7 = [v84 initWithDomain:v36 code:2 userInfo:v11];
          goto LABEL_71;
        }

        v79 = v10;
      }

      else
      {
        v79 = 0;
      }

      v11 = [dictionaryCopy objectForKeyedSubscript:@"currentCountry"];
      v82 = v8;
      v75 = v10;
      if (v11 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          if (!errorCopy7)
          {
            v80 = 0;
            v26 = 0;
            v30 = v79;
            goto LABEL_71;
          }

          v81 = objc_alloc(MEMORY[0x1E696ABC0]);
          errorCopy3 = error;
          v39 = *MEMORY[0x1E698F240];
          v95 = *MEMORY[0x1E696A578];
          v78 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"currentCountry"];
          v96 = v78;
          v40 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v96 forKeys:&v95 count:1];
          v41 = v39;
          error = errorCopy3;
          v76 = v40;
          v42 = [v81 initWithDomain:v41 code:2 userInfo:?];
          v80 = 0;
          v26 = 0;
          *errorCopy7 = v42;
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

      v14 = [dictionaryCopy objectForKeyedSubscript:@"build"];
      v73 = v11;
      v76 = v14;
      if (v14 && (v15 = v14, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          if (!errorCopy7)
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
          errorCopy4 = error;
          v45 = *MEMORY[0x1E698F240];
          v93 = *MEMORY[0x1E696A578];
          v67 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"build"];
          v94 = v67;
          v46 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v94 forKeys:&v93 count:1];
          v47 = v43;
          v10 = v75;
          v48 = v45;
          error = errorCopy4;
          v72 = v46;
          v78 = 0;
          v26 = 0;
          *errorCopy7 = [v47 initWithDomain:v48 code:2 userInfo:?];
          v7 = v13;
          v9 = v12;
          v8 = v82;
          goto LABEL_69;
        }

        v83 = dictionaryCopy;
        v78 = v15;
      }

      else
      {
        v83 = dictionaryCopy;
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
            selfCopy4 = self;
            if (!errorCopy7)
            {
              v67 = 0;
              v26 = 0;
              dictionaryCopy = v83;
              goto LABEL_69;
            }

            v49 = objc_alloc(MEMORY[0x1E696ABC0]);
            errorCopy5 = error;
            v51 = *MEMORY[0x1E698F240];
            v91 = *MEMORY[0x1E696A578];
            v74 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"osType"];
            v92 = v74;
            v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v92 forKeys:&v91 count:1];
            v52 = v51;
            error = errorCopy5;
            v67 = 0;
            v26 = 0;
            *errorCopy7 = [v49 initWithDomain:v52 code:2 userInfo:v17];
            goto LABEL_87;
          }

          v16 = v16;
LABEL_29:
          v17 = [v83 objectForKeyedSubscript:@"productType"];
          errorCopy6 = error;
          v67 = v16;
          if (!v17 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
          {
            v74 = 0;
LABEL_32:
            v18 = [v83 objectForKeyedSubscript:@"buildType"];
            if (v18 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
            {
              selfCopy3 = self;
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
                  if (!errorCopy7)
                  {
                    v20 = 0;
                    v26 = 0;
                    v8 = v82;
                    dictionaryCopy = v83;
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
                  *errorCopy7 = v63;
                  dictionaryCopy = v83;
                  goto LABEL_66;
                }

                v37 = [MEMORY[0x1E696AD98] numberWithInt:BMMessagesSearchEventBuildTypeFromString(v18)];
              }

              v20 = v37;
            }

            else
            {
              selfCopy3 = self;
              v20 = 0;
            }

            v56 = [v83 objectForKeyedSubscript:@"isLiveOn"];
            if (v56 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
            {
              objc_opt_class();
              dictionaryCopy = v83;
              if ((objc_opt_isKindOfClass() & 1) == 0)
              {
                if (errorCopy7)
                {
                  v70 = objc_alloc(MEMORY[0x1E696ABC0]);
                  v65 = *MEMORY[0x1E698F240];
                  v85 = *MEMORY[0x1E696A578];
                  v60 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"isLiveOn"];
                  v86 = v60;
                  v61 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v86 forKeys:&v85 count:1];
                  *errorCopy7 = [v70 initWithDomain:v65 code:2 userInfo:v61];
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
              dictionaryCopy = v83;
            }

            LODWORD(v64) = [v20 intValue];
            v26 = [(BMMessagesSearchEventDimensionContext *)selfCopy3 initWithSessionStartTimestampInSeconds:v82 sessionId:errorCopy6 systemLocale:v79 currentCountry:v80 build:v78 osType:v16 productType:v74 buildType:v64 isLiveOn:v57];
            selfCopy3 = v26;
LABEL_66:

            self = selfCopy3;
            v8 = v82;
            goto LABEL_67;
          }

          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v74 = v17;
            goto LABEL_32;
          }

          selfCopy4 = self;
          if (errorCopy7)
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
            *errorCopy7 = v55;
            dictionaryCopy = v83;
LABEL_67:

            error = errorCopy6;
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
          self = selfCopy4;
          dictionaryCopy = v83;
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
      errorCopy7 = error;
      error = v9;
      goto LABEL_7;
    }

    if (error)
    {
      v27 = objc_alloc(MEMORY[0x1E696ABC0]);
      selfCopy5 = self;
      errorCopy8 = error;
      v29 = *MEMORY[0x1E698F240];
      v99 = *MEMORY[0x1E696A578];
      v30 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"sessionId"];
      v100 = v30;
      v31 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v100 forKeys:&v99 count:1];
      v32 = v27;
      v10 = v31;
      v33 = [v32 initWithDomain:v29 code:2 userInfo:v31];
      error = 0;
      v26 = 0;
      *errorCopy8 = v33;
      self = selfCopy5;
LABEL_72:

      goto LABEL_73;
    }

    v26 = 0;
LABEL_73:

    goto LABEL_74;
  }

  if (error)
  {
    v21 = objc_alloc(MEMORY[0x1E696ABC0]);
    errorCopy9 = error;
    v23 = *MEMORY[0x1E698F240];
    v101 = *MEMORY[0x1E696A578];
    v24 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"sessionStartTimestampInSeconds"];
    v102[0] = v24;
    v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v102 forKeys:&v101 count:1];
    v25 = v23;
    error = v24;
    v8 = 0;
    v26 = 0;
    *errorCopy9 = [v21 initWithDomain:v25 code:2 userInfo:v9];
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
  immutableData = [v3 immutableData];

  return immutableData;
}

- (void)writeTo:(id)to
{
  toCopy = to;
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

- (id)initByReadFrom:(id)from
{
  fromCopy = from;
  v43.receiver = self;
  v43.super_class = BMMessagesSearchEventDimensionContext;
  v5 = [(BMEventBase *)&v43 init];
  if (!v5)
  {
    goto LABEL_80;
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
        v44 = 0;
        v10 = [fromCopy position] + 1;
        if (v10 >= [fromCopy position] && (v11 = objc_msgSend(fromCopy, "position") + 1, v11 <= objc_msgSend(fromCopy, "length")))
        {
          data = [fromCopy data];
          [data getBytes:&v44 range:{objc_msgSend(fromCopy, "position"), 1}];

          [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
        }

        else
        {
          [fromCopy _setError];
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

      v14 = [fromCopy hasError] ? 0 : v9;
LABEL_16:
      if (([fromCopy hasError] & 1) != 0 || (v14 & 7) == 4)
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
              v28 = [fromCopy position] + 1;
              if (v28 >= [fromCopy position] && (v29 = objc_msgSend(fromCopy, "position") + 1, v29 <= objc_msgSend(fromCopy, "length")))
              {
                data2 = [fromCopy data];
                [data2 getBytes:&v44 range:{objc_msgSend(fromCopy, "position"), 1}];

                [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
              }

              else
              {
                [fromCopy _setError];
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

            if ([fromCopy hasError])
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
              v37 = [fromCopy position] + 1;
              if (v37 >= [fromCopy position] && (v38 = objc_msgSend(fromCopy, "position") + 1, v38 <= objc_msgSend(fromCopy, "length")))
              {
                data3 = [fromCopy data];
                [data3 getBytes:&v44 range:{objc_msgSend(fromCopy, "position"), 1}];

                [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
              }

              else
              {
                [fromCopy _setError];
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

            v40 = (v36 != 0) & ~[fromCopy hasError];
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
              v19 = [fromCopy position] + 1;
              if (v19 >= [fromCopy position] && (v20 = objc_msgSend(fromCopy, "position") + 1, v20 <= objc_msgSend(fromCopy, "length")))
              {
                data4 = [fromCopy data];
                [data4 getBytes:&v44 range:{objc_msgSend(fromCopy, "position"), 1}];

                [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
              }

              else
              {
                [fromCopy _setError];
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

            if (([fromCopy hasError] & 1) != 0 || v18 > 4)
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
      position2 = [fromCopy position];
    }

    while (position2 < [fromCopy length]);
  }

  if ([fromCopy hasError])
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
  sessionId = [(BMMessagesSearchEventDimensionContext *)self sessionId];
  systemLocale = [(BMMessagesSearchEventDimensionContext *)self systemLocale];
  currentCountry = [(BMMessagesSearchEventDimensionContext *)self currentCountry];
  build = [(BMMessagesSearchEventDimensionContext *)self build];
  osType = [(BMMessagesSearchEventDimensionContext *)self osType];
  productType = [(BMMessagesSearchEventDimensionContext *)self productType];
  v10 = BMMessagesSearchEventBuildTypeAsString([(BMMessagesSearchEventDimensionContext *)self buildType]);
  v11 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMMessagesSearchEventDimensionContext isLiveOn](self, "isLiveOn")}];
  v12 = [v14 initWithFormat:@"BMMessagesSearchEventDimensionContext with sessionStartTimestampInSeconds: %@, sessionId: %@, systemLocale: %@, currentCountry: %@, build: %@, osType: %@, productType: %@, buildType: %@, isLiveOn: %@", v3, sessionId, systemLocale, currentCountry, build, osType, productType, v10, v11];

  return v12;
}

- (BMMessagesSearchEventDimensionContext)initWithSessionStartTimestampInSeconds:(id)seconds sessionId:(id)id systemLocale:(id)locale currentCountry:(id)country build:(id)build osType:(id)type productType:(id)productType buildType:(int)self0 isLiveOn:(id)self1
{
  secondsCopy = seconds;
  idCopy = id;
  localeCopy = locale;
  countryCopy = country;
  buildCopy = build;
  typeCopy = type;
  productTypeCopy = productType;
  onCopy = on;
  v28.receiver = self;
  v28.super_class = BMMessagesSearchEventDimensionContext;
  v20 = [(BMEventBase *)&v28 init];
  if (v20)
  {
    v20->_dataVersion = [objc_opt_class() latestDataVersion];
    if (secondsCopy)
    {
      v20->_hasSessionStartTimestampInSeconds = 1;
      unsignedLongLongValue = [secondsCopy unsignedLongLongValue];
    }

    else
    {
      unsignedLongLongValue = 0;
      v20->_hasSessionStartTimestampInSeconds = 0;
    }

    v20->_sessionStartTimestampInSeconds = unsignedLongLongValue;
    objc_storeStrong(&v20->_sessionId, id);
    objc_storeStrong(&v20->_systemLocale, locale);
    objc_storeStrong(&v20->_currentCountry, country);
    objc_storeStrong(&v20->_build, build);
    objc_storeStrong(&v20->_osType, type);
    objc_storeStrong(&v20->_productType, productType);
    v20->_buildType = buildType;
    if (onCopy)
    {
      v20->_hasIsLiveOn = 1;
      v20->_isLiveOn = [onCopy BOOLValue];
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