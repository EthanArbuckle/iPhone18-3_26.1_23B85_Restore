@interface BMVisualIntelligenceCameraLookupEventDimensionContext
+ (id)columns;
+ (id)eventWithData:(id)a3 dataVersion:(unsigned int)a4;
+ (id)protoFields;
- (BMVisualIntelligenceCameraLookupEventDimensionContext)initWithJSONDictionary:(id)a3 error:(id *)a4;
- (BMVisualIntelligenceCameraLookupEventDimensionContext)initWithVisualLookupSessionId:(id)a3 systemLocale:(id)a4 currentCountry:(id)a5 build:(id)a6 osType:(id)a7 productType:(id)a8 buildType:(id)a9;
- (BOOL)isEqual:(id)a3;
- (NSString)description;
- (id)initByReadFrom:(id)a3;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)a3;
@end

@implementation BMVisualIntelligenceCameraLookupEventDimensionContext

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [(BMVisualIntelligenceCameraLookupEventDimensionContext *)self visualLookupSessionId];
    v7 = [v5 visualLookupSessionId];
    v8 = v7;
    if (v6 == v7)
    {
    }

    else
    {
      v9 = [(BMVisualIntelligenceCameraLookupEventDimensionContext *)self visualLookupSessionId];
      v10 = [v5 visualLookupSessionId];
      v11 = [v9 isEqual:v10];

      if (!v11)
      {
        goto LABEL_25;
      }
    }

    v13 = [(BMVisualIntelligenceCameraLookupEventDimensionContext *)self systemLocale];
    v14 = [v5 systemLocale];
    v15 = v14;
    if (v13 == v14)
    {
    }

    else
    {
      v16 = [(BMVisualIntelligenceCameraLookupEventDimensionContext *)self systemLocale];
      v17 = [v5 systemLocale];
      v18 = [v16 isEqual:v17];

      if (!v18)
      {
        goto LABEL_25;
      }
    }

    v19 = [(BMVisualIntelligenceCameraLookupEventDimensionContext *)self currentCountry];
    v20 = [v5 currentCountry];
    v21 = v20;
    if (v19 == v20)
    {
    }

    else
    {
      v22 = [(BMVisualIntelligenceCameraLookupEventDimensionContext *)self currentCountry];
      v23 = [v5 currentCountry];
      v24 = [v22 isEqual:v23];

      if (!v24)
      {
        goto LABEL_25;
      }
    }

    v25 = [(BMVisualIntelligenceCameraLookupEventDimensionContext *)self build];
    v26 = [v5 build];
    v27 = v26;
    if (v25 == v26)
    {
    }

    else
    {
      v28 = [(BMVisualIntelligenceCameraLookupEventDimensionContext *)self build];
      v29 = [v5 build];
      v30 = [v28 isEqual:v29];

      if (!v30)
      {
        goto LABEL_25;
      }
    }

    v31 = [(BMVisualIntelligenceCameraLookupEventDimensionContext *)self osType];
    v32 = [v5 osType];
    v33 = v32;
    if (v31 == v32)
    {
    }

    else
    {
      v34 = [(BMVisualIntelligenceCameraLookupEventDimensionContext *)self osType];
      v35 = [v5 osType];
      v36 = [v34 isEqual:v35];

      if (!v36)
      {
        goto LABEL_25;
      }
    }

    v37 = [(BMVisualIntelligenceCameraLookupEventDimensionContext *)self productType];
    v38 = [v5 productType];
    v39 = v38;
    if (v37 == v38)
    {
    }

    else
    {
      v40 = [(BMVisualIntelligenceCameraLookupEventDimensionContext *)self productType];
      v41 = [v5 productType];
      v42 = [v40 isEqual:v41];

      if (!v42)
      {
LABEL_25:
        v12 = 0;
LABEL_26:

        goto LABEL_27;
      }
    }

    v44 = [(BMVisualIntelligenceCameraLookupEventDimensionContext *)self buildType];
    v45 = [v5 buildType];
    if (v44 == v45)
    {
      v12 = 1;
    }

    else
    {
      v46 = [(BMVisualIntelligenceCameraLookupEventDimensionContext *)self buildType];
      v47 = [v5 buildType];
      v12 = [v46 isEqual:v47];
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
  v3 = [(BMVisualIntelligenceCameraLookupEventDimensionContext *)self visualLookupSessionId];
  v4 = [(BMVisualIntelligenceCameraLookupEventDimensionContext *)self systemLocale];
  v5 = [(BMVisualIntelligenceCameraLookupEventDimensionContext *)self currentCountry];
  v6 = [(BMVisualIntelligenceCameraLookupEventDimensionContext *)self build];
  v7 = [(BMVisualIntelligenceCameraLookupEventDimensionContext *)self osType];
  v8 = [(BMVisualIntelligenceCameraLookupEventDimensionContext *)self productType];
  v9 = [(BMVisualIntelligenceCameraLookupEventDimensionContext *)self buildType];
  v25[0] = @"visualLookupSessionId";
  v10 = v3;
  if (!v3)
  {
    v10 = [MEMORY[0x1E695DFB0] null];
  }

  v22 = v10;
  v26[0] = v10;
  v25[1] = @"systemLocale";
  v11 = v4;
  if (!v4)
  {
    v11 = [MEMORY[0x1E695DFB0] null];
  }

  v24 = v3;
  v21 = v11;
  v26[1] = v11;
  v25[2] = @"currentCountry";
  v12 = v5;
  if (!v5)
  {
    v12 = [MEMORY[0x1E695DFB0] null];
  }

  v23 = v4;
  v20 = v12;
  v26[2] = v12;
  v25[3] = @"build";
  v13 = v6;
  if (!v6)
  {
    v13 = [MEMORY[0x1E695DFB0] null];
  }

  v26[3] = v13;
  v25[4] = @"osType";
  v14 = v7;
  if (!v7)
  {
    v14 = [MEMORY[0x1E695DFB0] null];
  }

  v26[4] = v14;
  v25[5] = @"productType";
  v15 = v8;
  if (!v8)
  {
    v15 = [MEMORY[0x1E695DFB0] null];
  }

  v26[5] = v15;
  v25[6] = @"buildType";
  v16 = v9;
  if (!v9)
  {
    v16 = [MEMORY[0x1E695DFB0] null];
  }

  v26[6] = v16;
  v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v26 forKeys:v25 count:7];
  if (v9)
  {
    if (v8)
    {
      goto LABEL_17;
    }
  }

  else
  {

    if (v8)
    {
LABEL_17:
      if (v7)
      {
        goto LABEL_18;
      }

LABEL_28:

      if (v6)
      {
        goto LABEL_19;
      }

      goto LABEL_29;
    }
  }

  if (!v7)
  {
    goto LABEL_28;
  }

