@interface BMAppDocumentInteraction
+ (id)columns;
+ (id)eventWithData:(id)data dataVersion:(unsigned int)version;
+ (id)protoFields;
- (BMAppDocumentInteraction)initWithJSONDictionary:(id)dictionary error:(id *)error;
- (BMAppDocumentInteraction)initWithType:(int)type fileIdentity:(id)identity contentTypeIdentifier:(id)identifier appIdentity:(id)appIdentity remoteUser:(id)user;
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (id)initByReadFrom:(id)from;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)to;
@end

@implementation BMAppDocumentInteraction

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    type = [(BMAppDocumentInteraction *)self type];
    if (type == [v5 type])
    {
      fileIdentity = [(BMAppDocumentInteraction *)self fileIdentity];
      fileIdentity2 = [v5 fileIdentity];
      v9 = fileIdentity2;
      if (fileIdentity == fileIdentity2)
      {
      }

      else
      {
        fileIdentity3 = [(BMAppDocumentInteraction *)self fileIdentity];
        fileIdentity4 = [v5 fileIdentity];
        v12 = [fileIdentity3 isEqual:fileIdentity4];

        if (!v12)
        {
          goto LABEL_14;
        }
      }

      contentTypeIdentifier = [(BMAppDocumentInteraction *)self contentTypeIdentifier];
      contentTypeIdentifier2 = [v5 contentTypeIdentifier];
      v16 = contentTypeIdentifier2;
      if (contentTypeIdentifier == contentTypeIdentifier2)
      {
      }

      else
      {
        contentTypeIdentifier3 = [(BMAppDocumentInteraction *)self contentTypeIdentifier];
        contentTypeIdentifier4 = [v5 contentTypeIdentifier];
        v19 = [contentTypeIdentifier3 isEqual:contentTypeIdentifier4];

        if (!v19)
        {
          goto LABEL_14;
        }
      }

      appIdentity = [(BMAppDocumentInteraction *)self appIdentity];
      appIdentity2 = [v5 appIdentity];
      v22 = appIdentity2;
      if (appIdentity == appIdentity2)
      {
      }

      else
      {
        appIdentity3 = [(BMAppDocumentInteraction *)self appIdentity];
        appIdentity4 = [v5 appIdentity];
        v25 = [appIdentity3 isEqual:appIdentity4];

        if (!v25)
        {
          goto LABEL_14;
        }
      }

      remoteUser = [(BMAppDocumentInteraction *)self remoteUser];
      remoteUser2 = [v5 remoteUser];
      if (remoteUser == remoteUser2)
      {
        v13 = 1;
      }

      else
      {
        remoteUser3 = [(BMAppDocumentInteraction *)self remoteUser];
        remoteUser4 = [v5 remoteUser];
        v13 = [remoteUser3 isEqual:remoteUser4];
      }

      goto LABEL_15;
    }

LABEL_14:
    v13 = 0;
LABEL_15:

    goto LABEL_16;
  }

  v13 = 0;
LABEL_16:

  return v13;
}

- (id)jsonDictionary
{
  v26[5] = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMAppDocumentInteraction type](self, "type")}];
  fileIdentity = [(BMAppDocumentInteraction *)self fileIdentity];
  jsonDictionary = [fileIdentity jsonDictionary];

  contentTypeIdentifier = [(BMAppDocumentInteraction *)self contentTypeIdentifier];
  appIdentity = [(BMAppDocumentInteraction *)self appIdentity];
  jsonDictionary2 = [appIdentity jsonDictionary];

  remoteUser = [(BMAppDocumentInteraction *)self remoteUser];
  jsonDictionary3 = [remoteUser jsonDictionary];

  v21 = @"type";
  null = v3;
  if (!v3)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v19 = null;
  v26[0] = null;
  v22 = @"fileIdentity";
  null2 = jsonDictionary;
  if (!jsonDictionary)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v26[1] = null2;
  v23 = @"contentTypeIdentifier";
  null3 = contentTypeIdentifier;
  if (!contentTypeIdentifier)
  {
    null3 = [MEMORY[0x1E695DFB0] null];
  }

  v26[2] = null3;
  v24 = @"appIdentity";
  null4 = jsonDictionary2;
  if (!jsonDictionary2)
  {
    null4 = [MEMORY[0x1E695DFB0] null];
  }

  v26[3] = null4;
  v25 = @"remoteUser";
  null5 = jsonDictionary3;
  if (!jsonDictionary3)
  {
    null5 = [MEMORY[0x1E695DFB0] null];
  }

  v26[4] = null5;
  v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v26 forKeys:&v21 count:{5, v19}];
  if (jsonDictionary3)
  {
    if (jsonDictionary2)
    {
      goto LABEL_13;
    }
  }

  else
  {

    if (jsonDictionary2)
    {
LABEL_13:
      if (contentTypeIdentifier)
      {
        goto LABEL_14;
      }

      goto LABEL_21;
    }
  }

  if (contentTypeIdentifier)
  {
LABEL_14:
    if (jsonDictionary)
    {
      goto LABEL_15;
    }

LABEL_22:

    if (v3)
    {
      goto LABEL_16;
    }

    goto LABEL_23;
  }

