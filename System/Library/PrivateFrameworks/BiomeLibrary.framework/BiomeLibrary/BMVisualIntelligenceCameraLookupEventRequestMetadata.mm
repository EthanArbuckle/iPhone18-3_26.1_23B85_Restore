@interface BMVisualIntelligenceCameraLookupEventRequestMetadata
+ (id)columns;
+ (id)eventWithData:(id)a3 dataVersion:(unsigned int)a4;
+ (id)protoFields;
- (BMVisualIntelligenceCameraLookupEventRequestMetadata)initWithJSONDictionary:(id)a3 error:(id *)a4;
- (BMVisualIntelligenceCameraLookupEventRequestMetadata)initWithRequestType:(int)a3 requestDomain:(id)a4;
- (BOOL)isEqual:(id)a3;
- (NSString)description;
- (id)_requestDomainJSONArray;
- (id)initByReadFrom:(id)a3;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)a3;
@end

@implementation BMVisualIntelligenceCameraLookupEventRequestMetadata

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [(BMVisualIntelligenceCameraLookupEventRequestMetadata *)self requestType];
    if (v6 == [v5 requestType])
    {
      v7 = [(BMVisualIntelligenceCameraLookupEventRequestMetadata *)self requestDomain];
      v8 = [v5 requestDomain];
      if (v7 == v8)
      {
        v11 = 1;
      }

      else
      {
        v9 = [(BMVisualIntelligenceCameraLookupEventRequestMetadata *)self requestDomain];
        v10 = [v5 requestDomain];
        v11 = [v9 isEqual:v10];
      }
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id)jsonDictionary
{
  v11[2] = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMVisualIntelligenceCameraLookupEventRequestMetadata requestType](self, "requestType")}];
  v4 = [(BMVisualIntelligenceCameraLookupEventRequestMetadata *)self _requestDomainJSONArray];
  v10[0] = @"requestType";
  v5 = v3;
  if (!v3)
  {
    v5 = [MEMORY[0x1E695DFB0] null];
  }

  v10[1] = @"requestDomain";
  v11[0] = v5;
  v6 = v4;
  if (!v4)
  {
    v6 = [MEMORY[0x1E695DFB0] null];
  }

  v11[1] = v6;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:v10 count:2];
  if (v4)
  {
    if (v3)
    {
      goto LABEL_7;
    }
  }

  else
  {

    if (v3)
    {
      goto LABEL_7;
    }
  }

LABEL_7:
  v8 = *MEMORY[0x1E69E9840];

  return v7;
}

- (id)_requestDomainJSONArray
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = [(BMVisualIntelligenceCameraLookupEventRequestMetadata *)self requestDomain];
  v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
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
          objc_enumerationMutation(v4);
        }

        [v3 addObject:*(*(&v11 + 1) + 8 * i)];
      }

      v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  v9 = *MEMORY[0x1E69E9840];

  return v3;
}

- (BMVisualIntelligenceCameraLookupEventRequestMetadata)initWithJSONDictionary:(id)a3 error:(id *)a4
{
  v55[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [v6 objectForKeyedSubscript:@"requestType"];
  if (v7 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = v7;
    }

    else
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!a4)
        {
          v8 = 0;
          v20 = 0;
          goto LABEL_35;
        }

        v34 = objc_alloc(MEMORY[0x1E696ABC0]);
        v35 = *MEMORY[0x1E698F240];
        v54 = *MEMORY[0x1E696A578];
        v9 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (corresponding to enum value), or NSString (string version of enum)", objc_opt_class(), @"requestType"];
        v55[0] = v9;
        v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v55 forKeys:&v54 count:1];
        v36 = [v34 initWithDomain:v35 code:2 userInfo:v12];
        v8 = 0;
        v20 = 0;
        *a4 = v36;
        goto LABEL_33;
      }

      v8 = [MEMORY[0x1E696AD98] numberWithInt:{bsearch_b(v7, BMVisualIntelligenceCameraLookupEventRequestTypeFromString_sortedStrings, 1uLL, 8uLL, &__block_literal_global_29_110114) != 0}];
    }
  }

  else
  {
    v8 = 0;
  }

  v9 = [v6 objectForKeyedSubscript:@"requestDomain"];
  v10 = [MEMORY[0x1E695DFB0] null];
  v11 = [v9 isEqual:v10];

  if (v11)
  {
    v38 = a4;
    v39 = v8;
    v40 = v7;
    v41 = v6;
    v42 = self;

    v9 = 0;
LABEL_9:
    v12 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v9, "count")}];
    v43 = 0u;
    v44 = 0u;
    v45 = 0u;
    v46 = 0u;
    v9 = v9;
    v13 = [v9 countByEnumeratingWithState:&v43 objects:v51 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v44;
LABEL_11:
      v16 = 0;
      while (1)
      {
        if (*v44 != v15)
        {
          objc_enumerationMutation(v9);
        }

        v17 = *(*(&v43 + 1) + 8 * v16);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          break;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v18 = v17;
        }

        else
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            self = v42;
            v21 = v38;
            v8 = v39;
            if (v38)
            {
              v37 = objc_alloc(MEMORY[0x1E696ABC0]);
              v23 = *MEMORY[0x1E698F240];
              v47 = *MEMORY[0x1E696A578];
              v24 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (corresponding to enum value), or NSString (string version of enum)", objc_opt_class(), @"requestDomain"];
              v48 = v24;
              v25 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v48 forKeys:&v47 count:1];
              v26 = v37;
LABEL_30:
              *v21 = [v26 initWithDomain:v23 code:2 userInfo:v25];
            }

            goto LABEL_31;
          }

          v18 = [MEMORY[0x1E696AD98] numberWithInt:BMVisualIntelligenceCameraLookupEventRequestDomainFromString(v17)];
        }

        v19 = v18;
        [v12 addObject:v18];

        if (v14 == ++v16)
        {
          v14 = [v9 countByEnumeratingWithState:&v43 objects:v51 count:16];
          if (v14)
          {
            goto LABEL_11;
          }

          goto LABEL_21;
        }
      }

      self = v42;
      v21 = v38;
      v8 = v39;
      if (v38)
      {
        v22 = objc_alloc(MEMORY[0x1E696ABC0]);
        v23 = *MEMORY[0x1E698F240];
        v49 = *MEMORY[0x1E696A578];
        v24 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type null for element of %@, must not be null", @"requestDomain"];
        v50 = v24;
        v25 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v50 forKeys:&v49 count:1];
        v26 = v22;
        goto LABEL_30;
      }

