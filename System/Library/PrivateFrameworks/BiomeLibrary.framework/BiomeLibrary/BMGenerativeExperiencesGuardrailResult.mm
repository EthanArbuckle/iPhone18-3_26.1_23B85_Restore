@interface BMGenerativeExperiencesGuardrailResult
+ (id)columns;
+ (id)eventWithData:(id)data dataVersion:(unsigned int)version;
+ (id)protoFields;
- (BMGenerativeExperiencesGuardrailResult)initWithIdentifier:(id)identifier markedUnsafe:(id)unsafe useCaseIdentifier:(id)caseIdentifier instanceType:(int)type userRequestID:(id)d;
- (BMGenerativeExperiencesGuardrailResult)initWithJSONDictionary:(id)dictionary error:(id *)error;
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (NSUUID)identifier;
- (NSUUID)userRequestID;
- (id)initByReadFrom:(id)from;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)to;
@end

@implementation BMGenerativeExperiencesGuardrailResult

+ (id)columns
{
  v10[5] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"identifier" dataType:6 requestOnly:0 fieldNumber:1 protoDataType:14 convertedType:3];
  v3 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"markedUnsafe" dataType:0 requestOnly:0 fieldNumber:2 protoDataType:12 convertedType:0];
  v4 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"useCaseIdentifier" dataType:2 requestOnly:0 fieldNumber:3 protoDataType:13 convertedType:0];
  v5 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"instanceType" dataType:0 requestOnly:0 fieldNumber:4 protoDataType:4 convertedType:0];
  v6 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"userRequestID" dataType:6 requestOnly:0 fieldNumber:5 protoDataType:14 convertedType:3];
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
    identifier = [(BMGenerativeExperiencesGuardrailResult *)self identifier];
    identifier2 = [v5 identifier];
    v8 = identifier2;
    if (identifier == identifier2)
    {
    }

    else
    {
      identifier3 = [(BMGenerativeExperiencesGuardrailResult *)self identifier];
      identifier4 = [v5 identifier];
      v11 = [identifier3 isEqual:identifier4];

      if (!v11)
      {
        goto LABEL_19;
      }
    }

    if (-[BMGenerativeExperiencesGuardrailResult hasMarkedUnsafe](self, "hasMarkedUnsafe") || [v5 hasMarkedUnsafe])
    {
      if (![(BMGenerativeExperiencesGuardrailResult *)self hasMarkedUnsafe])
      {
        goto LABEL_19;
      }

      if (![v5 hasMarkedUnsafe])
      {
        goto LABEL_19;
      }

      markedUnsafe = [(BMGenerativeExperiencesGuardrailResult *)self markedUnsafe];
      if (markedUnsafe != [v5 markedUnsafe])
      {
        goto LABEL_19;
      }
    }

    useCaseIdentifier = [(BMGenerativeExperiencesGuardrailResult *)self useCaseIdentifier];
    useCaseIdentifier2 = [v5 useCaseIdentifier];
    v16 = useCaseIdentifier2;
    if (useCaseIdentifier == useCaseIdentifier2)
    {
    }

    else
    {
      useCaseIdentifier3 = [(BMGenerativeExperiencesGuardrailResult *)self useCaseIdentifier];
      useCaseIdentifier4 = [v5 useCaseIdentifier];
      v19 = [useCaseIdentifier3 isEqual:useCaseIdentifier4];

      if (!v19)
      {
        goto LABEL_19;
      }
    }

    instanceType = [(BMGenerativeExperiencesGuardrailResult *)self instanceType];
    if (instanceType == [v5 instanceType])
    {
      userRequestID = [(BMGenerativeExperiencesGuardrailResult *)self userRequestID];
      userRequestID2 = [v5 userRequestID];
      if (userRequestID == userRequestID2)
      {
        v12 = 1;
      }

      else
      {
        userRequestID3 = [(BMGenerativeExperiencesGuardrailResult *)self userRequestID];
        userRequestID4 = [v5 userRequestID];
        v12 = [userRequestID3 isEqual:userRequestID4];
      }

      goto LABEL_20;
    }

LABEL_19:
    v12 = 0;
LABEL_20:

    goto LABEL_21;
  }

  v12 = 0;
LABEL_21:

  return v12;
}

