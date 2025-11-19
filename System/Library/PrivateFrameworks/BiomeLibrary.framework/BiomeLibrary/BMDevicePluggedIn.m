@interface BMDevicePluggedIn
+ (id)columns;
+ (id)eventWithData:(id)a3 dataVersion:(unsigned int)a4;
+ (id)protoFields;
- (BMDevicePluggedIn)initWithJSONDictionary:(id)a3 error:(id *)a4;
- (BMDevicePluggedIn)initWithStarting:(id)a3 wireless:(id)a4 adapterType:(id)a5;
- (BOOL)isEqual:(id)a3;
- (NSString)description;
- (id)initByReadFrom:(id)a3;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)a3;
@end

@implementation BMDevicePluggedIn

+ (id)columns
{
  v8[3] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"starting" dataType:0 requestOnly:0 fieldNumber:1 protoDataType:12 convertedType:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"wireless" dataType:0 requestOnly:0 fieldNumber:2 protoDataType:12 convertedType:0];
  v4 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"adapterType" dataType:0 requestOnly:0 fieldNumber:3 protoDataType:3 convertedType:0];
  v8[0] = v2;
  v8[1] = v3;
  v8[2] = v4;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:3];

  v6 = *MEMORY[0x1E69E9840];

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    if (-[BMDevicePluggedIn hasStarting](self, "hasStarting") || [v5 hasStarting])
    {
      if (![(BMDevicePluggedIn *)self hasStarting])
      {
        goto LABEL_18;
      }

      if (![v5 hasStarting])
      {
        goto LABEL_18;
      }

      v6 = [(BMDevicePluggedIn *)self starting];
      if (v6 != [v5 starting])
      {
        goto LABEL_18;
      }
    }

    if (-[BMDevicePluggedIn hasWireless](self, "hasWireless") || [v5 hasWireless])
    {
      if (![(BMDevicePluggedIn *)self hasWireless])
      {
        goto LABEL_18;
      }

      if (![v5 hasWireless])
      {
        goto LABEL_18;
      }

      v7 = [(BMDevicePluggedIn *)self wireless];
      if (v7 != [v5 wireless])
      {
        goto LABEL_18;
      }
    }

    if (!-[BMDevicePluggedIn hasAdapterType](self, "hasAdapterType") && ![v5 hasAdapterType])
    {
      v9 = 1;
      goto LABEL_19;
    }

    if (-[BMDevicePluggedIn hasAdapterType](self, "hasAdapterType") && [v5 hasAdapterType])
    {
      v8 = [(BMDevicePluggedIn *)self adapterType];
      v9 = v8 == [v5 adapterType];
    }

    else
    {
LABEL_18:
      v9 = 0;
    }

LABEL_19:

    goto LABEL_20;
  }

  v9 = 0;
LABEL_20:

  return v9;
}

- (id)jsonDictionary
{
  v13[3] = *MEMORY[0x1E69E9840];
  if ([(BMDevicePluggedIn *)self hasStarting])
  {
    v3 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMDevicePluggedIn starting](self, "starting")}];
  }

  else
  {
    v3 = 0;
  }

  if ([(BMDevicePluggedIn *)self hasWireless])
  {
    v4 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMDevicePluggedIn wireless](self, "wireless")}];
  }

  else
  {
    v4 = 0;
  }

  if ([(BMDevicePluggedIn *)self hasAdapterType])
  {
    v5 = [MEMORY[0x1E696AD98] numberWithLongLong:{-[BMDevicePluggedIn adapterType](self, "adapterType")}];
  }

  else
  {
    v5 = 0;
  }

  v12[0] = @"starting";
  v6 = v3;
  if (!v3)
  {
    v6 = [MEMORY[0x1E695DFB0] null];
  }

  v13[0] = v6;
  v12[1] = @"wireless";
  v7 = v4;
  if (!v4)
  {
    v7 = [MEMORY[0x1E695DFB0] null];
  }

  v13[1] = v7;
  v12[2] = @"adapterType";
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
      goto LABEL_18;
    }

LABEL_23:

    if (v3)
    {
      goto LABEL_19;
    }

    goto LABEL_24;
  }

  if (!v4)
  {
    goto LABEL_23;
  }

LABEL_18:
  if (v3)
  {
    goto LABEL_19;
  }

LABEL_24:

LABEL_19:
  v10 = *MEMORY[0x1E69E9840];

  return v9;
}

