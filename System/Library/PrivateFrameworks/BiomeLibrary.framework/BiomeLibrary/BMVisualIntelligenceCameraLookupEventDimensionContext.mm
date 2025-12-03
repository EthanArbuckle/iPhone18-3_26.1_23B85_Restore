@interface BMVisualIntelligenceCameraLookupEventDimensionContext
+ (id)columns;
+ (id)eventWithData:(id)data dataVersion:(unsigned int)version;
+ (id)protoFields;
- (BMVisualIntelligenceCameraLookupEventDimensionContext)initWithJSONDictionary:(id)dictionary error:(id *)error;
- (BMVisualIntelligenceCameraLookupEventDimensionContext)initWithVisualLookupSessionId:(id)id systemLocale:(id)locale currentCountry:(id)country build:(id)build osType:(id)type productType:(id)productType buildType:(id)buildType;
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (id)initByReadFrom:(id)from;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)to;
@end

@implementation BMVisualIntelligenceCameraLookupEventDimensionContext

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    visualLookupSessionId = [(BMVisualIntelligenceCameraLookupEventDimensionContext *)self visualLookupSessionId];
    visualLookupSessionId2 = [v5 visualLookupSessionId];
    v8 = visualLookupSessionId2;
    if (visualLookupSessionId == visualLookupSessionId2)
    {
    }

    else
    {
      visualLookupSessionId3 = [(BMVisualIntelligenceCameraLookupEventDimensionContext *)self visualLookupSessionId];
      visualLookupSessionId4 = [v5 visualLookupSessionId];
      v11 = [visualLookupSessionId3 isEqual:visualLookupSessionId4];

      if (!v11)
      {
        goto LABEL_25;
      }
    }

    systemLocale = [(BMVisualIntelligenceCameraLookupEventDimensionContext *)self systemLocale];
    systemLocale2 = [v5 systemLocale];
    v15 = systemLocale2;
    if (systemLocale == systemLocale2)
    {
    }

    else
    {
      systemLocale3 = [(BMVisualIntelligenceCameraLookupEventDimensionContext *)self systemLocale];
      systemLocale4 = [v5 systemLocale];
      v18 = [systemLocale3 isEqual:systemLocale4];

      if (!v18)
      {
        goto LABEL_25;
      }
    }

    currentCountry = [(BMVisualIntelligenceCameraLookupEventDimensionContext *)self currentCountry];
    currentCountry2 = [v5 currentCountry];
    v21 = currentCountry2;
    if (currentCountry == currentCountry2)
    {
    }

    else
    {
      currentCountry3 = [(BMVisualIntelligenceCameraLookupEventDimensionContext *)self currentCountry];
      currentCountry4 = [v5 currentCountry];
      v24 = [currentCountry3 isEqual:currentCountry4];

      if (!v24)
      {
        goto LABEL_25;
      }
    }

    build = [(BMVisualIntelligenceCameraLookupEventDimensionContext *)self build];
    build2 = [v5 build];
    v27 = build2;
    if (build == build2)
    {
    }

    else
    {
      build3 = [(BMVisualIntelligenceCameraLookupEventDimensionContext *)self build];
      build4 = [v5 build];
      v30 = [build3 isEqual:build4];

      if (!v30)
      {
        goto LABEL_25;
      }
    }

    osType = [(BMVisualIntelligenceCameraLookupEventDimensionContext *)self osType];
    osType2 = [v5 osType];
    v33 = osType2;
    if (osType == osType2)
    {
    }

    else
    {
      osType3 = [(BMVisualIntelligenceCameraLookupEventDimensionContext *)self osType];
      osType4 = [v5 osType];
      v36 = [osType3 isEqual:osType4];

      if (!v36)
      {
        goto LABEL_25;
      }
    }

    productType = [(BMVisualIntelligenceCameraLookupEventDimensionContext *)self productType];
    productType2 = [v5 productType];
    v39 = productType2;
    if (productType == productType2)
    {
    }

    else
    {
      productType3 = [(BMVisualIntelligenceCameraLookupEventDimensionContext *)self productType];
      productType4 = [v5 productType];
      v42 = [productType3 isEqual:productType4];

      if (!v42)
      {
LABEL_25:
        v12 = 0;
LABEL_26:

        goto LABEL_27;
      }
    }

    buildType = [(BMVisualIntelligenceCameraLookupEventDimensionContext *)self buildType];
    buildType2 = [v5 buildType];
    if (buildType == buildType2)
    {
      v12 = 1;
    }

    else
    {
      buildType3 = [(BMVisualIntelligenceCameraLookupEventDimensionContext *)self buildType];
      buildType4 = [v5 buildType];
      v12 = [buildType3 isEqual:buildType4];
    }

    goto LABEL_26;
  }

  v12 = 0;
