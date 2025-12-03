@interface BMMLSEDurableFeatureStoreFeatureValueHistogramBucket
+ (id)columns;
+ (id)eventWithData:(id)data dataVersion:(unsigned int)version;
+ (id)protoFields;
- (BMMLSEDurableFeatureStoreFeatureValueHistogramBucket)initWithBucketName:(id)name hasEver:(id)ever counts:(id)counts;
- (BMMLSEDurableFeatureStoreFeatureValueHistogramBucket)initWithJSONDictionary:(id)dictionary error:(id *)error;
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (id)_countsJSONArray;
- (id)initByReadFrom:(id)from;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)to;
@end

@implementation BMMLSEDurableFeatureStoreFeatureValueHistogramBucket

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    bucketName = [(BMMLSEDurableFeatureStoreFeatureValueHistogramBucket *)self bucketName];
    bucketName2 = [v5 bucketName];
    v8 = bucketName2;
    if (bucketName == bucketName2)
    {
    }

    else
    {
      bucketName3 = [(BMMLSEDurableFeatureStoreFeatureValueHistogramBucket *)self bucketName];
      bucketName4 = [v5 bucketName];
      v11 = [bucketName3 isEqual:bucketName4];

      if (!v11)
      {
        goto LABEL_12;
      }
    }

    if (!-[BMMLSEDurableFeatureStoreFeatureValueHistogramBucket hasHasEver](self, "hasHasEver") && ![v5 hasHasEver] || -[BMMLSEDurableFeatureStoreFeatureValueHistogramBucket hasHasEver](self, "hasHasEver") && objc_msgSend(v5, "hasHasEver") && (v13 = -[BMMLSEDurableFeatureStoreFeatureValueHistogramBucket hasEver](self, "hasEver"), v13 == objc_msgSend(v5, "hasEver")))
    {
      counts = [(BMMLSEDurableFeatureStoreFeatureValueHistogramBucket *)self counts];
      counts2 = [v5 counts];
      if (counts == counts2)
      {
        v12 = 1;
      }

      else
      {
        counts3 = [(BMMLSEDurableFeatureStoreFeatureValueHistogramBucket *)self counts];
        counts4 = [v5 counts];
        v12 = [counts3 isEqual:counts4];
      }

      goto LABEL_17;
    }

LABEL_12:
    v12 = 0;
LABEL_17:

    goto LABEL_18;
  }

  v12 = 0;
LABEL_18:

  return v12;
}

- (id)jsonDictionary
{
  v13[3] = *MEMORY[0x1E69E9840];
  bucketName = [(BMMLSEDurableFeatureStoreFeatureValueHistogramBucket *)self bucketName];
  if ([(BMMLSEDurableFeatureStoreFeatureValueHistogramBucket *)self hasHasEver])
  {
    v4 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMMLSEDurableFeatureStoreFeatureValueHistogramBucket hasEver](self, "hasEver")}];
  }

  else
  {
    v4 = 0;
  }

  _countsJSONArray = [(BMMLSEDurableFeatureStoreFeatureValueHistogramBucket *)self _countsJSONArray];
  v12[0] = @"bucketName";
  null = bucketName;
  if (!bucketName)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v13[0] = null;
  v12[1] = @"hasEver";
  null2 = v4;
  if (!v4)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v13[1] = null2;
  v12[2] = @"counts";
  null3 = _countsJSONArray;
  if (!_countsJSONArray)
  {
    null3 = [MEMORY[0x1E695DFB0] null];
  }

  v13[2] = null3;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:v12 count:3];
  if (_countsJSONArray)
  {
    if (v4)
    {
      goto LABEL_12;
    }

LABEL_17:

    if (bucketName)
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
  if (bucketName)
  {
    goto LABEL_13;
  }

LABEL_18:

LABEL_13:
  v10 = *MEMORY[0x1E69E9840];

  return v9;
}

- (id)_countsJSONArray
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  counts = [(BMMLSEDurableFeatureStoreFeatureValueHistogramBucket *)self counts];
  v5 = [counts countByEnumeratingWithState:&v12 objects:v16 count:16];
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
          objc_enumerationMutation(counts);
        }

        jsonDictionary = [*(*(&v12 + 1) + 8 * i) jsonDictionary];
        [v3 addObject:jsonDictionary];
      }

      v6 = [counts countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  v10 = *MEMORY[0x1E69E9840];

  return v3;
}

