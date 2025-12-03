@interface BMDeviceBluetoothNearbyDevice
+ (id)columns;
+ (id)eventWithData:(id)data dataVersion:(unsigned int)version;
+ (id)protoFields;
- (BMDeviceBluetoothNearbyDevice)initWithInitiator:(id)initiator localIdentifier:(id)identifier starting:(id)starting useCase:(id)case;
- (BMDeviceBluetoothNearbyDevice)initWithJSONDictionary:(id)dictionary error:(id *)error;
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (id)initByReadFrom:(id)from;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)to;
@end

@implementation BMDeviceBluetoothNearbyDevice

+ (id)columns
{
  v9[4] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"initiator" dataType:0 requestOnly:0 fieldNumber:1 protoDataType:12 convertedType:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"localIdentifier" dataType:2 requestOnly:0 fieldNumber:2 protoDataType:13 convertedType:0];
  v4 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"starting" dataType:0 requestOnly:0 fieldNumber:3 protoDataType:12 convertedType:0];
  v5 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"useCase" dataType:0 requestOnly:0 fieldNumber:4 protoDataType:5 convertedType:0];
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
    if (-[BMDeviceBluetoothNearbyDevice hasInitiator](self, "hasInitiator") || [v5 hasInitiator])
    {
      if (![(BMDeviceBluetoothNearbyDevice *)self hasInitiator])
      {
        goto LABEL_22;
      }

      if (![v5 hasInitiator])
      {
        goto LABEL_22;
      }

      initiator = [(BMDeviceBluetoothNearbyDevice *)self initiator];
      if (initiator != [v5 initiator])
      {
        goto LABEL_22;
      }
    }

    localIdentifier = [(BMDeviceBluetoothNearbyDevice *)self localIdentifier];
    localIdentifier2 = [v5 localIdentifier];
    v9 = localIdentifier2;
    if (localIdentifier == localIdentifier2)
    {
    }

    else
    {
      localIdentifier3 = [(BMDeviceBluetoothNearbyDevice *)self localIdentifier];
      localIdentifier4 = [v5 localIdentifier];
      v12 = [localIdentifier3 isEqual:localIdentifier4];

      if (!v12)
      {
        goto LABEL_22;
      }
    }

    if (!-[BMDeviceBluetoothNearbyDevice hasStarting](self, "hasStarting") && ![v5 hasStarting] || -[BMDeviceBluetoothNearbyDevice hasStarting](self, "hasStarting") && objc_msgSend(v5, "hasStarting") && (v14 = -[BMDeviceBluetoothNearbyDevice starting](self, "starting"), v14 == objc_msgSend(v5, "starting")))
    {
      if (!-[BMDeviceBluetoothNearbyDevice hasUseCase](self, "hasUseCase") && ![v5 hasUseCase])
      {
        v13 = 1;
        goto LABEL_23;
      }

      if (-[BMDeviceBluetoothNearbyDevice hasUseCase](self, "hasUseCase") && [v5 hasUseCase])
      {
        useCase = [(BMDeviceBluetoothNearbyDevice *)self useCase];
        v13 = useCase == [v5 useCase];
LABEL_23:

        goto LABEL_24;
      }
    }

LABEL_22:
    v13 = 0;
    goto LABEL_23;
  }

  v13 = 0;
LABEL_24:

  return v13;
}

