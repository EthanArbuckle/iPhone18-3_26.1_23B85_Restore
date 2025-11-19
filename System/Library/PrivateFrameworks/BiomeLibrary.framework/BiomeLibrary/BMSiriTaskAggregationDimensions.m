@interface BMSiriTaskAggregationDimensions
+ (id)columns;
+ (id)eventWithData:(id)a3 dataVersion:(unsigned int)a4;
+ (id)protoFields;
- (BMSiriTaskAggregationDimensions)initWithJSONDictionary:(id)a3 error:(id *)a4;
- (BMSiriTaskAggregationDimensions)initWithProductArea:(int)a3 siriInputLocale:(id)a4 systemLocale:(id)a5 countryCode:(id)a6 deviceType:(id)a7 systemBuild:(id)a8;
- (BOOL)isEqual:(id)a3;
- (NSString)description;
- (id)initByReadFrom:(id)a3;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)a3;
@end

@implementation BMSiriTaskAggregationDimensions

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [(BMSiriTaskAggregationDimensions *)self productArea];
    if (v6 == [v5 productArea])
    {
      v7 = [(BMSiriTaskAggregationDimensions *)self siriInputLocale];
      v8 = [v5 siriInputLocale];
      v9 = v8;
      if (v7 == v8)
      {
      }

      else
      {
        v10 = [(BMSiriTaskAggregationDimensions *)self siriInputLocale];
        v11 = [v5 siriInputLocale];
        v12 = [v10 isEqual:v11];

        if (!v12)
        {
          goto LABEL_18;
        }
      }

      v14 = [(BMSiriTaskAggregationDimensions *)self systemLocale];
      v15 = [v5 systemLocale];
      v16 = v15;
      if (v14 == v15)
      {
      }

      else
      {
        v17 = [(BMSiriTaskAggregationDimensions *)self systemLocale];
        v18 = [v5 systemLocale];
        v19 = [v17 isEqual:v18];

        if (!v19)
        {
          goto LABEL_18;
        }
      }

      v20 = [(BMSiriTaskAggregationDimensions *)self countryCode];
      v21 = [v5 countryCode];
      v22 = v21;
      if (v20 == v21)
      {
      }

      else
      {
        v23 = [(BMSiriTaskAggregationDimensions *)self countryCode];
        v24 = [v5 countryCode];
        v25 = [v23 isEqual:v24];

        if (!v25)
        {
          goto LABEL_18;
        }
      }

      v26 = [(BMSiriTaskAggregationDimensions *)self deviceType];
      v27 = [v5 deviceType];
      v28 = v27;
      if (v26 == v27)
      {
      }

      else
      {
        v29 = [(BMSiriTaskAggregationDimensions *)self deviceType];
        v30 = [v5 deviceType];
        v31 = [v29 isEqual:v30];

        if (!v31)
        {
          goto LABEL_18;
        }
      }

      v33 = [(BMSiriTaskAggregationDimensions *)self systemBuild];
      v34 = [v5 systemBuild];
      if (v33 == v34)
      {
        v13 = 1;
      }

      else
      {
        v35 = [(BMSiriTaskAggregationDimensions *)self systemBuild];
        v36 = [v5 systemBuild];
        v13 = [v35 isEqual:v36];
      }

      goto LABEL_19;
    }

LABEL_18:
    v13 = 0;
LABEL_19:

    goto LABEL_20;
  }

  v13 = 0;
LABEL_20:

  return v13;
}

