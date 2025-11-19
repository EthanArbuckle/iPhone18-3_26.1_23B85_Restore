@interface BMOasisAnalyticsDeviceInfo
+ (id)columns;
+ (id)eventWithData:(id)a3 dataVersion:(unsigned int)a4;
+ (id)protoFields;
- (BMOasisAnalyticsDeviceInfo)initWithIsInternal:(id)a3 systemBuild:(id)a4 deviceType:(id)a5 deviceId:(id)a6 oasisTeam:(int)a7;
- (BMOasisAnalyticsDeviceInfo)initWithJSONDictionary:(id)a3 error:(id *)a4;
- (BOOL)isEqual:(id)a3;
- (NSString)description;
- (id)initByReadFrom:(id)a3;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)a3;
@end

@implementation BMOasisAnalyticsDeviceInfo

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    if (-[BMOasisAnalyticsDeviceInfo hasIsInternal](self, "hasIsInternal") || [v5 hasIsInternal])
    {
      if (![(BMOasisAnalyticsDeviceInfo *)self hasIsInternal])
      {
        goto LABEL_18;
      }

      if (![v5 hasIsInternal])
      {
        goto LABEL_18;
      }

      v6 = [(BMOasisAnalyticsDeviceInfo *)self isInternal];
      if (v6 != [v5 isInternal])
      {
        goto LABEL_18;
      }
    }

    v7 = [(BMOasisAnalyticsDeviceInfo *)self systemBuild];
    v8 = [v5 systemBuild];
    v9 = v8;
    if (v7 == v8)
    {
    }

    else
    {
      v10 = [(BMOasisAnalyticsDeviceInfo *)self systemBuild];
      v11 = [v5 systemBuild];
      v12 = [v10 isEqual:v11];

      if (!v12)
      {
        goto LABEL_18;
      }
    }

    v14 = [(BMOasisAnalyticsDeviceInfo *)self deviceType];
    v15 = [v5 deviceType];
    v16 = v15;
    if (v14 == v15)
    {
    }

    else
    {
      v17 = [(BMOasisAnalyticsDeviceInfo *)self deviceType];
      v18 = [v5 deviceType];
      v19 = [v17 isEqual:v18];

      if (!v19)
      {
        goto LABEL_18;
      }
    }

    v20 = [(BMOasisAnalyticsDeviceInfo *)self deviceId];
    v21 = [v5 deviceId];
    v22 = v21;
    if (v20 == v21)
    {
    }

    else
    {
      v23 = [(BMOasisAnalyticsDeviceInfo *)self deviceId];
      v24 = [v5 deviceId];
      v25 = [v23 isEqual:v24];

      if (!v25)
      {
LABEL_18:
        v13 = 0;
LABEL_19:

        goto LABEL_20;
      }
    }

    v27 = [(BMOasisAnalyticsDeviceInfo *)self oasisTeam];
    v13 = v27 == [v5 oasisTeam];
    goto LABEL_19;
  }

  v13 = 0;
LABEL_20:

  return v13;
}

- (id)jsonDictionary
{
  v23[5] = *MEMORY[0x1E69E9840];
  if ([(BMOasisAnalyticsDeviceInfo *)self hasIsInternal])
  {
    v3 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMOasisAnalyticsDeviceInfo isInternal](self, "isInternal")}];
  }

  else
  {
    v3 = 0;
  }

  v4 = [(BMOasisAnalyticsDeviceInfo *)self systemBuild];
  v5 = [(BMOasisAnalyticsDeviceInfo *)self deviceType];
  v6 = [(BMOasisAnalyticsDeviceInfo *)self deviceId];
  v7 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMOasisAnalyticsDeviceInfo oasisTeam](self, "oasisTeam")}];
  v18 = @"isInternal";
  v8 = v3;
  if (!v3)
  {
    v8 = [MEMORY[0x1E695DFB0] null];
  }

  v16 = v8;
  v23[0] = v8;
  v19 = @"systemBuild";
  v9 = v4;
  if (!v4)
  {
    v9 = [MEMORY[0x1E695DFB0] null];
  }

  v23[1] = v9;
  v20 = @"deviceType";
  v10 = v5;
  if (!v5)
  {
    v10 = [MEMORY[0x1E695DFB0] null];
  }

  v23[2] = v10;
  v21 = @"deviceId";
  v11 = v6;
  if (!v6)
  {
    v11 = [MEMORY[0x1E695DFB0] null];
  }

  v23[3] = v11;
  v22 = @"oasisTeam";
  v12 = v7;
  if (!v7)
  {
    v12 = [MEMORY[0x1E695DFB0] null];
  }

  v23[4] = v12;
  v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v23 forKeys:&v18 count:{5, v16}];
  if (v7)
  {
    if (v6)
    {
      goto LABEL_16;
    }
  }

  else
  {

    if (v6)
    {
LABEL_16:
      if (v5)
      {
        goto LABEL_17;
      }

      goto LABEL_24;
    }
  }

  if (v5)
  {
LABEL_17:
    if (v4)
    {
      goto LABEL_18;
    }

LABEL_25:

    if (v3)
    {
      goto LABEL_19;
    }

    goto LABEL_26;
  }

