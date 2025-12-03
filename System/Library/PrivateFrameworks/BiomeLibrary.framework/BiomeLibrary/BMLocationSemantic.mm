@interface BMLocationSemantic
+ (id)columns;
+ (id)eventWithData:(id)data dataVersion:(unsigned int)version;
+ (id)protoFields;
- (BMLocationSemantic)initWithJSONDictionary:(id)dictionary error:(id *)error;
- (BMLocationSemantic)initWithStarting:(id)starting userSpecificPlaceType:(int)type placeType:(int)placeType loiIdentifier:(id)identifier;
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (NSUUID)loiIdentifier;
- (id)initByReadFrom:(id)from;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)to;
@end

@implementation BMLocationSemantic

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    if ((!-[BMLocationSemantic hasStarting](self, "hasStarting") && ![v5 hasStarting] || -[BMLocationSemantic hasStarting](self, "hasStarting") && objc_msgSend(v5, "hasStarting") && (v6 = -[BMLocationSemantic starting](self, "starting"), v6 == objc_msgSend(v5, "starting"))) && (v7 = -[BMLocationSemantic userSpecificPlaceType](self, "userSpecificPlaceType"), v7 == objc_msgSend(v5, "userSpecificPlaceType")) && (v8 = -[BMLocationSemantic placeType](self, "placeType"), v8 == objc_msgSend(v5, "placeType")))
    {
      loiIdentifier = [(BMLocationSemantic *)self loiIdentifier];
      loiIdentifier2 = [v5 loiIdentifier];
      if (loiIdentifier == loiIdentifier2)
      {
        v13 = 1;
      }

      else
      {
        loiIdentifier3 = [(BMLocationSemantic *)self loiIdentifier];
        loiIdentifier4 = [v5 loiIdentifier];
        v13 = [loiIdentifier3 isEqual:loiIdentifier4];
      }
    }

    else
    {
      v13 = 0;
    }
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (NSUUID)loiIdentifier
{
  raw_loiIdentifier = self->_raw_loiIdentifier;
  if (raw_loiIdentifier)
  {
    v4 = [MEMORY[0x1E698F280] convertValue:raw_loiIdentifier toType:3];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)jsonDictionary
{
  v16[4] = *MEMORY[0x1E69E9840];
  if ([(BMLocationSemantic *)self hasStarting])
  {
    v3 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMLocationSemantic starting](self, "starting")}];
  }

  else
  {
    v3 = 0;
  }

  v4 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMLocationSemantic userSpecificPlaceType](self, "userSpecificPlaceType")}];
  v5 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMLocationSemantic placeType](self, "placeType")}];
  loiIdentifier = [(BMLocationSemantic *)self loiIdentifier];
  uUIDString = [loiIdentifier UUIDString];

  v15[0] = @"starting";
  null = v3;
  if (!v3)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v16[0] = null;
  v15[1] = @"userSpecificPlaceType";
  null2 = v4;
  if (!v4)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v16[1] = null2;
  v15[2] = @"placeType";
  null3 = v5;
  if (!v5)
  {
    null3 = [MEMORY[0x1E695DFB0] null];
  }

  v16[2] = null3;
  v15[3] = @"loiIdentifier";
  null4 = uUIDString;
  if (!uUIDString)
  {
    null4 = [MEMORY[0x1E695DFB0] null];
  }

  v16[3] = null4;
  v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:v15 count:4];
  if (uUIDString)
  {
    if (v5)
    {
      goto LABEL_14;
    }
  }

  else
  {

    if (v5)
    {
LABEL_14:
      if (v4)
      {
        goto LABEL_15;
      }

LABEL_21:

      if (v3)
      {
        goto LABEL_16;
      }

      goto LABEL_22;
    }
  }

  if (!v4)
  {
    goto LABEL_21;
  }

LABEL_15:
  if (v3)
  {
    goto LABEL_16;
  }

LABEL_22:

LABEL_16:
  v13 = *MEMORY[0x1E69E9840];

  return v12;
}

