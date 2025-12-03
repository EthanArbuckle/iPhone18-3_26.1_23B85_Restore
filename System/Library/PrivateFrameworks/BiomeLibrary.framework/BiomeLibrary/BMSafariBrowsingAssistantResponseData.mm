@interface BMSafariBrowsingAssistantResponseData
+ (id)columns;
+ (id)eventWithData:(id)data dataVersion:(unsigned int)version;
+ (id)protoFields;
- (BMSafariBrowsingAssistantResponseData)initWithJSONDictionary:(id)dictionary error:(id *)error;
- (BMSafariBrowsingAssistantResponseData)initWithSummaryText:(id)text tableOfContentsTexts:(id)texts;
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (id)_tableOfContentsTextsJSONArray;
- (id)initByReadFrom:(id)from;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)to;
@end

@implementation BMSafariBrowsingAssistantResponseData

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    summaryText = [(BMSafariBrowsingAssistantResponseData *)self summaryText];
    summaryText2 = [v5 summaryText];
    v8 = summaryText2;
    if (summaryText == summaryText2)
    {
    }

    else
    {
      summaryText3 = [(BMSafariBrowsingAssistantResponseData *)self summaryText];
      summaryText4 = [v5 summaryText];
      v11 = [summaryText3 isEqual:summaryText4];

      if (!v11)
      {
        v12 = 0;
LABEL_11:

        goto LABEL_12;
      }
    }

    tableOfContentsTexts = [(BMSafariBrowsingAssistantResponseData *)self tableOfContentsTexts];
    tableOfContentsTexts2 = [v5 tableOfContentsTexts];
    if (tableOfContentsTexts == tableOfContentsTexts2)
    {
      v12 = 1;
    }

    else
    {
      tableOfContentsTexts3 = [(BMSafariBrowsingAssistantResponseData *)self tableOfContentsTexts];
      tableOfContentsTexts4 = [v5 tableOfContentsTexts];
      v12 = [tableOfContentsTexts3 isEqual:tableOfContentsTexts4];
    }

    goto LABEL_11;
  }

  v12 = 0;
LABEL_12:

  return v12;
}

- (id)jsonDictionary
{
  v11[2] = *MEMORY[0x1E69E9840];
  summaryText = [(BMSafariBrowsingAssistantResponseData *)self summaryText];
  _tableOfContentsTextsJSONArray = [(BMSafariBrowsingAssistantResponseData *)self _tableOfContentsTextsJSONArray];
  v10[0] = @"summaryText";
  null = summaryText;
  if (!summaryText)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v10[1] = @"tableOfContentsTexts";
  v11[0] = null;
  null2 = _tableOfContentsTextsJSONArray;
  if (!_tableOfContentsTextsJSONArray)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v11[1] = null2;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:v10 count:2];
  if (_tableOfContentsTextsJSONArray)
  {
    if (summaryText)
    {
      goto LABEL_7;
    }
  }

  else
  {

    if (summaryText)
    {
      goto LABEL_7;
    }
  }

LABEL_7:
  v8 = *MEMORY[0x1E69E9840];

  return v7;
}

- (id)_tableOfContentsTextsJSONArray
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  tableOfContentsTexts = [(BMSafariBrowsingAssistantResponseData *)self tableOfContentsTexts];
  v5 = [tableOfContentsTexts countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(tableOfContentsTexts);
        }

        [v3 addObject:*(*(&v11 + 1) + 8 * i)];
      }

      v6 = [tableOfContentsTexts countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  v9 = *MEMORY[0x1E69E9840];

  return v3;
}

- (BMSafariBrowsingAssistantResponseData)initWithJSONDictionary:(id)dictionary error:(id *)error
{
  v54[1] = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v7 = [dictionaryCopy objectForKeyedSubscript:@"summaryText"];
  v41 = dictionaryCopy;
  if (v7 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      if (error)
      {
        v30 = objc_alloc(MEMORY[0x1E696ABC0]);
        v31 = *MEMORY[0x1E698F240];
        v53 = *MEMORY[0x1E696A578];
        v9 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"summaryText"];
        v54[0] = v9;
        v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v54 forKeys:&v53 count:1];
        v32 = [v30 initWithDomain:v31 code:2 userInfo:v14];
        v8 = 0;
        selfCopy2 = 0;
        *error = v32;
        goto LABEL_27;
      }

      v8 = 0;
      selfCopy2 = 0;
      goto LABEL_29;
    }

    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  v9 = [dictionaryCopy objectForKeyedSubscript:@"tableOfContentsTexts"];
  null = [MEMORY[0x1E695DFB0] null];
  v11 = [v9 isEqual:null];

  if (v11)
  {
    v12 = v7;
    v13 = v8;
    errorCopy2 = error;

    v9 = 0;
LABEL_9:
    v14 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v9, "count")}];
    v42 = 0u;
    v43 = 0u;
    v44 = 0u;
    v45 = 0u;
    v9 = v9;
    v15 = [v9 countByEnumeratingWithState:&v42 objects:v50 count:16];
    if (!v15)
    {
      goto LABEL_18;
    }

    v16 = v15;
    v17 = *v43;
    selfCopy = self;