LABEL_24:

  if (!v4)
  {
    goto LABEL_25;
  }

LABEL_18:
  if (v3)
  {
    goto LABEL_19;
  }

LABEL_26:

LABEL_19:
  v14 = *MEMORY[0x1E69E9840];

  return v13;
}

- (BMOasisAnalyticsDeviceInfo)initWithJSONDictionary:(id)a3 error:(id *)a4
{
  v49[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [v6 objectForKeyedSubscript:@"isInternal"];
  if (!v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v8 = 0;
LABEL_4:
    v9 = [v6 objectForKeyedSubscript:@"systemBuild"];
    if (v9 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!a4)
        {
          v39 = 0;
          v20 = 0;
          goto LABEL_41;
        }

        v33 = a4;
        v21 = objc_alloc(MEMORY[0x1E696ABC0]);
        v22 = *MEMORY[0x1E698F240];
        v46 = *MEMORY[0x1E696A578];
        v37 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"systemBuild"];
        v47 = v37;
        v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v47 forKeys:&v46 count:1];
        v39 = 0;
        v20 = 0;
        *v33 = [v21 initWithDomain:v22 code:2 userInfo:v10];
        goto LABEL_40;
      }

      v39 = v9;
    }

    else
    {
      v39 = 0;
    }

    v10 = [v6 objectForKeyedSubscript:@"deviceType"];
    v36 = v8;
    v38 = self;
    if (v10 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!a4)
        {
          v37 = 0;
          v20 = 0;
          goto LABEL_40;
        }

        v23 = a4;
        v24 = objc_alloc(MEMORY[0x1E696ABC0]);
        v25 = *MEMORY[0x1E698F240];
        v44 = *MEMORY[0x1E696A578];
        v13 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"deviceType"];
        v45 = v13;
        v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v45 forKeys:&v44 count:1];
        v37 = 0;
        v20 = 0;
        *v23 = [v24 initWithDomain:v25 code:2 userInfo:v11];
LABEL_39:

        self = v38;
        v8 = v36;
LABEL_40:

        goto LABEL_41;
      }

      v37 = v10;
    }

    else
    {
      v37 = 0;
    }

    v11 = [v6 objectForKeyedSubscript:@"deviceId"];
    v12 = a4;
    if (v11 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!a4)
        {
          v13 = 0;
          v20 = 0;
          goto LABEL_39;
        }

        v34 = objc_alloc(MEMORY[0x1E696ABC0]);
        v26 = *MEMORY[0x1E698F240];
        v42 = *MEMORY[0x1E696A578];
        v15 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"deviceId"];
        v43 = v15;
        v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v43 forKeys:&v42 count:1];
        v27 = [v34 initWithDomain:v26 code:2 userInfo:v14];
        v13 = 0;
        v20 = 0;
        *v12 = v27;
        goto LABEL_38;
      }

      v13 = v11;
    }

    else
    {
      v13 = 0;
    }

    v14 = [v6 objectForKeyedSubscript:@"oasisTeam"];
    if (v14 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v16 = v14;
      }

      else
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          if (v12)
          {
            v35 = objc_alloc(MEMORY[0x1E696ABC0]);
            v32 = *MEMORY[0x1E698F240];
            v40 = *MEMORY[0x1E696A578];
            v30 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (corresponding to enum value), or NSString (string version of enum)", objc_opt_class(), @"oasisTeam"];
            v41 = v30;
            v31 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v41 forKeys:&v40 count:1];
            *v12 = [v35 initWithDomain:v32 code:2 userInfo:v31];
          }

          v15 = 0;
          v20 = 0;
          goto LABEL_38;
        }

        v16 = [MEMORY[0x1E696AD98] numberWithInt:BMOasisAnalyticsDeviceInfoOasisAnalyticsTeamFromString(v14)];
      }

      v15 = v16;
    }

    else
    {
      v15 = 0;
    }

    v20 = -[BMOasisAnalyticsDeviceInfo initWithIsInternal:systemBuild:deviceType:deviceId:oasisTeam:](v38, "initWithIsInternal:systemBuild:deviceType:deviceId:oasisTeam:", v36, v39, v37, v13, [v15 intValue]);
    v38 = v20;
