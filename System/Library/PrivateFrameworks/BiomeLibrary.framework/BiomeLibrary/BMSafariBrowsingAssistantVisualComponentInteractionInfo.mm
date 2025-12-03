@interface BMSafariBrowsingAssistantVisualComponentInteractionInfo
+ (id)columns;
+ (id)eventWithData:(id)data dataVersion:(unsigned int)version;
+ (id)protoFields;
- (BMSafariBrowsingAssistantVisualComponentInteractionInfo)initWithJSONDictionary:(id)dictionary error:(id *)error;
- (BMSafariBrowsingAssistantVisualComponentInteractionInfo)initWithTableOfContentsText:(id)text tableOfContentsTextIndex:(id)index hideShowButton:(int)button;
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (id)initByReadFrom:(id)from;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)to;
@end

@implementation BMSafariBrowsingAssistantVisualComponentInteractionInfo

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    tableOfContentsText = [(BMSafariBrowsingAssistantVisualComponentInteractionInfo *)self tableOfContentsText];
    tableOfContentsText2 = [v5 tableOfContentsText];
    v8 = tableOfContentsText2;
    if (tableOfContentsText == tableOfContentsText2)
    {
    }

    else
    {
      tableOfContentsText3 = [(BMSafariBrowsingAssistantVisualComponentInteractionInfo *)self tableOfContentsText];
      tableOfContentsText4 = [v5 tableOfContentsText];
      v11 = [tableOfContentsText3 isEqual:tableOfContentsText4];

      if (!v11)
      {
        goto LABEL_13;
      }
    }

    if (!-[BMSafariBrowsingAssistantVisualComponentInteractionInfo hasTableOfContentsTextIndex](self, "hasTableOfContentsTextIndex") && ![v5 hasTableOfContentsTextIndex] || -[BMSafariBrowsingAssistantVisualComponentInteractionInfo hasTableOfContentsTextIndex](self, "hasTableOfContentsTextIndex") && objc_msgSend(v5, "hasTableOfContentsTextIndex") && (v13 = -[BMSafariBrowsingAssistantVisualComponentInteractionInfo tableOfContentsTextIndex](self, "tableOfContentsTextIndex"), v13 == objc_msgSend(v5, "tableOfContentsTextIndex")))
    {
      hideShowButton = [(BMSafariBrowsingAssistantVisualComponentInteractionInfo *)self hideShowButton];
      v12 = hideShowButton == [v5 hideShowButton];
LABEL_14:

      goto LABEL_15;
    }

LABEL_13:
    v12 = 0;
    goto LABEL_14;
  }

  v12 = 0;
LABEL_15:

  return v12;
}

- (id)jsonDictionary
{
  v13[3] = *MEMORY[0x1E69E9840];
  tableOfContentsText = [(BMSafariBrowsingAssistantVisualComponentInteractionInfo *)self tableOfContentsText];
  if ([(BMSafariBrowsingAssistantVisualComponentInteractionInfo *)self hasTableOfContentsTextIndex])
  {
    v4 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[BMSafariBrowsingAssistantVisualComponentInteractionInfo tableOfContentsTextIndex](self, "tableOfContentsTextIndex")}];
  }

  else
  {
    v4 = 0;
  }

  v5 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMSafariBrowsingAssistantVisualComponentInteractionInfo hideShowButton](self, "hideShowButton")}];
  v12[0] = @"tableOfContentsText";
  null = tableOfContentsText;
  if (!tableOfContentsText)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v13[0] = null;
  v12[1] = @"tableOfContentsTextIndex";
  null2 = v4;
  if (!v4)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v13[1] = null2;
  v12[2] = @"hideShowButton";
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
      goto LABEL_12;
    }

LABEL_17:

    if (tableOfContentsText)
    {
      goto LABEL_13;
    }

    goto LABEL_18;
  }

  if (!v4)
  {
    goto LABEL_17;
  }

LABEL_12:
  if (tableOfContentsText)
  {
    goto LABEL_13;
  }

LABEL_18:

LABEL_13:
  v10 = *MEMORY[0x1E69E9840];

  return v9;
}

