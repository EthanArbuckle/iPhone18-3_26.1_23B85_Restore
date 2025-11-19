@interface BMAppDocumentInteraction
+ (id)columns;
+ (id)eventWithData:(id)a3 dataVersion:(unsigned int)a4;
+ (id)protoFields;
- (BMAppDocumentInteraction)initWithJSONDictionary:(id)a3 error:(id *)a4;
- (BMAppDocumentInteraction)initWithType:(int)a3 fileIdentity:(id)a4 contentTypeIdentifier:(id)a5 appIdentity:(id)a6 remoteUser:(id)a7;
- (BOOL)isEqual:(id)a3;
- (NSString)description;
- (id)initByReadFrom:(id)a3;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)a3;
@end

@implementation BMAppDocumentInteraction

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [(BMAppDocumentInteraction *)self type];
    if (v6 == [v5 type])
    {
      v7 = [(BMAppDocumentInteraction *)self fileIdentity];
      v8 = [v5 fileIdentity];
      v9 = v8;
      if (v7 == v8)
      {
      }

      else
      {
        v10 = [(BMAppDocumentInteraction *)self fileIdentity];
        v11 = [v5 fileIdentity];
        v12 = [v10 isEqual:v11];

        if (!v12)
        {
          goto LABEL_14;
        }
      }

      v14 = [(BMAppDocumentInteraction *)self contentTypeIdentifier];
      v15 = [v5 contentTypeIdentifier];
      v16 = v15;
      if (v14 == v15)
      {
      }

      else
      {
        v17 = [(BMAppDocumentInteraction *)self contentTypeIdentifier];
        v18 = [v5 contentTypeIdentifier];
        v19 = [v17 isEqual:v18];

        if (!v19)
        {
          goto LABEL_14;
        }
      }

      v20 = [(BMAppDocumentInteraction *)self appIdentity];
      v21 = [v5 appIdentity];
      v22 = v21;
      if (v20 == v21)
      {
      }

      else
      {
        v23 = [(BMAppDocumentInteraction *)self appIdentity];
        v24 = [v5 appIdentity];
        v25 = [v23 isEqual:v24];

        if (!v25)
        {
          goto LABEL_14;
        }
      }

      v27 = [(BMAppDocumentInteraction *)self remoteUser];
      v28 = [v5 remoteUser];
      if (v27 == v28)
      {
        v13 = 1;
      }

      else
      {
        v29 = [(BMAppDocumentInteraction *)self remoteUser];
        v30 = [v5 remoteUser];
        v13 = [v29 isEqual:v30];
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
  v4 = [(BMAppDocumentInteraction *)self fileIdentity];
  v5 = [v4 jsonDictionary];

  v6 = [(BMAppDocumentInteraction *)self contentTypeIdentifier];
  v7 = [(BMAppDocumentInteraction *)self appIdentity];
  v8 = [v7 jsonDictionary];

  v9 = [(BMAppDocumentInteraction *)self remoteUser];
  v10 = [v9 jsonDictionary];

  v21 = @"type";
  v11 = v3;
  if (!v3)
  {
    v11 = [MEMORY[0x1E695DFB0] null];
  }

  v19 = v11;
  v26[0] = v11;
  v22 = @"fileIdentity";
  v12 = v5;
  if (!v5)
  {
    v12 = [MEMORY[0x1E695DFB0] null];
  }

  v26[1] = v12;
  v23 = @"contentTypeIdentifier";
  v13 = v6;
  if (!v6)
  {
    v13 = [MEMORY[0x1E695DFB0] null];
  }

  v26[2] = v13;
  v24 = @"appIdentity";
  v14 = v8;
  if (!v8)
  {
    v14 = [MEMORY[0x1E695DFB0] null];
  }

  v26[3] = v14;
  v25 = @"remoteUser";
  v15 = v10;
  if (!v10)
  {
    v15 = [MEMORY[0x1E695DFB0] null];
  }

  v26[4] = v15;
  v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v26 forKeys:&v21 count:{5, v19}];
  if (v10)
  {
    if (v8)
    {
      goto LABEL_13;
    }
  }

  else
  {

    if (v8)
    {
LABEL_13:
      if (v6)
      {
        goto LABEL_14;
      }

      goto LABEL_21;
    }
  }

  if (v6)
  {
LABEL_14:
    if (v5)
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

  if (!v5)
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

- (BMAppDocumentInteraction)initWithJSONDictionary:(id)a3 error:(id *)a4
{
  v57[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [v6 objectForKeyedSubscript:@"type"];
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
        if (!a4)
        {
          v8 = 0;
          v17 = 0;
          goto LABEL_59;
        }

        v32 = objc_alloc(MEMORY[0x1E696ABC0]);
        v33 = a4;
        v34 = *MEMORY[0x1E698F240];
        v56 = *MEMORY[0x1E696A578];
        v18 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (corresponding to enum value), or NSString (string version of enum)", objc_opt_class(), @"type"];
        v57[0] = v18;
        v44 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v57 forKeys:&v56 count:1];
        v8 = 0;
        v17 = 0;
        *v33 = [v32 initWithDomain:v34 code:2 userInfo:?];
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

  v10 = [v6 objectForKeyedSubscript:@"fileIdentity"];
  if (v10 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      if (!a4)
      {
        v17 = 0;
        goto LABEL_58;
      }

      v22 = objc_alloc(MEMORY[0x1E696ABC0]);
      v42 = a4;
      v23 = *MEMORY[0x1E698F240];
      v54 = *MEMORY[0x1E696A578];
      v44 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", objc_opt_class(), @"fileIdentity"];
      v55 = v44;
      v24 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v55 forKeys:&v54 count:1];
      *v42 = [v22 initWithDomain:v23 code:2 userInfo:v24];

      v17 = 0;
      goto LABEL_56;
    }

    v18 = v10;
    v47 = 0;
    v44 = [[BMAppDocumentInteractionFileIdentity alloc] initWithJSONDictionary:v18 error:&v47];
    v19 = v47;
    if (v19)
    {
      if (a4)
      {
        v19 = v19;
        *a4 = v19;
      }

      v17 = 0;
      goto LABEL_57;
    }
  }

  else
  {
    v44 = 0;
  }

  v11 = [v6 objectForKeyedSubscript:@"contentTypeIdentifier"];
  v40 = v8;
  v43 = self;
  if (v11 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      if (!a4)
      {
        v41 = 0;
        v17 = 0;
        goto LABEL_55;
      }

      v27 = objc_alloc(MEMORY[0x1E696ABC0]);
      v28 = *MEMORY[0x1E698F240];
      v52 = *MEMORY[0x1E696A578];
      v29 = a4;
      v20 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"contentTypeIdentifier"];
      v53 = v20;
      v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v53 forKeys:&v52 count:1];
      v41 = 0;
      v17 = 0;
      *v29 = [v27 initWithDomain:v28 code:2 userInfo:v14];
      goto LABEL_53;
    }

    v41 = v11;
  }

  else
  {
    v41 = 0;
  }

  v12 = [v6 objectForKeyedSubscript:@"appIdentity"];
  v13 = a4;
  if (v12 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      if (!a4)
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
      *a4 = [v38 initWithDomain:v30 code:2 userInfo:v31];

      v17 = 0;
      goto LABEL_52;
    }

    v20 = v12;
    v46 = 0;
    v14 = [[BMAppDocumentInteractionAppIdentity alloc] initWithJSONDictionary:v20 error:&v46];
    v21 = v46;
    if (v21)
    {
      if (v13)
      {
        v21 = v21;
        *v13 = v21;
      }

      v17 = 0;
      goto LABEL_53;
    }
  }

  else
  {
    v14 = 0;
  }

  v15 = [v6 objectForKeyedSubscript:@"remoteUser"];
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

        if (v13)
        {
          v26 = v26;
          *v13 = v26;
        }
      }

      else
      {
        if (!v13)
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
        *v13 = [v39 initWithDomain:v37 code:2 userInfo:v25];
      }

      v17 = 0;
      goto LABEL_50;
    }
  }

  v16 = 0;
