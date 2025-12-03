@interface BMMomentsEngagementPhotosAssets
+ (id)columns;
+ (id)eventWithData:(id)data dataVersion:(unsigned int)version;
+ (id)protoFields;
- (BMMomentsEngagementPhotosAssets)initWithJSONDictionary:(id)dictionary error:(id *)p_isa;
- (BMMomentsEngagementPhotosAssets)initWithSourceName:(id)name sourceIdentifier:(id)identifier assetUUIDs:(id)ds;
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (id)_assetUUIDsJSONArray;
- (id)initByReadFrom:(id)from;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)to;
@end

@implementation BMMomentsEngagementPhotosAssets

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    sourceName = [(BMMomentsEngagementPhotosAssets *)self sourceName];
    sourceName2 = [v5 sourceName];
    v8 = sourceName2;
    if (sourceName == sourceName2)
    {
    }

    else
    {
      sourceName3 = [(BMMomentsEngagementPhotosAssets *)self sourceName];
      sourceName4 = [v5 sourceName];
      v11 = [sourceName3 isEqual:sourceName4];

      if (!v11)
      {
        goto LABEL_9;
      }
    }

    sourceIdentifier = [(BMMomentsEngagementPhotosAssets *)self sourceIdentifier];
    sourceIdentifier2 = [v5 sourceIdentifier];
    v15 = sourceIdentifier2;
    if (sourceIdentifier == sourceIdentifier2)
    {
    }

    else
    {
      sourceIdentifier3 = [(BMMomentsEngagementPhotosAssets *)self sourceIdentifier];
      sourceIdentifier4 = [v5 sourceIdentifier];
      v18 = [sourceIdentifier3 isEqual:sourceIdentifier4];

      if (!v18)
      {
LABEL_9:
        v12 = 0;
LABEL_15:

        goto LABEL_16;
      }
    }

    assetUUIDs = [(BMMomentsEngagementPhotosAssets *)self assetUUIDs];
    assetUUIDs2 = [v5 assetUUIDs];
    if (assetUUIDs == assetUUIDs2)
    {
      v12 = 1;
    }

    else
    {
      assetUUIDs3 = [(BMMomentsEngagementPhotosAssets *)self assetUUIDs];
      assetUUIDs4 = [v5 assetUUIDs];
      v12 = [assetUUIDs3 isEqual:assetUUIDs4];
    }

    goto LABEL_15;
  }

  v12 = 0;
LABEL_16:

  return v12;
}

- (id)jsonDictionary
{
  v13[3] = *MEMORY[0x1E69E9840];
  sourceName = [(BMMomentsEngagementPhotosAssets *)self sourceName];
  sourceIdentifier = [(BMMomentsEngagementPhotosAssets *)self sourceIdentifier];
  _assetUUIDsJSONArray = [(BMMomentsEngagementPhotosAssets *)self _assetUUIDsJSONArray];
  v12[0] = @"sourceName";
  null = sourceName;
  if (!sourceName)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v13[0] = null;
  v12[1] = @"sourceIdentifier";
  null2 = sourceIdentifier;
  if (!sourceIdentifier)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v13[1] = null2;
  v12[2] = @"assetUUIDs";
  null3 = _assetUUIDsJSONArray;
  if (!_assetUUIDsJSONArray)
  {
    null3 = [MEMORY[0x1E695DFB0] null];
  }

  v13[2] = null3;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:v12 count:3];
  if (_assetUUIDsJSONArray)
  {
    if (sourceIdentifier)
    {
      goto LABEL_9;
    }

LABEL_14:

    if (sourceName)
    {
      goto LABEL_10;
    }

    goto LABEL_15;
  }

  if (!sourceIdentifier)
  {
    goto LABEL_14;
  }

LABEL_9:
  if (sourceName)
  {
    goto LABEL_10;
  }

LABEL_15:

LABEL_10:
  v10 = *MEMORY[0x1E69E9840];

  return v9;
}

- (id)_assetUUIDsJSONArray
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  assetUUIDs = [(BMMomentsEngagementPhotosAssets *)self assetUUIDs];
  v5 = [assetUUIDs countByEnumeratingWithState:&v11 objects:v15 count:16];
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
          objc_enumerationMutation(assetUUIDs);
        }

        [v3 addObject:*(*(&v11 + 1) + 8 * i)];
      }

      v6 = [assetUUIDs countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  v9 = *MEMORY[0x1E69E9840];

  return v3;
}

