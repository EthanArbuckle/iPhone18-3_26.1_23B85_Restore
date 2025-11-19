@interface BMSiriCompanionContextAppMetadata
+ (id)columns;
+ (id)eventWithData:(id)a3 dataVersion:(unsigned int)a4;
+ (id)protoFields;
- (BMSiriCompanionContextAppMetadata)initWithAppBundleId:(id)a3 mediaCategories:(id)a4 subscriptionStatus:(id)a5 localizedAppName:(id)a6;
- (BMSiriCompanionContextAppMetadata)initWithJSONDictionary:(id)a3 error:(id *)a4;
- (BOOL)isEqual:(id)a3;
- (NSString)description;
- (id)_mediaCategoriesJSONArray;
- (id)initByReadFrom:(id)a3;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)a3;
@end

@implementation BMSiriCompanionContextAppMetadata

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [(BMSiriCompanionContextAppMetadata *)self appBundleId];
    v7 = [v5 appBundleId];
    v8 = v7;
    if (v6 == v7)
    {
    }

    else
    {
      v9 = [(BMSiriCompanionContextAppMetadata *)self appBundleId];
      v10 = [v5 appBundleId];
      v11 = [v9 isEqual:v10];

      if (!v11)
      {
        goto LABEL_18;
      }
    }

    v13 = [(BMSiriCompanionContextAppMetadata *)self mediaCategories];
    v14 = [v5 mediaCategories];
    v15 = v14;
    if (v13 == v14)
    {
    }

    else
    {
      v16 = [(BMSiriCompanionContextAppMetadata *)self mediaCategories];
      v17 = [v5 mediaCategories];
      v18 = [v16 isEqual:v17];

      if (!v18)
      {
        goto LABEL_18;
      }
    }

    if (!-[BMSiriCompanionContextAppMetadata hasSubscriptionStatus](self, "hasSubscriptionStatus") && ![v5 hasSubscriptionStatus] || -[BMSiriCompanionContextAppMetadata hasSubscriptionStatus](self, "hasSubscriptionStatus") && objc_msgSend(v5, "hasSubscriptionStatus") && (v19 = -[BMSiriCompanionContextAppMetadata subscriptionStatus](self, "subscriptionStatus"), v19 == objc_msgSend(v5, "subscriptionStatus")))
    {
      v20 = [(BMSiriCompanionContextAppMetadata *)self localizedAppName];
      v21 = [v5 localizedAppName];
      if (v20 == v21)
      {
        v12 = 1;
      }

      else
      {
        v22 = [(BMSiriCompanionContextAppMetadata *)self localizedAppName];
        v23 = [v5 localizedAppName];
        v12 = [v22 isEqual:v23];
      }

      goto LABEL_19;
    }

LABEL_18:
    v12 = 0;
LABEL_19:

    goto LABEL_20;
  }

  v12 = 0;
LABEL_20:

  return v12;
}

- (id)jsonDictionary
{
  v15[4] = *MEMORY[0x1E69E9840];
  v3 = [(BMSiriCompanionContextAppMetadata *)self appBundleId];
  v4 = [(BMSiriCompanionContextAppMetadata *)self _mediaCategoriesJSONArray];
  if ([(BMSiriCompanionContextAppMetadata *)self hasSubscriptionStatus])
  {
    v5 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMSiriCompanionContextAppMetadata subscriptionStatus](self, "subscriptionStatus")}];
  }

  else
  {
    v5 = 0;
  }

  v6 = [(BMSiriCompanionContextAppMetadata *)self localizedAppName];
  v14[0] = @"appBundleId";
  v7 = v3;
  if (!v3)
  {
    v7 = [MEMORY[0x1E695DFB0] null];
  }

  v15[0] = v7;
  v14[1] = @"mediaCategories";
  v8 = v4;
  if (!v4)
  {
    v8 = [MEMORY[0x1E695DFB0] null];
  }

  v15[1] = v8;
  v14[2] = @"subscriptionStatus";
  v9 = v5;
  if (!v5)
  {
    v9 = [MEMORY[0x1E695DFB0] null];
  }

  v15[2] = v9;
  v14[3] = @"localizedAppName";
  v10 = v6;
  if (!v6)
  {
    v10 = [MEMORY[0x1E695DFB0] null];
  }

  v15[3] = v10;
  v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:v14 count:4];
  if (v6)
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
  v12 = *MEMORY[0x1E69E9840];

  return v11;
}