- (BMDevicePluggedIn)initWithJSONDictionary:(id)a3 error:(id *)a4
{
  v30[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [v6 objectForKeyedSubscript:@"starting"];
  if (!v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v8 = 0;
LABEL_4:
    v9 = [v6 objectForKeyedSubscript:@"wireless"];
    if (v9 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!a4)
        {
          v10 = 0;
          v13 = 0;
          goto LABEL_12;
        }

        v23 = objc_alloc(MEMORY[0x1E696ABC0]);
        v18 = *MEMORY[0x1E698F240];
        v27 = *MEMORY[0x1E696A578];
        v12 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"wireless"];
        v28 = v12;
        v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v28 forKeys:&v27 count:1];
        v19 = [v23 initWithDomain:v18 code:2 userInfo:v11];
        v10 = 0;
        v13 = 0;
        *a4 = v19;
        goto LABEL_11;
      }

      v10 = v9;
    }

    else
    {
      v10 = 0;
    }

    v11 = [v6 objectForKeyedSubscript:@"adapterType"];
    if (v11 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (a4)
        {
          v24 = objc_alloc(MEMORY[0x1E696ABC0]);
          v22 = *MEMORY[0x1E698F240];
          v25 = *MEMORY[0x1E696A578];
          v20 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"adapterType"];
          v26 = v20;
          v21 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v26 forKeys:&v25 count:1];
          *a4 = [v24 initWithDomain:v22 code:2 userInfo:v21];
        }

        v12 = 0;
        v13 = 0;
        goto LABEL_11;
      }

      v12 = v11;
    }

    else
    {
      v12 = 0;
    }

    self = [(BMDevicePluggedIn *)self initWithStarting:v8 wireless:v10 adapterType:v12];
    v13 = self;
LABEL_11:

    goto LABEL_12;
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
    v13 = 0;
    goto LABEL_13;
  }

  v16 = objc_alloc(MEMORY[0x1E696ABC0]);
  v17 = *MEMORY[0x1E698F240];
  v29 = *MEMORY[0x1E696A578];
  v10 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"starting"];
  v30[0] = v10;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v30 forKeys:&v29 count:1];
  v8 = 0;
  v13 = 0;
  *a4 = [v16 initWithDomain:v17 code:2 userInfo:v9];
LABEL_12:

LABEL_13:
  v14 = *MEMORY[0x1E69E9840];
  return v13;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMDevicePluggedIn *)self writeTo:v3];
  v4 = [v3 immutableData];

  return v4;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v8 = v4;
  if (self->_hasStarting)
  {
    starting = self->_starting;
    PBDataWriterWriteBOOLField();
    v4 = v8;
  }

  if (self->_hasWireless)
  {
    wireless = self->_wireless;
    PBDataWriterWriteBOOLField();
    v4 = v8;
  }

  if (self->_hasAdapterType)
  {
    adapterType = self->_adapterType;
    PBDataWriterWriteInt64Field();
    v4 = v8;
  }
}

