@interface BMAppInstallation
+ (id)columns;
+ (id)eventWithData:(id)a3 dataVersion:(unsigned int)a4;
+ (id)protoFields;
- (BMAppInstallation)initWithApp:(id)a3 transition:(int)a4 metadata:(id)a5 transitionDate:(id)a6;
- (BMAppInstallation)initWithJSONDictionary:(id)a3 error:(id *)a4;
- (BOOL)isEqual:(id)a3;
- (NSDate)transitionDate;
- (NSString)description;
- (id)initByReadFrom:(id)a3;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)a3;
@end

@implementation BMAppInstallation

+ (id)columns
{
  v9[4] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"app_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_238];
  v3 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"transition" dataType:0 requestOnly:0 fieldNumber:2 protoDataType:4 convertedType:0];
  v4 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"metadata_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_240_90328];
  v5 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"transitionDate" dataType:3 requestOnly:0 fieldNumber:4 protoDataType:0 convertedType:2];
  v9[0] = v2;
  v9[1] = v3;
  v9[2] = v4;
  v9[3] = v5;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:4];

  v7 = *MEMORY[0x1E69E9840];

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [(BMAppInstallation *)self app];
    v7 = [v5 app];
    v8 = v7;
    if (v6 == v7)
    {
    }

    else
    {
      v9 = [(BMAppInstallation *)self app];
      v10 = [v5 app];
      v11 = [v9 isEqual:v10];

      if (!v11)
      {
        goto LABEL_10;
      }
    }

    v13 = [(BMAppInstallation *)self transition];
    if (v13 == [v5 transition])
    {
      v14 = [(BMAppInstallation *)self metadata];
      v15 = [v5 metadata];
      v16 = v15;
      if (v14 == v15)
      {
      }

      else
      {
        v17 = [(BMAppInstallation *)self metadata];
        v18 = [v5 metadata];
        v19 = [v17 isEqual:v18];

        if (!v19)
        {
          goto LABEL_10;
        }
      }

      v20 = [(BMAppInstallation *)self transitionDate];
      v21 = [v5 transitionDate];
      if (v20 == v21)
      {
        v12 = 1;
      }

      else
      {
        v22 = [(BMAppInstallation *)self transitionDate];
        v23 = [v5 transitionDate];
        v12 = [v22 isEqual:v23];
      }

      goto LABEL_16;
    }

LABEL_10:
    v12 = 0;
LABEL_16:

    goto LABEL_17;
  }

  v12 = 0;
LABEL_17:

  return v12;
}

- (NSDate)transitionDate
{
  if (self->_hasRaw_transitionDate)
  {
    v2 = MEMORY[0x1E698F280];
    v3 = [MEMORY[0x1E696AD98] numberWithDouble:self->_raw_transitionDate];
    v4 = [v2 convertValue:v3 toType:2];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)jsonDictionary
{
  v20[4] = *MEMORY[0x1E69E9840];
  v3 = [(BMAppInstallation *)self app];
  v4 = [v3 jsonDictionary];

  v5 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMAppInstallation transition](self, "transition")}];
  v6 = [(BMAppInstallation *)self metadata];
  v7 = [v6 jsonDictionary];

  v8 = [(BMAppInstallation *)self transitionDate];
  if (v8)
  {
    v9 = MEMORY[0x1E696AD98];
    v10 = [(BMAppInstallation *)self transitionDate];
    [v10 timeIntervalSince1970];
    v11 = [v9 numberWithDouble:?];
  }

  else
  {
    v11 = 0;
  }

  v19[0] = @"app";
  v12 = v4;
  if (!v4)
  {
    v12 = [MEMORY[0x1E695DFB0] null];
  }

  v20[0] = v12;
  v19[1] = @"transition";
  v13 = v5;
  if (!v5)
  {
    v13 = [MEMORY[0x1E695DFB0] null];
  }

  v20[1] = v13;
  v19[2] = @"metadata";
  v14 = v7;
  if (!v7)
  {
    v14 = [MEMORY[0x1E695DFB0] null];
  }

  v20[2] = v14;
  v19[3] = @"transitionDate";
  v15 = v11;
  if (!v11)
  {
    v15 = [MEMORY[0x1E695DFB0] null];
  }

  v20[3] = v15;
  v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v20 forKeys:v19 count:4];
  if (v11)
  {
    if (v7)
    {
      goto LABEL_14;
    }
  }

  else
  {

    if (v7)
    {
LABEL_14:
      if (v5)
      {
        goto LABEL_15;
      }

LABEL_21:

      if (v4)
      {
        goto LABEL_16;
      }

      goto LABEL_22;
    }
  }

  if (!v5)
  {
    goto LABEL_21;
  }