- (BMMomentsEngagementPhotosAssets)initWithJSONDictionary:(id)dictionary error:(id *)p_isa
{
  v65[1] = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v7 = [dictionaryCopy objectForKeyedSubscript:@"sourceName"];
  if (v7 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      if (!p_isa)
      {
        v8 = 0;
        goto LABEL_36;
      }

      v31 = v7;
      v32 = objc_alloc(MEMORY[0x1E696ABC0]);
      v33 = *MEMORY[0x1E698F240];
      v64 = *MEMORY[0x1E696A578];
      v10 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"sourceName"];
      v65[0] = v10;
      v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v65 forKeys:&v64 count:1];
      v34 = v32;
      v7 = v31;
      v35 = [v34 initWithDomain:v33 code:2 userInfo:v9];
      v8 = 0;
      v36 = p_isa;
      p_isa = 0;
      *v36 = v35;
      goto LABEL_35;
    }

    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  v9 = [dictionaryCopy objectForKeyedSubscript:@"sourceIdentifier"];
  v49 = p_isa;
  v50 = v7;
  if (!v9 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v48 = v8;
    v10 = 0;
LABEL_7:
    v11 = [dictionaryCopy objectForKeyedSubscript:@"assetUUIDs"];
    null = [MEMORY[0x1E695DFB0] null];
    v13 = [v11 isEqual:null];

    if (v13)
    {
      v45 = v9;
      selfCopy2 = self;

      v11 = 0;
LABEL_12:
      v14 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v11, "count")}];
      v51 = 0u;
      v52 = 0u;
      v53 = 0u;
      v54 = 0u;
      v11 = v11;
      v15 = [v11 countByEnumeratingWithState:&v51 objects:v59 count:16];
      if (!v15)
      {
        goto LABEL_21;
      }

      v16 = v15;
      v17 = *v52;
LABEL_14:
      v18 = dictionaryCopy;
      v19 = v10;
      v20 = 0;
      while (1)
      {
        if (*v52 != v17)
        {
          objc_enumerationMutation(v11);
        }

        v21 = *(*(&v51 + 1) + 8 * v20);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          break;
        }

        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          v10 = v19;
          dictionaryCopy = v18;
          v9 = v45;
          if (v49)
          {
            v22 = objc_alloc(MEMORY[0x1E696ABC0]);
            v23 = *MEMORY[0x1E698F240];
            v55 = *MEMORY[0x1E696A578];
            v24 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"assetUUIDs"];
            v56 = v24;
            v25 = MEMORY[0x1E695DF20];
            v26 = &v56;
            v27 = &v55;
LABEL_30:
            v28 = [v25 dictionaryWithObjects:v26 forKeys:v27 count:1];
            *v49 = [v22 initWithDomain:v23 code:2 userInfo:v28];
          }

          goto LABEL_31;
        }

        [v14 addObject:v21];
        if (v16 == ++v20)
        {
          v16 = [v11 countByEnumeratingWithState:&v51 objects:v59 count:16];
          v10 = v19;
          dictionaryCopy = v18;
          if (v16)
          {
            goto LABEL_14;
          }

LABEL_21:

          v8 = v48;
          self = [(BMMomentsEngagementPhotosAssets *)selfCopy2 initWithSourceName:v48 sourceIdentifier:v10 assetUUIDs:v14];
          p_isa = &self->super.super.isa;
          v9 = v45;
LABEL_33:

          goto LABEL_34;
        }
      }

      v10 = v19;
      dictionaryCopy = v18;
      v9 = v45;
      if (v49)
      {
        v22 = objc_alloc(MEMORY[0x1E696ABC0]);
        v23 = *MEMORY[0x1E698F240];
        v57 = *MEMORY[0x1E696A578];
        v24 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type null for element of %@, must not be null", @"assetUUIDs"];
        v58 = v24;
        v25 = MEMORY[0x1E695DF20];
        v26 = &v58;
        v27 = &v57;
        goto LABEL_30;
      }

LABEL_31:

      p_isa = 0;
      self = selfCopy2;
      goto LABEL_32;
    }

    if (!v11 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v45 = v9;
      selfCopy2 = self;
      goto LABEL_12;
    }

    if (p_isa)
    {
      v47 = objc_alloc(MEMORY[0x1E696ABC0]);
      v42 = p_isa;
      v43 = *MEMORY[0x1E698F240];
      v60 = *MEMORY[0x1E696A578];
      v14 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Expecting %@ as an array", @"assetUUIDs"];
      v61 = v14;
      v44 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v61 forKeys:&v60 count:1];
      *v42 = [v47 initWithDomain:v43 code:2 userInfo:v44];

      p_isa = 0;
LABEL_32:
      v8 = v48;
      goto LABEL_33;
    }

    v8 = v48;
LABEL_34:

    v7 = v50;
    goto LABEL_35;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v48 = v8;
    v10 = v9;
    goto LABEL_7;
  }

  if (p_isa)
  {
    v37 = v8;
    v38 = objc_alloc(MEMORY[0x1E696ABC0]);
    v39 = *MEMORY[0x1E698F240];
    v62 = *MEMORY[0x1E696A578];
    v11 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"sourceIdentifier"];
    v63 = v11;
    v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v63 forKeys:&v62 count:1];
    v40 = v38;
    v8 = v37;
    v41 = [v40 initWithDomain:v39 code:2 userInfo:v14];
    v10 = 0;
    p_isa = 0;
    *v49 = v41;
    goto LABEL_33;
  }

  v10 = 0;
LABEL_35:

LABEL_36:
  v29 = *MEMORY[0x1E69E9840];
  return p_isa;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMMomentsEngagementPhotosAssets *)self writeTo:v3];
  immutableData = [v3 immutableData];

  return immutableData;
}