LABEL_27:

  return v12;
}

- (id)jsonDictionary
{
  v26[7] = *MEMORY[0x1E69E9840];
  visualLookupSessionId = [(BMVisualIntelligenceCameraLookupEventDimensionContext *)self visualLookupSessionId];
  systemLocale = [(BMVisualIntelligenceCameraLookupEventDimensionContext *)self systemLocale];
  currentCountry = [(BMVisualIntelligenceCameraLookupEventDimensionContext *)self currentCountry];
  build = [(BMVisualIntelligenceCameraLookupEventDimensionContext *)self build];
  osType = [(BMVisualIntelligenceCameraLookupEventDimensionContext *)self osType];
  productType = [(BMVisualIntelligenceCameraLookupEventDimensionContext *)self productType];
  buildType = [(BMVisualIntelligenceCameraLookupEventDimensionContext *)self buildType];
  v25[0] = @"visualLookupSessionId";
  null = visualLookupSessionId;
  if (!visualLookupSessionId)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v22 = null;
  v26[0] = null;
  v25[1] = @"systemLocale";
  null2 = systemLocale;
  if (!systemLocale)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v24 = visualLookupSessionId;
  v21 = null2;
  v26[1] = null2;
  v25[2] = @"currentCountry";
  null3 = currentCountry;
  if (!currentCountry)
  {
    null3 = [MEMORY[0x1E695DFB0] null];
  }

  v23 = systemLocale;
  v20 = null3;
  v26[2] = null3;
  v25[3] = @"build";
  null4 = build;
  if (!build)
  {
    null4 = [MEMORY[0x1E695DFB0] null];
  }

  v26[3] = null4;
  v25[4] = @"osType";
  null5 = osType;
  if (!osType)
  {
    null5 = [MEMORY[0x1E695DFB0] null];
  }

  v26[4] = null5;
  v25[5] = @"productType";
  null6 = productType;
  if (!productType)
  {
    null6 = [MEMORY[0x1E695DFB0] null];
  }

  v26[5] = null6;
  v25[6] = @"buildType";
  null7 = buildType;
  if (!buildType)
  {
    null7 = [MEMORY[0x1E695DFB0] null];
  }

  v26[6] = null7;
  v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v26 forKeys:v25 count:7];
  if (buildType)
  {
    if (productType)
    {
      goto LABEL_17;
    }
  }

  else
  {

    if (productType)
    {
LABEL_17:
      if (osType)
      {
        goto LABEL_18;
      }

LABEL_28:

      if (build)
      {
        goto LABEL_19;
      }

      goto LABEL_29;
    }
  }

  if (!osType)
  {
    goto LABEL_28;
  }

LABEL_18:
  if (build)
  {
    goto LABEL_19;
  }

LABEL_29:

LABEL_19:
  if (!currentCountry)
  {
  }

  if (v23)
  {
    if (v24)
    {
      goto LABEL_23;
    }
  }

  else
  {

    if (v24)
    {
      goto LABEL_23;
    }
  }

LABEL_23:
  v18 = *MEMORY[0x1E69E9840];

  return v17;
}

