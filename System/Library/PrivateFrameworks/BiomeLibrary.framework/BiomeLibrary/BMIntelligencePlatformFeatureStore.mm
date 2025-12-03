@interface BMIntelligencePlatformFeatureStore
+ (id)columns;
+ (id)eventWithData:(id)data dataVersion:(unsigned int)version;
+ (id)protoFields;
- (BMIntelligencePlatformFeatureStore)initWithJSONDictionary:(id)dictionary error:(id *)error;
- (BMIntelligencePlatformFeatureStore)initWithLabelName:(id)name labelValue:(id)value taskName:(id)taskName category:(int)category featureVector:(id)vector;
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (id)initByReadFrom:(id)from;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)to;
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    labelName = [(BMIntelligencePlatformFeatureStore *)self labelName];
    labelName2 = [v5 labelName];
    v8 = labelName2;
    if (labelName == labelName2)
    {
    }

    else
    {
      labelName3 = [(BMIntelligencePlatformFeatureStore *)self labelName];
      labelName4 = [v5 labelName];
      v11 = [labelName3 isEqual:labelName4];

      if (!v11)
      {
        goto LABEL_18;
      }
    }

    labelValue = [(BMIntelligencePlatformFeatureStore *)self labelValue];
    labelValue2 = [v5 labelValue];
    v15 = labelValue2;
    if (labelValue == labelValue2)
    {
    }

    else
    {
      labelValue3 = [(BMIntelligencePlatformFeatureStore *)self labelValue];
      labelValue4 = [v5 labelValue];
      v18 = [labelValue3 isEqual:labelValue4];

      if (!v18)
      {
        goto LABEL_18;
      }
    }

    taskName = [(BMIntelligencePlatformFeatureStore *)self taskName];
    taskName2 = [v5 taskName];
    v21 = taskName2;
    if (taskName == taskName2)
    {
    }

    else
    {
      taskName3 = [(BMIntelligencePlatformFeatureStore *)self taskName];
      taskName4 = [v5 taskName];
      v24 = [taskName3 isEqual:taskName4];

      if (!v24)
      {
        goto LABEL_18;
      }
    }

    category = [(BMIntelligencePlatformFeatureStore *)self category];
    if (category == [v5 category])
    {
      featureVector = [(BMIntelligencePlatformFeatureStore *)self featureVector];
      featureVector2 = [v5 featureVector];
      if (featureVector == featureVector2)
      {
        v12 = 1;
      }

      else
      {
        featureVector3 = [(BMIntelligencePlatformFeatureStore *)self featureVector];
        featureVector4 = [v5 featureVector];
        v12 = [featureVector3 isEqual:featureVector4];
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
  labelName = [(BMIntelligencePlatformFeatureStore *)self labelName];
  labelValue = [(BMIntelligencePlatformFeatureStore *)self labelValue];
  taskName = [(BMIntelligencePlatformFeatureStore *)self taskName];
  v6 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMIntelligencePlatformFeatureStore category](self, "category")}];
  featureVector = [(BMIntelligencePlatformFeatureStore *)self featureVector];
  jsonDictionary = [featureVector jsonDictionary];

  v19 = @"labelName";
  null = labelName;
  if (!labelName)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v17 = null;
  v24[0] = null;
  v20 = @"labelValue";
  null2 = labelValue;
  if (!labelValue)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v24[1] = null2;
  v21 = @"taskName";
  null3 = taskName;
  if (!taskName)
  {
    null3 = [MEMORY[0x1E695DFB0] null];
  }

  v24[2] = null3;
  v22 = @"category";
  null4 = v6;
  if (!v6)
  {
    null4 = [MEMORY[0x1E695DFB0] null];
  }

  v24[3] = null4;
  v23 = @"featureVector";
  null5 = jsonDictionary;
  if (!jsonDictionary)
  {
    null5 = [MEMORY[0x1E695DFB0] null];
  }

  v24[4] = null5;
  v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v24 forKeys:&v19 count:{5, v17}];
  if (jsonDictionary)
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
      if (taskName)
      {
        goto LABEL_14;
      }

      goto LABEL_21;
    }
  }

  if (taskName)
  {
LABEL_14:
    if (labelValue)
    {
      goto LABEL_15;
    }

LABEL_22:

    if (labelName)
    {
      goto LABEL_16;
    }

    goto LABEL_23;
  }

LABEL_21:

  if (!labelValue)
  {
    goto LABEL_22;
  }

LABEL_15:
  if (labelName)
  {
    goto LABEL_16;
  }