- (id)jsonDictionary
{
  v23[6] = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMSiriTaskAggregationDimensions productArea](self, "productArea")}];
  v4 = [(BMSiriTaskAggregationDimensions *)self siriInputLocale];
  v5 = [(BMSiriTaskAggregationDimensions *)self systemLocale];
  v6 = [(BMSiriTaskAggregationDimensions *)self countryCode];
  v7 = [(BMSiriTaskAggregationDimensions *)self deviceType];
  v8 = [(BMSiriTaskAggregationDimensions *)self systemBuild];
  v22[0] = @"productArea";
  v9 = v3;
  if (!v3)
  {
    v9 = [MEMORY[0x1E695DFB0] null];
  }

  v20 = v9;
  v23[0] = v9;
  v22[1] = @"siriInputLocale";
  v10 = v4;
  if (!v4)
  {
    v10 = [MEMORY[0x1E695DFB0] null];
  }

  v18 = v10;
  v23[1] = v10;
  v22[2] = @"systemLocale";
  v11 = v5;
  if (!v5)
  {
    v11 = [MEMORY[0x1E695DFB0] null];
  }

  v21 = v3;
  v23[2] = v11;
  v22[3] = @"countryCode";
  v12 = v6;
  if (!v6)
  {
    v12 = [MEMORY[0x1E695DFB0] null];
  }

  v23[3] = v12;
  v22[4] = @"deviceType";
  v13 = v7;
  if (!v7)
  {
    v13 = [MEMORY[0x1E695DFB0] null];
  }

  v23[4] = v13;
  v22[5] = @"systemBuild";
  v14 = v8;
  if (!v8)
  {
    v14 = [MEMORY[0x1E695DFB0] null];
  }

  v23[5] = v14;
  v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v23 forKeys:v22 count:{6, v18}];
  if (v8)
  {
    if (v7)
    {
      goto LABEL_15;
    }

LABEL_23:

    if (v6)
    {
      goto LABEL_16;
    }

    goto LABEL_24;
  }

  if (!v7)
  {
    goto LABEL_23;
  }

LABEL_15:
  if (v6)
  {
    goto LABEL_16;
  }

LABEL_24:

LABEL_16:
  if (v5)
  {
    if (v4)
    {
      goto LABEL_18;
    }

LABEL_26:

    if (v21)
    {
      goto LABEL_19;
    }

    goto LABEL_27;
  }

  if (!v4)
  {
    goto LABEL_26;
  }

LABEL_18:
  if (v21)
  {
    goto LABEL_19;
  }

LABEL_27:

LABEL_19:
  v16 = *MEMORY[0x1E69E9840];

  return v15;
}

