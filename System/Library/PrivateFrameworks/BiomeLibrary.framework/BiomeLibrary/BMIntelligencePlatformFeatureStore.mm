@interface BMIntelligencePlatformFeatureStore
+ (id)columns;
+ (id)eventWithData:(id)a3 dataVersion:(unsigned int)a4;
+ (id)protoFields;
- (BMIntelligencePlatformFeatureStore)initWithJSONDictionary:(id)a3 error:(id *)a4;
- (BMIntelligencePlatformFeatureStore)initWithLabelName:(id)a3 labelValue:(id)a4 taskName:(id)a5 category:(int)a6 featureVector:(id)a7;
- (BOOL)isEqual:(id)a3;
- (NSString)description;
- (id)initByReadFrom:(id)a3;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)a3;
@end

@implementation BMIntelligencePlatformFeatureStore

+ (id)columns
{
  v10[5] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"labelName" dataType:2 requestOnly:0 fieldNumber:1 protoDataType:13 convertedType:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"labelValue" dataType:2 requestOnly:0 fieldNumber:2 protoDataType:13 convertedType:0];
  v4 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"taskName" dataType:2 requestOnly:0 fieldNumber:3 protoDataType:13 convertedType:0];
  v5 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"category" dataType:0 requestOnly:0 fieldNumber:4 protoDataType:4 convertedType:0];
  v6 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"featureVector_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_387];
  v10[0] = v2;
  v10[1] = v3;
  v10[2] = v4;
  v10[3] = v5;
  v10[4] = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:5];

  v8 = *MEMORY[0x1E69E9840];

  return v7;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [(BMIntelligencePlatformFeatureStore *)self labelName];
    v7 = [v5 labelName];
    v8 = v7;
    if (v6 == v7)
    {
    }

    else
    {
      v9 = [(BMIntelligencePlatformFeatureStore *)self labelName];
      v10 = [v5 labelName];
      v11 = [v9 isEqual:v10];

      if (!v11)
      {
        goto LABEL_18;
      }
    }

    v13 = [(BMIntelligencePlatformFeatureStore *)self labelValue];
    v14 = [v5 labelValue];
    v15 = v14;
    if (v13 == v14)
    {
    }

    else
    {
      v16 = [(BMIntelligencePlatformFeatureStore *)self labelValue];
      v17 = [v5 labelValue];
      v18 = [v16 isEqual:v17];

      if (!v18)
      {
        goto LABEL_18;
      }
    }

    v19 = [(BMIntelligencePlatformFeatureStore *)self taskName];
    v20 = [v5 taskName];
    v21 = v20;
    if (v19 == v20)
    {
    }

    else
    {
      v22 = [(BMIntelligencePlatformFeatureStore *)self taskName];
      v23 = [v5 taskName];
      v24 = [v22 isEqual:v23];

      if (!v24)
      {
        goto LABEL_18;
      }
    }

    v25 = [(BMIntelligencePlatformFeatureStore *)self category];
    if (v25 == [v5 category])
    {
      v26 = [(BMIntelligencePlatformFeatureStore *)self featureVector];
      v27 = [v5 featureVector];
      if (v26 == v27)
      {
        v12 = 1;
      }

      else
      {
        v28 = [(BMIntelligencePlatformFeatureStore *)self featureVector];
        v29 = [v5 featureVector];
        v12 = [v28 isEqual:v29];
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
  v24[5] = *MEMORY[0x1E69E9840];
  v3 = [(BMIntelligencePlatformFeatureStore *)self labelName];
  v4 = [(BMIntelligencePlatformFeatureStore *)self labelValue];
  v5 = [(BMIntelligencePlatformFeatureStore *)self taskName];
  v6 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMIntelligencePlatformFeatureStore category](self, "category")}];
  v7 = [(BMIntelligencePlatformFeatureStore *)self featureVector];
  v8 = [v7 jsonDictionary];

  v19 = @"labelName";
  v9 = v3;
  if (!v3)
  {
    v9 = [MEMORY[0x1E695DFB0] null];
  }

  v17 = v9;
  v24[0] = v9;
  v20 = @"labelValue";
  v10 = v4;
  if (!v4)
  {
    v10 = [MEMORY[0x1E695DFB0] null];
  }

  v24[1] = v10;
  v21 = @"taskName";
  v11 = v5;
  if (!v5)
  {
    v11 = [MEMORY[0x1E695DFB0] null];
  }

  v24[2] = v11;
  v22 = @"category";
  v12 = v6;
  if (!v6)
  {
    v12 = [MEMORY[0x1E695DFB0] null];
  }

  v24[3] = v12;
  v23 = @"featureVector";
  v13 = v8;
  if (!v8)
  {
    v13 = [MEMORY[0x1E695DFB0] null];
  }

  v24[4] = v13;
  v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v24 forKeys:&v19 count:{5, v17}];
  if (v8)
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
  v15 = *MEMORY[0x1E69E9840];

  return v14;
}

