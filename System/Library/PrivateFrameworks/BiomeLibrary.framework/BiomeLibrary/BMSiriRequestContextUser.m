@interface BMSiriRequestContextUser
+ (id)columns;
+ (id)eventWithData:(id)a3 dataVersion:(unsigned int)a4;
+ (id)protoFields;
- (BMSiriRequestContextUser)initWithJSONDictionary:(id)a3 error:(id *)a4;
- (BMSiriRequestContextUser)initWithUserID:(id)a3 isOnlyUserInHome:(id)a4 classification:(int)a5;
- (BOOL)isEqual:(id)a3;
- (NSString)description;
- (id)initByReadFrom:(id)a3;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)a3;
@end

@implementation BMSiriRequestContextUser

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [(BMSiriRequestContextUser *)self userID];
    v7 = [v5 userID];
    v8 = v7;
    if (v6 == v7)
    {
    }

    else
    {
      v9 = [(BMSiriRequestContextUser *)self userID];
      v10 = [v5 userID];
      v11 = [v9 isEqual:v10];

      if (!v11)
      {
        goto LABEL_12;
      }
    }

    if (!-[BMSiriRequestContextUser hasIsOnlyUserInHome](self, "hasIsOnlyUserInHome") && ![v5 hasIsOnlyUserInHome] || -[BMSiriRequestContextUser hasIsOnlyUserInHome](self, "hasIsOnlyUserInHome") && objc_msgSend(v5, "hasIsOnlyUserInHome") && (v13 = -[BMSiriRequestContextUser isOnlyUserInHome](self, "isOnlyUserInHome"), v13 == objc_msgSend(v5, "isOnlyUserInHome")))
    {
      v14 = [(BMSiriRequestContextUser *)self classification];
      v12 = v14 == [v5 classification];
      goto LABEL_14;
    }

LABEL_12:
    v12 = 0;
LABEL_14:

    goto LABEL_15;
  }

  v12 = 0;
LABEL_15:

  return v12;
}

- (id)jsonDictionary
{
  v13[3] = *MEMORY[0x1E69E9840];
  v3 = [(BMSiriRequestContextUser *)self userID];
  if ([(BMSiriRequestContextUser *)self hasIsOnlyUserInHome])
  {
    v4 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMSiriRequestContextUser isOnlyUserInHome](self, "isOnlyUserInHome")}];
  }

  else
  {
    v4 = 0;
  }

  v5 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMSiriRequestContextUser classification](self, "classification")}];
  v12[0] = @"userID";
  v6 = v3;
  if (!v3)
  {
    v6 = [MEMORY[0x1E695DFB0] null];
  }

  v13[0] = v6;
  v12[1] = @"isOnlyUserInHome";
  v7 = v4;
  if (!v4)
  {
    v7 = [MEMORY[0x1E695DFB0] null];
  }

  v13[1] = v7;
  v12[2] = @"classification";
  v8 = v5;
  if (!v5)
  {
    v8 = [MEMORY[0x1E695DFB0] null];
  }

  v13[2] = v8;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:v12 count:3];
  if (v5)
  {
    if (v4)
    {
      goto LABEL_12;
    }

LABEL_17:

    if (v3)
    {
      goto LABEL_13;
    }

    goto LABEL_18;
  }

  if (!v4)
  {
    goto LABEL_17;
  }

LABEL_12:
  if (v3)
  {
    goto LABEL_13;
  }

LABEL_18:

LABEL_13:
  v10 = *MEMORY[0x1E69E9840];

  return v9;
}

- (BMSiriRequestContextUser)initWithJSONDictionary:(id)a3 error:(id *)a4
{
  v31[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [v6 objectForKeyedSubscript:@"userID"];
  if (!v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v8 = 0;
LABEL_4:
    v9 = [v6 objectForKeyedSubscript:@"isOnlyUserInHome"];
    if (v9 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!a4)
        {
          v10 = 0;
          v16 = 0;
          goto LABEL_25;
        }

        v24 = objc_alloc(MEMORY[0x1E696ABC0]);
        v17 = *MEMORY[0x1E698F240];
        v28 = *MEMORY[0x1E696A578];
        v12 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"isOnlyUserInHome"];
        v29 = v12;
        v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v29 forKeys:&v28 count:1];
        v18 = [v24 initWithDomain:v17 code:2 userInfo:v11];
        v10 = 0;
        v16 = 0;
        *a4 = v18;
        goto LABEL_24;
      }

      v10 = v9;
    }

    else
    {
      v10 = 0;
    }

    v11 = [v6 objectForKeyedSubscript:@"classification"];
    if (v11 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v13 = v11;
      }

      else
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          if (a4)
          {
            v25 = objc_alloc(MEMORY[0x1E696ABC0]);
            v23 = *MEMORY[0x1E698F240];
            v26 = *MEMORY[0x1E696A578];
            v21 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (corresponding to enum value), or NSString (string version of enum)", objc_opt_class(), @"classification"];
            v27 = v21;
            v22 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v27 forKeys:&v26 count:1];
            *a4 = [v25 initWithDomain:v23 code:2 userInfo:v22];
          }

          v12 = 0;
          v16 = 0;
          goto LABEL_24;
        }

        v13 = [MEMORY[0x1E696AD98] numberWithInt:BMSiriRequestContextUserClassificationFromString(v11)];
      }

      v12 = v13;
    }

    else
    {
      v12 = 0;
    }

    self = -[BMSiriRequestContextUser initWithUserID:isOnlyUserInHome:classification:](self, "initWithUserID:isOnlyUserInHome:classification:", v8, v10, [v12 intValue]);
    v16 = self;
