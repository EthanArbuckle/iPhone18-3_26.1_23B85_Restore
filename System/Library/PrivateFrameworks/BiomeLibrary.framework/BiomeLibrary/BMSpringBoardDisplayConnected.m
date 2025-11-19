@interface BMSpringBoardDisplayConnected
+ (id)columns;
+ (id)eventWithData:(id)a3 dataVersion:(unsigned int)a4;
+ (id)protoFields;
- (BMSpringBoardDisplayConnected)initWithJSONDictionary:(id)a3 error:(id *)a4;
- (BMSpringBoardDisplayConnected)initWithStarting:(id)a3 deviceName:(id)a4 uniqueId:(id)a5 productName:(id)a6 mirroringMode:(id)a7;
- (BOOL)isEqual:(id)a3;
- (NSString)description;
- (id)initByReadFrom:(id)a3;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)a3;
@end

@implementation BMSpringBoardDisplayConnected

+ (id)columns
{
  v10[5] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"starting" dataType:0 requestOnly:0 fieldNumber:1 protoDataType:12 convertedType:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"deviceName" dataType:2 requestOnly:0 fieldNumber:2 protoDataType:13 convertedType:0];
  v4 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"uniqueId" dataType:2 requestOnly:0 fieldNumber:3 protoDataType:13 convertedType:0];
  v5 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"productName" dataType:2 requestOnly:0 fieldNumber:4 protoDataType:13 convertedType:0];
  v6 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"mirroringMode" dataType:0 requestOnly:0 fieldNumber:5 protoDataType:12 convertedType:0];
  v10[0] = v2;
  v10[1] = v3;
  v10[2] = v4;
  v10[3] = v5;
  v10[4] = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:5];

  v8 = *MEMORY[0x1E69E9840];

  return v7;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    if (-[BMSpringBoardDisplayConnected hasStarting](self, "hasStarting") || [v5 hasStarting])
    {
      if (![(BMSpringBoardDisplayConnected *)self hasStarting])
      {
        goto LABEL_25;
      }

      if (![v5 hasStarting])
      {
        goto LABEL_25;
      }

      v6 = [(BMSpringBoardDisplayConnected *)self starting];
      if (v6 != [v5 starting])
      {
        goto LABEL_25;
      }
    }

    v7 = [(BMSpringBoardDisplayConnected *)self deviceName];
    v8 = [v5 deviceName];
    v9 = v8;
    if (v7 == v8)
    {
    }

    else
    {
      v10 = [(BMSpringBoardDisplayConnected *)self deviceName];
      v11 = [v5 deviceName];
      v12 = [v10 isEqual:v11];

      if (!v12)
      {
        goto LABEL_25;
      }
    }

    v14 = [(BMSpringBoardDisplayConnected *)self uniqueId];
    v15 = [v5 uniqueId];
    v16 = v15;
    if (v14 == v15)
    {
    }

    else
    {
      v17 = [(BMSpringBoardDisplayConnected *)self uniqueId];
      v18 = [v5 uniqueId];
      v19 = [v17 isEqual:v18];

      if (!v19)
      {
        goto LABEL_25;
      }
    }

    v20 = [(BMSpringBoardDisplayConnected *)self productName];
    v21 = [v5 productName];
    v22 = v21;
    if (v20 == v21)
    {
    }

    else
    {
      v23 = [(BMSpringBoardDisplayConnected *)self productName];
      v24 = [v5 productName];
      v25 = [v23 isEqual:v24];

      if (!v25)
      {
        goto LABEL_25;
      }
    }

    if (!-[BMSpringBoardDisplayConnected hasMirroringMode](self, "hasMirroringMode") && ![v5 hasMirroringMode])
    {
      LOBYTE(v13) = 1;
      goto LABEL_26;
    }

    if (-[BMSpringBoardDisplayConnected hasMirroringMode](self, "hasMirroringMode") && [v5 hasMirroringMode])
    {
      v26 = [(BMSpringBoardDisplayConnected *)self mirroringMode];
      v13 = v26 ^ [v5 mirroringMode] ^ 1;
LABEL_26:

      goto LABEL_27;
    }

