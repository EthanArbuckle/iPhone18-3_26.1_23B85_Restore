@interface BMContextSyncLOI
+ (id)columns;
+ (id)eventWithData:(id)data dataVersion:(unsigned int)version;
+ (id)protoFields;
- (BMContextSyncLOI)initWithID:(id)d deviceUUID:(id)iD starting:(id)starting userSpecificPlaceType:(int)type placeType:(int)placeType;
- (BMContextSyncLOI)initWithJSONDictionary:(id)dictionary error:(id *)error;
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (id)initByReadFrom:(id)from;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)to;
@end

@implementation BMContextSyncLOI

+ (id)columns
{
  v10[5] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"ID" dataType:2 requestOnly:0 fieldNumber:1 protoDataType:13 convertedType:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"deviceUUID" dataType:2 requestOnly:0 fieldNumber:2 protoDataType:13 convertedType:0];
  v4 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"starting" dataType:0 requestOnly:0 fieldNumber:3 protoDataType:12 convertedType:0];
  v5 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"userSpecificPlaceType" dataType:0 requestOnly:0 fieldNumber:4 protoDataType:4 convertedType:0];
  v6 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"placeType" dataType:0 requestOnly:0 fieldNumber:5 protoDataType:4 convertedType:0];
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
    v6 = [(BMContextSyncLOI *)self ID];
    v7 = [v5 ID];
    v8 = v7;
    if (v6 == v7)
    {
    }

    else
    {
      v9 = [(BMContextSyncLOI *)self ID];
      v10 = [v5 ID];
      v11 = [v9 isEqual:v10];

      if (!v11)
      {
        goto LABEL_18;
      }
    }

    deviceUUID = [(BMContextSyncLOI *)self deviceUUID];
    deviceUUID2 = [v5 deviceUUID];
    v15 = deviceUUID2;
    if (deviceUUID == deviceUUID2)
    {
    }

    else
    {
      deviceUUID3 = [(BMContextSyncLOI *)self deviceUUID];
      deviceUUID4 = [v5 deviceUUID];
      v18 = [deviceUUID3 isEqual:deviceUUID4];

      if (!v18)
      {
        goto LABEL_18;
      }
    }

    if (!-[BMContextSyncLOI hasStarting](self, "hasStarting") && ![v5 hasStarting] || -[BMContextSyncLOI hasStarting](self, "hasStarting") && objc_msgSend(v5, "hasStarting") && (v19 = -[BMContextSyncLOI starting](self, "starting"), v19 == objc_msgSend(v5, "starting")))
    {
      userSpecificPlaceType = [(BMContextSyncLOI *)self userSpecificPlaceType];
      if (userSpecificPlaceType == [v5 userSpecificPlaceType])
      {
        placeType = [(BMContextSyncLOI *)self placeType];
        v12 = placeType == [v5 placeType];
LABEL_19:

        goto LABEL_20;
      }
    }

LABEL_18:
    v12 = 0;
    goto LABEL_19;
  }

  v12 = 0;
LABEL_20:

  return v12;
}

- (id)jsonDictionary
{
  v23[5] = *MEMORY[0x1E69E9840];
  v3 = [(BMContextSyncLOI *)self ID];
  deviceUUID = [(BMContextSyncLOI *)self deviceUUID];
  if ([(BMContextSyncLOI *)self hasStarting])
  {
    v5 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMContextSyncLOI starting](self, "starting")}];
  }

  else
  {
    v5 = 0;
  }

  v6 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMContextSyncLOI userSpecificPlaceType](self, "userSpecificPlaceType")}];
  v7 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMContextSyncLOI placeType](self, "placeType")}];
  v18 = @"ID";
  null = v3;
  if (!v3)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v16 = null;
  v23[0] = null;
  v19 = @"deviceUUID";
  null2 = deviceUUID;
  if (!deviceUUID)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v23[1] = null2;
  v20 = @"starting";
  null3 = v5;
  if (!v5)
  {
    null3 = [MEMORY[0x1E695DFB0] null];
  }

  v23[2] = null3;
  v21 = @"userSpecificPlaceType";
  null4 = v6;
  if (!v6)
  {
    null4 = [MEMORY[0x1E695DFB0] null];
  }

  v23[3] = null4;
  v22 = @"placeType";
  null5 = v7;
  if (!v7)
  {
    null5 = [MEMORY[0x1E695DFB0] null];
  }

  v23[4] = null5;
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
    if (deviceUUID)
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

  if (!deviceUUID)
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

