@interface BMFindMyLocationChange
+ (id)columns;
+ (id)eventWithData:(id)a3 dataVersion:(unsigned int)a4;
+ (id)protoFields;
- (BMFindMyLocationChange)initWithIdsHandle:(id)a3 stateChange:(int)a4 activityState:(int)a5 name:(id)a6;
- (BMFindMyLocationChange)initWithJSONDictionary:(id)a3 error:(id *)a4;
- (BOOL)isEqual:(id)a3;
- (NSString)description;
- (id)initByReadFrom:(id)a3;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)a3;
@end

@implementation BMFindMyLocationChange

+ (id)columns
{
  v9[4] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"idsHandle" dataType:2 requestOnly:0 fieldNumber:1 protoDataType:13 convertedType:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"stateChange" dataType:0 requestOnly:0 fieldNumber:2 protoDataType:4 convertedType:0];
  v4 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"activityState" dataType:0 requestOnly:0 fieldNumber:3 protoDataType:4 convertedType:0];
  v5 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"name" dataType:2 requestOnly:0 fieldNumber:6 protoDataType:13 convertedType:0];
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
    v6 = [(BMFindMyLocationChange *)self idsHandle];
    v7 = [v5 idsHandle];
    v8 = v7;
    if (v6 == v7)
    {
    }

    else
    {
      v9 = [(BMFindMyLocationChange *)self idsHandle];
      v10 = [v5 idsHandle];
      v11 = [v9 isEqual:v10];

      if (!v11)
      {
        goto LABEL_11;
      }
    }

    v13 = [(BMFindMyLocationChange *)self stateChange];
    if (v13 == [v5 stateChange])
    {
      v14 = [(BMFindMyLocationChange *)self activityState];
      if (v14 == [v5 activityState])
      {
        v15 = [(BMFindMyLocationChange *)self name];
        v16 = [v5 name];
        if (v15 == v16)
        {
          v12 = 1;
        }

        else
        {
          v17 = [(BMFindMyLocationChange *)self name];
          v18 = [v5 name];
          v12 = [v17 isEqual:v18];
        }

        goto LABEL_12;
      }
    }

LABEL_11:
    v12 = 0;
LABEL_12:

    goto LABEL_13;
  }

  v12 = 0;
LABEL_13:

  return v12;
}

- (id)jsonDictionary
{
  v15[4] = *MEMORY[0x1E69E9840];
  v3 = [(BMFindMyLocationChange *)self idsHandle];
  v4 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMFindMyLocationChange stateChange](self, "stateChange")}];
  v5 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMFindMyLocationChange activityState](self, "activityState")}];
  v6 = [(BMFindMyLocationChange *)self name];
  v14[0] = @"idsHandle";
  v7 = v3;
  if (!v3)
  {
    v7 = [MEMORY[0x1E695DFB0] null];
  }

  v15[0] = v7;
  v14[1] = @"stateChange";
  v8 = v4;
  if (!v4)
  {
    v8 = [MEMORY[0x1E695DFB0] null];
  }

  v15[1] = v8;
  v14[2] = @"activityState";
  v9 = v5;
  if (!v5)
  {
    v9 = [MEMORY[0x1E695DFB0] null];
  }

  v15[2] = v9;
  v14[3] = @"name";
  v10 = v6;
  if (!v6)
  {
    v10 = [MEMORY[0x1E695DFB0] null];
  }

  v15[3] = v10;
  v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:v14 count:4];
  if (v6)
  {
    if (v5)
    {
      goto LABEL_11;
    }
  }

  else
  {

    if (v5)
    {
LABEL_11:
      if (v4)
      {
        goto LABEL_12;
      }

LABEL_18:

      if (v3)
      {
        goto LABEL_13;
      }

      goto LABEL_19;
    }
  }

  if (!v4)
  {
    goto LABEL_18;
  }

LABEL_12:
  if (v3)
  {
    goto LABEL_13;
  }

LABEL_19:

LABEL_13:
  v12 = *MEMORY[0x1E69E9840];

  return v11;
}

