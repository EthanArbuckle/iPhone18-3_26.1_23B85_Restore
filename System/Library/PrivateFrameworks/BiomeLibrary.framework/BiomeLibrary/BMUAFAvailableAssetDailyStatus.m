@interface BMUAFAvailableAssetDailyStatus
+ (id)columns;
+ (id)eventWithData:(id)a3 dataVersion:(unsigned int)a4;
+ (id)protoFields;
- (BMUAFAvailableAssetDailyStatus)initWithAssetSetStatus:(id)a3 statusReason:(int)a4;
- (BMUAFAvailableAssetDailyStatus)initWithJSONDictionary:(id)a3 error:(id *)a4;
- (BOOL)isEqual:(id)a3;
- (NSString)description;
- (id)_assetSetStatusJSONArray;
- (id)initByReadFrom:(id)a3;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)a3;
@end

@implementation BMUAFAvailableAssetDailyStatus

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [(BMUAFAvailableAssetDailyStatus *)self assetSetStatus];
    v7 = [v5 assetSetStatus];
    v8 = v7;
    if (v6 == v7)
    {
    }

    else
    {
      v9 = [(BMUAFAvailableAssetDailyStatus *)self assetSetStatus];
      v10 = [v5 assetSetStatus];
      v11 = [v9 isEqual:v10];

      if (!v11)
      {
        v12 = 0;
LABEL_8:

        goto LABEL_9;
      }
    }

    v13 = [(BMUAFAvailableAssetDailyStatus *)self statusReason];
    v12 = v13 == [v5 statusReason];
    goto LABEL_8;
  }

  v12 = 0;
LABEL_9:

  return v12;
}

- (id)jsonDictionary
{
  v11[2] = *MEMORY[0x1E69E9840];
  v3 = [(BMUAFAvailableAssetDailyStatus *)self _assetSetStatusJSONArray];
  v4 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMUAFAvailableAssetDailyStatus statusReason](self, "statusReason")}];
  v10[0] = @"assetSetStatus";
  v5 = v3;
  if (!v3)
  {
    v5 = [MEMORY[0x1E695DFB0] null];
  }

  v10[1] = @"statusReason";
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

- (id)_assetSetStatusJSONArray
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = [(BMUAFAvailableAssetDailyStatus *)self assetSetStatus];
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [*(*(&v12 + 1) + 8 * i) jsonDictionary];
        [v3 addObject:v9];
      }

      v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  v10 = *MEMORY[0x1E69E9840];

  return v3;
}