LABEL_11:
    v18 = 0;
    while (1)
    {
      if (*v43 != v17)
      {
        objc_enumerationMutation(v9);
      }

      v19 = *(*(&v42 + 1) + 8 * v18);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        break;
      }

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v21 = errorCopy2;
        v8 = v13;
        v7 = v12;
        if (errorCopy2)
        {
          v27 = objc_alloc(MEMORY[0x1E696ABC0]);
          v23 = *MEMORY[0x1E698F240];
          v46 = *MEMORY[0x1E696A578];
          v24 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"tableOfContentsTexts"];
          v47 = v24;
          v25 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v47 forKeys:&v46 count:1];
          v26 = v27;
LABEL_25:
          *v21 = [v26 initWithDomain:v23 code:2 userInfo:v25];
        }

        goto LABEL_26;
      }

      [v14 addObject:v19];
      if (v16 == ++v18)
      {
        v16 = [v9 countByEnumeratingWithState:&v42 objects:v50 count:16];
        self = selfCopy;
        if (v16)
        {
          goto LABEL_11;
        }

LABEL_18:

        v8 = v13;
        self = [(BMSafariBrowsingAssistantResponseData *)self initWithSummaryText:v13 tableOfContentsTexts:v14];
        selfCopy2 = self;
        v7 = v12;
LABEL_27:

        goto LABEL_28;
      }
    }

    v21 = errorCopy2;
    v8 = v13;
    v7 = v12;
    if (errorCopy2)
    {
      v22 = objc_alloc(MEMORY[0x1E696ABC0]);
      v23 = *MEMORY[0x1E698F240];
      v48 = *MEMORY[0x1E696A578];
      v24 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type null for element of %@, must not be null", @"tableOfContentsTexts"];
      v49 = v24;
      v25 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v49 forKeys:&v48 count:1];
      v26 = v22;
      goto LABEL_25;
    }

LABEL_26:

    selfCopy2 = 0;
    self = selfCopy;
    goto LABEL_27;
  }

  if (!v9 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v12 = v7;
    v13 = v8;
    errorCopy2 = error;
    goto LABEL_9;
  }

  if (error)
  {
    v33 = objc_alloc(MEMORY[0x1E696ABC0]);
    errorCopy3 = error;
    selfCopy3 = self;
    v36 = *MEMORY[0x1E698F240];
    v51 = *MEMORY[0x1E696A578];
    v14 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Expecting %@ as an array", @"tableOfContentsTexts"];
    v52 = v14;
    v37 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v52 forKeys:&v51 count:1];
    v38 = v36;
    self = selfCopy3;
    *errorCopy3 = [v33 initWithDomain:v38 code:2 userInfo:v37];

    selfCopy2 = 0;
    goto LABEL_27;
  }

  selfCopy2 = 0;
LABEL_28:
  dictionaryCopy = v41;

LABEL_29:
  v28 = *MEMORY[0x1E69E9840];
  return selfCopy2;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMSafariBrowsingAssistantResponseData *)self writeTo:v3];
  immutableData = [v3 immutableData];

  return immutableData;
}

- (void)writeTo:(id)to
{
  v17 = *MEMORY[0x1E69E9840];
  toCopy = to;
  if (self->_summaryText)
  {
    PBDataWriterWriteStringField();
  }

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = self->_tableOfContentsTexts;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      v9 = 0;
      do
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v12 + 1) + 8 * v9);
        PBDataWriterWriteStringField();
        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSArray *)v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  v11 = *MEMORY[0x1E69E9840];
}