- (BMVisualIntelligenceCameraLookupEventDimensionContext)initWithJSONDictionary:(id)dictionary error:(id *)error
{
  v71[1] = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v7 = [dictionaryCopy objectForKeyedSubscript:@"visualLookupSessionId"];
  if (!v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v8 = 0;
LABEL_4:
    v9 = [dictionaryCopy objectForKeyedSubscript:@"systemLocale"];
    errorCopy = error;
    if (v9 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!error)
        {
          v10 = 0;
          v19 = 0;
          goto LABEL_29;
        }

        v28 = objc_alloc(MEMORY[0x1E696ABC0]);
        v29 = *MEMORY[0x1E698F240];
        v68 = *MEMORY[0x1E696A578];
        v57 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"systemLocale"];
        v69 = v57;
        [MEMORY[0x1E695DF20] dictionaryWithObjects:&v69 forKeys:&v68 count:1];
        v11 = v30 = error;
        v31 = [v28 initWithDomain:v29 code:2 userInfo:v11];
        v10 = 0;
        v19 = 0;
        *v30 = v31;
        goto LABEL_28;
      }

      v10 = v9;
    }

    else
    {
      v10 = 0;
    }

    v11 = [dictionaryCopy objectForKeyedSubscript:@"currentCountry"];
    v53 = v9;
    v56 = v10;
    if (v11 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!errorCopy)
        {
          v57 = 0;
          v19 = 0;
          goto LABEL_28;
        }

        v32 = objc_alloc(MEMORY[0x1E696ABC0]);
        v33 = *MEMORY[0x1E698F240];
        v66 = *MEMORY[0x1E696A578];
        v20 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"currentCountry"];
        v67 = v20;
        v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v67 forKeys:&v66 count:1];
        v34 = v32;
        v10 = v56;
        v35 = [v34 initWithDomain:v33 code:2 userInfo:v12];
        v57 = 0;
        v19 = 0;
        *errorCopy = v35;
LABEL_27:

        v9 = v53;
LABEL_28:

        goto LABEL_29;
      }

      v57 = v11;
    }

    else
    {
      v57 = 0;
    }

    v12 = [dictionaryCopy objectForKeyedSubscript:@"build"];
    v50 = v7;
    if (v12 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!errorCopy)
        {
          v20 = 0;
          v19 = 0;
          goto LABEL_27;
        }

        v36 = objc_alloc(MEMORY[0x1E696ABC0]);
        v37 = *MEMORY[0x1E698F240];
        v64 = *MEMORY[0x1E696A578];
        v54 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"build"];
        v65 = v54;
        v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v65 forKeys:&v64 count:1];
        v38 = v36;
        v10 = v56;
        v39 = [v38 initWithDomain:v37 code:2 userInfo:v13];
        v20 = 0;
        v19 = 0;
        *errorCopy = v39;
        goto LABEL_26;
      }

      v52 = v12;
    }

    else
    {
      v52 = 0;
    }

    v13 = [dictionaryCopy objectForKeyedSubscript:@"osType"];
    v51 = v8;
    if (v13 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!errorCopy)
        {
          v54 = 0;
          v19 = 0;
          goto LABEL_25;
        }

        selfCopy3 = self;
        v40 = objc_alloc(MEMORY[0x1E696ABC0]);
        v41 = *MEMORY[0x1E698F240];
        v62 = *MEMORY[0x1E696A578];
        v16 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"osType"];
        v63 = v16;
        v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v63 forKeys:&v62 count:1];
        v42 = [v40 initWithDomain:v41 code:2 userInfo:v14];
        v54 = 0;
        v19 = 0;
        *errorCopy = v42;
LABEL_24:

        self = selfCopy3;
        v8 = v51;
        v10 = v56;
LABEL_25:
        v20 = v52;