- (BMContextSyncLOI)initWithJSONDictionary:(id)dictionary error:(id *)error
{
  v46[1] = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v7 = [dictionaryCopy objectForKeyedSubscript:@"ID"];
  if (!v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v8 = 0;
LABEL_4:
    v9 = [dictionaryCopy objectForKeyedSubscript:@"deviceUUID"];
    errorCopy = error;
    if (v9 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!error)
        {
          v36 = 0;
          v17 = 0;
          goto LABEL_42;
        }

        v18 = objc_alloc(MEMORY[0x1E696ABC0]);
        v19 = *MEMORY[0x1E698F240];
        v43 = *MEMORY[0x1E696A578];
        v35 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"deviceUUID"];
        v44 = v35;
        v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v44 forKeys:&v43 count:1];
        v36 = 0;
        v17 = 0;
        *errorCopy = [v18 initWithDomain:v19 code:2 userInfo:v10];
        goto LABEL_41;
      }

      v36 = v9;
    }

    else
    {
      v36 = 0;
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"starting"];
    v34 = v8;
    if (v10 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!error)
        {
          v35 = 0;
          v17 = 0;
          goto LABEL_41;
        }

        v20 = objc_alloc(MEMORY[0x1E696ABC0]);
        v21 = *MEMORY[0x1E698F240];
        v41 = *MEMORY[0x1E696A578];
        v12 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"starting"];
        v42 = v12;
        v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v42 forKeys:&v41 count:1];
        v35 = 0;
        v17 = 0;
        *errorCopy = [v20 initWithDomain:v21 code:2 userInfo:v11];
LABEL_40:

        v8 = v34;
LABEL_41:

        goto LABEL_42;
      }

      v35 = v10;
    }

    else
    {
      v35 = 0;
    }

    v11 = [dictionaryCopy objectForKeyedSubscript:@"userSpecificPlaceType"];
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
          if (!error)
          {
            v12 = 0;
            v17 = 0;
            goto LABEL_40;
          }

          v31 = objc_alloc(MEMORY[0x1E696ABC0]);
          v29 = *MEMORY[0x1E698F240];
          v39 = *MEMORY[0x1E696A578];
          v23 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (corresponding to enum value), or NSString (string version of enum)", objc_opt_class(), @"userSpecificPlaceType"];
          v40 = v23;
          v22 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v40 forKeys:&v39 count:1];
          v12 = 0;
          v17 = 0;
          *errorCopy = [v31 initWithDomain:v29 code:2 userInfo:v22];
          goto LABEL_39;
        }

        v13 = [MEMORY[0x1E696AD98] numberWithInt:BMContextSyncLOIUserSpecificPlaceTypeFromString(v11)];
      }

      v12 = v13;
    }

    else
    {
      v12 = 0;
    }

    v22 = [dictionaryCopy objectForKeyedSubscript:@"placeType"];
    if (v22 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v24 = v22;
      }

      else
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          if (errorCopy)
          {
            v32 = objc_alloc(MEMORY[0x1E696ABC0]);
            v30 = *MEMORY[0x1E698F240];
            v37 = *MEMORY[0x1E696A578];
            v27 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (corresponding to enum value), or NSString (string version of enum)", objc_opt_class(), @"placeType"];
            v38 = v27;
            v28 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v38 forKeys:&v37 count:1];
            *errorCopy = [v32 initWithDomain:v30 code:2 userInfo:v28];
          }

          v23 = 0;
          v17 = 0;
          goto LABEL_39;
        }

        v24 = [MEMORY[0x1E696AD98] numberWithInt:BMContextSyncLOIPlaceTypeFromString(v22)];
      }

      v23 = v24;
    }

    else
    {
      v23 = 0;
    }

    v17 = -[BMContextSyncLOI initWithID:deviceUUID:starting:userSpecificPlaceType:placeType:](self, "initWithID:deviceUUID:starting:userSpecificPlaceType:placeType:", v34, v36, v35, [v12 intValue], objc_msgSend(v23, "intValue"));
    self = v17;