LABEL_38:

    goto LABEL_39;
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
    v20 = 0;
    goto LABEL_42;
  }

  v17 = a4;
  v18 = objc_alloc(MEMORY[0x1E696ABC0]);
  v19 = *MEMORY[0x1E698F240];
  v48 = *MEMORY[0x1E696A578];
  v39 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"isInternal"];
  v49[0] = v39;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v49 forKeys:&v48 count:1];
  v8 = 0;
  v20 = 0;
  *v17 = [v18 initWithDomain:v19 code:2 userInfo:v9];
LABEL_41:

LABEL_42:
  v28 = *MEMORY[0x1E69E9840];
  return v20;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMOasisAnalyticsDeviceInfo *)self writeTo:v3];
  v4 = [v3 immutableData];

  return v4;
}

- (void)writeTo:(id)a3
{
  v6 = a3;
  if (self->_hasIsInternal)
  {
    isInternal = self->_isInternal;
    PBDataWriterWriteBOOLField();
  }

  if (self->_systemBuild)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_deviceType)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_deviceId)
  {
    PBDataWriterWriteStringField();
  }

  oasisTeam = self->_oasisTeam;
  PBDataWriterWriteUint32Field();
}

- (id)initByReadFrom:(id)a3
{
  v4 = a3;
  v36.receiver = self;
  v36.super_class = BMOasisAnalyticsDeviceInfo;
  v5 = [(BMEventBase *)&v36 init];
  if (!v5)
  {
    goto LABEL_57;
  }

  v6 = [v4 position];
  if (v6 < [v4 length])
  {
    while (1)
    {
      if ([v4 hasError])
      {
        goto LABEL_55;
      }

      v7 = 0;
      v8 = 0;
      v9 = 0;
      while (1)
      {
        v37 = 0;
        v10 = [v4 position] + 1;
        if (v10 >= [v4 position] && (v11 = objc_msgSend(v4, "position") + 1, v11 <= objc_msgSend(v4, "length")))
        {
          v12 = [v4 data];
          [v12 getBytes:&v37 range:{objc_msgSend(v4, "position"), 1}];

          [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
        }

        else
        {
          [v4 _setError];
        }

        v9 |= (v37 & 0x7F) << v7;
        if ((v37 & 0x80) == 0)
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
        goto LABEL_55;
      }

      v15 = v14 >> 3;
      if ((v14 >> 3) <= 2)
      {
        if (v15 == 1)
        {
          v26 = 0;
          v27 = 0;
          v28 = 0;
          v5->_hasIsInternal = 1;
          while (1)
          {
            v37 = 0;
            v29 = [v4 position] + 1;
            if (v29 >= [v4 position] && (v30 = objc_msgSend(v4, "position") + 1, v30 <= objc_msgSend(v4, "length")))
            {
              v31 = [v4 data];
              [v31 getBytes:&v37 range:{objc_msgSend(v4, "position"), 1}];

              [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
            }

            else
            {
              [v4 _setError];
            }

            v28 |= (v37 & 0x7F) << v26;
            if ((v37 & 0x80) == 0)
            {
              break;
            }

            v26 += 7;
            v13 = v27++ >= 9;
            if (v13)
            {
              LOBYTE(v32) = 0;
              goto LABEL_49;
            }
          }

          v32 = (v28 != 0) & ~[v4 hasError];
LABEL_49:
          v5->_isInternal = v32;
          goto LABEL_54;
        }

        if (v15 != 2)
        {
LABEL_46:
          if (!PBReaderSkipValueWithTag())
          {
            goto LABEL_56;
          }

          goto LABEL_54;
        }

        v23 = PBReaderReadString();
        v24 = 32;
        goto LABEL_36;
      }

      if (v15 == 3)
      {
        break;
      }

      if (v15 == 4)
      {
        v23 = PBReaderReadString();
        v24 = 48;
        goto LABEL_36;
      }

      if (v15 != 5)
      {
        goto LABEL_46;
      }

      v16 = 0;
      v17 = 0;
      v18 = 0;
      while (1)
      {
        v37 = 0;
        v19 = [v4 position] + 1;
        if (v19 >= [v4 position] && (v20 = objc_msgSend(v4, "position") + 1, v20 <= objc_msgSend(v4, "length")))
        {
          v21 = [v4 data];
          [v21 getBytes:&v37 range:{objc_msgSend(v4, "position"), 1}];

          [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
        }

        else
        {
          [v4 _setError];
        }

        v18 |= (v37 & 0x7F) << v16;
        if ((v37 & 0x80) == 0)
        {
          break;
        }

        v16 += 7;
        if (v17++ > 8)
        {
          goto LABEL_52;
        }
      }

      if (([v4 hasError] & 1) != 0 || v18 > 2)
      {
LABEL_52:
        LODWORD(v18) = 0;
      }

      v5->_oasisTeam = v18;
LABEL_54:
      v33 = [v4 position];
      if (v33 >= [v4 length])
      {
        goto LABEL_55;
      }
    }

    v23 = PBReaderReadString();
    v24 = 40;
LABEL_36:
    v25 = *(&v5->super.super.isa + v24);
    *(&v5->super.super.isa + v24) = v23;

    goto LABEL_54;
  }

LABEL_55:
  if ([v4 hasError])
  {
LABEL_56:
    v34 = 0;
  }

  else
  {
LABEL_57:
    v34 = v5;
  }

  return v34;
}

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMOasisAnalyticsDeviceInfo isInternal](self, "isInternal")}];
  v5 = [(BMOasisAnalyticsDeviceInfo *)self systemBuild];
  v6 = [(BMOasisAnalyticsDeviceInfo *)self deviceType];
  v7 = [(BMOasisAnalyticsDeviceInfo *)self deviceId];
  v8 = BMOasisAnalyticsDeviceInfoOasisAnalyticsTeamAsString([(BMOasisAnalyticsDeviceInfo *)self oasisTeam]);
  v9 = [v3 initWithFormat:@"BMOasisAnalyticsDeviceInfo with isInternal: %@, systemBuild: %@, deviceType: %@, deviceId: %@, oasisTeam: %@", v4, v5, v6, v7, v8];

  return v9;
}