LABEL_24:

    goto LABEL_25;
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
    v16 = 0;
    goto LABEL_26;
  }

  v14 = objc_alloc(MEMORY[0x1E696ABC0]);
  v15 = *MEMORY[0x1E698F240];
  v30 = *MEMORY[0x1E696A578];
  v10 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"userID"];
  v31[0] = v10;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v31 forKeys:&v30 count:1];
  v8 = 0;
  v16 = 0;
  *a4 = [v14 initWithDomain:v15 code:2 userInfo:v9];
LABEL_25:

LABEL_26:
  v19 = *MEMORY[0x1E69E9840];
  return v16;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMSiriRequestContextUser *)self writeTo:v3];
  v4 = [v3 immutableData];

  return v4;
}

- (void)writeTo:(id)a3
{
  v6 = a3;
  if (self->_userID)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_hasIsOnlyUserInHome)
  {
    isOnlyUserInHome = self->_isOnlyUserInHome;
    PBDataWriterWriteBOOLField();
  }

  classification = self->_classification;
  PBDataWriterWriteUint32Field();
}

- (id)initByReadFrom:(id)a3
{
  v4 = a3;
  v35.receiver = self;
  v35.super_class = BMSiriRequestContextUser;
  v5 = [(BMEventBase *)&v35 init];
  if (!v5)
  {
    goto LABEL_51;
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
      if ((v14 >> 3) == 1)
      {
        v30 = PBReaderReadString();
        userID = v5->_userID;
        v5->_userID = v30;
      }

      else if (v15 == 2)
      {
        v23 = 0;
        v24 = 0;
        v25 = 0;
        v5->_hasIsOnlyUserInHome = 1;
        while (1)
        {
          v36 = 0;
          v26 = [v4 position] + 1;
          if (v26 >= [v4 position] && (v27 = objc_msgSend(v4, "position") + 1, v27 <= objc_msgSend(v4, "length")))
          {
            v28 = [v4 data];
            [v28 getBytes:&v36 range:{objc_msgSend(v4, "position"), 1}];

            [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
          }

          else
          {
            [v4 _setError];
          }

          v25 |= (v36 & 0x7F) << v23;
          if ((v36 & 0x80) == 0)
          {
            break;
          }

          v23 += 7;
          v13 = v24++ >= 9;
          if (v13)
          {
            LOBYTE(v29) = 0;
            goto LABEL_43;
          }
        }

        v29 = (v25 != 0) & ~[v4 hasError];
LABEL_43:
        v5->_isOnlyUserInHome = v29;
      }

      else if (v15 == 3)
      {
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

        v5->_classification = v18;
      }

      else if (!PBReaderSkipValueWithTag())
      {
        goto LABEL_50;
      }

      v32 = [v4 position];
    }

    while (v32 < [v4 length]);
  }

  if ([v4 hasError])
  {
LABEL_50:
    v33 = 0;
  }

  else
  {
LABEL_51:
    v33 = v5;
  }

  return v33;
}

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = [(BMSiriRequestContextUser *)self userID];
  v5 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMSiriRequestContextUser isOnlyUserInHome](self, "isOnlyUserInHome")}];
  v6 = BMSiriRequestContextUserClassificationAsString([(BMSiriRequestContextUser *)self classification]);
  v7 = [v3 initWithFormat:@"BMSiriRequestContextUser with userID: %@, isOnlyUserInHome: %@, classification: %@", v4, v5, v6];

  return v7;
}

- (BMSiriRequestContextUser)initWithUserID:(id)a3 isOnlyUserInHome:(id)a4 classification:(int)a5
{
  v9 = a3;
  v10 = a4;
  v13.receiver = self;
  v13.super_class = BMSiriRequestContextUser;
  v11 = [(BMEventBase *)&v13 init];
  if (v11)
  {
    v11->_dataVersion = [objc_opt_class() latestDataVersion];
    objc_storeStrong(&v11->_userID, a3);
    if (v10)
    {
      v11->_hasIsOnlyUserInHome = 1;
      v11->_isOnlyUserInHome = [v10 BOOLValue];
    }

    else
    {
      v11->_hasIsOnlyUserInHome = 0;
      v11->_isOnlyUserInHome = 0;
    }

    v11->_classification = a5;
  }

  return v11;
}

+ (id)protoFields
{
  v8[3] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"userID" number:1 type:13 subMessageClass:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"isOnlyUserInHome" number:2 type:12 subMessageClass:{0, v2}];
  v8[1] = v3;
  v4 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"classification" number:3 type:4 subMessageClass:0];
  v8[2] = v4;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:3];

  v6 = *MEMORY[0x1E69E9840];

  return v5;
}

+ (id)columns
{
  v8[3] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"userID" dataType:2 requestOnly:0 fieldNumber:1 protoDataType:13 convertedType:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"isOnlyUserInHome" dataType:0 requestOnly:0 fieldNumber:2 protoDataType:12 convertedType:0];
  v4 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"classification" dataType:0 requestOnly:0 fieldNumber:3 protoDataType:4 convertedType:0];
  v8[0] = v2;
  v8[1] = v3;
  v8[2] = v4;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:3];

  v6 = *MEMORY[0x1E69E9840];

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

    v8 = [[BMSiriRequestContextUser alloc] initByReadFrom:v7];
    v4 = v8;
    if (v8)
    {
      v8[5] = 0;
    }
  }

  return v4;
}

@end