LABEL_39:

    goto LABEL_40;
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
    v17 = 0;
    goto LABEL_43;
  }

  errorCopy2 = error;
  v15 = objc_alloc(MEMORY[0x1E696ABC0]);
  v16 = *MEMORY[0x1E698F240];
  v45 = *MEMORY[0x1E696A578];
  v36 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"ID"];
  v46[0] = v36;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v46 forKeys:&v45 count:1];
  v8 = 0;
  v17 = 0;
  *errorCopy2 = [v15 initWithDomain:v16 code:2 userInfo:v9];
LABEL_42:

LABEL_43:
  v25 = *MEMORY[0x1E69E9840];
  return v17;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMContextSyncLOI *)self writeTo:v3];
  immutableData = [v3 immutableData];

  return immutableData;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  if (self->_ID)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_deviceUUID)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_hasStarting)
  {
    starting = self->_starting;
    PBDataWriterWriteBOOLField();
  }

  userSpecificPlaceType = self->_userSpecificPlaceType;
  PBDataWriterWriteUint32Field();
  placeType = self->_placeType;
  PBDataWriterWriteUint32Field();
}

- (id)initByReadFrom:(id)from
{
  fromCopy = from;
  v42.receiver = self;
  v42.super_class = BMContextSyncLOI;
  v5 = [(BMEventBase *)&v42 init];
  if (!v5)
  {
    goto LABEL_70;
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
      if ((v14 >> 3) <= 2)
      {
        if (v15 == 1)
        {
          v23 = PBReaderReadString();
          v24 = 32;
        }

        else
        {
          if (v15 != 2)
          {
LABEL_54:
            if (!PBReaderSkipValueWithTag())
            {
              goto LABEL_69;
            }

            goto LABEL_67;
          }

          v23 = PBReaderReadString();
          v24 = 40;
        }

        v37 = *(&v5->super.super.isa + v24);
        *(&v5->super.super.isa + v24) = v23;
      }

      else if (v15 == 3)
      {
        v25 = 0;
        v26 = 0;
        v27 = 0;
        v5->_hasStarting = 1;
        while (1)
        {
          v43 = 0;
          v28 = [fromCopy position] + 1;
          if (v28 >= [fromCopy position] && (v29 = objc_msgSend(fromCopy, "position") + 1, v29 <= objc_msgSend(fromCopy, "length")))
          {
            data2 = [fromCopy data];
            [data2 getBytes:&v43 range:{objc_msgSend(fromCopy, "position"), 1}];

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
            goto LABEL_57;
          }
        }

        v31 = (v27 != 0) & ~[fromCopy hasError];
LABEL_57:
        v5->_starting = v31;
      }

      else
      {
        if (v15 == 4)
        {
          v32 = 0;
          v33 = 0;
          v18 = 0;
          while (1)
          {
            v43 = 0;
            v34 = [fromCopy position] + 1;
            if (v34 >= [fromCopy position] && (v35 = objc_msgSend(fromCopy, "position") + 1, v35 <= objc_msgSend(fromCopy, "length")))
            {
              data3 = [fromCopy data];
              [data3 getBytes:&v43 range:{objc_msgSend(fromCopy, "position"), 1}];

              [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
            }

            else
            {
              [fromCopy _setError];
            }

            v18 |= (v43 & 0x7F) << v32;
            if ((v43 & 0x80) == 0)
            {
              break;
            }

            v32 += 7;
            v22 = v33++ > 8;
            if (v22)
            {
              goto LABEL_60;
            }
          }

          if (([fromCopy hasError] & 1) != 0 || v18 > 4)
          {
LABEL_60:
            LODWORD(v18) = 0;
          }

          v38 = 24;
        }

        else
        {
          if (v15 != 5)
          {
            goto LABEL_54;
          }

          v16 = 0;
          v17 = 0;
          v18 = 0;
          while (1)
          {
            v43 = 0;
            v19 = [fromCopy position] + 1;
            if (v19 >= [fromCopy position] && (v20 = objc_msgSend(fromCopy, "position") + 1, v20 <= objc_msgSend(fromCopy, "length")))
            {
              data4 = [fromCopy data];
              [data4 getBytes:&v43 range:{objc_msgSend(fromCopy, "position"), 1}];

              [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
            }

            else
            {
              [fromCopy _setError];
            }

            v18 |= (v43 & 0x7F) << v16;
            if ((v43 & 0x80) == 0)
            {
              break;
            }

            v16 += 7;
            v22 = v17++ > 8;
            if (v22)
            {
              goto LABEL_64;
            }
          }

          if (([fromCopy hasError] & 1) != 0 || v18 > 3)
          {
LABEL_64:
            LODWORD(v18) = 0;
          }

          v38 = 28;
        }

        *(&v5->super.super.isa + v38) = v18;
      }

LABEL_67:
      position2 = [fromCopy position];
    }

    while (position2 < [fromCopy length]);
  }

  if ([fromCopy hasError])
  {
LABEL_69:
    v40 = 0;
  }

  else
  {
LABEL_70:
    v40 = v5;
  }

  return v40;
}

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = [(BMContextSyncLOI *)self ID];
  deviceUUID = [(BMContextSyncLOI *)self deviceUUID];
  v6 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMContextSyncLOI starting](self, "starting")}];
  v7 = BMContextSyncLOIUserSpecificPlaceTypeAsString([(BMContextSyncLOI *)self userSpecificPlaceType]);
  v8 = BMContextSyncLOIPlaceTypeAsString([(BMContextSyncLOI *)self placeType]);
  v9 = [v3 initWithFormat:@"BMContextSyncLOI with ID: %@, deviceUUID: %@, starting: %@, userSpecificPlaceType: %@, placeType: %@", v4, deviceUUID, v6, v7, v8];

  return v9;
}

