@interface BMDeviceAPSDInterfaceStatus
+ (id)columns;
+ (id)eventWithData:(id)a3 dataVersion:(unsigned int)a4;
+ (id)protoFields;
- (BMDeviceAPSDInterfaceStatus)initWithJSONDictionary:(id)a3 error:(id *)a4;
- (BMDeviceAPSDInterfaceStatus)initWithStarting:(id)a3 isAPSDOverWiFi:(id)a4 isAPSDOverCell:(id)a5;
- (BOOL)isEqual:(id)a3;
- (NSString)description;
- (id)initByReadFrom:(id)a3;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)a3;
@end

@implementation BMDeviceAPSDInterfaceStatus

+ (id)columns
{
  v8[3] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"starting" dataType:0 requestOnly:0 fieldNumber:1 protoDataType:12 convertedType:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"isAPSDOverWiFi" dataType:0 requestOnly:0 fieldNumber:2 protoDataType:12 convertedType:0];
  v4 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"isAPSDOverCell" dataType:0 requestOnly:0 fieldNumber:3 protoDataType:12 convertedType:0];
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
    if (-[BMDeviceAPSDInterfaceStatus hasStarting](self, "hasStarting") || [v5 hasStarting])
    {
      if (![(BMDeviceAPSDInterfaceStatus *)self hasStarting])
      {
        goto LABEL_18;
      }

      if (![v5 hasStarting])
      {
        goto LABEL_18;
      }

      v6 = [(BMDeviceAPSDInterfaceStatus *)self starting];
      if (v6 != [v5 starting])
      {
        goto LABEL_18;
      }
    }

    if (-[BMDeviceAPSDInterfaceStatus hasIsAPSDOverWiFi](self, "hasIsAPSDOverWiFi") || [v5 hasIsAPSDOverWiFi])
    {
      if (![(BMDeviceAPSDInterfaceStatus *)self hasIsAPSDOverWiFi])
      {
        goto LABEL_18;
      }

      if (![v5 hasIsAPSDOverWiFi])
      {
        goto LABEL_18;
      }

      v7 = [(BMDeviceAPSDInterfaceStatus *)self isAPSDOverWiFi];
      if (v7 != [v5 isAPSDOverWiFi])
      {
        goto LABEL_18;
      }
    }

    if (!-[BMDeviceAPSDInterfaceStatus hasIsAPSDOverCell](self, "hasIsAPSDOverCell") && ![v5 hasIsAPSDOverCell])
    {
      LOBYTE(v9) = 1;
      goto LABEL_19;
    }

    if (-[BMDeviceAPSDInterfaceStatus hasIsAPSDOverCell](self, "hasIsAPSDOverCell") && [v5 hasIsAPSDOverCell])
    {
      v8 = [(BMDeviceAPSDInterfaceStatus *)self isAPSDOverCell];
      v9 = v8 ^ [v5 isAPSDOverCell] ^ 1;
    }

    else
    {
LABEL_18:
      LOBYTE(v9) = 0;
    }

LABEL_19:

    goto LABEL_20;
  }

  LOBYTE(v9) = 0;
LABEL_20:

  return v9;
}

- (id)jsonDictionary
{
  v13[3] = *MEMORY[0x1E69E9840];
  if ([(BMDeviceAPSDInterfaceStatus *)self hasStarting])
  {
    v3 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMDeviceAPSDInterfaceStatus starting](self, "starting")}];
  }

  else
  {
    v3 = 0;
  }

  if ([(BMDeviceAPSDInterfaceStatus *)self hasIsAPSDOverWiFi])
  {
    v4 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMDeviceAPSDInterfaceStatus isAPSDOverWiFi](self, "isAPSDOverWiFi")}];
  }

  else
  {
    v4 = 0;
  }

  if ([(BMDeviceAPSDInterfaceStatus *)self hasIsAPSDOverCell])
  {
    v5 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMDeviceAPSDInterfaceStatus isAPSDOverCell](self, "isAPSDOverCell")}];
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
  v12[1] = @"isAPSDOverWiFi";
  v7 = v4;
  if (!v4)
  {
    v7 = [MEMORY[0x1E695DFB0] null];
  }

  v13[1] = v7;
  v12[2] = @"isAPSDOverCell";
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

