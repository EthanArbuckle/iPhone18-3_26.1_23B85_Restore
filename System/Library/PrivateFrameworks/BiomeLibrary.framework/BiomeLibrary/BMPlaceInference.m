@interface BMPlaceInference
+ (id)columns;
+ (id)eventWithData:(id)a3 dataVersion:(unsigned int)a4;
+ (id)protoFields;
- (BMPlaceInference)initWithIdentifier:(id)a3 placeType:(int)a4 userSpecificPlaceType:(int)a5 userSpecificPlaceTypeSource:(int)a6 mapItem:(id)a7;
- (BMPlaceInference)initWithJSONDictionary:(id)a3 error:(id *)a4;
- (BOOL)isEqual:(id)a3;
- (NSString)description;
- (NSUUID)identifier;
- (id)initByReadFrom:(id)a3;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)a3;
@end

@implementation BMPlaceInference

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [(BMPlaceInference *)self identifier];
    v7 = [v5 identifier];
    v8 = v7;
    if (v6 == v7)
    {
    }

    else
    {
      v9 = [(BMPlaceInference *)self identifier];
      v10 = [v5 identifier];
      v11 = [v9 isEqual:v10];

      if (!v11)
      {
        goto LABEL_12;
      }
    }

    v13 = [(BMPlaceInference *)self placeType];
    if (v13 == [v5 placeType])
    {
      v14 = [(BMPlaceInference *)self userSpecificPlaceType];
      if (v14 == [v5 userSpecificPlaceType])
      {
        v15 = [(BMPlaceInference *)self userSpecificPlaceTypeSource];
        if (v15 == [v5 userSpecificPlaceTypeSource])
        {
          v16 = [(BMPlaceInference *)self mapItem];
          v17 = [v5 mapItem];
          if (v16 == v17)
          {
            v12 = 1;
          }

          else
          {
            v18 = [(BMPlaceInference *)self mapItem];
            v19 = [v5 mapItem];
            v12 = [v18 isEqual:v19];
          }

          goto LABEL_13;
        }
      }
    }

LABEL_12:
    v12 = 0;
LABEL_13:

    goto LABEL_14;
  }

  v12 = 0;
LABEL_14:

  return v12;
}

- (NSUUID)identifier
{
  raw_identifier = self->_raw_identifier;
  if (raw_identifier)
  {
    v4 = [MEMORY[0x1E698F280] convertValue:raw_identifier toType:3];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)jsonDictionary
{
  v25[5] = *MEMORY[0x1E69E9840];
  v3 = [(BMPlaceInference *)self identifier];
  v4 = [v3 UUIDString];

  v5 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMPlaceInference placeType](self, "placeType")}];
  v6 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMPlaceInference userSpecificPlaceType](self, "userSpecificPlaceType")}];
  v7 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMPlaceInference userSpecificPlaceTypeSource](self, "userSpecificPlaceTypeSource")}];
  v8 = [(BMPlaceInference *)self mapItem];
  v9 = [v8 jsonDictionary];

  v20 = @"identifier";
  v10 = v4;
  if (!v4)
  {
    v10 = [MEMORY[0x1E695DFB0] null];
  }

  v18 = v10;
  v25[0] = v10;
  v21 = @"placeType";
  v11 = v5;
  if (!v5)
  {
    v11 = [MEMORY[0x1E695DFB0] null];
  }

  v25[1] = v11;
  v22 = @"userSpecificPlaceType";
  v12 = v6;
  if (!v6)
  {
    v12 = [MEMORY[0x1E695DFB0] null];
  }

  v25[2] = v12;
  v23 = @"userSpecificPlaceTypeSource";
  v13 = v7;
  if (!v7)
  {
    v13 = [MEMORY[0x1E695DFB0] null];
  }

  v25[3] = v13;
  v24 = @"mapItem";
  v14 = v9;
  if (!v9)
  {
    v14 = [MEMORY[0x1E695DFB0] null];
  }

  v25[4] = v14;
  v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v25 forKeys:&v20 count:{5, v18}];
  if (v9)
  {
    if (v7)
    {
      goto LABEL_13;
    }
  }

  else
  {

    if (v7)
    {
LABEL_13:
      if (v6)
      {
        goto LABEL_14;
      }

      goto LABEL_21;
    }
  }

  if (v6)
  {
LABEL_14:
    if (v5)
    {
      goto LABEL_15;
    }

LABEL_22:

    if (v4)
    {
      goto LABEL_16;
    }

    goto LABEL_23;
  }