- (id)initByReadFrom:(id)from
{
  fromCopy = from;
  v25.receiver = self;
  v25.super_class = BMSafariBrowsingAssistantResponseData;
  v5 = [(BMEventBase *)&v25 init];
  if (!v5)
  {
    goto LABEL_28;
  }

  v6 = objc_opt_new();
  position = [fromCopy position];
  if (position < [fromCopy length])
  {
    while (1)
    {
      if ([fromCopy hasError])
      {
        goto LABEL_26;
      }

      v8 = 0;
      v9 = 0;
      v10 = 0;
      while (1)
      {
        v26 = 0;
        v11 = [fromCopy position] + 1;
        if (v11 >= [fromCopy position] && (v12 = objc_msgSend(fromCopy, "position") + 1, v12 <= objc_msgSend(fromCopy, "length")))
        {
          data = [fromCopy data];
          [data getBytes:&v26 range:{objc_msgSend(fromCopy, "position"), 1}];

          [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
        }

        else
        {
          [fromCopy _setError];
        }

        v10 |= (v26 & 0x7F) << v8;
        if ((v26 & 0x80) == 0)
        {
          break;
        }

        v8 += 7;
        if (v9++ >= 9)
        {
          v15 = 0;
          goto LABEL_16;
        }
      }

      v15 = [fromCopy hasError] ? 0 : v10;
LABEL_16:
      if (([fromCopy hasError] & 1) != 0 || (v15 & 7) == 4)
      {
        goto LABEL_26;
      }

      if ((v15 >> 3) == 2)
      {
        break;
      }

      if ((v15 >> 3) == 1)
      {
        v16 = PBReaderReadString();
        summaryText = v5->_summaryText;
        v5->_summaryText = v16;
LABEL_23:

        goto LABEL_25;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
LABEL_30:

        goto LABEL_27;
      }

LABEL_25:
      position2 = [fromCopy position];
      if (position2 >= [fromCopy length])
      {
        goto LABEL_26;
      }
    }

    v18 = PBReaderReadString();
    if (!v18)
    {
      goto LABEL_30;
    }

    summaryText = v18;
    [v6 addObject:v18];
    goto LABEL_23;
  }

LABEL_26:
  v20 = [v6 copy];
  tableOfContentsTexts = v5->_tableOfContentsTexts;
  v5->_tableOfContentsTexts = v20;

  hasError = [fromCopy hasError];
  if (hasError)
  {
LABEL_27:
    v23 = 0;
  }

  else
  {
LABEL_28:
    v23 = v5;
  }

  return v23;
}

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  summaryText = [(BMSafariBrowsingAssistantResponseData *)self summaryText];
  tableOfContentsTexts = [(BMSafariBrowsingAssistantResponseData *)self tableOfContentsTexts];
  v6 = [v3 initWithFormat:@"BMSafariBrowsingAssistantResponseData with summaryText: %@, tableOfContentsTexts: %@", summaryText, tableOfContentsTexts];

  return v6;
}

- (BMSafariBrowsingAssistantResponseData)initWithSummaryText:(id)text tableOfContentsTexts:(id)texts
{
  textCopy = text;
  textsCopy = texts;
  v11.receiver = self;
  v11.super_class = BMSafariBrowsingAssistantResponseData;
  v9 = [(BMEventBase *)&v11 init];
  if (v9)
  {
    v9->_dataVersion = [objc_opt_class() latestDataVersion];
    objc_storeStrong(&v9->_summaryText, text);
    objc_storeStrong(&v9->_tableOfContentsTexts, texts);
  }

  return v9;
}

+ (id)protoFields
{
  v7[2] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"summaryText" number:1 type:13 subMessageClass:0];
  v7[0] = v2;
  v3 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"tableOfContentsTexts" number:2 type:13 subMessageClass:0];
  v7[1] = v3;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:2];

  v5 = *MEMORY[0x1E69E9840];

  return v4;
}

+ (id)columns
{
  v7[2] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"summaryText" dataType:2 requestOnly:0 fieldNumber:1 protoDataType:13 convertedType:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"tableOfContentsTexts_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_880];
  v7[0] = v2;
  v7[1] = v3;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:2];

  v5 = *MEMORY[0x1E69E9840];

  return v4;
}

id __48__BMSafariBrowsingAssistantResponseData_columns__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 eventBodyKeepingBackingData:1];
  v3 = [v2 _tableOfContentsTextsJSONArray];
  v4 = BMConvertObjectToJSONString();

  return v4;
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

    v8 = [[BMSafariBrowsingAssistantResponseData alloc] initByReadFrom:v7];
    v4 = v8;
    if (v8)
    {
      v8[4] = 0;
    }
  }

  return v4;
}

@end