- (BMDeviceAPSDInterfaceStatus)initWithJSONDictionary:(id)a3 error:(id *)a4
{
  v30[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [v6 objectForKeyedSubscript:@"starting"];
  if (!v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v8 = 0;
LABEL_4:
    v9 = [v6 objectForKeyedSubscript:@"isAPSDOverWiFi"];
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
        v12 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"isAPSDOverWiFi"];
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

    v11 = [v6 objectForKeyedSubscript:@"isAPSDOverCell"];
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
          v20 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"isAPSDOverCell"];
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

    self = [(BMDeviceAPSDInterfaceStatus *)self initWithStarting:v8 isAPSDOverWiFi:v10 isAPSDOverCell:v12];
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
  [(BMDeviceAPSDInterfaceStatus *)self writeTo:v3];
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

  if (self->_hasIsAPSDOverWiFi)
  {
    isAPSDOverWiFi = self->_isAPSDOverWiFi;
    PBDataWriterWriteBOOLField();
    v4 = v8;
  }

  if (self->_hasIsAPSDOverCell)
  {
    isAPSDOverCell = self->_isAPSDOverCell;
    PBDataWriterWriteBOOLField();
    v4 = v8;
  }
}

- (id)initByReadFrom:(id)a3
{
  v4 = a3;
  v38.receiver = self;
  v38.super_class = BMDeviceAPSDInterfaceStatus;
  v5 = [(BMEventBase *)&v38 init];
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
        v39 = 0;
        v10 = [v4 position] + 1;
        if (v10 >= [v4 position] && (v11 = objc_msgSend(v4, "position") + 1, v11 <= objc_msgSend(v4, "length")))
        {
          v12 = [v4 data];
          [v12 getBytes:&v39 range:{objc_msgSend(v4, "position"), 1}];

          [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
        }

        else
        {
          [v4 _setError];
        }

        v9 |= (v39 & 0x7F) << v7;
        if ((v39 & 0x80) == 0)
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
      if ((v14 >> 3) == 3)
      {
        v30 = 0;
        v31 = 0;
        v18 = 0;
        v5->_hasIsAPSDOverCell = 1;
        while (1)
        {
          v39 = 0;
          v32 = [v4 position] + 1;
          if (v32 >= [v4 position] && (v33 = objc_msgSend(v4, "position") + 1, v33 <= objc_msgSend(v4, "length")))
          {
            v34 = [v4 data];
            [v34 getBytes:&v39 range:{objc_msgSend(v4, "position"), 1}];

            [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
          }

          else
          {
            [v4 _setError];
          }

          v18 |= (v39 & 0x7F) << v30;
          if ((v39 & 0x80) == 0)
          {
            break;
          }

          v30 += 7;
          v22 = v31++ > 8;
          if (v22)
          {
            LOBYTE(v23) = 0;
            v24 = &OBJC_IVAR___BMDeviceAPSDInterfaceStatus__isAPSDOverCell;
            goto LABEL_54;
          }
        }

        v24 = &OBJC_IVAR___BMDeviceAPSDInterfaceStatus__isAPSDOverCell;
      }

      else if (v15 == 2)
      {
        v25 = 0;
        v26 = 0;
        v18 = 0;
        v5->_hasIsAPSDOverWiFi = 1;
        while (1)
        {
          v39 = 0;
          v27 = [v4 position] + 1;
          if (v27 >= [v4 position] && (v28 = objc_msgSend(v4, "position") + 1, v28 <= objc_msgSend(v4, "length")))
          {
            v29 = [v4 data];
            [v29 getBytes:&v39 range:{objc_msgSend(v4, "position"), 1}];

            [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
          }

          else
          {
            [v4 _setError];
          }

          v18 |= (v39 & 0x7F) << v25;
          if ((v39 & 0x80) == 0)
          {
            break;
          }

          v25 += 7;
          v22 = v26++ > 8;
          if (v22)
          {
            LOBYTE(v23) = 0;
            v24 = &OBJC_IVAR___BMDeviceAPSDInterfaceStatus__isAPSDOverWiFi;
            goto LABEL_54;
          }
        }

        v24 = &OBJC_IVAR___BMDeviceAPSDInterfaceStatus__isAPSDOverWiFi;
      }

      else
      {
        if (v15 != 1)
        {
          if ((PBReaderSkipValueWithTag() & 1) == 0)
          {
            goto LABEL_57;
          }

          goto LABEL_55;
        }

        v16 = 0;
        v17 = 0;
        v18 = 0;
        v5->_hasStarting = 1;
        while (1)
        {
          v39 = 0;
          v19 = [v4 position] + 1;
          if (v19 >= [v4 position] && (v20 = objc_msgSend(v4, "position") + 1, v20 <= objc_msgSend(v4, "length")))
          {
            v21 = [v4 data];
            [v21 getBytes:&v39 range:{objc_msgSend(v4, "position"), 1}];

            [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
          }

          else
          {
            [v4 _setError];
          }

          v18 |= (v39 & 0x7F) << v16;
          if ((v39 & 0x80) == 0)
          {
            break;
          }

          v16 += 7;
          v22 = v17++ > 8;
          if (v22)
          {
            LOBYTE(v23) = 0;
            v24 = &OBJC_IVAR___BMDeviceAPSDInterfaceStatus__starting;
            goto LABEL_54;
          }
        }

        v24 = &OBJC_IVAR___BMDeviceAPSDInterfaceStatus__starting;
      }

      v23 = (v18 != 0) & ~[v4 hasError];
LABEL_54:
      *(&v5->super.super.isa + *v24) = v23;
LABEL_55:
      v35 = [v4 position];
    }

    while (v35 < [v4 length]);
  }

  if ([v4 hasError])
  {
LABEL_57:
    v36 = 0;
  }

  else
  {
LABEL_58:
    v36 = v5;
  }

  return v36;
}

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMDeviceAPSDInterfaceStatus starting](self, "starting")}];
  v5 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMDeviceAPSDInterfaceStatus isAPSDOverWiFi](self, "isAPSDOverWiFi")}];
  v6 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMDeviceAPSDInterfaceStatus isAPSDOverCell](self, "isAPSDOverCell")}];
  v7 = [v3 initWithFormat:@"BMDeviceAPSDInterfaceStatus with starting: %@, isAPSDOverWiFi: %@, isAPSDOverCell: %@", v4, v5, v6];

  return v7;
}