- (BMSafariBrowsingAssistantVisualComponentInteractionInfo)initWithJSONDictionary:(id)dictionary error:(id *)error
{
  v31[1] = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v7 = [dictionaryCopy objectForKeyedSubscript:@"tableOfContentsText"];
  if (!v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v8 = 0;
LABEL_4:
    v9 = [dictionaryCopy objectForKeyedSubscript:@"tableOfContentsTextIndex"];
    if (v9 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!error)
        {
          v10 = 0;
          selfCopy = 0;
          goto LABEL_25;
        }

        v24 = objc_alloc(MEMORY[0x1E696ABC0]);
        v17 = *MEMORY[0x1E698F240];
        v28 = *MEMORY[0x1E696A578];
        v12 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"tableOfContentsTextIndex"];
        v29 = v12;
        v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v29 forKeys:&v28 count:1];
        v18 = [v24 initWithDomain:v17 code:2 userInfo:v11];
        v10 = 0;
        selfCopy = 0;
        *error = v18;
        goto LABEL_24;
      }

      v10 = v9;
    }

    else
    {
      v10 = 0;
    }

    v11 = [dictionaryCopy objectForKeyedSubscript:@"hideShowButton"];
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
          if (error)
          {
            v25 = objc_alloc(MEMORY[0x1E696ABC0]);
            v23 = *MEMORY[0x1E698F240];
            v26 = *MEMORY[0x1E696A578];
            v21 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (corresponding to enum value), or NSString (string version of enum)", objc_opt_class(), @"hideShowButton"];
            v27 = v21;
            v22 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v27 forKeys:&v26 count:1];
            *error = [v25 initWithDomain:v23 code:2 userInfo:v22];
          }

          v12 = 0;
          selfCopy = 0;
          goto LABEL_24;
        }

        v13 = [MEMORY[0x1E696AD98] numberWithInt:BMSafariBrowsingAssistantHideShowButtonFromString(v11)];
      }

      v12 = v13;
    }

    else
    {
      v12 = 0;
    }

    self = -[BMSafariBrowsingAssistantVisualComponentInteractionInfo initWithTableOfContentsText:tableOfContentsTextIndex:hideShowButton:](self, "initWithTableOfContentsText:tableOfContentsTextIndex:hideShowButton:", v8, v10, [v12 intValue]);
    selfCopy = self;
LABEL_24:

    goto LABEL_25;
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
    goto LABEL_26;
  }

  v14 = objc_alloc(MEMORY[0x1E696ABC0]);
  v15 = *MEMORY[0x1E698F240];
  v30 = *MEMORY[0x1E696A578];
  v10 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"tableOfContentsText"];
  v31[0] = v10;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v31 forKeys:&v30 count:1];
  v8 = 0;
  selfCopy = 0;
  *error = [v14 initWithDomain:v15 code:2 userInfo:v9];
LABEL_25:

LABEL_26:
  v19 = *MEMORY[0x1E69E9840];
  return selfCopy;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMSafariBrowsingAssistantVisualComponentInteractionInfo *)self writeTo:v3];
  immutableData = [v3 immutableData];

  return immutableData;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  if (self->_tableOfContentsText)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_hasTableOfContentsTextIndex)
  {
    tableOfContentsTextIndex = self->_tableOfContentsTextIndex;
    PBDataWriterWriteUint64Field();
  }

  hideShowButton = self->_hideShowButton;
  PBDataWriterWriteUint32Field();
}