LABEL_25:
    LOBYTE(v13) = 0;
    goto LABEL_26;
  }

  LOBYTE(v13) = 0;
LABEL_27:

  return v13;
}

- (id)jsonDictionary
{
  v23[5] = *MEMORY[0x1E69E9840];
  if ([(BMSpringBoardDisplayConnected *)self hasStarting])
  {
    v3 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMSpringBoardDisplayConnected starting](self, "starting")}];
  }

  else
  {
    v3 = 0;
  }

  v4 = [(BMSpringBoardDisplayConnected *)self deviceName];
  v5 = [(BMSpringBoardDisplayConnected *)self uniqueId];
  v6 = [(BMSpringBoardDisplayConnected *)self productName];
  if ([(BMSpringBoardDisplayConnected *)self hasMirroringMode])
  {
    v7 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMSpringBoardDisplayConnected mirroringMode](self, "mirroringMode")}];
  }

  else
  {
    v7 = 0;
  }

  v18 = @"starting";
  v8 = v3;
  if (!v3)
  {
    v8 = [MEMORY[0x1E695DFB0] null];
  }

  v16 = v8;
  v23[0] = v8;
  v19 = @"deviceName";
  v9 = v4;
  if (!v4)
  {
    v9 = [MEMORY[0x1E695DFB0] null];
  }

  v23[1] = v9;
  v20 = @"uniqueId";
  v10 = v5;
  if (!v5)
  {
    v10 = [MEMORY[0x1E695DFB0] null];
  }

  v23[2] = v10;
  v21 = @"productName";
  v11 = v6;
  if (!v6)
  {
    v11 = [MEMORY[0x1E695DFB0] null];
  }

  v23[3] = v11;
  v22 = @"mirroringMode";
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
      goto LABEL_19;
    }
  }

  else
  {

    if (v6)
    {
LABEL_19:
      if (v5)
      {
        goto LABEL_20;
      }

      goto LABEL_27;
    }
  }

  if (v5)
  {
LABEL_20:
    if (v4)
    {
      goto LABEL_21;
    }

LABEL_28:

    if (v3)
    {
      goto LABEL_22;
    }

    goto LABEL_29;
  }

LABEL_27:

  if (!v4)
  {
    goto LABEL_28;
  }

LABEL_21:
  if (v3)
  {
    goto LABEL_22;
  }

LABEL_29:

LABEL_22:
  v14 = *MEMORY[0x1E69E9840];

  return v13;
}

- (BMSpringBoardDisplayConnected)initWithJSONDictionary:(id)a3 error:(id *)a4
{
  v48[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [v6 objectForKeyedSubscript:@"starting"];
  if (!v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v8 = 0;
LABEL_4:
    v9 = [v6 objectForKeyedSubscript:@"deviceName"];
    if (v9 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!a4)
        {
          v38 = 0;
          v16 = 0;
          goto LABEL_20;
        }

        v32 = a4;
        v22 = objc_alloc(MEMORY[0x1E696ABC0]);
        v23 = *MEMORY[0x1E698F240];
        v45 = *MEMORY[0x1E696A578];
        v36 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"deviceName"];
        v46 = v36;
        v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v46 forKeys:&v45 count:1];
        v38 = 0;
        v16 = 0;
        *v32 = [v22 initWithDomain:v23 code:2 userInfo:v10];
        goto LABEL_19;
      }

      v38 = v9;
    }

    else
    {
      v38 = 0;
    }

    v10 = [v6 objectForKeyedSubscript:@"uniqueId"];
    v35 = v8;
    v37 = self;
    if (v10 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!a4)
        {
          v36 = 0;
          v16 = 0;
          goto LABEL_19;
        }

        v24 = a4;
        v25 = objc_alloc(MEMORY[0x1E696ABC0]);
        v26 = *MEMORY[0x1E698F240];
        v43 = *MEMORY[0x1E696A578];
        v13 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"uniqueId"];
        v44 = v13;
        v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v44 forKeys:&v43 count:1];
        v36 = 0;
        v16 = 0;
        *v24 = [v25 initWithDomain:v26 code:2 userInfo:v11];