LABEL_31:

      v20 = 0;
      goto LABEL_32;
    }

LABEL_21:

    v8 = v39;
    self = -[BMVisualIntelligenceCameraLookupEventRequestMetadata initWithRequestType:requestDomain:](v42, "initWithRequestType:requestDomain:", [v39 intValue], v12);
    v20 = self;
LABEL_32:
    v7 = v40;
    v6 = v41;
    goto LABEL_33;
  }

  if (!v9 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v38 = a4;
    v39 = v8;
    v40 = v7;
    v41 = v6;
    v42 = self;
    goto LABEL_9;
  }

  if (!a4)
  {
    v20 = 0;
    goto LABEL_34;
  }

  v29 = objc_alloc(MEMORY[0x1E696ABC0]);
  v30 = v7;
  v31 = *MEMORY[0x1E698F240];
  v52 = *MEMORY[0x1E696A578];
  v12 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Expecting %@ as an array", @"requestDomain"];
  v53 = v12;
  v32 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v53 forKeys:&v52 count:1];
  v33 = v31;
  v7 = v30;
  *a4 = [v29 initWithDomain:v33 code:2 userInfo:v32];

  v20 = 0;
LABEL_33:

LABEL_34:
LABEL_35:

  v27 = *MEMORY[0x1E69E9840];
  return v20;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMVisualIntelligenceCameraLookupEventRequestMetadata *)self writeTo:v3];
  v4 = [v3 immutableData];

  return v4;
}

- (void)writeTo:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = a3;
  requestType = self->_requestType;
  PBDataWriterWriteUint32Field();
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v6 = self->_requestDomain;
  v7 = [(NSArray *)v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v13;
    do
    {
      v10 = 0;
      do
      {
        if (*v13 != v9)
        {
          objc_enumerationMutation(v6);
        }

        [*(*(&v12 + 1) + 8 * v10) unsignedIntValue];
        PBDataWriterWriteUint32Field();
        ++v10;
      }

      while (v8 != v10);
      v8 = [(NSArray *)v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v8);
  }

  v11 = *MEMORY[0x1E69E9840];
}

