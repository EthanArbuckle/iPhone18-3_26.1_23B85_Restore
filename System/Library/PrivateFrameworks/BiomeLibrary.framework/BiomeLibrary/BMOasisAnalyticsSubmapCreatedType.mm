@interface BMOasisAnalyticsSubmapCreatedType
+ (id)columns;
+ (id)eventWithData:(id)data dataVersion:(unsigned int)version;
+ (id)protoFields;
- (BMOasisAnalyticsSubmapCreatedType)initWithJSONDictionary:(id)dictionary error:(id *)error;
- (BMOasisAnalyticsSubmapCreatedType)initWithSubmapId:(id)id isLocationAttached:(id)attached bytesWrittenToDisk:(id)disk;
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (id)initByReadFrom:(id)from;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)to;
@end

@implementation BMOasisAnalyticsSubmapCreatedType

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    if (-[BMOasisAnalyticsSubmapCreatedType hasSubmapId](self, "hasSubmapId") || [v5 hasSubmapId])
    {
      if (![(BMOasisAnalyticsSubmapCreatedType *)self hasSubmapId])
      {
        goto LABEL_18;
      }

      if (![v5 hasSubmapId])
      {
        goto LABEL_18;
      }

      submapId = [(BMOasisAnalyticsSubmapCreatedType *)self submapId];
      if (submapId != [v5 submapId])
      {
        goto LABEL_18;
      }
    }

    if (-[BMOasisAnalyticsSubmapCreatedType hasIsLocationAttached](self, "hasIsLocationAttached") || [v5 hasIsLocationAttached])
    {
      if (![(BMOasisAnalyticsSubmapCreatedType *)self hasIsLocationAttached])
      {
        goto LABEL_18;
      }

      if (![v5 hasIsLocationAttached])
      {
        goto LABEL_18;
      }

      isLocationAttached = [(BMOasisAnalyticsSubmapCreatedType *)self isLocationAttached];
      if (isLocationAttached != [v5 isLocationAttached])
      {
        goto LABEL_18;
      }
    }

    if (!-[BMOasisAnalyticsSubmapCreatedType hasBytesWrittenToDisk](self, "hasBytesWrittenToDisk") && ![v5 hasBytesWrittenToDisk])
    {
      v9 = 1;
      goto LABEL_19;
    }

    if (-[BMOasisAnalyticsSubmapCreatedType hasBytesWrittenToDisk](self, "hasBytesWrittenToDisk") && [v5 hasBytesWrittenToDisk])
    {
      bytesWrittenToDisk = [(BMOasisAnalyticsSubmapCreatedType *)self bytesWrittenToDisk];
      v9 = bytesWrittenToDisk == [v5 bytesWrittenToDisk];
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
  if ([(BMOasisAnalyticsSubmapCreatedType *)self hasSubmapId])
  {
    v3 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[BMOasisAnalyticsSubmapCreatedType submapId](self, "submapId")}];
  }

  else
  {
    v3 = 0;
  }

  if ([(BMOasisAnalyticsSubmapCreatedType *)self hasIsLocationAttached])
  {
    v4 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMOasisAnalyticsSubmapCreatedType isLocationAttached](self, "isLocationAttached")}];
  }

  else
  {
    v4 = 0;
  }

  if ([(BMOasisAnalyticsSubmapCreatedType *)self hasBytesWrittenToDisk])
  {
    v5 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[BMOasisAnalyticsSubmapCreatedType bytesWrittenToDisk](self, "bytesWrittenToDisk")}];
  }

  else
  {
    v5 = 0;
  }

  v12[0] = @"submapId";
  null = v3;
  if (!v3)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v13[0] = null;
  v12[1] = @"isLocationAttached";
  null2 = v4;
  if (!v4)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v13[1] = null2;
  v12[2] = @"bytesWrittenToDisk";
  null3 = v5;
  if (!v5)
  {
    null3 = [MEMORY[0x1E695DFB0] null];
  }

  v13[2] = null3;
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

- (BMOasisAnalyticsSubmapCreatedType)initWithJSONDictionary:(id)dictionary error:(id *)error
{
  v30[1] = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v7 = [dictionaryCopy objectForKeyedSubscript:@"submapId"];
  if (!v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v8 = 0;
LABEL_4:
    v9 = [dictionaryCopy objectForKeyedSubscript:@"isLocationAttached"];
    if (v9 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!error)
        {
          v10 = 0;
          selfCopy = 0;
          goto LABEL_12;
        }

        v23 = objc_alloc(MEMORY[0x1E696ABC0]);
        v18 = *MEMORY[0x1E698F240];
        v27 = *MEMORY[0x1E696A578];
        v12 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"isLocationAttached"];
        v28 = v12;
        v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v28 forKeys:&v27 count:1];
        v19 = [v23 initWithDomain:v18 code:2 userInfo:v11];
        v10 = 0;
        selfCopy = 0;
        *error = v19;
        goto LABEL_11;
      }

      v10 = v9;
    }

    else
    {
      v10 = 0;
    }

    v11 = [dictionaryCopy objectForKeyedSubscript:@"bytesWrittenToDisk"];
    if (v11 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (error)
        {
          v24 = objc_alloc(MEMORY[0x1E696ABC0]);
          v22 = *MEMORY[0x1E698F240];
          v25 = *MEMORY[0x1E696A578];
          v20 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"bytesWrittenToDisk"];
          v26 = v20;
          v21 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v26 forKeys:&v25 count:1];
          *error = [v24 initWithDomain:v22 code:2 userInfo:v21];
        }

        v12 = 0;
        selfCopy = 0;
        goto LABEL_11;
      }

      v12 = v11;
    }

    else
    {
      v12 = 0;
    }

    self = [(BMOasisAnalyticsSubmapCreatedType *)self initWithSubmapId:v8 isLocationAttached:v10 bytesWrittenToDisk:v12];
    selfCopy = self;