- (BMLocationSemantic)initWithJSONDictionary:(id)dictionary error:(id *)error
{
  v51[1] = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v7 = [dictionaryCopy objectForKeyedSubscript:@"starting"];
  if (!v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v41 = 0;
LABEL_4:
    v8 = [dictionaryCopy objectForKeyedSubscript:@"userSpecificPlaceType"];
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
          if (!error)
          {
            v13 = 0;
            selfCopy = 0;
            goto LABEL_44;
          }

          v25 = objc_alloc(MEMORY[0x1E696ABC0]);
          v26 = *MEMORY[0x1E698F240];
          v48 = *MEMORY[0x1E696A578];
          v17 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (corresponding to enum value), or NSString (string version of enum)", objc_opt_class(), @"userSpecificPlaceType"];
          v49 = v17;
          v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v49 forKeys:&v48 count:1];
          v27 = [v25 initWithDomain:v26 code:2 userInfo:v15];
          v13 = 0;
          selfCopy = 0;
          *error = v27;
          goto LABEL_43;
        }

        v10 = [MEMORY[0x1E696AD98] numberWithInt:BMLocationSemanticUserSpecificPlaceTypeFromString(v8)];
      }

      v9 = v10;
    }

    else
    {
      v9 = 0;
    }

    v15 = [dictionaryCopy objectForKeyedSubscript:@"placeType"];
    v40 = v9;
    if (v15 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      errorCopy2 = error;
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v18 = v15;
      }

      else
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          if (!error)
          {
            v17 = 0;
            selfCopy = 0;
            v13 = v40;
            goto LABEL_43;
          }

          v28 = objc_alloc(MEMORY[0x1E696ABC0]);
          v29 = *MEMORY[0x1E698F240];
          v46 = *MEMORY[0x1E696A578];
          v19 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (corresponding to enum value), or NSString (string version of enum)", objc_opt_class(), @"placeType"];
          v47 = v19;
          v30 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v47 forKeys:&v46 count:1];
          *errorCopy2 = [v28 initWithDomain:v29 code:2 userInfo:v30];

          v17 = 0;
          goto LABEL_37;
        }

        v18 = [MEMORY[0x1E696AD98] numberWithInt:BMLocationSemanticPlaceTypeFromString(v15)];
      }

      v17 = v18;
    }

    else
    {
      errorCopy2 = error;
      v17 = 0;
    }

    v19 = [dictionaryCopy objectForKeyedSubscript:@"loiIdentifier"];
    if (!v19 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v20 = 0;
LABEL_27:
      v13 = v40;
      self = -[BMLocationSemantic initWithStarting:userSpecificPlaceType:placeType:loiIdentifier:](self, "initWithStarting:userSpecificPlaceType:placeType:loiIdentifier:", v41, [v40 intValue], objc_msgSend(v17, "intValue"), v20);

      selfCopy = self;
LABEL_42:

LABEL_43:
      goto LABEL_44;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      selfCopy2 = self;
      v21 = v19;
      v22 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:v21];
      if (!v22)
      {
        if (errorCopy2)
        {
          v37 = objc_alloc(MEMORY[0x1E696ABC0]);
          v31 = *MEMORY[0x1E698F240];
          v44 = *MEMORY[0x1E696A578];
          v32 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"-initWithUUIDString: for %@ returned nil", @"loiIdentifier"];
          v45 = v32;
          v33 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v45 forKeys:&v44 count:1];
          *errorCopy2 = [v37 initWithDomain:v31 code:2 userInfo:v33];
        }

        selfCopy = 0;
        v19 = v21;
        self = selfCopy2;
        v13 = v40;
        goto LABEL_42;
      }

      v20 = v22;

      self = selfCopy2;
      goto LABEL_27;
    }

    if (errorCopy2)
    {
      v39 = objc_alloc(MEMORY[0x1E696ABC0]);
      v36 = *MEMORY[0x1E698F240];
      v42 = *MEMORY[0x1E696A578];
      v23 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"loiIdentifier"];
      v43 = v23;
      v24 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v43 forKeys:&v42 count:1];
      *errorCopy2 = [v39 initWithDomain:v36 code:2 userInfo:v24];
    }

LABEL_37:
    selfCopy = 0;
    v13 = v40;
    goto LABEL_42;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v41 = v7;
    goto LABEL_4;
  }

  if (error)
  {
    v11 = objc_alloc(MEMORY[0x1E696ABC0]);
    v12 = *MEMORY[0x1E698F240];
    v50 = *MEMORY[0x1E696A578];
    v13 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"starting"];
    v51[0] = v13;
    v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v51 forKeys:&v50 count:1];
    v41 = 0;
    selfCopy = 0;
    *error = [v11 initWithDomain:v12 code:2 userInfo:v8];
LABEL_44:

    goto LABEL_45;
  }

  v41 = 0;
  selfCopy = 0;
