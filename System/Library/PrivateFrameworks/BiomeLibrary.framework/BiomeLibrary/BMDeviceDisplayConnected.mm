@interface BMDeviceDisplayConnected
+ (id)columns;
+ (id)eventWithData:(id)data dataVersion:(unsigned int)version;
+ (id)protoFields;
- (BMDeviceDisplayConnected)initWithJSONDictionary:(id)dictionary error:(id *)error;
- (BMDeviceDisplayConnected)initWithStarting:(id)starting deviceName:(id)name uniqueId:(id)id productName:(id)productName mirroringMode:(id)mode;
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (id)initByReadFrom:(id)from;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)to;
@end

@implementation BMDeviceDisplayConnected

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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    if (-[BMDeviceDisplayConnected hasStarting](self, "hasStarting") || [v5 hasStarting])
    {
      if (![(BMDeviceDisplayConnected *)self hasStarting])
      {
        goto LABEL_25;
      }

      if (![v5 hasStarting])
      {
        goto LABEL_25;
      }

      starting = [(BMDeviceDisplayConnected *)self starting];
      if (starting != [v5 starting])
      {
        goto LABEL_25;
      }
    }

    deviceName = [(BMDeviceDisplayConnected *)self deviceName];
    deviceName2 = [v5 deviceName];
    v9 = deviceName2;
    if (deviceName == deviceName2)
    {
    }

    else
    {
      deviceName3 = [(BMDeviceDisplayConnected *)self deviceName];
      deviceName4 = [v5 deviceName];
      v12 = [deviceName3 isEqual:deviceName4];

      if (!v12)
      {
        goto LABEL_25;
      }
    }

    uniqueId = [(BMDeviceDisplayConnected *)self uniqueId];
    uniqueId2 = [v5 uniqueId];
    v16 = uniqueId2;
    if (uniqueId == uniqueId2)
    {
    }

    else
    {
      uniqueId3 = [(BMDeviceDisplayConnected *)self uniqueId];
      uniqueId4 = [v5 uniqueId];
      v19 = [uniqueId3 isEqual:uniqueId4];

      if (!v19)
      {
        goto LABEL_25;
      }
    }

    productName = [(BMDeviceDisplayConnected *)self productName];
    productName2 = [v5 productName];
    v22 = productName2;
    if (productName == productName2)
    {
    }

    else
    {
      productName3 = [(BMDeviceDisplayConnected *)self productName];
      productName4 = [v5 productName];
      v25 = [productName3 isEqual:productName4];

      if (!v25)
      {
        goto LABEL_25;
      }
    }

    if (!-[BMDeviceDisplayConnected hasMirroringMode](self, "hasMirroringMode") && ![v5 hasMirroringMode])
    {
      LOBYTE(v13) = 1;
      goto LABEL_26;
    }

    if (-[BMDeviceDisplayConnected hasMirroringMode](self, "hasMirroringMode") && [v5 hasMirroringMode])
    {
      mirroringMode = [(BMDeviceDisplayConnected *)self mirroringMode];
      v13 = mirroringMode ^ [v5 mirroringMode] ^ 1;
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
  if ([(BMDeviceDisplayConnected *)self hasStarting])
  {
    v3 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMDeviceDisplayConnected starting](self, "starting")}];
  }

  else
  {
    v3 = 0;
  }

  deviceName = [(BMDeviceDisplayConnected *)self deviceName];
  uniqueId = [(BMDeviceDisplayConnected *)self uniqueId];
  productName = [(BMDeviceDisplayConnected *)self productName];
  if ([(BMDeviceDisplayConnected *)self hasMirroringMode])
  {
    v7 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMDeviceDisplayConnected mirroringMode](self, "mirroringMode")}];
  }

  else
  {
    v7 = 0;
  }

  v18 = @"starting";
  null = v3;
  if (!v3)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v16 = null;
  v23[0] = null;
  v19 = @"deviceName";
  null2 = deviceName;
  if (!deviceName)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v23[1] = null2;
  v20 = @"uniqueId";
  null3 = uniqueId;
  if (!uniqueId)
  {
    null3 = [MEMORY[0x1E695DFB0] null];
  }

  v23[2] = null3;
  v21 = @"productName";
  null4 = productName;
  if (!productName)
  {
    null4 = [MEMORY[0x1E695DFB0] null];
  }

  v23[3] = null4;
  v22 = @"mirroringMode";
  null5 = v7;
  if (!v7)
  {
    null5 = [MEMORY[0x1E695DFB0] null];
  }

  v23[4] = null5;
  v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v23 forKeys:&v18 count:{5, v16}];
  if (v7)
  {
    if (productName)
    {
      goto LABEL_19;
    }
  }

  else
  {

    if (productName)
    {
LABEL_19:
      if (uniqueId)
      {
        goto LABEL_20;
      }

      goto LABEL_27;
    }
  }

  if (uniqueId)
  {
LABEL_20:
    if (deviceName)
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

  if (!deviceName)
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

- (BMDeviceDisplayConnected)initWithJSONDictionary:(id)dictionary error:(id *)error
{
  v48[1] = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v7 = [dictionaryCopy objectForKeyedSubscript:@"starting"];
  if (!v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v8 = 0;
LABEL_4:
    v9 = [dictionaryCopy objectForKeyedSubscript:@"deviceName"];
    if (v9 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!error)
        {
          v38 = 0;
          v16 = 0;
          goto LABEL_20;
        }

        errorCopy = error;
        v22 = objc_alloc(MEMORY[0x1E696ABC0]);
        v23 = *MEMORY[0x1E698F240];
        v45 = *MEMORY[0x1E696A578];
        v36 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"deviceName"];
        v46 = v36;
        v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v46 forKeys:&v45 count:1];
        v38 = 0;
        v16 = 0;
        *errorCopy = [v22 initWithDomain:v23 code:2 userInfo:v10];
        goto LABEL_19;
      }

      v38 = v9;
    }

    else
    {
      v38 = 0;
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"uniqueId"];
    v35 = v8;
    selfCopy = self;
    if (v10 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!error)
        {
          v36 = 0;
          v16 = 0;
          goto LABEL_19;
        }

        errorCopy2 = error;
        v25 = objc_alloc(MEMORY[0x1E696ABC0]);
        v26 = *MEMORY[0x1E698F240];
        v43 = *MEMORY[0x1E696A578];
        v13 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"uniqueId"];
        v44 = v13;
        v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v44 forKeys:&v43 count:1];
        v36 = 0;
        v16 = 0;
        *errorCopy2 = [v25 initWithDomain:v26 code:2 userInfo:v11];