LABEL_23:

LABEL_16:
  v15 = *MEMORY[0x1E69E9840];

  return v14;
}

- (BMIntelligencePlatformFeatureStore)initWithJSONDictionary:(id)dictionary error:(id *)error
{
  v50[1] = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v7 = [dictionaryCopy objectForKeyedSubscript:@"labelName"];
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
    v9 = [dictionaryCopy objectForKeyedSubscript:@"labelValue"];
    errorCopy = error;
    if (!v9 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v39 = 0;
LABEL_7:
      v10 = [dictionaryCopy objectForKeyedSubscript:@"taskName"];
      v37 = v8;
      if (v10 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          if (!error)
          {
            v38 = 0;
            selfCopy2 = 0;
            goto LABEL_49;
          }

          v20 = objc_alloc(MEMORY[0x1E696ABC0]);
          v21 = *MEMORY[0x1E698F240];
          v45 = *MEMORY[0x1E696A578];
          v12 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"taskName"];
          v46 = v12;
          v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v46 forKeys:&v45 count:1];
          v38 = 0;
          selfCopy2 = 0;
          *errorCopy = [v20 initWithDomain:v21 code:2 userInfo:v11];
          goto LABEL_48;
        }

        v38 = v10;
      }

      else
      {
        v38 = 0;
      }

      v11 = [dictionaryCopy objectForKeyedSubscript:@"category"];
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
            if (!error)
            {
              v12 = 0;
              selfCopy2 = 0;
              goto LABEL_48;
            }

            v33 = objc_alloc(MEMORY[0x1E696ABC0]);
            selfCopy = self;
            v27 = *MEMORY[0x1E698F240];
            v43 = *MEMORY[0x1E696A578];
            v22 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (corresponding to enum value), or NSString (string version of enum)", objc_opt_class(), @"category"];
            v44 = v22;
            v23 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v44 forKeys:&v43 count:1];
            v28 = v27;
            self = selfCopy;
            v12 = 0;
            selfCopy2 = 0;
            *errorCopy = [v33 initWithDomain:v28 code:2 userInfo:v23];
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

      v22 = [dictionaryCopy objectForKeyedSubscript:@"featureVector"];
      if (!v22 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
      {
        v23 = 0;
LABEL_33:
        self = -[BMIntelligencePlatformFeatureStore initWithLabelName:labelValue:taskName:category:featureVector:](self, "initWithLabelName:labelValue:taskName:category:featureVector:", v37, v39, v38, [v12 intValue], v23);
        selfCopy2 = self;
LABEL_46:

LABEL_47:
LABEL_48:

        v8 = v37;
        goto LABEL_49;
      }

      selfCopy3 = self;
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v24 = v22;
        v40 = 0;
        v23 = [[BMIntelligencePlatformFeatureStoreFeatureVector alloc] initWithJSONDictionary:v24 error:&v40];
        v25 = v40;
        if (!v25)
        {

          self = selfCopy3;
          goto LABEL_33;
        }

        if (errorCopy)
        {
          v25 = v25;
          *errorCopy = v25;
        }

        selfCopy2 = 0;
        v22 = v24;
      }

      else
      {
        if (!errorCopy)
        {
          selfCopy2 = 0;
          goto LABEL_47;
        }

        v32 = objc_alloc(MEMORY[0x1E696ABC0]);
        v31 = *MEMORY[0x1E698F240];
        v41 = *MEMORY[0x1E696A578];
        v23 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", objc_opt_class(), @"featureVector"];
        v42 = v23;
        v26 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v42 forKeys:&v41 count:1];
        *errorCopy = [v32 initWithDomain:v31 code:2 userInfo:v26];

        selfCopy2 = 0;
      }

      self = selfCopy3;
      goto LABEL_46;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v39 = v9;
      goto LABEL_7;
    }

    if (error)
    {
      v18 = objc_alloc(MEMORY[0x1E696ABC0]);
      v19 = *MEMORY[0x1E698F240];
      v47 = *MEMORY[0x1E696A578];
      v38 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"labelValue"];
      v48 = v38;
      v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v48 forKeys:&v47 count:1];
      v39 = 0;
      selfCopy2 = 0;
      *errorCopy = [v18 initWithDomain:v19 code:2 userInfo:v10];
LABEL_49:

      goto LABEL_50;
    }

    v39 = 0;
    selfCopy2 = 0;