- (NSUUID)userRequestID
{
  raw_userRequestID = self->_raw_userRequestID;
  if (raw_userRequestID)
  {
    v4 = [MEMORY[0x1E698F280] convertValue:raw_userRequestID toType:3];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (NSUUID)identifier
{
  raw_identifier = self->_raw_identifier;
  if (raw_identifier)
  {
    v4 = [MEMORY[0x1E698F280] convertValue:raw_identifier toType:3];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)jsonDictionary
{
  v25[5] = *MEMORY[0x1E69E9840];
  identifier = [(BMGenerativeExperiencesGuardrailResult *)self identifier];
  uUIDString = [identifier UUIDString];

  if ([(BMGenerativeExperiencesGuardrailResult *)self hasMarkedUnsafe])
  {
    v5 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMGenerativeExperiencesGuardrailResult markedUnsafe](self, "markedUnsafe")}];
  }

  else
  {
    v5 = 0;
  }

  useCaseIdentifier = [(BMGenerativeExperiencesGuardrailResult *)self useCaseIdentifier];
  v7 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMGenerativeExperiencesGuardrailResult instanceType](self, "instanceType")}];
  userRequestID = [(BMGenerativeExperiencesGuardrailResult *)self userRequestID];
  uUIDString2 = [userRequestID UUIDString];

  v20 = @"identifier";
  null = uUIDString;
  if (!uUIDString)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v18 = null;
  v25[0] = null;
  v21 = @"markedUnsafe";
  null2 = v5;
  if (!v5)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v25[1] = null2;
  v22 = @"useCaseIdentifier";
  null3 = useCaseIdentifier;
  if (!useCaseIdentifier)
  {
    null3 = [MEMORY[0x1E695DFB0] null];
  }

  v25[2] = null3;
  v23 = @"instanceType";
  null4 = v7;
  if (!v7)
  {
    null4 = [MEMORY[0x1E695DFB0] null];
  }

  v25[3] = null4;
  v24 = @"userRequestID";
  null5 = uUIDString2;
  if (!uUIDString2)
  {
    null5 = [MEMORY[0x1E695DFB0] null];
  }

  v25[4] = null5;
  v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v25 forKeys:&v20 count:{5, v18}];
  if (uUIDString2)
  {
    if (v7)
    {
      goto LABEL_16;
    }
  }

  else
  {

    if (v7)
    {
LABEL_16:
      if (useCaseIdentifier)
      {
        goto LABEL_17;
      }

      goto LABEL_24;
    }
  }

  if (useCaseIdentifier)
  {
LABEL_17:
    if (v5)
    {
      goto LABEL_18;
    }

LABEL_25:

    if (uUIDString)
    {
      goto LABEL_19;
    }

    goto LABEL_26;
  }

LABEL_24:

  if (!v5)
  {
    goto LABEL_25;
  }

LABEL_18:
  if (uUIDString)
  {
    goto LABEL_19;
  }

LABEL_26:

LABEL_19:
  v16 = *MEMORY[0x1E69E9840];

  return v15;
}

- (BMGenerativeExperiencesGuardrailResult)initWithJSONDictionary:(id)dictionary error:(id *)error
{
  v64[1] = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v7 = [dictionaryCopy objectForKeyedSubscript:@"identifier"];
  if (!v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v8 = 0;
    goto LABEL_4;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = v7;
    v13 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:v8];
    if (!v13)
    {
      if (error)
      {
        v30 = objc_alloc(MEMORY[0x1E696ABC0]);
        v31 = *MEMORY[0x1E698F240];
        v63 = *MEMORY[0x1E696A578];
        v50 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"-initWithUUIDString: for %@ returned nil", @"identifier"];
        v64[0] = v50;
        v32 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v64 forKeys:&v63 count:1];
        *error = [v30 initWithDomain:v31 code:2 userInfo:v32];

        v18 = 0;
      }

      else
      {
        v18 = 0;
      }

      goto LABEL_56;
    }

    v14 = v13;

    v8 = v14;