LABEL_18:

        self = v37;
        v8 = v35;
LABEL_19:

        goto LABEL_20;
      }

      v36 = v10;
    }

    else
    {
      v36 = 0;
    }

    v11 = [v6 objectForKeyedSubscript:@"productName"];
    v12 = a4;
    if (v11 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!a4)
        {
          v13 = 0;
          v16 = 0;
          goto LABEL_18;
        }

        v33 = objc_alloc(MEMORY[0x1E696ABC0]);
        v27 = *MEMORY[0x1E698F240];
        v41 = *MEMORY[0x1E696A578];
        v15 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"productName"];
        v42 = v15;
        v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v42 forKeys:&v41 count:1];
        v28 = [v33 initWithDomain:v27 code:2 userInfo:v14];
        v13 = 0;
        v16 = 0;
        *v12 = v28;
        goto LABEL_17;
      }

      v13 = v11;
    }

    else
    {
      v13 = 0;
    }

    v14 = [v6 objectForKeyedSubscript:@"mirroringMode"];
    if (v14 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (v12)
        {
          v34 = objc_alloc(MEMORY[0x1E696ABC0]);
          v31 = *MEMORY[0x1E698F240];
          v39 = *MEMORY[0x1E696A578];
          v29 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"mirroringMode"];
          v40 = v29;
          v30 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v40 forKeys:&v39 count:1];
          *v12 = [v34 initWithDomain:v31 code:2 userInfo:v30];
        }

        v15 = 0;
        v16 = 0;
        goto LABEL_17;
      }

      v15 = v14;
    }

    else
    {
      v15 = 0;
    }

    v16 = [(BMSpringBoardDisplayConnected *)v37 initWithStarting:v35 deviceName:v38 uniqueId:v36 productName:v13 mirroringMode:v15];
    v37 = v16;
LABEL_17:

    goto LABEL_18;
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
    goto LABEL_21;
  }

  v19 = a4;
  v20 = objc_alloc(MEMORY[0x1E696ABC0]);
  v21 = *MEMORY[0x1E698F240];
  v47 = *MEMORY[0x1E696A578];
  v38 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"starting"];
  v48[0] = v38;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v48 forKeys:&v47 count:1];
  v8 = 0;
  v16 = 0;
  *v19 = [v20 initWithDomain:v21 code:2 userInfo:v9];
LABEL_20:

LABEL_21:
  v17 = *MEMORY[0x1E69E9840];
  return v16;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMSpringBoardDisplayConnected *)self writeTo:v3];
  v4 = [v3 immutableData];

  return v4;
}

- (void)writeTo:(id)a3
{
  v6 = a3;
  if (self->_hasStarting)
  {
    starting = self->_starting;
    PBDataWriterWriteBOOLField();
  }

  if (self->_deviceName)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_uniqueId)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_productName)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_hasMirroringMode)
  {
    mirroringMode = self->_mirroringMode;
    PBDataWriterWriteBOOLField();
  }
}