- (BMSiriTaskAggregationDimensions)initWithJSONDictionary:(id)a3 error:(id *)a4
{
  v67[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [v6 objectForKeyedSubscript:@"productArea"];
  if (!v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v8 = 0;
LABEL_9:
    v10 = [v6 objectForKeyedSubscript:@"siriInputLocale"];
    v54 = v10;
    if (v10 && (v11 = v10, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!a4)
        {
          v12 = 0;
          v22 = 0;
          goto LABEL_53;
        }

        v23 = v8;
        v24 = objc_alloc(MEMORY[0x1E696ABC0]);
        v25 = a4;
        v26 = *MEMORY[0x1E698F240];
        v64 = *MEMORY[0x1E696A578];
        v14 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"siriInputLocale"];
        v65 = v14;
        v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v65 forKeys:&v64 count:1];
        v27 = v24;
        v8 = v23;
        v22 = 0;
        *v25 = [v27 initWithDomain:v26 code:2 userInfo:v13];
        v12 = 0;
        goto LABEL_52;
      }

      v12 = v11;
    }

    else
    {
      v12 = 0;
    }

    v13 = [v6 objectForKeyedSubscript:@"systemLocale"];
    v51 = v7;
    v52 = v12;
    if (v13 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!a4)
        {
          v14 = 0;
          v22 = 0;
          goto LABEL_52;
        }

        v28 = v8;
        v29 = objc_alloc(MEMORY[0x1E696ABC0]);
        v30 = a4;
        v31 = *MEMORY[0x1E698F240];
        v62 = *MEMORY[0x1E696A578];
        v55 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"systemLocale"];
        v63 = v55;
        v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v63 forKeys:&v62 count:1];
        v32 = v29;
        v8 = v28;
        v14 = 0;
        v22 = 0;
        *v30 = [v32 initWithDomain:v31 code:2 userInfo:v15];
        goto LABEL_58;
      }

      v14 = v13;
    }

    else
    {
      v14 = 0;
    }

    v15 = [v6 objectForKeyedSubscript:@"countryCode"];
    v53 = v8;
    v16 = a4;
    if (!v15 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v55 = 0;
      goto LABEL_18;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v55 = v15;
LABEL_18:
      v17 = [v6 objectForKeyedSubscript:@"deviceType"];
      v50 = v14;
      if (!v17 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
      {
        v18 = self;
        v19 = 0;
        goto LABEL_21;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v18 = self;
        v19 = v17;
LABEL_21:
        v20 = [v6 objectForKeyedSubscript:@"systemBuild"];
        if (!v20 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
        {
          v21 = 0;
LABEL_24:
          v12 = v52;
          v22 = -[BMSiriTaskAggregationDimensions initWithProductArea:siriInputLocale:systemLocale:countryCode:deviceType:systemBuild:](v18, "initWithProductArea:siriInputLocale:systemLocale:countryCode:deviceType:systemBuild:", [v53 intValue], v52, v50, v55, v19, v21);
          v18 = v22;
LABEL_49:

          self = v18;
          v14 = v50;
LABEL_50:

          v8 = v53;
LABEL_51:

          v7 = v51;
LABEL_52:

          v11 = v54;
          goto LABEL_53;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v21 = v20;
          goto LABEL_24;
        }

        if (v16)
        {
          v49 = objc_alloc(MEMORY[0x1E696ABC0]);
          v47 = *MEMORY[0x1E698F240];
          v56 = *MEMORY[0x1E696A578];
          v43 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"systemBuild"];
          v57 = v43;
          v44 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v57 forKeys:&v56 count:1];
          *v16 = [v49 initWithDomain:v47 code:2 userInfo:v44];
        }

        v21 = 0;
        v22 = 0;
LABEL_48:
        v12 = v52;
        goto LABEL_49;
      }

      if (v16)
      {
        v18 = self;
        v48 = objc_alloc(MEMORY[0x1E696ABC0]);
        v37 = *MEMORY[0x1E698F240];
        v58 = *MEMORY[0x1E696A578];
        v21 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"deviceType"];
        v59 = v21;
        v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v59 forKeys:&v58 count:1];
        v38 = [v48 initWithDomain:v37 code:2 userInfo:v20];
        v19 = 0;
        v22 = 0;
        *v16 = v38;
        goto LABEL_48;
      }

      v19 = 0;
      v22 = 0;
LABEL_60:
      v12 = v52;
      goto LABEL_50;
    }

    if (a4)
    {
      v33 = objc_alloc(MEMORY[0x1E696ABC0]);
      v34 = v14;
      v35 = *MEMORY[0x1E698F240];
      v60 = *MEMORY[0x1E696A578];
      v19 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"countryCode"];
      v61 = v19;
      v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v61 forKeys:&v60 count:1];
      v36 = v35;
      v14 = v34;
      v55 = 0;
      v22 = 0;
      *v16 = [v33 initWithDomain:v36 code:2 userInfo:v17];
      goto LABEL_60;
    }

    v55 = 0;
    v22 = 0;
LABEL_58:
    v12 = v52;
    goto LABEL_51;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = v7;
LABEL_8:
    v8 = v9;
    goto LABEL_9;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = [MEMORY[0x1E696AD98] numberWithInt:BMSiriTaskAggregationDimensionsSiriProductAreaFromString(v7)];
    goto LABEL_8;
  }

  if (!a4)
  {
    v8 = 0;
    v22 = 0;
    goto LABEL_54;
  }

  v39 = objc_alloc(MEMORY[0x1E696ABC0]);
  v40 = a4;
  v41 = *MEMORY[0x1E698F240];
  v66 = *MEMORY[0x1E696A578];
  v12 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (corresponding to enum value), or NSString (string version of enum)", objc_opt_class(), @"productArea"];
  v67[0] = v12;
  v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v67 forKeys:&v66 count:1];
  v42 = [v39 initWithDomain:v41 code:2 userInfo:v11];
  v8 = 0;
  v22 = 0;
  *v40 = v42;