LABEL_21:

  if (!v5)
  {
    goto LABEL_22;
  }

LABEL_15:
  if (v4)
  {
    goto LABEL_16;
  }

LABEL_23:

LABEL_16:
  v16 = *MEMORY[0x1E69E9840];

  return v15;
}

- (BMPlaceInference)initWithJSONDictionary:(id)a3 error:(id *)a4
{
  v63[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [v6 objectForKeyedSubscript:@"identifier"];
  if (!v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v8 = 0;
    goto LABEL_4;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = v7;
    v10 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:v8];
    if (!v10)
    {
      if (a4)
      {
        v29 = objc_alloc(MEMORY[0x1E696ABC0]);
        v30 = *MEMORY[0x1E698F240];
        v62 = *MEMORY[0x1E696A578];
        v50 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"-initWithUUIDString: for %@ returned nil", @"identifier"];
        v63[0] = v50;
        v31 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v63 forKeys:&v62 count:1];
        *a4 = [v29 initWithDomain:v30 code:2 userInfo:v31];

        v15 = 0;
      }

      else
      {
        v15 = 0;
      }

      goto LABEL_60;
    }

    v11 = v10;

    v8 = v11;
LABEL_4:
    v9 = [v6 objectForKeyedSubscript:@"placeType"];
    v42 = a4;
    if (v9 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v12 = v9;
      }

      else
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          if (!a4)
          {
            v47 = 0;
            v15 = 0;
LABEL_58:

            goto LABEL_60;
          }

          v49 = objc_alloc(MEMORY[0x1E696ABC0]);
          v27 = *MEMORY[0x1E698F240];
          v58 = *MEMORY[0x1E696A578];
          v45 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (corresponding to enum value), or NSString (string version of enum)", objc_opt_class(), @"placeType"];
          v59 = v45;
          v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v59 forKeys:&v58 count:1];
          v28 = [v49 initWithDomain:v27 code:2 userInfo:v16];
          v47 = 0;
          v15 = 0;
          *v42 = v28;