- (BMMLSEDurableFeatureStoreFeatureValueHistogramBucket)initWithJSONDictionary:(id)dictionary error:(id *)error
{
  v76[1] = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v7 = [dictionaryCopy objectForKeyedSubscript:@"bucketName"];
  v8 = 0x1E695D000uLL;
  if (v7 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      if (!error)
      {
        v9 = 0;
        selfCopy2 = 0;
        goto LABEL_45;
      }

      v28 = objc_alloc(MEMORY[0x1E696ABC0]);
      v29 = *MEMORY[0x1E698F240];
      v75 = *MEMORY[0x1E696A578];
      v30 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"bucketName"];
      v76[0] = v30;
      v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v76 forKeys:&v75 count:1];
      v31 = v28;
      v26 = v30;
      v9 = 0;
      selfCopy2 = 0;
      *error = [v31 initWithDomain:v29 code:2 userInfo:v10];
      goto LABEL_44;
    }

    v9 = v7;
  }

  else
  {
    v9 = 0;
  }

  v10 = [dictionaryCopy objectForKeyedSubscript:@"hasEver"];
  v60 = v7;
  if (!v10 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    errorCopy2 = error;
    v59 = 0;
LABEL_7:
    v11 = [dictionaryCopy objectForKeyedSubscript:@"counts"];
    null = [MEMORY[0x1E695DFB0] null];
    v13 = [v11 isEqual:null];

    if (v13)
    {
      v56 = v10;
      v57 = v9;
      v58 = dictionaryCopy;

      v11 = 0;
LABEL_12:
      v14 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v11, "count")}];
      v62 = 0u;
      v63 = 0u;
      v64 = 0u;
      v65 = 0u;
      v11 = v11;
      v15 = [v11 countByEnumeratingWithState:&v62 objects:v70 count:16];
      if (!v15)
      {
        goto LABEL_22;
      }

      v16 = v15;
      v17 = *v63;
      selfCopy = self;
LABEL_14:
      v18 = 0;
      while (1)
      {
        if (*v63 != v17)
        {
          objc_enumerationMutation(v11);
        }

        v19 = *(*(&v62 + 1) + 8 * v18);
        v20 = *(v8 + 4016);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          break;
        }

        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          self = selfCopy;
          v40 = errorCopy2;
          v10 = v56;
          v9 = v57;
          if (!errorCopy2)
          {
            goto LABEL_40;
          }

          v41 = objc_alloc(MEMORY[0x1E696ABC0]);
          v42 = *MEMORY[0x1E698F240];
          v66 = *MEMORY[0x1E696A578];
          v22 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", objc_opt_class(), @"counts"];
          v67 = v22;
          v43 = MEMORY[0x1E695DF20];
          v44 = &v67;
          v45 = &v66;
          goto LABEL_35;
        }

        v21 = v8;
        v22 = v19;
        v23 = [BMMLSEDurableFeatureStoreFeatureValueHistogramBucketCount alloc];
        v61 = 0;
        v24 = [(BMMLSEDurableFeatureStoreFeatureValueHistogramBucketCount *)v23 initWithJSONDictionary:v22 error:&v61];
        v25 = v61;
        if (v25)
        {
          v46 = v25;
          if (errorCopy2)
          {
            v47 = v25;
            *errorCopy2 = v46;
          }

          self = selfCopy;
          v10 = v56;
          v9 = v57;
LABEL_39:

LABEL_40:
          selfCopy2 = 0;
          dictionaryCopy = v58;
          goto LABEL_41;
        }

        [v14 addObject:v24];

        ++v18;
        v8 = v21;
        if (v16 == v18)
        {
          v16 = [v11 countByEnumeratingWithState:&v62 objects:v70 count:16];
          self = selfCopy;
          if (v16)
          {
            goto LABEL_14;
          }

LABEL_22:

          v9 = v57;
          v26 = v59;
          self = [(BMMLSEDurableFeatureStoreFeatureValueHistogramBucket *)self initWithBucketName:v57 hasEver:v59 counts:v14];
          selfCopy2 = self;
          dictionaryCopy = v58;
          v10 = v56;
LABEL_42:

          v7 = v60;
          goto LABEL_43;
        }
      }

      self = selfCopy;
      v40 = errorCopy2;
      v10 = v56;
      v9 = v57;
      if (!errorCopy2)
      {
        goto LABEL_40;
      }

      v41 = objc_alloc(MEMORY[0x1E696ABC0]);
      v42 = *MEMORY[0x1E698F240];
      v68 = *MEMORY[0x1E696A578];
      v22 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type null for element of %@, must not be null", @"counts"];
      v69 = v22;
      v43 = MEMORY[0x1E695DF20];
      v44 = &v69;
      v45 = &v68;