LABEL_4:
    v9 = [dictionaryCopy objectForKeyedSubscript:@"markedUnsafe"];
    if (v9 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!error)
        {
          v48 = 0;
          v18 = 0;
          goto LABEL_54;
        }

        v19 = objc_alloc(MEMORY[0x1E696ABC0]);
        v20 = *MEMORY[0x1E698F240];
        v59 = *MEMORY[0x1E696A578];
        v46 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"markedUnsafe"];
        v60 = v46;
        [MEMORY[0x1E695DF20] dictionaryWithObjects:&v60 forKeys:&v59 count:1];
        v10 = v21 = error;
        v48 = 0;
        v18 = 0;
        *v21 = [v19 initWithDomain:v20 code:2 userInfo:v10];
        goto LABEL_53;
      }

      errorCopy2 = error;
      v48 = v9;
    }

    else
    {
      errorCopy2 = error;
      v48 = 0;
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"useCaseIdentifier"];
    v45 = v8;
    selfCopy = self;
    if (!v10 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v46 = 0;
LABEL_10:
      v11 = [dictionaryCopy objectForKeyedSubscript:@"instanceType"];
      if (v11 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v15 = v11;
        }

        else
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            if (!errorCopy2)
            {
              v12 = 0;
              v18 = 0;
              goto LABEL_52;
            }

            v33 = objc_alloc(MEMORY[0x1E696ABC0]);
            v42 = *MEMORY[0x1E698F240];
            v55 = *MEMORY[0x1E696A578];
            v24 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (corresponding to enum value), or NSString (string version of enum)", objc_opt_class(), @"instanceType"];
            v56 = v24;
            v34 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v56 forKeys:&v55 count:1];
            *errorCopy2 = [v33 initWithDomain:v42 code:2 userInfo:v34];

            v12 = 0;
            goto LABEL_46;
          }

          v15 = [MEMORY[0x1E696AD98] numberWithInt:BMGenerativeExperiencesGuardrailResultInstanceTypeFromString(v11)];
        }

        v12 = v15;
      }

      else
      {
        v12 = 0;
      }

      v24 = [dictionaryCopy objectForKeyedSubscript:@"userRequestID"];
      if (!v24 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
      {
        v25 = 0;
LABEL_34:
        v18 = -[BMGenerativeExperiencesGuardrailResult initWithIdentifier:markedUnsafe:useCaseIdentifier:instanceType:userRequestID:](selfCopy, "initWithIdentifier:markedUnsafe:useCaseIdentifier:instanceType:userRequestID:", v45, v48, v46, [v12 intValue], v25);

        selfCopy = v18;
LABEL_51:

        goto LABEL_52;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v26 = v24;
        v27 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:v26];
        if (!v27)
        {
          if (errorCopy2)
          {
            v43 = objc_alloc(MEMORY[0x1E696ABC0]);
            v40 = *MEMORY[0x1E698F240];
            v53 = *MEMORY[0x1E696A578];
            v35 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"-initWithUUIDString: for %@ returned nil", @"userRequestID"];
            v54 = v35;
            v36 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v54 forKeys:&v53 count:1];
            *errorCopy2 = [v43 initWithDomain:v40 code:2 userInfo:v36];
          }

          v18 = 0;
          v24 = v26;
          goto LABEL_51;
        }

        v25 = v27;

        goto LABEL_34;
      }

      if (errorCopy2)
      {
        v41 = objc_alloc(MEMORY[0x1E696ABC0]);
        v39 = *MEMORY[0x1E698F240];
        v51 = *MEMORY[0x1E696A578];
        v28 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"userRequestID"];
        v52 = v28;
        v29 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v52 forKeys:&v51 count:1];
        *errorCopy2 = [v41 initWithDomain:v39 code:2 userInfo:v29];
      }

LABEL_46:
      v18 = 0;
      goto LABEL_51;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v46 = v10;
      goto LABEL_10;
    }

    if (errorCopy2)
    {
      v22 = objc_alloc(MEMORY[0x1E696ABC0]);
      v23 = *MEMORY[0x1E698F240];
      v57 = *MEMORY[0x1E696A578];
      v12 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"useCaseIdentifier"];
      v58 = v12;
      v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v58 forKeys:&v57 count:1];
      v46 = 0;
      v18 = 0;
      *errorCopy2 = [v22 initWithDomain:v23 code:2 userInfo:v11];
LABEL_52:

      self = selfCopy;
      v8 = v45;
      goto LABEL_53;
    }

    v46 = 0;
    v18 = 0;
LABEL_53:

LABEL_54:
    goto LABEL_56;
  }

  if (error)
  {
    v16 = objc_alloc(MEMORY[0x1E696ABC0]);
    v17 = *MEMORY[0x1E698F240];
    v61 = *MEMORY[0x1E696A578];
    v8 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"identifier"];
    v62 = v8;
    v49 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v62 forKeys:&v61 count:1];
    v18 = 0;
    *error = [v16 initWithDomain:v17 code:2 userInfo:?];