LABEL_21:

  if (!jsonDictionary)
  {
    goto LABEL_22;
  }

LABEL_15:
  if (v3)
  {
    goto LABEL_16;
  }

LABEL_23:

LABEL_16:
  v17 = *MEMORY[0x1E69E9840];

  return v16;
}

- (BMAppDocumentInteraction)initWithJSONDictionary:(id)dictionary error:(id *)error
{
  v57[1] = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v7 = [dictionaryCopy objectForKeyedSubscript:@"type"];
  if (v7 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = v7;
    }

    else
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!error)
        {
          v8 = 0;
          v17 = 0;
          goto LABEL_59;
        }

        v32 = objc_alloc(MEMORY[0x1E696ABC0]);
        errorCopy = error;
        v34 = *MEMORY[0x1E698F240];
        v56 = *MEMORY[0x1E696A578];
        v18 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (corresponding to enum value), or NSString (string version of enum)", objc_opt_class(), @"type"];
        v57[0] = v18;
        v44 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v57 forKeys:&v56 count:1];
        v8 = 0;
        v17 = 0;
        *errorCopy = [v32 initWithDomain:v34 code:2 userInfo:?];
        goto LABEL_57;
      }

      v9 = [MEMORY[0x1E696AD98] numberWithInt:BMAppDocumentInteractionTypeFromString(v7)];
    }

    v8 = v9;
  }

  else
  {
    v8 = 0;
  }

  v10 = [dictionaryCopy objectForKeyedSubscript:@"fileIdentity"];
  if (v10 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      if (!error)
      {
        v17 = 0;
        goto LABEL_58;
      }

      v22 = objc_alloc(MEMORY[0x1E696ABC0]);
      errorCopy2 = error;
      v23 = *MEMORY[0x1E698F240];
      v54 = *MEMORY[0x1E696A578];
      v44 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", objc_opt_class(), @"fileIdentity"];
      v55 = v44;
      v24 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v55 forKeys:&v54 count:1];
      *errorCopy2 = [v22 initWithDomain:v23 code:2 userInfo:v24];

      v17 = 0;
      goto LABEL_56;
    }

    v18 = v10;
    v47 = 0;
    v44 = [[BMAppDocumentInteractionFileIdentity alloc] initWithJSONDictionary:v18 error:&v47];
    v19 = v47;
    if (v19)
    {
      if (error)
      {
        v19 = v19;
        *error = v19;
      }

      v17 = 0;
      goto LABEL_57;
    }
  }

  else
  {
    v44 = 0;
  }

  v11 = [dictionaryCopy objectForKeyedSubscript:@"contentTypeIdentifier"];
  v40 = v8;
  selfCopy = self;
  if (v11 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      if (!error)
      {
        v41 = 0;
        v17 = 0;
        goto LABEL_55;
      }

      v27 = objc_alloc(MEMORY[0x1E696ABC0]);
      v28 = *MEMORY[0x1E698F240];
      v52 = *MEMORY[0x1E696A578];
      errorCopy3 = error;
      v20 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"contentTypeIdentifier"];
      v53 = v20;
      v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v53 forKeys:&v52 count:1];
      v41 = 0;
      v17 = 0;
      *errorCopy3 = [v27 initWithDomain:v28 code:2 userInfo:v14];
      goto LABEL_53;
    }

    v41 = v11;
  }

  else
  {
    v41 = 0;
  }

  v12 = [dictionaryCopy objectForKeyedSubscript:@"appIdentity"];
  errorCopy4 = error;
  if (v12 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      if (!error)
      {
        v17 = 0;
        goto LABEL_54;
      }

      v38 = objc_alloc(MEMORY[0x1E696ABC0]);
      v30 = *MEMORY[0x1E698F240];
      v50 = *MEMORY[0x1E696A578];
      v14 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", objc_opt_class(), @"appIdentity"];
      v51 = v14;
      v31 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v51 forKeys:&v50 count:1];
      *error = [v38 initWithDomain:v30 code:2 userInfo:v31];

      v17 = 0;
      goto LABEL_52;
    }

    v20 = v12;
    v46 = 0;
    v14 = [[BMAppDocumentInteractionAppIdentity alloc] initWithJSONDictionary:v20 error:&v46];
    v21 = v46;
    if (v21)
    {
      if (errorCopy4)
      {
        v21 = v21;
        *errorCopy4 = v21;
      }

      v17 = 0;
      goto LABEL_53;
    }
  }

  else
  {
    v14 = 0;
  }

  v15 = [dictionaryCopy objectForKeyedSubscript:@"remoteUser"];
  if (v15)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v25 = v15;
        v45 = 0;
        v16 = [[BMAppDocumentInteractionRemoteUser alloc] initWithJSONDictionary:v25 error:&v45];
        v26 = v45;
        if (!v26)
        {

          goto LABEL_21;
        }

        if (errorCopy4)
        {
          v26 = v26;
          *errorCopy4 = v26;
        }
      }

      else
      {
        if (!errorCopy4)
        {
          v17 = 0;
          goto LABEL_51;
        }

        v39 = objc_alloc(MEMORY[0x1E696ABC0]);
        v37 = *MEMORY[0x1E698F240];
        v48 = *MEMORY[0x1E696A578];
        v16 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", objc_opt_class(), @"remoteUser"];
        v49 = v16;
        v25 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v49 forKeys:&v48 count:1];
        *errorCopy4 = [v39 initWithDomain:v37 code:2 userInfo:v25];
      }

      v17 = 0;
      goto LABEL_50;
    }
  }

  v16 = 0;
