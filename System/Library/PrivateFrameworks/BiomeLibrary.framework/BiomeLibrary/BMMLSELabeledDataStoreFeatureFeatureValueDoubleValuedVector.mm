@interface BMMLSELabeledDataStoreFeatureFeatureValueDoubleValuedVector
+ (id)columns;
+ (id)eventWithData:(id)data dataVersion:(unsigned int)version;
+ (id)protoFields;
- (BMMLSELabeledDataStoreFeatureFeatureValueDoubleValuedVector)initWithJSONDictionary:(id)dictionary error:(id *)p_isa;
- (BMMLSELabeledDataStoreFeatureFeatureValueDoubleValuedVector)initWithVectorWithDoubles:(id)doubles;
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (id)_vectorWithDoublesJSONArray;
- (id)initByReadFrom:(id)from;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)to;
@end

@implementation BMMLSELabeledDataStoreFeatureFeatureValueDoubleValuedVector

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    vectorWithDoubles = [(BMMLSELabeledDataStoreFeatureFeatureValueDoubleValuedVector *)self vectorWithDoubles];
    vectorWithDoubles2 = [v5 vectorWithDoubles];
    if (vectorWithDoubles == vectorWithDoubles2)
    {
      v10 = 1;
    }

    else
    {
      vectorWithDoubles3 = [(BMMLSELabeledDataStoreFeatureFeatureValueDoubleValuedVector *)self vectorWithDoubles];
      vectorWithDoubles4 = [v5 vectorWithDoubles];
      v10 = [vectorWithDoubles3 isEqual:vectorWithDoubles4];
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)jsonDictionary
{
  v8[1] = *MEMORY[0x1E69E9840];
  _vectorWithDoublesJSONArray = [(BMMLSELabeledDataStoreFeatureFeatureValueDoubleValuedVector *)self _vectorWithDoublesJSONArray];
  v7 = @"vectorWithDoubles";
  null = _vectorWithDoublesJSONArray;
  if (!_vectorWithDoublesJSONArray)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v8[0] = null;
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:&v7 count:1];
  if (!_vectorWithDoublesJSONArray)
  {
  }

  v5 = *MEMORY[0x1E69E9840];

  return v4;
}

- (id)_vectorWithDoublesJSONArray
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  vectorWithDoubles = [(BMMLSELabeledDataStoreFeatureFeatureValueDoubleValuedVector *)self vectorWithDoubles];
  v5 = [vectorWithDoubles countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v15;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(vectorWithDoubles);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        [v9 doubleValue];
        if (fabs(v10) == INFINITY)
        {
          null = [MEMORY[0x1E695DFB0] null];
          [v3 addObject:null];
        }

        else
        {
          [v9 doubleValue];
          [v3 addObject:v9];
        }
      }

      v6 = [vectorWithDoubles countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v6);
  }

  v12 = *MEMORY[0x1E69E9840];

  return v3;
}

- (BMMLSELabeledDataStoreFeatureFeatureValueDoubleValuedVector)initWithJSONDictionary:(id)dictionary error:(id *)p_isa
{
  v39[1] = *MEMORY[0x1E69E9840];
  v6 = [dictionary objectForKeyedSubscript:@"vectorWithDoubles"];
  null = [MEMORY[0x1E695DFB0] null];
  v8 = [v6 isEqual:null];

  if (v8)
  {

    v6 = 0;
LABEL_5:
    v9 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v6, "count")}];
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v6 = v6;
    v10 = [v6 countByEnumeratingWithState:&v29 objects:v37 count:16];
    if (!v10)
    {
      goto LABEL_14;
    }

    v11 = v10;
    v12 = *v30;
LABEL_7:
    v13 = 0;
    while (1)
    {
      if (*v30 != v12)
      {
        objc_enumerationMutation(v6);
      }

      v14 = *(*(&v29 + 1) + 8 * v13);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        break;
      }

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (p_isa)
        {
          v21 = objc_alloc(MEMORY[0x1E696ABC0]);
          v22 = *MEMORY[0x1E698F240];
          v33 = *MEMORY[0x1E696A578];
          v23 = objc_alloc(MEMORY[0x1E696AEC0]);
          v17 = [v23 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"vectorWithDoubles", v29];
          v34 = v17;
          v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v34 forKeys:&v33 count:1];
          v19 = v21;
          v20 = v22;
LABEL_19:
          *p_isa = [v19 initWithDomain:v20 code:2 userInfo:v18];
        }

        goto LABEL_20;
      }

      [v9 addObject:v14];
      if (v11 == ++v13)
      {
        v11 = [v6 countByEnumeratingWithState:&v29 objects:v37 count:16];
        if (v11)
        {
          goto LABEL_7;
        }

LABEL_14:

        self = [(BMMLSELabeledDataStoreFeatureFeatureValueDoubleValuedVector *)self initWithVectorWithDoubles:v9];
        p_isa = &self->super.super.isa;
LABEL_22:

        goto LABEL_23;
      }
    }

    if (p_isa)
    {
      v15 = objc_alloc(MEMORY[0x1E696ABC0]);
      v16 = *MEMORY[0x1E698F240];
      v35 = *MEMORY[0x1E696A578];
      v17 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type null for element of %@, must not be null", @"vectorWithDoubles"];
      v36 = v17;
      v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v36 forKeys:&v35 count:1];
      v19 = v15;
      v20 = v16;
      goto LABEL_19;
    }