- (id)_mediaCategoriesJSONArray
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = [(BMSiriCompanionContextAppMetadata *)self mediaCategories];
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

- (BMSiriCompanionContextAppMetadata)initWithJSONDictionary:(id)a3 error:(id *)a4
{
  v64[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [v6 objectForKeyedSubscript:@"appBundleId"];
  if (v7 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      if (a4)
      {
        v28 = objc_alloc(MEMORY[0x1E696ABC0]);
        v29 = *MEMORY[0x1E698F240];
        v63 = *MEMORY[0x1E696A578];
        v8 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"appBundleId"];
        v64[0] = v8;
        v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v64 forKeys:&v63 count:1];
        v25 = 0;
        v27 = 0;
        *a4 = [v28 initWithDomain:v29 code:2 userInfo:v11];
        goto LABEL_44;
      }

      v25 = 0;
      v27 = 0;
      goto LABEL_46;
    }

    v46 = v7;
  }

  else
  {
    v46 = 0;
  }

  v8 = [v6 objectForKeyedSubscript:@"mediaCategories"];
  v9 = [MEMORY[0x1E695DFB0] null];
  v10 = [v8 isEqual:v9];

  v45 = a4;
  if (v10)
  {
    v43 = v7;
    v47 = self;

    v8 = 0;
  }

  else
  {
    if (v8)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (a4)
        {
          v30 = objc_alloc(MEMORY[0x1E696ABC0]);
          v31 = *MEMORY[0x1E698F240];
          v61 = *MEMORY[0x1E696A578];
          v11 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Expecting %@ as an array", @"mediaCategories"];
          v62 = v11;
          [MEMORY[0x1E695DF20] dictionaryWithObjects:&v62 forKeys:&v61 count:1];
          v18 = v32 = a4;
          v33 = [v30 initWithDomain:v31 code:2 userInfo:v18];
          v27 = 0;
          *v32 = v33;
          v25 = v46;
          goto LABEL_43;
        }

        v27 = 0;
        v25 = v46;
        goto LABEL_45;
      }
    }

    v43 = v7;
    v47 = self;
  }

  v11 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v8, "count")}];
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  v8 = v8;
  v12 = [v8 countByEnumeratingWithState:&v48 objects:v60 count:16];
  if (!v12)
  {
    goto LABEL_18;
  }

  v13 = v12;
  v14 = *v49;
  while (2)
  {
    for (i = 0; i != v13; ++i)
    {
      if (*v49 != v14)
      {
        objc_enumerationMutation(v8);
      }

      v16 = *(*(&v48 + 1) + 8 * i);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        if (v45)
        {
          v19 = objc_alloc(MEMORY[0x1E696ABC0]);
          v20 = *MEMORY[0x1E698F240];
          v58 = *MEMORY[0x1E696A578];
          v17 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type null for element of %@, must not be null", @"mediaCategories"];
          v59 = v17;
          v21 = MEMORY[0x1E695DF20];
          v22 = &v59;
          v23 = &v58;
LABEL_27:
          v24 = [v21 dictionaryWithObjects:v22 forKeys:v23 count:1];
          v25 = v46;
          v26 = [v19 initWithDomain:v20 code:2 userInfo:v24];
          v27 = 0;
          v7 = v43;
          *v45 = v26;
          v18 = v8;
          goto LABEL_41;
        }

LABEL_28:
        v27 = 0;
        v18 = v8;
        v25 = v46;
        self = v47;
        v7 = v43;
        goto LABEL_43;
      }

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (v45)
        {
          v19 = objc_alloc(MEMORY[0x1E696ABC0]);
          v20 = *MEMORY[0x1E698F240];
          v56 = *MEMORY[0x1E696A578];
          v17 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"mediaCategories"];
          v57 = v17;
          v21 = MEMORY[0x1E695DF20];
          v22 = &v57;
          v23 = &v56;
          goto LABEL_27;
        }

        goto LABEL_28;
      }

      [v11 addObject:v16];
    }

    v13 = [v8 countByEnumeratingWithState:&v48 objects:v60 count:16];
    if (v13)
    {
      continue;
    }

    break;
  }

