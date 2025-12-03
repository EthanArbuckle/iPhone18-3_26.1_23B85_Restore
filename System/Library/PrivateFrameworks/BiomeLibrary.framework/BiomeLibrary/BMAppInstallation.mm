@interface BMAppInstallation
+ (id)columns;
+ (id)eventWithData:(id)data dataVersion:(unsigned int)version;
+ (id)protoFields;
- (BMAppInstallation)initWithApp:(id)app transition:(int)transition metadata:(id)metadata transitionDate:(id)date;
- (BMAppInstallation)initWithJSONDictionary:(id)dictionary error:(id *)error;
- (BOOL)isEqual:(id)equal;
- (NSDate)transitionDate;
- (NSString)description;
- (id)initByReadFrom:(id)from;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)to;
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
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

    transition = [(BMAppInstallation *)self transition];
    if (transition == [v5 transition])
    {
      metadata = [(BMAppInstallation *)self metadata];
      metadata2 = [v5 metadata];
      v16 = metadata2;
      if (metadata == metadata2)
      {
      }

      else
      {
        metadata3 = [(BMAppInstallation *)self metadata];
        metadata4 = [v5 metadata];
        v19 = [metadata3 isEqual:metadata4];

        if (!v19)
        {
          goto LABEL_10;
        }
      }

      transitionDate = [(BMAppInstallation *)self transitionDate];
      transitionDate2 = [v5 transitionDate];
      if (transitionDate == transitionDate2)
      {
        v12 = 1;
      }

      else
      {
        transitionDate3 = [(BMAppInstallation *)self transitionDate];
        transitionDate4 = [v5 transitionDate];
        v12 = [transitionDate3 isEqual:transitionDate4];
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
  jsonDictionary = [v3 jsonDictionary];

  v5 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMAppInstallation transition](self, "transition")}];
  metadata = [(BMAppInstallation *)self metadata];
  jsonDictionary2 = [metadata jsonDictionary];

  transitionDate = [(BMAppInstallation *)self transitionDate];
  if (transitionDate)
  {
    v9 = MEMORY[0x1E696AD98];
    transitionDate2 = [(BMAppInstallation *)self transitionDate];
    [transitionDate2 timeIntervalSince1970];
    v11 = [v9 numberWithDouble:?];
  }

  else
  {
    v11 = 0;
  }

  v19[0] = @"app";
  null = jsonDictionary;
  if (!jsonDictionary)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v20[0] = null;
  v19[1] = @"transition";
  null2 = v5;
  if (!v5)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v20[1] = null2;
  v19[2] = @"metadata";
  null3 = jsonDictionary2;
  if (!jsonDictionary2)
  {
    null3 = [MEMORY[0x1E695DFB0] null];
  }

  v20[2] = null3;
  v19[3] = @"transitionDate";
  null4 = v11;
  if (!v11)
  {
    null4 = [MEMORY[0x1E695DFB0] null];
  }

  v20[3] = null4;
  v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v20 forKeys:v19 count:4];
  if (v11)
  {
    if (jsonDictionary2)
    {
      goto LABEL_14;
    }
  }

  else
  {

    if (jsonDictionary2)
    {
LABEL_14:
      if (v5)
      {
        goto LABEL_15;
      }

LABEL_21:

      if (jsonDictionary)
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
  if (jsonDictionary)
  {
    goto LABEL_16;
  }

LABEL_22:

LABEL_16:
  v17 = *MEMORY[0x1E69E9840];

  return v16;
}

- (BMAppInstallation)initWithJSONDictionary:(id)dictionary error:(id *)error
{
  v57[1] = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v6 = [dictionaryCopy objectForKeyedSubscript:@"app"];
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
      selfCopy8 = self;
      if (error)
      {
        v10 = v10;
        *error = v10;
      }

      errorCopy3 = 0;
      goto LABEL_47;
    }

LABEL_4:
    v8 = [dictionaryCopy objectForKeyedSubscript:@"transition"];
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
          if (!error)
          {
            v9 = 0;
            errorCopy3 = 0;
            selfCopy8 = self;
            goto LABEL_46;
          }

          v35 = objc_alloc(MEMORY[0x1E696ABC0]);
          errorCopy = error;
          v37 = *MEMORY[0x1E698F240];
          v54 = *MEMORY[0x1E696A578];
          v16 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (corresponding to enum value), or NSString (string version of enum)", objc_opt_class(), @"transition"];
          v55 = v16;
          v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v55 forKeys:&v54 count:1];
          v46 = 0;
          errorCopy3 = 0;
          *errorCopy = [v35 initWithDomain:v37 code:2 userInfo:v18];
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

    v16 = [dictionaryCopy objectForKeyedSubscript:@"metadata"];
    v46 = v9;
    if (!v16 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      errorCopy3 = error;
      v17 = v7;
      v18 = 0;
LABEL_22:
      v19 = [dictionaryCopy objectForKeyedSubscript:@"transitionDate"];
      if (v19 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
      {
        objc_opt_class();
        selfCopy8 = self;
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
            if (errorCopy3)
            {
              v43 = objc_alloc(MEMORY[0x1E696ABC0]);
              v42 = *MEMORY[0x1E698F240];
              v50 = *MEMORY[0x1E696A578];
              v45 = errorCopy3;
              v40 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (as time internal since 1970), NSString (ISO8601 format), or NSDate", objc_opt_class(), @"transitionDate"];
              v51 = v40;
              v41 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v51 forKeys:&v50 count:1];
              v45->super.super.isa = [v43 initWithDomain:v42 code:2 userInfo:v41];

              v20 = 0;
              errorCopy3 = 0;
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
        selfCopy8 = self;
      }

LABEL_37:
      selfCopy8 = -[BMAppInstallation initWithApp:transition:metadata:transitionDate:](selfCopy8, "initWithApp:transition:metadata:transitionDate:", v17, [v46 intValue], v18, v20);
      errorCopy3 = selfCopy8;
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
        errorCopy3 = error;
        v17 = v7;

        goto LABEL_22;
      }

      if (error)
      {
        v22 = v22;
        *error = v22;
      }

      errorCopy3 = 0;
      v16 = v21;
    }

    else
    {
      if (!error)
      {
        errorCopy3 = 0;
        selfCopy8 = self;
        goto LABEL_45;
      }

      v29 = objc_alloc(MEMORY[0x1E696ABC0]);
      errorCopy4 = error;
      v30 = v7;
      v31 = *MEMORY[0x1E698F240];
      v52 = *MEMORY[0x1E696A578];
      v18 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", objc_opt_class(), @"metadata"];
      v53 = v18;
      v32 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v53 forKeys:&v52 count:1];
      v33 = v31;
      v7 = v30;
      *errorCopy4 = [v29 initWithDomain:v33 code:2 userInfo:v32];

      errorCopy3 = 0;
    }