LABEL_20:

    goto LABEL_21;
  }

  if (!v6)
  {
    goto LABEL_5;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    goto LABEL_5;
  }

  if (p_isa)
  {
    v26 = objc_alloc(MEMORY[0x1E696ABC0]);
    v27 = *MEMORY[0x1E698F240];
    v38 = *MEMORY[0x1E696A578];
    v9 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Expecting %@ as an array", @"vectorWithDoubles"];
    v39[0] = v9;
    v28 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v39 forKeys:&v38 count:1];
    *p_isa = [v26 initWithDomain:v27 code:2 userInfo:v28];

LABEL_21:
    p_isa = 0;
    goto LABEL_22;
  }

LABEL_23:

  v24 = *MEMORY[0x1E69E9840];
  return p_isa;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMMLSELabeledDataStoreFeatureFeatureValueDoubleValuedVector *)self writeTo:v3];
  immutableData = [v3 immutableData];

  return immutableData;
}

- (void)writeTo:(id)to
{
  v16 = *MEMORY[0x1E69E9840];
  toCopy = to;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = self->_vectorWithDoubles;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      v9 = 0;
      do
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [*(*(&v11 + 1) + 8 * v9) doubleValue];
        PBDataWriterWriteDoubleField();
        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSArray *)v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }

  v10 = *MEMORY[0x1E69E9840];
}

- (id)initByReadFrom:(id)from
{
  fromCopy = from;
  v28.receiver = self;
  v28.super_class = BMMLSELabeledDataStoreFeatureFeatureValueDoubleValuedVector;
  v5 = [(BMEventBase *)&v28 init];
  if (!v5)
  {
    goto LABEL_29;
  }

  v6 = objc_opt_new();
  position = [fromCopy position];
  if (position < [fromCopy length])
  {
    do
    {
      if ([fromCopy hasError])
      {
        break;
      }

      v8 = 0;
      v9 = 0;
      v10 = 0;
      while (1)
      {
        LOBYTE(v29) = 0;
        v11 = [fromCopy position] + 1;
        if (v11 >= [fromCopy position] && (v12 = objc_msgSend(fromCopy, "position") + 1, v12 <= objc_msgSend(fromCopy, "length")))
        {
          data = [fromCopy data];
          [data getBytes:&v29 range:{objc_msgSend(fromCopy, "position"), 1}];

          [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
        }

        else
        {
          [fromCopy _setError];
        }

        v10 |= (LOBYTE(v29) & 0x7F) << v8;
        if ((LOBYTE(v29) & 0x80) == 0)
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
        break;
      }

      if ((v15 >> 3) == 1)
      {
        v16 = MEMORY[0x1E696AD98];
        v29 = 0.0;
        v17 = [fromCopy position] + 8;
        if (v17 >= [fromCopy position] && (v18 = objc_msgSend(fromCopy, "position") + 8, v18 <= objc_msgSend(fromCopy, "length")))
        {
          data2 = [fromCopy data];
          [data2 getBytes:&v29 range:{objc_msgSend(fromCopy, "position"), 8}];

          [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 8}];
        }

        else
        {
          [fromCopy _setError];
        }

        v20 = [v16 numberWithDouble:v29];
        if (!v20)
        {
LABEL_30:

          goto LABEL_31;
        }

        v21 = v20;
        [v6 addObject:v20];
      }

      else if (!PBReaderSkipValueWithTag())
      {
        goto LABEL_30;
      }

      position2 = [fromCopy position];
    }

    while (position2 < [fromCopy length]);
  }

  v23 = [v6 copy];
  vectorWithDoubles = v5->_vectorWithDoubles;
  v5->_vectorWithDoubles = v23;

  hasError = [fromCopy hasError];
  if (hasError)
  {
LABEL_31:
    v26 = 0;
  }

  else
  {
LABEL_29:
    v26 = v5;
  }

  return v26;
}

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  vectorWithDoubles = [(BMMLSELabeledDataStoreFeatureFeatureValueDoubleValuedVector *)self vectorWithDoubles];
  v5 = [v3 initWithFormat:@"BMMLSELabeledDataStoreFeatureFeatureValueDoubleValuedVector with vectorWithDoubles: %@", vectorWithDoubles];

  return v5;
}

- (BMMLSELabeledDataStoreFeatureFeatureValueDoubleValuedVector)initWithVectorWithDoubles:(id)doubles
{
  doublesCopy = doubles;
  v8.receiver = self;
  v8.super_class = BMMLSELabeledDataStoreFeatureFeatureValueDoubleValuedVector;
  v6 = [(BMEventBase *)&v8 init];
  if (v6)
  {
    v6->_dataVersion = [objc_opt_class() latestDataVersion];
    objc_storeStrong(&v6->_vectorWithDoubles, doubles);
  }

  return v6;
}

+ (id)protoFields
{
  v6[1] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"vectorWithDoubles" number:1 type:0 subMessageClass:0];
  v6[0] = v2;
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:1];

  v4 = *MEMORY[0x1E69E9840];

  return v3;
}

+ (id)columns
{
  v6[1] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"vectorWithDoubles_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_44];
  v6[0] = v2;
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:1];

  v4 = *MEMORY[0x1E69E9840];

  return v3;
}

id __70__BMMLSELabeledDataStoreFeatureFeatureValueDoubleValuedVector_columns__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 eventBodyKeepingBackingData:1];
  v3 = [v2 _vectorWithDoublesJSONArray];
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

    v8 = [[BMMLSELabeledDataStoreFeatureFeatureValueDoubleValuedVector alloc] initByReadFrom:v7];
    v4 = v8;
    if (v8)
    {
      v8[4] = 0;
    }
  }

  return v4;
}

@end