- (BMFindMyLocationChange)initWithJSONDictionary:(id)a3 error:(id *)a4
{
  v41[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [v6 objectForKeyedSubscript:@"idsHandle"];
  if (!v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v33 = 0;
LABEL_4:
    v8 = [v6 objectForKeyedSubscript:@"stateChange"];
    if (v8 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v10 = v8;
      }

      else
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          if (!a4)
          {
            v9 = 0;
            v13 = 0;
            goto LABEL_30;
          }

          v24 = objc_alloc(MEMORY[0x1E696ABC0]);
          v25 = *MEMORY[0x1E698F240];
          v38 = *MEMORY[0x1E696A578];
          v16 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (corresponding to enum value), or NSString (string version of enum)", objc_opt_class(), @"stateChange"];
          v39 = v16;
          v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v39 forKeys:&v38 count:1];
          v26 = [v24 initWithDomain:v25 code:2 userInfo:v14];
          v9 = 0;
          v13 = 0;
          *a4 = v26;
          goto LABEL_29;
        }

        v10 = [MEMORY[0x1E696AD98] numberWithInt:BMFindMyLocationChangeStateChangeFromString(v8)];
      }

      v9 = v10;
    }

    else
    {
      v9 = 0;
    }

    v14 = [v6 objectForKeyedSubscript:@"activityState"];
    v32 = self;
    if (v14 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      v15 = a4;
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v17 = v14;
      }

      else
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          if (!a4)
          {
            v16 = 0;
            v13 = 0;
            self = v32;
            goto LABEL_29;
          }

          v31 = objc_alloc(MEMORY[0x1E696ABC0]);
          v27 = *MEMORY[0x1E698F240];
          v36 = *MEMORY[0x1E696A578];
          v19 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (corresponding to enum value), or NSString (string version of enum)", objc_opt_class(), @"activityState"];
          v37 = v19;
          v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v37 forKeys:&v36 count:1];
          v28 = [v31 initWithDomain:v27 code:2 userInfo:v18];
          v16 = 0;
          v13 = 0;
          *v15 = v28;
          goto LABEL_41;
        }

        v17 = [MEMORY[0x1E696AD98] numberWithInt:BMFindMyLocationChangeActivityStateFromString(v14)];
      }

      v16 = v17;
    }

    else
    {
      v15 = a4;
      v16 = 0;
    }

    v18 = [v6 objectForKeyedSubscript:@"name"];
    if (!v18 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v19 = 0;
LABEL_27:
      self = -[BMFindMyLocationChange initWithIdsHandle:stateChange:activityState:name:](v32, "initWithIdsHandle:stateChange:activityState:name:", v33, [v9 intValue], objc_msgSend(v16, "intValue"), v19);
      v13 = self;
LABEL_28:

LABEL_29:
      goto LABEL_30;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v19 = v18;
      goto LABEL_27;
    }

    if (v15)
    {
      v30 = objc_alloc(MEMORY[0x1E696ABC0]);
      v29 = *MEMORY[0x1E698F240];
      v34 = *MEMORY[0x1E696A578];
      v22 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"name"];
      v35 = v22;
      v23 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v35 forKeys:&v34 count:1];
      *v15 = [v30 initWithDomain:v29 code:2 userInfo:v23];
    }

    v19 = 0;
    v13 = 0;
LABEL_41:
    self = v32;
    goto LABEL_28;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v33 = v7;
    goto LABEL_4;
  }

  if (!a4)
  {
    v33 = 0;
    v13 = 0;
    goto LABEL_31;
  }

  v11 = objc_alloc(MEMORY[0x1E696ABC0]);
  v12 = *MEMORY[0x1E698F240];
  v40 = *MEMORY[0x1E696A578];
  v9 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"idsHandle"];
  v41[0] = v9;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v41 forKeys:&v40 count:1];
  v33 = 0;
  v13 = 0;
  *a4 = [v11 initWithDomain:v12 code:2 userInfo:v8];
LABEL_30:

LABEL_31:
  v20 = *MEMORY[0x1E69E9840];
  return v13;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMFindMyLocationChange *)self writeTo:v3];
  v4 = [v3 immutableData];

  return v4;
}

- (void)writeTo:(id)a3
{
  v6 = a3;
  if (self->_idsHandle)
  {
    PBDataWriterWriteStringField();
  }

  stateChange = self->_stateChange;
  PBDataWriterWriteUint32Field();
  activityState = self->_activityState;
  PBDataWriterWriteUint32Field();
  if (self->_name)
  {
    PBDataWriterWriteStringField();
  }
}