LABEL_21:
  v17 = -[BMAppDocumentInteraction initWithType:fileIdentity:contentTypeIdentifier:appIdentity:remoteUser:](selfCopy, "initWithType:fileIdentity:contentTypeIdentifier:appIdentity:remoteUser:", [v40 intValue], v44, v41, v14, v16);
  selfCopy = v17;
LABEL_50:

LABEL_51:
LABEL_52:
  v20 = v12;
LABEL_53:

  v12 = v20;
LABEL_54:

  self = selfCopy;
  v8 = v40;
LABEL_55:

LABEL_56:
  v18 = v10;
LABEL_57:

  v10 = v18;
LABEL_58:

LABEL_59:
  v35 = *MEMORY[0x1E69E9840];
  return v17;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMAppDocumentInteraction *)self writeTo:v3];
  immutableData = [v3 immutableData];

  return immutableData;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  type = self->_type;
  PBDataWriterWriteUint32Field();
  if (self->_fileIdentity)
  {
    PBDataWriterPlaceMark();
    [(BMAppDocumentInteractionFileIdentity *)self->_fileIdentity writeTo:toCopy];
    PBDataWriterRecallMark();
  }

  if (self->_contentTypeIdentifier)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_appIdentity)
  {
    PBDataWriterPlaceMark();
    [(BMAppDocumentInteractionAppIdentity *)self->_appIdentity writeTo:toCopy];
    PBDataWriterRecallMark();
  }

  if (self->_remoteUser)
  {
    PBDataWriterPlaceMark();
    [(BMAppDocumentInteractionRemoteUser *)self->_remoteUser writeTo:toCopy];
    PBDataWriterRecallMark();
  }
}

