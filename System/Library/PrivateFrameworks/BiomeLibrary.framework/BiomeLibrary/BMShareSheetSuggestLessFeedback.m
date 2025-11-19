@interface BMShareSheetSuggestLessFeedback
+ (id)columns;
+ (id)eventWithData:(id)a3 dataVersion:(unsigned int)a4;
+ (id)protoFields;
- (BMShareSheetSuggestLessFeedback)initWithBundleID:(id)a3 conversationIdentifier:(id)a4 derivedIntentIdentifier:(id)a5 handle:(id)a6 contactID:(id)a7;
- (BMShareSheetSuggestLessFeedback)initWithJSONDictionary:(id)a3 error:(id *)a4;
- (BOOL)isEqual:(id)a3;
- (NSString)description;
- (id)initByReadFrom:(id)a3;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)a3;
@end

@implementation BMShareSheetSuggestLessFeedback

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [(BMShareSheetSuggestLessFeedback *)self bundleID];
    v7 = [v5 bundleID];
    v8 = v7;
    if (v6 == v7)
    {
    }

    else
    {
      v9 = [(BMShareSheetSuggestLessFeedback *)self bundleID];
      v10 = [v5 bundleID];
      v11 = [v9 isEqual:v10];

      if (!v11)
      {
        goto LABEL_17;
      }
    }

    v13 = [(BMShareSheetSuggestLessFeedback *)self conversationIdentifier];
    v14 = [v5 conversationIdentifier];
    v15 = v14;
    if (v13 == v14)
    {
    }

    else
    {
      v16 = [(BMShareSheetSuggestLessFeedback *)self conversationIdentifier];
      v17 = [v5 conversationIdentifier];
      v18 = [v16 isEqual:v17];

      if (!v18)
      {
        goto LABEL_17;
      }
    }

    v19 = [(BMShareSheetSuggestLessFeedback *)self derivedIntentIdentifier];
    v20 = [v5 derivedIntentIdentifier];
    v21 = v20;
    if (v19 == v20)
    {
    }

    else
    {
      v22 = [(BMShareSheetSuggestLessFeedback *)self derivedIntentIdentifier];
      v23 = [v5 derivedIntentIdentifier];
      v24 = [v22 isEqual:v23];

      if (!v24)
      {
        goto LABEL_17;
      }
    }

    v25 = [(BMShareSheetSuggestLessFeedback *)self handle];
    v26 = [v5 handle];
    v27 = v26;
    if (v25 == v26)
    {
    }

    else
    {
      v28 = [(BMShareSheetSuggestLessFeedback *)self handle];
      v29 = [v5 handle];
      v30 = [v28 isEqual:v29];

      if (!v30)
      {
LABEL_17:
        v12 = 0;
LABEL_23:

        goto LABEL_24;
      }
    }

    v31 = [(BMShareSheetSuggestLessFeedback *)self contactID];
    v32 = [v5 contactID];
    if (v31 == v32)
    {
      v12 = 1;
    }

    else
    {
      v33 = [(BMShareSheetSuggestLessFeedback *)self contactID];
      v34 = [v5 contactID];
      v12 = [v33 isEqual:v34];
    }

    goto LABEL_23;
  }

  v12 = 0;
LABEL_24:

  return v12;
}

- (id)jsonDictionary
{
  v23[5] = *MEMORY[0x1E69E9840];
  v3 = [(BMShareSheetSuggestLessFeedback *)self bundleID];
  v4 = [(BMShareSheetSuggestLessFeedback *)self conversationIdentifier];
  v5 = [(BMShareSheetSuggestLessFeedback *)self derivedIntentIdentifier];
  v6 = [(BMShareSheetSuggestLessFeedback *)self handle];
  v7 = [(BMShareSheetSuggestLessFeedback *)self contactID];
  v18 = @"bundleID";
  v8 = v3;
  if (!v3)
  {
    v8 = [MEMORY[0x1E695DFB0] null];
  }

  v16 = v8;
  v23[0] = v8;
  v19 = @"conversationIdentifier";
  v9 = v4;
  if (!v4)
  {
    v9 = [MEMORY[0x1E695DFB0] null];
  }

  v23[1] = v9;
  v20 = @"derivedIntentIdentifier";
  v10 = v5;
  if (!v5)
  {
    v10 = [MEMORY[0x1E695DFB0] null];
  }

  v23[2] = v10;
  v21 = @"handle";
  v11 = v6;
  if (!v6)
  {
    v11 = [MEMORY[0x1E695DFB0] null];
  }

  v23[3] = v11;
  v22 = @"contactID";
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
      goto LABEL_13;
    }
  }

  else
  {

    if (v6)
    {
LABEL_13:
      if (v5)
      {
        goto LABEL_14;
      }

      goto LABEL_21;
    }
  }

  if (v5)
  {
LABEL_14:
    if (v4)
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

  if (!v4)
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
  v14 = *MEMORY[0x1E69E9840];

  return v13;
}