LABEL_57:

          goto LABEL_58;
        }

        v12 = [MEMORY[0x1E696AD98] numberWithInt:BMPlaceInferencePlaceTypeFromString(v9)];
      }

      v47 = v12;
    }

    else
    {
      v47 = 0;
    }

    v16 = [v6 objectForKeyedSubscript:@"userSpecificPlaceType"];
    v44 = v8;
    if (v16 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v17 = v16;
      }

      else
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          if (!v42)
          {
            v45 = 0;
            v15 = 0;
            goto LABEL_57;
          }

          v46 = objc_alloc(MEMORY[0x1E696ABC0]);
          v32 = *MEMORY[0x1E698F240];
          v56 = *MEMORY[0x1E696A578];
          v19 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (corresponding to enum value), or NSString (string version of enum)", objc_opt_class(), @"userSpecificPlaceType"];
          v57 = v19;
          v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v57 forKeys:&v56 count:1];
          v33 = [v46 initWithDomain:v32 code:2 userInfo:v18];
          v45 = 0;
          v15 = 0;
          *v42 = v33;
          goto LABEL_56;
        }

        v17 = [MEMORY[0x1E696AD98] numberWithInt:BMPlaceInferenceUserSpecificPlaceTypeFromString(v16)];
      }

      v45 = v17;
    }

    else
    {
      v45 = 0;
    }

    v18 = [v6 objectForKeyedSubscript:@"userSpecificPlaceTypeSource"];
    v43 = v7;
    if (v18 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v20 = v18;
      }

      else
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          if (!v42)
          {
            v19 = 0;
            v15 = 0;
            goto LABEL_56;
          }

          v41 = objc_alloc(MEMORY[0x1E696ABC0]);
          v34 = self;
          v35 = *MEMORY[0x1E698F240];
          v54 = *MEMORY[0x1E696A578];
          v21 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (corresponding to enum value), or NSString (string version of enum)", objc_opt_class(), @"userSpecificPlaceTypeSource"];
          v55 = v21;
          v23 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v55 forKeys:&v54 count:1];
          v36 = v35;
          self = v34;
          v19 = 0;
          v15 = 0;
          *v42 = [v41 initWithDomain:v36 code:2 userInfo:v23];
          goto LABEL_54;
        }

        v20 = [MEMORY[0x1E696AD98] numberWithInt:BMPlaceInferenceUserSpecificPlaceTypeSourceFromString(v18)];
      }

      v19 = v20;
    }

    else
    {
      v19 = 0;
    }

    v21 = [v6 objectForKeyedSubscript:@"mapItem"];
    v22 = self;
    if (!v21 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v23 = 0;
LABEL_36:
      self = -[BMPlaceInference initWithIdentifier:placeType:userSpecificPlaceType:userSpecificPlaceTypeSource:mapItem:](v22, "initWithIdentifier:placeType:userSpecificPlaceType:userSpecificPlaceTypeSource:mapItem:", v44, [v47 intValue], objc_msgSend(v45, "intValue"), objc_msgSend(v19, "intValue"), v23);
      v15 = self;
LABEL_54:

LABEL_55:
      v7 = v43;

LABEL_56:
      v8 = v44;
      goto LABEL_57;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v24 = v21;
      v51 = 0;
      v23 = [[BMPlaceInferenceMapItem alloc] initWithJSONDictionary:v24 error:&v51];
      v25 = v51;
      if (!v25)
      {

        goto LABEL_36;
      }

      if (v42)
      {
        v25 = v25;
        *v42 = v25;
      }

      v15 = 0;
      v21 = v24;
    }

    else
    {
      if (!v42)
      {
        v15 = 0;
        goto LABEL_55;
      }

      v40 = objc_alloc(MEMORY[0x1E696ABC0]);
      v39 = *MEMORY[0x1E698F240];
      v52 = *MEMORY[0x1E696A578];
      v23 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", objc_opt_class(), @"mapItem"];
      v53 = v23;
      v26 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v53 forKeys:&v52 count:1];
      *v42 = [v40 initWithDomain:v39 code:2 userInfo:v26];

      v15 = 0;
    }

    self = v22;
    goto LABEL_54;
  }

  if (a4)
  {
    v13 = objc_alloc(MEMORY[0x1E696ABC0]);
    v14 = *MEMORY[0x1E698F240];
    v60 = *MEMORY[0x1E696A578];
    v8 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"identifier"];
    v61 = v8;
    v48 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v61 forKeys:&v60 count:1];
    v15 = 0;
    *a4 = [v13 initWithDomain:v14 code:2 userInfo:?];

LABEL_60:
    goto LABEL_61;
  }

  v15 = 0;
LABEL_61:

  v37 = *MEMORY[0x1E69E9840];
  return v15;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMPlaceInference *)self writeTo:v3];
  v4 = [v3 immutableData];

  return v4;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  if (self->_raw_identifier)
  {
    PBDataWriterWriteStringField();
  }

  placeType = self->_placeType;
  PBDataWriterWriteUint32Field();
  userSpecificPlaceType = self->_userSpecificPlaceType;
  PBDataWriterWriteUint32Field();
  userSpecificPlaceTypeSource = self->_userSpecificPlaceTypeSource;
  PBDataWriterWriteUint32Field();
  if (self->_mapItem)
  {
    PBDataWriterPlaceMark();
    [(BMPlaceInferenceMapItem *)self->_mapItem writeTo:v4];
    PBDataWriterRecallMark();
  }
}