LABEL_15:
  if (v4)
  {
    goto LABEL_16;
  }

LABEL_22:

LABEL_16:
  v17 = *MEMORY[0x1E69E9840];

  return v16;
}

- (BMAppInstallation)initWithJSONDictionary:(id)a3 error:(id *)a4
{
  v57[1] = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = [v5 objectForKeyedSubscript:@"app"];
  if (!v6 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v7 = 0;
    goto LABEL_4;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = v6;
    v49 = 0;
    v7 = [[BMAppInstallationApp alloc] initWithJSONDictionary:v9 error:&v49];
    v10 = v49;
    if (v10)
    {
      v11 = self;
      if (a4)
      {
        v10 = v10;
        *a4 = v10;
      }

      v12 = 0;
      goto LABEL_47;
    }

LABEL_4:
    v8 = [v5 objectForKeyedSubscript:@"transition"];
    if (v8 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v13 = v8;
      }

      else
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          if (!a4)
          {
            v9 = 0;
            v12 = 0;
            v11 = self;
            goto LABEL_46;
          }

          v35 = objc_alloc(MEMORY[0x1E696ABC0]);
          v36 = a4;
          v37 = *MEMORY[0x1E698F240];
          v54 = *MEMORY[0x1E696A578];
          v16 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (corresponding to enum value), or NSString (string version of enum)", objc_opt_class(), @"transition"];
          v55 = v16;
          v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v55 forKeys:&v54 count:1];
          v46 = 0;
          v12 = 0;
          *v36 = [v35 initWithDomain:v37 code:2 userInfo:v18];
          goto LABEL_43;
        }

        v13 = [MEMORY[0x1E696AD98] numberWithInt:BMAppInstallationTransitionFromString(v8)];
      }

      v9 = v13;
    }

    else
    {
      v9 = 0;
    }

    v16 = [v5 objectForKeyedSubscript:@"metadata"];
    v46 = v9;
    if (!v16 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v12 = a4;
      v17 = v7;
      v18 = 0;
LABEL_22:
      v19 = [v5 objectForKeyedSubscript:@"transitionDate"];
      if (v19 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
      {
        objc_opt_class();
        v11 = self;
        if (objc_opt_isKindOfClass())
        {
          v23 = MEMORY[0x1E695DF00];
          v24 = v19;
          v25 = [v23 alloc];
          [v24 doubleValue];
          v27 = v26;

          v28 = [v25 initWithTimeIntervalSince1970:v27];
        }

        else
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v34 = objc_alloc_init(MEMORY[0x1E696AC80]);
            v20 = [v34 dateFromString:v19];

            goto LABEL_37;
          }

          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            if (v12)
            {
              v43 = objc_alloc(MEMORY[0x1E696ABC0]);
              v42 = *MEMORY[0x1E698F240];
              v50 = *MEMORY[0x1E696A578];
              v45 = v12;
              v40 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (as time internal since 1970), NSString (ISO8601 format), or NSDate", objc_opt_class(), @"transitionDate"];
              v51 = v40;
              v41 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v51 forKeys:&v50 count:1];
              v45->super.super.isa = [v43 initWithDomain:v42 code:2 userInfo:v41];

              v20 = 0;
              v12 = 0;
            }

            else
            {
              v20 = 0;
            }

            goto LABEL_38;
          }

          v28 = v19;
        }

        v20 = v28;
      }

      else
      {
        v20 = 0;
        v11 = self;
      }

LABEL_37:
      v11 = -[BMAppInstallation initWithApp:transition:metadata:transitionDate:](v11, "initWithApp:transition:metadata:transitionDate:", v17, [v46 intValue], v18, v20);
      v12 = v11;
LABEL_38:

      v7 = v17;
LABEL_44:

      v9 = v46;
LABEL_45:

LABEL_46:
      goto LABEL_47;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v21 = v16;
      v48 = 0;
      v18 = [[BMAppInstallationMetadata alloc] initWithJSONDictionary:v21 error:&v48];
      v22 = v48;
      if (!v22)
      {
        v12 = a4;
        v17 = v7;

        goto LABEL_22;
      }

      if (a4)
      {
        v22 = v22;
        *a4 = v22;
      }

      v12 = 0;
      v16 = v21;
    }

    else
    {
      if (!a4)
      {
        v12 = 0;
        v11 = self;
        goto LABEL_45;
      }

      v29 = objc_alloc(MEMORY[0x1E696ABC0]);
      v44 = a4;
      v30 = v7;
      v31 = *MEMORY[0x1E698F240];
      v52 = *MEMORY[0x1E696A578];
      v18 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", objc_opt_class(), @"metadata"];
      v53 = v18;
      v32 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v53 forKeys:&v52 count:1];
      v33 = v31;
      v7 = v30;
      *v44 = [v29 initWithDomain:v33 code:2 userInfo:v32];

      v12 = 0;
    }

LABEL_43:
    v11 = self;
    goto LABEL_44;
  }

  if (a4)
  {
    v14 = objc_alloc(MEMORY[0x1E696ABC0]);
    v15 = *MEMORY[0x1E698F240];
    v56 = *MEMORY[0x1E696A578];
    v7 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", objc_opt_class(), @"app"];
    v57[0] = v7;
    v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v57 forKeys:&v56 count:1];
    v12 = 0;
    *a4 = [v14 initWithDomain:v15 code:2 userInfo:v9];
    v11 = self;
LABEL_47:

    goto LABEL_48;
  }

  v12 = 0;
  v11 = self;
LABEL_48:

  v38 = *MEMORY[0x1E69E9840];
  return v12;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMAppInstallation *)self writeTo:v3];
  v4 = [v3 immutableData];

  return v4;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  if (self->_app)
  {
    PBDataWriterPlaceMark();
    [(BMAppInstallationApp *)self->_app writeTo:v4];
    PBDataWriterRecallMark();
  }

  transition = self->_transition;
  PBDataWriterWriteUint32Field();
  if (self->_metadata)
  {
    PBDataWriterPlaceMark();
    [(BMAppInstallationMetadata *)self->_metadata writeTo:v4];
    PBDataWriterRecallMark();
  }

  if (self->_hasRaw_transitionDate)
  {
    raw_transitionDate = self->_raw_transitionDate;
    PBDataWriterWriteDoubleField();
  }
}