LABEL_53:

LABEL_54:
  v45 = *MEMORY[0x1E69E9840];
  return v22;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMSiriTaskAggregationDimensions *)self writeTo:v3];
  v4 = [v3 immutableData];

  return v4;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  productArea = self->_productArea;
  v7 = v4;
  PBDataWriterWriteUint32Field();
  if (self->_siriInputLocale)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_systemLocale)
  {
    PBDataWriterWriteStringField();
  }

  v6 = v7;
  if (self->_countryCode)
  {
    PBDataWriterWriteStringField();
    v6 = v7;
  }

  if (self->_deviceType)
  {
    PBDataWriterWriteStringField();
    v6 = v7;
  }

  if (self->_systemBuild)
  {
    PBDataWriterWriteStringField();
    v6 = v7;
  }
}

- (id)initByReadFrom:(id)a3
{
  v4 = a3;
  v29.receiver = self;
  v29.super_class = BMSiriTaskAggregationDimensions;
  v5 = [(BMEventBase *)&v29 init];
  if (!v5)
  {
    goto LABEL_50;
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
        v30 = 0;
        v10 = [v4 position] + 1;
        if (v10 >= [v4 position] && (v11 = objc_msgSend(v4, "position") + 1, v11 <= objc_msgSend(v4, "length")))
        {
          v12 = [v4 data];
          [v12 getBytes:&v30 range:{objc_msgSend(v4, "position"), 1}];

          [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
        }

        else
        {
          [v4 _setError];
        }

        v9 |= (v30 & 0x7F) << v7;
        if ((v30 & 0x80) == 0)
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

      v15 = v14 >> 3;
      if ((v14 >> 3) > 3)
      {
        switch(v15)
        {
          case 4:
            v16 = PBReaderReadString();
            v17 = 40;
            break;
          case 5:
            v16 = PBReaderReadString();
            v17 = 48;
            break;
          case 6:
            v16 = PBReaderReadString();
            v17 = 56;
            break;
          default:
LABEL_37:
            if (!PBReaderSkipValueWithTag())
            {
              goto LABEL_49;
            }

            goto LABEL_42;
        }
      }

      else
      {
        switch(v15)
        {
          case 1:
            v18 = 0;
            v19 = 0;
            v20 = 0;
            while (1)
            {
              v30 = 0;
              v21 = [v4 position] + 1;
              if (v21 >= [v4 position] && (v22 = objc_msgSend(v4, "position") + 1, v22 <= objc_msgSend(v4, "length")))
              {
                v23 = [v4 data];
                [v23 getBytes:&v30 range:{objc_msgSend(v4, "position"), 1}];

                [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
              }

              else
              {
                [v4 _setError];
              }

              v20 |= (v30 & 0x7F) << v18;
              if ((v30 & 0x80) == 0)
              {
                break;
              }

              v18 += 7;
              if (v19++ > 8)
              {
                goto LABEL_46;
              }
            }

            if (([v4 hasError] & 1) != 0 || v20 > 3)
            {
LABEL_46:
              LODWORD(v20) = 0;
            }

            v5->_productArea = v20;
            goto LABEL_42;
          case 2:
            v16 = PBReaderReadString();
            v17 = 24;
            break;
          case 3:
            v16 = PBReaderReadString();
            v17 = 32;
            break;
          default:
            goto LABEL_37;
        }
      }

      v25 = *(&v5->super.super.isa + v17);
      *(&v5->super.super.isa + v17) = v16;

LABEL_42:
      v26 = [v4 position];
    }

    while (v26 < [v4 length]);
  }

  if ([v4 hasError])
  {
LABEL_49:
    v27 = 0;
  }

  else
  {
LABEL_50:
    v27 = v5;
  }

  return v27;
}

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = BMSiriTaskAggregationDimensionsSiriProductAreaAsString([(BMSiriTaskAggregationDimensions *)self productArea]);
  v5 = [(BMSiriTaskAggregationDimensions *)self siriInputLocale];
  v6 = [(BMSiriTaskAggregationDimensions *)self systemLocale];
  v7 = [(BMSiriTaskAggregationDimensions *)self countryCode];
  v8 = [(BMSiriTaskAggregationDimensions *)self deviceType];
  v9 = [(BMSiriTaskAggregationDimensions *)self systemBuild];
  v10 = [v3 initWithFormat:@"BMSiriTaskAggregationDimensions with productArea: %@, siriInputLocale: %@, systemLocale: %@, countryCode: %@, deviceType: %@, systemBuild: %@", v4, v5, v6, v7, v8, v9];

  return v10;
}