- (BMDeviceAPSDInterfaceStatus)initWithStarting:(id)a3 isAPSDOverWiFi:(id)a4 isAPSDOverCell:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v13.receiver = self;
  v13.super_class = BMDeviceAPSDInterfaceStatus;
  v11 = [(BMEventBase *)&v13 init];
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
      v11->_hasIsAPSDOverWiFi = 1;
      v11->_isAPSDOverWiFi = [v9 BOOLValue];
    }

    else
    {
      v11->_hasIsAPSDOverWiFi = 0;
      v11->_isAPSDOverWiFi = 0;
    }

    if (v10)
    {
      v11->_hasIsAPSDOverCell = 1;
      v11->_isAPSDOverCell = [v10 BOOLValue];
    }

    else
    {
      v11->_hasIsAPSDOverCell = 0;
      v11->_isAPSDOverCell = 0;
    }
  }

  return v11;
}

+ (id)protoFields
{
  v8[3] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"starting" number:1 type:12 subMessageClass:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"isAPSDOverWiFi" number:2 type:12 subMessageClass:{0, v2}];
  v8[1] = v3;
  v4 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"isAPSDOverCell" number:3 type:12 subMessageClass:0];
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

    v8 = [[BMDeviceAPSDInterfaceStatus alloc] initByReadFrom:v7];
    v4 = v8;
    if (v8)
    {
      v8[6] = 0;
    }
  }

  return v4;
}

@end