LABEL_26:

        v7 = v50;
        goto LABEL_27;
      }

      v54 = v13;
    }

    else
    {
      v54 = 0;
    }

    v14 = [dictionaryCopy objectForKeyedSubscript:@"productType"];
    if (v14 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      selfCopy3 = self;
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!errorCopy)
        {
          v16 = 0;
          v19 = 0;
          goto LABEL_24;
        }

        v43 = objc_alloc(MEMORY[0x1E696ABC0]);
        v44 = *MEMORY[0x1E698F240];
        v60 = *MEMORY[0x1E696A578];
        v18 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"productType"];
        v61 = v18;
        v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v61 forKeys:&v60 count:1];
        v45 = [v43 initWithDomain:v44 code:2 userInfo:v17];
        v16 = 0;
        v19 = 0;
        *errorCopy = v45;
        goto LABEL_23;
      }

      v16 = v14;
    }

    else
    {
      selfCopy3 = self;
      v16 = 0;
    }

    v17 = [dictionaryCopy objectForKeyedSubscript:@"buildType"];
    if (v17 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (errorCopy)
        {
          v49 = objc_alloc(MEMORY[0x1E696ABC0]);
          v48 = *MEMORY[0x1E698F240];
          v58 = *MEMORY[0x1E696A578];
          v46 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"buildType"];
          v59 = v46;
          v47 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v59 forKeys:&v58 count:1];
          *errorCopy = [v49 initWithDomain:v48 code:2 userInfo:v47];
        }

        v18 = 0;
        v19 = 0;
        goto LABEL_23;
      }

      v18 = v17;
    }

    else
    {
      v18 = 0;
    }

    v19 = [(BMVisualIntelligenceCameraLookupEventDimensionContext *)selfCopy3 initWithVisualLookupSessionId:v51 systemLocale:v56 currentCountry:v57 build:v52 osType:v54 productType:v16 buildType:v18];
    selfCopy3 = v19;
LABEL_23:

    goto LABEL_24;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = v7;
    goto LABEL_4;
  }

  if (!error)
  {
    v8 = 0;
    v19 = 0;
    goto LABEL_30;
  }

  v23 = objc_alloc(MEMORY[0x1E696ABC0]);
  v24 = *MEMORY[0x1E698F240];
  v70 = *MEMORY[0x1E696A578];
  v25 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"visualLookupSessionId"];
  v71[0] = v25;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v71 forKeys:&v70 count:1];
  v26 = v23;
  v10 = v25;
  v27 = [v26 initWithDomain:v24 code:2 userInfo:v9];
  v8 = 0;
  v19 = 0;
  *error = v27;
LABEL_29:

LABEL_30:
  v21 = *MEMORY[0x1E69E9840];
  return v19;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMVisualIntelligenceCameraLookupEventDimensionContext *)self writeTo:v3];
  immutableData = [v3 immutableData];

  return immutableData;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_visualLookupSessionId)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }

  if (self->_systemLocale)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }

  if (self->_currentCountry)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }

  if (self->_build)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }

  if (self->_osType)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }

  if (self->_productType)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }

  if (self->_buildType)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }
}

- (id)initByReadFrom:(id)from
{
  fromCopy = from;
  v23.receiver = self;
  v23.super_class = BMVisualIntelligenceCameraLookupEventDimensionContext;
  v5 = [(BMEventBase *)&v23 init];
  if (!v5)
  {
    goto LABEL_24;
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
        v24 = 0;
        v10 = [fromCopy position] + 1;
        if (v10 >= [fromCopy position] && (v11 = objc_msgSend(fromCopy, "position") + 1, v11 <= objc_msgSend(fromCopy, "length")))
        {
          data = [fromCopy data];
          [data getBytes:&v24 range:{objc_msgSend(fromCopy, "position"), 1}];

          [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
        }

        else
        {
          [fromCopy _setError];
        }

        v9 |= (v24 & 0x7F) << v7;
        if ((v24 & 0x80) == 0)
        {
          break;
        }

        v7 += 7;
        if (v8++ >= 9)
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

      v15 = (v14 >> 3) - 1;
      if (v15 >= 7)
      {
        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          goto LABEL_23;
        }
      }

      else
      {
        v16 = off_1E6EA1F28[v15];
        v17 = PBReaderReadString();
        v18 = *v16;
        v19 = *(&v5->super.super.isa + v18);
        *(&v5->super.super.isa + v18) = v17;
      }

      position2 = [fromCopy position];
    }

    while (position2 < [fromCopy length]);
  }

  if ([fromCopy hasError])
  {
LABEL_23:
    v21 = 0;
  }

  else
  {
LABEL_24:
    v21 = v5;
  }

  return v21;
}

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  visualLookupSessionId = [(BMVisualIntelligenceCameraLookupEventDimensionContext *)self visualLookupSessionId];
  systemLocale = [(BMVisualIntelligenceCameraLookupEventDimensionContext *)self systemLocale];
  currentCountry = [(BMVisualIntelligenceCameraLookupEventDimensionContext *)self currentCountry];
  build = [(BMVisualIntelligenceCameraLookupEventDimensionContext *)self build];
  osType = [(BMVisualIntelligenceCameraLookupEventDimensionContext *)self osType];
  productType = [(BMVisualIntelligenceCameraLookupEventDimensionContext *)self productType];
  buildType = [(BMVisualIntelligenceCameraLookupEventDimensionContext *)self buildType];
  v11 = [v3 initWithFormat:@"BMVisualIntelligenceCameraLookupEventDimensionContext with visualLookupSessionId: %@, systemLocale: %@, currentCountry: %@, build: %@, osType: %@, productType: %@, buildType: %@", visualLookupSessionId, systemLocale, currentCountry, build, osType, productType, buildType];

  return v11;
}