- (id)jsonDictionary
{
  v15[4] = *MEMORY[0x1E69E9840];
  if ([(BMDeviceBluetoothNearbyDevice *)self hasInitiator])
  {
    v3 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMDeviceBluetoothNearbyDevice initiator](self, "initiator")}];
  }

  else
  {
    v3 = 0;
  }

  localIdentifier = [(BMDeviceBluetoothNearbyDevice *)self localIdentifier];
  if ([(BMDeviceBluetoothNearbyDevice *)self hasStarting])
  {
    v5 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMDeviceBluetoothNearbyDevice starting](self, "starting")}];
  }

  else
  {
    v5 = 0;
  }

  if ([(BMDeviceBluetoothNearbyDevice *)self hasUseCase])
  {
    v6 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[BMDeviceBluetoothNearbyDevice useCase](self, "useCase")}];
  }

  else
  {
    v6 = 0;
  }

  v14[0] = @"initiator";
  null = v3;
  if (!v3)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v15[0] = null;
  v14[1] = @"localIdentifier";
  null2 = localIdentifier;
  if (!localIdentifier)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v15[1] = null2;
  v14[2] = @"starting";
  null3 = v5;
  if (!v5)
  {
    null3 = [MEMORY[0x1E695DFB0] null];
  }

  v15[2] = null3;
  v14[3] = @"useCase";
  null4 = v6;
  if (!v6)
  {
    null4 = [MEMORY[0x1E695DFB0] null];
  }

  v15[3] = null4;
  v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:v14 count:4];
  if (v6)
  {
    if (v5)
    {
      goto LABEL_20;
    }
  }

  else
  {

    if (v5)
    {
LABEL_20:
      if (localIdentifier)
      {
        goto LABEL_21;
      }

LABEL_27:

      if (v3)
      {
        goto LABEL_22;
      }

      goto LABEL_28;
    }
  }

  if (!localIdentifier)
  {
    goto LABEL_27;
  }

LABEL_21:
  if (v3)
  {
    goto LABEL_22;
  }

LABEL_28:

LABEL_22:
  v12 = *MEMORY[0x1E69E9840];

  return v11;
}

- (BMDeviceBluetoothNearbyDevice)initWithJSONDictionary:(id)dictionary error:(id *)error
{
  v41[1] = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v7 = [dictionaryCopy objectForKeyedSubscript:@"initiator"];
  if (!v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v8 = 0;
LABEL_4:
    v9 = [dictionaryCopy objectForKeyedSubscript:@"localIdentifier"];
    if (v9 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!error)
        {
          v15 = 0;
          goto LABEL_34;
        }

        v19 = objc_alloc(MEMORY[0x1E696ABC0]);
        errorCopy = error;
        v20 = *MEMORY[0x1E698F240];
        v38 = *MEMORY[0x1E696A578];
        v12 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"localIdentifier"];
        v39 = v12;
        v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v39 forKeys:&v38 count:1];
        v21 = [v19 initWithDomain:v20 code:2 userInfo:v10];
        error = 0;
        v15 = 0;
        *errorCopy = v21;
        goto LABEL_33;
      }

      v32 = v9;
    }

    else
    {
      v32 = 0;
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"starting"];
    v31 = v7;
    if (v10 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!error)
        {
          v12 = 0;
          v15 = 0;
          error = v32;
          goto LABEL_33;
        }

        selfCopy3 = self;
        v29 = objc_alloc(MEMORY[0x1E696ABC0]);
        v22 = *MEMORY[0x1E698F240];
        v36 = *MEMORY[0x1E696A578];
        v14 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"starting"];
        v37 = v14;
        v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v37 forKeys:&v36 count:1];
        v23 = [v29 initWithDomain:v22 code:2 userInfo:v13];
        v12 = 0;
        v15 = 0;
        *error = v23;
        goto LABEL_31;
      }

      selfCopy3 = self;
      v12 = v10;
    }

    else
    {
      selfCopy3 = self;
      v12 = 0;
    }

    v13 = [dictionaryCopy objectForKeyedSubscript:@"useCase"];
    if (!v13 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v14 = 0;
LABEL_13:
      error = v32;
      v15 = [(BMDeviceBluetoothNearbyDevice *)selfCopy3 initWithInitiator:v8 localIdentifier:v32 starting:v12 useCase:v14];
      selfCopy3 = v15;
LABEL_32:

      self = selfCopy3;
      v7 = v31;
LABEL_33:

      goto LABEL_34;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v14 = v13;
      goto LABEL_13;
    }

    if (error)
    {
      v30 = objc_alloc(MEMORY[0x1E696ABC0]);
      v28 = *MEMORY[0x1E698F240];
      v34 = *MEMORY[0x1E696A578];
      v24 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"useCase"];
      v35 = v24;
      v25 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v35 forKeys:&v34 count:1];
      *error = [v30 initWithDomain:v28 code:2 userInfo:v25];
    }

    v14 = 0;
    v15 = 0;