LABEL_18:
  if (v6)
  {
    goto LABEL_19;
  }

LABEL_29:

LABEL_19:
  if (!v5)
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

- (BMVisualIntelligenceCameraLookupEventDimensionContext)initWithJSONDictionary:(id)a3 error:(id *)a4
{
  v71[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [v6 objectForKeyedSubscript:@"visualLookupSessionId"];
  if (!v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v8 = 0;
LABEL_4:
    v9 = [v6 objectForKeyedSubscript:@"systemLocale"];
    v55 = a4;
    if (v9 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!a4)
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
        v11 = v30 = a4;
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

    v11 = [v6 objectForKeyedSubscript:@"currentCountry"];
    v53 = v9;
    v56 = v10;
    if (v11 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!v55)
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
        *v55 = v35;
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

    v12 = [v6 objectForKeyedSubscript:@"build"];
    v50 = v7;
    if (v12 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!v55)
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
        *v55 = v39;
        goto LABEL_26;
      }

      v52 = v12;
    }

    else
    {
      v52 = 0;
    }

    v13 = [v6 objectForKeyedSubscript:@"osType"];
    v51 = v8;
    if (v13 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!v55)
        {
          v54 = 0;
          v19 = 0;
          goto LABEL_25;
        }

        v15 = self;
        v40 = objc_alloc(MEMORY[0x1E696ABC0]);
        v41 = *MEMORY[0x1E698F240];
        v62 = *MEMORY[0x1E696A578];
        v16 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"osType"];
        v63 = v16;
        v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v63 forKeys:&v62 count:1];
        v42 = [v40 initWithDomain:v41 code:2 userInfo:v14];
        v54 = 0;
        v19 = 0;
        *v55 = v42;