- (BMContextSyncLOI)initWithID:(id)d deviceUUID:(id)iD starting:(id)starting userSpecificPlaceType:(int)type placeType:(int)placeType
{
  dCopy = d;
  iDCopy = iD;
  startingCopy = starting;
  v18.receiver = self;
  v18.super_class = BMContextSyncLOI;
  v16 = [(BMEventBase *)&v18 init];
  if (v16)
  {
    v16->_dataVersion = [objc_opt_class() latestDataVersion];
    objc_storeStrong(&v16->_ID, d);
    objc_storeStrong(&v16->_deviceUUID, iD);
    if (startingCopy)
    {
      v16->_hasStarting = 1;
      v16->_starting = [startingCopy BOOLValue];
    }

    else
    {
      v16->_hasStarting = 0;
      v16->_starting = 0;
    }

    v16->_userSpecificPlaceType = type;
    v16->_placeType = placeType;
  }

  return v16;
}

+ (id)protoFields
{
  v10[5] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"ID" number:1 type:13 subMessageClass:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"deviceUUID" number:2 type:13 subMessageClass:{0, v2}];
  v10[1] = v3;
  v4 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"starting" number:3 type:12 subMessageClass:0];
  v10[2] = v4;
  v5 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"userSpecificPlaceType" number:4 type:4 subMessageClass:0];
  v10[3] = v5;
  v6 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"placeType" number:5 type:4 subMessageClass:0];
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

    v8 = [[BMContextSyncLOI alloc] initByReadFrom:v7];
    v4 = v8;
    if (v8)
    {
      v8[5] = 0;
    }
  }

  return v4;
}

@end