LABEL_43:
    selfCopy8 = self;
    goto LABEL_44;
  }

  if (error)
  {
    v14 = objc_alloc(MEMORY[0x1E696ABC0]);
    v15 = *MEMORY[0x1E698F240];
    v56 = *MEMORY[0x1E696A578];
    v7 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", objc_opt_class(), @"app"];
    v57[0] = v7;
    v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v57 forKeys:&v56 count:1];
    errorCopy3 = 0;
    *error = [v14 initWithDomain:v15 code:2 userInfo:v9];
    selfCopy8 = self;
LABEL_47:

    goto LABEL_48;
  }

  errorCopy3 = 0;
  selfCopy8 = self;
LABEL_48:

  v38 = *MEMORY[0x1E69E9840];
  return errorCopy3;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMAppInstallation *)self writeTo:v3];
  immutableData = [v3 immutableData];

  return immutableData;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  if (self->_app)
  {
    PBDataWriterPlaceMark();
    [(BMAppInstallationApp *)self->_app writeTo:toCopy];
    PBDataWriterRecallMark();
  }

  transition = self->_transition;
  PBDataWriterWriteUint32Field();
  if (self->_metadata)
  {
    PBDataWriterPlaceMark();
    [(BMAppInstallationMetadata *)self->_metadata writeTo:toCopy];
    PBDataWriterRecallMark();
  }

  if (self->_hasRaw_transitionDate)
  {
    raw_transitionDate = self->_raw_transitionDate;
    PBDataWriterWriteDoubleField();
  }
}