LABEL_18:

  v17 = [v6 objectForKeyedSubscript:@"subscriptionStatus"];
  if (!v17)
  {
    v18 = 0;
    v7 = v43;
    goto LABEL_36;
  }

  objc_opt_class();
  v7 = v43;
  if (objc_opt_isKindOfClass())
  {
    v18 = 0;
LABEL_36:
    v34 = [v6 objectForKeyedSubscript:@"localizedAppName"];
    if (!v34 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v24 = 0;
      v25 = v46;
      goto LABEL_39;
    }

    objc_opt_class();
    v25 = v46;
    if (objc_opt_isKindOfClass())
    {
      v24 = v34;
LABEL_39:
      v27 = [(BMSiriCompanionContextAppMetadata *)v47 initWithAppBundleId:v25 mediaCategories:v11 subscriptionStatus:v18 localizedAppName:v24];
      v47 = v27;
    }

    else
    {
      if (v45)
      {
        v44 = objc_alloc(MEMORY[0x1E696ABC0]);
        v42 = *MEMORY[0x1E698F240];
        v52 = *MEMORY[0x1E696A578];
        v39 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"localizedAppName"];
        v53 = v39;
        v40 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v53 forKeys:&v52 count:1];
        *v45 = [v44 initWithDomain:v42 code:2 userInfo:v40];
      }

      v24 = 0;
      v27 = 0;
    }

LABEL_40:

LABEL_41:
    self = v47;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v18 = v17;
      goto LABEL_36;
    }

    if (v45)
    {
      v41 = objc_alloc(MEMORY[0x1E696ABC0]);
      v37 = *MEMORY[0x1E698F240];
      v54 = *MEMORY[0x1E696A578];
      v24 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"subscriptionStatus"];
      v55 = v24;
      v34 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v55 forKeys:&v54 count:1];
      v38 = [v41 initWithDomain:v37 code:2 userInfo:v34];
      v18 = 0;
      v27 = 0;
      *v45 = v38;
      v25 = v46;
      goto LABEL_40;
    }

    v18 = 0;
    v27 = 0;
    v25 = v46;
    self = v47;
  }

LABEL_43:
LABEL_44:

LABEL_45:
LABEL_46:

  v35 = *MEMORY[0x1E69E9840];
  return v27;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMSiriCompanionContextAppMetadata *)self writeTo:v3];
  v4 = [v3 immutableData];

  return v4;
}

- (void)writeTo:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (self->_appBundleId)
  {
    PBDataWriterWriteStringField();
  }

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = self->_mediaCategories;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      v9 = 0;
      do
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v13 + 1) + 8 * v9);
        PBDataWriterWriteStringField();
        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSArray *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  if (self->_hasSubscriptionStatus)
  {
    subscriptionStatus = self->_subscriptionStatus;
    PBDataWriterWriteInt32Field();
  }

  if (self->_localizedAppName)
  {
    PBDataWriterWriteStringField();
  }

  v12 = *MEMORY[0x1E69E9840];
}