- (BMShareSheetSuggestLessFeedback)initWithJSONDictionary:(id)a3 error:(id *)a4
{
  v48[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [v6 objectForKeyedSubscript:@"bundleID"];
  if (!v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v8 = 0;
LABEL_4:
    v9 = [v6 objectForKeyedSubscript:@"conversationIdentifier"];
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
        v36 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"conversationIdentifier"];
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

    v10 = [v6 objectForKeyedSubscript:@"derivedIntentIdentifier"];
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
        v13 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"derivedIntentIdentifier"];
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

    v11 = [v6 objectForKeyedSubscript:@"handle"];
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
        v15 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"handle"];
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

    v14 = [v6 objectForKeyedSubscript:@"contactID"];
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
          v29 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"contactID"];
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

    v16 = [(BMShareSheetSuggestLessFeedback *)v37 initWithBundleID:v35 conversationIdentifier:v38 derivedIntentIdentifier:v36 handle:v13 contactID:v15];
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
  v38 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"bundleID"];
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
  [(BMShareSheetSuggestLessFeedback *)self writeTo:v3];
  v4 = [v3 immutableData];

  return v4;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_bundleID)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }

  if (self->_conversationIdentifier)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }

  if (self->_derivedIntentIdentifier)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }

  if (self->_handle)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }

  if (self->_contactID)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }
}

- (id)initByReadFrom:(id)a3
{
  v4 = a3;
  v23.receiver = self;
  v23.super_class = BMShareSheetSuggestLessFeedback;
  v5 = [(BMEventBase *)&v23 init];
  if (!v5)
  {
    goto LABEL_24;
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
        v24 = 0;
        v10 = [v4 position] + 1;
        if (v10 >= [v4 position] && (v11 = objc_msgSend(v4, "position") + 1, v11 <= objc_msgSend(v4, "length")))
        {
          v12 = [v4 data];
          [v12 getBytes:&v24 range:{objc_msgSend(v4, "position"), 1}];

          [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
        }

        else
        {
          [v4 _setError];
        }

        v9 |= (v24 & 0x7F) << v7;
        if ((v24 & 0x80) == 0)
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

      v15 = (v14 >> 3) - 1;
      if (v15 >= 5)
      {
        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          goto LABEL_23;
        }
      }

      else
      {
        v16 = off_1E6E96E10[v15];
        v17 = PBReaderReadString();
        v18 = *v16;
        v19 = *(&v5->super.super.isa + v18);
        *(&v5->super.super.isa + v18) = v17;
      }

      v20 = [v4 position];
    }

    while (v20 < [v4 length]);
  }

  if ([v4 hasError])
  {
LABEL_23:
    v21 = 0;
  }

  else
  {
LABEL_24:
    v21 = v5;
  }

  return v21;
}

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = [(BMShareSheetSuggestLessFeedback *)self bundleID];
  v5 = [(BMShareSheetSuggestLessFeedback *)self conversationIdentifier];
  v6 = [(BMShareSheetSuggestLessFeedback *)self derivedIntentIdentifier];
  v7 = [(BMShareSheetSuggestLessFeedback *)self handle];
  v8 = [(BMShareSheetSuggestLessFeedback *)self contactID];
  v9 = [v3 initWithFormat:@"BMShareSheetSuggestLessFeedback with bundleID: %@, conversationIdentifier: %@, derivedIntentIdentifier: %@, handle: %@, contactID: %@", v4, v5, v6, v7, v8];

  return v9;
}

- (BMShareSheetSuggestLessFeedback)initWithBundleID:(id)a3 conversationIdentifier:(id)a4 derivedIntentIdentifier:(id)a5 handle:(id)a6 contactID:(id)a7
{
  v19 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v20.receiver = self;
  v20.super_class = BMShareSheetSuggestLessFeedback;
  v17 = [(BMEventBase *)&v20 init];
  if (v17)
  {
    v17->_dataVersion = [objc_opt_class() latestDataVersion];
    objc_storeStrong(&v17->_bundleID, a3);
    objc_storeStrong(&v17->_conversationIdentifier, a4);
    objc_storeStrong(&v17->_derivedIntentIdentifier, a5);
    objc_storeStrong(&v17->_handle, a6);
    objc_storeStrong(&v17->_contactID, a7);
  }

  return v17;
}

+ (id)protoFields
{
  v10[5] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"bundleID" number:1 type:13 subMessageClass:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"conversationIdentifier" number:2 type:13 subMessageClass:{0, v2}];
  v10[1] = v3;
  v4 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"derivedIntentIdentifier" number:3 type:13 subMessageClass:0];
  v10[2] = v4;
  v5 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"handle" number:4 type:13 subMessageClass:0];
  v10[3] = v5;
  v6 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"contactID" number:5 type:13 subMessageClass:0];
  v10[4] = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:5];

  v8 = *MEMORY[0x1E69E9840];

  return v7;
}

+ (id)columns
{
  v10[5] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"bundleID" dataType:2 requestOnly:0 fieldNumber:1 protoDataType:13 convertedType:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"conversationIdentifier" dataType:2 requestOnly:0 fieldNumber:2 protoDataType:13 convertedType:0];
  v4 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"derivedIntentIdentifier" dataType:2 requestOnly:0 fieldNumber:3 protoDataType:13 convertedType:0];
  v5 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"handle" dataType:2 requestOnly:0 fieldNumber:4 protoDataType:13 convertedType:0];
  v6 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"contactID" dataType:2 requestOnly:0 fieldNumber:5 protoDataType:13 convertedType:0];
  v10[0] = v2;
  v10[1] = v3;
  v10[2] = v4;
  v10[3] = v5;
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

    v8 = [[BMShareSheetSuggestLessFeedback alloc] initByReadFrom:v7];
    v4 = v8;
    if (v8)
    {
      v8[4] = 0;
    }
  }

  return v4;
}

@end