LABEL_35:
      v46 = [v43 dictionaryWithObjects:v44 forKeys:v45 count:1];
      *v40 = [v41 initWithDomain:v42 code:2 userInfo:v46];
      goto LABEL_39;
    }

    if (!v11 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v56 = v10;
      v57 = v9;
      v58 = dictionaryCopy;
      goto LABEL_12;
    }

    if (errorCopy2)
    {
      v50 = objc_alloc(MEMORY[0x1E696ABC0]);
      v51 = *MEMORY[0x1E698F240];
      v71 = *MEMORY[0x1E696A578];
      v14 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Expecting %@ as an array", @"counts"];
      v72 = v14;
      v52 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v72 forKeys:&v71 count:1];
      *errorCopy2 = [v50 initWithDomain:v51 code:2 userInfo:v52];

      selfCopy2 = 0;
LABEL_41:
      v26 = v59;
      goto LABEL_42;
    }

    selfCopy2 = 0;
    v26 = v59;
LABEL_43:

    goto LABEL_44;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    errorCopy2 = error;
    v59 = v10;
    goto LABEL_7;
  }

  if (error)
  {
    v32 = objc_alloc(MEMORY[0x1E696ABC0]);
    v33 = *MEMORY[0x1E698F240];
    v73 = *MEMORY[0x1E696A578];
    errorCopy3 = error;
    v35 = v10;
    selfCopy3 = self;
    v37 = objc_alloc(MEMORY[0x1E696AEC0]);
    v53 = objc_opt_class();
    v38 = v37;
    self = selfCopy3;
    v10 = v35;
    v11 = [v38 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v53, @"hasEver"];
    v74 = v11;
    v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v74 forKeys:&v73 count:1];
    v39 = [v32 initWithDomain:v33 code:2 userInfo:v14];
    v26 = 0;
    selfCopy2 = 0;
    *errorCopy3 = v39;
    goto LABEL_42;
  }

  v26 = 0;
  selfCopy2 = 0;
LABEL_44:

LABEL_45:
  v48 = *MEMORY[0x1E69E9840];
  return selfCopy2;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMMLSEDurableFeatureStoreFeatureValueHistogramBucket *)self writeTo:v3];
  immutableData = [v3 immutableData];

  return immutableData;
}

- (void)writeTo:(id)to
{
  v18 = *MEMORY[0x1E69E9840];
  toCopy = to;
  if (self->_bucketName)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_hasHasEver)
  {
    hasEver = self->_hasEver;
    PBDataWriterWriteBOOLField();
  }

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v6 = self->_counts;
  v7 = [(NSArray *)v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v13 + 1) + 8 * i);
        PBDataWriterPlaceMark();
        [v11 writeTo:toCopy];
        PBDataWriterRecallMark();
      }

      v8 = [(NSArray *)v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }

  v12 = *MEMORY[0x1E69E9840];
}