LABEL_31:
    error = v32;
    goto LABEL_32;
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
    v15 = 0;
    goto LABEL_35;
  }

  v16 = objc_alloc(MEMORY[0x1E696ABC0]);
  v17 = *MEMORY[0x1E698F240];
  v40 = *MEMORY[0x1E696A578];
  v18 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"initiator"];
  v41[0] = v18;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v41 forKeys:&v40 count:1];
  v8 = 0;
  v15 = 0;
  *error = [v16 initWithDomain:v17 code:2 userInfo:v9];
  error = v18;
LABEL_34:

LABEL_35:
  v26 = *MEMORY[0x1E69E9840];
  return v15;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMDeviceBluetoothNearbyDevice *)self writeTo:v3];
  immutableData = [v3 immutableData];

  return immutableData;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  if (self->_hasInitiator)
  {
    initiator = self->_initiator;
    PBDataWriterWriteBOOLField();
  }

  if (self->_localIdentifier)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_hasStarting)
  {
    starting = self->_starting;
    PBDataWriterWriteBOOLField();
  }

  if (self->_hasUseCase)
  {
    useCase = self->_useCase;
    PBDataWriterWriteUint64Field();
  }
}

- (id)initByReadFrom:(id)from
{
  fromCopy = from;
  v42.receiver = self;
  v42.super_class = BMDeviceBluetoothNearbyDevice;
  v5 = [(BMEventBase *)&v42 init];
  if (!v5)
  {
    goto LABEL_65;
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
        v43 = 0;
        v10 = [fromCopy position] + 1;
        if (v10 >= [fromCopy position] && (v11 = objc_msgSend(fromCopy, "position") + 1, v11 <= objc_msgSend(fromCopy, "length")))
        {
          data = [fromCopy data];
          [data getBytes:&v43 range:{objc_msgSend(fromCopy, "position"), 1}];

          [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
        }

        else
        {
          [fromCopy _setError];
        }

        v9 |= (v43 & 0x7F) << v7;
        if ((v43 & 0x80) == 0)
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
      if ((v14 >> 3) > 2)
      {
        if (v15 == 3)
        {
          v32 = 0;
          v33 = 0;
          v34 = 0;
          v5->_hasStarting = 1;
          while (1)
          {
            v43 = 0;
            v35 = [fromCopy position] + 1;
            if (v35 >= [fromCopy position] && (v36 = objc_msgSend(fromCopy, "position") + 1, v36 <= objc_msgSend(fromCopy, "length")))
            {
              data2 = [fromCopy data];
              [data2 getBytes:&v43 range:{objc_msgSend(fromCopy, "position"), 1}];

              [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
            }

            else
            {
              [fromCopy _setError];
            }

            v34 |= (v43 & 0x7F) << v32;
            if ((v43 & 0x80) == 0)
            {
              break;
            }

            v32 += 7;
            v13 = v33++ >= 9;
            if (v13)
            {
              LOBYTE(v31) = 0;
              goto LABEL_60;
            }
          }

          v31 = (v34 != 0) & ~[fromCopy hasError];
LABEL_60:
          v38 = 18;
          goto LABEL_61;
        }

        if (v15 != 4)
        {
LABEL_33:
          if (!PBReaderSkipValueWithTag())
          {
            goto LABEL_64;
          }

          goto LABEL_62;
        }

        v18 = 0;
        v19 = 0;
        v20 = 0;
        v5->_hasUseCase = 1;
        while (1)
        {
          v43 = 0;
          v21 = [fromCopy position] + 1;
          if (v21 >= [fromCopy position] && (v22 = objc_msgSend(fromCopy, "position") + 1, v22 <= objc_msgSend(fromCopy, "length")))
          {
            data3 = [fromCopy data];
            [data3 getBytes:&v43 range:{objc_msgSend(fromCopy, "position"), 1}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
          }

          else
          {
            [fromCopy _setError];
          }

          v20 |= (v43 & 0x7F) << v18;
          if ((v43 & 0x80) == 0)
          {
            break;
          }

          v18 += 7;
          v13 = v19++ >= 9;
          if (v13)
          {
            v24 = 0;
            goto LABEL_56;
          }
        }

        if ([fromCopy hasError])
        {
          v24 = 0;
        }

        else
        {
          v24 = v20;
        }

LABEL_56:
        v5->_useCase = v24;
      }

      else
      {
        if (v15 == 1)
        {
          v25 = 0;
          v26 = 0;
          v27 = 0;
          v5->_hasInitiator = 1;
          while (1)
          {
            v43 = 0;
            v28 = [fromCopy position] + 1;
            if (v28 >= [fromCopy position] && (v29 = objc_msgSend(fromCopy, "position") + 1, v29 <= objc_msgSend(fromCopy, "length")))
            {
              data4 = [fromCopy data];
              [data4 getBytes:&v43 range:{objc_msgSend(fromCopy, "position"), 1}];

              [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
            }

            else
            {
              [fromCopy _setError];
            }

            v27 |= (v43 & 0x7F) << v25;
            if ((v43 & 0x80) == 0)
            {
              break;
            }

            v25 += 7;
            v13 = v26++ >= 9;
            if (v13)
            {
              LOBYTE(v31) = 0;
              goto LABEL_58;
            }
          }

          v31 = (v27 != 0) & ~[fromCopy hasError];
LABEL_58:
          v38 = 16;
LABEL_61:
          *(&v5->super.super.isa + v38) = v31;
          goto LABEL_62;
        }

        if (v15 != 2)
        {
          goto LABEL_33;
        }

        v16 = PBReaderReadString();
        localIdentifier = v5->_localIdentifier;
        v5->_localIdentifier = v16;
      }

LABEL_62:
      position2 = [fromCopy position];
    }

    while (position2 < [fromCopy length]);
  }

  if ([fromCopy hasError])
  {
LABEL_64:
    v40 = 0;
  }

  else
  {
LABEL_65:
    v40 = v5;
  }

  return v40;
}

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMDeviceBluetoothNearbyDevice initiator](self, "initiator")}];
  localIdentifier = [(BMDeviceBluetoothNearbyDevice *)self localIdentifier];
  v6 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMDeviceBluetoothNearbyDevice starting](self, "starting")}];
  v7 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[BMDeviceBluetoothNearbyDevice useCase](self, "useCase")}];
  v8 = [v3 initWithFormat:@"BMDeviceBluetoothNearbyDevice with initiator: %@, localIdentifier: %@, starting: %@, useCase: %@", v4, localIdentifier, v6, v7];

  return v8;
}