LABEL_11:

    goto LABEL_12;
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
    selfCopy = 0;
    goto LABEL_13;
  }

  v16 = objc_alloc(MEMORY[0x1E696ABC0]);
  v17 = *MEMORY[0x1E698F240];
  v29 = *MEMORY[0x1E696A578];
  v10 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"submapId"];
  v30[0] = v10;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v30 forKeys:&v29 count:1];
  v8 = 0;
  selfCopy = 0;
  *error = [v16 initWithDomain:v17 code:2 userInfo:v9];
LABEL_12:

LABEL_13:
  v14 = *MEMORY[0x1E69E9840];
  return selfCopy;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMOasisAnalyticsSubmapCreatedType *)self writeTo:v3];
  immutableData = [v3 immutableData];

  return immutableData;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v8 = toCopy;
  if (self->_hasSubmapId)
  {
    submapId = self->_submapId;
    PBDataWriterWriteUint64Field();
    toCopy = v8;
  }

  if (self->_hasIsLocationAttached)
  {
    isLocationAttached = self->_isLocationAttached;
    PBDataWriterWriteBOOLField();
    toCopy = v8;
  }

  if (self->_hasBytesWrittenToDisk)
  {
    bytesWrittenToDisk = self->_bytesWrittenToDisk;
    PBDataWriterWriteUint64Field();
    toCopy = v8;
  }
}

- (id)initByReadFrom:(id)from
{
  fromCopy = from;
  v40.receiver = self;
  v40.super_class = BMOasisAnalyticsSubmapCreatedType;
  v5 = [(BMEventBase *)&v40 init];
  if (!v5)
  {
    goto LABEL_64;
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
        v41 = 0;
        v10 = [fromCopy position] + 1;
        if (v10 >= [fromCopy position] && (v11 = objc_msgSend(fromCopy, "position") + 1, v11 <= objc_msgSend(fromCopy, "length")))
        {
          data = [fromCopy data];
          [data getBytes:&v41 range:{objc_msgSend(fromCopy, "position"), 1}];

          [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
        }

        else
        {
          [fromCopy _setError];
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

      v14 = [fromCopy hasError] ? 0 : v9;
LABEL_16:
      if (([fromCopy hasError] & 1) != 0 || (v14 & 7) == 4)
      {
        break;
      }

      v15 = v14 >> 3;
      if ((v14 >> 3) == 3)
      {
        v30 = 0;
        v31 = 0;
        v32 = 0;
        v5->_hasBytesWrittenToDisk = 1;
        while (1)
        {
          v41 = 0;
          v33 = [fromCopy position] + 1;
          if (v33 >= [fromCopy position] && (v34 = objc_msgSend(fromCopy, "position") + 1, v34 <= objc_msgSend(fromCopy, "length")))
          {
            data2 = [fromCopy data];
            [data2 getBytes:&v41 range:{objc_msgSend(fromCopy, "position"), 1}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
          }

          else
          {
            [fromCopy _setError];
          }

          v32 = (((v41 & 0x7F) << v30) | v32);
          if ((v41 & 0x80) == 0)
          {
            break;
          }

          v30 += 7;
          v13 = v31++ >= 9;
          if (v13)
          {
            v22 = 0;
            goto LABEL_55;
          }
        }

        if ([fromCopy hasError])
        {
          v22 = 0;
        }

        else
        {
          v22 = v32;
        }

LABEL_55:
        v36 = 32;
      }

      else
      {
        if (v15 == 2)
        {
          v23 = 0;
          v24 = 0;
          v25 = 0;
          v5->_hasIsLocationAttached = 1;
          while (1)
          {
            v41 = 0;
            v26 = [fromCopy position] + 1;
            if (v26 >= [fromCopy position] && (v27 = objc_msgSend(fromCopy, "position") + 1, v27 <= objc_msgSend(fromCopy, "length")))
            {
              data3 = [fromCopy data];
              [data3 getBytes:&v41 range:{objc_msgSend(fromCopy, "position"), 1}];

              [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
            }

            else
            {
              [fromCopy _setError];
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
              LOBYTE(v29) = 0;
              goto LABEL_51;
            }
          }

          v29 = (v25 != 0) & ~[fromCopy hasError];
LABEL_51:
          v5->_isLocationAttached = v29;
          goto LABEL_61;
        }

        if (v15 != 1)
        {
          if (!PBReaderSkipValueWithTag())
          {
            goto LABEL_63;
          }

          goto LABEL_61;
        }

        v16 = 0;
        v17 = 0;
        v18 = 0;
        v5->_hasSubmapId = 1;
        while (1)
        {
          v41 = 0;
          v19 = [fromCopy position] + 1;
          if (v19 >= [fromCopy position] && (v20 = objc_msgSend(fromCopy, "position") + 1, v20 <= objc_msgSend(fromCopy, "length")))
          {
            data4 = [fromCopy data];
            [data4 getBytes:&v41 range:{objc_msgSend(fromCopy, "position"), 1}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
          }

          else
          {
            [fromCopy _setError];
          }

          v18 = (((v41 & 0x7F) << v16) | v18);
          if ((v41 & 0x80) == 0)
          {
            break;
          }

          v16 += 7;
          v13 = v17++ >= 9;
          if (v13)
          {
            v22 = 0;
            goto LABEL_59;
          }
        }

        if ([fromCopy hasError])
        {
          v22 = 0;
        }

        else
        {
          v22 = v18;
        }

LABEL_59:
        v36 = 24;
      }

      *(&v5->super.super.isa + v36) = v22;
LABEL_61:
      position2 = [fromCopy position];
    }

    while (position2 < [fromCopy length]);
  }

  if ([fromCopy hasError])
  {
LABEL_63:
    v38 = 0;
  }

  else
  {
LABEL_64:
    v38 = v5;
  }

  return v38;
}

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[BMOasisAnalyticsSubmapCreatedType submapId](self, "submapId")}];
  v5 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMOasisAnalyticsSubmapCreatedType isLocationAttached](self, "isLocationAttached")}];
  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[BMOasisAnalyticsSubmapCreatedType bytesWrittenToDisk](self, "bytesWrittenToDisk")}];
  v7 = [v3 initWithFormat:@"BMOasisAnalyticsSubmapCreatedType with submapId: %@, isLocationAttached: %@, bytesWrittenToDisk: %@", v4, v5, v6];

  return v7;
}