LABEL_18:

        self = selfCopy;
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

    v11 = [dictionaryCopy objectForKeyedSubscript:@"productName"];
    errorCopy3 = error;
    if (v11 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!error)
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
        *errorCopy3 = v28;
        goto LABEL_17;
      }

      v13 = v11;
    }

    else
    {
      v13 = 0;
    }

    v14 = [dictionaryCopy objectForKeyedSubscript:@"mirroringMode"];
    if (v14 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (errorCopy3)
        {
          v34 = objc_alloc(MEMORY[0x1E696ABC0]);
          v31 = *MEMORY[0x1E698F240];
          v39 = *MEMORY[0x1E696A578];
          v29 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"mirroringMode"];
          v40 = v29;
          v30 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v40 forKeys:&v39 count:1];
          *errorCopy3 = [v34 initWithDomain:v31 code:2 userInfo:v30];
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

    v16 = [(BMDeviceDisplayConnected *)selfCopy initWithStarting:v35 deviceName:v38 uniqueId:v36 productName:v13 mirroringMode:v15];
    selfCopy = v16;
LABEL_17:

    goto LABEL_18;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = v7;
    goto LABEL_4;
  }

  if (!error)
  {
    v8 = 0;
    v16 = 0;
    goto LABEL_21;
  }

  errorCopy4 = error;
  v20 = objc_alloc(MEMORY[0x1E696ABC0]);
  v21 = *MEMORY[0x1E698F240];
  v47 = *MEMORY[0x1E696A578];
  v38 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"starting"];
  v48[0] = v38;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v48 forKeys:&v47 count:1];
  v8 = 0;
  v16 = 0;
  *errorCopy4 = [v20 initWithDomain:v21 code:2 userInfo:v9];
LABEL_20:

LABEL_21:
  v17 = *MEMORY[0x1E69E9840];
  return v16;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMDeviceDisplayConnected *)self writeTo:v3];
  immutableData = [v3 immutableData];

  return immutableData;
}

- (void)writeTo:(id)to
{
  toCopy = to;
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

- (id)initByReadFrom:(id)from
{
  fromCopy = from;
  v36.receiver = self;
  v36.super_class = BMDeviceDisplayConnected;
  v5 = [(BMEventBase *)&v36 init];
  if (!v5)
  {
    goto LABEL_56;
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
        v37 = 0;
        v10 = [fromCopy position] + 1;
        if (v10 >= [fromCopy position] && (v11 = objc_msgSend(fromCopy, "position") + 1, v11 <= objc_msgSend(fromCopy, "length")))
        {
          data = [fromCopy data];
          [data getBytes:&v37 range:{objc_msgSend(fromCopy, "position"), 1}];

          [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
        }

        else
        {
          [fromCopy _setError];
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

      v14 = [fromCopy hasError] ? 0 : v9;
LABEL_16:
      if (([fromCopy hasError] & 1) != 0 || (v14 & 7) == 4)
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
            v29 = [fromCopy position] + 1;
            if (v29 >= [fromCopy position] && (v30 = objc_msgSend(fromCopy, "position") + 1, v30 <= objc_msgSend(fromCopy, "length")))
            {
              data2 = [fromCopy data];
              [data2 getBytes:&v37 range:{objc_msgSend(fromCopy, "position"), 1}];

              [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
            }

            else
            {
              [fromCopy _setError];
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

          v22 = (v28 != 0) & ~[fromCopy hasError];
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
              v19 = [fromCopy position] + 1;
              if (v19 >= [fromCopy position] && (v20 = objc_msgSend(fromCopy, "position") + 1, v20 <= objc_msgSend(fromCopy, "length")))
              {
                data3 = [fromCopy data];
                [data3 getBytes:&v37 range:{objc_msgSend(fromCopy, "position"), 1}];

                [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
              }

              else
              {
                [fromCopy _setError];
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

            v22 = (v18 != 0) & ~[fromCopy hasError];
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
      position2 = [fromCopy position];
    }

    while (position2 < [fromCopy length]);
  }

  if ([fromCopy hasError])
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
  v4 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMDeviceDisplayConnected starting](self, "starting")}];
  deviceName = [(BMDeviceDisplayConnected *)self deviceName];
  uniqueId = [(BMDeviceDisplayConnected *)self uniqueId];
  productName = [(BMDeviceDisplayConnected *)self productName];
  v8 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMDeviceDisplayConnected mirroringMode](self, "mirroringMode")}];
  v9 = [v3 initWithFormat:@"BMDeviceDisplayConnected with starting: %@, deviceName: %@, uniqueId: %@, productName: %@, mirroringMode: %@", v4, deviceName, uniqueId, productName, v8];

  return v9;
}

- (BMDeviceDisplayConnected)initWithStarting:(id)starting deviceName:(id)name uniqueId:(id)id productName:(id)productName mirroringMode:(id)mode
{
  startingCopy = starting;
  nameCopy = name;
  idCopy = id;
  productNameCopy = productName;
  modeCopy = mode;
  v19.receiver = self;
  v19.super_class = BMDeviceDisplayConnected;
  v17 = [(BMEventBase *)&v19 init];
  if (v17)
  {
    v17->_dataVersion = [objc_opt_class() latestDataVersion];
    if (startingCopy)
    {
      v17->_hasStarting = 1;
      v17->_starting = [startingCopy BOOLValue];
    }

    else
    {
      v17->_hasStarting = 0;
      v17->_starting = 0;
    }

    objc_storeStrong(&v17->_deviceName, name);
    objc_storeStrong(&v17->_uniqueId, id);
    objc_storeStrong(&v17->_productName, productName);
    if (modeCopy)
    {
      v17->_hasMirroringMode = 1;
      v17->_mirroringMode = [modeCopy BOOLValue];
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

    v8 = [[BMDeviceDisplayConnected alloc] initByReadFrom:v7];
    v4 = v8;
    if (v8)
    {
      v8[5] = 0;
    }
  }

  return v4;
}

@end