- (BMUAFAvailableAssetDailyStatus)initWithJSONDictionary:(id)a3 error:(id *)a4
{
  v60[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [v6 objectForKeyedSubscript:@"assetSetStatus"];
  v8 = [MEMORY[0x1E695DFB0] null];
  v9 = [v7 isEqual:v8];

  if (v9)
  {
    v43 = a4;
    v44 = v6;
    v45 = self;

    v7 = 0;
  }

  else
  {
    if (v7)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (a4)
        {
          v30 = objc_alloc(MEMORY[0x1E696ABC0]);
          v31 = *MEMORY[0x1E698F240];
          v59 = *MEMORY[0x1E696A578];
          v46 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Expecting %@ as an array", @"assetSetStatus"];
          v60[0] = v46;
          v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v60 forKeys:&v59 count:1];
          v32 = [v30 initWithDomain:v31 code:2 userInfo:v19];
          v29 = 0;
          *a4 = v32;
          goto LABEL_39;
        }

        v29 = 0;
        goto LABEL_40;
      }
    }

    v43 = a4;
    v44 = v6;
    v45 = self;
  }

  v46 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v7, "count")}];
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  v7 = v7;
  v10 = [v7 countByEnumeratingWithState:&v48 objects:v58 count:16];
  if (!v10)
  {
    goto LABEL_16;
  }

  v11 = v10;
  v12 = *v49;
  while (2)
  {
    for (i = 0; i != v11; ++i)
    {
      if (*v49 != v12)
      {
        objc_enumerationMutation(v7);
      }

      v14 = *(*(&v48 + 1) + 8 * i);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v20 = v43;
        if (v43)
        {
          v21 = objc_alloc(MEMORY[0x1E696ABC0]);
          v22 = *MEMORY[0x1E698F240];
          v56 = *MEMORY[0x1E696A578];
          v15 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type null for element of %@, must not be null", @"assetSetStatus"];
          v57 = v15;
          v23 = MEMORY[0x1E695DF20];
          v24 = &v57;
          v25 = &v56;
LABEL_23:
          v26 = [v23 dictionaryWithObjects:v24 forKeys:v25 count:1];
          *v20 = [v21 initWithDomain:v22 code:2 userInfo:v26];

LABEL_27:
          v29 = 0;
          v19 = v7;
          v6 = v44;
          self = v45;
          goto LABEL_38;
        }

LABEL_30:
        v29 = 0;
        v19 = v7;
        v6 = v44;
        self = v45;
        goto LABEL_39;
      }

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v20 = v43;
        if (v43)
        {
          v21 = objc_alloc(MEMORY[0x1E696ABC0]);
          v22 = *MEMORY[0x1E698F240];
          v54 = *MEMORY[0x1E696A578];
          v15 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", objc_opt_class(), @"assetSetStatus"];
          v55 = v15;
          v23 = MEMORY[0x1E695DF20];
          v24 = &v55;
          v25 = &v54;
          goto LABEL_23;
        }

        goto LABEL_30;
      }

      v15 = v14;
      v16 = [BMUAFAssetSetStatus alloc];
      v47 = 0;
      v17 = [(BMUAFAssetSetStatus *)v16 initWithJSONDictionary:v15 error:&v47];
      v18 = v47;
      if (v18)
      {
        v27 = v18;
        if (v43)
        {
          v28 = v18;
          *v43 = v27;
        }

        goto LABEL_27;
      }

      [v46 addObject:v17];
    }

    v11 = [v7 countByEnumeratingWithState:&v48 objects:v58 count:16];
    if (v11)
    {
      continue;
    }

    break;
  }

LABEL_16:

  v6 = v44;
  v15 = [v44 objectForKeyedSubscript:@"statusReason"];
  if (!v15 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v19 = 0;
    goto LABEL_37;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v33 = v15;
LABEL_36:
    v19 = v33;
LABEL_37:
    self = -[BMUAFAvailableAssetDailyStatus initWithAssetSetStatus:statusReason:](v45, "initWithAssetSetStatus:statusReason:", v46, [v19 intValue]);
    v29 = self;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v34 = MEMORY[0x1E696AD98];
      v35 = BMAvailableAssetStatusReasonFromString(v15);
      v36 = v34;
      v6 = v44;
      v33 = [v36 numberWithInt:v35];
      goto LABEL_36;
    }

    if (v43)
    {
      v39 = objc_alloc(MEMORY[0x1E696ABC0]);
      v40 = *MEMORY[0x1E698F240];
      v52 = *MEMORY[0x1E696A578];
      v41 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (corresponding to enum value), or NSString (string version of enum)", objc_opt_class(), @"statusReason"];
      v53 = v41;
      v42 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v53 forKeys:&v52 count:1];
      *v43 = [v39 initWithDomain:v40 code:2 userInfo:v42];
    }

    v19 = 0;
    v29 = 0;
    self = v45;
  }

LABEL_38:

LABEL_39:
LABEL_40:

  v37 = *MEMORY[0x1E69E9840];
  return v29;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMUAFAvailableAssetDailyStatus *)self writeTo:v3];
  v4 = [v3 immutableData];

  return v4;
}