- (BMIntelligencePlatformFeatureStore)initWithJSONDictionary:(id)a3 error:(id *)a4
{
  v50[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [v6 objectForKeyedSubscript:@"labelName"];
  if (!v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v8 = 0;
    goto LABEL_4;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = v7;
LABEL_4:
    v9 = [v6 objectForKeyedSubscript:@"labelValue"];
    v36 = a4;
    if (!v9 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v39 = 0;
LABEL_7:
      v10 = [v6 objectForKeyedSubscript:@"taskName"];
      v37 = v8;
      if (v10 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          if (!a4)
          {
            v38 = 0;
            v17 = 0;
            goto LABEL_49;
          }

          v20 = objc_alloc(MEMORY[0x1E696ABC0]);
          v21 = *MEMORY[0x1E698F240];
          v45 = *MEMORY[0x1E696A578];
          v12 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"taskName"];
          v46 = v12;
          v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v46 forKeys:&v45 count:1];
          v38 = 0;
          v17 = 0;
          *v36 = [v20 initWithDomain:v21 code:2 userInfo:v11];
          goto LABEL_48;
        }

        v38 = v10;
      }

      else
      {
        v38 = 0;
      }

      v11 = [v6 objectForKeyedSubscript:@"category"];
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
            if (!a4)
            {
              v12 = 0;
              v17 = 0;
              goto LABEL_48;
            }

            v33 = objc_alloc(MEMORY[0x1E696ABC0]);
            v35 = self;
            v27 = *MEMORY[0x1E698F240];
            v43 = *MEMORY[0x1E696A578];
            v22 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (corresponding to enum value), or NSString (string version of enum)", objc_opt_class(), @"category"];
            v44 = v22;
            v23 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v44 forKeys:&v43 count:1];
            v28 = v27;
            self = v35;
            v12 = 0;
            v17 = 0;
            *v36 = [v33 initWithDomain:v28 code:2 userInfo:v23];
            goto LABEL_46;
          }

          v13 = [MEMORY[0x1E696AD98] numberWithInt:BMIntelligencePlatformFeatureStoreCategoryTypeFromString(v11)];
        }

        v12 = v13;
      }

      else
      {
        v12 = 0;
      }

      v22 = [v6 objectForKeyedSubscript:@"featureVector"];
      if (!v22 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
      {
        v23 = 0;
LABEL_33:
        self = -[BMIntelligencePlatformFeatureStore initWithLabelName:labelValue:taskName:category:featureVector:](self, "initWithLabelName:labelValue:taskName:category:featureVector:", v37, v39, v38, [v12 intValue], v23);
        v17 = self;
LABEL_46:

LABEL_47:
LABEL_48:

        v8 = v37;
        goto LABEL_49;
      }

      v34 = self;
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v24 = v22;
        v40 = 0;
        v23 = [[BMIntelligencePlatformFeatureStoreFeatureVector alloc] initWithJSONDictionary:v24 error:&v40];
        v25 = v40;
        if (!v25)
        {

          self = v34;
          goto LABEL_33;
        }

        if (v36)
        {
          v25 = v25;
          *v36 = v25;
        }

        v17 = 0;
        v22 = v24;
      }

      else
      {
        if (!v36)
        {
          v17 = 0;
          goto LABEL_47;
        }

        v32 = objc_alloc(MEMORY[0x1E696ABC0]);
        v31 = *MEMORY[0x1E698F240];
        v41 = *MEMORY[0x1E696A578];
        v23 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", objc_opt_class(), @"featureVector"];
        v42 = v23;
        v26 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v42 forKeys:&v41 count:1];
        *v36 = [v32 initWithDomain:v31 code:2 userInfo:v26];

        v17 = 0;
      }

      self = v34;
      goto LABEL_46;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v39 = v9;
      goto LABEL_7;
    }

    if (a4)
    {
      v18 = objc_alloc(MEMORY[0x1E696ABC0]);
      v19 = *MEMORY[0x1E698F240];
      v47 = *MEMORY[0x1E696A578];
      v38 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"labelValue"];
      v48 = v38;
      v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v48 forKeys:&v47 count:1];
      v39 = 0;
      v17 = 0;
      *v36 = [v18 initWithDomain:v19 code:2 userInfo:v10];