- (BMOasisAnalyticsDeviceInfo)initWithIsInternal:(id)a3 systemBuild:(id)a4 deviceType:(id)a5 deviceId:(id)a6 oasisTeam:(int)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v18.receiver = self;
  v18.super_class = BMOasisAnalyticsDeviceInfo;
  v16 = [(BMEventBase *)&v18 init];
  if (v16)
  {
    v16->_dataVersion = [objc_opt_class() latestDataVersion];
    if (v12)
    {
      v16->_hasIsInternal = 1;
      v16->_isInternal = [v12 BOOLValue];
    }

    else
    {
      v16->_hasIsInternal = 0;
      v16->_isInternal = 0;
    }

    objc_storeStrong(&v16->_systemBuild, a4);
    objc_storeStrong(&v16->_deviceType, a5);
    objc_storeStrong(&v16->_deviceId, a6);
    v16->_oasisTeam = a7;
  }

  return v16;
}

+ (id)protoFields
{
  v10[5] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"isInternal" number:1 type:12 subMessageClass:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"systemBuild" number:2 type:13 subMessageClass:{0, v2}];
  v10[1] = v3;
  v4 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"deviceType" number:3 type:13 subMessageClass:0];
  v10[2] = v4;
  v5 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"deviceId" number:4 type:13 subMessageClass:0];
  v10[3] = v5;
  v6 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"oasisTeam" number:5 type:4 subMessageClass:0];
  v10[4] = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:5];

  v8 = *MEMORY[0x1E69E9840];

  return v7;
}

+ (id)columns
{
  v10[5] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"isInternal" dataType:0 requestOnly:0 fieldNumber:1 protoDataType:12 convertedType:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"systemBuild" dataType:2 requestOnly:0 fieldNumber:2 protoDataType:13 convertedType:0];
  v4 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"deviceType" dataType:2 requestOnly:0 fieldNumber:3 protoDataType:13 convertedType:0];
  v5 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"deviceId" dataType:2 requestOnly:0 fieldNumber:4 protoDataType:13 convertedType:0];
  v6 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"oasisTeam" dataType:0 requestOnly:0 fieldNumber:5 protoDataType:4 convertedType:0];
  v10[0] = v2;
  v10[1] = v3;
  v10[2] = v4;
  v10[3] = v5;
  v10[4] = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:5];

  v8 = *MEMORY[0x1E69E9840];

  return v7;
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

    v8 = [[BMOasisAnalyticsDeviceInfo alloc] initByReadFrom:v7];
    v4 = v8;
    if (v8)
    {
      v8[5] = 0;
    }
  }

  return v4;
}

@end