LABEL_45:

  v34 = *MEMORY[0x1E69E9840];
  return selfCopy;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMLocationSemantic *)self writeTo:v3];
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

  userSpecificPlaceType = self->_userSpecificPlaceType;
  PBDataWriterWriteUint32Field();
  placeType = self->_placeType;
  PBDataWriterWriteUint32Field();
  if (self->_raw_loiIdentifier)
  {
    PBDataWriterWriteStringField();
  }
}

- (id)initByReadFrom:(id)from
{
  fromCopy = from;
  v41.receiver = self;
  v41.super_class = BMLocationSemantic;
  v5 = [(BMEventBase *)&v41 init];
  if (!v5)
  {
    goto LABEL_67;
  }

  position = [fromCopy position];
  if (position < [fromCopy length])
  {
    while (1)
    {
      if ([fromCopy hasError])
      {
        goto LABEL_65;
      }

      v7 = 0;
      v8 = 0;
      v9 = 0;
      while (1)
      {
        v42 = 0;
        v10 = [fromCopy position] + 1;
        if (v10 >= [fromCopy position] && (v11 = objc_msgSend(fromCopy, "position") + 1, v11 <= objc_msgSend(fromCopy, "length")))
        {
          data = [fromCopy data];
          [data getBytes:&v42 range:{objc_msgSend(fromCopy, "position"), 1}];

          [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
        }

        else
        {
          [fromCopy _setError];
        }

        v9 |= (v42 & 0x7F) << v7;
        if ((v42 & 0x80) == 0)
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
        goto LABEL_65;
      }

      v15 = v14 >> 3;
      if ((v14 >> 3) <= 2)
      {
        break;
      }

      if (v15 != 4)
      {
        if (v15 != 3)
        {
LABEL_41:
          if (!PBReaderSkipValueWithTag())
          {
            goto LABEL_66;
          }

          goto LABEL_64;
        }

        v23 = 0;
        v24 = 0;
        v18 = 0;
        while (1)
        {
          v42 = 0;
          v25 = [fromCopy position] + 1;
          if (v25 >= [fromCopy position] && (v26 = objc_msgSend(fromCopy, "position") + 1, v26 <= objc_msgSend(fromCopy, "length")))
          {
            data2 = [fromCopy data];
            [data2 getBytes:&v42 range:{objc_msgSend(fromCopy, "position"), 1}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
          }

          else
          {
            [fromCopy _setError];
          }

          v18 |= (v42 & 0x7F) << v23;
          if ((v42 & 0x80) == 0)
          {
            break;
          }

          v23 += 7;
          v22 = v24++ > 8;
          if (v22)
          {
            goto LABEL_59;
          }
        }

        if (([fromCopy hasError] & 1) != 0 || v18 > 3)
        {
LABEL_59:
          LODWORD(v18) = 0;
        }

        v37 = 36;
LABEL_61:
        *(&v5->super.super.isa + v37) = v18;
        goto LABEL_64;
      }

      v35 = PBReaderReadString();
      raw_loiIdentifier = v5->_raw_loiIdentifier;
      v5->_raw_loiIdentifier = v35;

LABEL_64:
      position2 = [fromCopy position];
      if (position2 >= [fromCopy length])
      {
        goto LABEL_65;
      }
    }

    if (v15 == 1)
    {
      v28 = 0;
      v29 = 0;
      v30 = 0;
      v5->_hasStarting = 1;
      while (1)
      {
        v42 = 0;
        v31 = [fromCopy position] + 1;
        if (v31 >= [fromCopy position] && (v32 = objc_msgSend(fromCopy, "position") + 1, v32 <= objc_msgSend(fromCopy, "length")))
        {
          data3 = [fromCopy data];
          [data3 getBytes:&v42 range:{objc_msgSend(fromCopy, "position"), 1}];

          [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
        }

        else
        {
          [fromCopy _setError];
        }

        v30 |= (v42 & 0x7F) << v28;
        if ((v42 & 0x80) == 0)
        {
          break;
        }

        v28 += 7;
        v13 = v29++ >= 9;
        if (v13)
        {
          LOBYTE(v34) = 0;
          goto LABEL_63;
        }
      }

      v34 = (v30 != 0) & ~[fromCopy hasError];
LABEL_63:
      v5->_starting = v34;
      goto LABEL_64;
    }

    if (v15 != 2)
    {
      goto LABEL_41;
    }

    v16 = 0;
    v17 = 0;
    v18 = 0;
    while (1)
    {
      v42 = 0;
      v19 = [fromCopy position] + 1;
      if (v19 >= [fromCopy position] && (v20 = objc_msgSend(fromCopy, "position") + 1, v20 <= objc_msgSend(fromCopy, "length")))
      {
        data4 = [fromCopy data];
        [data4 getBytes:&v42 range:{objc_msgSend(fromCopy, "position"), 1}];

        [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
      }

      else
      {
        [fromCopy _setError];
      }

      v18 |= (v42 & 0x7F) << v16;
      if ((v42 & 0x80) == 0)
      {
        break;
      }

      v16 += 7;
      v22 = v17++ > 8;
      if (v22)
      {
        goto LABEL_55;
      }
    }

    if (([fromCopy hasError] & 1) != 0 || v18 > 4)
    {
LABEL_55:
      LODWORD(v18) = 0;
    }

    v37 = 32;
    goto LABEL_61;
  }

LABEL_65:
  if ([fromCopy hasError])
  {
LABEL_66:
    v39 = 0;
  }

  else
  {
LABEL_67:
    v39 = v5;
  }

  return v39;
}

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMLocationSemantic starting](self, "starting")}];
  v5 = BMLocationSemanticUserSpecificPlaceTypeAsString([(BMLocationSemantic *)self userSpecificPlaceType]);
  v6 = BMLocationSemanticPlaceTypeAsString([(BMLocationSemantic *)self placeType]);
  loiIdentifier = [(BMLocationSemantic *)self loiIdentifier];
  v8 = [v3 initWithFormat:@"BMLocationSemantic with starting: %@, userSpecificPlaceType: %@, placeType: %@, loiIdentifier: %@", v4, v5, v6, loiIdentifier];

  return v8;
}