- (id)initByReadFrom:(id)from
{
  fromCopy = from;
  v35.receiver = self;
  v35.super_class = BMSafariBrowsingAssistantVisualComponentInteractionInfo;
  v5 = [(BMEventBase *)&v35 init];
  if (!v5)
  {
    goto LABEL_53;
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
        v36 = 0;
        v10 = [fromCopy position] + 1;
        if (v10 >= [fromCopy position] && (v11 = objc_msgSend(fromCopy, "position") + 1, v11 <= objc_msgSend(fromCopy, "length")))
        {
          data = [fromCopy data];
          [data getBytes:&v36 range:{objc_msgSend(fromCopy, "position"), 1}];

          [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
        }

        else
        {
          [fromCopy _setError];
        }

        v9 |= (v36 & 0x7F) << v7;
        if ((v36 & 0x80) == 0)
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
      if ((v14 >> 3) == 1)
      {
        v30 = PBReaderReadString();
        tableOfContentsText = v5->_tableOfContentsText;
        v5->_tableOfContentsText = v30;
      }

      else if (v15 == 2)
      {
        v23 = 0;
        v24 = 0;
        v25 = 0;
        v5->_hasTableOfContentsTextIndex = 1;
        while (1)
        {
          v36 = 0;
          v26 = [fromCopy position] + 1;
          if (v26 >= [fromCopy position] && (v27 = objc_msgSend(fromCopy, "position") + 1, v27 <= objc_msgSend(fromCopy, "length")))
          {
            data2 = [fromCopy data];
            [data2 getBytes:&v36 range:{objc_msgSend(fromCopy, "position"), 1}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
          }

          else
          {
            [fromCopy _setError];
          }

          v25 |= (v36 & 0x7F) << v23;
          if ((v36 & 0x80) == 0)
          {
            break;
          }

          v23 += 7;
          v13 = v24++ >= 9;
          if (v13)
          {
            v29 = 0;
            goto LABEL_45;
          }
        }

        v29 = [fromCopy hasError] ? 0 : v25;
LABEL_45:
        v5->_tableOfContentsTextIndex = v29;
      }

      else if (v15 == 3)
      {
        v16 = 0;
        v17 = 0;
        v18 = 0;
        while (1)
        {
          v36 = 0;
          v19 = [fromCopy position] + 1;
          if (v19 >= [fromCopy position] && (v20 = objc_msgSend(fromCopy, "position") + 1, v20 <= objc_msgSend(fromCopy, "length")))
          {
            data3 = [fromCopy data];
            [data3 getBytes:&v36 range:{objc_msgSend(fromCopy, "position"), 1}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
          }

          else
          {
            [fromCopy _setError];
          }

          v18 |= (v36 & 0x7F) << v16;
          if ((v36 & 0x80) == 0)
          {
            break;
          }

          v16 += 7;
          if (v17++ > 8)
          {
            goto LABEL_48;
          }
        }

        if (([fromCopy hasError] & 1) != 0 || v18 > 2)
        {
LABEL_48:
          LODWORD(v18) = 0;
        }

        v5->_hideShowButton = v18;
      }

      else if (!PBReaderSkipValueWithTag())
      {
        goto LABEL_52;
      }

      position2 = [fromCopy position];
    }

    while (position2 < [fromCopy length]);
  }

  if ([fromCopy hasError])
  {
LABEL_52:
    v33 = 0;
  }

  else
  {
LABEL_53:
    v33 = v5;
  }

  return v33;
}

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  tableOfContentsText = [(BMSafariBrowsingAssistantVisualComponentInteractionInfo *)self tableOfContentsText];
  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[BMSafariBrowsingAssistantVisualComponentInteractionInfo tableOfContentsTextIndex](self, "tableOfContentsTextIndex")}];
  v6 = BMSafariBrowsingAssistantHideShowButtonAsString([(BMSafariBrowsingAssistantVisualComponentInteractionInfo *)self hideShowButton]);
  v7 = [v3 initWithFormat:@"BMSafariBrowsingAssistantVisualComponentInteractionInfo with tableOfContentsText: %@, tableOfContentsTextIndex: %@, hideShowButton: %@", tableOfContentsText, v5, v6];

  return v7;
}

- (BMSafariBrowsingAssistantVisualComponentInteractionInfo)initWithTableOfContentsText:(id)text tableOfContentsTextIndex:(id)index hideShowButton:(int)button
{
  textCopy = text;
  indexCopy = index;
  v14.receiver = self;
  v14.super_class = BMSafariBrowsingAssistantVisualComponentInteractionInfo;
  v11 = [(BMEventBase *)&v14 init];
  if (v11)
  {
    v11->_dataVersion = [objc_opt_class() latestDataVersion];
    objc_storeStrong(&v11->_tableOfContentsText, text);
    if (indexCopy)
    {
      v11->_hasTableOfContentsTextIndex = 1;
      unsignedLongLongValue = [indexCopy unsignedLongLongValue];
    }

    else
    {
      unsignedLongLongValue = 0;
      v11->_hasTableOfContentsTextIndex = 0;
    }

    v11->_tableOfContentsTextIndex = unsignedLongLongValue;
    v11->_hideShowButton = button;
  }

  return v11;
}

+ (id)protoFields
{
  v8[3] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"tableOfContentsText" number:1 type:13 subMessageClass:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"tableOfContentsTextIndex" number:2 type:5 subMessageClass:{0, v2}];
  v8[1] = v3;
  v4 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"hideShowButton" number:3 type:4 subMessageClass:0];
  v8[2] = v4;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:3];

  v6 = *MEMORY[0x1E69E9840];

  return v5;
}

+ (id)columns
{
  v8[3] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"tableOfContentsText" dataType:2 requestOnly:0 fieldNumber:1 protoDataType:13 convertedType:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"tableOfContentsTextIndex" dataType:0 requestOnly:0 fieldNumber:2 protoDataType:5 convertedType:0];
  v4 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"hideShowButton" dataType:0 requestOnly:0 fieldNumber:3 protoDataType:4 convertedType:0];
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

    v8 = [[BMSafariBrowsingAssistantVisualComponentInteractionInfo alloc] initByReadFrom:v7];
    v4 = v8;
    if (v8)
    {
      v8[5] = 0;
    }
  }

  return v4;
}

@end