LABEL_24:

        self = v15;
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

    v14 = [v6 objectForKeyedSubscript:@"productType"];
    if (v14 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      v15 = self;
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!v55)
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
        *v55 = v45;
        goto LABEL_23;
      }

      v16 = v14;
    }

    else
    {
      v15 = self;
      v16 = 0;
    }

    v17 = [v6 objectForKeyedSubscript:@"buildType"];
    if (v17 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (v55)
        {
          v49 = objc_alloc(MEMORY[0x1E696ABC0]);
          v48 = *MEMORY[0x1E698F240];
          v58 = *MEMORY[0x1E696A578];
          v46 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"buildType"];
          v59 = v46;
          v47 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v59 forKeys:&v58 count:1];
          *v55 = [v49 initWithDomain:v48 code:2 userInfo:v47];
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

    v19 = [(BMVisualIntelligenceCameraLookupEventDimensionContext *)v15 initWithVisualLookupSessionId:v51 systemLocale:v56 currentCountry:v57 build:v52 osType:v54 productType:v16 buildType:v18];
    v15 = v19;
LABEL_23:

    goto LABEL_24;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = v7;
    goto LABEL_4;
  }

  if (!a4)
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
  *a4 = v27;
LABEL_29:

LABEL_30:
  v21 = *MEMORY[0x1E69E9840];
  return v19;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMVisualIntelligenceCameraLookupEventDimensionContext *)self writeTo:v3];
  v4 = [v3 immutableData];

  return v4;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_visualLookupSessionId)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }

  if (self->_systemLocale)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }

  if (self->_currentCountry)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }

  if (self->_build)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }

  if (self->_osType)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }

  if (self->_productType)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }

  if (self->_buildType)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }
}

- (id)initByReadFrom:(id)a3
{
  v4 = a3;
  v23.receiver = self;
  v23.super_class = BMVisualIntelligenceCameraLookupEventDimensionContext;
  v5 = [(BMEventBase *)&v23 init];
  if (!v5)
  {
    goto LABEL_24;
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
        v24 = 0;
        v10 = [v4 position] + 1;
        if (v10 >= [v4 position] && (v11 = objc_msgSend(v4, "position") + 1, v11 <= objc_msgSend(v4, "length")))
        {
          v12 = [v4 data];
          [v12 getBytes:&v24 range:{objc_msgSend(v4, "position"), 1}];

          [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
        }

        else
        {
          [v4 _setError];
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

      v14 = [v4 hasError] ? 0 : v9;
LABEL_16:
      if (([v4 hasError] & 1) != 0 || (v14 & 7) == 4)
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

      v20 = [v4 position];
    }

    while (v20 < [v4 length]);
  }

  if ([v4 hasError])
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
  v4 = [(BMVisualIntelligenceCameraLookupEventDimensionContext *)self visualLookupSessionId];
  v5 = [(BMVisualIntelligenceCameraLookupEventDimensionContext *)self systemLocale];
  v6 = [(BMVisualIntelligenceCameraLookupEventDimensionContext *)self currentCountry];
  v7 = [(BMVisualIntelligenceCameraLookupEventDimensionContext *)self build];
  v8 = [(BMVisualIntelligenceCameraLookupEventDimensionContext *)self osType];
  v9 = [(BMVisualIntelligenceCameraLookupEventDimensionContext *)self productType];
  v10 = [(BMVisualIntelligenceCameraLookupEventDimensionContext *)self buildType];
  v11 = [v3 initWithFormat:@"BMVisualIntelligenceCameraLookupEventDimensionContext with visualLookupSessionId: %@, systemLocale: %@, currentCountry: %@, build: %@, osType: %@, productType: %@, buildType: %@", v4, v5, v6, v7, v8, v9, v10];

  return v11;
}

- (BMVisualIntelligenceCameraLookupEventDimensionContext)initWithVisualLookupSessionId:(id)a3 systemLocale:(id)a4 currentCountry:(id)a5 build:(id)a6 osType:(id)a7 productType:(id)a8 buildType:(id)a9
{
  v24 = a3;
  v23 = a4;
  v22 = a5;
  v21 = a6;
  v20 = a7;
  v16 = a8;
  v17 = a9;
  v25.receiver = self;
  v25.super_class = BMVisualIntelligenceCameraLookupEventDimensionContext;
  v18 = [(BMEventBase *)&v25 init];
  if (v18)
  {
    v18->_dataVersion = [objc_opt_class() latestDataVersion];
    objc_storeStrong(&v18->_visualLookupSessionId, a3);
    objc_storeStrong(&v18->_systemLocale, a4);
    objc_storeStrong(&v18->_currentCountry, a5);
    objc_storeStrong(&v18->_build, a6);
    objc_storeStrong(&v18->_osType, a7);
    objc_storeStrong(&v18->_productType, a8);
    objc_storeStrong(&v18->_buildType, a9);
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