- (id)initByReadFrom:(id)from
{
  fromCopy = from;
  v31.receiver = self;
  v31.super_class = BMAppDocumentInteraction;
  v5 = [(BMEventBase *)&v31 init];
  if (!v5)
  {
    goto LABEL_53;
  }

  position = [fromCopy position];
  if (position < [fromCopy length])
  {
    while (1)
    {
      if ([fromCopy hasError])
      {
        goto LABEL_51;
      }

      v7 = 0;
      v8 = 0;
      v9 = 0;
      while (1)
      {
        LOBYTE(v32) = 0;
        v10 = [fromCopy position] + 1;
        if (v10 >= [fromCopy position] && (v11 = objc_msgSend(fromCopy, "position") + 1, v11 <= objc_msgSend(fromCopy, "length")))
        {
          data = [fromCopy data];
          [data getBytes:&v32 range:{objc_msgSend(fromCopy, "position"), 1}];

          [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
        }

        else
        {
          [fromCopy _setError];
        }

        v9 |= (v32 & 0x7F) << v7;
        if ((v32 & 0x80) == 0)
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

      v14 = [fromCopy hasError] ? 0 : v9;
LABEL_16:
      if (([fromCopy hasError] & 1) != 0 || (v14 & 7) == 4)
      {
        goto LABEL_51;
      }

      v15 = v14 >> 3;
      if ((v14 >> 3) <= 2)
      {
        break;
      }

      if (v15 != 3)
      {
        if (v15 == 4)
        {
          v32 = 0;
          v33 = 0;
          if (!PBReaderPlaceMark())
          {
            goto LABEL_52;
          }

          v16 = [[BMAppDocumentInteractionAppIdentity alloc] initByReadFrom:fromCopy];
          if (!v16)
          {
            goto LABEL_52;
          }

          v17 = 40;
        }

        else
        {
          if (v15 != 5)
          {
            goto LABEL_44;
          }

          v32 = 0;
          v33 = 0;
          if (!PBReaderPlaceMark())
          {
            goto LABEL_52;
          }

          v16 = [[BMAppDocumentInteractionRemoteUser alloc] initByReadFrom:fromCopy];
          if (!v16)
          {
            goto LABEL_52;
          }

          v17 = 48;
        }

LABEL_34:
        v20 = *(&v5->super.super.isa + v17);
        *(&v5->super.super.isa + v17) = v16;

        PBReaderRecallMark();
        goto LABEL_50;
      }

      v18 = PBReaderReadString();
      contentTypeIdentifier = v5->_contentTypeIdentifier;
      v5->_contentTypeIdentifier = v18;

LABEL_50:
      position2 = [fromCopy position];
      if (position2 >= [fromCopy length])
      {
        goto LABEL_51;
      }
    }

    if (v15 == 1)
    {
      v21 = 0;
      v22 = 0;
      v23 = 0;
      while (1)
      {
        LOBYTE(v32) = 0;
        v24 = [fromCopy position] + 1;
        if (v24 >= [fromCopy position] && (v25 = objc_msgSend(fromCopy, "position") + 1, v25 <= objc_msgSend(fromCopy, "length")))
        {
          data2 = [fromCopy data];
          [data2 getBytes:&v32 range:{objc_msgSend(fromCopy, "position"), 1}];

          [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
        }

        else
        {
          [fromCopy _setError];
        }

        v23 |= (v32 & 0x7F) << v21;
        if ((v32 & 0x80) == 0)
        {
          break;
        }

        v21 += 7;
        if (v22++ > 8)
        {
          goto LABEL_48;
        }
      }

      if (([fromCopy hasError] & 1) != 0 || v23 > 4)
      {
LABEL_48:
        LODWORD(v23) = 0;
      }

      v5->_type = v23;
      goto LABEL_50;
    }

    if (v15 != 2)
    {
LABEL_44:
      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        goto LABEL_52;
      }

      goto LABEL_50;
    }

    v32 = 0;
    v33 = 0;
    if (!PBReaderPlaceMark())
    {
      goto LABEL_52;
    }

    v16 = [[BMAppDocumentInteractionFileIdentity alloc] initByReadFrom:fromCopy];
    if (!v16)
    {
      goto LABEL_52;
    }

    v17 = 24;
    goto LABEL_34;
  }

LABEL_51:
  if ([fromCopy hasError])
  {
LABEL_52:
    v29 = 0;
  }

  else
  {
LABEL_53:
    v29 = v5;
  }

  return v29;
}

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = BMAppDocumentInteractionTypeAsString([(BMAppDocumentInteraction *)self type]);
  fileIdentity = [(BMAppDocumentInteraction *)self fileIdentity];
  contentTypeIdentifier = [(BMAppDocumentInteraction *)self contentTypeIdentifier];
  appIdentity = [(BMAppDocumentInteraction *)self appIdentity];
  remoteUser = [(BMAppDocumentInteraction *)self remoteUser];
  v9 = [v3 initWithFormat:@"BMAppDocumentInteraction with type: %@, fileIdentity: %@, contentTypeIdentifier: %@, appIdentity: %@, remoteUser: %@", v4, fileIdentity, contentTypeIdentifier, appIdentity, remoteUser];

  return v9;
}

- (BMAppDocumentInteraction)initWithType:(int)type fileIdentity:(id)identity contentTypeIdentifier:(id)identifier appIdentity:(id)appIdentity remoteUser:(id)user
{
  identityCopy = identity;
  identifierCopy = identifier;
  appIdentityCopy = appIdentity;
  userCopy = user;
  v19.receiver = self;
  v19.super_class = BMAppDocumentInteraction;
  v17 = [(BMEventBase *)&v19 init];
  if (v17)
  {
    v17->_dataVersion = [objc_opt_class() latestDataVersion];
    v17->_type = type;
    objc_storeStrong(&v17->_fileIdentity, identity);
    objc_storeStrong(&v17->_contentTypeIdentifier, identifier);
    objc_storeStrong(&v17->_appIdentity, appIdentity);
    objc_storeStrong(&v17->_remoteUser, user);
  }

  return v17;
}

+ (id)protoFields
{
  v10[5] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"type" number:1 type:4 subMessageClass:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"fileIdentity" number:2 type:14 subMessageClass:{objc_opt_class(), v2}];
  v10[1] = v3;
  v4 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"contentTypeIdentifier" number:3 type:13 subMessageClass:0];
  v10[2] = v4;
  v5 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"appIdentity" number:4 type:14 subMessageClass:objc_opt_class()];
  v10[3] = v5;
  v6 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"remoteUser" number:5 type:14 subMessageClass:objc_opt_class()];
  v10[4] = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:5];

  v8 = *MEMORY[0x1E69E9840];

  return v7;
}