- (BMDeviceBluetoothNearbyDevice)initWithInitiator:(id)initiator localIdentifier:(id)identifier starting:(id)starting useCase:(id)case
{
  initiatorCopy = initiator;
  identifierCopy = identifier;
  startingCopy = starting;
  caseCopy = case;
  v17.receiver = self;
  v17.super_class = BMDeviceBluetoothNearbyDevice;
  v14 = [(BMEventBase *)&v17 init];
  if (v14)
  {
    v14->_dataVersion = [objc_opt_class() latestDataVersion];
    if (initiatorCopy)
    {
      v14->_hasInitiator = 1;
      v14->_initiator = [initiatorCopy BOOLValue];
    }

    else
    {
      v14->_hasInitiator = 0;
      v14->_initiator = 0;
    }

    objc_storeStrong(&v14->_localIdentifier, identifier);
    if (startingCopy)
    {
      v14->_hasStarting = 1;
      v14->_starting = [startingCopy BOOLValue];
    }

    else
    {
      v14->_hasStarting = 0;
      v14->_starting = 0;
    }

    if (caseCopy)
    {
      v14->_hasUseCase = 1;
      unsignedLongLongValue = [caseCopy unsignedLongLongValue];
    }

    else
    {
      unsignedLongLongValue = 0;
      v14->_hasUseCase = 0;
    }

    v14->_useCase = unsignedLongLongValue;
  }

  return v14;
}

+ (id)protoFields
{
  v9[4] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"initiator" number:1 type:12 subMessageClass:0];
  v9[0] = v2;
  v3 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"localIdentifier" number:2 type:13 subMessageClass:0];
  v9[1] = v3;
  v4 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"starting" number:3 type:12 subMessageClass:0];
  v9[2] = v4;
  v5 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"useCase" number:4 type:5 subMessageClass:0];
  v9[3] = v5;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:4];

  v7 = *MEMORY[0x1E69E9840];

  return v6;
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

    v8 = [[BMDeviceBluetoothNearbyDevice alloc] initByReadFrom:v7];
    v4 = v8;
    if (v8)
    {
      v8[6] = 0;
    }
  }

  return v4;
}

@end