LABEL_56:
    goto LABEL_57;
  }

  v18 = 0;
LABEL_57:

  v37 = *MEMORY[0x1E69E9840];
  return v18;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMGenerativeExperiencesGuardrailResult *)self writeTo:v3];
  immutableData = [v3 immutableData];

  return immutableData;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  if (self->_raw_identifier)
  {
    PBDataWriterWriteDataField();
  }

  if (self->_hasMarkedUnsafe)
  {
    markedUnsafe = self->_markedUnsafe;
    PBDataWriterWriteBOOLField();
  }

  if (self->_useCaseIdentifier)
  {
    PBDataWriterWriteStringField();
  }

  instanceType = self->_instanceType;
  PBDataWriterWriteUint32Field();
  if (self->_raw_userRequestID)
  {
    PBDataWriterWriteDataField();
  }
}

- (id)initByReadFrom:(id)from
{
  fromCopy = from;
  v37.receiver = self;
  v37.super_class = BMGenerativeExperiencesGuardrailResult;
  v5 = [(BMEventBase *)&v37 init];
  if (!v5)
  {
    goto LABEL_60;
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
        v38 = 0;
        v10 = [fromCopy position] + 1;
        if (v10 >= [fromCopy position] && (v11 = objc_msgSend(fromCopy, "position") + 1, v11 <= objc_msgSend(fromCopy, "length")))
        {
          data = [fromCopy data];
          [data getBytes:&v38 range:{objc_msgSend(fromCopy, "position"), 1}];

          [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
        }

        else
        {
          [fromCopy _setError];
        }

        v9 |= (v38 & 0x7F) << v7;
        if ((v38 & 0x80) == 0)
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
          v32 = PBReaderReadData();
          if ([v32 length] != 16)
          {
LABEL_62:

            goto LABEL_59;
          }

          v33 = 16;
LABEL_47:
          useCaseIdentifier = *(&v5->super.super.isa + v33);
          *(&v5->super.super.isa + v33) = v32;
LABEL_48:

          goto LABEL_57;
        }

        if (v15 != 2)
        {
LABEL_49:
          if ((PBReaderSkipValueWithTag() & 1) == 0)
          {
            goto LABEL_59;
          }

          goto LABEL_57;
        }

        v23 = 0;
        v24 = 0;
        v25 = 0;
        v5->_hasMarkedUnsafe = 1;
        while (1)
        {
          v38 = 0;
          v26 = [fromCopy position] + 1;
          if (v26 >= [fromCopy position] && (v27 = objc_msgSend(fromCopy, "position") + 1, v27 <= objc_msgSend(fromCopy, "length")))
          {
            data2 = [fromCopy data];
            [data2 getBytes:&v38 range:{objc_msgSend(fromCopy, "position"), 1}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
          }

          else
          {
            [fromCopy _setError];
          }

          v25 |= (v38 & 0x7F) << v23;
          if ((v38 & 0x80) == 0)
          {
            break;
          }

          v23 += 7;
          v13 = v24++ >= 9;
          if (v13)
          {
            LOBYTE(v29) = 0;
            goto LABEL_56;
          }
        }

        v29 = (v25 != 0) & ~[fromCopy hasError];
LABEL_56:
        v5->_markedUnsafe = v29;
      }

      else
      {
        if (v15 == 3)
        {
          v30 = PBReaderReadString();
          useCaseIdentifier = v5->_useCaseIdentifier;
          v5->_useCaseIdentifier = v30;
          goto LABEL_48;
        }

        if (v15 == 5)
        {
          v32 = PBReaderReadData();
          if ([v32 length] != 16)
          {
            goto LABEL_62;
          }

          v33 = 24;
          goto LABEL_47;
        }

        if (v15 != 4)
        {
          goto LABEL_49;
        }

        v16 = 0;
        v17 = 0;
        v18 = 0;
        while (1)
        {
          v38 = 0;
          v19 = [fromCopy position] + 1;
          if (v19 >= [fromCopy position] && (v20 = objc_msgSend(fromCopy, "position") + 1, v20 <= objc_msgSend(fromCopy, "length")))
          {
            data3 = [fromCopy data];
            [data3 getBytes:&v38 range:{objc_msgSend(fromCopy, "position"), 1}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
          }

          else
          {
            [fromCopy _setError];
          }

          v18 |= (v38 & 0x7F) << v16;
          if ((v38 & 0x80) == 0)
          {
            break;
          }

          v16 += 7;
          if (v17++ > 8)
          {
            goto LABEL_53;
          }
        }

        if (([fromCopy hasError] & 1) != 0 || v18 > 2)
        {
LABEL_53:
          LODWORD(v18) = 0;
        }

        v5->_instanceType = v18;
      }

LABEL_57:
      position2 = [fromCopy position];
    }

    while (position2 < [fromCopy length]);
  }

  if ([fromCopy hasError])
  {
LABEL_59:
    v35 = 0;
  }

  else
  {
LABEL_60:
    v35 = v5;
  }

  return v35;
}

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  identifier = [(BMGenerativeExperiencesGuardrailResult *)self identifier];
  v5 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMGenerativeExperiencesGuardrailResult markedUnsafe](self, "markedUnsafe")}];
  useCaseIdentifier = [(BMGenerativeExperiencesGuardrailResult *)self useCaseIdentifier];
  v7 = BMGenerativeExperiencesGuardrailResultInstanceTypeAsString([(BMGenerativeExperiencesGuardrailResult *)self instanceType]);
  userRequestID = [(BMGenerativeExperiencesGuardrailResult *)self userRequestID];
  v9 = [v3 initWithFormat:@"BMGenerativeExperiencesGuardrailResult with identifier: %@, markedUnsafe: %@, useCaseIdentifier: %@, instanceType: %@, userRequestID: %@", identifier, v5, useCaseIdentifier, v7, userRequestID];

  return v9;
}