- (id)initByReadFrom:(id)a3
{
  v4 = a3;
  v32.receiver = self;
  v32.super_class = BMAppInstallation;
  v5 = [(BMEventBase *)&v32 init];
  if (!v5)
  {
    goto LABEL_53;
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
        LOBYTE(v33) = 0;
        v10 = [v4 position] + 1;
        if (v10 >= [v4 position] && (v11 = objc_msgSend(v4, "position") + 1, v11 <= objc_msgSend(v4, "length")))
        {
          v12 = [v4 data];
          [v12 getBytes:&v33 range:{objc_msgSend(v4, "position"), 1}];

          [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
        }

        else
        {
          [v4 _setError];
        }

        v9 |= (LOBYTE(v33) & 0x7F) << v7;
        if ((LOBYTE(v33) & 0x80) == 0)
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
      if ((v14 >> 3) > 2)
      {
        if (v15 == 3)
        {
          v33 = 0.0;
          v34 = 0;
          if (!PBReaderPlaceMark())
          {
            goto LABEL_52;
          }

          v25 = [[BMAppInstallationMetadata alloc] initByReadFrom:v4];
          if (!v25)
          {
            goto LABEL_52;
          }

          v26 = 48;
          goto LABEL_43;
        }

        if (v15 != 4)
        {
LABEL_35:
          if ((PBReaderSkipValueWithTag() & 1) == 0)
          {
            goto LABEL_52;
          }

          goto LABEL_50;
        }

        v5->_hasRaw_transitionDate = 1;
        v33 = 0.0;
        v23 = [v4 position] + 8;
        if (v23 >= [v4 position] && (v24 = objc_msgSend(v4, "position") + 8, v24 <= objc_msgSend(v4, "length")))
        {
          v28 = [v4 data];
          [v28 getBytes:&v33 range:{objc_msgSend(v4, "position"), 8}];

          [v4 setPosition:{objc_msgSend(v4, "position") + 8}];
        }

        else
        {
          [v4 _setError];
        }

        v5->_raw_transitionDate = v33;
      }

      else
      {
        if (v15 == 1)
        {
          v33 = 0.0;
          v34 = 0;
          if (!PBReaderPlaceMark())
          {
            goto LABEL_52;
          }

          v25 = [[BMAppInstallationApp alloc] initByReadFrom:v4];
          if (!v25)
          {
            goto LABEL_52;
          }

          v26 = 40;
LABEL_43:
          v27 = *(&v5->super.super.isa + v26);
          *(&v5->super.super.isa + v26) = v25;

          PBReaderRecallMark();
          goto LABEL_50;
        }

        if (v15 != 2)
        {
          goto LABEL_35;
        }

        v16 = 0;
        v17 = 0;
        v18 = 0;
        while (1)
        {
          LOBYTE(v33) = 0;
          v19 = [v4 position] + 1;
          if (v19 >= [v4 position] && (v20 = objc_msgSend(v4, "position") + 1, v20 <= objc_msgSend(v4, "length")))
          {
            v21 = [v4 data];
            [v21 getBytes:&v33 range:{objc_msgSend(v4, "position"), 1}];

            [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
          }

          else
          {
            [v4 _setError];
          }

          v18 |= (LOBYTE(v33) & 0x7F) << v16;
          if ((LOBYTE(v33) & 0x80) == 0)
          {
            break;
          }

          v16 += 7;
          if (v17++ > 8)
          {
            goto LABEL_46;
          }
        }

        if (([v4 hasError] & 1) != 0 || v18 > 4)
        {
LABEL_46:
          LODWORD(v18) = 0;
        }

        v5->_transition = v18;
      }

LABEL_50:
      v29 = [v4 position];
    }

    while (v29 < [v4 length]);
  }

  if ([v4 hasError])
  {
LABEL_52:
    v30 = 0;
  }

  else
  {
LABEL_53:
    v30 = v5;
  }

  return v30;
}

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = [(BMAppInstallation *)self app];
  v5 = BMAppInstallationTransitionAsString([(BMAppInstallation *)self transition]);
  v6 = [(BMAppInstallation *)self metadata];
  v7 = [(BMAppInstallation *)self transitionDate];
  v8 = [v3 initWithFormat:@"BMAppInstallation with app: %@, transition: %@, metadata: %@, transitionDate: %@", v4, v5, v6, v7];

  return v8;
}

- (BMAppInstallation)initWithApp:(id)a3 transition:(int)a4 metadata:(id)a5 transitionDate:(id)a6
{
  v11 = a3;
  v12 = a5;
  v13 = a6;
  v17.receiver = self;
  v17.super_class = BMAppInstallation;
  v14 = [(BMEventBase *)&v17 init];
  if (v14)
  {
    v14->_dataVersion = [objc_opt_class() latestDataVersion];
    objc_storeStrong(&v14->_app, a3);
    v14->_transition = a4;
    objc_storeStrong(&v14->_metadata, a5);
    if (v13)
    {
      v14->_hasRaw_transitionDate = 1;
      [v13 timeIntervalSince1970];
    }

    else
    {
      v14->_hasRaw_transitionDate = 0;
      v15 = -1.0;
    }

    v14->_raw_transitionDate = v15;
  }

  return v14;
}

+ (id)protoFields
{
  v9[4] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"app" number:1 type:14 subMessageClass:objc_opt_class()];
  v9[0] = v2;
  v3 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"transition" number:2 type:4 subMessageClass:0];
  v9[1] = v3;
  v4 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"metadata" number:3 type:14 subMessageClass:objc_opt_class()];
  v9[2] = v4;
  v5 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"transitionDate" number:4 type:0 subMessageClass:0];
  v9[3] = v5;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:4];

  v7 = *MEMORY[0x1E69E9840];

  return v6;
}

id __28__BMAppInstallation_columns__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = [a2 eventBodyKeepingBackingData:1];
  v3 = [v2 metadata];
  v4 = [v3 jsonDictionary];
  v5 = BMConvertObjectToJSONString();

  return v5;
}

id __28__BMAppInstallation_columns__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 eventBodyKeepingBackingData:1];
  v3 = [v2 app];
  v4 = [v3 jsonDictionary];
  v5 = BMConvertObjectToJSONString();

  return v5;
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

    v8 = [[BMAppInstallation alloc] initByReadFrom:v7];
    v4 = v8;
    if (v8)
    {
      v8[8] = 0;
    }
  }

  return v4;
}

@end