- (BMSiriTaskAggregationDimensions)initWithProductArea:(int)a3 siriInputLocale:(id)a4 systemLocale:(id)a5 countryCode:(id)a6 deviceType:(id)a7 systemBuild:(id)a8
{
  v21 = a4;
  v20 = a5;
  v15 = a6;
  v16 = a7;
  v17 = a8;
  v22.receiver = self;
  v22.super_class = BMSiriTaskAggregationDimensions;
  v18 = [(BMEventBase *)&v22 init];
  if (v18)
  {
    v18->_dataVersion = [objc_opt_class() latestDataVersion];
    v18->_productArea = a3;
    objc_storeStrong(&v18->_siriInputLocale, a4);
    objc_storeStrong(&v18->_systemLocale, a5);
    objc_storeStrong(&v18->_countryCode, a6);
    objc_storeStrong(&v18->_deviceType, a7);
    objc_storeStrong(&v18->_systemBuild, a8);
  }

  return v18;
}

+ (id)protoFields
{
  v11[6] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"productArea" number:1 type:4 subMessageClass:0];
  v11[0] = v2;
  v3 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"siriInputLocale" number:2 type:13 subMessageClass:0];
  v11[1] = v3;
  v4 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"systemLocale" number:3 type:13 subMessageClass:0];
  v11[2] = v4;
  v5 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"countryCode" number:4 type:13 subMessageClass:0];
  v11[3] = v5;
  v6 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"deviceType" number:5 type:13 subMessageClass:0];
  v11[4] = v6;
  v7 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"systemBuild" number:6 type:13 subMessageClass:0];
  v11[5] = v7;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:6];

  v9 = *MEMORY[0x1E69E9840];

  return v8;
}

+ (id)columns
{
  v11[6] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"productArea" dataType:0 requestOnly:0 fieldNumber:1 protoDataType:4 convertedType:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"siriInputLocale" dataType:2 requestOnly:0 fieldNumber:2 protoDataType:13 convertedType:0];
  v4 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"systemLocale" dataType:2 requestOnly:0 fieldNumber:3 protoDataType:13 convertedType:0];
  v5 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"countryCode" dataType:2 requestOnly:0 fieldNumber:4 protoDataType:13 convertedType:0];
  v6 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"deviceType" dataType:2 requestOnly:0 fieldNumber:5 protoDataType:13 convertedType:0];
  v7 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"systemBuild" dataType:2 requestOnly:0 fieldNumber:6 protoDataType:13 convertedType:0];
  v11[0] = v2;
  v11[1] = v3;
  v11[2] = v4;
  v11[3] = v5;
  v11[4] = v6;
  v11[5] = v7;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:6];

  v9 = *MEMORY[0x1E69E9840];

  return v8;
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

    v8 = [[BMSiriTaskAggregationDimensions alloc] initByReadFrom:v7];
    v4 = v8;
    if (v8)
    {
      v8[4] = 0;
    }
  }

  return v4;
}

@end