- (BMGenerativeExperiencesGuardrailResult)initWithIdentifier:(id)identifier markedUnsafe:(id)unsafe useCaseIdentifier:(id)caseIdentifier instanceType:(int)type userRequestID:(id)d
{
  v26 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  unsafeCopy = unsafe;
  caseIdentifierCopy = caseIdentifier;
  dCopy = d;
  v23.receiver = self;
  v23.super_class = BMGenerativeExperiencesGuardrailResult;
  v16 = [(BMEventBase *)&v23 init];
  if (v16)
  {
    v16->_dataVersion = [objc_opt_class() latestDataVersion];
    if (identifierCopy)
    {
      v24 = 0;
      v25 = 0;
      [identifierCopy getUUIDBytes:&v24];
      v17 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytes:&v24 length:16];
      raw_identifier = v16->_raw_identifier;
      v16->_raw_identifier = v17;
    }

    else
    {
      raw_identifier = v16->_raw_identifier;
      v16->_raw_identifier = 0;
    }

    if (unsafeCopy)
    {
      v16->_hasMarkedUnsafe = 1;
      v16->_markedUnsafe = [unsafeCopy BOOLValue];
    }

    else
    {
      v16->_hasMarkedUnsafe = 0;
      v16->_markedUnsafe = 0;
    }

    objc_storeStrong(&v16->_useCaseIdentifier, caseIdentifier);
    v16->_instanceType = type;
    if (dCopy)
    {
      v24 = 0;
      v25 = 0;
      [dCopy getUUIDBytes:&v24];
      v19 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytes:&v24 length:16];
      raw_userRequestID = v16->_raw_userRequestID;
      v16->_raw_userRequestID = v19;
    }

    else
    {
      raw_userRequestID = v16->_raw_userRequestID;
      v16->_raw_userRequestID = 0;
    }
  }

  v21 = *MEMORY[0x1E69E9840];
  return v16;
}

+ (id)protoFields
{
  v10[5] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"identifier" number:1 type:14 subMessageClass:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"markedUnsafe" number:2 type:12 subMessageClass:{0, v2}];
  v10[1] = v3;
  v4 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"useCaseIdentifier" number:3 type:13 subMessageClass:0];
  v10[2] = v4;
  v5 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"instanceType" number:4 type:4 subMessageClass:0];
  v10[3] = v5;
  v6 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"userRequestID" number:5 type:14 subMessageClass:0];
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

    v8 = [[BMGenerativeExperiencesGuardrailResult alloc] initByReadFrom:v7];
    v4 = v8;
    if (v8)
    {
      v8[9] = 0;
    }
  }

  return v4;
}

@end