- (void)writeTo:(id)to
{
  v17 = *MEMORY[0x1E69E9840];
  toCopy = to;
  if (self->_sourceName)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_sourceIdentifier)
  {
    PBDataWriterWriteStringField();
  }

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = self->_assetUUIDs;
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
  v27.receiver = self;
  v27.super_class = BMMomentsEngagementPhotosAssets;
  v5 = [(BMEventBase *)&v27 init];
  if (!v5)
  {
    goto LABEL_31;
  }

  v6 = objc_opt_new();
  position = [fromCopy position];
  if (position < [fromCopy length])
  {
    while (1)
    {
      if ([fromCopy hasError])
      {
        goto LABEL_29;
      }

      v8 = 0;
      v9 = 0;
      v10 = 0;
      while (1)
      {
        v28 = 0;
        v11 = [fromCopy position] + 1;
        if (v11 >= [fromCopy position] && (v12 = objc_msgSend(fromCopy, "position") + 1, v12 <= objc_msgSend(fromCopy, "length")))
        {
          data = [fromCopy data];
          [data getBytes:&v28 range:{objc_msgSend(fromCopy, "position"), 1}];

          [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
        }

        else
        {
          [fromCopy _setError];
        }

        v10 |= (v28 & 0x7F) << v8;
        if ((v28 & 0x80) == 0)
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
        goto LABEL_29;
      }

      v16 = v15 >> 3;
      if ((v15 >> 3) == 3)
      {
        break;
      }

      if (v16 == 2)
      {
        v17 = PBReaderReadString();
        v18 = 32;
LABEL_23:
        v19 = *(&v5->super.super.isa + v18);
        *(&v5->super.super.isa + v18) = v17;
LABEL_26:

        goto LABEL_28;
      }

      if (v16 == 1)
      {
        v17 = PBReaderReadString();
        v18 = 24;
        goto LABEL_23;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
LABEL_33:

        goto LABEL_30;
      }

LABEL_28:
      position2 = [fromCopy position];
      if (position2 >= [fromCopy length])
      {
        goto LABEL_29;
      }
    }

    v20 = PBReaderReadString();
    if (!v20)
    {
      goto LABEL_33;
    }

    v19 = v20;
    [v6 addObject:v20];
    goto LABEL_26;
  }

LABEL_29:
  v22 = [v6 copy];
  assetUUIDs = v5->_assetUUIDs;
  v5->_assetUUIDs = v22;

  hasError = [fromCopy hasError];
  if (hasError)
  {
LABEL_30:
    v25 = 0;
  }

  else
  {
LABEL_31:
    v25 = v5;
  }

  return v25;
}

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  sourceName = [(BMMomentsEngagementPhotosAssets *)self sourceName];
  sourceIdentifier = [(BMMomentsEngagementPhotosAssets *)self sourceIdentifier];
  assetUUIDs = [(BMMomentsEngagementPhotosAssets *)self assetUUIDs];
  v7 = [v3 initWithFormat:@"BMMomentsEngagementPhotosAssets with sourceName: %@, sourceIdentifier: %@, assetUUIDs: %@", sourceName, sourceIdentifier, assetUUIDs];

  return v7;
}

- (BMMomentsEngagementPhotosAssets)initWithSourceName:(id)name sourceIdentifier:(id)identifier assetUUIDs:(id)ds
{
  nameCopy = name;
  identifierCopy = identifier;
  dsCopy = ds;
  v14.receiver = self;
  v14.super_class = BMMomentsEngagementPhotosAssets;
  v12 = [(BMEventBase *)&v14 init];
  if (v12)
  {
    v12->_dataVersion = [objc_opt_class() latestDataVersion];
    objc_storeStrong(&v12->_sourceName, name);
    objc_storeStrong(&v12->_sourceIdentifier, identifier);
    objc_storeStrong(&v12->_assetUUIDs, ds);
  }

  return v12;
}

+ (id)protoFields
{
  v8[3] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"sourceName" number:1 type:13 subMessageClass:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"sourceIdentifier" number:2 type:13 subMessageClass:{0, v2}];
  v8[1] = v3;
  v4 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"assetUUIDs" number:3 type:13 subMessageClass:0];
  v8[2] = v4;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:3];

  v6 = *MEMORY[0x1E69E9840];

  return v5;
}

+ (id)columns
{
  v8[3] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"sourceName" dataType:2 requestOnly:0 fieldNumber:1 protoDataType:13 convertedType:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"sourceIdentifier" dataType:2 requestOnly:0 fieldNumber:2 protoDataType:13 convertedType:0];
  v4 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"assetUUIDs_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_304];
  v8[0] = v2;
  v8[1] = v3;
  v8[2] = v4;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:3];

  v6 = *MEMORY[0x1E69E9840];

  return v5;
}

id __42__BMMomentsEngagementPhotosAssets_columns__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 eventBodyKeepingBackingData:1];
  v3 = [v2 _assetUUIDsJSONArray];
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

    v8 = [[BMMomentsEngagementPhotosAssets alloc] initByReadFrom:v7];
    v4 = v8;
    if (v8)
    {
      v8[4] = 0;
    }
  }

  return v4;
}

@end