LABEL_50:

    goto LABEL_51;
  }

  if (error)
  {
    errorCopy2 = error;
    v15 = objc_alloc(MEMORY[0x1E696ABC0]);
    v16 = *MEMORY[0x1E698F240];
    v49 = *MEMORY[0x1E696A578];
    v39 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"labelName"];
    v50[0] = v39;
    v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v50 forKeys:&v49 count:1];
    v8 = 0;
    selfCopy2 = 0;
    *errorCopy2 = [v15 initWithDomain:v16 code:2 userInfo:v9];
    goto LABEL_50;
  }

  v8 = 0;
  selfCopy2 = 0;
LABEL_51:

  v29 = *MEMORY[0x1E69E9840];
  return selfCopy2;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMIntelligencePlatformFeatureStore *)self writeTo:v3];
  immutableData = [v3 immutableData];

  return immutableData;
}

- (void)writeTo:(id)to
{
  toCopy = to;
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
    [(BMIntelligencePlatformFeatureStoreFeatureVector *)self->_featureVector writeTo:toCopy];
    PBDataWriterRecallMark();
  }
}

- (id)initByReadFrom:(id)from
{
  fromCopy = from;
  v31.receiver = self;
  v31.super_class = BMIntelligencePlatformFeatureStore;
  v5 = [(BMEventBase *)&v31 init];
  if (!v5)
  {
    goto LABEL_49;
  }

  position = [fromCopy position];
  if (position < [fromCopy length])
  {
    while (1)
    {
      if ([fromCopy hasError])
      {
        goto LABEL_47;
      }

      v7 = 0;
      v8 = 0;
      v9 = 0;
      while (1)
      {
        LOBYTE(v32[0]) = 0;
        v10 = [fromCopy position] + 1;
        if (v10 >= [fromCopy position] && (v11 = objc_msgSend(fromCopy, "position") + 1, v11 <= objc_msgSend(fromCopy, "length")))
        {
          data = [fromCopy data];
          [data getBytes:v32 range:{objc_msgSend(fromCopy, "position"), 1}];

          [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
        }

        else
        {
          [fromCopy _setError];
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

      v14 = [fromCopy hasError] ? 0 : v9;
LABEL_16:
      if (([fromCopy hasError] & 1) != 0 || (v14 & 7) == 4)
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

          v25 = [[BMIntelligencePlatformFeatureStoreFeatureVector alloc] initByReadFrom:fromCopy];
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
            v19 = [fromCopy position] + 1;
            if (v19 >= [fromCopy position] && (v20 = objc_msgSend(fromCopy, "position") + 1, v20 <= objc_msgSend(fromCopy, "length")))
            {
              data2 = [fromCopy data];
              [data2 getBytes:v32 range:{objc_msgSend(fromCopy, "position"), 1}];

              [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
            }

            else
            {
              [fromCopy _setError];
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

          if (([fromCopy hasError] & 1) != 0 || v18 > 2)
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
      position2 = [fromCopy position];
      if (position2 >= [fromCopy length])
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
  if ([fromCopy hasError])
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
  labelName = [(BMIntelligencePlatformFeatureStore *)self labelName];
  labelValue = [(BMIntelligencePlatformFeatureStore *)self labelValue];
  taskName = [(BMIntelligencePlatformFeatureStore *)self taskName];
  v7 = BMIntelligencePlatformFeatureStoreCategoryTypeAsString([(BMIntelligencePlatformFeatureStore *)self category]);
  featureVector = [(BMIntelligencePlatformFeatureStore *)self featureVector];
  v9 = [v3 initWithFormat:@"BMIntelligencePlatformFeatureStore with labelName: %@, labelValue: %@, taskName: %@, category: %@, featureVector: %@", labelName, labelValue, taskName, v7, featureVector];

  return v9;
}

- (BMIntelligencePlatformFeatureStore)initWithLabelName:(id)name labelValue:(id)value taskName:(id)taskName category:(int)category featureVector:(id)vector
{
  nameCopy = name;
  valueCopy = value;
  taskNameCopy = taskName;
  vectorCopy = vector;
  v19.receiver = self;
  v19.super_class = BMIntelligencePlatformFeatureStore;
  v17 = [(BMEventBase *)&v19 init];
  if (v17)
  {
    v17->_dataVersion = [objc_opt_class() latestDataVersion];
    objc_storeStrong(&v17->_labelName, name);
    objc_storeStrong(&v17->_labelValue, value);
    objc_storeStrong(&v17->_taskName, taskName);
    v17->_category = category;
    objc_storeStrong(&v17->_featureVector, vector);
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