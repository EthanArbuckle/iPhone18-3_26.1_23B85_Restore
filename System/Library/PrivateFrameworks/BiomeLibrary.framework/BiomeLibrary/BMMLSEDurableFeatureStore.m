@interface BMMLSEDurableFeatureStore
+ (id)columns;
+ (id)eventWithData:(id)a3 dataVersion:(unsigned int)a4;
+ (id)protoFields;
- (BMMLSEDurableFeatureStore)initWithItemIdentifier:(id)a3 featureName:(int)a4 featureValue:(id)a5 featureVersion:(id)a6;
- (BMMLSEDurableFeatureStore)initWithJSONDictionary:(id)a3 error:(id *)a4;
- (BOOL)isEqual:(id)a3;
- (NSString)description;
- (id)initByReadFrom:(id)a3;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)a3;
@end

@implementation BMMLSEDurableFeatureStore

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [(BMMLSEDurableFeatureStore *)self itemIdentifier];
    v7 = [v5 itemIdentifier];
    v8 = v7;
    if (v6 == v7)
    {
    }

    else
    {
      v9 = [(BMMLSEDurableFeatureStore *)self itemIdentifier];
      v10 = [v5 itemIdentifier];
      v11 = [v9 isEqual:v10];

      if (!v11)
      {
        goto LABEL_17;
      }
    }

    v13 = [(BMMLSEDurableFeatureStore *)self featureName];
    if (v13 == [v5 featureName])
    {
      v14 = [(BMMLSEDurableFeatureStore *)self featureValue];
      v15 = [v5 featureValue];
      v16 = v15;
      if (v14 == v15)
      {
      }

      else
      {
        v17 = [(BMMLSEDurableFeatureStore *)self featureValue];
        v18 = [v5 featureValue];
        v19 = [v17 isEqual:v18];

        if (!v19)
        {
          goto LABEL_17;
        }
      }

      if (!-[BMMLSEDurableFeatureStore hasFeatureVersion](self, "hasFeatureVersion") && ![v5 hasFeatureVersion])
      {
        v12 = 1;
        goto LABEL_18;
      }

      if (-[BMMLSEDurableFeatureStore hasFeatureVersion](self, "hasFeatureVersion") && [v5 hasFeatureVersion])
      {
        v20 = [(BMMLSEDurableFeatureStore *)self featureVersion];
        v12 = v20 == [v5 featureVersion];
LABEL_18:

        goto LABEL_19;
      }
    }

LABEL_17:
    v12 = 0;
    goto LABEL_18;
  }

  v12 = 0;
LABEL_19:

  return v12;
}

- (id)jsonDictionary
{
  v16[4] = *MEMORY[0x1E69E9840];
  v3 = [(BMMLSEDurableFeatureStore *)self itemIdentifier];
  v4 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMMLSEDurableFeatureStore featureName](self, "featureName")}];
  v5 = [(BMMLSEDurableFeatureStore *)self featureValue];
  v6 = [v5 jsonDictionary];

  if ([(BMMLSEDurableFeatureStore *)self hasFeatureVersion])
  {
    v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMMLSEDurableFeatureStore featureVersion](self, "featureVersion")}];
  }

  else
  {
    v7 = 0;
  }

  v15[0] = @"itemIdentifier";
  v8 = v3;
  if (!v3)
  {
    v8 = [MEMORY[0x1E695DFB0] null];
  }

  v16[0] = v8;
  v15[1] = @"featureName";
  v9 = v4;
  if (!v4)
  {
    v9 = [MEMORY[0x1E695DFB0] null];
  }

  v16[1] = v9;
  v15[2] = @"featureValue";
  v10 = v6;
  if (!v6)
  {
    v10 = [MEMORY[0x1E695DFB0] null];
  }

  v16[2] = v10;
  v15[3] = @"featureVersion";
  v11 = v7;
  if (!v7)
  {
    v11 = [MEMORY[0x1E695DFB0] null];
  }

  v16[3] = v11;
  v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:v15 count:4];
  if (v7)
  {
    if (v6)
    {
      goto LABEL_14;
    }
  }

  else
  {

    if (v6)
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

- (BMMLSEDurableFeatureStore)initWithJSONDictionary:(id)a3 error:(id *)a4
{
  v42[1] = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = [v5 objectForKeyedSubscript:@"itemIdentifier"];
  if (v6 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      if (!a4)
      {
        v33 = 0;
        v12 = 0;
        v17 = self;
        goto LABEL_42;
      }

      v10 = objc_alloc(MEMORY[0x1E696ABC0]);
      v11 = *MEMORY[0x1E698F240];
      v41 = *MEMORY[0x1E696A578];
      v8 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"itemIdentifier"];
      v42[0] = v8;
      v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v42 forKeys:&v41 count:1];
      v33 = 0;
      v12 = 0;
      *a4 = [v10 initWithDomain:v11 code:2 userInfo:v7];
      goto LABEL_47;
    }

    v33 = v6;
  }

  else
  {
    v33 = 0;
  }

  v7 = [v5 objectForKeyedSubscript:@"featureName"];
  if (v7)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v9 = v7;