- (BMLocationSemantic)initWithStarting:(id)starting userSpecificPlaceType:(int)type placeType:(int)placeType loiIdentifier:(id)identifier
{
  startingCopy = starting;
  identifierCopy = identifier;
  v16.receiver = self;
  v16.super_class = BMLocationSemantic;
  v12 = [(BMEventBase *)&v16 init];
  if (v12)
  {
    v12->_dataVersion = [objc_opt_class() latestDataVersion];
    if (startingCopy)
    {
      v12->_hasStarting = 1;
      v12->_starting = [startingCopy BOOLValue];
    }

    else
    {
      v12->_hasStarting = 0;
      v12->_starting = 0;
    }

    v12->_userSpecificPlaceType = type;
    v12->_placeType = placeType;
    if (identifierCopy)
    {
      uUIDString = [identifierCopy UUIDString];
    }

    else
    {
      uUIDString = 0;
    }

    raw_loiIdentifier = v12->_raw_loiIdentifier;
    v12->_raw_loiIdentifier = uUIDString;
  }

  return v12;
}

+ (id)protoFields
{
  v9[4] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"starting" number:1 type:12 subMessageClass:0];
  v9[0] = v2;
  v3 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"userSpecificPlaceType" number:2 type:4 subMessageClass:0];
  v9[1] = v3;
  v4 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"placeType" number:3 type:4 subMessageClass:0];
  v9[2] = v4;
  v5 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"loiIdentifier" number:4 type:13 subMessageClass:0];
  v9[3] = v5;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:4];

  v7 = *MEMORY[0x1E69E9840];

  return v6;
}

+ (id)columns
{
  v9[4] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"starting" dataType:0 requestOnly:0 fieldNumber:1 protoDataType:12 convertedType:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"userSpecificPlaceType" dataType:0 requestOnly:0 fieldNumber:2 protoDataType:4 convertedType:0];
  v4 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"placeType" dataType:0 requestOnly:0 fieldNumber:3 protoDataType:4 convertedType:0];
  v5 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"loiIdentifier" dataType:6 requestOnly:0 fieldNumber:4 protoDataType:13 convertedType:3];
  v9[0] = v2;
  v9[1] = v3;
  v9[2] = v4;
  v9[3] = v5;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:4];

  v7 = *MEMORY[0x1E69E9840];

  return v6;
}

+ (id)eventWithData:(id)data dataVersion:(unsigned int)version
{
  dataCopy = data;
  if (version)
  {
    if (version != 1)
    {
      v9 = 0;
      goto LABEL_9;
    }

    v6 = [objc_alloc(MEMORY[0x1E69C65B8]) initWithData:dataCopy];
    v7 = BMLocationSemantic;
  }

  else
  {
    v6 = [objc_alloc(MEMORY[0x1E69C65B8]) initWithData:dataCopy];
    v7 = BMLocationSemantic_v0;
  }

  v8 = [[v7 alloc] initByReadFrom:v6];
  v9 = v8;
  if (v8)
  {
    *(v8 + 28) = version;
  }

LABEL_9:

  return v9;
}

@end