- (id)initByReadFrom:(id)a3
{
  v4 = a3;
  v41.receiver = self;
  v41.super_class = BMPlaceInference;
  v5 = [(BMEventBase *)&v41 init];
  if (!v5)
  {
    goto LABEL_73;
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
        LOBYTE(v42[0]) = 0;
        v10 = [v4 position] + 1;
        if (v10 >= [v4 position] && (v11 = objc_msgSend(v4, "position") + 1, v11 <= objc_msgSend(v4, "length")))
        {
          v12 = [v4 data];
          [v12 getBytes:v42 range:{objc_msgSend(v4, "position"), 1}];

          [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
        }

        else
        {
          [v4 _setError];
        }

        v9 |= (v42[0] & 0x7F) << v7;
        if ((v42[0] & 0x80) == 0)
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
      if ((v14 >> 3) <= 2)
      {
        if (v15 != 1)
        {
          if (v15 != 2)
          {
LABEL_55:
            if ((PBReaderSkipValueWithTag() & 1) == 0)
            {
              goto LABEL_72;
            }

            goto LABEL_70;
          }

          v23 = 0;
          v24 = 0;
          v18 = 0;
          while (1)
          {
            LOBYTE(v42[0]) = 0;
            v25 = [v4 position] + 1;
            if (v25 >= [v4 position] && (v26 = objc_msgSend(v4, "position") + 1, v26 <= objc_msgSend(v4, "length")))
            {
              v27 = [v4 data];
              [v27 getBytes:v42 range:{objc_msgSend(v4, "position"), 1}];

              [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
            }

            else
            {
              [v4 _setError];
            }

            v18 |= (v42[0] & 0x7F) << v23;
            if ((v42[0] & 0x80) == 0)
            {
              break;
            }

            v23 += 7;
            v22 = v24++ > 8;
            if (v22)
            {
              goto LABEL_67;
            }
          }

          if (([v4 hasError] & 1) != 0 || v18 > 4)
          {
LABEL_67:
            LODWORD(v18) = 0;
          }

          v37 = 28;
          goto LABEL_69;
        }

        v35 = PBReaderReadString();
        raw_identifier = v5->_raw_identifier;
        v5->_raw_identifier = v35;
      }

      else
      {
        if (v15 == 3)
        {
          v28 = 0;
          v29 = 0;
          v18 = 0;
          while (1)
          {
            LOBYTE(v42[0]) = 0;
            v30 = [v4 position] + 1;
            if (v30 >= [v4 position] && (v31 = objc_msgSend(v4, "position") + 1, v31 <= objc_msgSend(v4, "length")))
            {
              v32 = [v4 data];
              [v32 getBytes:v42 range:{objc_msgSend(v4, "position"), 1}];

              [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
            }

            else
            {
              [v4 _setError];
            }

            v18 |= (v42[0] & 0x7F) << v28;
            if ((v42[0] & 0x80) == 0)
            {
              break;
            }

            v28 += 7;
            v22 = v29++ > 8;
            if (v22)
            {
              goto LABEL_59;
            }
          }

          if (([v4 hasError] & 1) != 0 || v18 > 4)
          {
LABEL_59:
            LODWORD(v18) = 0;
          }

          v37 = 32;
LABEL_69:
          *(&v5->super.super.isa + v37) = v18;
          goto LABEL_70;
        }

        if (v15 != 5)
        {
          if (v15 != 4)
          {
            goto LABEL_55;
          }

          v16 = 0;
          v17 = 0;
          v18 = 0;
          while (1)
          {
            LOBYTE(v42[0]) = 0;
            v19 = [v4 position] + 1;
            if (v19 >= [v4 position] && (v20 = objc_msgSend(v4, "position") + 1, v20 <= objc_msgSend(v4, "length")))
            {
              v21 = [v4 data];
              [v21 getBytes:v42 range:{objc_msgSend(v4, "position"), 1}];

              [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
            }

            else
            {
              [v4 _setError];
            }

            v18 |= (v42[0] & 0x7F) << v16;
            if ((v42[0] & 0x80) == 0)
            {
              break;
            }

            v16 += 7;
            v22 = v17++ > 8;
            if (v22)
            {
              goto LABEL_63;
            }
          }

          if (([v4 hasError] & 1) != 0 || v18 > 5)
          {
LABEL_63:
            LODWORD(v18) = 0;
          }

          v37 = 36;
          goto LABEL_69;
        }

        v42[0] = 0;
        v42[1] = 0;
        if (!PBReaderPlaceMark())
        {
          goto LABEL_72;
        }

        v33 = [[BMPlaceInferenceMapItem alloc] initByReadFrom:v4];
        if (!v33)
        {
          goto LABEL_72;
        }

        mapItem = v5->_mapItem;
        v5->_mapItem = v33;

        PBReaderRecallMark();
      }

LABEL_70:
      v38 = [v4 position];
    }

    while (v38 < [v4 length]);
  }

  if ([v4 hasError])
  {
LABEL_72:
    v39 = 0;
  }

  else
  {
LABEL_73:
    v39 = v5;
  }

  return v39;
}

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = [(BMPlaceInference *)self identifier];
  v5 = BMPlaceInferencePlaceTypeAsString([(BMPlaceInference *)self placeType]);
  v6 = BMPlaceInferenceUserSpecificPlaceTypeAsString([(BMPlaceInference *)self userSpecificPlaceType]);
  v7 = BMPlaceInferenceUserSpecificPlaceTypeSourceAsString([(BMPlaceInference *)self userSpecificPlaceTypeSource]);
  v8 = [(BMPlaceInference *)self mapItem];
  v9 = [v3 initWithFormat:@"BMPlaceInference with identifier: %@, placeType: %@, userSpecificPlaceType: %@, userSpecificPlaceTypeSource: %@, mapItem: %@", v4, v5, v6, v7, v8];

  return v9;
}

- (BMPlaceInference)initWithIdentifier:(id)a3 placeType:(int)a4 userSpecificPlaceType:(int)a5 userSpecificPlaceTypeSource:(int)a6 mapItem:(id)a7
{
  v12 = a3;
  v13 = a7;
  v18.receiver = self;
  v18.super_class = BMPlaceInference;
  v14 = [(BMEventBase *)&v18 init];
  if (v14)
  {
    v14->_dataVersion = [objc_opt_class() latestDataVersion];
    if (v12)
    {
      v15 = [v12 UUIDString];
    }

    else
    {
      v15 = 0;
    }

    raw_identifier = v14->_raw_identifier;
    v14->_raw_identifier = v15;

    v14->_placeType = a4;
    v14->_userSpecificPlaceType = a5;
    v14->_userSpecificPlaceTypeSource = a6;
    objc_storeStrong(&v14->_mapItem, a7);
  }

  return v14;
}

+ (id)protoFields
{
  v10[5] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"identifier" number:1 type:13 subMessageClass:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"placeType" number:2 type:4 subMessageClass:{0, v2}];
  v10[1] = v3;
  v4 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"userSpecificPlaceType" number:3 type:4 subMessageClass:0];
  v10[2] = v4;
  v5 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"userSpecificPlaceTypeSource" number:4 type:4 subMessageClass:0];
  v10[3] = v5;
  v6 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"mapItem" number:5 type:14 subMessageClass:objc_opt_class()];
  v10[4] = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:5];

  v8 = *MEMORY[0x1E69E9840];

  return v7;
}

+ (id)columns
{
  v10[5] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"identifier" dataType:6 requestOnly:0 fieldNumber:1 protoDataType:13 convertedType:3];
  v3 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"placeType" dataType:0 requestOnly:0 fieldNumber:2 protoDataType:4 convertedType:0];
  v4 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"userSpecificPlaceType" dataType:0 requestOnly:0 fieldNumber:3 protoDataType:4 convertedType:0];
  v5 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"userSpecificPlaceTypeSource" dataType:0 requestOnly:0 fieldNumber:4 protoDataType:4 convertedType:0];
  v6 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"mapItem_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_240_66409];
  v10[0] = v2;
  v10[1] = v3;
  v10[2] = v4;
  v10[3] = v5;
  v10[4] = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:5];

  v8 = *MEMORY[0x1E69E9840];

  return v7;
}

id __27__BMPlaceInference_columns__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 eventBodyKeepingBackingData:1];
  v3 = [v2 mapItem];
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

    v8 = [[BMPlaceInference alloc] initByReadFrom:v7];
    v4 = v8;
    if (v8)
    {
      v8[6] = 0;
    }
  }

  return v4;
}

@end