- (id)initByReadFrom:(id)a3
{
  v4 = a3;
  v36.receiver = self;
  v36.super_class = BMSpringBoardDisplayConnected;
  v5 = [(BMEventBase *)&v36 init];
  if (!v5)
  {
    goto LABEL_56;
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
        break;
      }

      v15 = v14 >> 3;
      if ((v14 >> 3) <= 2)
      {
        if (v15 == 1)
        {
          v26 = 0;
          v27 = 0;
          v28 = 0;
          v5->_hasStarting = 1;
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
              LOBYTE(v22) = 0;
              goto LABEL_49;
            }
          }

          v22 = (v28 != 0) & ~[v4 hasError];
LABEL_49:
          v32 = 16;
LABEL_52:
          *(&v5->super.super.isa + v32) = v22;
          goto LABEL_53;
        }

        if (v15 != 2)
        {
LABEL_46:
          if (!PBReaderSkipValueWithTag())
          {
            goto LABEL_55;
          }

          goto LABEL_53;
        }

        v23 = PBReaderReadString();
        v24 = 24;
      }

      else
      {
        switch(v15)
        {
          case 3:
            v23 = PBReaderReadString();
            v24 = 32;
            break;
          case 4:
            v23 = PBReaderReadString();
            v24 = 40;
            break;
          case 5:
            v16 = 0;
            v17 = 0;
            v18 = 0;
            v5->_hasMirroringMode = 1;
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
              v13 = v17++ >= 9;
              if (v13)
              {
                LOBYTE(v22) = 0;
                goto LABEL_51;
              }
            }

            v22 = (v18 != 0) & ~[v4 hasError];
LABEL_51:
            v32 = 18;
            goto LABEL_52;
          default:
            goto LABEL_46;
        }
      }

      v25 = *(&v5->super.super.isa + v24);
      *(&v5->super.super.isa + v24) = v23;

LABEL_53:
      v33 = [v4 position];
    }

    while (v33 < [v4 length]);
  }

  if ([v4 hasError])
  {
LABEL_55:
    v34 = 0;
  }

  else
  {
LABEL_56:
    v34 = v5;
  }

  return v34;
}

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMSpringBoardDisplayConnected starting](self, "starting")}];
  v5 = [(BMSpringBoardDisplayConnected *)self deviceName];
  v6 = [(BMSpringBoardDisplayConnected *)self uniqueId];
  v7 = [(BMSpringBoardDisplayConnected *)self productName];
  v8 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMSpringBoardDisplayConnected mirroringMode](self, "mirroringMode")}];
  v9 = [v3 initWithFormat:@"BMSpringBoardDisplayConnected with starting: %@, deviceName: %@, uniqueId: %@, productName: %@, mirroringMode: %@", v4, v5, v6, v7, v8];

  return v9;
}

- (BMSpringBoardDisplayConnected)initWithStarting:(id)a3 deviceName:(id)a4 uniqueId:(id)a5 productName:(id)a6 mirroringMode:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v19.receiver = self;
  v19.super_class = BMSpringBoardDisplayConnected;
  v17 = [(BMEventBase *)&v19 init];
  if (v17)
  {
    v17->_dataVersion = [objc_opt_class() latestDataVersion];
    if (v12)
    {
      v17->_hasStarting = 1;
      v17->_starting = [v12 BOOLValue];
    }

    else
    {
      v17->_hasStarting = 0;
      v17->_starting = 0;
    }

    objc_storeStrong(&v17->_deviceName, a4);
    objc_storeStrong(&v17->_uniqueId, a5);
    objc_storeStrong(&v17->_productName, a6);
    if (v16)
    {
      v17->_hasMirroringMode = 1;
      v17->_mirroringMode = [v16 BOOLValue];
    }

    else
    {
      v17->_hasMirroringMode = 0;
      v17->_mirroringMode = 0;
    }
  }

  return v17;
}

+ (id)protoFields
{
  v10[5] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"starting" number:1 type:12 subMessageClass:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"deviceName" number:2 type:13 subMessageClass:{0, v2}];
  v10[1] = v3;
  v4 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"uniqueId" number:3 type:13 subMessageClass:0];
  v10[2] = v4;
  v5 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"productName" number:4 type:13 subMessageClass:0];
  v10[3] = v5;
  v6 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"mirroringMode" number:5 type:12 subMessageClass:0];
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

    v8 = [[BMSpringBoardDisplayConnected alloc] initByReadFrom:v7];
    v4 = v8;
    if (v8)
    {
      v8[5] = 0;
    }
  }

  return v4;
}

@end