LABEL_49:

      goto LABEL_50;
    }

    v39 = 0;
    v17 = 0;
LABEL_50:

    goto LABEL_51;
  }

  if (a4)
  {
    v14 = a4;
    v15 = objc_alloc(MEMORY[0x1E696ABC0]);
    v16 = *MEMORY[0x1E698F240];
    v49 = *MEMORY[0x1E696A578];
    v39 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"labelName"];
    v50[0] = v39;
    v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v50 forKeys:&v49 count:1];
    v8 = 0;
    v17 = 0;
    *v14 = [v15 initWithDomain:v16 code:2 userInfo:v9];
    goto LABEL_50;
  }

  v8 = 0;
  v17 = 0;
LABEL_51:

  v29 = *MEMORY[0x1E69E9840];
  return v17;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMIntelligencePlatformFeatureStore *)self writeTo:v3];
  v4 = [v3 immutableData];

  return v4;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  if (self->_labelName)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_labelValue)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_taskName)
  {
    PBDataWriterWriteStringField();
  }

  category = self->_category;
  PBDataWriterWriteUint32Field();
  if (self->_featureVector)
  {
    PBDataWriterPlaceMark();
    [(BMIntelligencePlatformFeatureStoreFeatureVector *)self->_featureVector writeTo:v4];
    PBDataWriterRecallMark();
  }
}