- (id)initByReadFrom:(id)from
{
  fromCopy = from;
  v34.receiver = self;
  v34.super_class = BMMLSEDurableFeatureStoreFeatureValueHistogramBucket;
  v5 = [(BMEventBase *)&v34 init];
  if (!v5)
  {
    goto LABEL_41;
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
        LOBYTE(v35[0]) = 0;
        v11 = [fromCopy position] + 1;
        if (v11 >= [fromCopy position] && (v12 = objc_msgSend(fromCopy, "position") + 1, v12 <= objc_msgSend(fromCopy, "length")))
        {
          data = [fromCopy data];
          [data getBytes:v35 range:{objc_msgSend(fromCopy, "position"), 1}];

          [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
        }

        else
        {
          [fromCopy _setError];
        }

        v10 |= (v35[0] & 0x7F) << v8;
        if ((v35[0] & 0x80) == 0)
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

      v15 = [fromCopy hasError] ? 0 : v10;
LABEL_16:
      if (([fromCopy hasError] & 1) != 0 || (v15 & 7) == 4)
      {
        break;
      }

      v16 = v15 >> 3;
      if ((v15 >> 3) == 3)
      {
        v35[0] = 0;
        v35[1] = 0;
        if (!PBReaderPlaceMark() || (v26 = [[BMMLSEDurableFeatureStoreFeatureValueHistogramBucketCount alloc] initByReadFrom:fromCopy]) == 0)
        {
LABEL_43:

          goto LABEL_40;
        }

        v27 = v26;
        [v6 addObject:v26];
        PBReaderRecallMark();
      }

      else if (v16 == 2)
      {
        v19 = 0;
        v20 = 0;
        v21 = 0;
        v5->_hasHasEver = 1;
        while (1)
        {
          LOBYTE(v35[0]) = 0;
          v22 = [fromCopy position] + 1;
          if (v22 >= [fromCopy position] && (v23 = objc_msgSend(fromCopy, "position") + 1, v23 <= objc_msgSend(fromCopy, "length")))
          {
            data2 = [fromCopy data];
            [data2 getBytes:v35 range:{objc_msgSend(fromCopy, "position"), 1}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
          }

          else
          {
            [fromCopy _setError];
          }

          v21 |= (v35[0] & 0x7F) << v19;
          if ((v35[0] & 0x80) == 0)
          {
            break;
          }

          v19 += 7;
          v14 = v20++ >= 9;
          if (v14)
          {
            LOBYTE(v25) = 0;
            goto LABEL_37;
          }
        }

        v25 = (v21 != 0) & ~[fromCopy hasError];
LABEL_37:
        v5->_hasEver = v25;
      }

      else if (v16 == 1)
      {
        v17 = PBReaderReadString();
        bucketName = v5->_bucketName;
        v5->_bucketName = v17;
      }

      else if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        goto LABEL_43;
      }

      position2 = [fromCopy position];
    }

    while (position2 < [fromCopy length]);
  }

  v29 = [v6 copy];
  counts = v5->_counts;
  v5->_counts = v29;

  hasError = [fromCopy hasError];
  if (hasError)
  {
LABEL_40:
    v32 = 0;
  }

  else
  {
LABEL_41:
    v32 = v5;
  }

  return v32;
}

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  bucketName = [(BMMLSEDurableFeatureStoreFeatureValueHistogramBucket *)self bucketName];
  v5 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMMLSEDurableFeatureStoreFeatureValueHistogramBucket hasEver](self, "hasEver")}];
  counts = [(BMMLSEDurableFeatureStoreFeatureValueHistogramBucket *)self counts];
  v7 = [v3 initWithFormat:@"BMMLSEDurableFeatureStoreFeatureValueHistogramBucket with bucketName: %@, hasEver: %@, counts: %@", bucketName, v5, counts];

  return v7;
}

- (BMMLSEDurableFeatureStoreFeatureValueHistogramBucket)initWithBucketName:(id)name hasEver:(id)ever counts:(id)counts
{
  nameCopy = name;
  everCopy = ever;
  countsCopy = counts;
  v14.receiver = self;
  v14.super_class = BMMLSEDurableFeatureStoreFeatureValueHistogramBucket;
  v12 = [(BMEventBase *)&v14 init];
  if (v12)
  {
    v12->_dataVersion = [objc_opt_class() latestDataVersion];
    objc_storeStrong(&v12->_bucketName, name);
    if (everCopy)
    {
      v12->_hasHasEver = 1;
      v12->_hasEver = [everCopy BOOLValue];
    }

    else
    {
      v12->_hasHasEver = 0;
      v12->_hasEver = 0;
    }

    objc_storeStrong(&v12->_counts, counts);
  }

  return v12;
}

+ (id)protoFields
{
  v8[3] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"bucketName" number:1 type:13 subMessageClass:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"hasEver" number:2 type:12 subMessageClass:{0, v2}];
  v8[1] = v3;
  v4 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"counts" number:3 type:14 subMessageClass:objc_opt_class()];
  v8[2] = v4;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:3];

  v6 = *MEMORY[0x1E69E9840];

  return v5;
}

+ (id)columns
{
  v8[3] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"bucketName" dataType:2 requestOnly:0 fieldNumber:1 protoDataType:13 convertedType:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"hasEver" dataType:0 requestOnly:0 fieldNumber:2 protoDataType:12 convertedType:0];
  v4 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"counts_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_1712];
  v8[0] = v2;
  v8[1] = v3;
  v8[2] = v4;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:3];

  v6 = *MEMORY[0x1E69E9840];

  return v5;
}

id __63__BMMLSEDurableFeatureStoreFeatureValueHistogramBucket_columns__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 eventBodyKeepingBackingData:1];
  v3 = [v2 _countsJSONArray];
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

    v8 = [[BMMLSEDurableFeatureStoreFeatureValueHistogramBucket alloc] initByReadFrom:v7];
    v4 = v8;
    if (v8)
    {
      v8[5] = 0;
    }
  }

  return v4;
}

@end