LABEL_21:
  v17 = -[BMAppDocumentInteraction initWithType:fileIdentity:contentTypeIdentifier:appIdentity:remoteUser:](v43, "initWithType:fileIdentity:contentTypeIdentifier:appIdentity:remoteUser:", [v40 intValue], v44, v41, v14, v16);
  v43 = v17;
LABEL_50:

LABEL_51:
LABEL_52:
  v20 = v12;
LABEL_53:

  v12 = v20;
LABEL_54:

  self = v43;
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
  v4 = [v3 immutableData];

  return v4;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  type = self->_type;
  PBDataWriterWriteUint32Field();
  if (self->_fileIdentity)
  {
    PBDataWriterPlaceMark();
    [(BMAppDocumentInteractionFileIdentity *)self->_fileIdentity writeTo:v4];
    PBDataWriterRecallMark();
  }

  if (self->_contentTypeIdentifier)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_appIdentity)
  {
    PBDataWriterPlaceMark();
    [(BMAppDocumentInteractionAppIdentity *)self->_appIdentity writeTo:v4];
    PBDataWriterRecallMark();
  }

  if (self->_remoteUser)
  {
    PBDataWriterPlaceMark();
    [(BMAppDocumentInteractionRemoteUser *)self->_remoteUser writeTo:v4];
    PBDataWriterRecallMark();
  }
}