- (id)initByReadFrom:(id)a3
{
  v4 = a3;
  v35.receiver = self;
  v35.super_class = BMFindMyLocationChange;
  v5 = [(BMEventBase *)&v35 init];
  if (!v5)
  {
    goto LABEL_58;
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
        v36 = 0;
        v10 = [v4 position] + 1;
        if (v10 >= [v4 position] && (v11 = objc_msgSend(v4, "position") + 1, v11 <= objc_msgSend(v4, "length")))
        {
          v12 = [v4 data];
          [v12 getBytes:&v36 range:{objc_msgSend(v4, "position"), 1}];

          [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
        }

        else
        {
          [v4 _setError];
        }

        v9 |= (v36 & 0x7F) << v7;
        if ((v36 & 0x80) == 0)
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
        if (v15 != 6)
        {
          if (v15 != 3)
          {
LABEL_41:
            if (!PBReaderSkipValueWithTag())
            {
              goto LABEL_57;
            }

            goto LABEL_55;
          }

          v23 = 0;
          v24 = 0;
          v18 = 0;
          while (1)
          {
            v36 = 0;
            v25 = [v4 position] + 1;
            if (v25 >= [v4 position] && (v26 = objc_msgSend(v4, "position") + 1, v26 <= objc_msgSend(v4, "length")))
            {
              v27 = [v4 data];
              [v27 getBytes:&v36 range:{objc_msgSend(v4, "position"), 1}];

              [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
            }

            else
            {
              [v4 _setError];
            }

            v18 |= (v36 & 0x7F) << v23;
            if ((v36 & 0x80) == 0)
            {
              break;
            }

            v23 += 7;
            v22 = v24++ > 8;
            if (v22)
            {
              goto LABEL_52;
            }
          }

          if (([v4 hasError] & 1) != 0 || v18 > 5)
          {
LABEL_52:
            LODWORD(v18) = 0;
          }

          v31 = 24;
          goto LABEL_54;
        }

        v28 = PBReaderReadString();
        v29 = 40;
      }

      else
      {
        if (v15 != 1)
        {
          if (v15 != 2)
          {
            goto LABEL_41;
          }

          v16 = 0;
          v17 = 0;
          v18 = 0;
          while (1)
          {
            v36 = 0;
            v19 = [v4 position] + 1;
            if (v19 >= [v4 position] && (v20 = objc_msgSend(v4, "position") + 1, v20 <= objc_msgSend(v4, "length")))
            {
              v21 = [v4 data];
              [v21 getBytes:&v36 range:{objc_msgSend(v4, "position"), 1}];

              [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
            }

            else
            {
              [v4 _setError];
            }

            v18 |= (v36 & 0x7F) << v16;
            if ((v36 & 0x80) == 0)
            {
              break;
            }

            v16 += 7;
            v22 = v17++ > 8;
            if (v22)
            {
              goto LABEL_48;
            }
          }

          if (([v4 hasError] & 1) != 0 || v18 > 3)
          {
LABEL_48:
            LODWORD(v18) = 0;
          }

          v31 = 20;
LABEL_54:
          *(&v5->super.super.isa + v31) = v18;
          goto LABEL_55;
        }

        v28 = PBReaderReadString();
        v29 = 32;
      }

      v30 = *(&v5->super.super.isa + v29);
      *(&v5->super.super.isa + v29) = v28;

LABEL_55:
      v32 = [v4 position];
    }

    while (v32 < [v4 length]);
  }

  if ([v4 hasError])
  {
LABEL_57:
    v33 = 0;
  }

  else
  {
LABEL_58:
    v33 = v5;
  }

  return v33;
}

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = [(BMFindMyLocationChange *)self idsHandle];
  v5 = BMFindMyLocationChangeStateChangeAsString([(BMFindMyLocationChange *)self stateChange]);
  v6 = BMFindMyLocationChangeActivityStateAsString([(BMFindMyLocationChange *)self activityState]);
  v7 = [(BMFindMyLocationChange *)self name];
  v8 = [v3 initWithFormat:@"BMFindMyLocationChange with idsHandle: %@, stateChange: %@, activityState: %@, name: %@", v4, v5, v6, v7];

  return v8;
}

- (BMFindMyLocationChange)initWithIdsHandle:(id)a3 stateChange:(int)a4 activityState:(int)a5 name:(id)a6
{
  v11 = a3;
  v12 = a6;
  v15.receiver = self;
  v15.super_class = BMFindMyLocationChange;
  v13 = [(BMEventBase *)&v15 init];
  if (v13)
  {
    v13->_dataVersion = [objc_opt_class() latestDataVersion];
    objc_storeStrong(&v13->_idsHandle, a3);
    v13->_stateChange = a4;
    v13->_activityState = a5;
    objc_storeStrong(&v13->_name, a6);
  }

  return v13;
}

+ (id)protoFields
{
  v9[4] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"idsHandle" number:1 type:13 subMessageClass:0];
  v9[0] = v2;
  v3 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"stateChange" number:2 type:4 subMessageClass:0];
  v9[1] = v3;
  v4 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"activityState" number:3 type:4 subMessageClass:0];
  v9[2] = v4;
  v5 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"name" number:6 type:13 subMessageClass:0];
  v9[3] = v5;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:4];

  v7 = *MEMORY[0x1E69E9840];

  return v6;
}

+ (id)eventWithData:(id)a3 dataVersion:(unsigned int)a4
{
  v5 = a3;
  if (a4)
  {
    if (a4 != 1)
    {
      v9 = 0;
      goto LABEL_9;
    }

    v6 = [objc_alloc(MEMORY[0x1E69C65B8]) initWithData:v5];
    v7 = BMFindMyLocationChange;
  }

  else
  {
    v6 = [objc_alloc(MEMORY[0x1E69C65B8]) initWithData:v5];
    v7 = BMFindMyLocationChange_v0;
  }

  v8 = [[v7 alloc] initByReadFrom:v6];
  v9 = v8;
  if (v8)
  {
    *(v8 + 16) = a4;
  }

LABEL_9:

  return v9;
}

@end