LABEL_15:
        v8 = v9;
        goto LABEL_16;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v9 = [MEMORY[0x1E696AD98] numberWithInt:BMMLSEDurableFeatureStorefeatureNameFromString(v7)];
        goto LABEL_15;
      }

      if (a4)
      {
        v24 = objc_alloc(MEMORY[0x1E696ABC0]);
        v25 = *MEMORY[0x1E698F240];
        v39 = *MEMORY[0x1E696A578];
        v13 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (corresponding to enum value), or NSString (string version of enum)", objc_opt_class(), @"featureName"];
        v40 = v13;
        v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v40 forKeys:&v39 count:1];
        v26 = [v24 initWithDomain:v25 code:2 userInfo:v14];
        v8 = 0;
        v12 = 0;
        *a4 = v26;
        goto LABEL_38;
      }

      v8 = 0;
      v12 = 0;
LABEL_47:
      v17 = self;
      goto LABEL_41;
    }
  }

  v8 = 0;
LABEL_16:
  v13 = [v5 objectForKeyedSubscript:@"featureValue"];
  if (v13)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v18 = v13;
        v34 = 0;
        v14 = [[BMMLSEDurableFeatureStoreFeatureValue alloc] initWithJSONDictionary:v18 error:&v34];
        v19 = v34;
        if (!v19)
        {

          goto LABEL_19;
        }

        if (a4)
        {
          v19 = v19;
          *a4 = v19;
        }

        v12 = 0;
        v13 = v18;
      }

      else
      {
        if (!a4)
        {
          v12 = 0;
          v17 = self;
          goto LABEL_40;
        }

        v30 = objc_alloc(MEMORY[0x1E696ABC0]);
        v20 = *MEMORY[0x1E698F240];
        v37 = *MEMORY[0x1E696A578];
        v14 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", objc_opt_class(), @"featureValue"];
        v38 = v14;
        v21 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v38 forKeys:&v37 count:1];
        *a4 = [v30 initWithDomain:v20 code:2 userInfo:v21];

        v12 = 0;
      }

LABEL_38:
      v17 = self;
      goto LABEL_39;
    }
  }

  v14 = 0;
LABEL_19:
  v15 = [v5 objectForKeyedSubscript:@"featureVersion"];
  if (v15 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      if (a4)
      {
        v31 = objc_alloc(MEMORY[0x1E696ABC0]);
        v29 = *MEMORY[0x1E698F240];
        v35 = *MEMORY[0x1E696A578];
        v22 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"featureVersion"];
        v36 = v22;
        v23 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v36 forKeys:&v35 count:1];
        *a4 = [v31 initWithDomain:v29 code:2 userInfo:v23];
      }

      v16 = 0;
      v12 = 0;
      v17 = self;
      goto LABEL_23;
    }

    v16 = v15;
  }

  else
  {
    v16 = 0;
  }

  v17 = -[BMMLSEDurableFeatureStore initWithItemIdentifier:featureName:featureValue:featureVersion:](self, "initWithItemIdentifier:featureName:featureValue:featureVersion:", v33, [v8 intValue], v14, v16);
  v12 = v17;
LABEL_23:

LABEL_39:
LABEL_40:

LABEL_41:
LABEL_42:

  v27 = *MEMORY[0x1E69E9840];
  return v12;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMMLSEDurableFeatureStore *)self writeTo:v3];
  v4 = [v3 immutableData];

  return v4;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  if (self->_itemIdentifier)
  {
    PBDataWriterWriteStringField();
  }

  featureName = self->_featureName;
  PBDataWriterWriteUint32Field();
  if (self->_featureValue)
  {
    PBDataWriterPlaceMark();
    [(BMMLSEDurableFeatureStoreFeatureValue *)self->_featureValue writeTo:v4];
    PBDataWriterRecallMark();
  }

  if (self->_hasFeatureVersion)
  {
    featureVersion = self->_featureVersion;
    PBDataWriterWriteUint32Field();
  }
}

- (id)initByReadFrom:(id)a3
{
  v4 = a3;
  v37.receiver = self;
  v37.super_class = BMMLSEDurableFeatureStore;
  v5 = [(BMEventBase *)&v37 init];
  if (!v5)
  {
    goto LABEL_58;
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
        LOBYTE(v38[0]) = 0;
        v10 = [v4 position] + 1;
        if (v10 >= [v4 position] && (v11 = objc_msgSend(v4, "position") + 1, v11 <= objc_msgSend(v4, "length")))
        {
          v12 = [v4 data];
          [v12 getBytes:v38 range:{objc_msgSend(v4, "position"), 1}];

          [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
        }

        else
        {
          [v4 _setError];
        }

        v9 |= (v38[0] & 0x7F) << v7;
        if ((v38[0] & 0x80) == 0)
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

      v14 = [v4 hasError] ? 0 : v9;
LABEL_16:
      if (([v4 hasError] & 1) != 0 || (v14 & 7) == 4)
      {
        break;
      }

      v15 = v14 >> 3;
      if ((v14 >> 3) > 3)
      {
        if (v15 == 4)
        {
          v38[0] = 0;
          v38[1] = 0;
          if (!PBReaderPlaceMark())
          {
            goto LABEL_57;
          }

          v32 = [[BMMLSEDurableFeatureStoreFeatureValue alloc] initByReadFrom:v4];
          if (!v32)
          {
            goto LABEL_57;
          }

          featureValue = v5->_featureValue;
          v5->_featureValue = v32;

          PBReaderRecallMark();
        }

        else
        {
          if (v15 != 5)
          {
LABEL_41:
            if ((PBReaderSkipValueWithTag() & 1) == 0)
            {
              goto LABEL_57;
            }

            goto LABEL_55;
          }

          v23 = 0;
          v24 = 0;
          v25 = 0;
          v5->_hasFeatureVersion = 1;
          while (1)
          {
            LOBYTE(v38[0]) = 0;
            v26 = [v4 position] + 1;
            if (v26 >= [v4 position] && (v27 = objc_msgSend(v4, "position") + 1, v27 <= objc_msgSend(v4, "length")))
            {
              v28 = [v4 data];
              [v28 getBytes:v38 range:{objc_msgSend(v4, "position"), 1}];

              [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
            }

            else
            {
              [v4 _setError];
            }

            v25 |= (v38[0] & 0x7F) << v23;
            if ((v38[0] & 0x80) == 0)
            {
              break;
            }

            v23 += 7;
            v13 = v24++ >= 9;
            if (v13)
            {
              v29 = 0;
              goto LABEL_54;
            }
          }

          if ([v4 hasError])
          {
            v29 = 0;
          }

          else
          {
            v29 = v25;
          }

LABEL_54:
          v5->_featureVersion = v29;
        }
      }

      else if (v15 == 2)
      {
        v30 = PBReaderReadString();
        itemIdentifier = v5->_itemIdentifier;
        v5->_itemIdentifier = v30;
      }

      else
      {
        if (v15 != 3)
        {
          goto LABEL_41;
        }

        v16 = 0;
        v17 = 0;
        v18 = 0;
        while (1)
        {
          LOBYTE(v38[0]) = 0;
          v19 = [v4 position] + 1;
          if (v19 >= [v4 position] && (v20 = objc_msgSend(v4, "position") + 1, v20 <= objc_msgSend(v4, "length")))
          {
            v21 = [v4 data];
            [v21 getBytes:v38 range:{objc_msgSend(v4, "position"), 1}];

            [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
          }

          else
          {
            [v4 _setError];
          }

          v18 |= (v38[0] & 0x7F) << v16;
          if ((v38[0] & 0x80) == 0)
          {
            break;
          }

          v16 += 7;
          if (v17++ > 8)
          {
            goto LABEL_49;
          }
        }

        if (([v4 hasError] & 1) != 0 || v18 > 0x1FD)
        {
LABEL_49:
          LODWORD(v18) = 0;
        }

        v5->_featureName = v18;
      }

LABEL_55:
      v34 = [v4 position];
    }

    while (v34 < [v4 length]);
  }

  if ([v4 hasError])
  {
LABEL_57:
    v35 = 0;
  }

  else
  {
LABEL_58:
    v35 = v5;
  }

  return v35;
}

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = [(BMMLSEDurableFeatureStore *)self itemIdentifier];
  v5 = BMMLSEDurableFeatureStorefeatureNameAsString([(BMMLSEDurableFeatureStore *)self featureName]);
  v6 = [(BMMLSEDurableFeatureStore *)self featureValue];
  v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMMLSEDurableFeatureStore featureVersion](self, "featureVersion")}];
  v8 = [v3 initWithFormat:@"BMMLSEDurableFeatureStore with itemIdentifier: %@, featureName: %@, featureValue: %@, featureVersion: %@", v4, v5, v6, v7];

  return v8;
}