- (void)writeTo:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = self->_assetSetStatus;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v13 + 1) + 8 * i);
        PBDataWriterPlaceMark();
        [v10 writeTo:v4];
        PBDataWriterRecallMark();
      }

      v7 = [(NSArray *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  statusReason = self->_statusReason;
  PBDataWriterWriteUint32Field();

  v12 = *MEMORY[0x1E69E9840];
}

- (id)initByReadFrom:(id)a3
{
  v4 = a3;
  v31.receiver = self;
  v31.super_class = BMUAFAvailableAssetDailyStatus;
  v5 = [(BMEventBase *)&v31 init];
  if (!v5)
  {
    goto LABEL_40;
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
        LOBYTE(v32[0]) = 0;
        v11 = [v4 position] + 1;
        if (v11 >= [v4 position] && (v12 = objc_msgSend(v4, "position") + 1, v12 <= objc_msgSend(v4, "length")))
        {
          v13 = [v4 data];
          [v13 getBytes:v32 range:{objc_msgSend(v4, "position"), 1}];

          [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
        }

        else
        {
          [v4 _setError];
        }

        v10 |= (v32[0] & 0x7F) << v8;
        if ((v32[0] & 0x80) == 0)
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

      if ((v15 >> 3) == 1)
      {
        v32[0] = 0;
        v32[1] = 0;
        if (!PBReaderPlaceMark() || (v23 = [[BMUAFAssetSetStatus alloc] initByReadFrom:v4]) == 0)
        {
LABEL_41:

          goto LABEL_42;
        }

        v24 = v23;
        [v6 addObject:v23];
        PBReaderRecallMark();
      }

      else if ((v15 >> 3) == 2)
      {
        v16 = 0;
        v17 = 0;
        v18 = 0;
        while (1)
        {
          LOBYTE(v32[0]) = 0;
          v19 = [v4 position] + 1;
          if (v19 >= [v4 position] && (v20 = objc_msgSend(v4, "position") + 1, v20 <= objc_msgSend(v4, "length")))
          {
            v21 = [v4 data];
            [v21 getBytes:v32 range:{objc_msgSend(v4, "position"), 1}];

            [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
          }

          else
          {
            [v4 _setError];
          }

          v18 |= (v32[0] & 0x7F) << v16;
          if ((v32[0] & 0x80) == 0)
          {
            break;
          }

          v16 += 7;
          if (v17++ > 8)
          {
            goto LABEL_36;
          }
        }

        if (([v4 hasError] & 1) != 0 || v18 > 7)
        {
LABEL_36:
          LODWORD(v18) = 0;
        }

        v5->_statusReason = v18;
      }

      else if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        goto LABEL_41;
      }

      v25 = [v4 position];
    }

    while (v25 < [v4 length]);
  }

  v26 = [v6 copy];
  assetSetStatus = v5->_assetSetStatus;
  v5->_assetSetStatus = v26;

  v28 = [v4 hasError];
  if (v28)
  {
LABEL_42:
    v29 = 0;
  }

  else
  {
LABEL_40:
    v29 = v5;
  }

  return v29;
}

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = [(BMUAFAvailableAssetDailyStatus *)self assetSetStatus];
  v5 = BMAvailableAssetStatusReasonAsString([(BMUAFAvailableAssetDailyStatus *)self statusReason]);
  v6 = [v3 initWithFormat:@"BMUAFAvailableAssetDailyStatus with assetSetStatus: %@, statusReason: %@", v4, v5];

  return v6;
}

- (BMUAFAvailableAssetDailyStatus)initWithAssetSetStatus:(id)a3 statusReason:(int)a4
{
  v7 = a3;
  v10.receiver = self;
  v10.super_class = BMUAFAvailableAssetDailyStatus;
  v8 = [(BMEventBase *)&v10 init];
  if (v8)
  {
    v8->_dataVersion = [objc_opt_class() latestDataVersion];
    objc_storeStrong(&v8->_assetSetStatus, a3);
    v8->_statusReason = a4;
  }

  return v8;
}

+ (id)protoFields
{
  v7[2] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"assetSetStatus" number:1 type:14 subMessageClass:objc_opt_class()];
  v7[0] = v2;
  v3 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"statusReason" number:2 type:4 subMessageClass:0];
  v7[1] = v3;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:2];

  v5 = *MEMORY[0x1E69E9840];

  return v4;
}

+ (id)columns
{
  v7[2] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"assetSetStatus_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_304_103347];
  v3 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"statusReason" dataType:0 requestOnly:0 fieldNumber:2 protoDataType:4 convertedType:0];
  v7[0] = v2;
  v7[1] = v3;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:2];

  v5 = *MEMORY[0x1E69E9840];

  return v4;
}

id __41__BMUAFAvailableAssetDailyStatus_columns__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 eventBodyKeepingBackingData:1];
  v3 = [v2 _assetSetStatusJSONArray];
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

    v8 = [[BMUAFAvailableAssetDailyStatus alloc] initByReadFrom:v7];
    v4 = v8;
    if (v8)
    {
      v8[4] = 0;
    }
  }

  return v4;
}

@end