- (BMVisualIntelligenceCameraLookupEventDimensionContext)initWithVisualLookupSessionId:(id)id systemLocale:(id)locale currentCountry:(id)country build:(id)build osType:(id)type productType:(id)productType buildType:(id)buildType
{
  idCopy = id;
  localeCopy = locale;
  countryCopy = country;
  buildCopy = build;
  typeCopy = type;
  productTypeCopy = productType;
  buildTypeCopy = buildType;
  v25.receiver = self;
  v25.super_class = BMVisualIntelligenceCameraLookupEventDimensionContext;
  v18 = [(BMEventBase *)&v25 init];
  if (v18)
  {
    v18->_dataVersion = [objc_opt_class() latestDataVersion];
    objc_storeStrong(&v18->_visualLookupSessionId, id);
    objc_storeStrong(&v18->_systemLocale, locale);
    objc_storeStrong(&v18->_currentCountry, country);
    objc_storeStrong(&v18->_build, build);
    objc_storeStrong(&v18->_osType, type);
    objc_storeStrong(&v18->_productType, productType);
    objc_storeStrong(&v18->_buildType, buildType);
  }

  return v18;
}

+ (id)protoFields
{
  v12[7] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"visualLookupSessionId" number:1 type:13 subMessageClass:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"systemLocale" number:2 type:13 subMessageClass:{0, v2}];
  v12[1] = v3;
  v4 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"currentCountry" number:3 type:13 subMessageClass:0];
  v12[2] = v4;
  v5 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"build" number:4 type:13 subMessageClass:0];
  v12[3] = v5;
  v6 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"osType" number:5 type:13 subMessageClass:0];
  v12[4] = v6;
  v7 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"productType" number:6 type:13 subMessageClass:0];
  v12[5] = v7;
  v8 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"buildType" number:7 type:13 subMessageClass:0];
  v12[6] = v8;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:7];

  v10 = *MEMORY[0x1E69E9840];

  return v9;
}

+ (id)columns
{
  v12[7] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"visualLookupSessionId" dataType:2 requestOnly:0 fieldNumber:1 protoDataType:13 convertedType:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"systemLocale" dataType:2 requestOnly:0 fieldNumber:2 protoDataType:13 convertedType:0];
  v4 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"currentCountry" dataType:2 requestOnly:0 fieldNumber:3 protoDataType:13 convertedType:0];
  v5 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"build" dataType:2 requestOnly:0 fieldNumber:4 protoDataType:13 convertedType:0];
  v6 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"osType" dataType:2 requestOnly:0 fieldNumber:5 protoDataType:13 convertedType:0];
  v7 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"productType" dataType:2 requestOnly:0 fieldNumber:6 protoDataType:13 convertedType:0];
  v8 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"buildType" dataType:2 requestOnly:0 fieldNumber:7 protoDataType:13 convertedType:0];
  v12[0] = v2;
  v12[1] = v3;
  v12[2] = v4;
  v12[3] = v5;
  v12[4] = v6;
  v12[5] = v7;
  v12[6] = v8;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:7];

  v10 = *MEMORY[0x1E69E9840];

  return v9;
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

    v8 = [[BMVisualIntelligenceCameraLookupEventDimensionContext alloc] initByReadFrom:v7];
    v4 = v8;
    if (v8)
    {
      v8[4] = 0;
    }
  }

  return v4;
}

@end