- (id)initByReadFrom:(id)a3
{
  v4 = a3;
  v31.receiver = self;
  v31.super_class = BMAppDocumentInteraction;
  v5 = [(BMEventBase *)&v31 init];
  if (!v5)
  {
    goto LABEL_53;
  }

  v6 = [v4 position];
  if (v6 < [v4 length])
  {
    while (1)
    {
      if ([v4 hasError])
      {
        goto LABEL_51;
      }

      v7 = 0;
      v8 = 0;
      v9 = 0;
      while (1)
      {
        LOBYTE(v32) = 0;
        v10 = [v4 position] + 1;
        if (v10 >= [v4 position] && (v11 = objc_msgSend(v4, "position") + 1, v11 <= objc_msgSend(v4, "length")))
        {
          v12 = [v4 data];
          [v12 getBytes:&v32 range:{objc_msgSend(v4, "position"), 1}];

          [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
        }

        else
        {
          [v4 _setError];
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

      v14 = [v4 hasError] ? 0 : v9;
LABEL_16:
      if (([v4 hasError] & 1) != 0 || (v14 & 7) == 4)
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

          v16 = [[BMAppDocumentInteractionAppIdentity alloc] initByReadFrom:v4];
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

          v16 = [[BMAppDocumentInteractionRemoteUser alloc] initByReadFrom:v4];
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
      v28 = [v4 position];
      if (v28 >= [v4 length])
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
        v24 = [v4 position] + 1;
        if (v24 >= [v4 position] && (v25 = objc_msgSend(v4, "position") + 1, v25 <= objc_msgSend(v4, "length")))
        {
          v26 = [v4 data];
          [v26 getBytes:&v32 range:{objc_msgSend(v4, "position"), 1}];

          [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
        }

        else
        {
          [v4 _setError];
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

      if (([v4 hasError] & 1) != 0 || v23 > 4)
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

    v16 = [[BMAppDocumentInteractionFileIdentity alloc] initByReadFrom:v4];
    if (!v16)
    {
      goto LABEL_52;
    }

    v17 = 24;
    goto LABEL_34;
  }

LABEL_51:
  if ([v4 hasError])
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
  v5 = [(BMAppDocumentInteraction *)self fileIdentity];
  v6 = [(BMAppDocumentInteraction *)self contentTypeIdentifier];
  v7 = [(BMAppDocumentInteraction *)self appIdentity];
  v8 = [(BMAppDocumentInteraction *)self remoteUser];
  v9 = [v3 initWithFormat:@"BMAppDocumentInteraction with type: %@, fileIdentity: %@, contentTypeIdentifier: %@, appIdentity: %@, remoteUser: %@", v4, v5, v6, v7, v8];

  return v9;
}

- (BMAppDocumentInteraction)initWithType:(int)a3 fileIdentity:(id)a4 contentTypeIdentifier:(id)a5 appIdentity:(id)a6 remoteUser:(id)a7
{
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v19.receiver = self;
  v19.super_class = BMAppDocumentInteraction;
  v17 = [(BMEventBase *)&v19 init];
  if (v17)
  {
    v17->_dataVersion = [objc_opt_class() latestDataVersion];
    v17->_type = a3;
    objc_storeStrong(&v17->_fileIdentity, a4);
    objc_storeStrong(&v17->_contentTypeIdentifier, a5);
    objc_storeStrong(&v17->_appIdentity, a6);
    objc_storeStrong(&v17->_remoteUser, a7);
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