- (BMOasisAnalyticsSubmapCreatedType)initWithSubmapId:(id)id isLocationAttached:(id)attached bytesWrittenToDisk:(id)disk
{
  idCopy = id;
  attachedCopy = attached;
  diskCopy = disk;
  v15.receiver = self;
  v15.super_class = BMOasisAnalyticsSubmapCreatedType;
  v11 = [(BMEventBase *)&v15 init];
  if (v11)
  {
    v11->_dataVersion = [objc_opt_class() latestDataVersion];
    if (idCopy)
    {
      v11->_hasSubmapId = 1;
      unsignedLongLongValue = [idCopy unsignedLongLongValue];
    }

    else
    {
      unsignedLongLongValue = 0;
      v11->_hasSubmapId = 0;
    }

    v11->_submapId = unsignedLongLongValue;
    if (attachedCopy)
    {
      v11->_hasIsLocationAttached = 1;
      v11->_isLocationAttached = [attachedCopy BOOLValue];
    }

    else
    {
      v11->_hasIsLocationAttached = 0;
      v11->_isLocationAttached = 0;
    }

    if (diskCopy)
    {
      v11->_hasBytesWrittenToDisk = 1;
      unsignedLongLongValue2 = [diskCopy unsignedLongLongValue];
    }

    else
    {
      unsignedLongLongValue2 = 0;
      v11->_hasBytesWrittenToDisk = 0;
    }

    v11->_bytesWrittenToDisk = unsignedLongLongValue2;
  }

  return v11;
}

+ (id)protoFields
{
  v8[3] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"submapId" number:1 type:5 subMessageClass:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"isLocationAttached" number:2 type:12 subMessageClass:{0, v2}];
  v8[1] = v3;
  v4 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"bytesWrittenToDisk" number:3 type:5 subMessageClass:0];
  v8[2] = v4;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:3];

  v6 = *MEMORY[0x1E69E9840];

  return v5;
}

+ (id)columns
{
  v8[3] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"submapId" dataType:0 requestOnly:0 fieldNumber:1 protoDataType:5 convertedType:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"isLocationAttached" dataType:0 requestOnly:0 fieldNumber:2 protoDataType:12 convertedType:0];
  v4 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"bytesWrittenToDisk" dataType:0 requestOnly:0 fieldNumber:3 protoDataType:5 convertedType:0];
  v8[0] = v2;
  v8[1] = v3;
  v8[2] = v4;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:3];

  v6 = *MEMORY[0x1E69E9840];

  return v5;
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

    v8 = [[BMOasisAnalyticsSubmapCreatedType alloc] initByReadFrom:v7];
    v4 = v8;
    if (v8)
    {
      v8[5] = 0;
    }
  }

  return v4;
}

@end