- (id)initByReadFrom:(id)a3
{
  v4 = a3;
  v35.receiver = self;
  v35.super_class = BMSiriCompanionContextAppMetadata;
  v5 = [(BMEventBase *)&v35 init];
  if (!v5)
  {
    goto LABEL_46;
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
        v36 = 0;
        v11 = [v4 position] + 1;
        if (v11 >= [v4 position] && (v12 = objc_msgSend(v4, "position") + 1, v12 <= objc_msgSend(v4, "length")))
        {
          v13 = [v4 data];
          [v13 getBytes:&v36 range:{objc_msgSend(v4, "position"), 1}];

          [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
        }

        else
        {
          [v4 _setError];
        }

        v10 |= (v36 & 0x7F) << v8;
        if ((v36 & 0x80) == 0)
        {
          break;
        }

        v8 += 7;
        v14 = v9++ >= 9;
        if (v14)
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

      v16 = v15 >> 3;
      if ((v15 >> 3) > 2)
      {
        if (v16 == 3)
        {
          v22 = 0;
          v23 = 0;
          v24 = 0;
          v5->_hasSubscriptionStatus = 1;
          while (1)
          {
            v36 = 0;
            v25 = [v4 position] + 1;
            if (v25 >= [v4 position] && (v26 = objc_msgSend(v4, "position") + 1, v26 <= objc_msgSend(v4, "length")))
            {
              v27 = [v4 data];
              [v27 getBytes:&v36 range:{objc_msgSend(v4, "position"), 1}];

              [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
            }

            else
            {
              [v4 _setError];
            }

            v24 |= (v36 & 0x7F) << v22;
            if ((v36 & 0x80) == 0)
            {
              break;
            }

            v22 += 7;
            v14 = v23++ >= 9;
            if (v14)
            {
              v28 = 0;
              goto LABEL_42;
            }
          }

          if ([v4 hasError])
          {
            v28 = 0;
          }

          else
          {
            v28 = v24;
          }

LABEL_42:
          v5->_subscriptionStatus = v28;
          goto LABEL_43;
        }

        if (v16 == 4)
        {
          v19 = PBReaderReadString();
          v20 = 48;
LABEL_29:
          v21 = *(&v5->super.super.isa + v20);
          *(&v5->super.super.isa + v20) = v19;

          goto LABEL_43;
        }
      }

      else
      {
        if (v16 == 1)
        {
          v19 = PBReaderReadString();
          v20 = 32;
          goto LABEL_29;
        }

        if (v16 == 2)
        {
          v17 = PBReaderReadString();
          if (!v17)
          {
            goto LABEL_48;
          }

          v18 = v17;
          [v6 addObject:v17];

          goto LABEL_43;
        }
      }

      if (!PBReaderSkipValueWithTag())
      {
LABEL_48:

        goto LABEL_45;
      }

LABEL_43:
      v29 = [v4 position];
    }

    while (v29 < [v4 length]);
  }

  v30 = [v6 copy];
  mediaCategories = v5->_mediaCategories;
  v5->_mediaCategories = v30;

  v32 = [v4 hasError];
  if (v32)
  {
LABEL_45:
    v33 = 0;
  }

  else
  {
LABEL_46:
    v33 = v5;
  }

  return v33;
}

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = [(BMSiriCompanionContextAppMetadata *)self appBundleId];
  v5 = [(BMSiriCompanionContextAppMetadata *)self mediaCategories];
  v6 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMSiriCompanionContextAppMetadata subscriptionStatus](self, "subscriptionStatus")}];
  v7 = [(BMSiriCompanionContextAppMetadata *)self localizedAppName];
  v8 = [v3 initWithFormat:@"BMSiriCompanionContextAppMetadata with appBundleId: %@, mediaCategories: %@, subscriptionStatus: %@, localizedAppName: %@", v4, v5, v6, v7];

  return v8;
}

- (BMSiriCompanionContextAppMetadata)initWithAppBundleId:(id)a3 mediaCategories:(id)a4 subscriptionStatus:(id)a5 localizedAppName:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v18.receiver = self;
  v18.super_class = BMSiriCompanionContextAppMetadata;
  v15 = [(BMEventBase *)&v18 init];
  if (v15)
  {
    v15->_dataVersion = [objc_opt_class() latestDataVersion];
    objc_storeStrong(&v15->_appBundleId, a3);
    objc_storeStrong(&v15->_mediaCategories, a4);
    if (v13)
    {
      v15->_hasSubscriptionStatus = 1;
      v16 = [v13 intValue];
    }

    else
    {
      v15->_hasSubscriptionStatus = 0;
      v16 = -1;
    }

    v15->_subscriptionStatus = v16;
    objc_storeStrong(&v15->_localizedAppName, a6);
  }

  return v15;
}

+ (id)protoFields
{
  v9[4] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"appBundleId" number:1 type:13 subMessageClass:0];
  v9[0] = v2;
  v3 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"mediaCategories" number:2 type:13 subMessageClass:0];
  v9[1] = v3;
  v4 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"subscriptionStatus" number:3 type:2 subMessageClass:0];
  v9[2] = v4;
  v5 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"localizedAppName" number:4 type:13 subMessageClass:0];
  v9[3] = v5;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:4];

  v7 = *MEMORY[0x1E69E9840];

  return v6;
}

+ (id)columns
{
  v9[4] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"appBundleId" dataType:2 requestOnly:0 fieldNumber:1 protoDataType:13 convertedType:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"mediaCategories_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_50307];
  v4 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"subscriptionStatus" dataType:0 requestOnly:0 fieldNumber:3 protoDataType:2 convertedType:0];
  v5 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"localizedAppName" dataType:2 requestOnly:0 fieldNumber:4 protoDataType:13 convertedType:0];
  v9[0] = v2;
  v9[1] = v3;
  v9[2] = v4;
  v9[3] = v5;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:4];

  v7 = *MEMORY[0x1E69E9840];

  return v6;
}

id __44__BMSiriCompanionContextAppMetadata_columns__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 eventBodyKeepingBackingData:1];
  v3 = [v2 _mediaCategoriesJSONArray];
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

    v8 = [[BMSiriCompanionContextAppMetadata alloc] initByReadFrom:v7];
    v4 = v8;
    if (v8)
    {
      v8[5] = 0;
    }
  }

  return v4;
}

@end