- (id)initByReadFrom:(id)a3
{
  v4 = a3;
  v38.receiver = self;
  v38.super_class = BMVisualIntelligenceCameraLookupEventRequestMetadata;
  v5 = [(BMEventBase *)&v38 init];
  if (!v5)
  {
    goto LABEL_52;
  }

  v6 = objc_opt_new();
  v7 = [v4 position];
  if (v7 < [v4 length])
  {
    do
    {
      if ([v4 hasError])
      {
        break;
      }

      v8 = 0;
      v9 = 0;
      v10 = 0;
      while (1)
      {
        v39 = 0;
        v11 = [v4 position] + 1;
        if (v11 >= [v4 position] && (v12 = objc_msgSend(v4, "position") + 1, v12 <= objc_msgSend(v4, "length")))
        {
          v13 = [v4 data];
          [v13 getBytes:&v39 range:{objc_msgSend(v4, "position"), 1}];

          [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
        }

        else
        {
          [v4 _setError];
        }

        v10 |= (v39 & 0x7F) << v8;
        if ((v39 & 0x80) == 0)
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

      v15 = [v4 hasError] ? 0 : v10;
LABEL_16:
      if (([v4 hasError] & 1) != 0 || (v15 & 7) == 4)
      {
        break;
      }

      if ((v15 >> 3) == 2)
      {
        v23 = 0;
        v24 = 0;
        v25 = 0;
        v26 = MEMORY[0x1E696AD98];
        while (1)
        {
          v39 = 0;
          v27 = [v4 position] + 1;
          if (v27 >= [v4 position] && (v28 = objc_msgSend(v4, "position") + 1, v28 <= objc_msgSend(v4, "length")))
          {
            v29 = [v4 data];
            [v29 getBytes:&v39 range:{objc_msgSend(v4, "position"), 1}];

            [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
          }

          else
          {
            [v4 _setError];
          }

          v25 |= (v39 & 0x7F) << v23;
          if ((v39 & 0x80) == 0)
          {
            break;
          }

          v23 += 7;
          v22 = v24++ > 8;
          if (v22)
          {
            goto LABEL_46;
          }
        }

        if (([v4 hasError] & 1) != 0 || v25 > 7)
        {
LABEL_46:
          v25 = 0;
        }

        v30 = [v26 numberWithUnsignedInt:v25];
        if (!v30)
        {
LABEL_54:

          goto LABEL_51;
        }

        v31 = v30;
        [v6 addObject:v30];
      }

      else if ((v15 >> 3) == 1)
      {
        v16 = 0;
        v17 = 0;
        v18 = 0;
        while (1)
        {
          v39 = 0;
          v19 = [v4 position] + 1;
          if (v19 >= [v4 position] && (v20 = objc_msgSend(v4, "position") + 1, v20 <= objc_msgSend(v4, "length")))
          {
            v21 = [v4 data];
            [v21 getBytes:&v39 range:{objc_msgSend(v4, "position"), 1}];

            [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
          }

          else
          {
            [v4 _setError];
          }

          v18 |= (v39 & 0x7F) << v16;
          if ((v39 & 0x80) == 0)
          {
            break;
          }

          v16 += 7;
          v22 = v17++ > 8;
          if (v22)
          {
            goto LABEL_42;
          }
        }

        if (([v4 hasError] & 1) != 0 || v18 > 1)
        {
LABEL_42:
          LODWORD(v18) = 0;
        }

        v5->_requestType = v18;
      }

      else if (!PBReaderSkipValueWithTag())
      {
        goto LABEL_54;
      }

      v32 = [v4 position];
    }

    while (v32 < [v4 length]);
  }

  v33 = [v6 copy];
  requestDomain = v5->_requestDomain;
  v5->_requestDomain = v33;

  v35 = [v4 hasError];
  if (v35)
  {
LABEL_51:
    v36 = 0;
  }

  else
  {
LABEL_52:
    v36 = v5;
  }

  return v36;
}

- (NSString)description
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  [v3 appendString:@"["];
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v4 = [(BMVisualIntelligenceCameraLookupEventRequestMetadata *)self requestDomain];
  v5 = [v4 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v17;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v17 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v16 + 1) + 8 * i);
        if ([v3 length] != 1)
        {
          [v3 appendString:{@", "}];
        }

        v10 = BMVisualIntelligenceCameraLookupEventRequestDomainAsString([v9 unsignedIntValue]);
        [v3 appendString:v10];
      }

      v6 = [v4 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v6);
  }

  [v3 appendString:@"]"];
  v11 = objc_alloc(MEMORY[0x1E696AEC0]);
  v12 = BMVisualIntelligenceCameraLookupEventRequestTypeAsString([(BMVisualIntelligenceCameraLookupEventRequestMetadata *)self requestType]);
  v13 = [v11 initWithFormat:@"BMVisualIntelligenceCameraLookupEventRequestMetadata with requestType: %@, requestDomain: %@", v12, v3];

  v14 = *MEMORY[0x1E69E9840];

  return v13;
}

- (BMVisualIntelligenceCameraLookupEventRequestMetadata)initWithRequestType:(int)a3 requestDomain:(id)a4
{
  v7 = a4;
  v10.receiver = self;
  v10.super_class = BMVisualIntelligenceCameraLookupEventRequestMetadata;
  v8 = [(BMEventBase *)&v10 init];
  if (v8)
  {
    v8->_dataVersion = [objc_opt_class() latestDataVersion];
    v8->_requestType = a3;
    objc_storeStrong(&v8->_requestDomain, a4);
  }

  return v8;
}

+ (id)protoFields
{
  v7[2] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"requestType" number:1 type:4 subMessageClass:0];
  v7[0] = v2;
  v3 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"requestDomain" number:2 type:4 subMessageClass:0];
  v7[1] = v3;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:2];

  v5 = *MEMORY[0x1E69E9840];

  return v4;
}

+ (id)columns
{
  v7[2] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"requestType" dataType:0 requestOnly:0 fieldNumber:1 protoDataType:4 convertedType:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"requestDomain_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_488];
  v7[0] = v2;
  v7[1] = v3;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:2];

  v5 = *MEMORY[0x1E69E9840];

  return v4;
}

id __63__BMVisualIntelligenceCameraLookupEventRequestMetadata_columns__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 eventBodyKeepingBackingData:1];
  v3 = [v2 _requestDomainJSONArray];
  v4 = BMConvertObjectToJSONString();

  return v4;
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

    v8 = [[BMVisualIntelligenceCameraLookupEventRequestMetadata alloc] initByReadFrom:v7];
    v4 = v8;
    if (v8)
    {
      v8[4] = 0;
    }
  }

  return v4;
}

@end