- (id)initByReadFrom:(id)a3
{
  v4 = a3;
  v31.receiver = self;
  v31.super_class = BMIntelligencePlatformFeatureStore;
  v5 = [(BMEventBase *)&v31 init];
  if (!v5)
  {
    goto LABEL_49;
  }

  v6 = [v4 position];
  if (v6 < [v4 length])
  {
    while (1)
    {
      if ([v4 hasError])
      {
        goto LABEL_47;
      }

      v7 = 0;
      v8 = 0;
      v9 = 0;
      while (1)
      {
        LOBYTE(v32[0]) = 0;
        v10 = [v4 position] + 1;
        if (v10 >= [v4 position] && (v11 = objc_msgSend(v4, "position") + 1, v11 <= objc_msgSend(v4, "length")))
        {
          v12 = [v4 data];
          [v12 getBytes:v32 range:{objc_msgSend(v4, "position"), 1}];

          [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
        }

        else
        {
          [v4 _setError];
        }

        v9 |= (v32[0] & 0x7F) << v7;
        if ((v32[0] & 0x80) == 0)
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
        goto LABEL_47;
      }

      v15 = v14 >> 3;
      if ((v14 >> 3) <= 2)
      {
        break;
      }

      switch(v15)
      {
        case 3:
          v23 = PBReaderReadString();
          v24 = 40;
LABEL_39:
          v27 = *(&v5->super.super.isa + v24);
          *(&v5->super.super.isa + v24) = v23;

          break;
        case 5:
          v32[0] = 0;
          v32[1] = 0;
          if (!PBReaderPlaceMark())
          {
            goto LABEL_48;
          }

          v25 = [[BMIntelligencePlatformFeatureStoreFeatureVector alloc] initByReadFrom:v4];
          if (!v25)
          {
            goto LABEL_48;
          }

          featureVector = v5->_featureVector;
          v5->_featureVector = v25;

          PBReaderRecallMark();
          break;
        case 4:
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
              goto LABEL_44;
            }
          }

          if (([v4 hasError] & 1) != 0 || v18 > 2)
          {
LABEL_44:
            LODWORD(v18) = 0;
          }

          v5->_category = v18;
          break;
        default:
          goto LABEL_40;
      }

LABEL_46:
      v28 = [v4 position];
      if (v28 >= [v4 length])
      {
        goto LABEL_47;
      }
    }

    if (v15 == 1)
    {
      v23 = PBReaderReadString();
      v24 = 24;
    }

    else
    {
      if (v15 != 2)
      {
LABEL_40:
        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          goto LABEL_48;
        }

        goto LABEL_46;
      }

      v23 = PBReaderReadString();
      v24 = 32;
    }

    goto LABEL_39;
  }

LABEL_47:
  if ([v4 hasError])
  {
LABEL_48:
    v29 = 0;
  }

  else
  {
LABEL_49:
    v29 = v5;
  }

  return v29;
}

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = [(BMIntelligencePlatformFeatureStore *)self labelName];
  v5 = [(BMIntelligencePlatformFeatureStore *)self labelValue];
  v6 = [(BMIntelligencePlatformFeatureStore *)self taskName];
  v7 = BMIntelligencePlatformFeatureStoreCategoryTypeAsString([(BMIntelligencePlatformFeatureStore *)self category]);
  v8 = [(BMIntelligencePlatformFeatureStore *)self featureVector];
  v9 = [v3 initWithFormat:@"BMIntelligencePlatformFeatureStore with labelName: %@, labelValue: %@, taskName: %@, category: %@, featureVector: %@", v4, v5, v6, v7, v8];

  return v9;
}

- (BMIntelligencePlatformFeatureStore)initWithLabelName:(id)a3 labelValue:(id)a4 taskName:(id)a5 category:(int)a6 featureVector:(id)a7
{
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a7;
  v19.receiver = self;
  v19.super_class = BMIntelligencePlatformFeatureStore;
  v17 = [(BMEventBase *)&v19 init];
  if (v17)
  {
    v17->_dataVersion = [objc_opt_class() latestDataVersion];
    objc_storeStrong(&v17->_labelName, a3);
    objc_storeStrong(&v17->_labelValue, a4);
    objc_storeStrong(&v17->_taskName, a5);
    v17->_category = a6;
    objc_storeStrong(&v17->_featureVector, a7);
  }

  return v17;
}

+ (id)protoFields
{
  v10[5] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"labelName" number:1 type:13 subMessageClass:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"labelValue" number:2 type:13 subMessageClass:{0, v2}];
  v10[1] = v3;
  v4 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"taskName" number:3 type:13 subMessageClass:0];
  v10[2] = v4;
  v5 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"category" number:4 type:4 subMessageClass:0];
  v10[3] = v5;
  v6 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"featureVector" number:5 type:14 subMessageClass:objc_opt_class()];
  v10[4] = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:5];

  v8 = *MEMORY[0x1E69E9840];

  return v7;
}

id __45__BMIntelligencePlatformFeatureStore_columns__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 eventBodyKeepingBackingData:1];
  v3 = [v2 featureVector];
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

    v8 = [[BMIntelligencePlatformFeatureStore alloc] initByReadFrom:v7];
    v4 = v8;
    if (v8)
    {
      v8[4] = 0;
    }
  }

  return v4;
}

@end