+ (id)columns
{
  v10[5] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"type" dataType:0 requestOnly:0 fieldNumber:1 protoDataType:4 convertedType:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"fileIdentity_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_289_101015];
  v4 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"contentTypeIdentifier" dataType:2 requestOnly:0 fieldNumber:3 protoDataType:13 convertedType:0];
  v5 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"appIdentity_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_291_101016];
  v6 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"remoteUser_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_293_101017];
  v10[0] = v2;
  v10[1] = v3;
  v10[2] = v4;
  v10[3] = v5;
  v10[4] = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:5];

  v8 = *MEMORY[0x1E69E9840];

  return v7;
}

id __35__BMAppDocumentInteraction_columns__block_invoke_3(uint64_t a1, void *a2)
{
  v2 = [a2 eventBodyKeepingBackingData:1];
  v3 = [v2 remoteUser];
  v4 = [v3 jsonDictionary];
  v5 = BMConvertObjectToJSONString();

  return v5;
}

id __35__BMAppDocumentInteraction_columns__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = [a2 eventBodyKeepingBackingData:1];
  v3 = [v2 appIdentity];
  v4 = [v3 jsonDictionary];
  v5 = BMConvertObjectToJSONString();

  return v5;
}

id __35__BMAppDocumentInteraction_columns__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 eventBodyKeepingBackingData:1];
  v3 = [v2 fileIdentity];
  v4 = [v3 jsonDictionary];
  v5 = BMConvertObjectToJSONString();

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

    v8 = [[BMAppDocumentInteraction alloc] initByReadFrom:v7];
    v4 = v8;
    if (v8)
    {
      v8[4] = 0;
    }
  }

  return v4;
}

@end