- (BMMLSEDurableFeatureStore)initWithItemIdentifier:(id)a3 featureName:(int)a4 featureValue:(id)a5 featureVersion:(id)a6
{
  v11 = a3;
  v12 = a5;
  v13 = a6;
  v17.receiver = self;
  v17.super_class = BMMLSEDurableFeatureStore;
  v14 = [(BMEventBase *)&v17 init];
  if (v14)
  {
    v14->_dataVersion = [objc_opt_class() latestDataVersion];
    objc_storeStrong(&v14->_itemIdentifier, a3);
    v14->_featureName = a4;
    objc_storeStrong(&v14->_featureValue, a5);
    if (v13)
    {
      v14->_hasFeatureVersion = 1;
      v15 = [v13 unsignedIntValue];
    }

    else
    {
      v15 = 0;
      v14->_hasFeatureVersion = 0;
    }

    v14->_featureVersion = v15;
  }

  return v14;
}

+ (id)protoFields
{
  v10[5] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"featureEntryType" number:1 type:4 subMessageClass:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"itemIdentifier" number:2 type:13 subMessageClass:{0, v2}];
  v10[1] = v3;
  v4 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"featureName" number:3 type:4 subMessageClass:0];
  v10[2] = v4;
  v5 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"featureValue" number:4 type:14 subMessageClass:objc_opt_class()];
  v10[3] = v5;
  v6 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"featureVersion" number:5 type:4 subMessageClass:0];
  v10[4] = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:5];

  v8 = *MEMORY[0x1E69E9840];

  return v7;
}

+ (id)columns
{
  v10[5] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"featureEntryType" dataType:0 requestOnly:0 fieldNumber:1 protoDataType:4 convertedType:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"itemIdentifier" dataType:2 requestOnly:0 fieldNumber:2 protoDataType:13 convertedType:0];
  v4 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"featureName" dataType:0 requestOnly:0 fieldNumber:3 protoDataType:4 convertedType:0];
  v5 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"featureValue_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_1876];
  v6 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"featureVersion" dataType:0 requestOnly:0 fieldNumber:5 protoDataType:4 convertedType:0];
  v10[0] = v2;
  v10[1] = v3;
  v10[2] = v4;
  v10[3] = v5;
  v10[4] = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:5];

  v8 = *MEMORY[0x1E69E9840];

  return v7;
}

id __36__BMMLSEDurableFeatureStore_columns__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 eventBodyKeepingBackingData:1];
  v3 = [v2 featureValue];
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

    v8 = [[BMMLSEDurableFeatureStore alloc] initByReadFrom:v7];
    v4 = v8;
    if (v8)
    {
      v8[5] = 0;
    }
  }

  return v4;
}

@end