- (id)initByReadFrom:(id)a3
{
  v4 = a3;
  v40.receiver = self;
  v40.super_class = BMDevicePluggedIn;
  v5 = [(BMEventBase *)&v40 init];
  if (!v5)
  {
    goto LABEL_62;
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
        v41 = 0;
        v10 = [v4 position] + 1;
        if (v10 >= [v4 position] && (v11 = objc_msgSend(v4, "position") + 1, v11 <= objc_msgSend(v4, "length")))
        {
          v12 = [v4 data];
          [v12 getBytes:&v41 range:{objc_msgSend(v4, "position"), 1}];

          [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
        }

        else
        {
          [v4 _setError];
        }

        v9 |= (v41 & 0x7F) << v7;
        if ((v41 & 0x80) == 0)
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
      if ((v14 >> 3) == 3)
      {
        v29 = 0;
        v30 = 0;
        v31 = 0;
        v5->_hasAdapterType = 1;
        while (1)
        {
          v41 = 0;
          v32 = [v4 position] + 1;
          if (v32 >= [v4 position] && (v33 = objc_msgSend(v4, "position") + 1, v33 <= objc_msgSend(v4, "length")))
          {
            v34 = [v4 data];
            [v34 getBytes:&v41 range:{objc_msgSend(v4, "position"), 1}];

            [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
          }

          else
          {
            [v4 _setError];
          }

          v31 |= (v41 & 0x7F) << v29;
          if ((v41 & 0x80) == 0)
          {
            break;
          }

          v29 += 7;
          v13 = v30++ >= 9;
          if (v13)
          {
            v35 = 0;
            goto LABEL_55;
          }
        }

        if ([v4 hasError])
        {
          v35 = 0;
        }

        else
        {
          v35 = v31;
        }

LABEL_55:
        v5->_adapterType = v35;
      }

      else
      {
        if (v15 == 2)
        {
          v23 = 0;
          v24 = 0;
          v25 = 0;
          v5->_hasWireless = 1;
          while (1)
          {
            v41 = 0;
            v26 = [v4 position] + 1;
            if (v26 >= [v4 position] && (v27 = objc_msgSend(v4, "position") + 1, v27 <= objc_msgSend(v4, "length")))
            {
              v28 = [v4 data];
              [v28 getBytes:&v41 range:{objc_msgSend(v4, "position"), 1}];

              [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
            }

            else
            {
              [v4 _setError];
            }

            v25 |= (v41 & 0x7F) << v23;
            if ((v41 & 0x80) == 0)
            {
              break;
            }

            v23 += 7;
            v13 = v24++ >= 9;
            if (v13)
            {
              LOBYTE(v22) = 0;
              goto LABEL_51;
            }
          }

          v22 = (v25 != 0) & ~[v4 hasError];
LABEL_51:
          v36 = 18;
        }

        else
        {
          if (v15 != 1)
          {
            if (!PBReaderSkipValueWithTag())
            {
              goto LABEL_61;
            }

            goto LABEL_59;
          }

          v16 = 0;
          v17 = 0;
          v18 = 0;
          v5->_hasStarting = 1;
          while (1)
          {
            v41 = 0;
            v19 = [v4 position] + 1;
            if (v19 >= [v4 position] && (v20 = objc_msgSend(v4, "position") + 1, v20 <= objc_msgSend(v4, "length")))
            {
              v21 = [v4 data];
              [v21 getBytes:&v41 range:{objc_msgSend(v4, "position"), 1}];

              [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
            }

            else
            {
              [v4 _setError];
            }

            v18 |= (v41 & 0x7F) << v16;
            if ((v41 & 0x80) == 0)
            {
              break;
            }

            v16 += 7;
            v13 = v17++ >= 9;
            if (v13)
            {
              LOBYTE(v22) = 0;
              goto LABEL_57;
            }
          }

          v22 = (v18 != 0) & ~[v4 hasError];
LABEL_57:
          v36 = 16;
        }

        *(&v5->super.super.isa + v36) = v22;
      }

LABEL_59:
      v37 = [v4 position];
    }

    while (v37 < [v4 length]);
  }

  if ([v4 hasError])
  {
LABEL_61:
    v38 = 0;
  }

  else
  {
LABEL_62:
    v38 = v5;
  }

  return v38;
}

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMDevicePluggedIn starting](self, "starting")}];
  v5 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMDevicePluggedIn wireless](self, "wireless")}];
  v6 = [MEMORY[0x1E696AD98] numberWithLongLong:{-[BMDevicePluggedIn adapterType](self, "adapterType")}];
  v7 = [v3 initWithFormat:@"BMDevicePluggedIn with starting: %@, wireless: %@, adapterType: %@", v4, v5, v6];

  return v7;
}

- (BMDevicePluggedIn)initWithStarting:(id)a3 wireless:(id)a4 adapterType:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v14.receiver = self;
  v14.super_class = BMDevicePluggedIn;
  v11 = [(BMEventBase *)&v14 init];
  if (v11)
  {
    v11->_dataVersion = [objc_opt_class() latestDataVersion];
    if (v8)
    {
      v11->_hasStarting = 1;
      v11->_starting = [v8 BOOLValue];
    }

    else
    {
      v11->_hasStarting = 0;
      v11->_starting = 0;
    }

    if (v9)
    {
      v11->_hasWireless = 1;
      v11->_wireless = [v9 BOOLValue];
    }

    else
    {
      v11->_hasWireless = 0;
      v11->_wireless = 0;
    }

    if (v10)
    {
      v11->_hasAdapterType = 1;
      v12 = [v10 longLongValue];
    }

    else
    {
      v11->_hasAdapterType = 0;
      v12 = -1;
    }

    v11->_adapterType = v12;
  }

  return v11;
}

+ (id)protoFields
{
  v8[3] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"starting" number:1 type:12 subMessageClass:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"wireless" number:2 type:12 subMessageClass:{0, v2}];
  v8[1] = v3;
  v4 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"adapterType" number:3 type:3 subMessageClass:0];
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

    v8 = [[BMDevicePluggedIn alloc] initByReadFrom:v7];
    v4 = v8;
    if (v8)
    {
      v8[6] = 0;
    }
  }

  return v4;
}

@end