- (id)initByReadFrom:(id)from
{
  fromCopy = from;
  v32.receiver = self;
  v32.super_class = BMAppInstallation;
  v5 = [(BMEventBase *)&v32 init];
  if (!v5)
  {
    goto LABEL_53;
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
        LOBYTE(v33) = 0;
        v10 = [fromCopy position] + 1;
        if (v10 >= [fromCopy position] && (v11 = objc_msgSend(fromCopy, "position") + 1, v11 <= objc_msgSend(fromCopy, "length")))
        {
          data = [fromCopy data];
          [data getBytes:&v33 range:{objc_msgSend(fromCopy, "position"), 1}];

          [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
        }

        else
        {
          [fromCopy _setError];
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

      v14 = [fromCopy hasError] ? 0 : v9;
LABEL_16:
      if (([fromCopy hasError] & 1) != 0 || (v14 & 7) == 4)
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

          v25 = [[BMAppInstallationMetadata alloc] initByReadFrom:fromCopy];
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
        v23 = [fromCopy position] + 8;
        if (v23 >= [fromCopy position] && (v24 = objc_msgSend(fromCopy, "position") + 8, v24 <= objc_msgSend(fromCopy, "length")))
        {
          data2 = [fromCopy data];
          [data2 getBytes:&v33 range:{objc_msgSend(fromCopy, "position"), 8}];

          [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 8}];
        }

        else
        {
          [fromCopy _setError];
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

          v25 = [[BMAppInstallationApp alloc] initByReadFrom:fromCopy];
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
          v19 = [fromCopy position] + 1;
          if (v19 >= [fromCopy position] && (v20 = objc_msgSend(fromCopy, "position") + 1, v20 <= objc_msgSend(fromCopy, "length")))
          {
            data3 = [fromCopy data];
            [data3 getBytes:&v33 range:{objc_msgSend(fromCopy, "position"), 1}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
          }

          else
          {
            [fromCopy _setError];
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

        if (([fromCopy hasError] & 1) != 0 || v18 > 4)
        {
LABEL_46:
          LODWORD(v18) = 0;
        }

        v5->_transition = v18;
      }

LABEL_50:
      position2 = [fromCopy position];
    }

    while (position2 < [fromCopy length]);
  }

  if ([fromCopy hasError])
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
  metadata = [(BMAppInstallation *)self metadata];
  transitionDate = [(BMAppInstallation *)self transitionDate];
  v8 = [v3 initWithFormat:@"BMAppInstallation with app: %@, transition: %@, metadata: %@, transitionDate: %@", v4, v5, metadata, transitionDate];

  return v8;
}

- (BMAppInstallation)initWithApp:(id)app transition:(int)transition metadata:(id)metadata transitionDate:(id)date
{
  appCopy = app;
  metadataCopy = metadata;
  dateCopy = date;
  v17.receiver = self;
  v17.super_class = BMAppInstallation;
  v14 = [(BMEventBase *)&v17 init];
  if (v14)
  {
    v14->_dataVersion = [objc_opt_class() latestDataVersion];
    objc_storeStrong(&v14->_app, app);
    v14->_transition = transition;
    objc_storeStrong(&v14->_metadata, metadata);
    if (dateCopy)
    {
      v14->_hasRaw_transitionDate = 1;
      [dateCopy timeIntervalSince1970];
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